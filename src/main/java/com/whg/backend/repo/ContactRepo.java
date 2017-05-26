package com.whg.backend.repo;

import java.util.List;

import com.whg.backend.bo.Contact;

public interface ContactRepo {

	boolean addContact(Contact contact);
	
	boolean deleteContact(int id);
	
	Contact findContact(int id);
	
	List<Contact> findAllContacts();
	
	boolean saveContact(Contact contact);
	
	int findMaxContactId();
	
}
