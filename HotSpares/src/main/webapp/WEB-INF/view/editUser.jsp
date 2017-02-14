<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
 
   <%@page isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
 <head>
  <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
  <title>UserDetails-HotSpares</title>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
 </head>
 <body>
  <h2>Update User Details</h2>
  <form:form method="POST" action="./updateUser" commandName="signupForm">
      <table>
       <tr>
           <td><form:label path="signupid">User ID:</form:label></td>
           <td><form:input path="signupid" value="${user.signupid}" readonly="true"/></td>
       </tr>
       <tr>
           <td><form:label path="first_name">First Name:</form:label></td>
           <td><form:input path="first_name" value="${user.sirst_name}"/></td>
       </tr>
       <tr>
           <td><form:label path="last_name">Last Name:</form:label></td>
           <td><form:input path="last_name" value="${user.last_name}" /></td>
       </tr>
       <tr>
           <td><form:label path="email">Email ID:</form:label></td>
           <td><form:input path="email" value="${user.email}" readonly="true"/></td>
       </tr>
       
       
          <tr>
         <td colspan="2"><input type="submit" value="Update"/></td>
        </tr>
   </table> 
 </form:form>
 
 </body>
</html>