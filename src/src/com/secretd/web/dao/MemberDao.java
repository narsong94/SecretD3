package src.com.secretd.web.dao;


import src.com.secretd.web.entity.Member;

public interface MemberDao {
	
	int insert(String id, String pwd, String name, String email, String nickname);
	
	Member get(String id);

	int edit(String id, String pwd);

	boolean duplicateIdCheck(String id);

	String get(String name, String email);

	String get(String id, String name, String email);

	Member getRole(String id);

}