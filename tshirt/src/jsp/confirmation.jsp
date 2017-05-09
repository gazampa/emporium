<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ page contentType="text/html; charset=UTF-8" %>
<%@page import="java.sql.*"%>
<%
	String teeshirtId = (String)request.getParameter("teeshirtId");
	String quantity = (String)request.getParameter("quantity");
	String gender = (String)request.getParameter("gender");
	String style = (String)request.getParameter("style");
	String sizze = (String)request.getParameter("sizze");
	String color = (String)request.getParameter("color");
	String firstName = (String)request.getParameter("firstName");
	String lastName = (String)request.getParameter("lastName");
	String address1 = (String)request.getParameter("address1");
	String address2 = (String)request.getParameter("address2");
	String city = (String)request.getParameter("city");
	String state = (String)request.getParameter("state");
	String zip = (String)request.getParameter("zip");
	String country = (String)request.getParameter("country");
	String email = (String)request.getParameter("email");
	String comments = (String)request.getParameter("comments");

	String url = "jdbc:mysql://tshirtosaur.db.5019795.hostedresource.com:3306/tshirtosaur";//jdbc:mysql://localhost:3306/test";
	String user= "tshirtosaur";//"root";
	String pass= "Tsh!rt0saurus";//"";
	boolean confirm = false;
	try{
		Class.forName ("com.mysql.jdbc.Driver").newInstance ();
		Connection conn = DriverManager.getConnection(url, user, pass);
		Statement stmt = conn.createStatement();
		int result = stmt.executeUpdate("insert into tshirtosaur.ORDER (teeshirtId,quantity,gender,size,style,color,firstName,lastName,address1,address2,city,state,zip,country,email,comments,time_stamp) values("+teeshirtId+", '"+quantity+"','"+gender+"', '"+sizze+"','"+style+"','"+color+"','"+firstName+"','"+lastName+"','"+address1+"','"+address2+"','"+city+"','"+state+"','"+zip+"','"+country+"','"+email+"','"+comments+"',SYSDATE() )");
		if ( result==1  ){
			confirm = true;
		}
		conn.close();
	}catch(Exception e)
	{
	    out.println(e.toString());
	}

%>

<html>
<head>
<title>Tshirtosaurus</title>
<link href="rsc/styles/base.css" rel="stylesheet" type="text/css">   
</head>

<body>
<p> Confirmation Page</p>
<% if (confirm){ %>
<p> Succesfully Ordered. U-huh, I got you down for the following : </p>
<% }else{ %>
<p> Apologies, there has been a terrible problem with your order. Please email me your information below.</p>
<p> <a href="mailto:dkellaghan@hotmail.com?subject=Tshirtosaur Order">
<% } %>

<p> <%=teeshirtId+" "+gender+" "+style+" "+sizze+" "+color+" "+firstName+" "+lastName+" "+address1+" "+address2+" "+state+" "+city+" "+zip+" "+country+" "+email+" "+comments%> </p>

</body>
</html>