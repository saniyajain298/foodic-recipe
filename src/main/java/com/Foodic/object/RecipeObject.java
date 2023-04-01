package com.Foodic.object;

import java.sql.ResultSet;
import java.sql.SQLException;

public class RecipeObject {
	private String food_id;
	private String food_name;
	private String main_image;
	private String hashtags;
	private String posted_by;
	private String about;
	private String precaution;
	private String ingredients;
	private String steps;
	private String images;
	private String created_at;
	private String total_rating;
	private String sum_rating;
	
	public void setFood_id(String food_id) {
		this.food_id = food_id;
	}
	public void setFood_name(String food_name) {
		this.food_name = food_name;
	}
	public void setMain_image(String main_image) {
		this.main_image = main_image;
	}
	public void setHashtags(String hashtags) {
		this.hashtags = hashtags;
	}
	public void setPosted_by(String posted_by) {
		this.posted_by = posted_by;
	}
	public void setAbout(String about) {
		this.about = about;
	}
	public void setPrecaution(String precaution) {
		this.precaution = precaution;
	}
	public void setIngredients(String ingredients) {
		this.ingredients = ingredients;
	}
	public void setSteps(String steps) {
		this.steps = steps;
	}
	public void setImages(String images) {
		this.images = images;
	}
	public void setCreated_at(String created_at) {
		this.created_at = created_at;
	}
	public void setRatings(String sum_rating) {
		this.sum_rating = sum_rating;
	}
	public void setTotal_ratings(String total_rating) {
		this.total_rating = total_rating;
	}
	
	public void to_object(ResultSet result) throws SQLException {
		setFood_id(result.getString("food_id"));
		setFood_name(result.getString("food_name"));
		setMain_image(result.getString("main_image"));
		setHashtags(result.getString("hashtags"));
		setPosted_by(result.getString("posted_by"));
		setAbout(result.getString("about"));
		setPrecaution(result.getString("precaution"));
		setIngredients(result.getString("ingredients"));
		setSteps(result.getString("steps"));
		setImages(result.getString("images"));
		setCreated_at(result.getString("created_at"));
		setRatings(result.getString("sum_rating"));
		setTotal_ratings(result.getString("total_rating"));
	}
	
}
