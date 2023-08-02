package model;

import java.sql.Date;

public class User {
	private String nickname;
	private String fullname;
	private Date birthday;
	private String occpation;
	private String field;
	private int personalQuestionResult;
	public String getNickname() {
		return nickname;
	}
	public void setNickname(String nickname) {
		this.nickname = nickname;
	}
	public String getFullname() {
		return fullname;
	}
	public void setFullname(String fullname) {
		this.fullname = fullname;
	}
	public Date getBirthday() {
		return birthday;
	}
	public void setBirthday(Date birthday) {
		this.birthday = birthday;
	}
	public String getOccpation() {
		return occpation;
	}
	public void setOccpation(String occpation) {
		this.occpation = occpation;
	}
	public String getField() {
		return field;
	}
	public void setField(String field) {
		this.field = field;
	}
	public int getPersonalQuestionResult() {
		return personalQuestionResult;
	}
	public void setPersonalQuestionResult(int personalQuestionResult) {
		this.personalQuestionResult = personalQuestionResult;
	}
}
