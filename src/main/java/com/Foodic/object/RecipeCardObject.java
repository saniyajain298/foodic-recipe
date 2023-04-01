package com.Foodic.object;

import java.sql.ResultSet;
import java.sql.SQLException;

public class RecipeCardObject {
	private String food_id;
	private String food_name;
	private String hashtags;
	private String posted_by;
	private String created_at;
	private String main_image;
	private String tRating;
	private String sRating;
	private String username;
	private String profile;
	private String ingredient;
	private void setFood_id(String food_id) {
		this.food_id = food_id;
	}
	private void setFood_name(String food_name) {
		this.food_name = food_name;
	}
	private void setHashtags(String hashtags) {
		this.hashtags = hashtags;
	}
	private void setPosted_by(String posted_by) {
		this.posted_by = posted_by;
	}
	
	private void setCreated_at(String created_at) {
		this.created_at = created_at;
	}
	private void setSRating(String sRating) {
		if(sRating!= null){
			
			this.sRating = sRating;
		}
		else {
			this.sRating = "0";
		}
	}
	private void setTRating(String tRating) {
		this.tRating = tRating;
	}
	private void setMain_image(String main_image) {
		this.main_image = main_image;
	}
	private void setProfile(String profile) {
		this.profile = profile;
	}
	private void setUsername(String username) {
		this.username = username;
	}
	private void setIngredient(String ingredient) {
		if(ingredient!= null){
			
			this.ingredient = ingredient;
		}
		else {
			this.ingredient = "0";
		}
	}
	public void toObject(ResultSet result) throws SQLException {
		setFood_id(result.getString("food_id"));
		setFood_name(result.getString("food_name"));
		setHashtags(result.getString("hashtags"));
		setPosted_by(result.getString("posted_by"));
		setCreated_at(result.getString("created_at"));
		setTRating(result.getString("total_rating"));
		setSRating(result.getString("sum_rating"));
		setMain_image(result.getString("main_image"));
		setProfile(result.getString("profile"));
		setUsername(result.getString("username"));
		setIngredient(result.getString("ingredient"));
	}
}
