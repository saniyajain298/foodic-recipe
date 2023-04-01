package com.Foodic.object;

import java.sql.ResultSet;
import java.sql.SQLException;

public class CommentObject {
	private String posted_by;
	private String time;
	private String comment;
	
	private void setPosted_by(String posted_by) {
		this.posted_by = posted_by;
	}
	private void setTime(String time) {
		this.time = time;
	}
	private void setComment(String comment) {
		this.comment = comment;
	}
	
	public void toObject(ResultSet result) throws SQLException {
		setPosted_by(result.getString("posted_by"));
		setTime(result.getString("comment_time"));
		setComment(result.getString("comment"));
	}
}
