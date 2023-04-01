package com.Foodic.post;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;


@WebServlet("/rating")
public class RatingPost extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String userId = request.getParameter("userId");
		String foodId = request.getParameter("foodId");
		String rating = request.getParameter("rating");
		System.out.println("inside resipePOst" + rating +" "+userId+" "+foodId);
		Dbcon db = new Dbcon();
		Connection con = db.connection();
		try {
			String query = "Insert into rating(food_id, user_id, rating)VALUES(?,?,?) ON DUPLICATE KEY UPDATE rating=?;";
			PreparedStatement pst = con.prepareStatement(query);
			pst.setString(1, foodId);
			pst.setString(2, userId);
			pst.setString(3, rating);
			pst.setString(4, rating);
			pst.executeUpdate();
		}
		catch(Exception e) {
			e.printStackTrace();
		}
	}

}
