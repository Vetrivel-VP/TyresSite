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
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
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
							<form:form method="POST" action="./saveuser" commandName="signupForm" id="passwordForm">
								<div class="top-margin">
									<form:label path="first_name">First Name</form:label>
									<form:input path="first_name"  class="form-control" required="true"/>
									<form:errors path="first_name" cssStyle="color: #ff0000;"/>
								</div>
								<div class="top-margin">
									<form:label path="last_name">Last Name</form:label>
									<form:input path="last_name" type="text" class="form-control" required="true"/>
									<form:errors path="last_name" cssStyle="color: #ff0000;"/>
								</div>
								<div class="top-margin">
									<form:label path="email">Email Address <span class="text-danger">*</span></form:label>
									<form:input path="email" type="email" class="form-control" required="true"/>
									${duplicateEmailid }
								</div>

								<div class="row top-margin">
									<div class="col-sm-6">
										<form:label path="password">Password <span class="text-danger">*</span></form:label>
										<form:input path="password" type="password" class="form-control" required="true" autocomplete="off" name="password1" id="password1"/>
										
										 <div class="row">
<div class="col-sm-6">
<span id="8char" class="glyphicon glyphicon-remove" style="color:#FF0004;"></span> 8 Characters<br>
<span id="ucase" class="glyphicon glyphicon-remove" style="color:#FF0004;"></span> 1 Uppercase
</div>
<div class="col-sm-6">
<span id="lcase" class="glyphicon glyphicon-remove" style="color:#FF0004;"></span> 1 Lowercase<br>
<span id="num" class="glyphicon glyphicon-remove" style="color:#FF0004;"></span> 1 Number
</div>
</div> 
									</div>
									<div class="col-sm-6">
										<label>Confirm Password <span class="text-danger">*</span></label>
										<input type="password" class="form-control" required="true" name="password2" id="password2" autocomplete="off"/>
										 <div class="row">
<div class="col-sm-12">
<span id="pwmatch" class="glyphicon glyphicon-remove" style="color:#FF0004;"></span> Passwords Match
</div>
</div> 
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
<script>
$("input[type=password]").keyup(function(){
    var ucase = new RegExp("[A-Z]+");
	var lcase = new RegExp("[a-z]+");
	var num = new RegExp("[0-9]+");
	
	if($("#password1").val().length >= 8){
		$("#8char").removeClass("glyphicon-remove");
		$("#8char").addClass("glyphicon-ok");
		$("#8char").css("color","#00A41E");
	}else{
		$("#8char").removeClass("glyphicon-ok");
		$("#8char").addClass("glyphicon-remove");
		$("#8char").css("color","#FF0004");
	}
	
	if(ucase.test($("#password1").val())){
		$("#ucase").removeClass("glyphicon-remove");
		$("#ucase").addClass("glyphicon-ok");
		$("#ucase").css("color","#00A41E");
	}else{
		$("#ucase").removeClass("glyphicon-ok");
		$("#ucase").addClass("glyphicon-remove");
		$("#ucase").css("color","#FF0004");
	}
	
	if(lcase.test($("#password1").val())){
		$("#lcase").removeClass("glyphicon-remove");
		$("#lcase").addClass("glyphicon-ok");
		$("#lcase").css("color","#00A41E");
	}else{
		$("#lcase").removeClass("glyphicon-ok");
		$("#lcase").addClass("glyphicon-remove");
		$("#lcase").css("color","#FF0004");
	}
	
	if(num.test($("#password1").val())){
		$("#num").removeClass("glyphicon-remove");
		$("#num").addClass("glyphicon-ok");
		$("#num").css("color","#00A41E");
	}else{
		$("#num").removeClass("glyphicon-ok");
		$("#num").addClass("glyphicon-remove");
		$("#num").css("color","#FF0004");
	}
	
	if($("#password1").val() == $("#password2").val()){
		$("#pwmatch").removeClass("glyphicon-remove");
		$("#pwmatch").addClass("glyphicon-ok");
		$("#pwmatch").css("color","#00A41E");
	}else{
		$("#pwmatch").removeClass("glyphicon-ok");
		$("#pwmatch").addClass("glyphicon-remove");
		$("#pwmatch").css("color","#FF0004");
	}
});
</script> 
</html>