package com.whg.backend.service;

import java.util.List;

import com.whg.backend.bo.Contact;

public interface ContactService {

	void addContact(String name, String email, String address, String telephone);
	
	void deleteContact(int id);
	
	Contact findContact(int id);
	
	List<Contact> findAllContacts();
	
	void saveContact(int id, String name, String email, String address, String telephone);
	
}
