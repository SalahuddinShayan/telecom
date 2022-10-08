<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html lang="en">
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<link href="${jstlCss}" rel="stylesheet" />
<head>
<meta charset="ISO-8859-1">
<title>Complain List</title>
</head>
<body>

<div class="starter-template">
   <h1>Complains:</h1>
   <table
    class="table table-striped table-hover table-condensed table-bordered">
    <tr>
     <th>Complaint Id</th>
     <th>Customer Id</th>
     <th>Customer Name</th>
     <th>Address</th>
     <th>PIN Code</th>
     <th>Phone No.</th>
     <th>Complain</th>
     <th>Current Status</th>
     <th>Engineer Id</th>
     <th>Feedback</th>
    </tr>
    <c:forEach var="complaint" items="${complaints}">
     <tr>
      <td>${complaint.coid}</td>
      <td>${complaint.cuid}</td>
      <td>${complaint.name}</td>
      <td>${complaint.address}</td>
      <td>${complaint.pin}</td>
      <td>${complaint.pno}</td>
      <td>${complaint.complain}</td>
      <td>${complaint.status}</td>
      <td>${complaint.eid}</td>
      <td>${complaint.feedback}</td>
     </tr>
    </c:forEach>
   </table>
  </div>





<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>

</body>
</html>