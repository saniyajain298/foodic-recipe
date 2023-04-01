package com.Foodic;

import java.sql.*;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;


@WebServlet("/register")
public class Register extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name = request.getParameter("name");
		String password = request.getParameter("pass");
		String email = request.getParameter("email");
		String mobile = request.getParameter("contact");
		String about = request.getParameter("about");
		String location = request.getParameter("location");
		String username = name + "@29";
		
		
		about ="I like cooking";
		location = "Gwalior";
		System.out.print(name);
		Connection con = null;
		try {
			Dbcon dcon = new Dbcon();
			con = dcon.connection();
			String query = "INSERT INTO creator(username,name,email, password, mobile, about, location )values(?,?,?,?,?,?,?)";
			PreparedStatement pst = con.prepareStatement(query);
			pst.setString(1, username);
			pst.setString(2, name);
			pst.setString(3, email);
			pst.setString(4, password);
			pst.setString(5, mobile);
			pst.setString(6, about);
			pst.setString(7, location);
			System.out.print(pst);
			int rowcount = pst.executeUpdate();
			if(rowcount!=0) {
				request.setAttribute("status", "success");
				response.sendRedirect("login.jsp");
			}
			else {
				request.setAttribute("status", "error");
				RequestDispatcher dispatcher = request.getRequestDispatcher("registration.jsp");
				
				dispatcher.forward(request, response);
			}
			
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		finally {
			try {
				con.close();
			}
			catch(Exception e) {
				e.printStackTrace();
			}
			
		}
		
		
	}

}
