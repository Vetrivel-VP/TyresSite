<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta http-equiv="Content-Type" content=text.html;>
  <title>Home-HotSpares</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
     <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <link rel="stylesheet" href="<c:url value='/resource/bootstrap/css/bootstrap.min.css'/>"/>
  
  
  
 	
  <!-- Slide Style -->
 

<style>
.mySlides {display:none;}
</style>
<!-- <SCRIPT language=JavaScript>
var message = "function disabled"; 
function rtclickcheck(keyp){ if (navigator.appName == "Netscape" && keyp.which == 3){ alert(message); return false; } 
if (navigator.appVersion.indexOf("MSIE") != -1 && event.button == 2) { alert(message); return false; } } 
document.onmousedown = rtclickcheck;
</SCRIPT> -->
</head>
<body>

 <%@include file="header.jsp" %>
<!-- Image Slider -->

<div class="w3-content w3-section" style="max-width:100%">
  <img class="mySlides" src="<c:url value='/resource/bootstrap/images/slide1.jpg' />" style="width:100%">
  <img class="mySlides" src="<c:url value='/resource/bootstrap/images/slide2.jpg' />" style="width:100%">
</div>

<script>
var myIndex = 0;
carousel();

function carousel() {
    var i;
    var x = document.getElementsByClassName("mySlides");
    for (i = 0; i < x.length; i++) {
       x[i].style.display = "none";  
    }
    myIndex++;
    if (myIndex > x.length) {myIndex = 1}    
    x[myIndex-1].style.display = "block";  
    setTimeout(carousel, 3000); // Change image every 3 seconds
}
</script>
<!-- Image Slider Finished -->
<br>



<!-- Image Thumbnails Finished -->
<%@include file="footer.jsp" %>
						<script src="<c:url value='/resource/bootstrap/js/bootstrap.min.js'/>"></script>
</body>
</html>