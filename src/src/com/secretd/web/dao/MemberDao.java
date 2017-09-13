package src.com.secretd.web.dao;


import src.com.secretd.web.entity.Member;

public interface MemberDao {
	
	int insert(String id, String pwd, String name, String email, String nickname);
	
	Member get(String id);

}