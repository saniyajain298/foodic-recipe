package com.Foodic.post;

import java.io.FileOutputStream;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Base64;
import java.util.Calendar;
import java.util.HashMap;
import java.util.List;

import com.Foodic.Dbcon;
import com.google.gson.Gson;

import jakarta.servlet.http.Part;

public class RecipePost {
	String recipe_name;
	String recipe_hashtag;
	String recipe_about;
	String recipe_precaution;
	Connection con = null;
	List<String> recipe_image_list = new ArrayList<String>();
	String recipe_ing;
	String recipe_step;
	String recipe_image;
	String recipe_main_image;
	HashMap<Integer,HashMap<String, String>> recipe_intgredient = new HashMap<Integer,HashMap<String, String>>(); 
	String current_datetime;
	
	static String getAlphaNumericString() {
		String AlphaNumericString = "ABCDEFGHIJKLMNOPQRSTUVWXYZ" + "0123456789" + "abcdefghijklmnopqrstuvxyz";
		StringBuilder sb = new StringBuilder(10);
		for (int i = 0; i < 10; i++) {
			int index = (int) (AlphaNumericString.length() * Math.random());
			sb.append(AlphaNumericString.charAt(index));
		}
		return sb.toString();
	} 
	
	public void submit() throws SQLException {
		
		Dbcon db = new Dbcon();
		con = db.connection();
		current_time();
		String query ="INSERT INTO  recipes (food_name,main_image, hashtags, posted_by, about, precaution, ingredients, steps, images,created_at)VALUES(?,?,?,?,?,?,?,?,?,?)";
		PreparedStatement pst = con.prepareStatement(query);
		pst.setString(1, this.recipe_name);
		pst.setString(2, this.recipe_main_image);
		pst.setString(3, this.recipe_hashtag);
		pst.setString(4, "SaniyaJain@29");
		pst.setString(5, this.recipe_about);
		pst.setString(6, this.recipe_precaution);
		pst.setString(7, this.recipe_ing);
		pst.setString(8, this.recipe_step);
		pst.setString(9, this.recipe_image);
		pst.setString(10, this.current_datetime);
		System.out.print(pst);
		
		pst.executeUpdate();
	}
	public void current_time() {
		DateFormat dateFormat1 = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
		Calendar cal = Calendar.getInstance();
		this.current_datetime = dateFormat1.format(cal.getTime());
	}
	
	public void set_r_name(String name) {
		this.recipe_name = name;
	}
	
	public void set_r_hashtag(String hashtag) {
		this.recipe_hashtag = hashtag.replaceAll("\\s+", ",#");
		this.recipe_hashtag = this.recipe_hashtag.replaceAll(",#+", ",#");
		String[] arrOfStr = this.recipe_hashtag.split(",", 2);
		this.recipe_hashtag = arrOfStr.toString();
	}
	public void set_r_about(String about) {
		this.recipe_about = about;
	}
	public void set_r_precaution(String precaution) {
		this.recipe_precaution = precaution;
	}
	public void set_r_ingre(String[] ingre, String[] qty ) {
		for(int i =0;i<ingre.length;i++) {
			HashMap<String, String> ing_n = new HashMap<String, String>();
			ing_n.put("ing", ingre[i]);
			ing_n.put("quantity", qty[i]);
			this.recipe_intgredient.put(i, ing_n);
		}
		Gson gson = new Gson();
		this.recipe_ing = gson.toJson(this.recipe_intgredient);
	}
	public void set_r_steps(String[] steps) {
		Gson gson = new Gson();
		List<String> step_array = new ArrayList<String>();
		
		for(int i =0;i<steps.length;i++) {
			step_array.add(steps[i]);
		}
		this.recipe_step = gson.toJson(step_array);
	}
	public void set_r_images(String[] image_list) {
		try {
			for(int i =0; i<image_list.length; i++) {
				String[] base64 = image_list[i].split(";base64,", 2);
				String[] img_format = base64[0].split("image/", 2);
				byte[] decoded = Base64.getDecoder().decode(base64[1]);
				
				try{
					String filename = getAlphaNumericString(); 
					filename = filename +"."+img_format[1];
					String uploadPath="F:/JSP Programming/J2EE/Recipe/src/main/webapp/upload_image/"+filename; 
					this.recipe_image_list.add(filename); 
					
					FileOutputStream fos=new FileOutputStream(uploadPath); 
					fos.write(decoded); 
					fos.close();
					Gson json = new Gson();
					this.recipe_image = json.toJson(this.recipe_image_list);
				} 
				catch(Exception e) {
				  	e.printStackTrace();
				  	System.out.println("image Not woring");
				}
			}
			
		}
		
		catch(Exception e) {
			e.printStackTrace();
			System.out.println("inside image post");
		}
	}
	public void set_main_image(Part image) {
		String imageFileName=image.getSubmittedFileName(); 
		String filename2 = getAlphaNumericString(); 
		this.recipe_main_image = filename2 + imageFileName;
		String uploadPath="F:/JSP Programming/J2EE/Recipe/src/main/webapp/upload_image/"+this.recipe_main_image; 
		
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
	} 
}
