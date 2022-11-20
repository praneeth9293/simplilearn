<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>

<!DOCTYPE html>
<html>
<head>
<title>FlyAway</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Raleway">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
body, h1, h2, h3, h4, h5, h6 {
	font-family: "Raleway", sans-serif
}

body, html {
	height: 100%;
	line-height: 1.8;
}

.bgimg-1 {
	background-position: center;
	background-size: cover;
	background-image:
		url("src/main/webapp/images/book-flights-background.jpg");
	min-height: 100%;
}

.w3-bar .w3-button {
	padding: 16px;
}

.footer {
	position: fixed;
	left: 0;
	bottom: 0;
	width: 100%;
	background-color: #f5f5f5;
	color: #3b3b3b;
	text-align: center;
}
</style>
</head>

<body>
	<form action="BookFlight" method="post">
		<div class="w3-top">
			<div class="w3-bar w3-white w3-card" id="myNavbar">
				<a href="Homepage.jsp" class="w3-bar-item w3-button w3-wide">FlyAway</a>
				<div class="w3-right w3-hide-small">
					<a href="AdminLogin.jsp" class="w3-bar-item w3-button">Admin Corner</a>
				</div>
			</div>
		</div>
		<h2 class="form-title">Book a Flight</h2>
		
		<table style="with: 100%">
		
	<%! String driverName = "com.mysql.jdbc.Driver";%>
		<%!String url = "jdbc:mysql://localhost:3306/flyaway";%>
		<%!String user = "root";%>
		<%!String psw = "Stark@2022";%>
		<form action="#">
		<%
		Connection con = null;
		PreparedStatement ps = null;
		PreparedStatement ps2 = null;
		try
		{
		Class.forName(driverName);
		con = DriverManager.getConnection(url,user,psw);
		String sql = "SELECT * FROM airports";
		ps = con.prepareStatement(sql);
		ResultSet rs = ps.executeQuery();
		%>
		<td>From:</td>
		<td><select name="from">
					<%
					while(rs.next())
					{
					String airportname_from = rs.getString("airport_name"); 
					%>
					<option value="<%=airportname_from %>"><%=airportname_from %></option>
					<%
					}
					%>
			</select>
			<%
			ps2 = con.prepareStatement(sql);
			ResultSet rs2 = ps2.executeQuery();
			%>
		<tr>	
		<td>To:</td>
		<td><select name="to">
					<%
					while(rs2.next())
					{
					String airportname_to = rs2.getString("airport_name"); 
					%>
					<option value="<%=airportname_to %>"><%=airportname_to %></option>
					<%
					}
					%>
			</select>
			</td>
		<tr>		
				<%
				}
				catch(SQLException sqe)
				{ 
				out.println(sqe);
				}
			%>			
			<tr>
				<td>Select Journey Date:</td>
				<td>
					<div class="form-group">
						<input type="date" class="form-control" id="date" name="date"
							placeholder="Travel Date..">
					</div>
				</td>
			</tr>
			<tr>
				<td>No. of Travellers</td>
				<td>
			 	<input type=number name=travellers id=travellers/>
				</select>
				</td>
			</tr>
			<tr>
			</tr>
			<tr>
				<td>Ticket Class</td>
				<td><select name="to">
						<option value="">Select</option>
						<option value="1">Business</option>
						<option value="2">Economy</option>
				</select></td>
			</tr>
			<tr>
				<td><input type="submit" value="Submit" /></td>
				<td><input type="reset" value="Reset" />
				</form></td>
			</tr>
</body>
</html>