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
import com.Foodic.object.RecipeCardObject;
import com.google.gson.Gson;


@WebServlet("/getAllRecipe")
public class AllRecipeGet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Dbcon db = new Dbcon();
		Connection con = db.connection();
		String req= new String();
		System.out.println("Inside AllRecipeGet");
		try {
			String query = "SELECT recipes.*, SUM(rating.rating) as sum_rating, COUNT(rating)*5 as total_rating, JSON_LENGTH(recipes.ingredients) AS ingredient, creator.profile, creator.username from recipes LEFT JOIN rating ON recipes.food_id = rating.food_id JOIN creator ON recipes.posted_by = creator.user_id GROUP BY rating.food_id ORDER BY recipes.food_id;";
			
			PreparedStatement pst = con.prepareStatement(query);
			ResultSet result = pst.executeQuery();
			List<RecipeCardObject> card_array = new ArrayList<RecipeCardObject>();

			for(Integer i=0;result.next();i++) {
				RecipeCardObject card_object = new RecipeCardObject();
				card_object.toObject(result);
				card_array.add(card_object);
				
			}
			
			Gson json = new Gson();
			req = json.toJson(card_array);
			PrintWriter pw = response.getWriter();
			pw.println(req);
		}
		catch(Exception e) {
			System.out.println("Not working");
		}
		finally { 
			try { 
				con.close(); 
			} 
			catch (SQLException e) { 
				e.printStackTrace();
		  } 
		}
		
	}

}
