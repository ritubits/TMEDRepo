<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>CQP Assignment Upload</title>
</head>
<body >
<style>
body {
       
        background-color:#DAF7A6 
}

</style>

<b><font face="Arial, Helvetica, sans-serif" ALIGN=CENTER><font size=+2><center>Collaborative Quadruple Programming</center></font></font></b>

<%@ page language="java" import="org.apache.collab.monitor.server.model.*" %>
<%@ page language="java" import="java.util.Enumeration" %>
<%@ page language="java" import="java.util.Vector" %>
<jsp:useBean id="teamBean" scope="session" class="org.apache.collab.monitor.server.model.TeamListBean" />


<%
Enumeration teamDetails =null;
String teamName= null;
teamDetails= teamBean.getTeamDetails();
 %>
   

<!-- active header table -->
<CENTER>
<TABLE BORDER=0 WIDTH=80% CELLPADDING=10>
<TR VALIGN=TOP>
<TH>Assignment Upload Module</TH>
</TR>
</TABLE>

<FORM METHOD=get ACTION=RegisterTeamServlet>

 
 <!-- active header table -->
<TABLE BORDER=0 WIDTH=80% CELLPADDING=10>
<TR VALIGN=TOP>
<TH> Solo Tasks</TH>
</TR>
</TABLE>

 <TABLE BORDER=0 WIDTH=80% CELLPADDING=10 align="center">
     <TR>
      <td WIDTH="20%" align="right">Task A:</td>
       <td WIDTH="80%" align="left"> <textarea rows="2" cols="30" name="teamName"  value="Solo Task A">
Solo Task A...
	</textarea> 
	</td>
      </tr>
      
      <tr>
      <td WIDTH="20%" align="right">Task B:</td>
      <td WIDTH="80%" align="left"> <textarea rows="2" cols="30" name="teamName"  value="Solo Task B">
Solo Task B...
	</textarea> 
	</td>
      </tr>
      
      <tr>
      <td WIDTH="20%" align="right">Task C:</td>
      <td WIDTH="80%" align="left"> <textarea rows="2" cols="30" name="teamName"  value="Solo Task C">
Solo Task C...
	</textarea> 
	</td>
      </tr>
      
      <tr>
      <td WIDTH="20%" align="right">Task D:</td>
      <td WIDTH="80%" align="left"> <textarea rows="2" cols="30" name="teamName"  value="Solo Task D">
Solo Task D...
	</textarea> 
	</td>
      </tr>
   </TABLE>

 <!-- active header table -->
<TABLE BORDER=0 WIDTH=80% CELLPADDING=10>
<TR VALIGN=TOP>
<TH> Pair Tasks</TH>
</TR>
</TABLE>
    
    <TABLE BORDER=0 WIDTH=80% CELLPADDING=10 align="center">
     <TR>
      <td WIDTH="20%" align="right">Pair Task AB:</td>
       <td WIDTH="80%" align="left"> <textarea rows="2" cols="30" name="teamName"  value="Task AB">
Pair Task AB...
	</textarea> 
	</td>
      </tr>
      
      <tr>
      <td WIDTH="20%" align="right">Pair Task CD:</td>
      <td WIDTH="80%" align="left"> <textarea rows="2" cols="30" name="teamName"  value="Task CD">
Pair Task CD...
	</textarea> 
	</td>
      </tr>

   </TABLE>
   
    <!-- active header table -->
<TABLE BORDER=0 WIDTH=80% CELLPADDING=10>
<TR VALIGN=TOP>
<TH> Quadruple Tasks</TH>
</TR>
</TABLE>

 <TABLE BORDER=0 WIDTH=80% CELLPADDING=10 align="center">
    <TR>
    <td WIDTH="20%" align="right">Quadruple Task ABCD:</td>
    <td WIDTH="80%" align="left"> <textarea rows="3" cols="30" name="teamName"  value="Problem Description here...">
Quadruple Task ABCD: here...
	</textarea> 
	</td>
    </TR>
 </table>
 
<TABLE BORDER=0 WIDTH=100% align="center" >
<TR VALIGN=TOP>
<TH> <input type="submit" value="Upload Assignment" ></TH>
</TR>
</TABLE>


</FORM>


</body>
</html>