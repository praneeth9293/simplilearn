<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Raleway">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<title>Admin Portal</title>

</head>
</head>
<body>
    <!-- Header : Start -->

  	<div class="w3-top">
			<div class="w3-bar w3-white w3-card" id="myNavbar">
				<div class="w3-bar w3-white w3-card" id="myNavbar">		
        				<a href="/Homepage.jsp" class="w3-bar-item w3-button w3-wide">FlyAway</a>
				<div class="w3-center w3-hide-small">
						<%	
							String name1 = (String)session.getAttribute("name");
							%>
							<h4>Welcome <%out.println(name1); %></h4>	       
     				 <div class="w3-right w3-hide-small">
				  		<a href="AdminLogout.jsp"> <button class="btn btn-logout">Logout</button></a>
					</div>
    			</div>
		</div>
	</div>

    <!-- Header : End -->


    <!-- Configuration : Start -->

    <div class="card configuration">
        <h2>Configuration</h2>
        
        <label for="places">Configure places</label>
        <select name="places" id="places">
          <option value="india">India</option>
          <option value="belgium">Belgium</option>
          <option value="hawaii">Hawaii</option>
          <option value="sweden">Sweden</option>
          <option value="newzealand">New Zealand</option>
        </select> 

        <label for="airlines">Configure Airlines</label>
        <select name="airlines" id="airlines">
          <option value="indigo">Indigo Airlines</option>
          <option value="qatar">Qatar Airways</option>
          <option value="emirates">Emirates</option>
          <option value="spicejet">Spice Jet</option>
          <option value="airasia">Air Asia</option>
        </select> 

        <button class="btn-admin">Submit</button>


    </div>

    <!-- Configuration : Start -->

    </div>
</body>
</html>