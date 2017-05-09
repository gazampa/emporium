<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ page contentType="text/html; charset=UTF-8" %>
<%@page import="java.sql.*"%>
<%@page import="com.tshirtosaurus.beans.TeeShirt"%>

<%
	String teeId = (String)request.getParameter("id");
	TeeShirt teeShirt = new TeeShirt();
	String url = "jdbc:mysql://tshirtosaur.db.5019795.hostedresource.com:3306/tshirtosaur";//jdbc:mysql://localhost:3306/test";
	String user= "tshirtosaur";//"root";
	String pass= "Tsh!rt0saurus";//"";
	try{
		Class.forName ("com.mysql.jdbc.Driver").newInstance ();
		Connection conn = DriverManager.getConnection(url, user, pass);
		Statement stmt = conn.createStatement();
		ResultSet rs = stmt.executeQuery("select * from TEESHIRT where teeshirt_id = "+teeId);
		while ( rs.next() ){
		    teeShirt.setId(rs.getString(1));
		    teeShirt.setName(rs.getString(2));
		    teeShirt.setImage(rs.getString(3));
		}
		rs.close();
		conn.close();
	}catch(Exception e)
	{
	    out.println(e.toString());
	}
%>
<html>
<head>
<title>Tshirtosaurus</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<link href="rsc/styles/base.css" rel="stylesheet" type="text/css"> 
<script>
function validate_form(thisform)
{
with (thisform)
  {
  if (validate_radio(thisform,"Please Select Gender")==false)
    {return false;}
  if (validate_required(sizze,"Please Specify Size")==false)
    {return false;}
  if (validate_required(style,"Please Specify Style")==false)
    {return false;}
  if (validate_required(color,"Please Specify Color")==false)
    {return false;}
  }
}
function validate_required(field,alerttxt)
{
with (field)
  {
  if (value==null||value=="-1")
    {
    alert(alerttxt);return false;
    }
  else
    {
    return true;
    }
  }
}
function validate_radio(thisform,alerttxt)
{
	myOption = -1;
	for (i=thisform.gender.length-1; i > -1; i--) {
		if (thisform.gender[i].checked) {
		myOption = i; i = -1;
		}
	}
	if (myOption == -1) {
	alert(alerttxt);
	return false;
	}
}
</script>
</head>

<body>
<table width="502" border="0" align="center">
  <tr>
	  	<td>
	  	<hr align="center">
	  	</td>
  </tr>   
  <tr>
  	<td>
		<table><tr><td>
			<div>
				<img src="<%=teeShirt.getImage()%>" width="75" height="75" style="margin: 20px 20px 20px 50px;"><br>Price : <%=teeShirt.getPrice()%>
			</div>
		</td><td>	
			<div>
				<form name="specs" action="orderForm.jsp" method="post" onsubmit="return validate_form(this);">
				<table><tr>
					<td><label for="gender">Gender : </label></td>
					<td><input type="radio" name="gender" value="Woman">Womens<input type="radio" name="gender" value="Man"> Mens</td>
					</tr>
					<tr>
					<td align="right"><label for="sizze">Size : </label></td>
					<td><select name="sizze" style="width:150px">
					  <option value="-1">Choose Your Size  </option>
					  <option value="-1">----------------</option>
					  <option value="Small">Small</option>
					  <option value="Medium">Medium</option>
					  <option value="Large">Large</option>
					  <option value="X_Large">Extra Large</option>
					</select></td>
					</tr>
					<tr>
					<td align="right"><label for="style">Style : </label></td>
					<td><select label="Style" name="style" style="width:150px">
					  <option value="-1">Choose Your Style</option>
					  <option value="-1">----------------</option>
					  <option value="Crest">Crest</option>
					  <option value="Middle_Print">Middle Print</option>
					</select></td>
					</tr>
					<tr>
					<td align="right"><label for="color">Color : </label></td>
					<td><select label="Color" name="color" style="width:150px">
					  <option value="-1">Choose Your Color</option>
  					  <option value="-1">----------------</option>
					  <option value="Green">Green</option>
					  <option value="White">White</option>
					  <option value="Gold">Gold</option>
					</select></td>
					</tr>
					<tr>
					<td>&nbsp;</td>
					<td><input type="submit" value="Go To Order Form"/></td>
				</tr></table>
				<input type="hidden" name="teeshirtId" label="TeeShirt Id :" value="<%= teeShirt.getId() %>"></input>
				<form>
			</div>
		</td></tr></table>	
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
