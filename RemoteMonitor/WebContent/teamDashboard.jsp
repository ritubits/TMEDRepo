<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<script type="text/javascript">
window.setTimeout(function(){ document.location.reload(true); }, 15000);
</script>

<title>TeamDashboard</title>
</head>
<body >
<style>
body {
       
        background-color:#DAF7A6
}
</style>

<b><font face="Arial, Helvetica, sans-serif" ALIGN=CENTER><font size=+2><center>Team Dashboard</center></font></font></b>

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


<!-- the main active table -->
<FORM METHOD=POST ACTION=displayProjectList.jsp>
<TABLE BORDER=1 WIDTH=80% CELLPADDING=6>

    <TR>
    <td WIDTH="20%"><center>TeamMeera</center></td>
   
    <td WIDTH="20%">
        <center><img src="images/1.jpg" alt="ProfileImg" style="width:30px;height:30px;"></center>
         <a href="uploadAssign.jsp"><center>Meera</center></a>
    </td>
    <td WIDTH="20%">
    	<center><img src="images/4.jpg" alt="ProfileImg" style="width:30px;height:30px;"></center>
    	<a href="uploadAssign.jsp"><center>Geeta</center></a>
    </td> 
    <td WIDTH="20%">
    	<center><img src="images/2.jpg" alt="ProfileImg" style="width:30px;height:30px;"></center>
    	<a href="uploadAssign.jsp"><center>Hari</center></a>
    </td>
    <td WIDTH="20%">
    <center><img src="images/3.jpg" alt="ProfileImg" style="width:30px;height:30px;"></center>
    <a href="uploadAssign.jsp"><center>Nishu</center></a>
    </td>
    </TR>

    <TR>
    <td WIDTH="20%"><center>TeamCQP</center></td>
    <td WIDTH="20%">
    <center><img src="images/6.jpg" alt="ProfileImg" style="width:30px;height:30px;"></center>
    <a href="uploadAssign.jsp"><center>Suman</center></a>
    </td>
    <td WIDTH="20%">
    <center><img src="images/8.jpg" alt="ProfileImg" style="width:30px;height:30px;"></center>
    <a href="uploadAssign.jsp"><center>Jimmi</center></a>
    </td>
    <td WIDTH="20%">
    <center><img src="images/5.jpg" alt="ProfileImg" style="width:30px;height:30px;"></center>
    <a href="uploadAssign.jsp"><center>Zubair</center></a>
    </td>
    <td WIDTH="20%">
    <center><img src="images/7.jpg" alt="ProfileImg" style="width:30px;height:30px;"></center>
    <a href="uploadAssign.jsp"><center>Gopi</center></a>
    </td>
    </TR>
    
        <TR>
    <td WIDTH="20%"><center>CPPTeam</center></td>
    <td WIDTH="20%">
    <center><img src="images/9.jpg" alt="ProfileImg" style="width:30px;height:30px;"></center>
    <a href="uploadAssign.jsp"><center>Bobby</center></a>
    </td>
    
    <td WIDTH="20%">
    <center><img src="images/10.jpg" alt="ProfileImg" style="width:30px;height:30px;"></center>
    <a href="uploadAssign.jsp"><center>Paras</center></a>
    </td>
    
    <td WIDTH="20%">
    <center>---</center></a></td>
    <td WIDTH="20%"><center>---</center></a></td>
    </TR>
    
    <TR>
    <td WIDTH="20%"><center>TeamTogether</center></td>
    <td WIDTH="20%">
    <center><img src="images/11.jpg" alt="ProfileImg" style="width:30px;height:30px;"></center>
    <a href="uploadAssign.jsp"><center>Parul</center></a>
    </td>
    
    <td WIDTH="20%">
    <center><img src="images/12.jpg" alt="ProfileImg" style="width:30px;height:30px;"></center>
    <a href="uploadAssign.jsp"><center>Minni</center></a>
    </td>
    
    <td WIDTH="20%">
    <center><img src="images/13.jpg" alt="ProfileImg" style="width:30px;height:30px;"></center>
    <a href="uploadAssign.jsp"><center>Shubh</center></a>
    </td>
    
    <td WIDTH="20%">
    <center><img src="images/14.jpg" alt="ProfileImg" style="width:30px;height:30px;"></center>
    <a href="uploadAssign.jsp"><center>Vedant</center></a>
    </td>
    </TR>
</FORM>
</TABLE>
<BR>



</FORM>
</TABLE>


</body>
</html>