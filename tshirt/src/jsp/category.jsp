<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ page contentType="text/html; charset=UTF-8" language="java" errorPage="" %>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.Collections"%>
<%@page import="java.sql.*"%>
<%@page import="com.tshirtosaurus.beans.PageItem2"%>
<%
	ArrayList pageItems = new ArrayList();
%>

<%
	String url = "jdbc:mysql://tshirtosaur.db.5019795.hostedresource.com:3306/tshirtosaur";//jdbc:mysql://localhost:3306/test";
	String user= "tshirtosaur";//"root";
	String pass= "Tsh!rt0saurus";//"";
	String categoryId = (String)request.getParameter("id");
	try{
		Class.forName ("com.mysql.jdbc.Driver").newInstance ();
		Connection conn = DriverManager.getConnection(url, user, pass);
		Statement stmt = conn.createStatement();
		ResultSet rs = stmt.executeQuery("select * from tshirtosaur.TEESHIRT as t join tshirtosaur.CATEGORY_TEESHIRT as ct ON (ct.teeshirt_id=t.teeshirt_id) where ct.category_id="+categoryId);
		while ( rs.next() ){
	PageItem2 pageItem = new PageItem2();
		    pageItem.setId(rs.getString(1));
		    pageItem.setName(rs.getString(2));
		    pageItem.setImage(rs.getString(3));
		    pageItem.setAction(rs.getString(6));
		    pageItem.setSort(rs.getString(7));
		    pageItems.add(pageItem);
		}
		rs.close();
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
<link href="rsc/styles/base.css" rel="stylesheet" type="text/css">
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
				
				<form action="<%=item.getAction()%>" method="post"><input type="image" src="<%=item.getImage()%>" alt="Submit button" align="center" width="75" height="75" style="margin: 20px 20px 20px 20px;"/><input type="hidden" name="id" value="<%=item.getId()%>"/></form>
				
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