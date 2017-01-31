<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
<meta http-equiv="Content-Type" content=text.html;>
  <title>HOME-HotSpares</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
   <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
 <link rel="stylesheet" href="<c:url value='/resource/bootstrap/css/bootstrap.min.css'/>"/>
 <!-- Image Slider Style -->
 <style>
 .mySlides {display:none;} 
  
</style>
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


        <script src="<c:url value='/resource/bootstrap/js/bootstrap.min.js'/>"/></script>
</body>
</html>