package org.apache.collab.monitor.server.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class LoadTeamDriver {

	  public static Connection connect = null;
	  
	  
	   public static Connection getTMEDConnection(String ipAddSQL, String schema, String user, String password) {
		   if (connect == null)
		   	{
			   LoadDriverManager();
			   connect= createTMEDConnection(ipAddSQL, schema, user, password);
		   	}
		   return connect;
	   }
	
	   public static Connection getTeamConnection(String ipAddSQL, String schema, String user, String password) {
		   if (connect == null)
		   	{
			   LoadDriverManager();
			   connect= createTeamConnection(ipAddSQL, schema, user, password);
		   	}
		   return connect;
	   }
	   
	   public static void LoadDriverManager() {
	       try {

	    	   Class.forName("com.mysql.jdbc.Driver").newInstance();
	           System.out.println("LoadingDriver Suceeded");
	       } catch (Exception ex) {
	          ex.printStackTrace();
	       }
	   }
	   
   public static Connection createTMEDConnection(String ipAddSQL, String schema, String user, String password) {
       try {
       	 System.out.println("ipAddSQL: "+ipAddSQL);
         	connect = DriverManager.getConnection("jdbc:mysql://"+ipAddSQL+"/"+schema+"?user="+user+"&password="+password);
           System.out.println("Connection Suceeded");
              

       } catch (SQLException ex) {
           // handle any errors
           System.out.println("SQLException: " + ex.getMessage());
           System.out.println("SQLState: " + ex.getSQLState());
           System.out.println("VendorError: " + ex.getErrorCode());
       }
   	return connect;
   }
   
   public static Connection createTeamConnection(String ipAddSQL, String schema, String user, String password) {
       try {
       	 System.out.println("ipAddSQL: "+ipAddSQL);
         	connect = DriverManager.getConnection("jdbc:mysql://"+ipAddSQL+"/"+schema+"?user="+user+"&password="+password);
           System.out.println("Connection Suceeded");
              

       } catch (SQLException ex) {
           // handle any errors
           System.out.println("SQLException: " + ex.getMessage());
           System.out.println("SQLState: " + ex.getSQLState());
           System.out.println("VendorError: " + ex.getErrorCode());
       }
   	return connect;
   }
   
   public static void closeConnection()
   {
   	try
   	{
   	connect.close();
   	} catch (Exception e)
   	{
   		e.printStackTrace();
   	}
   }
}
