<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*"%>
<%@ page import="com.register.ConnectionProvider"%> 
    
  <%
if (session.getAttribute("user") == null) {
	response.sendRedirect("login.jsp");
}
ResultSet user = (ResultSet) session.getAttribute("user");
int sid=0;
if (user != null) {
	
    sid = user.getInt("sid");
}
%>
  
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Select Exam</title>
 <link rel="stylesheet" href="Dashstu2.css">
</head>
<body>
  <header>
    <nav>
      <ul>
        <li><a href="DashStu1.jsp">DashBoard</a></li>
        <li><a href="profile.jsp">Profile</a></li>
        <li><a href="logout">Logout</a></li>
      </ul>
    </nav>
  </header>

  <main class="hero">
    <section class="subject-container">
  <div class="exam-container">
    <h2>Choose Exam</h2>
     
    
	
     <form action="exam?sid=<%= sid %>"  method="post">

			<select id="exam" name="examname" required>
				<option value="">Select Exam</option>
				<option value="C">C</option>
				<option value="cpp">C++</option>
				<option value="Java">Java</option>
				<option value="HTML">HTML</option>
				<option value="CSS">CSS</option>
				<option value="JS">JavaScript</option>
			</select>
			
			<input type="submit" value="Start">
			
			</form>
			
			
	</div>  		
    </section>
    
  </main>

  <footer>
    <p>&copy; 2024 All rights reserved</p>
  </footer>
</body>
</html>

    