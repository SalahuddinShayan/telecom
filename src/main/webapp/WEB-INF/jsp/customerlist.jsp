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
<title>View and edit Customer List</title>
</head>
<body>
<div class="starter-template">
   <h1>Customers:</h1>
   <table
    class="table table-striped table-hover table-condensed table-bordered">
    <tr>
     <th style ="margin-right: 50px">Customer Id</th>
     <th>Customer Name</th>
     <th>Password</th>
     <th>Delete</th>
    </tr>
    <c:forEach var="customer" items="${customers}">
     <tr>
      <td>${customer.cuid}</td>
      <td>${customer.cuname}</td>
      <td>${customer.pword}</td>
      <td><a href="deletecustomer/${customer.cuid}">Delete</a></td>  
     </tr>
    </c:forEach>
   </table>
  </div>
  
  <h1>Add a new Customer or Update an existing one</h1>  
       <form:form method="post" action="savecustomer">    
        <table >
         <tr>    
          <td>Customer Id : </td>   
          <td><form:input path="cuid"  /></td>  
         </tr> 
         <tr>    
          <td>Customer Name: </td>   
          <td><form:input path="cuname"  /></td>  
         </tr>     
         <tr>    
          <td>Customer</td>   
          <td><form:input path="pword"  /></td>  
         </tr>          
         <tr>    
          <td> </td>    
          <td><input type="submit" value="Add/Update Customer" /></td>    
         </tr>    
        </table>    
       </form:form>

 <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>

</body>
</html>