package com.Foodic.get;


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
import com.Foodic.object.RecipeObject;
import com.google.gson.Gson;

@WebServlet("/get_recipe_detail")
public class RecipeDetailGet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
protected void doGet(HttpServletRequest request, HttpServletResponse response ) throws IOException {
		String view_by = request.getParameter("view_by");
		String recipe_id = request.getParameter("recipe_id"); 
		Dbcon db = new Dbcon();
		Connection con = db.connection();
		try {
			Gson json = new Gson();
			try {
				String query = "INSERT IGNORE INTO views(food_id,view_by)VALUE(?,?);";
				PreparedStatement pst = con.prepareStatement(query);
				pst.setString(1, recipe_id); 
				pst.setString(2, view_by); 
				pst.executeUpdate();
				query="SELECT recipes.*, SUM(rating.rating) as sum_rating, COUNT(rating) as total_rating, JSON_LENGTH(recipes.ingredients) AS ingredient, creator.profile, creator.username from recipes LEFT JOIN rating ON recipes.food_id = rating.food_id JOIN creator ON recipes.posted_by = creator.user_id WHERE recipes.food_id = ? GROUP BY recipes.food_id ";
				//query = "Select * from recipes where food_id = "+recipe_id;
				System.out.println("exception is here + "+ query +recipe_id );
				PreparedStatement pst1 = con.prepareStatement(query);
				pst1.setString(1, recipe_id);
				ResultSet result = pst1.executeQuery();
				result.next();
				
				RecipeObject r_object = new RecipeObject();
				r_object.to_object(result);
				String r_json = json.toJson(r_object); 
					
				PrintWriter pw = response.getWriter(); 
				pw.println(r_json);
			} 
			catch (SQLException e) {
				e.printStackTrace();
			}
		}
		catch(Exception e) {
			System.out.println("gson Error");
			e.printStackTrace();
		}
	}

}
