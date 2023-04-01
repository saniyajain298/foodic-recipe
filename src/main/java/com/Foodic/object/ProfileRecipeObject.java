package com.Foodic.object;

import java.sql.ResultSet;
import java.sql.SQLException;

public class ProfileRecipeObject {
	private String image;
	private String recipeName;
	public void toObject(ResultSet res) throws SQLException {
		this.image = res.getString("main_image");
		this.recipeName = res.getString("food_name");	
	}
}
