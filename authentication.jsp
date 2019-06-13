<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Untitled Document</title>
</head>

<body>
<%
String UserID=request.getParameter("t1");
String Password=request.getParameter("t2");
session.setAttribute("session",UserId);
try
{
Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
Connection con=DriverManager.getConnection("jdbc:odbc:bank");
Statement stmt=con.createStatement();
ResultSet rs=stmt.executeQuery("select *from onlinebank where UserID='"+UserID+"' and Password='"+Password+"'");
if(rs.next())
response.sendRedirect("welcome.html");
else
out.print("error");
}
catch(Exception e)
{
out.println(e);
}
%>
</body>
</html>
