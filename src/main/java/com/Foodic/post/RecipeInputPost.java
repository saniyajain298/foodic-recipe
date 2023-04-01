package com.Foodic.post;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.Part;

import java.io.IOException;

@MultipartConfig
@WebServlet("/create_recipe")
public class RecipeInputPost extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws IOException, ServletException {
		try {
			String res_name = request.getParameter("res_name");
			String hashtag = request.getParameter("hashtags");
			String about = request.getParameter("res_about");
			String precaution = request.getParameter("res_precaution");
			String[] ingre = request.getParameterValues("ing");
			String[] qty = request.getParameterValues("qty");
			String[] step_array = request.getParameterValues("step");
			Part main_image = request.getPart("main_image");
			String[] p = request.getParameterValues("myHiddenField");
			
	       
	        try{
					RecipePost post = new RecipePost(); 
					post.set_r_name(res_name); 
					post.set_r_hashtag(hashtag);
					post.set_r_about(about); 
					post.set_r_precaution(precaution);
					post.set_r_ingre(ingre, qty); 
					post.set_r_steps(step_array);
					post.set_r_images(p); 
					post.set_main_image(main_image);
					post.submit();
					
			} 
			catch(Exception e) {
				System.out.println("error2"); 
				e.printStackTrace(); 
			}	 
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("error");
		}
		response.sendRedirect("create_recipe.jsp");
		return;
	}

}
