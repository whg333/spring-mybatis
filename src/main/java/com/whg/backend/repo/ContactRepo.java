package com.whg.backend.repo;

import java.util.List;

import com.whg.backend.bo.Contact;

public interface ContactRepo {

	Contact findContact(int id);

	boolean addContact(Contact contact);
	
	boolean saveContact(Contact contact);
	
	List<Contact> findAllContacts();
	
	int findMaxContactId();
	
	boolean deleteContact(int id);
	
}
