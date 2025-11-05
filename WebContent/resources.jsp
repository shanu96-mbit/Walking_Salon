<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">

<head>
        <link rel="stylesheet" href="css/bootstrap.min.css">
    <title>Walking Salon | Resources</title>
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
    .para{
		  padding-top: 11px;
		  text-align: center;   
    }
</style>

<body>
    <ul>
        <li><a href="home.jsp">Home</a></li>
        <li><a href="feature.jsp">Features</a></li>
        <li><a href="pricing.jsp">Pricing</a></li>
        <li><a href="resources.jsp" class="active">Resources</a></li>
        <li><a href="industry.jsp">Industries</a></li>
        <li style="float:right"><a class="log" href="login.jsp">Login</a></li>
        <li style="float:right"><a class="log" href="registration.jsp">Sign Up</a></li>
    </ul>
    <div class="container" style="text-align: center">
            <label class="text">Resources</label><br>
            <p class = "para">THERE WILL BE USER MANUALS AND STUDY TUTORIALS VEDIOS WILL BE ADDED </p>
    </div>
    
</body>

</html>