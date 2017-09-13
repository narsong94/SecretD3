package src.com.secretd.web.dao;

import src.com.secretd.web.entity.Letter;

public interface LetterDao {

	Letter insert(String title, String writerId, String content);

	Letter get(String id);
}
