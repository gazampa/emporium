<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ page contentType="text/html; charset=UTF-8" %>
<html>
<head>
<title>Tshirtosaurus</title>
<link href="rsc/styles/base.css" rel="stylesheet" type="text/css">
<script>
re = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*\.(\w{2}|(com|net|org|edu|int|mil|gov|arpa|biz|aero|name|coop|info|pro|museum|ie))$/

function validate_email(field,alerttxt)
{
	if (re.test(document.forms.orderForm.email.value)) {
		return true;
	}
	alert("Please Enter A valid Email Address");
	return false;
}
function confirm_email(field,alerttxt)
{
	if (document.forms.orderForm.email.value==document.forms.orderForm.email2.value) {
		return true;
	}
	alert("The Emails dont match. Please Confirm Your Email Address");
	return false;
}

function validate_form(thisform)
{
with (thisform)
  {
  if (validate_email(email,"Please enter a Valid Email")==false)
    {return false;}
  if (confirm_email(email2,"Please confirm your Email")==false)
    {return false;}
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
				&nbsp;
			</div>
		</td><td>	
			<div>
				<form name="orderForm" action="orderReview.jsp" method="post" onsubmit="return validate_form(this);">
				<table>
					<tr>
						<td style="text-align:left"><label for="teeshirtId">TeeShirt Id : </label></td>
						<td><label for="teeshirtId"><%= (String)request.getParameter("teeshirtId") %> </label><input type="hidden" name="teeshirtId" label="TeeShirt Id :" value="<%= (String)request.getParameter("teeshirtId") %>"></input></td>
					</tr>
					<tr>
						<td style="text-align:left"><label for="firstName">Price : </label></td>
						<td><label for="color"><%= (String)request.getParameter("price") %> </label><input  type="hidden" name="color" label="First Name" value="<%= (String)request.getParameter("price") %>"/></td>
					</tr>
					<tr>
						<td style="text-align:left"><label for="gender">Gender : </label></td>
						<td><label for="gender"><%= (String)request.getParameter("gender") %> </label><input  type="hidden" name="gender" label="Gender :" value="<%= (String)request.getParameter("gender") %>"/></td>
					</tr>
					<tr>
						<td style="text-align:left"><label for="style">Style : </label></td>
						<td><label for="style"><%= (String)request.getParameter("style") %> </label><input  type="hidden" name="style" label="Style :" value="<%= (String)request.getParameter("style") %>"/></td>
					</tr>
					<tr>
						<td style="text-align:left"><label for="sizze">Size : </label></td>
						<td><label for="sizze"><%= (String)request.getParameter("sizze") %> </label><input  type="hidden" name="sizze" label="Size :" value="<%= (String)request.getParameter("sizze") %>"/></td>
					</tr>
					<tr>
						<td style="text-align:left"><label for="firstName">Color : </label></td>
						<td><label for="color"><%= (String)request.getParameter("color") %> </label><input  type="hidden" name="color" label="First Name" value="<%= (String)request.getParameter("color") %>"/></td>
					</tr>
					<tr>
						<td style="text-align:left"><label for="firstName">First Name : </label></td>
						<td><input  type="text" name="firstName" label="First Name" /></td>
					</tr>
					<tr>
						<td style="text-align:left"><label for="lastName">Last Name : </label></td>
						<td><input  type="text" name="lastName" label="Last Name" /></td>
					</tr>
					<tr>
						<td style="text-align:left"><label for="address1">Addrees Line 1 : </label></td>
						<td><input  type="text" name="address1" label="Address Line 1" /></td>
					</tr>
					<tr>
						<td style="text-align:left"><label for="address2">Addrees Line 2 : </label></td>
						<td><input  type="text" name="address2" label="Address Line 2" /></td>
					</tr>
					<tr>
						<td style="text-align:left"><label for="city">City : </label></td>
						<td><input  type="text" name="city" label="City" /></td>
					</tr>
					<tr>
					<td style="text-align:left"><label for="color">State : </label></td>
					<td><select label="state" name="state" style="width:150px">
					  <option value="-1">Choose Your State</option>
  					  <option value="-1">----------------</option>
					  <option value="AL">Alabama</option> 
					  <option value="AK">Alaska</option> 
					  <option value="AZ">Arizona</option> 
					  <option value="AR">Arkansas</option> 
					  <option value="CA">California</option> 
					  <option value="CO">Colorado</option> 
					  <option value="CT">Connecticut</option> 
					  <option value="DE">Delaware</option> 
					  <option value="DC">District Of Columbia</option> 
					  <option value="FL">Florida</option> 
					  <option value="GA">Georgia</option> 
					  <option value="HI">Hawaii</option> 
					  <option value="ID">Idaho</option> 
					  <option value="IL">Illinois</option> 
					  <option value="IN">Indiana</option> 
					  <option value="IA">Iowa</option> 
					  <option value="KS">Kansas</option> 
					  <option value="KY">Kentucky</option> 
					  <option value="LA">Louisiana</option> 
					  <option value="ME">Maine</option> 
					  <option value="MD">Maryland</option> 
					  <option value="MA">Massachusetts</option> 
					  <option value="MI">Michigan</option> 
					  <option value="MN">Minnesota</option> 
					  <option value="MS">Mississippi</option> 
					  <option value="MO">Missouri</option> 
					  <option value="MT">Montana</option> 
					  <option value="NE">Nebraska</option> 
					  <option value="NV">Nevada</option> 
					  <option value="NH">New Hampshire</option> 
					  <option value="NJ">New Jersey</option> 
					  <option value="NM">New Mexico</option> 
					  <option value="NY">New York</option> 
					  <option value="NC">North Carolina</option> 
					  <option value="ND">North Dakota</option> 
					  <option value="OH">Ohio</option> 
					  <option value="OK">Oklahoma</option> 
					  <option value="OR">Oregon</option> 
					  <option value="PA">Pennsylvania</option> 
					  <option value="RI">Rhode Island</option> 
					  <option value="SC">South Carolina</option> 
					  <option value="SD">South Dakota</option> 
					  <option value="TN">Tennessee</option> 
					  <option value="TX">Texas</option> 
					  <option value="UT">Utah</option> 
					  <option value="VT">Vermont</option> 
					  <option value="VA">Virginia</option> 
					  <option value="WA">Washington</option> 
					  <option value="WV">West Virginia</option> 
					  <option value="WI">Wisconsin</option> 
					  <option value="WY">Wyoming</option>
					</select></td>
					</tr>
					<tr>
						<td style="text-align:left"><label for="city">Zip : </label></td>
						<td><input  type="text" name="zip" label="Zip" /></td>
					</tr>
					<tr>
						<td style="text-align:left"><label for="city">Email : </label></td>
						<td><input  type="text" name="email" label="email" /></td>
					</tr>
					<tr>
						<td style="text-align:left"><label for="email2">Confirm Email : </label></td>
						<td><input  type="text" name="email2" label="Confirm Email" /></td>
					</tr>
					<tr>
						<td style="text-align:left"><label for="comments">Additional Comments : </label></td>
						<td><textarea type="textarea" name="comments" size="200" label="Additional Comments"></textarea></td>
					</tr>
					<tr>
					<td>&nbsp;</td>
					<td style="text-align:right"><input type="submit" value="Review Order"/></td>
					</tr>
				</table>
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