package com.whg.backend.repo.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.whg.backend.bo.Contact;
import com.whg.backend.repo.ContactRepo;
import com.whg.backend.repo.mapper.ContactMapper;

@Repository("contactRepo")
public class ContactRepoImpl implements ContactRepo{

	@Autowired
	private ContactMapper contactMapper;

	@Override
	public Contact findContact(int id) {
		return contactMapper.selectById(id);
	}

	@Override
	public boolean addContact(Contact contact) {
		return contactMapper.insert(contact) == 1;
	}

	@Override
	public boolean saveContact(Contact contact) {
		return contactMapper.update(contact) == 1;
	}

	@Override
	public List<Contact> findAllContacts() {
		return contactMapper.selectAll();
	}

	@Override
	public int findMaxContactId() {
		return contactMapper.selectMaxId();
	}
	
}
