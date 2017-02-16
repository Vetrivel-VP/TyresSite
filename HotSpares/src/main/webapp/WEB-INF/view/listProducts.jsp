<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
 
   <%@page isELIgnored="false" %>
   <%@include file="header.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<!-- <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script> -->
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>ProductList-HotSpares</title>
 <script>
$(document).ready(function(){
	var searchCondition='${searchCondition}';
	$('.table').DataTable({
		"lengthMenu":[[3,5,7,-1],[3,5,7,"All"]],
		"oSearch":{"sSearch":searchCondition}
	})
});
</script>

</head>
<body>
<br>
<br>
<br>
<br>
<br>
<br>

<div class="col-lg-12">
					<div class="panel panel-danger">
						<div class="panel-heading">
							<h3 class="thin text-center">Products List</h3></div>
							
					
							<div class="panel-body">
							
								<center>


  <c:if test="${!empty productList}">
   <table id="example" border="1" bgcolor="black" width="600px" class="table-responsive table table-bordered table-hover">
    <tr
     style="background-color: teal; color: white; text-align: center;"
     height="40px">
     
     <td>Product Id</td>
     <td>Product Name</td>
     <td>Product Image</td>
   <td>Product Description</td>
   <td>Product Price</td>
   <td>Category</td>
   <td>Product Supplier</td>
     <td>Edit</td>
     <td>Delete</td>
    </tr>
   <c:forEach items="${productList}" var="pd">
     <tr
      style="background-color: white; color: black; text-align: center;"
      height="30px">
      
      <td><c:out value="${pd.productid}" />
      </td>
      <td><c:out value="${pd.name}" />
      </td>
      <td><c:url var="src" value="/resource/bootstrap/images/${pd.productid }.png"></c:url>
				<img src="${src }"/>
      </td>
      <td><c:out value="${pd.description}" />
      </td>
      <td><c:out value="${pd.price}" />
      </td>
      <td><c:out value="${pd.category}" />
      </td>
      <td><c:out value="${pd.supplier}" /></td>
      <td><a href="editProduct?id=${pd.productid}"><span class="glyphicon glyphicon-pencil"></span></a></td>
      <td><a href="deleteProduct?id=${pd.productid}"><span class="glyphicon glyphicon-remove"></span></a></td>
     </tr>
    </c:forEach>
   </table>
  </c:if>
  
</center>
								
							
						</div>
						
					</div>
<a href="ProductForm" class="btn btn-warning"> Add New Product</a>
				</div>
</body>
</html>