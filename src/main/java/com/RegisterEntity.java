package com;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity(name="register")
public class RegisterEntity {

	@Id
	String uname;
	
	String email;
	String password;
	String city;
	public RegisterEntity() {
		super();
	}
	public RegisterEntity(String uname, String email, String password, String city) {
		super();
		this.uname = uname;
		this.email = email;
		this.password = password;
		this.city = city;
	}
	public String getUname() {
		return uname;
	}
	public void setUname(String uname) {
		this.uname = uname;
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
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
}
