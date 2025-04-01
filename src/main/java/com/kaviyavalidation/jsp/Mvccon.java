package com.kaviyavalidation.jsp;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import jakarta.validation.Valid;

@Controller
public class Mvccon {
	@RequestMapping("/")
	public String home() {
		System.out.println("going to home..");
		return "index";
	}
	
	@GetMapping("/rgister")
	public String showForm(Model model) {
		System.out.println("going register form");
		User user=new User();
		model.addAttribute("user",user);
		return "Rgister-form";
	}
	
	@PostMapping("/register1")
	public String submitform(@Valid @ModelAttribute("user")User user,
		BindingResult	bindingResult)
	{
		System.out.println(user);
		
		if(bindingResult.hasErrors()) {
			
			return"Rgister-form";
				
		}
		else {
			return "register-sucess";
		}
	}

}
