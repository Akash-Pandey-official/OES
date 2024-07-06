
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	
	  <%@ page import="java.sql.*"%>
<%@ page import="com.register.ConnectionProvider"%>

<%
if (session.getAttribute("admin") == null) {
	response.sendRedirect("Admin.jsp");
}

%>


<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Set Questions</title>
<link rel="stylesheet" href="Register.css">
<style>
body{
 margin: 0;
  padding: 0;
}
#que::placeholder {
	color: red;
	opacity: 1; /* Firefox */
}

#que {
	color: red;
}

#opt::placeholder {
	color: green;
	opacity: 1; /* Firefox */
}

#opt {
	color: green;
}

.container {
	max-width: 800px;
	margin: 20px auto;
	background-color: #fff;
	padding: 20px;
	border-radius: 8px;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.8);
}

hr {
	font-weight: bold;
}

#exam {
	font-weight: bold;
	background-color: lightyellow;
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
100 %
{
width:0 %; }
}
header {
  background-color: #333;
  color: #fff;
  padding: 20px;
  display: flex;
  justify-content: space-between;
  align-items: center;
  height:30px;'
  
}

header h1 {
  font-size: 24px;
}

nav ul {
  list-style-type: none;
  margin: 0;
  padding: 0;
}

nav ul li {
  display: inline;
  margin-left: 20px;
}

nav ul li a {
  text-decoration: none;
  color: #fff;
}

nav ul li a:hover {
  text-decoration: underline;
}

</style>
</head>
<body>
	<header>
		<h1>Teacher Dashboard</h1>
		<nav>
			<ul>
				<li><a href="DashTec1.jsp">Back</a></li>
				 
			</ul>
		</nav>
	</header>
	
	<div class="container">
		<h2>Conduct Exam</h2>
		<form action="setque" method="post">

			<select id="exam" name="examname" required>
				<option value="">Select Exam</option>
				<option value="C">C</option>
				<option value="cpp">C++</option>
				<option value="Java">Java</option>
				<option value="HTML">HTML</option>
				<option value="CSS">CSS</option>
				<option value="JS">JavaScript</option>
			</select>
			
			 <input type="text" id="que" name="q1" placeholder="Question -1" required> 
			 
				<input type="text" id="opt" name="o11" placeholder="Option-1" required> 
				<input type="text" id="opt" name="o12" placeholder="Option-2" required> 
				<input type="text" id="opt" name="o13" placeholder="Option-3" required>
			    <input type="text" id="opt" name="o14" placeholder="Option-4" required>
			    
			<hr style="height: 2px; border-width: 0; color: gray; background-color: gray">
			
			<input type="text" id="que" name="q2" placeholder="Question -2" required> 
			 
				<input type="text" id="opt" name="o21" placeholder="Option-1" required> 
				<input type="text" id="opt" name="o22" placeholder="Option-2" required> 
				<input type="text" id="opt" name="o23" placeholder="Option-3" required>
			    <input type="text" id="opt" name="o24" placeholder="Option-4" required>
			    
			<hr style="height: 2px; border-width: 0; color: gray; background-color: gray">
			
				<input type="text" id="que" name="q3" placeholder="Question -3" required> 
			 
				<input type="text" id="opt" name="o31" placeholder="Option-1" required> 
				<input type="text" id="opt" name="o32" placeholder="Option-2" required> 
				<input type="text" id="opt" name="o33" placeholder="Option-3" required>
			    <input type="text" id="opt" name="o34" placeholder="Option-4" required>
			    
			<hr style="height: 2px; border-width: 0; color: gray; background-color: gray">
			
				<input type="text" id="que" name="q4" placeholder="Question -4" required> 
			 
				<input type="text" id="opt" name="o41" placeholder="Option-1" required> 
				<input type="text" id="opt" name="o42" placeholder="Option-2" required> 
				<input type="text" id="opt" name="o43" placeholder="Option-3" required>
			    <input type="text" id="opt" name="o44" placeholder="Option-4" required>
			    
			<hr style="height: 2px; border-width: 0; color: gray; background-color: gray">
			
			<input type="text" id="que" name="q5" placeholder="Question -5" required> 
			 
				<input type="text" id="opt" name="o51" placeholder="Option-1" required> 
				<input type="text" id="opt" name="o52" placeholder="Option-2" required> 
				<input type="text" id="opt" name="o53" placeholder="Option-3" required>
			    <input type="text" id="opt" name="o54" placeholder="Option-4" required>
			    
			<hr style="height: 2px; border-width: 0; color: gray; background-color: gray">
			
		<input type="text" id="que" name="q6" placeholder="Question -6" required> 
			 
				<input type="text" id="opt" name="o61" placeholder="Option-1" required> 
				<input type="text" id="opt" name="o62" placeholder="Option-2" required> 
				<input type="text" id="opt" name="o63" placeholder="Option-3" required>
			    <input type="text" id="opt" name="o64" placeholder="Option-4" required>
			    
			<hr style="height: 2px; border-width: 0; color: gray; background-color: gray">
			
				<input type="text" id="que" name="q7" placeholder="Question -7" required> 
			 
				<input type="text" id="opt" name="o71" placeholder="Option-1" required> 
				<input type="text" id="opt" name="o72" placeholder="Option-2" required> 
				<input type="text" id="opt" name="o73" placeholder="Option-3" required>
			    <input type="text" id="opt" name="o74" placeholder="Option-4" required>
			    
			<hr style="height: 2px; border-width: 0; color: gray; background-color: gray">
			
			<input type="text" id="que" name="q8" placeholder="Question -8" required> 
			 
				<input type="text" id="opt" name="o81" placeholder="Option-1" required> 
				<input type="text" id="opt" name="o82" placeholder="Option-2" required> 
				<input type="text" id="opt" name="o83" placeholder="Option-3" required>
			    <input type="text" id="opt" name="o84" placeholder="Option-4" required>
			    
			<hr style="height: 2px; border-width: 0; color: gray; background-color: gray">
			
			<input type="text" id="que" name="q9" placeholder="Question -9" required> 
			 
				<input type="text" id="opt" name="o91" placeholder="Option-1" required> 
				<input type="text" id="opt" name="o92" placeholder="Option-2" required> 
				<input type="text" id="opt" name="o93" placeholder="Option-3" required>
			    <input type="text" id="opt" name="o94" placeholder="Option-4" required>
			    
			<hr style="height: 2px; border-width: 0; color: gray; background-color: gray">
			
			<input type="text" id="que" name="q10" placeholder="Question -10" required> 
			 
				<input type="text" id="opt" name="o101" placeholder="Option-1" required> 
				<input type="text" id="opt" name="o102" placeholder="Option-2" required> 
				<input type="text" id="opt" name="o103" placeholder="Option-3" required>
			    <input type="text" id="opt" name="o104" placeholder="Option-4" required>
			    
			<hr style="height: 2px; border-width: 0; color: gray; background-color: gray">
		 

			<input type="submit" value="Save">
		</form>
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

</body>
</html>
