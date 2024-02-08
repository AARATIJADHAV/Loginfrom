package com.example.java.login.model;

import javax.persistence.Entity;

import javax.persistence.Id;

@Entity
public class Login {

public String username;
@Id
public String password;
public Login() {
	super();
	// TODO Auto-generated constructor stub
}
public Login(String username, String password) {
	super();
	this.username = username;
	this.password = password;
}
public String getUsername() {
	return username;
}
public void setUsername(String username) {
	this.username = username;
}
public String getPassword() {
	return password;
}
public void setPassword(String password) {
	this.password = password;
}
@Override
public String toString() {
	return "Login [username=" + username + ", password=" + password + "]";
}


}