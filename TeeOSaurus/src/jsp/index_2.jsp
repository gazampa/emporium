<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<html>
<head>
<script>
<!--
function SoundOff(soundobj) {
  var thissound=document.getElementById(soundobj);
  thissound.Play();
}


   image0on = new Image(50,50);
   image0on.src = "rsc/images/category/images0_on.jpg";
   image0off = new Image(50,50);
   image0off.src = "rsc/images/category/images0.jpg";
   
   image1on = new Image(50,50);
   image1on.src = "rsc/images/category/images1_on.jpg";
   image1off = new Image(50,50);
   image1off.src = "rsc/images/category/images1.jpg";
   
   image2on = new Image(50,50);
   image2on.src = "rsc/images/category/images2_on.jpg";
   image2off = new Image(50,50);
   image2off.src = "rsc/images/category/images2.jpg";
   
   image3on = new Image(50,50);
   image3on.src = "rsc/images/category/images3_on.jpg";
   image3off = new Image(50,50);
   image3off.src = "rsc/images/category/images3.jpg";
   
   image4on = new Image(50,50);
   image4on.src = "rsc/images/category/images4_on.jpg";
   image4off = new Image(50,50);
   image4off.src = "rsc/images/category/images4.jpg";
   
   image5on = new Image(50,50);
   image5on.src = "rsc/images/category/images5_on.jpg";
   image5off = new Image(50,50);
   image5off.src = "rsc/images/category/images5.jpg";


function img_On(imgName)
{
  if (version == "n3")
  {
    imgOn = eval(imgName + "on.src");
    document [imgName].src = imgOn;
  }
}

function img_Off(imgName)
{
  if (version == "n3")
  {
    imgOff = eval(imgName + "off.src");
    document [imgName].src = imgOff;
  }
}

-->
</script>
<embed src="rsc/sounds/stegosaurus.wav" autostart=false width=0 height=0 id="stegocall" enablejavascript="true">
<link href="rsc/styles/base.css" rel="stylesheet" type="text/css">
</head>

<body>

<table width="502" border="0" align="center">
  <!-- Logo-->
  <tr>
    <td width="502"><div align="center"><img src="rsc/images/logo.gif" onMouseOver="SoundOff('stegocall')" width="600" height="100"></div></td>
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
              Lorem ipsum dolor sit amet, laoreet eros pede pulvinar, eu et.
              Molestie morbi diam nec facilisi. Duis nullam et praesent bibendum cras pellentesque.
              Nec phasellus aliquam arcu nam. Nec vehicula ipsum quam a netus, faucibus eros.
              Lorem ipsum dolor sit amet, laoreet eros pede pulvinar, eu et.
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
			<td align=center style=""><s:form action="SelectCategory" namespace="/"><s:submit type="image" src="rsc/images/tee0.jpg" align="center" width="75" height="75" style="margin: 20px 20px 20px 20px;"/></s:form></td>
			<td align=center style=""><s:form action="SelectCategory" namespace="/"><s:submit type="image" src="rsc/images/tee1.jpg" align="center" width="75" height="75" style="margin: 20px 20px 20px 20px;"/></s:form></td>
          </tr>
        </table>
      </div>
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