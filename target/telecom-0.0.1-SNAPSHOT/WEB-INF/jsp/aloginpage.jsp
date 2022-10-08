<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 

<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<h1>Please, Give required Info</h1>  
       <form:form method="post" action="alogin">    
        <table >
         
         <tr>    
          <td>Login Id : </td>   
          <td><form:input path="login"  /></td>  
         </tr>
         <tr>    
          <td>Password : </td>   
          <td><form:input path="password"  /></td>  
         </tr>          
         <tr>    
          <td> </td>    
          <td><input type="submit" value="Login" /></td>    
         </tr>    
        </table>    
       </form:form> 


</body>
</html>