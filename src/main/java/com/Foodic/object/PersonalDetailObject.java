package com.Foodic.object;

import java.sql.ResultSet;
import java.sql.SQLException;

public class PersonalDetailObject {
	private String name;
	private String username;
	private String email;
	private String mobile;
	private String about;
	private String gender;
	private String dob;
	private String location;
	private String profile;
	
	public void toObject(ResultSet result) throws SQLException {
		this.name = result.getString("name");
		this.username = result.getString("username");
		this.email = result.getString("email");
		this.mobile = result.getString("mobile");
		this.about = result.getString("about");
		this.gender = result.getString("gender");
		this.dob = result.getString("dob");
		this.location = result.getString("location");
		this.profile = result.getString("profile");
		
	}
}
