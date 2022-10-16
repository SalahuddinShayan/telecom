<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Home</title>
</head>
<body>
<h2>Welcome Admin! What do you want to do?</h2>
<p style ="text-align: right"><a href ="home" >Logout</a></p>
<a href="managerlist" style="margin-bottom:50px">View and Edit Manager List</a><br>
<a href="engineerlist" style="margin-bottom:50px">View and Edit Engineer List</a><br>
<a href="customerlist" style="margin-bottom:50px">View and Edit Customer List</a>

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