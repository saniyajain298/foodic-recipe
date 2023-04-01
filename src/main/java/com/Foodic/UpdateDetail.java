package com.Foodic;


import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Base64;
import com.Foodic.object.PersonalDetailObject;
import com.Foodic.post.Common;
import com.google.gson.Gson;

@WebServlet("/update_detail")
public class UpdateDetail extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String type = request.getParameter("type");
		String username = request.getParameter("username");
		String value = null;
		
		if(type.equals("profile")) {
			String image = request.getParameter("value");
			String[] base64 = image.split(";base64,", 2);
			String[] img_format = base64[0].split("image/", 2);
			byte[] decoded = Base64.getDecoder().decode(base64[1]);

			try{
				String filename = Common.getImageName(); 
				filename = filename +"."+img_format[1];
				String uploadPath="F:/JSP Programming/J2EE/Recipe/src/main/webapp/images/foodic_profile/"+filename; 
				value = filename;
				FileOutputStream fos=new FileOutputStream(uploadPath); 
				System.out.println("uploadPath"+uploadPath);
				fos.write(decoded); 
				fos.close();
			} 
			catch(Exception e) {
			  	e.printStackTrace();
			}
		}
		else {
			value = request.getParameter("value");
		}
		String query ="UPDATE creator SET " + type+" = ? where username = ?" ;
		Dbcon db = new Dbcon();
		Connection con = db.connection();
		try { 
			 
			PreparedStatement pst =con.prepareStatement(query); 
			pst.setString(1, value); 
			pst.setString(2,username); 
			pst.executeUpdate();
		} 
		catch (SQLException e) { 
			e.printStackTrace(); 
		}		
	}
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String username = request.getParameter("username");
		Dbcon db = new Dbcon();
		Connection con = db.connection();
		String query = "Select * from creator where username =?";
		try {	
			PreparedStatement pst = con.prepareStatement(query);
			pst.setString(1, username);
			ResultSet result = pst.executeQuery();
			if(result.next()) {
				PersonalDetailObject d_object = new PersonalDetailObject();
				d_object.toObject(result);
				Gson gson = new Gson();
				String json = gson.toJson(d_object);
				PrintWriter pw = response.getWriter();
				pw.println(json);
			}
		} 
		catch (SQLException e) {
			e.printStackTrace();
		}
	}
}

