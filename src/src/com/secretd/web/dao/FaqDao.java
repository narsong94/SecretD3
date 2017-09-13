package src.com.secretd.web.dao;

import java.util.List;

import src.com.secretd.web.entity.Faq;

public interface FaqDao {

	List<Faq> get();
	Faq get(String id);

}
