<%@ taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>TeeShirtOSaurus</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<link href="rsc/styles/base.css" rel="stylesheet" type="text/css">
</head>

<body bgcolor="#000000" text="#FFFFFF" link="#FFFFFF" vlink="#FFFFFF" alink="#FFFFFF">
<table width="502" border="0" align="center">
    <tr>
	  	<td>
	  	<hr align="center">
	  	</td>
  </tr>   
  <tr>
	<td><br>
		Pop Tee Shirt specifications in here
		<br>
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
				<s:form action="Order" namespace="/">
					<s:textfield name="firstName" label="First Name" />
					<s:textfield name="lastName"  label="Last Name" />
					<s:textfield name="address1"  label="Address Line 1" />					
					<s:textfield name="address2"  label="Address Line 2" />
					<s:textfield name="city"      label="City" />
					<s:select    name="state"     label="State" headerKey="-1" headerValue="Choose Your State" list="#{'1':'Alabama', '2':'Alaska', '3':'Arkansas'}" value="selectedState"/>
					<s:textfield name="zip"       label="Zip" />
					<s:textfield name="email"     label="Email" />
					<s:textfield name="email2"    label="Confirm Email" />
					<s:textarea  name="comments"  label="Additional Information" />
					<s:submit />
				</s:form>
			</div>
		</td></tr></table>	
	</td>
  </tr>

  <tr>
  		<td>
  		<hr align="center">
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
</body>
</html>
