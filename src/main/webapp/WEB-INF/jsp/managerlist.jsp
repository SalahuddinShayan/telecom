<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html lang="en">
<head>
<link rel="stylesheet" type="text/css" href="webjars/bootstrap/3.3.7/css/bootstrap.min.css" />
<c:url value="/css/main.css" var="jstlCss" />
<link href="${jstlCss}" rel="stylesheet" />
<head>
<meta charset="ISO-8859-1">
<title>View and edit Manager List</title>
</head>
<body>
<div class="starter-template">
   <h1>Managers:</h1>
   <table
    class="table table-striped table-hover table-condensed table-bordered">
    <tr>
     <th style ="margin-right: 50px">Manager Id</th>
     <th>Manager Name</th>
     <th>Password</th>
     <th>Delete</th>
    </tr>
    <c:forEach var="manager" items="${managers}">
     <tr>
      <td>${manager.mid}</td>
      <td>${manager.mname}</td>
      <td>${manager.pword}</td>
      <td><a href="deletemanager/${manager.mid}">Delete</a></td>  
     </tr>
    </c:forEach>
   </table>
  </div>
  
  <h1>Add a new Manager or Update an existing one</h1>  
       <form:form method="post" action="savemanager">    
        <table >
         <tr>    
          <td>Manager Id : </td>   
          <td><form:input path="mid"  /></td>  
         </tr> 
         <tr>    
          <td>Manager Name: </td>   
          <td><form:input path="mname"  /></td>  
         </tr>     
         <tr>    
          <td>Password</td>   
          <td><form:input path="pword"  /></td>  
         </tr>          
         <tr>    
          <td> </td>    
          <td><input type="submit" value="Add/Update Manager" /></td>    
         </tr>    
        </table>    
       </form:form>

 <script type="text/javascript"src="webjars/bootstrap/3.3.7/js/bootstrap.min.js"></script>

</body>
</html>