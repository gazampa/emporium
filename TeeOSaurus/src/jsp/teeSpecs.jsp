<%@ taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>TeeShirtOSaurus</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<link href="rsc/styles/base.css" rel="stylesheet" type="text/css">
<s:head/> 
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
				<img src="rsc/images/tee0.jpg" width="75" height="75" style="margin: 20px 20px 20px 50px;">
			</div>
		</td><td>	
			<div>
				<s:form action="TeeSpecs" namespace="/">
					<s:radio label="Gender" name="gender" list="#{'F':'Womens', 'M':'Mens'}"/>
					<s:select label="Size" name="sizze" headerKey="-1" headerValue="Choose Your Size" list="#{'S':'Small', 'M':'Medium', 'L':'Large','XL':'Extra Large'}" value="selectedSize"/>
					<s:select label="Style" name="style" headerKey="-1" headerValue="Choose Your Style" list="#{'C':'Crest', 'M':'Middle Print'}" value="selectedStyle"/>
					<s:select label="Color" name="color" headerKey="-1" headerValue="Choose Your Color" list="#{'G':'Green', 'W':'White', 'AU':'Gold'}" value="selectedColor"/>
					<s:submit /> &nbsp; <s:reset />
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
