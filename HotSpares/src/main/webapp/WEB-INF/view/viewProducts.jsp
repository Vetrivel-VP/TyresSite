<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@include file="header.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">


<title>Insert title here</title>
<style>


</style>
</head>
<body ng-app="myApp">
	<br>
	<br>
	<br>
	<div align="center">
		<div class="w3-container" ng-controller="ProductController" >
		<h3>${product.name}</h3>
		<div class="w3-card-12" style="width:50%;height:50%" >
		<p align="center"><c:url var="src" value="/resource/bootstrap/images/${product.productid }.png"></c:url>
				<img width="60px" height="60px" src="${src }"  style="width:50%;height:30%"/></p>
			<div class="w3-container w3-center">
			<p>
			Rs.${product.price}/-</p>
			<hr>
			<p>${product.description}
			
			</p>
			<security:authorize access="hasRole('ROLE_USER')"> <p>Add To Cart </p><p><a href="" ng-click="addToCart(${product.productid })"><span class="glyphicon glyphicon-shopping-cart"></span></a></p></security:authorize>
		</div>
		</div>
		
		</div></div>
				
				
				<script src="<c:url value="/resource/bootstrap/js/controller.js"></c:url>"></script>
</body>
</html>