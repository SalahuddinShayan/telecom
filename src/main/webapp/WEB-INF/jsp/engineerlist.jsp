<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html lang="en">
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<c:url value="/css/main.css" var="jstlCss" />
<link href="${jstlCss}" rel="stylesheet" />
<head>
<meta charset="ISO-8859-1">
<title>View and edit Manager List</title>
</head>
<body>
<div class="starter-template">
   <h1>Engineers:</h1>
   <table class="table table-striped table-hover table-condensed table-bordered">
    <tr>
     <th>Engineer Id</th>
     <th>Engineer Name</th>
     <th>Password</th>
     <th>Delete</th>
    </tr>
    <c:forEach var="engineer" items="${engineers}">
     <tr>
      <td>${engineer.eid}</td>
      <td>${engineer.ename}</td>
      <td>${engineer.pword}</td>
      <td><a href="deletemanager/${engineer.eid}">Delete</a></td>  
     </tr>
    </c:forEach>
   </table>
  </div>
  
  <h1>Add a new Engineer or Update an existing one</h1>  
       <form:form method="post" action="saveengineer">    
        <table >
         <tr>    
          <td>Engineer Id : </td>   
          <td><form:input path="eid"  /></td>  
         </tr> 
         <tr>    
          <td>Engineer Name: </td>   
          <td><form:input path="ename"  /></td>  
         </tr>     
         <tr>    
          <td>Password</td>   
          <td><form:input path="pword"  /></td>  
         </tr>          
         <tr>    
          <td> </td>    
          <td><input type="submit" value="Add/Update Engineer" /></td>    
         </tr>    
        </table>    
       </form:form>

 <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>

</body>
</html>