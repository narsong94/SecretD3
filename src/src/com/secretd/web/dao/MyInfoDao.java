package src.com.secretd.web.dao;

import src.com.secretd.web.entity.Member;

public interface MyInfoDao {
	Member get(String memberId);

	int update(String id, String email, String nickname);
}
