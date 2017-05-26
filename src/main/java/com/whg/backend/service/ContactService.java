package com.whg.backend.service;

import java.util.Map;

public interface ContactService {

	Map<String, Object> deleteContact(int id);
	
	Map<String, Object> findAllContacts();
	
}
