<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
 
   <%@page isELIgnored="false" %>
   <%@include file="header.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>ProductList-HotSpares</title>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
 
<script src="<c:url value='/resource/bootstrap/js/jquery-3.1.1.min.js'/>"></script>
 <link rel="stylesheet" type="text/css" href="//cdn.datatables.net/1.10.13/css/jquery.dataTables.min.css"> 
<script type="text/javascript" charset="utf8" src="//cdn.datatables.net/1.10.13/js/jquery.dataTables.min.js"></script>
<script type="text/javascript" src="<c:url value='/resource/bootstrap/js/controller.js'/>" ></script>
 <script type="text/javascript">
 $(document).ready(function(){
		var searchCondition='${searchCondition}';
		$('#myTable').dataTable({
			"lengthMenu":[[3,5,7,-1],[3,5,7,"All"]],
			"oSearch":{"sSearch":searchCondition}
		
		})
	});
</script>

 
  <style>
  p{
	font-family:"Times New Roman", Times, serif;
	font-size:36px;}
  </style>


</head>
<body ng-app="myApp">





<div class="col-lg-12" ng-controller="ProductController">
					
					<div class="panel panel-danger">
						
						<br>
					<br>
					<br>
						<div class="panel-heading">
							
							<p class="thin text-center" >PRODUCT LIST</p></div>
							
					
							</div>
							
								<center>


  <c:if test="${!empty productList}">
   <table id="myTable"  class="table table-hover">
    <thead>
    <tr>
     
     <td>Product Id</td>
     <td>Product Name</td>
     <td>Product Image</td>
   <td>Product Description</td>
   
   <td>Product Price</td>
   <td>Category</td>
   <td>Product Supplier</td>
    <td>Quantity</td>
   <security:authorize access="hasRole('ROLE_ADMIN')">
     <td>Edit</td>
     <td>Delete</td>
    </security:authorize>
    <security:authorize access="hasRole('ROLE_USER')"> 
     <td>Product Info</td>
     </security:authorize>
    </tr></thead>
   <c:forEach items="${productList}" var="pd">
     <tbody><tr
      style="background-color: white; color: black; text-align: center;"
      height="30px">
      
      <td><c:out value="${pd.productid}" />
      </td>
      <td><c:out value="${pd.name}" />
      </td>
      <td><c:url var="src" value="/resource/bootstrap/images/${pd.productid }.png"></c:url>
				<img width="60px" height="60px" src="${src }"/>
      </td>
      <td><c:out value="${pd.description}" />
      </td>
      
      <td><c:out value="${pd.price}" />
      </td>
      <td><c:out value="${pd.category}" />
      </td>
      <td><c:out value="${pd.supplier}" /></td>
      <td><span>${quant}</span></td>
      <security:authorize access="hasRole('ROLE_ADMIN')">
      <td><a href="editProduct?id=${pd.productid}"><span class="glyphicon glyphicon-pencil"></span></a></td>
      <td><a href="deleteProduct?id=${pd.productid}"><span class="glyphicon glyphicon-remove"></span></a></td>
      </security:authorize>
      <%-- <td><a href="viewProducts?id=${pd.productid }"><span class="glyphicon glyphicon-info-sign"></span></a></td> --%>
      <security:authorize access="hasRole('ROLE_USER')">
      
      <td><a href="" ng-click="addToCart(${pd.productid })"><span class="glyphicon glyphicon-shopping-cart"></span></a></td>
     </security:authorize>
     </tr></tbody>
    </c:forEach>
    
   </table>
  </c:if>
  
</center>
								
							
						
						
<security:authorize access="hasRole('ROLE_ADMIN')">					
<a href="ProductForm" class="btn btn-warning"> Add New Product</a>
</security:authorize>
				</div>
				
</body>
</html>