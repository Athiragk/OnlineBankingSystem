<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Untitled Document</title>
</head>

<body>
<%
String AccountNumber=request.getParameter("t1");
session.setAttribute("session",AccountNumber);
try
{
Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
Connection con=DriverManager.getConnection("jdbc:odbc:bank");
Statement stmt=con.createStatement();
ResultSet rs=stmt.executeQuery("select *from account where AccountNumber='"+AccountNumber+"'");
if(rs.next())
response.sendRedirect("bank.html");
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
