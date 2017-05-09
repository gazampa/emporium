package com.tshirtosaurus.util;

public class Constants{
    
    private static String DATABASE_URL;
    private static String USER;
    private static String PASSWORD;
    private static String USER_READ_ONLY;
    private static String PASSWORD_READ_ONLY;
    static{
        DATABASE_URL = "jdbc:mysql://tshirtosaur.db.5019795.hostedresource.com:3306/tshirtosaur";
        USER="tshirtosaur";
        PASSWORD="Tsh!rt0saurus";
        USER_READ_ONLY="thsirts";
        PASSWORD_READ_ONLY="tsh!rts";
    }  
    
    public static String getDatabaseURL(){
        return DATABASE_URL;
    }
    
    public static String getUser(){
        return USER;
    }

    public static String getUserReadOnly(){
        return USER_READ_ONLY;
    }

    public static String getPassword(){
        return PASSWORD;
    }

    public static String getReadOnlyPassword(){
        return PASSWORD_READ_ONLY;
    }
    
}