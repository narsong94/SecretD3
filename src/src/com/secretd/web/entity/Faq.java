package src.com.secretd.web.entity;

public class Faq {
	private String number;
	private String date;
	private String title;
	private String content;
	private String managerId;
	private String answer;
	
	public Faq() {
		// TODO Auto-generated constructor stub
	}

	public Faq(String number, String date, String title, String content, String managerId, String answer) {
		super();
		this.number = number;
		this.date = date;
		this.title = title;
		this.content = content;
		this.managerId = managerId;
		this.answer = answer;
	}

	public String getNumber() {
		return number;
	}

	public void setNumber(String number) {
		this.number = number;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
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

	public String getManagerId() {
		return managerId;
	}

	public void setManagerId(String managerId) {
		this.managerId = managerId;
	}

	public String getAnswer() {
		return answer;
	}

	public void setAnswer(String answer) {
		this.answer = answer;
	}
	
	
}
