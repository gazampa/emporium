<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ page contentType="text/html; charset=UTF-8" language="java" errorPage="" %>
<%@page import="java.util.ArrayList"%>
<%@page import="java.sql.*"%>
<%@page import="java.util.Collections"%>
<%@page import="com.tshirtosaurus.beans.PageItem2"%>
<%@page import="com.tshirtosaurus.util.Constants"%>
<%
	ArrayList pageItems = new ArrayList();
%>

<% 
	String url = Constants.getDatabaseURL();//"jdbc:mysql://tshirtosaur.db.5019795.hostedresource.com:3306/tshirtosaur";//jdbc:mysql://localhost:3306/test";
	String user= Constants.getUser();//"tshirtosaur";//"root";
	String pass= Constants.getPassword();//"Tsh!rt0saurus";//"";
	try{
		Class.forName ("com.mysql.jdbc.Driver").newInstance ();
		Connection conn = DriverManager.getConnection(url, user, pass);
		Statement stmt = conn.createStatement();
		ResultSet rs = stmt.executeQuery("select * from tshirtosaur.TEESHIRT where teeshirt_id NOT IN ( select distinct teeshirt_id from tshirtosaur.CATEGORY_TEESHIRT ) ");
		while ( rs.next() ){
			PageItem2 pageItem = new PageItem2();
		    pageItem.setId(rs.getString(1));
		    pageItem.setName(rs.getString(2));
		    pageItem.setImage(rs.getString(3));
		    pageItem.setDisplayText(rs.getString(5));
		    pageItem.setAction(rs.getString(6));
		    pageItem.setSort(rs.getString(7));
		    pageItem.setPrice(rs.getString(8));
		    pageItems.add(pageItem);
		}
		rs.close();
		stmt = conn.createStatement();
		rs = stmt.executeQuery("select * from CATEGORY");
		while ( rs.next() ){
			PageItem2 pageItem = new PageItem2();
		    pageItem.setId(rs.getString(1));
		    pageItem.setName(rs.getString(2));
		    pageItem.setImage(rs.getString(3));
		    pageItem.setDisplayText(rs.getString(5));
		    pageItem.setAction(rs.getString(6));
		    pageItem.setSort(rs.getString(7));
		    pageItems.add(pageItem);
		}
		conn.close();
		Collections.sort(pageItems);
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
    <td width="502"><div align="center"><img src="rsc/images/logo.gif" width="600" height="100"/></div></td>
  </tr>
  <!-- Navigation -->
  <tr>
    <td>
      <div align="center">
        <table width="100%" border="0">
          <tr valign="top">
            <td>
              <p align="center" style="color:#FFFFFF;">Behold ! Teeosaurus Lives !</p>
              <p style="color:#000000;">Lorem ipsum dolor sit amet, laoreet eros pede pulvinar, eu et.
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
		for( int i=0;i<pageItems.size();i++)
		{
		    PageItem2 item = (PageItem2)pageItems.get(i);
%>
				<td align="center">			
				<form action="<%=item.getAction()%>" method="post"><input type="image" src="<%=item.getImage()%>" alt="Click to Choose" align="center" width="75" height="75" style="margin: 20px 20px 20px 20px;"/><input type="hidden" name="id" value="<%=item.getId()%>"/></form>
				<%=(item.getDisplayText()!=null)?item.getDisplayText(): "" %>
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
	          <img src="rsc/images/logo2.gif" width="200" height="50" /><br/>
	          <span></span>
		  </div>
  	  </td>
  </tr>
  
</table>
</body>
</html>