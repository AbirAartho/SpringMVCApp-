package com.springMVC.jsp.controller;

import java.util.ArrayList;
import java.util.List;

//import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.springMVC.jsp.model.Student;
import com.springMVC.jsp.service.StudentService;


@Controller
public class controller {
	
	@Autowired
	public StudentService studentService;
	
	@GetMapping("/")
	public String getData(Model model) {
		
//		ArrayList<String> arrayList = new ArrayList<>();
//		arrayList.add("Baseball");
//		arrayList.add("Basketball");
//		arrayList.add("Cricket");
//		
//		model.addAttribute("list", arrayList);
//		model.addAttribute("name", "Hello Bangladesh!");
		
		List<Student> stuList = new ArrayList<>();
		stuList = studentService.getData();
		model.addAttribute("list", stuList);
		return "jsp/index";
	}
	
	@GetMapping("/form")
	public String viewForm(Model model) {
		model.addAttribute("command", new Student());
		return "view/add_form";
	}
	
	@PostMapping("/save-student")
	public String saveStaff(@ModelAttribute Student student) {
		studentService.save(student);
		return "redirect:/";
	}
	
	@GetMapping("/student-delete/{id}")
	public String deleteStaff(@PathVariable("id") Long id) {
		studentService.deleteData(id);
		return "redirect:/";
	}
	
	@GetMapping("/student-update/{id}")
	public String getStaff(@PathVariable("id") Long id) {
		ModelAndView mav = 
		Student student = studentService.getDataById(id);
		mav.addObject("command", student);
		return mav;
	}
		studentService.deleteData(id);
		return "redirect:/";
	

}
