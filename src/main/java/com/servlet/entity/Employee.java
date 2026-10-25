package com.servlet.entity;

public class Employee {
	
	private String name;
	
	private String email;
	
	private String password;
	
	
	private String dep;
	
	private String gender;
	
	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	private String address;

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

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getDep() {
		return dep;
	}

	public void setDep(String dep) {
		this.dep = dep;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public Employee(String name, String email, String password, String dep, String gender, String address) {
		super();
		this.name = name;
		this.email = email;
		this.password = password;
		this.dep = dep;
		this.gender = gender;
		this.address = address;
	}

	public Employee() {
		super();
	}
	
	

}
