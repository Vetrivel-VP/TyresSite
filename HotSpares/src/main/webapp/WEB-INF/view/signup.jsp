<%-- <%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%> --%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
 
   <%@page isELIgnored="false" %>
   <%@include file="header.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content=text.html;>
  <title>SignUp-HotSpares</title>
  
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
 <link rel="stylesheet" href="<c:url value='/resource/bootstrap/css/bootstrap.min.css'/>"/> 

  
        
 
 </head>
<body>

<%@include file="header.jsp" %>
<!-- Sign UP Form Begins -->
<br>
<br>
<br>
<br>
<br>
<div class="container">
<div class="row">
<div class="col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2">
					<div class="panel panel-danger">
						
						<div class="panel-heading">
							<h3 class="thin text-center">Register A New Account</h3></div>
							<p class="text-center text-muted">If you already have an account <a href="signin">Click here</a> to signin to your account. </p>
							<hr>
<div class="panel-body">
							<form:form method="POST" action="./saveuser" commandName="signupForm">
								<div class="top-margin">
									<form:label path="first_name">First Name</form:label>
									<form:input path="first_name"  class="form-control" required="true"/>
								</div>
								<div class="top-margin">
									<form:label path="last_name">Last Name</form:label>
									<form:input path="last_name" type="text" class="form-control" required="true"/>
								</div>
								<div class="top-margin">
									<form:label path="email">Email Address <span class="text-danger">*</span></form:label>
									<form:input path="email" type="email" class="form-control" required="true"/>
								</div>

								<div class="row top-margin">
									<div class="col-sm-6">
										<form:label path="password">Password <span class="text-danger">*</span></form:label>
										<form:input path="password" type="password" class="form-control" required="true"/>
									</div>
									<div class="col-sm-6">
										<label>Confirm Password <span class="text-danger">*</span></label>
										<input type="password" class="form-control" required="true"/>
									</div>
								</div>

								<hr>

								<div class="row">
									
									<div class="col-lg-7  text-right">
										<button class="btn btn-danger" type="submit">Register</button>
									</div>
								</div>
							</form:form>
						</div>
					</div>

				</div>
</div>
</div>
		<script src="<c:url value='/resource/bootstrap/js/bootstrap.min.js'/>"/></script> 
		
</body>
</html>