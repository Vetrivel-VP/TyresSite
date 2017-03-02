<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
<meta http-equiv="Content-Type" content=text.html;>
  <title>Signin-HotSpares</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
   <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
 <link rel="stylesheet" href="<c:url value='/resource/bootstrap/css/bootstrap.min.css'/>"/>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  
        
 
 </head>
<body>
<%@include file="header.jsp" %>

<!-- Sign IN Form Begins -->
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
							<h3 class="thin text-center">Sign In To Your Account</h3></div>
							<p class="text-center text-muted">If You are not a registered user <a href="signup">Click Here</a> to create a new account in our domain. </p>
							<hr>
							<div class="panel-body">
							<form action="<c:url value="/j_spring_security_check"></c:url>" method="post" >
								<div class="top-margin">
									<label>Email <span class="text-danger">*</span></label>
									<input type="text" class="form-control" name="j_username" id="j_username" required placeholder="email">
								</div>
								<div class="top-margin">
									<label>Password <span class="text-danger">*</span></label>
									<input type="password" class="form-control" name="j_password" id="j_password" required placeholder="password">
								</div>

								<hr>

								<div class="row">
									<div class="col-lg-8">
										<b><a href="">Forgot password?</a></b>
									</div>
									<div class="col-lg-4 text-right">
										<button class="btn btn-danger" type="submit">Sign in</button>
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