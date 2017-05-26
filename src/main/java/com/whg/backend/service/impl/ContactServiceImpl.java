package com.whg.backend.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.Assert;

import com.whg.backend.bo.Contact;
import com.whg.backend.repo.ContactRepo;
import com.whg.backend.service.ContactService;

@Service("ContactService")
public class ContactServiceImpl implements ContactService{

	@Autowired
	private ContactRepo contactRepo;
	
	@Override
	public void addContact(String name, String email, String address, String telephone) {
		Contact contact = new Contact(name, email, address, telephone);
		Assert.isTrue(contactRepo.addContact(contact));
	}
	
	@Override
	public void deleteContact(int id) {
		Assert.isTrue(contactRepo.deleteContact(id));
	}
	
	@Override
	public Contact findContact(int id) {
		return contactRepo.findContact(id);
	}
	
	@Override
	public List<Contact> findAllContacts() {
		return contactRepo.findAllContacts();
	}

	@Override
	public void saveContact(int id, String name, String email, String address, String telephone) {
		Contact contact = contactRepo.findContact(id);
		contact.fill(name, email, address, telephone);
		Assert.isTrue(contactRepo.saveContact(contact));
	}
	
}
