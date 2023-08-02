package model;

import java.sql.Date;

public class Cource {
	private String courcename;
	private Date examdate;
	private int category;
	public String getCourcename() {
		return courcename;
	}
	public void setCourcename(String courcename) {
		this.courcename = courcename;
	}
	public Date getExamdate() {
		return examdate;
	}
	public void setExamdate(Date examdate) {
		this.examdate = examdate;
	}
	public int getCategory() {
		return category;
	}
	public void setCategory(int category) {
		this.category = category;
	}


}
