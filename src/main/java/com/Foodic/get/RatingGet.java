package com.Foodic.get;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.Foodic.Dbcon;

@WebServlet("/getrating")
public class RatingGet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("Inside RatingGet");
		String foodId = request.getParameter("foodId");
		String userId = request.getParameter("userId");
		Dbcon db = new Dbcon();
		Connection con = db.connection();
		try {
			String query = "SELECT rating from rating WHERE food_id = ? and user_id =?";
			PreparedStatement pst = con.prepareStatement(query);
			pst.setString(1, foodId);
			pst.setString(2, userId);
			
			ResultSet result= pst.executeQuery(); 
			if(result.next()) {
				PrintWriter pw = response.getWriter();
				pw.println(result.getString(1));		
			}
			else {
				PrintWriter pw = response.getWriter();
				pw.println("Error occur");
			}
			
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		
	}

	

}
