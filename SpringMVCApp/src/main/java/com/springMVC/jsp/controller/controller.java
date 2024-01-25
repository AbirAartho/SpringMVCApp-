package com.springMVC.jsp.controller;

import java.util.ArrayList;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;


@Controller
public class controller {
	
	@GetMapping("/")
	public String getData(Model model) {
		
		ArrayList<String> arrayList = new ArrayList<>();
		arrayList.add("Baseball");
		arrayList.add("Basketball");
		arrayList.add("Cricket");
		
		model.addAttribute("list", arrayList);
		model.addAttribute("name", "Hello Bangladesh!");
		return "index";
	}
	
	@GetMapping("/form")
	public String viewForm() {
		return "add_form";
	}
	

}
