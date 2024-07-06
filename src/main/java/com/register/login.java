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

@WebServlet("/loginform")
public class login extends HttpServlet {

    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        String email = req.getParameter("email");
        String password = req.getParameter("password");

        Connection con = ConnectionProvider.getConnection();
        String query;
        PreparedStatement ps;

        HttpSession session = req.getSession();

        try {

            query = "select * from student where email=? and password=?";
            ps = con.prepareStatement(query);
            ps.setString(1, email);
            ps.setString(2, password);

            ResultSet set = ps.executeQuery();

            if (set.next()) {
                
            	session.setAttribute("user", set);
                resp.sendRedirect("DashStu1.jsp"); 
            } else {
             
                session.setAttribute("msg", "Invalid email or password");
                session.setAttribute("status", "false");
                resp.sendRedirect("login.jsp");
            }

        } catch (Exception e) {
            e.printStackTrace();
            session.setAttribute("msg", "Internal server error");
            session.setAttribute("status", "false");
            resp.sendRedirect("login.jsp"); 
        }
    }
}
