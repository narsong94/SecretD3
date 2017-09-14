package src.com.secretd.web.dao;

import java.util.List;

import src.com.secretd.web.entity.Comment;
import src.com.secretd.web.entity.Counseling;

public interface MyCounselingDao {
	List<Counseling> getList(String memberId);

	int delete(String num);

	List<Comment> getComment(String memberId);

	int deleteComment(String num);
}
