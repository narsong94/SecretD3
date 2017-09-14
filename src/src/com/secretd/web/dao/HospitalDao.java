package src.com.secretd.web.dao;

import java.util.List;

import src.com.secretd.web.entity.Hospital;

public interface HospitalDao{

	List<Hospital> getList(int page, String query);

	int getCount();

	int delete(String string);

	int insert(String subject, String name, String address, String phone_number);

	Hospital get(String h_id);

	int edit(String h_id, String subject, String name, String address, String phone_number);

}
