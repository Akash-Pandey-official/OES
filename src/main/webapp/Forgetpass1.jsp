<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Forgot Password</title>
<link rel="stylesheet" href="Forgetpass1.css">

<style>
  body{
     overflow-x:hidden;
  }
  
.toast {
	background: #fff;
	position: absolute;
	top: 75px;
	right: 30px;
	width: 200px;
	height: fit-content;
	border-radius: 6px;
	border-left: 8px solid #40f467;
	transform: translateX(calc(100% + 30px));
	transition: all 0.5s;
	padding: 0px 20px;
}

.active-toast {
	transform: translateX(0);
}

.heading {
	color: rgb(0, 0, 0);
	font-size: 17px;
	margin-top: 10px;
}

.para {
	color: rgb(0, 0, 0);
	font-size: 14px;
	margin: 10px 0px;
}

.toast .progress {
	display: inline-block;
	position: absolute;
	bottom: 0;
	left: 0;
	background: #40f467;
	border-radius: 6px;
	width: 98%;
	height: 2px;
}

.active-progress {
	animation: progress 5.2s linear;
}

@
keyframes progress { 0% {
	width: 98%;
}
100
%
{
width
:
0%;
}
}
</style>
</head>
<body>
	<div class="container">
		<form class="forgot-password-form" action="forget" method="POST">
			<h2>Forgot Password</h2>
			<p>Please enter your email address below to reset your password.</p>
			<input type="email" name="email" placeholder="Email" required>
			<button type="submit">Send OTP</button>
		</form>
	</div>

	<%
	String message = (String) session.getAttribute("msg");
	String status = (String) session.getAttribute("status");
	if (status == "true") {
	%>

	<div class="toast">
		<h4 class="heading">SUCCESS</h4>
		<p class="para"><%=message%></p>
		<span class="progress"></span>
	</div>

	<script>

            var toast = document.querySelector(".toast");
   
            var progress = document.querySelector(".progress");

 
            	
                setTimeout(() => { 
                    toast.classList.add("active-toast");
                    progress.classList.add("active-progress");
            	 }, 500) 

                setTimeout(() => {
                    toast.classList.remove("active-toast");
                }, 4500)

                setTimeout(() => {
                    progress.classList.remove("active-progress");
                }, 4500)      
                
        </script>

	<%
	session.removeAttribute("msg");
	session.removeAttribute("status");
	}
	if (status == "false") {
	%>

	<div class="toast" style="border-left: 8px solid #f44040;">
		<h4 class="heading">FAILED</h4>
		<p class="para"><%=message%></p>
		<span class="progress" style="background: #f44040;"></span>
	</div>

	<script>

            var toast = document.querySelector(".toast");
   
            var progress = document.querySelector(".progress");

 
            	
                setTimeout(() => { 
                    toast.classList.add("active-toast");
                    progress.classList.add("active-progress");
            	 }, 500) 

                setTimeout(() => {
                    toast.classList.remove("active-toast");
                }, 4500)

                setTimeout(() => {
                    progress.classList.remove("active-progress");
                }, 4500)      
                
        </script>
	<%
	session.removeAttribute("msg");
	session.removeAttribute("status");
	}
	%>


</body>
</html>
