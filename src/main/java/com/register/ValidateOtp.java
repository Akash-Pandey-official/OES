 package com.register;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

@WebServlet("/verifyotp")
public class ValidateOtp extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		try {

			HttpSession session = request.getSession();
			
			int OTP = Integer.parseInt(request.getParameter("otp"));

			int otp =  (int)session.getAttribute("otp");
			

			if (OTP==otp) {

				session.removeAttribute("otp");
				session.setAttribute("status", "true");
				session.setAttribute("msg", "OTP verified successfully");
				response.sendRedirect("Forgetpass3.jsp");
			} else {

				session.setAttribute("msg", "Invalid OTP");
				session.setAttribute("status", "false");
				response.sendRedirect("Forgetpass2.jsp");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}

	}
}
