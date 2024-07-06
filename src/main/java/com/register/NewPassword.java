 package com.register;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

@WebServlet("/changepassword")
public class NewPassword extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		HttpSession session = request.getSession();

		String password = request.getParameter("password");
		String email = (String) session.getAttribute("email");

		Connection con = ConnectionProvider.getConnection();

		String query;
		PreparedStatement ps;

		try {

			query = "update student set password=? where email=?";
			ps = con.prepareStatement(query);
			ps.setString(1, password);
			ps.setString(2, email);
			int i = ps.executeUpdate();
			if (i == 1) {

				session.setAttribute("msg", "Password changed successfully");
				session.setAttribute("status", "true");
				session.removeAttribute("email");
				response.sendRedirect("login.jsp");
			} else {
				session.setAttribute("msg", "Internal server error");
				session.setAttribute("status", "false");
				response.sendRedirect("index.jsp");
			}

		} catch (SQLException e) {
			e.printStackTrace();
		}

	}
}
