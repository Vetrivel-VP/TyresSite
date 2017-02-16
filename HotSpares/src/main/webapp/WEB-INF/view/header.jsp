<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Bootstrap Case</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  
  <link rel="stylesheet" href="<c:url value='/resource/bootstrap/css/bootstrap.min.css'/>"/>
  <link rel="stylesheet" href="<c:url value='/resource/bootstrap/css/header.css'/>"/>
  <link href="https://cdn.datatables.net/1.10.13/css/jquery.dataTables.min.css" rel="stylesheet">  
 
  
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
         
  <script src = "https://code.jquery.com/ui/1.10.4/jquery-ui.js"></script>
  <script src="https://cdn.datatables.net/1.10.13/js/dataTables.jqueryui,min.js"></script>     
  <script src="https://cdn.datatables.net/1.10.13/js/jquery.dataTables.min.js"></script>

    

  

</head>
<body>

<nav class="navbar navbar-default navbar-fixed-top headroom">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
      <a class="navbar-brand" href="#">HotSpares</a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
      <li><a href="index">Home</a></li>
      <li class="dropdown">
        <a class="dropdown-toggle dropbtn" data-toggle="dropdown" href="#">Select By Category
        <span class="caret"></span></a>
        <ul class="dropdown-menu dropdown-content">
        	<c:url var="url1" value="/ProductsByCategory?searchCondition=Tube"></c:url>
          <li><a href="${url1}">Tube</a></li>
          <c:url var="url2" value="/ProductsByCategory?searchCondition=Tube Less"></c:url>
          <li><a href="${url2}">Tube Less</a></li>
          <li><a href="listProducts">Page 1-3</a></li>
        </ul>
        </li>
        <li><a href="ProductForm">Product</a></li>
        <li><a href="listUsers">Users</a></li>
      </ul>
      <ul class="nav navbar-nav navbar-right">
        
        <li><a href="signin"><span class="glyphicon glyphicon-log-in"></span> SignIn</a></li>
        <li><a href="signup"><span class="glyphicon glyphicon-user"></span> SignUp</a></li>
      </ul>
    </div>
  </div>
</nav>
  

<script src="<c:url value='/resource/bootstrap/js/bootstrap.min.js'/>"></script>
</body>
</html>
