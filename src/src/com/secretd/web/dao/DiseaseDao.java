package src.com.secretd.web.dao;

import java.util.List;

import src.com.secretd.web.entity.Disease;

public interface DiseaseDao {

	List<Disease> getList(int page, String title, String category);

	int getCount(int page, String title, String category);

	void delete(String name);

	Disease get(String name);

	void edit(String code, String number, String name, String explanation, String picture);

	void insert(String code, String number, String name, String explanation, String picture);

}
