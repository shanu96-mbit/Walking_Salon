<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">

<head>
        <link rel="stylesheet" href="css/bootstrap.min.css">
    <title>Walking Salon | Features</title>
</head>
<style>
    body {
        background-image: url("images/image3.jpg");
        background-repeat: no-repeat;
        background-position: center;
        background-size: cover;
        background-attachment: fixed;
        height: 640px;
    }
    .container{
        text-align: center;
        padding-top: 11px;
    }
    ul {
        list-style-type: none;
        margin: 0;
        padding: 0;
        overflow: hidden;
        background-color:#ff69b4a1;
    }

    li {
        float: left;
    }

    li a {
        display: block;
        color: rgb(255, 255, 255);
        text-align: center;
        padding: 14px 16px;
        text-decoration: none;
    }

    li a.active {
        background-color: #1b1e21d9;
    }
    li a.log{
        background-color:#1b1e21d9;
    }
    .text{
        color: #1b1e21a3;
	    text-align: center;
	    font-size: 60px;
	    border-color: white;
	    font-style: italic;
        
    }
    .para{
		  padding-top: 11px;
		  text-align: center;   
    }
    .h4{
    	 color: #1b1e21a3;
    	 padding-top: 11px;
		 text-align: center;
    }
</style>

<body>
    <ul>
   		<li><a href="home.jsp">Home</a></li>
        <li><a href="feature,jsp" class="active">Features</a></li>
        <li><a href="pricing.jsp">Pricing</a></li>
        <li><a href="resources.jsp">Resources</a></li>
        <li><a href="industry.jsp">Industries</a></li>
        <li style="float:right"><a class="log" href="login.jsp">Login</a></li>
        <li style="float:right"><a class="log" href="registration.jsp">Sign Up</a></li>
    </ul>
    <div class="container" style="text-align: center">
            <label class="text">Features</label><br>
            <p class = "para"><h4 class = "h4">User Profile</h4> Customer,Beautician and Renter have their own profiles.
            Beautician and Renter can maintain their own profiles while adding media files and etc, while customer can maintain their
            profile by adding new addresses and etc.
            </p>
             <p class = "para"><h4 class = "h4">Make an Appointment</h4>Customer can make appointment with the Beautician that they prefer 
             and beautician can make and appointment with the renter who is nearby.
            </p>
             <p class = "para"><h4 class = "h4">Maintain a Schedule</h4>Beautician and Renter can maintain their own work schedules.
            </p>
             <p class = "para"><h4 class = "h4">Reminders</h4> Can get reminders of loyalty points and of appointments.
            </p>
             <p class = "para"><h4 class = "h4">Ratings</h4> Customer and Beutician can rate beautician and renter.
            </p>
             <p class = "para"><h4 class = "h4">Loyalty Reward</h4>There will be a loyalty points added for all the services that you get.From that customers would get
             promotions with those points.
            </p>
             <p class = "para"><h4 class = "h4">Warnings (Pop Up Messages)</h4> Customer would get PopUp notifications if the services that they preferred are not good.
            </p>
             <p class = "para"><h4 class = "h4">Track location of nearby Renter</h4> Beautician can make an appointment with the nearest renter who is willing to rent.
            </p>
             <p class = "para"><h4 class = "h4">Equipment Hiring</h4> Renters can hire their equipment they prefer and can expect a income.
            </p>
             <p class = "para"><h4 class = "h4">Service Hiring</h4> Beautician hire their services.
            </p>
             things too. 
            </p>
    </div>
    
</body>

</html>