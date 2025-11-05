<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Walking Salon | Login</title>
 <link rel="stylesheet" href="css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
 <link rel="stylesheet" href="css/bootstrap.css" rel="stylesheet" id="bootstrap-css">
 <link href="fontawesome/css/all.css" rel="stylesheet">
    <style>
        body {
            background-image: url("images/image3.jpg");
            background-repeat: no-repeat;
            background-position: center;
            background-size: cover;
            height: 657px;
        }

        .login-page {
            width: 360px;
            padding: 8% 0 0;
            margin: auto;
        }

        .form {
            position: relative;
            z-index: 1;
            background: #FFFFFF;
            height: 388px;
            max-width: 360px;
            margin: 0 auto 100px;
            padding: 45px;
            background-color: #ff69b4a1;
            box-shadow: 0 0 20px 0 rgba(0, 0, 0, 0.2), 0 5px 5px 0 rgba(0, 0, 0, 0.24);
        }

        .names {
            text-align: left;
        }

        .input {
            font-family: Oswald-Medium;
            font-size: 16px;
            line-height: 1.2;
            position: relative;
            display: block;
            width: 100%;
            height: 36px;
            background: #fff;
            border-radius: 31px;
            padding: 0 20px;
        }

        .button {
            border: 0;
            width: 96px;
            height: 40px;
            background: rgb(29, 185, 35);
            color: #fff;
            font-size: 14px;
            cursor: pointer;
        }

        a.text2 {
            font-size: 15px;
            text-align: center;
            color: rgb(255, 255, 255);
            line-height: 1.4;
            text-transform: uppercase;
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
    </style>
    <title> Walking Salon | Login </title>
</head>
</head>
<body>
	 <ul>
    	<li><a href="login.jsp" class="active">Login</a></li>
        <li style="float:right"><a class="log" href="registration.jsp">Sign Up</a></li>
        <li style="float:right"><a class="log" href="home.jsp">Home</a></li>
    </ul>
    <div class="container">
        <div class="row">
            <div class="login-page">            	
				<form action="Login" method="post" class="form">	
					<h4 class="card-title text-center mb-4 mt-1">Login</h4>	
					<div id="validate" style="color: #ea0a0a;"></div>			
					<div class="form-group">
			        	<div class="input-group">
							<div class="input-group-prepend">
						    	<span class="input-group-text"> <i class="fa fa-user"></i> </span>
						 	</div>
							<input type ="text" id ="username" name="username" class="form-control" placeholder="Username" >
						</div> 
					</div> 
					<div class="form-group">
						<div class="input-group">
							<div class="input-group-prepend">
							    <span class="input-group-text"> <i class="fa fa-lock"></i> </span>
							 </div>
					    <input type ="password" id ="password" name="password" class="form-control" placeholder="Password" >
					    </div>
					</div> 
					<br>
					<div class="form-group">
						<button type="submit" class="btn btn-primary btn-block" value="login" onclick="validate()" style="background-color: #1b1e21d9;border-color: #1b1e21c2;"> Login  </button> 
						<!-- <input type="submit" class="btn btn-primary btn-block" value="login" onclick="validate()" style="background-color: #1b1e21d9;border-color: #1b1e21c2;"> -->
					</div>
					<h6 style="text-align: center; padding-top: 8px;">Forget
						Password?</h6>
					<br>
				</form>
			</div>
        </div>        
	</div>


<script>
 //validation 
function validate(){
	var uname = document.getElementById("username").value;
	var password = document.getElementById("password").value;
	if(document.getElementById("username").value== "" && document.getElementById("password").value==""){
		//document.getElementById("validate").innerHTML = "Please enter username and password";
		alert("Please enter Username and Password");
	}else if(uname=="" && password !==""){
		//document.getElementById("validate").innerHTML = "Please enter username";
		alert("Please enter username");
	}else if(uname !=="" && password ==""){
		//document.getElementById("validate").innerHTML = "Please enter password";
		alert("Please enter password");
	}else if(document.getElementById("username").value !== "" && document.getElementById("password").value !==""){
		loginData();
	}
	
}
//get login details
function loginData() {
	var a = new XMLHttpRequest();
	a.onreadystatechange = function() {
		if (this.readyState === 4 && this.status === 200) {
			document.getElementById("validate").innerHTML =this.responseText;	
		}
	}
	a.open("POST", "Login?username="
			+ document.getElementById("username").value + "&password="
			+ document.getElementById("password").value,true);
	a.send();
	};


/* //retriewe
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


});*/



</script>
</body>
</html>