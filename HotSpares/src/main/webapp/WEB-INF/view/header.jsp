<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta http-equiv="Content-Type" content=text.html;>
  <title>Home-HotSpares</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
   <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
   <link rel="stylesheet" href="<c:url value='/resource/bootstrap/css/bootstrap.min.css'/>"/>
  <link rel="stylesheet" href="<c:url value='/resource/bootstrap/css/style.css'/>"/>
  <link rel="stylesheet" href="<c:url value='/resource/bootstrap/css/header.css'/>"/>
</head>
<body>
<header>
	<div id="navbar" class="navbar navbar-default navbar-fixed-top" role="navigation">
    <div class="container-fluid">
        <div class="navbar-header"><a class="navbar-brand" href="#">HotSpares</a>
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-menubuilder"><span class="sr-only">Toggle navigation</span><span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span>
            </button>
        </div>
        <div class="collapse navbar-collapse">
            <ul class="nav navbar-nav navbar-right">
                <li><a href="index">Home</a>
                </li>
                 <li class="dropdown">
        <a class="dropdown-toggle" data-toggle="dropdown" href="#">Category
        <span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="#"><font face="Cambria">Literature</font></a></li>
          <li><a href="#"><font face="Cambria">Fantasy</font></a></li>
          <li><a href="#"><font face="Cambria">Non fiction</font></a></li>
        </ul>
      </li>

                 <li><a href="signin">Signin</a>
                </li>
            </ul>
            
        </div>
    </div>
</div>
</header>
						<script src="<c:url value='/resource/bootstrap/js/bootstrap.min.js'/>"></script>
</body>
</html>