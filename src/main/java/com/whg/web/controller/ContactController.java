package com.whg.web.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.whg.backend.service.ContactService;

@Controller
@ResponseBody
@RequestMapping("/contactController")
public class ContactController {
	
	@Autowired
	private ContactService contactService;

	@RequestMapping(value="/findAllContacts")
	public Map<String, Object> findAllContacts(){
		return contactService.findAllContacts();
	}
	
//	@RequestMapping(value="/findContactList")
//	public Map<String, Object> findContactList(@RequestParam int id){
//		return contactService.findContactList(id);
//	}
	
}
