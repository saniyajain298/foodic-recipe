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

import com.Foodic.Dbcon;
import com.Foodic.object.BlogObject;
import com.google.gson.Gson;

@WebServlet("/blog_detail")
public class BlogDetailGet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String blog_id = request.getParameter("blog_id");
		String query = "SELECT blog.*,creator.username,creator.profile FROM blog JOIN creator ON blog.posted_by = creator.user_id where blog_id = ?";
		System.out.println(blog_id);
		Dbcon db = new Dbcon();
		Connection con = db.connection();
		PreparedStatement pst;
		try {
			pst = con.prepareStatement(query);
			pst.setString(1, blog_id);
			ResultSet result = pst.executeQuery();
			result.next();
			System.out.print("Inside try");
			BlogObject b_object = new BlogObject();
			b_object.toObject(result);
			Gson gson = new Gson();
			String json= gson.toJson(b_object);
			System.out.print("json" +json);
			PrintWriter pw = response.getWriter();
			pw.print(json);
		} catch (SQLException e) {
			System.out.println("Inside catch");
			e.printStackTrace();
		}
		
		
		
	}

}
