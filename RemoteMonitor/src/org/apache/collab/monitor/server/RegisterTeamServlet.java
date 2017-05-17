package org.apache.collab.monitor.server;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class RegisterTeamServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public RegisterTeamServlet() {
        super();
    }

    String teamName= null;
    String ipAddSQL= null;
    String schema= null;
    String userName= null;
    String password= null;
    PrintWriter out =null;
        
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//insert the obtained data into database
	 	response.setContentType("text/html");
        out = response.getWriter();
  
	 	System.out.println(" In the RegisterProjectServlet ");
	 	teamName= request.getParameter("teamName");
	 	ipAddSQL = request.getParameter("sqlIPAddress");
	 	schema = request.getParameter("DBSchema");
	 	userName = request.getParameter("userName");
	 	password = request.getParameter("password");

        //make connection to DB
        //create table teamDetails
       Connection con= LoadDriver.createConnection("localhost:3306");
       createTableTeamDetails(con);
       boolean done= insertTeamData(con);
       LoadDriver.closeConnection();
       
       if (done)
       {
    	   //redirect to a jsp
    	   out.print("Team Registered Successfully");
    	   //print link to view the assignment
    	   out.print("<table BORDER=0 CELLSPACING=5 WIDTH=\"85%\" >"+
    	   "<tr VALIGN=TOP>"+
    	   "<td WIDTH=\"30%\"><a href=\"displayAssign.jsp\"><center>View Assignment Exercises</center></a></td>"+
    	   "</tr>"+
    	   "</table>");
       }
	}

	public void createTableTeamDetails(Connection conn)
	{
		  Statement statement = null;
		    
		 //create table here
		 try {
	        	
			statement = conn.createStatement();
		      
		    String sql = "CREATE TABLE IF NOT EXISTS teamDetails"+
	                   "(TeamName VARCHAR(30) not NULL, " +
	                   " TeamSQLServer VARCHAR(30), " + 
	                   " TeamSchema VARCHAR(30), " + 
	                   " TeamUserName VARCHAR(30), " + 
	                   " TeamPassword VARCHAR(30), " + 
	                   " PRIMARY KEY ( TeamName ))"; 
		    statement.executeUpdate(sql);
		       
	          
	        } catch (SQLException ex) {
	            // handle any errors
	            System.out.println("SQLException: " + ex.getMessage());
	            System.out.println("SQLState: " + ex.getSQLState());
	            System.out.println("VendorError: " + ex.getErrorCode());
	            out.print("Exception:"+ex.getMessage());
	        }
	}
	
	public boolean insertTeamData(Connection conn)
	{
		  Statement statement = null;
		  	boolean complete=false;
			 //insert data here
			 try {
		        	
				 statement = conn.createStatement();
			      
				 String sql = "INSERT INTO teamDetails"+
		                   " VALUES ('"+teamName+"','"+ipAddSQL+"','"+schema+"','"+userName+"','"+password+"');";
				 statement.executeUpdate(sql);
				 complete= true;
		        } catch (SQLException ex) {
		            // handle any errors
		            System.out.println("SQLException: " + ex.getMessage());
		            System.out.println("SQLState: " + ex.getSQLState());
		            System.out.println("VendorError: " + ex.getErrorCode());
		            out.print("Exception:"+ex.getMessage());
		        }
			 return complete;
	}

}
