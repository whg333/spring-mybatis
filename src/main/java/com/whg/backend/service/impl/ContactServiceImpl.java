package com.whg.backend.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.whg.backend.bo.Contact;
import com.whg.backend.repo.ContactRepo;
import com.whg.backend.service.ContactService;

@Service("ContactService")
public class ContactServiceImpl implements ContactService{

	@Autowired
	private ContactRepo contactRepo;
	
	@Override
	public Map<String, Object> deleteContact(int id) {
		contactRepo.deleteContact(id);
		return findAllContacts();
	}
	
	@Override
	public Map<String, Object> findAllContacts() {
		List<Contact> contactList = contactRepo.findAllContacts();
		Map<String, Object> result = new HashMap<String, Object>();
		result.put("contactList", contactList);
		return result;
	}
	
}
