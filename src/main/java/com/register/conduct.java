package com.register;

import jakarta.servlet.*;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;
import java.io.IOException;
import java.sql.*;

@WebServlet("/setque")
public class conduct extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String examname = request.getParameter("examname");

		String q1 = request.getParameter("q1");

		String o11 = request.getParameter("o11");
		String o12 = request.getParameter("o12");
		String o13 = request.getParameter("o13");
		String o14 = request.getParameter("o14");

		String q2 = request.getParameter("q2");

		String o21 = request.getParameter("o21");
		String o22 = request.getParameter("o22");
		String o23 = request.getParameter("o23");
		String o24 = request.getParameter("o24");

		String q3 = request.getParameter("q3");

		String o31 = request.getParameter("o31");
		String o32 = request.getParameter("o32");
		String o33 = request.getParameter("o33");
		String o34 = request.getParameter("o34");

		String q4 = request.getParameter("q4");

		String o41 = request.getParameter("o41");
		String o42 = request.getParameter("o42");
		String o43 = request.getParameter("o43");
		String o44 = request.getParameter("o44");

		String q5 = request.getParameter("q5");

		String o51 = request.getParameter("o51");
		String o52 = request.getParameter("o52");
		String o53 = request.getParameter("o53");
		String o54 = request.getParameter("o54");

		String q6 = request.getParameter("q6");

		String o61 = request.getParameter("o61");
		String o62 = request.getParameter("o62");
		String o63 = request.getParameter("o63");
		String o64 = request.getParameter("o64");

		String q7 = request.getParameter("q7");

		String o71 = request.getParameter("o71");
		String o72 = request.getParameter("o72");
		String o73 = request.getParameter("o73");
		String o74 = request.getParameter("o74");

		String q8 = request.getParameter("q8");

		String o81 = request.getParameter("o81");
		String o82 = request.getParameter("o82");
		String o83 = request.getParameter("o83");
		String o84 = request.getParameter("o84");

		String q9 = request.getParameter("q9");

		String o91 = request.getParameter("o91");
		String o92 = request.getParameter("o92");
		String o93 = request.getParameter("o93");
		String o94 = request.getParameter("o94");

		String q10 = request.getParameter("q10");

		String o101 = request.getParameter("o101");
		String o102 = request.getParameter("o102");
		String o103 = request.getParameter("o103");
		String o104 = request.getParameter("o104");

		Connection con = ConnectionProvider.getConnection();
		HttpSession session = request.getSession();

		String query;
		PreparedStatement ps;
		boolean flag = false;

		try {

			query = "truncate table " + examname;
			ps = con.prepareStatement(query);
			ps.executeUpdate();

			flag = true;

			if (flag) {
				query = "insert into " + examname + " (Question, option1,option2,option3,option4) values(?,?,?,?,?)";
				ps = con.prepareStatement(query);

				ps.setString(1, q1);
				ps.setString(2, o11);
				ps.setString(3, o12);
				ps.setString(4, o13);
				ps.setString(5, o14);

				ps.executeUpdate();

				query = "insert into " + examname + " (Question, option1,option2,option3,option4) values(?,?,?,?,?)";
				ps = con.prepareStatement(query);

				ps.setString(1, q2);
				ps.setString(2, o21);
				ps.setString(3, o22);
				ps.setString(4, o23);
				ps.setString(5, o24);

				ps.executeUpdate();

				query = "insert into " + examname + " (Question, option1,option2,option3,option4) values(?,?,?,?,?)";
				ps = con.prepareStatement(query);

				ps.setString(1, q3);
				ps.setString(2, o31);
				ps.setString(3, o32);
				ps.setString(4, o33);
				ps.setString(5, o34);

				ps.executeUpdate();

				query = "insert into " + examname + " (Question, option1,option2,option3,option4) values(?,?,?,?,?)";
				ps = con.prepareStatement(query);

				ps.setString(1, q4);
				ps.setString(2, o41);
				ps.setString(3, o42);
				ps.setString(4, o43);
				ps.setString(5, o44);

				ps.executeUpdate();

				query = "insert into " + examname + " (Question, option1,option2,option3,option4) values(?,?,?,?,?)";
				ps = con.prepareStatement(query);

				ps.setString(1, q5);
				ps.setString(2, o51);
				ps.setString(3, o52);
				ps.setString(4, o53);
				ps.setString(5, o54);

				ps.executeUpdate();

				query = "insert into " + examname + " (Question, option1,option2,option3,option4) values(?,?,?,?,?)";
				ps = con.prepareStatement(query);

				ps.setString(1, q6);
				ps.setString(2, o61);
				ps.setString(3, o62);
				ps.setString(4, o63);
				ps.setString(5, o64);

				ps.executeUpdate();

				query = "insert into " + examname + " (Question, option1,option2,option3,option4) values(?,?,?,?,?)";
				ps = con.prepareStatement(query);

				ps.setString(1, q7);
				ps.setString(2, o71);
				ps.setString(3, o72);
				ps.setString(4, o73);
				ps.setString(5, o74);

				ps.executeUpdate();

				query = "insert into " + examname + " (Question, option1,option2,option3,option4) values(?,?,?,?,?)";
				ps = con.prepareStatement(query);

				ps.setString(1, q8);
				ps.setString(2, o81);
				ps.setString(3, o82);
				ps.setString(4, o83);
				ps.setString(5, o84);

				ps.executeUpdate();

				query = "insert into " + examname + " (Question, option1,option2,option3,option4) values(?,?,?,?,?)";
				ps = con.prepareStatement(query);

				ps.setString(1, q9);
				ps.setString(2, o91);
				ps.setString(3, o92);
				ps.setString(4, o93);
				ps.setString(5, o94);

				ps.executeUpdate();

				query = "insert into " + examname + " (Question, option1,option2,option3,option4) values(?,?,?,?,?)";
				ps = con.prepareStatement(query);

				ps.setString(1, q10);
				ps.setString(2, o101);
				ps.setString(3, o102);
				ps.setString(4, o103);
				ps.setString(5, o104);

				int rows = ps.executeUpdate();
				if (rows > 0) {
					session.setAttribute("status", "true");
					session.setAttribute("msg", "Questions added");
					response.sendRedirect("conduct.jsp");
				}else {
					session.setAttribute("status", "flase");
					session.setAttribute("msg", "Internal server error");
					response.sendRedirect("conduct.jsp");
					
				}

			}

		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
