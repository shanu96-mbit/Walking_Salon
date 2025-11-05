<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">

<head>
        <link rel="stylesheet" href="css/bootstrap.min.css">
    <title>Walking Salon | Dashboard</title>
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
        <li><a href="home.jsp" class="active">Home</a></li>
        <li><a href="">My Profile</a></li>
        <li><a href="">Make Appointment</a></li>
        <li><a href="">Beauticians</a></li>
       
        <li style="float:right"><a class="log" href="login.jsp">LogOut</a></li>
    </ul>
    <div class="container" style="text-align: center">
            <label class="text">Dashboard</label><br>
    </div>
    
</body>

</html>