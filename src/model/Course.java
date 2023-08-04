package model;

import java.sql.Date;

public class Course {
	private String coursename;
	private Date examdate;
	private int category;
	public String getCoursename() {
		return coursename;
	}
	public void setCoursename(String coursename) {
		this.coursename = coursename;
	}
	public Date getExamdate() {
		return examdate;
	}
	public void setExamdate(Date examdate) {
		this.examdate = examdate;
	}

//ジャンルのこと要相談
	public int getCategory() {
		return category;
	}
	public void setCategory(int category) {
		this.category = category;
	}


}
