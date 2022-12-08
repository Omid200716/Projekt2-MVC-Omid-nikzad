<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%@ include file="View/Header.jsp" %> 

<style>
body {background-image: url("image/bg-color.avif");
}</style>

<form action="ControllerServlet" method="post">
Enter username:<input type="text" name="user" placeholder="user..."><br>
Enter password:<input type="password" name="pass" placeholder="pass..."> <br>
<input type="submit" value="Login">
</form>

<%@ include file="View/Footer.jsp" %> 
</body>
</html>