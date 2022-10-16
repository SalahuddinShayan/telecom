<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Customer Home</title>
</head>
<body>
<p style ="text-align: right"><a href ="home" >Logout</a></p>
<h1>Welcome, So How We Can Help You Today?</h1>  
<h2>If you have a complaint you want addressed, please, fill the following form </h2>
       <form:form method="post" action="registercomplaint">    
        <table >
         <tr style="display:none;">  
          <td>Customer Id : </td>   
          <td><form:input path="cuid"  value="${cuid}" readonly="true"/></td>  
         </tr> 
         <tr>    
          <td>Your Name: </td>   
          <td><form:input path="name"  /></td>  
         </tr>     
         <tr>    
          <td>Your Address</td>   
          <td><form:input path="address"  /></td>  
         </tr>
         <tr>    
          <td>PIN Code</td>   
          <td><form:input path="pin"  /></td>  
         </tr>
         <tr>    
          <td>Your Phone No.</td>   
          <td><form:input path="pno"  /></td>  
         </tr>
         <tr><td>What is Your Complain:</td>
         <td><form:select path="complain" size="2">
                        <form:option value="Cannot make a call, but receive a call" label="Cannot make a call, but receive a call" />
                        <form:option value="Can make calls, but cannot receive calls" label="Can make calls, but cannot receive calls" />
                        <form:option value="Neither make nor receive calls" label="Neither make nor receive calls" />
                    </form:select></td>
         </tr>
          <tr style="display:none;">    
          <td>Status</td>   
          <td><form:input path="status" value="RAISED" readonly="true" /></td>  
         </tr>         
         <tr>    
          <td> </td>    
          <td><input type="submit" value="Register complaint" /></td>    
         </tr>    
        </table>    
       </form:form>
       
       
       <form:form method="post" action="customercomplaint">    
        <table >
         <tr style="display:none;">  
          <td>Customer Id : </td>   
          <td><form:input path="cuid"  value="${cuid}" readonly="true"/></td>  
         </tr>
         <tr>    
          <td> </td>    
          <td><input type="submit" value="View Already filed complaints." /></td>    
         </tr>    
        </table>    
       </form:form>
       
       

 <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
<script>
let timeout;
console.log("Script")
setTimeout(alertFunc, 30000);

function alertFunc() {
	if (confirm("Session Timeout!")) {
		window.location.replace("http://localhost:8081/home");
		} else {
		window.location.replace("http://localhost:8081/home")
		}
}
</script>
</body>
</html>