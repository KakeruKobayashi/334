package model;

import java.sql.Date;

public class Course {
	private String courseName;
	private Date examDate;
	private String genre;
	private String courseComment;
	public String getCourseComment() {
		return courseComment;
	}
	public void setCourseComment(String courseComment) {
		this.courseComment = courseComment;
	}
	public String getCoursename() {
		return courseName;
	}
	public void setCoursename(String courseName) {
		this.courseName = courseName;
	}
	public Date getExamdate() {
		return examDate;
	}
	public void setExamdate(Date examDate) {
		this.examDate = examDate;
	}

//ジャンルのこと要相談
	public String getGenre() {
		return genre;
	}
	public void setGenre(String genre) {
		this.genre = genre;
	}


}
