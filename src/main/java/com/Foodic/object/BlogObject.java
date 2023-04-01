package com.Foodic.object;

import java.sql.ResultSet;
import java.sql.SQLException;

public class BlogObject {
	private String blog_id;
	private String title;
	private String time;
	private String image;
	private String blog_content;
	private String hashtag;
	private String postedBy;
	private String profile;
	
	public void toObject(ResultSet result) throws SQLException {
		this.blog_id = result.getString("blog_id");
		this.title = result.getString("title");
		this.time = result.getString("time");
		this.image = result.getString("image");
		this.blog_content = result.getString("blog_content");
		this.hashtag = result.getString("hashtag");
		this.postedBy = result.getString("username");
		this.profile = result.getString("profile");
	}
	
}