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
	String price = (String)request.getParameter("price");
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
		int result = stmt.executeUpdate("insert into tshirtosaur.ORDER (teeshirtId,quantity,gender,size,style,color,firstName,lastName,address1,address2,city,state,zip,country,email,comments,status,time_stamp) values("+teeshirtId+", '"+quantity+"','"+gender+"', '"+sizze+"','"+style+"','"+color+"','"+firstName+"','"+lastName+"','"+address1+"','"+address2+"','"+city+"','"+state+"','"+zip+"','"+country+"','"+email+"','"+comments+"','"+"TO BE CONFIRMED"+"',SYSDATE() )");
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
<script>
function validate_form(thisform)
{
with (thisform)
  {
  	alert('Navigate to PayPal');
    return false;
  }
}
</script>
<link href="rsc/styles/base.css" rel="stylesheet" type="text/css">   
</head>

<body>
<p> Review </p>
<% if (confirm){ %>
<p> Ok, I've got you down for the following : </p>
<% }else{ %>
<p> Oh Dear, there has been a terrible problem with your order. Please<a href="mailto:dkellaghan@hotmail.com?subject=Tshirtosaur Order"> email </a> me your information below.</p>
<% } %>

<table width="502" border="0" align="center">
    <tr>
	  	<td>
	  	<hr align="center">
	  	</td>
  </tr>
  <tr>
  	<td>

		
	<% if (confirm) { %>	
		<table border="0" align="center"><tr><td>
			<div>
				&nbsp;
			</div>
		</td><td>
			<div>
				<form name="paymentForm" method="post" onsubmit="return validate_form(this);">
				<table border="1" align="center">
					<tr>
						<td style="text-align:left"><label for="teeshirtId">TeeShirt Id : </label></td>
						<td><label for="teeshirtId"><%=teeshirtId%></label><input type="hidden" name="teeshirtId" label="TeeShirt Id :" value="<%=teeshirtId%>"></input></td>
					</tr>
					<tr>
						<td style="text-align:left"><label for="color">Price : </label></td>
						<td><label for="color"><%=price%></label><input  type="hidden" name="color" label="Color" value="<%=price%>"/></td>
					</tr>
					<tr>
						<td style="text-align:left"><label for="gender">Gender : </label></td>
						<td><label for="gender"><%=gender%> </label><input  type="hidden" name="gender" label="Gender :" value="<%=gender%>"/></td>
					</tr>
					<tr>
						<td style="text-align:left"><label for="style">Style : </label></td>
						<td><label for="style"><%=style%></label><input  type="hidden" name="style" label="Style :" value="<%=style%>"/></td>
					</tr>
					<tr>
						<td style="text-align:left"><label for="sizze">Size : </label></td>
						<td><label for="sizze"><%=sizze%></label><input  type="hidden" name="sizze" label="Size :" value="<%=sizze%>"/></td>
					</tr>
					<tr>
						<td style="text-align:left"><label for="color">Color : </label></td>
						<td><label for="color"><%=color%></label><input  type="hidden" name="color" label="Color" value="<%=color%>"/></td>
					</tr>
					<tr>
						<td style="text-align:left"><label for="firstName">First Name : </label></td>
						<td><label for="firstName"><%=( null==firstName||"".equals(firstName) )?"&nbsp":firstName%></label><input  type="hidden" name="firstName" label="First Name" value="<%=firstName%>"/></td>
					</tr>
					<tr>
						<td style="text-align:left"><label for="lastName">Last Name : </label></td>
						<td><label for="lastName"><%=( null==lastName||"".equals(lastName) )?"&nbsp":lastName%></label><input  type="hidden" name="lastName" label="Last Name" value="<%=lastName%>"/></td>
					</tr>
					<tr>
						<td style="text-align:left"><label for="address1">Addrees Line 1 : </label></td>
						<td><label for="address1"><%=( null==address1||"".equals(address1) )?"&nbsp":address1%></label><input  type="hidden" name="address1" label="Address Line 1" value="<%=address1%>"/></td>
					</tr>
					<tr>
						<td style="text-align:left"><label for="address2">Addrees Line 2 : </label></td>
						<td><label for="address2"><%=( null==address2||"".equals(address2) )?"&nbsp":address2%></label><input  type="hidden" name="address2" label="Address Line 2" value="<%=address2%>"/></td>
					</tr>
					<tr>
						<td style="text-align:left"><label for="city">City : </label></td>
						<td><label for="city"><%=( null==city||"".equals(city) )?"&nbsp":city%></label><input  type="hidden" name="city" label="City" value="<%=city%>"/></td>
					</tr>
					<tr>
					<td style="text-align:left"><label for="state">State : </label></td>
					<td><label for="city"><%=( null==state||"".equals(state) )?"&nbsp":state%></label><input type="hidden" name="state" label="State" value="<%=state%>"/></td>
					</tr>
					<tr>
						<td style="text-align:left"><label for="city">Zip : </label></td>
						<td><label for="zip"><%=( null==zip||"".equals(zip) )?"&nbsp":zip%></label><input type="hidden" name="zip" label="Zip" value="<%=zip%>"/></td>
					</tr>

					<%if ( !(null==country || "".equals(country)) ) {%>
					<tr>
						<td style="text-align:left"><label for="Country">Country : </label></td>
						<td><label for="country"><%=( null==country||"".equals(country) )?"&nbsp":country%></label><input type="hidden" name="zip" label="Zip" value="<%=country%>"/></td>
					</tr>
					<% } %>

					<tr>
						<td style="text-align:left"><label for="city">Email : </label></td>
						<td><label for="email"><%=( null==email||"".equals(email) )?"&nbsp":email%></label><input type="hidden" name="email" label="email" value="<%=email%>"/></td>
					</tr>
					<tr>
						<td style="text-align:left"><label for="comments">Additional Comments : </label></td>
						<td><label for="comments"><%=( null==comments||"".equals(comments) )?"&nbsp":comments%></label><input type="hidden" name="comments" size="200" label="Additional Comments" value="<%=comments%>"></input></td>
					</tr>
				</table>
				<table border="0" align="right"><tr><td>
					<span style="text-align:right"><input type="submit" value="PayPal"/></span>
				</td></tr></table>
				<form>
			</div>
		</td></tr></table>

	<% } %>

	</td>
  </tr>
  <tr>
      <td>
		  <div align="center">
		  	<hr>
	          <img src="rsc/images/logo2.gif" width="200" height="50" ><br>
	          <span class="tinytext">All text, music, photos copyright artist</span>
		  </div>
  	  </td>
  </tr>
  </table>
<p align="center" class="tinytext">&nbsp; </p>
<p align="center" class="tinytext">&nbsp;</p>
</body>
</html>