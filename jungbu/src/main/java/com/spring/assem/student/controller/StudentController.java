package com.spring.assem.student.controller;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.spring.assem.student.model.StudentService;

/**
 * Handles requests for the application home page.
 */
@Controller
public class StudentController {

	private static final Logger logger = LoggerFactory.getLogger(StudentController.class);

	@Inject
	private StudentService service;

	@RequestMapping(value = "/student.do")
	public String student(Locale locale, Model model) throws Exception {
		logger.info("/student.do");
		model.addAttribute("studentInfo", service.getStudentInfo());
		return "student/student";
	}

	@RequestMapping(value = "/saveStudent.do", method = RequestMethod.POST)
	public String saveStudent(@RequestParam(value = "studentText") String studentText, @RequestParam(value = "pwd") String pwd, Locale locale,
			Model model) throws Exception {
		logger.info("/saveStudent.do");
		
		if ("1q2w3e4r".equals(pwd)) {
			studentText = studentText.replaceAll("\r\n", "<br/>");
			service.saveStudentInfo(studentText);
		}

		model.addAttribute("studentInfo", service.getStudentInfo());
		return "redirect:student.do";
	}

}
