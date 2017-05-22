package com.whg.backend.bo;

public class Contact {
	
	private int id;
	private String name;
	private String email;
	private String address;
	private String telephone;
	
	public Contact(int id, String name) {
		this.id = id;
		this.name = name;
		this.email = name+"@dataguru.cn";
		this.address = name+"_address";
		this.telephone = name+"_telephone";
	}

	@Override
	public String toString() {
		return "Contact [id=" + id + ", name=" + name + ", email=" + email + ", address=" + address + ", telephone="
				+ telephone + "]";
	}
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getTelephone() {
		return telephone;
	}
	public void setTelephone(String telephone) {
		this.telephone = telephone;
	}
}
