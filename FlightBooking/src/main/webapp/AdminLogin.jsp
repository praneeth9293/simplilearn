<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
<!DOCTYPE html>
<html lang="en">
<head>
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
<title>Login as Admin</title>

</head>
<body>
<input type="hidden" id="status" value="<%= request.getAttribute("status") %>">
	<div class="main">
	
			<div class="w3-top">
			<div class="w3-bar w3-white w3-card" id="myNavbar">
				<a href="Homepage.jsp" class="w3-bar-item w3-button w3-wide">FlyAway</a>
			</div>
		</div>
<br></br>
		<!-- Sign in  Form -->
		<section class="sign-in">
			<div class="container">
	
					<div class="signin-form">
						<h2 class="form-title">Sign in as Admin</h2>
						<form method="post" action="AdminLogin" class="register-form" id="login-form">
							<div class="form-group">
								<label for="username"><i
									class="zmdi zmdi-account material-icons-name"></i></label> <input
									type="text" name="username" id="username"
									placeholder="Username" />
							</div>
							<div class="form-group">
								<label for="password"><i class="zmdi zmdi-lock"></i></label> <input
									type="password" name="password" id="password"
									placeholder="Password" />
							</div>
							<div class="form-group">
								<input type="checkbox" name="remember-me" id="remember-me"
									class="agree-term" /> 
									<label for="remember-me"
									class="label-agree-term"><span><span></span></span>Remember me</label>
							</div>
							<div class="form-group form-button">
								<input type="submit" name="signin" id="signin"
									class="form-submit" value="Log in" />
							</div>
						</form>
					</div>
				</div>
			</div>
		</section>
		
		<section class="sign-in">
			<div class="container">	
					<div class="forgot-password">
						<h2 >Forgot Password ?</h2>
						<a href="Changepswd.jsp">Click Here</a>
						<form method="post" action="ChangePassword" class="register-form" id="login-form">				
		</section>

	<!-- JS -->
	<script src="vendor/jquery/jquery.min.js"></script>
	<script src="js/main.js"></script>
		<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
	<link rel="stylesheet" href="alert/dist/sweetalert.css">
<script type="text/javascript">

var status =document.getElementById("status").value;
if(status =="failed")
	{
	swal("Sorry","Incorrect Credentials","failed");
	}
</script>
</body>
</html>