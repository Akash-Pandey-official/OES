<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Registration Form</title>
<link rel="stylesheet" href="Register.css">
<style>
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

<!-- ----------------------------------------------------------------------- -->
</head>

<body>
      <header>
    <nav>
      <ul>
        <li><a href="index.jsp">Home</a></li>
        <li><a href="aboutus.jsp" target="_blank">About Us</a></li>
        <li><a href="Contactus.jsp" target="_blank">Contact Us</a></li>
      </ul>
    </nav>
  </header>
	<!-- ------------------------------------------------------------------------------------------------------------------------ -->
	<div class="container">
		<h2>Registration Form</h2>
		<form action="Signup" method="post">
			<label for="name">Name:</label> 
			<input type="text" id="name" name="name" required> 
			
			<label for="email">Email:</label> 
			<input type="email" id="email" name="email" required> 
			
			<label for="password">Password:</label>
			<input type="password" id="password" name="password" required>
			
			<label for="phone">Phone:</label> 
			<input type="text" id="phone" name="phone" required>
			
			<label for="gender">Gender:</label> 
			<select id="gender" name="gender" required>
				<option value="gender">Gender</option>
				<option value="male">Male</option>
				<option value="female">Female</option>
				<option value="other">Other</option>
			</select> 
			
		 <label for="class">Class:</label> 
		 <input type="text" id="class" name="class" required> 
		 
		  <input type="submit" value="Sign Up">

		</form>
		
		<div class="already-registered">
			<p>
				Already have an account? <a href="login.jsp">Log in</a>
			</p>
		</div>
	</div>
	<!-- ----------------------------------------- ------------------------------------------------------------------------------- -->
	
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
	 <footer>
    <p>&copy; 2024 Online Exam System. All rights reserved.</p>
  </footer>

</body>
</html>
