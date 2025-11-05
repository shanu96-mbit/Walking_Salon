<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<head>
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <style>
        body {
            background-image: url("images/image3.jpg");
            background-repeat: no-repeat;
            background-position: center;
            background-size: cover;
            background-attachment: fixed;
            height: 657px;
        }

        .regis-page {
            width: 420px;
            padding: 2% 0 0;
            margin: auto;
        }

        .form {
            position: relative;
            z-index: 1;
            background: #FFFFFF;
            height: 830px;
            max-width: 420px;
            margin: 0 auto;
            padding: 45px;
            background-color: #ff69b4a1;
            box-shadow: 0 0 20px 0 rgba(0, 0, 0, 0.2), 0 5px 5px 0 rgba(0, 0, 0, 0.24);
        }

        .names {
            text-align: left;
            font-size: 10px;
        }

        .input {
            margin: 0;
		    font-family: sans-serif;
		    font-size: 10px;
		    line-height: 1.2;
		    position: relative;
		    display: block;
		    width:100%;
		    height: 33px;
		    background: #fff;
		    border-radius: 31px;
		    padding: 0 20px;
        }

        .button {
            border: 0;
            width: 96px;
            height: 40px;
            background: #1b1e21d9;
            color: #fff;
            font-size: 15px;
            cursor: pointer;
            border-radius: 31px;
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
        background-color:#1b1e21d9;
    	}
    	li a.log{
        background-color:#1b1e21d9;
    	}
    </style>
    <title> Walking Salon | Registration </title>
</head>
<body>
    <ul>
    	<li><a href="registration.jsp" class="active">Registration</a></li>
        <li style="float:right"><a class="log" href="login.jsp">Login</a></li>
        <li style="float:right"><a class="log" href="home.jsp">Home</a></li>
    </ul>
    <div class="container">
        <div class="row">
            <div class="regis-page" id="regi">
                <form class="form">
                    <h3 style="text-align: center"> Walking Salon | Registration</h3><br>
                   
                    <lable class="names">First Name</lable><font style ="color:red;">*</font><br>                  
                    <input class="input" type="text" name="fname" id ="fname" placeholder="Enter First Name">
                    <lable class="names">Last Name</lable><br>
                    <input class="input" type="text" name="lname" id ="lname" placeholder="Enter Last Name">
                    <lable class="names">Address Line 1</lable><br>
                    <input class="input" type="text" name="address1" id ="address1" placeholder="Enter Address"> 
                    <lable class="names">Address Line 2</lable><br>
                    <input class="input" type="text" name="address2" id ="address2" placeholder="Enter Address">                 
                    <lable class="names">Address Line 3</lable><br>
                    <input class="input" type="text" name="address3" id ="address3" placeholder="Enter Address">
                    <lable class="names">City</lable><br>
                    <input class="input" type="text" name="city" id ="city" placeholder="Enter City">
                    <lable class="names">Zip Code</lable><font style ="color:red;">*</font><br>
                    <input class="input" type="text" name="zipcode" id ="zipcode" placeholder="Enter Zip Code">
                    <lable class="names">Email</lable><font style ="color:red;">*</font><br>
                    <input class="input" type="email" name="email" id ="email" placeholder="Enter Email">
                    <lable class="names">Contact Number</lable><br>
                    <input class="input" type="text" name="tele" id ="tele" placeholder="Enter Contact Number">
                    <lable class="names">User Name</lable><font style ="color:red;">*</font><br>
                    <input class="input" type="text" name="username" id ="username" placeholder="Enter Username">
                    <lable class="names">Password</lable><font style ="color:red;">*</font><br>
                    <input class="input" type="password" name="password1" id ="password1">
                    <lable class="names">Confirm Password</lable><font style ="color:red;">*</font><br>
                    <input class="input" type="password" name="password2" id ="password2"><br>
                   <div>
                   <input type="radio" name="customer" id="customer">Customer &nbsp;&nbsp;
				   <input type="radio" name="beautician" id="beautician">Beautician &nbsp;&nbsp;
                   <input type="radio" name="renter" id="renter">Renter
                   </div>
                   <br>
                   <div style = "align:center">
                    <button type="submit" class="button" onclick = "validate()" value ="submit">Sign Up</button><br>
                   </div>
                   
                </form>
            </div>
        </div>
        <script type="text/javascript">
//create

function create(){
	if(document.getElementById('customer').checked) {
		var a = new XMLHttpRequest();
		a.onreadystatechange = function() {
			if (this.readyState == 4 && this.state == 200) {
				/* document.getElementById("regi").innerHTML = this.responseText; */
			}
		};
		a.open("POST", "Registration?method=1&fname="
				+ document.getElementById("fname").value + "&lname="
				+ document.getElementById("lname").value + "&address1="
				+ document.getElementById("address1").value+ "&address2="
				+ document.getElementById("address2").value+ "&address3="
				+ document.getElementById("address3").value+ "&city="
				+ document.getElementById("city").value+"&zipcode="
				+ document.getElementById("zipcode").value+ "&email="
				+ document.getElementById("email").value+ "&tele="
				+ document.getElementById("tele").value+ "&username="
				+ document.getElementById("username").value+ "&password1="
				+ document.getElementById("password1").value,true);
		a.send();
		window.location.href = "login.jsp";

    }
	<%-- else if(document.getElementById('beautician').checked) { 
		<%String beauticianURL = "welcome.jsp";
        response.sendRedirect(beauticianURL);%> 
        
    }  --%><%-- else if(document.getElementById('renter').checked) { 
		<%String renterURL = "welcome.jsp";
        response.sendRedirect(renterURL);%>
    } --%>else { 
        document.getElementById("disp").innerHTML 
            = "Select the registration type"; 
    } 
}

function validate(){	

	if( document.getElementById('password1').value !==document.getElementById('password2').value){
		 alert("Re Enter Password");
	}
	else{
		create();
		alert("Succefully Registered");
	}
}

</script>

</body>

</html>