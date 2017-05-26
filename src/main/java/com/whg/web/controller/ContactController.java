package com.whg.web.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.whg.backend.bo.Contact;
import com.whg.backend.service.ContactService;

@Controller
@RequestMapping("/contactController")
public class ContactController {
	
	@Autowired
	private ContactService contactService;
	
	@RequestMapping(value="/newContact")
	public ModelAndView newContact(){
		return addOrUpdate(-1);
	}
	
	@RequestMapping(value="/addContact")
	public String addContact(@RequestParam String name, @RequestParam String email, 
			@RequestParam String address, @RequestParam String telephone){
		contactService.addContact(name, email, address, telephone);
		return "redirect:findAllContacts.do";
	}
	
	@RequestMapping(value="/deleteContact")
	public String deleteContact(@RequestParam int id){
		contactService.deleteContact(id);
		return "redirect:findAllContacts.do";
	}
	
	@RequestMapping(value="/editContact")
	public ModelAndView editContact(@RequestParam int id){
		return addOrUpdate(id);
	}
	
	private ModelAndView addOrUpdate(int id){
		boolean isEdit = id > 0;
		ModelAndView view = new ModelAndView("/WEB-INF/jsp/contact/edit");
		if(isEdit){
			Contact contact = contactService.findContact(id);
			view.addObject("contact", contact);
		}
		view.addObject("isEdit", isEdit);
		return view;
	}
	
	@RequestMapping(value="/findAllContacts")
	public ModelAndView findAllContacts(){
		List<Contact> contactList = contactService.findAllContacts();
		ModelAndView view = new ModelAndView("/WEB-INF/jsp/contact/index");
		view.addObject("contactList", contactList);
		return view;
	}
	
	@RequestMapping(value="/saveContact")
	public String saveContact(@RequestParam int id, @RequestParam String name, @RequestParam String email, 
			@RequestParam String address, @RequestParam String telephone){
		contactService.saveContact(id, name, email, address, telephone);
		return "redirect:findAllContacts.do";
	}
	
}
