<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
<meta http-equiv="Content-Type" content=text.html;>
  <title>SignUp-HotSpares</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
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
<article>
<div class="col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2">
					<div class="panel panel-danger">
						
						<div class="panel-heading">
							<h3 class="thin text-center">Register A New Account</h3></div>
							<p class="text-center text-muted">If you already have an account <a href="signin">Click here</a> to signin to your account. </p>
							<hr>
<div class="panel-body">
							<form>
								<div class="top-margin">
									<label>First Name</label>
									<input type="text" class="form-control" placeholder="firstname">
								</div>
								<div class="top-margin">
									<label>Last Name</label>
									<input type="text" class="form-control" placeholder="lastname">
								</div>
								<div class="top-margin">
									<label>Email Address <span class="text-danger">*</span></label>
									<input type="email" class="form-control" placeholder="email">
								</div>

								<div class="row top-margin">
									<div class="col-sm-6">
										<label>Password <span class="text-danger">*</span></label>
										<input type="text" class="form-control" placeholder="password">
									</div>
									<div class="col-sm-6">
										<label>Confirm Password <span class="text-danger">*</span></label>
										<input type="text" class="form-control" placeholder="confirm_password">
									</div>
								</div>

								<hr>

								<div class="row">
									
									<div class="col-lg-7  text-right">
										<button class="btn btn-danger" type="submit">Register</button>
									</div>
								</div>
							</form>
						</div>
					</div>

				</div>
</article>
</div>
</div>
		<script src="<c:url value='/resource/bootstrap/js/bootstrap.min.js'/>"/></script> 
		
</body>
</html>