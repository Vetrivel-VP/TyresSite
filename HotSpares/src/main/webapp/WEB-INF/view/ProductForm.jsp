<%-- <%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%> --%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
 
   <%@page isELIgnored="false" %>
   <%@include file="header.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
 <head>
  <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
  <title>NewProduct-HotSpares</title>
 </head>
 <body>
 <br>
 <br>
 <br>
 
 <div class="container">
 <div >
<div class="row">
<form:form method="POST" action="./saveProduct" commandName="prdfrm">
<div class="col-lg-4">
					<div class="panel panel-danger">
						<div class="panel-heading">
							<h3 class="thin text-center">ADD NEW PRODUCTS</h3></div>
							
					
							<div class="panel-body">
							
								<div class="top-margin">
									<form:label path="name">Product Name:<span class="text-danger">*</span></form:label>
									<form:input path="name" class="form-control" required="Please enter valid product name" />
								</div>
								<div class="top-margin">
									<form:label path="description">Product Description:<span class="text-danger">*</span></form:label>
									<form:input path="description" class="form-control" />
								</div>
								
								<div class="top-margin">
									<form:label path="price">Product Price:<span class="text-danger">*</span></form:label>
									<form:input path="price" class="form-control"  />
								</div>
								
								<hr>

								<div class="row">
									<div class="col-lg-8">
										<b><a href="listProducts">View All Product</a></b>
									</div>
									<div class="col-lg-4 text-right">
										<button class="btn btn-danger" type="submit">Submit</button>
									</div>
								</div>
								
							
						</div>
						
					</div>

				</div>
				
				<div class="col-lg-8">
					<div class="panel panel-danger">
						<div class="panel-heading">
							<h3 class="thin text-center">Products List</h3></div>
							
					
							<div class="panel-body">
							
								<center>


  <c:if test="${!empty productList}">
   <table border="1" bgcolor="black" width="600px" class="table table-bordered table-hover">
    <tr
     style="background-color: teal; color: white; text-align: center;"
     height="40px">
     
     <td>Product Id</td>
     <td>Product Name</td>
   <td>Product Description</td>
   <td>Product Price</td>
   
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
      <td><c:out value="${pd.description}" />
      </td>
      <td><c:out value="${pd.price}" />
      </td>
      <td><a href="editProduct?id=${pd.productid}">Edit</a></td>
      <td><a href="deleteProduct?id=${pd.productid}">Delete</a></td>
     </tr>
    </c:forEach>
   </table>
  </c:if>
  
</center>
								
							
						</div>
						
					</div>

				</div>
				
				</form:form>

</div>
</div>
</div>
 
 </body>
</html>