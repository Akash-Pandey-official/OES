 
    
<%@ page import="java.sql.*"%>
<%@ page import="com.register.ConnectionProvider"%>

<%
if (session.getAttribute("admin") == null) {
	response.sendRedirect("Admin.jsp");
}

ResultSet admin = (ResultSet) session.getAttribute("admin");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Teacher Home</title>
  <link rel="stylesheet" href="DashTec1.css">
</head>
<body>
 </head>
<body>  
  <header>
    <nav>
      <ul>
        <li><a href="DashTec1.jsp">Dashboard</a></li>
        <li><a href="admin_profile.jsp"  >Profile</a></li>
        <li><a href="adminlogout" target="_blank">Logout</a></li>
        
      </ul>
    </nav>
  </header>
  
  <section class="hero">
      <%
			if (admin != null) {
			%>
			
		 <h2>  Welcome <%=admin.getString("name")%></h2>
		
			<%
			}
			%>
   
    <p> Conduct your subject exams anytime, anywhere.</p>
    <a href="conduct.jsp" class="btn btn-signup">Conduct Exam</a>
        <a href="all_result.jsp" class="btn btn-signup">Previous Result</a>
  </section>

  <footer>
    <p>&copy; 2024 Online Exam System. All rights reserved.</p>
  </footer>
</body>
</html>