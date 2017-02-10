<%-- <%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%> --%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
 
   <%@page isELIgnored="false" %>
   <%@include file="header.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
 <head>
  <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
  <title>ListUsers-HotSpares</title>
 </head>
 <body>
 <br>
 <br>
 <br>
 
 <div class="container">
 <div >
<div class="row">


				
				<div class="col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2">
					<div class="panel panel-danger">
						<div class="panel-heading">
							<h3 class="thin text-center">User List</h3></div>
							
					
							<div class="panel-body">
							
								<center>


  <c:if test="${!empty signupList}">
   <table border="1" bgcolor="black" width="600px" class="table table-bordered table-hover">
    <tr
     style="background-color: teal; color: white; text-align: center;"
     height="40px">
     
     <td>User Id</td>
     <td>User First-Name</td>
   <td>User Last-name</td>
   <td>User Email-Id</td>
   
     
     <td>Delete</td>
    </tr>
   <c:forEach items="${signupList}" var="sp">
     <tr
      style="background-color: white; color: black; text-align: center;"
      height="30px">
      
      <td><c:out value="${sp.signupid}" />
      </td>
      <td><c:out value="${sp.first_name}" />
      </td>
      <td><c:out value="${sp.last_name}" />
      </td>
      <td><c:out value="${sp.email}" />
      </td>
      
      <td><a href="deleteUser?id=${sp.signupid}">Delete</a></td>
     </tr>
    </c:forEach>
   </table>
  </c:if>
  
</center>
								
							
						</div>
						
					</div>

				</div>
				
				

</div>
</div>
</div>
 
 </body>
</html>