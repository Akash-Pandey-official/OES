package com.register;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import jakarta.servlet.http.HttpSession;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/Signup")
public class Register extends HttpServlet {

	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		String name = req.getParameter("name");
		String phone = req.getParameter("phone");
		String email = req.getParameter("email");
		String gender = req.getParameter("gender");
		String sclass = req.getParameter("class");
		String password = req.getParameter("password");

		Connection con = ConnectionProvider.getConnection();
		String query;
		PreparedStatement ps;

		HttpSession session = req.getSession();

		try {

			query = "select * from student where email=?";
			ps = con.prepareStatement(query);
			ps.setString(1, email);

			ResultSet set = ps.executeQuery();

			if (set.next()) {

				session.setAttribute("msg", "Email  already exists");
				session.setAttribute("status", "false");
				resp.sendRedirect("Register.jsp");
				return;

			}

			query = "select * from student where phone=?";
			ps = con.prepareStatement(query);
			ps.setString(1, phone);

			ResultSet set1 = ps.executeQuery();

			if (set1.next()) {

				session.setAttribute("msg", "Phone  already exists");
				session.setAttribute("status", "false");
				resp.sendRedirect("Register.jsp");
				return;

			} else {

				query = "insert into student (name,email,password,phone,gender,class) values(?,?,?,?,?,?)";
				ps = con.prepareStatement(query);
				ps.setString(1, name);
				ps.setString(2, email);

				ps.setString(3, password);
				ps.setString(4, phone);

				ps.setString(5, gender);
				ps.setString(6, sclass);

				int Rows = ps.executeUpdate();
				if (Rows > 0) {

					session.setAttribute("msg", "Register Successfully");
					session.setAttribute("status", "true");
					resp.sendRedirect("index.jsp");

				} else {

					session.setAttribute("msg", "Internal server error");
					session.setAttribute("status", "false");
					resp.sendRedirect("index.jsp");

				}

			}

		} catch (Exception e) {

			e.printStackTrace();

		}
	}
}
