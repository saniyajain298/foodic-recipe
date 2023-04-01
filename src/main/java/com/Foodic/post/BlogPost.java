package com.Foodic.post;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.Part;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.Foodic.Dbcon;

@MultipartConfig
@WebServlet("/create_blog")
public class BlogPost extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Part image = request.getPart("image");
		String title = request.getParameter("title");
		String content = request.getParameter("blog_content");
		String current_datetime = Common.dateTime();
		String username = request.getParameter("username");
		String hashtag = request.getParameter("hashtag");
		String imageFileName=image.getSubmittedFileName(); 
		String filename2 = Common.getImageName();
		String blog_image = filename2 + imageFileName;
		String uploadPath="F:/JSP Programming/J2EE/Recipe/src/main/webapp/images/uplaod_blog/"+blog_image; 
		try {
			FileOutputStream fos=new FileOutputStream(uploadPath);
			InputStream is=image.getInputStream();
			byte[] data=new byte[is.available()];
			is.read(data);
			fos.write(data);
			fos.close();
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		Dbcon db = new Dbcon();
		Connection con = db.connection();
		String query = "INSERT INTO blog(title, posted_by, time, hashtag, image, blog_content)VALUES(?,?,?,?,?,?)";
		PreparedStatement pst;
		try {
			pst = con.prepareStatement(query);
			pst.setString(1, title);
			pst.setString(2, username);
			pst.setString(3, current_datetime);
			pst.setString(4, hashtag);
			pst.setString(5, blog_image);
			pst.setString(6, content);
			
			int result = pst.executeUpdate();
			response.sendRedirect("create_blog.jsp");
			return;
		} 
		catch (SQLException e) {
			e.printStackTrace();
		}
	}

}
