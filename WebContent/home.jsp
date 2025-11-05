<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">

<head>
        <link rel="stylesheet" href="css/bootstrap.min.css">
    <title>Walking Salon | Home</title>
    <script type="text/javascript"  src="js/jquery-3.4.1.js"></script>
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
        background-color:#1b1e21d9;
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
    .promotion{
    	margin-bottom: 6px !IMPORTANT;
        position: relative;
	    z-index: 1;
	    background: #FFFFFF;
	    height: auto;
	    width: 440px;
	    margin: 0 auto 100px;
	    padding: 23px;
	    background-color: #ff69b4a1;
	    border-radius: 9px;
	    box-shadow: 
    }
</style>

<body>
    <ul>
        <li><a href="home.jsp" class="active">Home</a></li>
        <li><a href="feature.jsp">Features</a></li>
        <li><a href="pricing.jsp">Pricing</a></li>
        <li><a href="resources.jsp">Resources</a></li>
        <li><a href="industry.jsp">Industries</a></li>
        <li style="float:right"><a class="log" href="login.jsp">Login</a></li>
        <li style="float:right"><a class="log" href="registration.jsp">Sign Up</a></li>
    </ul>
    <div class="container" style="text-align: center">
            <label class="text">Walking Salon </label><br>
            <p class = "para">Walking Salon is a Good Platform for Beauticians who like to 
            be independant as well as for the renters who are willing to rent their equipment which not utilize
            and for the customer who are willing to make and appointment with the beautician that they prefer
            </p>
             <p class = "para">The main aim of this walking salon is to make and set up a product
              framework that assists with giving an answer for the beauticians who doesn't 
              possess a salon and for the renters who are happy to rent their salon types 
              of gear which are not completely used and For the clients who are eager to 
              get an incredible service. So as to make the entire procedure direct a task 
              plan has been prepared. It will talk about the attainability of the project, 
              just as the different risks included. The project plan will likewise look at 
              the customer's necessities and the highlights that should be executed. 
            </p>
            
    </div>
    <fieldset value = "promotions">
    <div id="promotion"></div>
    </fieldset>
    
</body>
<script type="text/javascript">
//retriewe
$(document).ready(function(){
	
	var a = new XMLHttpRequest();
	a.onreadystatechange = function() {
		if (this.readyState == 4 && this.status == 200) {
			$('#promotion').html("");
			var data = JSON.parse(this.responseText);
			for (var i = 0; i < data.length; i++) {
				var tem;
				tem = '<p id=' +data[i][1] + ' class="promotion" >'
						+data[i][0]  +'</p>';
				$('#promotion').append(tem);
			}
		}
	};
	a.open("POST", "HomeDashboard", true);
	a.send();



});
</script>

</html>