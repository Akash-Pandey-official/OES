<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
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
  <title>User Profile</title>
  <!-- Add your CSS styles here -->
  <style>
    body {
      margin: 0;
      padding: 0;
      font-family: Arial, sans-serif;
      background-image: url(image/bg1.jpg);
      height: 100vh;
      background-repeat: no-repeat;
      background-size: cover;
      background-position: center;
      color: #010000;
    }

    header {
      background-color: #333;
      color: #fff;
      padding: 20px;
    }

    nav {
      text-align: center;
    }

    nav ul {
      list-style-type: none;
      margin: 0;
      padding: 0;
      display: flex;
      justify-content: center;
    }

    nav ul li {
      display: inline;
      margin-right: 20px;
    }

    nav ul li a {
      text-decoration: none;
      color: #fff;
      position: relative;
      transition: color 0.3s, box-shadow 0.3s;
    }

    nav ul li a:hover {
      color: #4CAF50;
      box-shadow: 0 0 10px rgba(0, 0, 0, 0.3);
    }

    nav ul li a::after {
      content: '';
      position: absolute;
      bottom: -5px;
      left: 0;
      width: 100%;
      height: 2px;
      background-color: #4CAF50;
      transform: scaleX(0);
      transition: transform 0.3s;
    }

    nav ul li a:hover::after {
      transform: scaleX(1);
    }

    .profile-container {
      max-width: 600px;
      margin: 20px auto;
      background: linear-gradient(to right, #ff6b6b, #556270);
      border-radius: 10px;
      box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
      padding: 20px;
      color: #fff;
    }

    .profile-header {
      text-align: center;
    }

    .profile-header h1 {
      font-size: 2em;
      margin-bottom: 20px;
    }

    .profile-header p {
      margin-bottom: 10px;
    }

    .profile-header input[type="text"] {
      width: calc(100% - 20px);
      padding: 10px;
      border: none;
      border-radius: 5px;
      margin-bottom: 10px;
      background-color: rgba(255, 255, 255, 0.2);
      color: #fff;
    }

    .profile-header input[type="text"]:focus {
      outline: none;
      background-color: rgba(255, 255, 255, 0.5);
    }
  </style>
</head>
<body>
  <header>
    <nav>
      <ul>
        <li><a href="DashStu1.jsp">Dashboard</a></li>
        <li><a href="profile.jsp">Profile</a></li>
        <li><a href="logout">Logout</a></li>
      </ul>
    </nav>
  </header>

  <div class="profile-container">
    <div class="profile-header">
      <h1>Profile</h1>
      <p>-:Name:- <input type="text" name="name" id="name" value="<%= user.getString("name") %>" readonly></p>
      <p>-:Email:- <input type="text" name="name" id="name" value="<%= user.getString("email") %>" readonly></p>
      <p>-:Phone:- <input type="text" name="name" id="name" value="<%= user.getString("phone") %>" readonly></p>
      <p>-:Class:-<input type="text" name="name" id="name" value="<%= user.getString("class") %>" readonly></p>
      <p>-:Gender:- <input type="text" name="name" id="name" value="<%= user.getString("gender") %>" readonly></p>
    </div> 
  </div>
</body>
</html>
