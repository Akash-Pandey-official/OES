package com.register;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/exam")
public class Exam extends HttpServlet {

	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		String exam = req.getParameter("examname");
		String sid = req.getParameter("sid");
		

		Connection con = ConnectionProvider.getConnection();
		String query;
		PreparedStatement ps;

		HttpSession session = req.getSession();
		int id = 1;

		try {

			query = "select * from "+exam+" where id = ?";
			ps = con.prepareStatement(query);
			ps.setInt(1, id);

			ResultSet examname = ps.executeQuery();

			session.setAttribute("examname", examname);
			session.setAttribute("exam", exam);
			
			resp.sendRedirect("Exampage.jsp");

		} catch (Exception e) {
			e.printStackTrace();

		}
	}
}
