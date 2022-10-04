<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html lang="en">
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<meta charset="ISO-8859-1">
<title>Engineer Home</title>
</head>
<body>

<form:form method="post" action="ecomplaintlist">    
        <table >
         <tr style="display:none;">  
          <td>Customer Id : </td>   
          <td><form:input path="eid"  value="${eid}" readonly="true"/></td>  
         </tr>
         <tr>    
          <td> </td>    
          <td><input type="submit" value="View complaints assigned to you." /></td>    
         </tr>    
        </table>    
       </form:form>
       
       <h3>Search the assigned complaint by customer id :</h3>
       
       <form:form method="post" action="eucomplaint">    
        <table >
         <tr style="display:none;">  
          <td>Pin : </td>
  
          <td><form:input path="eid"  value="${eid}" readonly="true"/></td> 
         </tr>
         <tr>
         <tr>  
          <td>Customer Id: </td>
          <td><form:input path="cuid"/></td>
         </tr>
         <tr>    
          <td> </td>    
          <td><input type="submit" class="btn btn-primary" value="Search" /></td>    
         </tr>    
        </table>    
       </form:form>
       
       
       
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>

</body>
</html>