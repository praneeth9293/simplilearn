<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%@ page import="java.util.*" %>
<html>
<head>
	<style><%@include file="/WEB-INF/css/style2.css"%></style>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
 <link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Raleway">
	<style><%@include file="/WEB-INF/css/styles4.css"%></style>
	<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Raleway">
	<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Raleway">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	<title>Select Flight</title>
</head>
<body>
<form action="RegisterUser" method="post">
<br>
    <div class="container">

			<div class="w3-top">
			<div class="w3-bar w3-white w3-card" id="myNavbar">
				<a href="Homepage.jsp" class="w3-bar-item w3-button w3-wide">FlyAway</a>
			</div>
		</div>
<br></br>
    <!-- Header : End -->
    
        <!-- Card : Start -->

        <h1 class="heading">Search Results</h1>
        <div class="card">
            <div class="search-params">
                <div class="query">
                    <p class="bold-text">Source:</p>
                    <p class="bold-text">Destination:</p>
                    <p class="bold-text">Date of Travel:</p>
                    <p class="bold-text">No. of travellers: </p>
                </div>
                <div class="filter">
                    <p>India</p>
                    <p>Belgium</p>
                    <p>11-05-2022, Saturday</p>
                    <p>1</p>
                </div>
            </div>
        </div>

        <!-- Card : End -->

     <!-- Table : Start -->
        <table>
            <thead>
                <th>Flight</th>
                <th>Source</th>
                <th>Destination</th>
                <th>Date</th>
                <th>Ticket Price</th>
                <th>Select</th>
            </thead>
            <tbody>
                <tr>
                    <td>Indigo Airlines</td>
                    <td>Bangalore</td>
                    <td>Antwerp</td>
                    <td>11-05-2022</td>
                    <td>72000 INR</td>
                    <td><button class="book-btn">Book</button></td>
                </tr>
                <tr>
                    <td>Qatar Airways</td>
                    <td>Chennai</td>
                    <td>Brussels</td>
                    <td>11-05-2022</td>
                    <td>85000 INR</td>
                    <td><button class="book-btn">Book</button></td>
                </tr>
                <tr>
                    <td>Emirates</td>
                    <td>Hyderabad</td>
                    <td>Antwerp</td>
                    <td>11-05-2022</td>
                    <td>88000 INR</td>
                    <td><button class="book-btn">Book</button></td>
                </tr>
                <tr>
                    <td>Spice Jet</td>
                    <td>Mumbai</td>
                    <td>Brussels</td>
                    <td>11-05-2022</td>
                    <td>65000 INR</td>
                    <td><button class="book-btn">Book</button></td>
                </tr>
                <tr>
                    <td>Air Asia</td>
                    <td>New Delhi</td>
                    <td>Brussels</td>
                    <td>11-05-2022</td>
                    <td>70000 INR</td>
        			<td><button class="book-btn">Book</button></td>
                    </td>
                </tr>
            </tbody>
        </table>

        <!-- Table : End -->

    </div>
</body>
</html>
    