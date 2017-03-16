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
 <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Tangerine">
 <!-- Image Slider Style -->
 <style>
 .w3-tangerine{
 	font-family:"Tangerine",serif;
 }
 </style>
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
		<%-- <div class="w3-container w3-tangerine">
		
		 <c:if test="${!empty plist}">
		 		 <c:forEach items="${plist}" var="pd">
		 		 	<div class="w3-card-4" style="width:30%">
						<header class="w3-container w3-blue">
							<p ><c:out value="${pd.name}" /></p>
						</header>	
						<div class="w3-container">
							<p align="center"><c:url var="src" value="/resource/bootstrap/images/${pd.productid }.png"></c:url>
				<img  style="width:10%;height:10%" src="${src }"/></p>
							<hr>
							<p >Description :<c:out value="${pd.description}" /></p>
							<p >Product Category :<c:out value="${pd.category}" /></p>
							<p >Price : Rs.<c:out value="${pd.price}" />/-</p>
						</div>	
					<footer class="w3-container w3-blue">
							<div class="w3-row">
							<div class="w3-col s6 w3-center">
     							<p >More Details </p>  
     							
     						</div>	
     						<div class="w3-col s6 w3-center">
     							<br>  
     							<p><a href="viewProducts/${pd.productid}" ><button class="w3-btn w3-white w3-border w3-border-black w3-round-large"><span class="glyphicon glyphicon-info-sign"></span></button></a></p>
     						</div>	
     						</div>
					</footer>	
					 		 	
		 		 	</div>
		 		 
		 		 </c:forEach>
		 </c:if>
		</div> --%>
		
		<br>
					<br>
<footer class="w3-container  w3-padding-24 w3-black w3-center">
		<h4>Follow Us</h4>
		<a class="w3-btn w3-xlarge w3-circle w3-pink" href="" title="Facebook"><i class="fa fa-facebook"></i></a>
		<a class="w3-btn w3-xlarge w3-circle w3-pink" href="" title="Twitter"><i class="fa fa-twitter"></i></a>
		<a class="w3-btn w3-xlarge w3-circle w3-pink" href="" title="Google +"><i class="fa fa-google-plus"></i></a>
		<a class="w3-btn w3-xlarge w3-circle w3-pink" href="" title="Instagram"><i class="fa fa-instagram"></i></a>
		<a class="w3-btn w3-xlarge w3-circle w3-pink" href="" title="Linkedin"><i class="fa fa-linkedin"></i></a>
		<p>Powered By R.Vetrivel</p>

</footer>
    	
        <script src="<c:url value='/resource/bootstrap/js/bootstrap.min.js'/>"/></script>
</body>

</html>