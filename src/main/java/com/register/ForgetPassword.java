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
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Random;

@WebServlet("/forget")
public class ForgetPassword extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String email = request.getParameter("email");

		Random random = new Random();

		int otp = random.nextInt(999999);

		String body = "Verification Code : " + otp;
		String subject = "Forget Password Code";
		String to = email;
		String from = "venomxxdevil8210@gmail.com";

		Connection con = ConnectionProvider.getConnection();
		HttpSession session = request.getSession();

		String query;
		PreparedStatement ps;

		try {

			query = "select * from student where email=?";
			ps = con.prepareStatement(query);
			ps.setString(1, email);
			ResultSet set = ps.executeQuery();
			if (set.next()) {

				EmailSender emailsender = new EmailSender();

				boolean b = emailsender.sendEmail(to, from, subject, body);

				if (b) {

					session.setAttribute("otp", otp);
					session.setAttribute("email", email);
					session.setAttribute("msg", "OTP has been sent");
					session.setAttribute("status", "true");
					response.sendRedirect("Forgetpass2.jsp");

				} else {

					session.setAttribute("msg", "Internal server error");
					session.setAttribute("status", "false");
					response.sendRedirect("Forgetpass1.jsp");

				}

			} else {
				
				session.setAttribute("msg", "Invalid email");
				session.setAttribute("status", "false");
				response.sendRedirect("Forgetpass1.jsp");

			}

		} catch (SQLException e) {
			e.printStackTrace();
		}

	}

}
