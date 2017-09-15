package src.com.secretd.web.dao;

import java.util.List;

import src.com.secretd.web.entity.Notice;
import src.com.secretd.web.entity.NoticeView;

public interface NoticeDao {
	List<Notice> getList(int page,String query);
	int getCount();
	Notice get(String id);
	void edit(String id, String title, String content);
	void insert(String title, String content);
	void delete(String id);
}
