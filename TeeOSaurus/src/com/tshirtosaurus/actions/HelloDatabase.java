/*
 * $Id: HelloWorld.java 471756 2006-11-06 15:01:43Z husted $
 *
 * Licensed to the Apache Software Foundation (ASF) under one
 * or more contributor license agreements.  See the NOTICE file
 * distributed with this work for additional information
 * regarding copyright ownership.  The ASF licenses this file
 * to you under the Apache License, Version 2.0 (the
 * "License"); you may not use this file except in compliance
 * with the License.  You may obtain a copy of the License at
 *
 *  http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing,
 * software distributed under the License is distributed on an
 * "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
 * KIND, either express or implied.  See the License for the
 * specific language governing permissions and limitations
 * under the License.
 */

package com.tshirtosaurus.actions;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.ConnectionPoolDataSource;
import javax.sql.DataSource;

import com.opensymphony.xwork2.ActionSupport;

/**
 * <code>Set welcome message.</code>
 */
public class HelloDatabase extends ActionSupport {

    public String execute() throws Exception {
        setMessage(dblah());
        return SUCCESS;
    }

    /**
     * Provide default valuie for Message property.
     */
    public static final String MESSAGE = "HelloWorld.message";

    /**
     * Field for Message property.
     */
    private String message;

    /**
     * Return Message property.
     *
     * @return Message property
     */
    public String getMessage() {
        return message;
    }

    /**
     * Set Message property.
     *
     * @param message Text to display on HelloWorld page.
     */
    public void setMessage(String message) {
        this.message = message;
    }

    private String dblah(){
        String url = "jdbc:mysql://localhost:3306/test";
        String query = "SELECT * FROM client_firms";
        StringBuilder result = new StringBuilder();
        try {
         Class.forName ("com.mysql.jdbc.jdbc2.optional.MysqlConnectionPoolDataSource");//"com.mysql.jdbc.Driver"
         Connection con = DriverManager.getConnection( url, "", "" );
         Statement stmt = con.createStatement ();
         ResultSet rs = stmt.executeQuery (query);
         while(rs.next()){
             result.append(rs.getString(2));
             result.append(" , ");
         }
         rs.close();
         stmt.close();
         con.close();
        } // end try
        catch(Exception e){
            
        }
        finally{
            
        }
        return result.toString();
    }

    public void initPool() throws Exception{
        Context env=null;
        ConnectionPoolDataSource pool;
        env=(Context) new InitialContext().lookup("java:comp/env");
        pool=(ConnectionPoolDataSource)env.lookup("jdbc/myJDBCResourceName");
        if(pool==null){
            throw new Exception("unknown DataSource");
        }
    }
    
}
