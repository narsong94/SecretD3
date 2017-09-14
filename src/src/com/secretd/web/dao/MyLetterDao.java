package src.com.secretd.web.dao;

import java.util.List;

import src.com.secretd.web.entity.Answer;
import src.com.secretd.web.entity.Letter;

public interface MyLetterDao {
	List<Letter> getList(String memberId);

	Letter getQ(String memberId,int number);

	Answer getA(String memberId,int number);

	int insert(String memberId,int number,String title, String content);

	int getnum();
}
