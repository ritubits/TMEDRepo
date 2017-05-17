package org.apache.collab.monitor.server;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;


public class TestServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * Default constructor. 
     */
    public TestServlet() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		Connection con= LoadDriver.createConnection("192.168.1.7:3306");
		String editArtifact=null; 
		Statement statement = null;
		  String sql = null;
		 ResultSet resultSet =null;
		  try {
		       if (con !=null) 
		    	   { 
		    			   
					statement = con.createStatement();				    	   
		    	   // Result set get the result of the SQL query
					sql= "select filename, activitytime from useractivity_jim where activitytype='EDIT';";
					resultSet = statement.executeQuery(sql);
					while (resultSet.next())
					{
						
						editArtifact= resultSet.getString("filename");						
						//assumes only one row
					}
		    	   resultSet.close();
		    	   }	       
			 } catch (SQLException e) {				
					e.printStackTrace();
				}	
		  System.out.println("Artifact::"+editArtifact);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
