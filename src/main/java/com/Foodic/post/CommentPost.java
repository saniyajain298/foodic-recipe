package com.Foodic.post;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;

@WebServlet("/comment_post")
public class CommentPost extends HttpServlet {
	private static final long serialVersionUID = 1L;
    

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String food_id = request.getParameter("food_id");
		String posted_by = request.getParameter("posted_by");
		String comment = request.getParameter("comment");
		String time = Common.dateTime();
		
		PrintWriter pw = response.getWriter(); 
		Dbcon db = new Dbcon();
		Connection con = db.connection();
		try {
			String query = "INSERT INTO comment_recipe(food_id, posted_by, comment, comment_time)VALUES(?,?,?,?)";
			
			PreparedStatement pst = con.prepareStatement(query);
			pst.setString(1,food_id);
			pst.setString(2,posted_by);
			pst.setString(3,comment);
			pst.setString(4,time);
			int result = pst.executeUpdate();
			System.out.println("Commented Successfully");
			pw.println("Commented Successfully");
		}
		catch(Exception e) {
			e.printStackTrace();
			pw.println("Error");
		}
		
		
	}

}
