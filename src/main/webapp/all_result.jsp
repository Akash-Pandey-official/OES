<%@ page import="java.sql.*"%>
<%@ page import="com.register.ConnectionProvider"%>

<%
if (session.getAttribute("admin") == null) {
	response.sendRedirect("Admin.jsp");
}

ResultSet admin = (ResultSet) session.getAttribute("admin");
%>


<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Student Result</title>
<link rel="stylesheet" href="Result.css">
</head>
<body>
 <header>
    <nav>
      <ul>
        <li><a href="DashStu1.jsp">Dashboard</a></li>
        <li><a href="admin_profile.jsp"  >Profile</a></li>
        <li><a href="logout"  >Logout</a></li>
      </ul>
    </nav>
  </header>
  
<div class="container">
  <h1>Result Table</h1>
  <div class="result-table">
    <table>
      <thead>
        <tr>
        
          <th>SID</th>
          <th>Name</th>
          <th>Subject</th>
          <th>Obtain Marks</th>
          <th>Total Marks</th>
           <th>Right Questions</th>
           <th>Wrong Questions</th>
               
        </tr>
      </thead>
      <tbody>
        <%   
  
                       Connection con = ConnectionProvider.getConnection();

						String query;
						PreparedStatement ps;
						query = "select * from result ";
						ps = con.prepareStatement(query);
						ResultSet set = ps.executeQuery();

						while (set.next()) {
						%>
						<tr>
							<td><%=set.getString("sid")%>
							<td><%=set.getString("name")%>
							<td><%=set.getString("subject")%>
							<td><%=set.getString("om")%>
							<td><%=set.getString("tm")%>
							<td><%=set.getString("rq")%>
							<td><%=set.getString("wq")%>
						</tr>
						<%
						}
						%>
 
      </tbody>
    </table>
  </div>
</div>
 <footer>
    <p>&copy; 2024 Online Exam System. All rights reserved.</p>
  </footer>
</body>
</html>
    