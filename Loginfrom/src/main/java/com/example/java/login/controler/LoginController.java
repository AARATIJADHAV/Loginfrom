package com.example.java.login.controler;

import org.hibernate.Session;

import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.example.java.login.model.Login;

@Controller
public class LoginController {
	@Autowired
	SessionFactory sf;
	@RequestMapping("/")
	public String index() {
		return "SignIn";
	}
	@RequestMapping("login")
	public String homePage1() {
		return "SignIn";
	}
	@RequestMapping("SignIn")
	public String userlogindatabase(Login  login,Model model) {
		Session s=sf.openSession();
		Login dblogin=s.get(Login.class, login.password);
		
		String message=null;
		if(dblogin!=null) {
		if(login.getUsername().equals(dblogin.username)){
			return"SignIn";//true
		}else {
			return "SignIn";//false
		}
		}else {
		message="invalid username and password";
		model.addAttribute("msg",message);
		System.out.println(message);
		}
		return"SignIn";
	}
	
	@RequestMapping("createaccountpage")
	public String createaccount1() {
		return "createaccount";
	}
	@RequestMapping("createaccount")
	public String createaccountDatabase(Login login) {
		Session s=sf.openSession();
		Transaction t=s.beginTransaction();
		s.save(login);
		t.commit();
		return "createaccount";
	}
	
}









