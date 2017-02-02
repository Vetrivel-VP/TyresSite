<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
<meta http-equiv="Content-Type" content=text.html;>
  <title>HOME-HotSpares</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
   <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
 <link rel="stylesheet" href="<c:url value='/resource/bootstrap/css/bootstrap.min.css'/>"/>
 <link rel="stylesheet" href="<c:url value='/resource/saracss/slider.css/' /> "/>
 <!-- Image Slider Style -->
 
 </head>
<body>
<%@include file="header.jsp" %>

<!-- Image Slider -->
<div class="container-fluid-full">
<br>
<div id="carousel" class="carousel slide carousel-fade" data-ride="carousel">
    <ol class="carousel-indicators">
        <li data-target="#carousel" data-slide-to="0" class="active"></li>
        <li data-target="#carousel" data-slide-to="1"></li>
        <li data-target="#carousel" data-slide-to="2"></li>
        <li data-target="#carousel" data-slide-to="3"></li>
        <li data-target="#carousel" data-slide-to="4"></li>
    </ol>
    
   									 <!-- Carousel items -->
   								 
    <div class="carousel-inner carousel-zoom">
        <div class="active item"><img class="img-responsive" src="<c:url value='/resource/bootstrap/images/slide1.jpg'/>" alt="first" style="width:1380px;height:460px"/>
        </div>
        <div class="item"><img class="img-responsive" src="<c:url value='/resource/bootstrap/images/slide2.jpg'/>" alt="second" style="width:1380px;height:460px"/>
        </div>
        <div class="item"><img class="img-responsive" src="<c:url value='/resource/bootstrap/images/slide1.jpg'/>" alt="third" style="width:1380px;height:460px"/>
        </div>
        <div class="item"><img class="img-responsive" src="<c:url value='/resource/bootstrap/images/slide2.jpg'/>" alt="fourth" style="width:1380px;height:460px"/>
        </div>
        <div class="item"><img class="img-responsive" src="<c:url value='/resource/bootstrap/images/slide1.jpg'/>" alt="fourth" style="width:1380px;height:460px"/>
        </div>
       </div>
    							 	<!-- Carousel nav -->
    							 
    <a class="carousel-control left"  href="#carousel" data-slide="prev"></a>
    <a class="carousel-control right"  href="#carousel" data-slide="next"></a>
</div>
</div>




<!-- Image Slider Finished -->
<br> 


        <script src="<c:url value='/resource/bootstrap/js/bootstrap.min.js'/>"/></script>
</body>
</html>