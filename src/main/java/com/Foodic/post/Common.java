package com.Foodic.post;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Calendar;

public class Common {
	public static String getImageName() {
		String AlphaNumericString = "ABCDEFGHIJKLMNOPQRSTUVWXYZ" + "0123456789" + "abcdefghijklmnopqrstuvxyz";
		StringBuilder sb = new StringBuilder(10);
		for (int i = 0; i < 10; i++) {
			int index = (int) (AlphaNumericString.length() * Math.random());
			sb.append(AlphaNumericString.charAt(index));
		}
		return sb.toString();
	} 
	public static String dateTime() {
		DateFormat dateFormat1 = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
		Calendar cal = Calendar.getInstance();
		String current_datetime = dateFormat1.format(cal.getTime());
		return current_datetime;
		
	}
}
