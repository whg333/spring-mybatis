package com.whg.backend.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Service;

import com.whg.backend.bo.Contact;

@Service
public class ContactService {

	public Map<String, Object> findContactList(int id) {
		Map<String, Object> result = new HashMap<String, Object>();
		List<Contact> contactList = new ArrayList<Contact>();
		contactList.add(new Contact(1, "whg"));
		contactList.add(new Contact(2, "geym"));
		result.put("contactList", contactList);
		return result;
	}
	
}
