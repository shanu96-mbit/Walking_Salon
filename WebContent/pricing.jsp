<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">

<head>
        <link rel="stylesheet" href="css/bootstrap.min.css">
    <title>Walking Salon |Pricing</title>
</head>
<style>
    body {
        background-image: url("images/image3.jpg");
        background-repeat: no-repeat;
        background-position: center;
        background-size: cover;
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
    .text1{
        color: #1b1e21a3;
	    text-align: center;
	    font-size: 40px;
	    border-color: white;
	    font-style: italic;
        
    }
    .para{
		  padding-top: 11px;
		  text-align: center;   
    }
    .pack{
    	   border: 0;
            width: 96px;
            height: 40px;
            background: #1b1e21d9;
            color: #fff;
            font-size: 13px;
            cursor: pointer;
            border-radius: 31px;
    }
    .para1{
    color: #e21616;
   font-weight: bold; 
    
    }
</style>

<body>
    <ul>
        <li><a href="home.jsp">Home</a></li>
        <li><a href="feature.jsp">Features</a></li>
        <li><a href="pricing.jsp" class="active">Pricing</a></li>
        <li><a href="resources.jsp">Resources</a></li>
        <li><a href="industry.jsp">Industries</a></li>
        <li style="float:right"><a class="log" href="login.jsp">Login</a></li>
        <li style="float:right"><a class="log" href="registration.jsp">Sign Up</a></li>
    </ul>
    <div class="container" style="text-align: center">
    <label class="text">Pricing</label><br>
    </div>
    <div class="container" style="text-align: center">
    <table>
    <tr>
    <td>
    <label class="text1">Annual Pack</label><br>
            <p class = "para">This Package is valid all the features that are in this system.
            	Can maintain user profile with media files.
				,Can make appointment.
				,Beautician and Renter can maintain a schedule.
				,Send Reminders
				,Ratings	
				,Loyalty Rewards
				,Warnings (Pop Up messages)
				,Track location of nearby solons
				,Equipment Hiring 
				,Service Hiring
				,bility to select preferred beautician 
				,Can Make immediate appointment
				,Filter Options.  </p>
			<p class = "para1">$55.99</p>
			<button class ="pack">Buy Now</button>
    </td>
    <td>
    <label class="text1">Monthly Pack</label><br>
            <p class = "para">This Package is valid all the features that are in this system.
            	Can maintain user profile with media files.
				,Can make appointment.
				,Beautician and Renter can maintain a schedule.
				,Send Reminders
				,Ratings	
				,Loyalty Rewards
				,Warnings (Pop Up messages)
				,Track location of nearby solons
				,Equipment Hiring 
				,Service Hiring
				,bility to select preferred beautician 
				,Can Make immediate appointment
				,Filter Options.</p>
			<p class = "para1">$20.99</p>
			<button class ="pack">Buy Now</button>
    </td>
    <td>
    <label class="text1">Free Trial</label><br>
            <p class = "para">This Package is valid all the features that are in this system.
            	Can maintain user profile with media files.
				,Can make appointment.
				,Beautician and Renter can maintain a schedule.
				,Send Reminders
				,Ratings	
				,Loyalty Rewards
				,Warnings (Pop Up messages)
				,Track location of nearby solons
				,Equipment Hiring 
				,Service Hiring
				,bility to select preferred beautician 
				,Can Make immediate appointment
				,Filter Options.</p>
				<p class = "para1">Only Valid For 7 Days</p>
				<button class ="pack">Start Free Trail</button>
    </td>
    </tr>
    
    </table>
            
    </div>
    
</body>

</html>