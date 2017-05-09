<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ page contentType="text/html; charset=UTF-8" language="java" errorPage="" %>
<%@page import="java.util.ArrayList"%>
<%@page import="java.sql.*"%>
<%@page import="com.tshirtosaurus.beans.TeeShirt"%>
<%
	ArrayList tees = new ArrayList();
%>

<% 
	String url = "jdbc:mysql://tshirtosaur.db.5019795.hostedresource.com:3306";//jdbc:mysql://localhost:3306/test";
	String user= "tshirtosaur";//"root";
	String pass= "Tsh!rt0saurus";//"";
	try{
		Class.forName ("com.mysql.jdbc.Driver").newInstance ();
		Connection conn = DriverManager.getConnection(url, user, pass);
		Statement stmt = conn.createStatement();
		ResultSet rs = stmt.executeQuery("select * from tshirtosaur.TEESHIRT");
		while ( rs.next() ){
			TeeShirt teeShirt = new TeeShirt();
		    teeShirt.setId(rs.getString(1));
		    teeShirt.setName(rs.getString(2));
		    teeShirt.setImage(rs.getString(3));
			tees.add(teeShirt);
		}
		rs.close();
		conn.close();
	}catch(Exception e)
	{
	    out.println(e.toString());
	}
	int numberOfColumns = 2;
	int col=2;
%>
<html>
<head>

<script>
function SoundOff(soundobj) {
  var thissound=document.getElementById(soundobj);
  thissound.Play();
}
</script>
<embed src="stegosaurus.wav" autostart=false width=0 height=0 id="stegocall" enablejavascript="true">
<link href="rsc/styles/base.css" rel="stylesheet" type="text/css">
</head>

<body>

<table width="502" border="0" align="center">
  <!-- Logo-->
  <tr>
    <td width="502"><div align="center"><img src="xlogo.gif" width="600" height="100"/></div></td>
  </tr>
  <!-- Navigation -->
  <tr>
    <td>
      <div align="center">
        <table width="100%" border="0">
          <tr valign="top">
            <td>
              <p style="color:#FFFFFF;align:justify">Behold ! Teeosaurus Lives !</p>
              <p style="color:#000000;align:justify">Lorem ipsum dolor sit amet, laoreet eros pede pulvinar, eu et.
              Molestie morbi diam nec facilisi. Duis nullam et praesent bibendum cras pellentesque.
              Nec phasellus aliquam arcu nam. Nec vehicula ipsum quam a netus, faucibus eros.
              Lorem ipsum dolor sit amet, laoreet eros pede pulvinar, eu et.</p>
              </td>
          </tr>
        </table>
      </div>
      </td>
  </tr>
    <tr>
    <td>
      <div align="center">
        <table width="100%" border="0">
          <tr valign="top" class="smalltext">

<%
	try{
		for( int i=0;i<tees.size();i++)
		{
		    TeeShirt tee = (TeeShirt)tees.get(i);
%>
				<td align="center">
				
				<form action="teeSpecs.jsp" method="post"><input type="image" src="<%=tee.getImage()%>" alt="Submit button" align="center" width="75" height="75" style="margin: 20px 20px 20px 20px;"/><input type="hidden" name="tshirtid" value="<%=tee.getId()%>"/></form>
				
				</td>
<%		if ( (col!=0)&&((col+1)%numberOfColumns==0)) { %></tr><tr valign="top" class="smalltext"><% } //Open another Row  
		col++;
    	}
	}catch(Exception e)
	{
		out.println(e.toString());
	}
%>
          </tr>
        </table>
      </div>
      </td>
  </tr>

  <tr>
  		<td>
  		<hr align="center"/>
  		</td>
  </tr>
  <tr>
      <td>
		  <div align="center">
		  	<hr/>
	          <img src="xlogo2.gif" width="200" height="50" /><br/>
	          <span></span>
		  </div>
  	  </td>
  </tr>
  
</table>
</body>
</html>