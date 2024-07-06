 <%@ page import="java.sql.*"%>
<%@ page import="com.register.ConnectionProvider"%> 
    
  <%
if (session.getAttribute("user") == null) {
	response.sendRedirect("login.jsp");
}
ResultSet user = (ResultSet) session.getAttribute("user");
%>
 
	
	
	
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
   <link rel="stylesheet"  href="Exampage.css">
<title>Student Exam Page</title>

</head>
<body>
	<header>
		<h1>Student Dashboard</h1>
		<nav>
			<ul>
				<li><a href="profile.jsp">Profile</a></li>
				<li><a href="logout">Logout</a></li>
			</ul>
		</nav>
	</header>

	<h1 class="title">Questions</h1>
	
	<%
		ResultSet examname = (ResultSet)session.getAttribute("examname");	
	   	 if (examname.next()) {
				
		    String question,option1,option2,option3,option4;
		    int id;
            id=examname.getInt("id");
            question=examname.getString("question");
            option1=examname.getString("option1");
            option2=examname.getString("option2");
            option3=examname.getString("option3");
            option4=examname.getString("option4");
            
		  if (id== 10) {
		%>
     
     <form id="quizForm"  action="submit?sid=<%= user.getString("sid") %>&id=<%= id %>" method="post">     
		<div class="quiz-question">	
			<p><%=id%>. <%=question%></p>		
			<div class="option">
				<input type="radio" id="option1" name="option"  value="<%=option1 %>"> 
				<label for="option1"><%=option1 %></label>
			</div>
		 
		 <div class="option">
				<input type="radio" id="option2" name="option"  value="<%=option2 %>"> 
				<label for="option2"><%=option2%></label>
			</div>
			
			<div class="option">
				<input type="radio" id="option3" name="option"  value="<%=option3 %>"> 
				<label for="option3"><%=option3%></label>
			</div>
			
			<div class="option">
				<input type="radio" id="option4" name="option"  value="<%=option4 %>"> 
				<label for="option4"><%=option4 %></label>
			</div>
	 	</div>
	 	
		<button class="submit-button"  type="submit">submit</button>
		</form>
		
	<%}else{ %>
	    <form id="quizForm"  action="next?sid=<%= user.getString("sid") %>&id=<%= id %>" method="post">
     
		<div class="quiz-question">
		
			<p><%=id%>. <%=question%></p>
			
			<div class="option">
				<input type="radio" id="option1" name="option"  value="<%=option1 %>"> 
				<label for="option1"><%=option1 %></label>
			</div>
		 
		 <div class="option">
				<input type="radio" id="option2" name="option"  value="<%=option2 %>"> 
				<label for="option2"><%=option2%></label>
			</div>
			
			<div class="option">
				<input type="radio" id="option3" name="option"  value="<%=option3 %>"> 
				<label for="option3"><%=option3%></label>
			</div>
			
			<div class="option">
				<input type="radio" id="option4" name="option"  value="<%=option4 %>"> 
				<label for="option4"><%=option4 %></label>
			</div>
	 	</div>
	 	
		<button class="submit-button"  type="submit">next</button>
		</form>
	  <%} %>    
	  <%} %> 
</body>
</html> 