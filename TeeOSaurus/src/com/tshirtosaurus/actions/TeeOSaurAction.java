package com.tshirtosaurus.actions;

import com.opensymphony.xwork2.ActionSupport;

import java.sql.Connection;
import java.util.logging.Level;
import java.util.logging.Logger;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;
/**
 * Base Action class for package.
 */ 

@SuppressWarnings("serial")
public class TeeOSaurAction extends ActionSupport {
// protected static Logger logger = Logger.getLogger("com.teeosaurus.actions.TeeOSaurAction");
 public static DataSource dataSource = null;

 private static DataSource getDataSource(){
     DataSource ds=null;
     try{
         Context initCtx = new InitialContext();
         Context ctx = (Context) initCtx.lookup("java:comp/env");
         ds = (DataSource)ctx.lookup("jdbc/dataconnect");
     }catch(Exception e){
//         logger.log(Level.SEVERE, e.getMessage(), e);
     }
     return ds;
 }

 public Connection getConnection() throws Exception{
     Connection con = null;
//     logger.log(Level.INFO, "Attempting Database Connection");
     if(dataSource!=null){
         con = dataSource.getConnection();
     }
//     logger.log(Level.WARNING, con.toString());
     return con;
 }

 
}
