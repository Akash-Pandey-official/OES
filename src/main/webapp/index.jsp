<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Online Exam System</title>
   <link rel="stylesheet"  href="index.css">
   <!-- -------------------------------------------------------------------------------------------------------------------------------------------- -->
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
   <!-- -------------------------------------------------------------------------------------------------------------------------------------------- -->
 
</head>
<body>  
  <video autoplay muted loop id="myVideo">
    <source src="video/home.mp4" type="video/mp4">
  </video>
  <header>
    <nav>
      <ul>
        <li><a href="#">Home</a></li>
        <li><a href="aboutus.jsp" target="_blank">About Us</a></li>
        <li><a href="Contactus.jsp" target="_blank">Contact Us</a></li>
      </ul>
    </nav>
  </header>
  
  <section class="hero">
    <h2>Welcome! To Online Exam System</h2>
    <p>Join thousands of students who are already benefiting from our online exam platform. Take exams anytime, anywhere.</p>
    <a href="Register.jsp" class="btn btn-signup">Student SignUp</a>
    <a href="login.jsp" class="btn btn-signin">Student SignIn</a>
    <a href="Admin.jsp" class="btn btn-teach-login">Teacher Login</a>
  </section>

  <footer>
    <p>&copy; 2024 Online Exam System. All rights reserved.</p>
  </footer>
   <!-- -------------------------------------------------------------------------------------------------------------------------------------------- -->
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
   <!-- -------------------------------------------------------------------------------------------------------------------------------------------- -->
</body>
</html>
    