package src.com.secretd.web.dao;


import java.util.List;

import src.com.secretd.web.entity.Comment;
import src.com.secretd.web.entity.Counseling;

public interface CounselingDao {

	List<Counseling> getList();

	List<Counseling> getList(String category, int page);

	Counseling get(String number);

	List<Comment> getComment(String number);

	String getNickname(String memberId);

	int getCount(String number);

	int updateComment(String number, String content, String nickname);

	int updateHit(String number);

	List<Counseling> getList2(String category2, String content, int page);

	int getCount2(String categoryy,String content);
}