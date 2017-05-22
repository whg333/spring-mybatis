package com.whg.backend.repo;

import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Options;
import org.apache.ibatis.annotations.ResultMap;
import org.apache.ibatis.annotations.Select;

import com.whg.backend.bo.Contact;

public interface ContactRepo {

	Contact findContact(int id);

	boolean addContact(Contact contact);
	
	boolean saveContact(Contact contact);
	
	List<Contact> findAllContacts();
	
	int findMaxContactId();
	
}
