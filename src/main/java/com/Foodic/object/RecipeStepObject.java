package com.Foodic.object;

public class RecipeStepObject {
	private int column;
	private String value;
	private void setColumn(int column) {
		this.column = column;
	}
	private void setValue(String value) {
		this.value = value;
	}
	public void toObject(int column, String value){
		setColumn(column);
		setValue(value);
	}
}
