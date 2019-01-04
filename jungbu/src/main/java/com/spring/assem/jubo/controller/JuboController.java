package com.spring.assem.jubo.controller;

import java.util.List;
import java.util.Locale;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.spring.assem.jubo.service.JuboService;
import com.spring.assem.jubo.vo.JuboVO;

@Controller
public class JuboController {

	private static final Logger logger = LoggerFactory.getLogger(JuboController.class);

	@Inject
	private JuboService service;

	@RequestMapping(value = "/jubo.do")
	public String jubo(HttpServletRequest request, Locale locale, Model model) throws Exception {
		logger.info("/jubo.do");

		model.addAttribute("juboList", service.getJubo("2019"));

		return "jubo/jubo";
	}

	@RequestMapping(value = "/juboUpload.do")
	public String juboUpload(HttpServletRequest request, Locale locale, Model model) throws Exception {
		logger.info("/juboUpload.do");

		return "jubo/juboUpload";
	}

	@RequestMapping(value = "/juboFileUpload.do")
	public String juboFileUpload(HttpServletRequest request, Locale locale, Model model, @RequestParam("year") String year,
			@RequestParam("month") String month, @RequestParam("day") String day, @RequestParam("page") String page, @RequestParam("pwd") String pwd,
			@RequestParam("file1") MultipartFile file) throws Exception {
		logger.info("/juboFileUpload.do");

		JuboVO jubo = new JuboVO();
		jubo.setYear(year);
		jubo.setMonth(month);
		jubo.setDay(day);
		jubo.setPage(page);
		jubo.setRealFileName(file.getOriginalFilename());

		if ("1q2w3e4r".equals(pwd) && !"".equals(jubo.getPage()))
			service.juboFileUpload(file, jubo);

		return "jubo/juboUpload";
	}
}
