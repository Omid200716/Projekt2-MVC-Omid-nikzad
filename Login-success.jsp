<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="Bean.Login"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<style>
body {
	background-image: url("image/bg-color2.avif");
}
</style>

	<div>
		<p>The login is successfully</p>
		<%
		Login login = (Login) request.getAttribute("LOGIN");
		String username = login.getName();

		out.print(" Hello " + username);
		%>

	</div>

	<div>
		<h1>
			<%
			out.print("What is your favorite snack?");
			%>
		</h1>

	</div>
	
	

	<div>
		<h1>
			<%
			if (login.getAddText() != null) {
				out.print("My favorite snack is: " + login.getAddText());
			}
			%>
			<h1>
	</div>

	<%
	response.setHeader("cache-control", "no-store"); //Http 1.1
	//response.setHeader("pragma", "no-cache"); Http 1.0
	//response.setHeader("expires", "0");  proxies

	if (session.getAttribute("LOGIN") == null) {
		response.sendRedirect("../index.jsp");
	}
	%>

	<form action="ControllerServlet" method="get">
		<input type="text" name="addCookei1" placeholder="snack name..." /> <input
			type="submit" value="add" name="addCookei2" />
	</form>


	<form action="../<%=request.getContextPath()%>/logout" method ="get">
		<input type="submit" value="Logout">
	</form>

	<%@ include file="Footer.jsp"%>
</body>
</html>