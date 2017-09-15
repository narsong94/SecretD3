package src.com.secretd.web.entity;

import java.sql.Date;

public class Letter {
	private int number;
	private String title;
	private Date date;
	private String id;
	private String chk;
	private String content;
	
	
	public Letter() {
		// TODO Auto-generated constructor stub
	}


	public Letter(int number, String title, Date date, String id, String chk, String content) {
		super();
		this.number = number;
		this.title = title;
		this.date = date;
		this.id = id;
		this.chk = chk;
		this.content = content;
	}


	public int getNumber() {
		return number;
	}


	public void setNumber(int number) {
		this.number = number;
	}


	public String getTitle() {
		return title;
	}


	public void setTitle(String title) {
		this.title = title;
	}


	public Date getDate() {
		return date;
	}


	public void setDate(Date date) {
		this.date = date;
	}


	public String getId() {
		return id;
	}


	public void setId(String id) {
		this.id = id;
	}


	public String getChk() {
		return chk;
	}


	public void setChk(String chk) {
		this.chk = chk;
	}


	public String getContent() {
		return content;
	}


	public void setContent(String content) {
		this.content = content;
	}
	
	
}
