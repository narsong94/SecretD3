package src.com.secretd.web.entity;
public class Member {

	private String id;
	private String pwd;
	private String nickname;
	private String name;
	private String email;
	private String role;
	/*private boolean docCheck;*/
	
	public Member() {
		
	}
	
	public Member(String id, String pwd, String nickname, String name, String email, String role) {
		super();
		this.id = id;
		this.pwd = pwd;
		this.nickname = nickname;
		this.name = name;
		this.email = email;
		this.role = role;
	}

	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPwd() {
		return pwd;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getNickname() {
		return nickname;
	}
	public void setNickname(String nickname) {
		this.nickname = nickname;
	}

	public String getRole() {
		return role;
	}

	public void setRole(String role) {
		this.role = role;
	}
	
	
}