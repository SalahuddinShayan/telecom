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
<title>List of All Complaints</title>
</head>
<body>
<h1>Welcome, Manager</h1>
<a href="complaintlist" class="btn btn-primary">List of All Complaints</a><br><br>


<form:form method="post" action="macomplaint">    
        <table >
         <tr style="display:none;">  
          <td>Pin : </td>
          <td><form:input path="pin"  value="${pin}" readonly="true"/></td> 
         </tr>
         <tr>    
          <td> </td>    
          <td><input type="submit" class="btn btn-primary" value="View Complaint in your area and assign them a Engineer " /></td>    
         </tr>    
        </table>    
       </form:form>




<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>

</body>
</html>