package src.com.secretd.web.entity;

import java.sql.Date;

public class Letter {
	private int number;
	private Date date;
	private String title;
	private String content;
	private String writerId;
	private String check;
	
	public Letter() {
		// TODO Auto-generated constructor stub
	}
	public Letter(int number, Date date, String title, String content, String writerId, String check) {
		super();
		this.number = number;
		this.date = date;
		this.title = title;
		this.content = content;
		this.writerId = writerId;
		this.check = check;
	}
	public int getNumber() {
		return number;
	}
	public void setNumber(int number) {
		this.number = number;
	}
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getWriterId() {
		return writerId;
	}
	public void setWriterId(String writerId) {
		this.writerId = writerId;
	}
	public String getCheck() {
		return check;
	}
	public void setCheck(String check) {
		this.check = check;
	}
	
	
}
