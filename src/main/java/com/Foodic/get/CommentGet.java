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
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.Foodic.Dbcon;
import com.Foodic.object.CommentObject;
import com.google.gson.Gson;

@WebServlet("/get_comment")
public class CommentGet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String food_id = request.getParameter("food_id");
		
		Dbcon db = new Dbcon();
		Connection con = db.connection();
		String query = "SELECT * FROM comment_recipe where food_id = ?";
		PreparedStatement pst;
		PrintWriter pw = response.getWriter();
		try {
			pst = con.prepareStatement(query);
			pst.setString(1, food_id);
			ResultSet result = pst.executeQuery();
			
			List<CommentObject> c_array = new ArrayList<CommentObject>();
			
			while(result.next()) {
				CommentObject c_object = new CommentObject();
				c_object.toObject(result);
				c_array.add(c_object);
			}
			Gson gson = new Gson();
			String json = gson.toJson(c_array);
			System.out.println(json);
			
			pw.print(json);
			
		} catch (SQLException e) {
			pw.print("Error");
			e.printStackTrace();
		}
		
	}

}
