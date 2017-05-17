<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Student Registration Module</title>
</head>
<body>
<style>
body {
       
        background-color:  #fbf7b7  
}
</style>
<b><font face="Arial, Helvetica, sans-serif"><font size=+2><center>Register Your Team: Student Module </center></font></font></b>

<p><center>You must enter the following details for registering your team</center>
<FORM METHOD=get ACTION=RegisterTeamServlet>
<TABLE BORDER=0 WIDTH=60% CELLPADDING=4 align="center">
    <TR>
    <td WIDTH="20%" align="right">Team Name:</td>
    <td WIDTH="20%" align="left"><input type="text" maxlength=30 name="teamName"  value="TeamName" /></td>
    </TR>

    <TR>
    <td WIDTH="20%" align="right">TeamSQLServer:</td>
    <td WIDTH="20%" align="left"><input type="text" maxlength=30 name="sqlIPAddress" value="192.168.1.7"/></td>
    </TR>
    
    <TR>
    <td WIDTH="20%" align="right">MySQL Schema Name:</td>
    <td WIDTH="20%" align="left"><input type="text" maxlength=30 name="DBSchema" value="collaborationhub"/></td>
    </TR>
  
    <TR>
    <td WIDTH="20%" align="right">MySQL User Name:</td>
    <td WIDTH="20%" align="left"><input type="text" maxlength=30 name="userName" value="root"/></td>
    </TR>
    
    <TR>
    <td WIDTH="20%" align="right">MySQL Password:</td>
    <td WIDTH="20%" align="left"><input type="password" maxlength=30 name="password" value="---"/></td>
    </TR>
    </TABLE>
    
<TABLE BORDER=0 WIDTH=60% align="center" >
<TR VALIGN=TOP>
<TH> <input type="submit" value="Register Team with TMED" ></TH>
</TR>
</TABLE>


</FORM>
<br>
<br>

<br>


</body>
</html>