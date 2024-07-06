<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Teacher Dashboard</title>
<link rel="stylesheet" href="DashStu2.css">
<style>
.hero {
	background-image: url(image/bg2.jpg);
	height: calc(113vh - 400px); /* Adjust for header and footer heights */
	background-repeat: no-repeat;
	background-size: cover;
	background-position: center;
	color: #010000;
	text-align: center;
	padding: 100px 20px;
}

.subject-container:nth-child(odd) {
	background-color: #ffffffbf;
}

.subject-container:nth-child(even) {
	  background-color: #ffffff62;
}


section {
  flex-basis: calc(33.33% - 90px); /* Three sections per row with margin */
  margin-bottom: 10px; /* Reduced margin between each subject */
  padding: 20px;
  border-radius: 8px;
  transition: box-shadow 0.3s;
}

</style>
</head>
<body>
	<header>
		<h1>Teacher Dashboard</h1>
		<nav>
			<ul>
				<li><a href="profile.jsp">Profile</a></li>
				<li><a href="logout">Logout</a></li>
			</ul>
		</nav>
	</header>

	<main class="hero">
		<section class="subject-container">
			<h1>Subject-1</h1>
			<ul>
				<li>
					<h3>JavaScript</h3>
					<!-- <p>Date: 2024-03-20, Time: 10:00 AM</p> -->
		        	<!-- 		<p>Enrolled Students: 25</p>  -->
	        		<br>
					<a href="#">Set Question</a>
				</li>
			</ul>
		</section>
		<section class="subject-container">
			<h1>Subject-2</h1>
			<ul>
				<li>
					<h3>HTML</h3>
					<!-- <p>Date: 2024-03-20, Time: 10:00 AM</p> -->
		        	<!-- 		<p>Enrolled Students: 25</p>  -->
	        		<br>
					<a href="#">Set Question</a>
				</li>
			</ul>
		</section>
		<section class="subject-container">
			<h1>Subject-3</h1>
			<ul>
				<li>
					<h3>CSS</h3>
					<!-- <p>Date: 2024-03-20, Time: 10:00 AM</p> -->
		        	<!-- 		<p>Enrolled Students: 25</p>  -->
	        		<br>
					<a href="#">Set Question</a>
				</li>
			</ul>
		</section>
		<section class="subject-container">
			<h1>Subject-4</h1>
			<ul>
				<li>
					<h3>Java</h3>
					<!-- <p>Date: 2024-03-20, Time: 10:00 AM</p> -->
		        	<!-- 		<p>Enrolled Students: 25</p>  -->
	        		<br>
					<a href="#">Set Question</a>
				</li>
			</ul>
		</section>
		<section class="subject-container">
			<h1>Subject-5</h1>
			<ul>
				<li>
					<h3>C++</h3>
					<!-- <p>Date: 2024-03-20, Time: 10:00 AM</p> -->
		        	<!-- 		<p>Enrolled Students: 25</p>  -->
	        		<br>
						<a href="#">Set Question</a>
				</li>
			</ul>
		</section>
		<section class="subject-container">
			<h1>Subject-6</h1>
			<ul>
				<li>
					<h3>C</h3>
					<!-- <p>Date: 2024-03-20, Time: 10:00 AM</p> -->
		        	<!-- 		<p>Enrolled Students: 25</p>  -->
	        		<br>
									<a href="#">Set Question</a>
				</li>
			</ul>
		</section>
	</main>

	<footer>
		<p>&copy; 2024 All rights reserved</p>
	</footer>
</body>
</html>
