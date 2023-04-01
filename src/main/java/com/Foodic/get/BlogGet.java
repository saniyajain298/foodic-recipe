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
import java.util.ArrayList;
import java.util.List;

import com.Foodic.Dbcon;
import com.Foodic.object.BlogObject;
import com.google.gson.Gson;

@WebServlet("/get_blog")
public class BlogGet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String query = "SELECT blog.*,creator.username,creator.profile FROM blog JOIN creator ON blog.posted_by = creator.user_id";
		Dbcon db = new Dbcon();
		Connection con = db.connection();
		PreparedStatement pst;
		try {
			pst = con.prepareStatement(query);
			ResultSet result = pst.executeQuery();
			List<BlogObject> array = new ArrayList<BlogObject>(); 
			while(result.next()) {
				BlogObject b_object = new BlogObject();
				b_object.toObject(result);
				array.add(b_object);
			}
			Gson gson = new Gson();
			String json = gson.toJson(array);
			PrintWriter pw = response.getWriter();
			pw.print(json);
		}
		catch(Exception e) {
			e.printStackTrace();
		}
	}


}
