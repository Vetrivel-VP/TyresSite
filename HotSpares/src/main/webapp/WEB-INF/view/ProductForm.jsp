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
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
 </head>
 <body>
 <br>
 <br>
 <br>
 
 <div class="container">
 <div >
<div class="row">

<form:form method="POST" action="./saveProduct" commandName="prdfrm" enctype="multipart/form-data">
<div class="col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2">
					<div class="panel panel-danger">
						<div class="panel-heading">
							<h3 class="thin text-center">ADD NEW PRODUCTS</h3></div>
							
					
							<div class="panel-body">
							
								<div class="top-margin">
									<form:label path="name">Product Name:<span class="text-danger">*</span></form:label>
									<form:input path="name" class="form-control" />
									<form:errors path="name" cssStyle="color: #ff0000;"></form:errors>
								</div>
								<br>
									<div class="row">
									<div class="col-sm-6">
									<label for="category">Category</label>
									<br>
									<c:forEach var="c" items="${categories}">
									<form:radiobutton path="category.id" value="${c.id}" />${c.categoryDetails}
									</c:forEach>
									</div>
									<div class="col-sm-6">
									<label for="supplier">Product Supplier</label>
									<br>
									<c:forEach var="s" items="${suppliers}">
									<form:radiobutton path="supplier.id" value="${s.id}" />${s.name}
									</c:forEach>
									</div>
									</div>
								
								<br>
									<div class="row">
									<div class="col-sm-4">
									<form:label path="pquantity">Product Quantity:<span class="text-danger">*</span></form:label>
									</div>
									<div class="col-sm-8">
									<form:input path="pquantity"  type="number" min="1" placeholder="can't leave empty" class="form-control" />
									</div>
									<form:errors path="pquantity" cssStyle="color: #ff0000;"></form:errors>
								 </div>
								<br>
								<div class="top-margin">
									<form:label path="description">Product Description:<span class="text-danger">*</span></form:label>
									<form:input path="description" class="form-control" />
									<form:errors path="description" cssStyle="color: #ff0000;"></form:errors>
								</div>
								<br>
								<div class="top-margin">
									<form:label path="price">Product Price:<span class="text-danger">*</span></form:label>
									<form:input path="price" class="form-control"  />
									<form:errors path="price" cssStyle="color: #ff0000;"></form:errors>
								</div>
								<br>
								<div class="top-margin">
									<form:label path="image">Product Image:<span class="text-danger">*</span></form:label>
									<form:input path="image" type="file"  />
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
				
				
				
				</form:form>

</div>
</div>
</div>
 
 </body>
</html>