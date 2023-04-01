package com.Foodic;

import jakarta.servlet.RequestDispatcher;
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


@WebServlet("/login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
	Connection con = null;
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		HttpSession session = request.getSession();
		try {
			Dbcon db = new Dbcon();
			con = db.connection();
			String query = "SELECT * FROM creator  WHERE email = ? and password= ?";
			PreparedStatement pst = con.prepareStatement(query);
			pst.setString(1, email);
			pst.setString(2, password);
			ResultSet rs = pst.executeQuery();
			if(rs.next()) {
				session.setAttribute("name", rs.getString("name"));
				session.setAttribute("username", rs.getString("username"));
				session.setAttribute("userid", rs.getString("user_id"));
				response.sendRedirect("index.jsp");
			}
			else {
				request.setAttribute("status", "failed");
				
				RequestDispatcher dispatcher = request.getRequestDispatcher("login.jsp"); 
				dispatcher.forward(request,response);
				
			}
			
		}
		catch(Exception e) {
			e.printStackTrace();
		}
	}

}
