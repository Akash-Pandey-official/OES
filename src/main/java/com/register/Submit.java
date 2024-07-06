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

@WebServlet("/submit")
public class Submit extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

    	HttpSession session = req.getSession();
    	 
		Connection con = ConnectionProvider.getConnection();
		String query;
		PreparedStatement ps;
 
		try {
			
			String so = req.getParameter("option");
			String exam = (String)session.getAttribute("exam");
			String id = req.getParameter("id");
			int qid = Integer.parseInt(id);
			String sid = req.getParameter("sid");
			 
			query = "select option4 from "+exam+" where id = ?";
			ps = con.prepareStatement(query);
			ps.setInt(1, qid);
			ResultSet option4 = ps.executeQuery();
			if(option4.next()) {
				String ro = option4.getString("option4");
				if(ro.equals(so)) {
					
					query="select marks from student where sid = ?";
					ps = con.prepareStatement(query);
					ps.setString(1, sid);
					ResultSet set = ps.executeQuery();
					if(set.next()) {
						
						int marks = set.getInt("marks");
						
						marks= marks+5;
						query="update student set marks = "+marks+" where sid = ?";
						ps = con.prepareStatement(query);
						ps.setString(1, sid);
						int row = ps.executeUpdate();
				 
						
					}
 
				}
				query="select *  from student where sid = ?";
				ps = con.prepareStatement(query);
				ps.setString(1, sid);
				ResultSet set = ps.executeQuery();
				if(set.next()) {
					
					String Sid= set.getString("sid");
					String Name= set.getString("name");
					String Subject = exam;
					int OM= set.getInt("marks");
					int TM= 50;
					int RQ = OM/5;
					int WQ = 10-RQ;
					
					query="insert into result(sid,name,subject,om,tm,rq,wq) values(?,?,?,?,?,?,?)";
					ps = con.prepareStatement(query);
					ps.setString(1, Sid);
					ps.setString(2, Name);
					ps.setString(3, Subject);
					ps.setInt(4, OM);
					ps.setInt(5, TM);
					ps.setInt(6, RQ);
					ps.setInt(7, WQ);
					int row = ps.executeUpdate();
					if(row>0) {
						
						query="select marks from student where sid = ?";
						ps = con.prepareStatement(query);
						ps.setString(1, sid);
						ResultSet Set = ps.executeQuery();
						if(Set.next()) {
							
							int marks = set.getInt("marks");
							
							marks= 0;
							query="update student set marks = "+marks+" where sid = ?";
							ps = con.prepareStatement(query);
							ps.setString(1, sid);
							int rows = ps.executeUpdate();
							if(rows > 0) {
								
								session.setAttribute("status", "true");
								session.setAttribute("msg", "Answers Submitted");
								resp.sendRedirect("DashStu1.jsp");
								
							}
							
					 
							
						}
						
					}
		 	
				} 
			}

		} catch (Exception e) {
			e.printStackTrace();

		}
    }
}
