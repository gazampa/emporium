<%@ page contentType="text/html; charset=iso-8859-1" language="java"
import="java.sql.*" errorPage="" %>
<html>
<head>
<title>Basic Connection Test</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
</head>
<body><h1>DB Test
</h1>
<% String url = "jdbc:mysql://tshirtosaur.db.5019795.hostedresource.com:3306/tshirtosaur";
String user= "tshirtosaur";
String pass= "Tsh!rt0saurus";
try{
Class.forName ("com.mysql.jdbc.Driver").newInstance ();
Connection conn = DriverManager.getConnection(url, user, pass);
Statement stmt = conn.createStatement();
ResultSet rs = stmt.executeQuery("select * from test_table"); 
 


while(rs.next())
{
%>
<table> <tr>
<td><%= rs.getString(1) %></td>
<td><%= rs.getString(2) %></td>
</tr></table>
<%}
rs.close();
conn.close();
}catch(Exception e)
{
out.println(e.toString());
}
%>
</body>
</html>
 