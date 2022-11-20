<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Logged out</title>
</head>
<body>
<%
session.invalidate();
%>
<a href="Homepage.jsp">Return to Homepage</a>
</body>
</html>