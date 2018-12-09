package com.spring.assem.contact.controller;

import java.util.List;
import java.util.Locale;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.spring.assem.home.service.HomeService;
import com.spring.assem.home.vo.SwjMainInfoVO;

@Controller
public class ContactController {

	private static final Logger logger = LoggerFactory.getLogger(ContactController.class);

	@Inject
	private HomeService service;

	@RequestMapping(value = "/contact.do", method = RequestMethod.GET)
	public String home(Locale locale, Model model) throws Exception {
		logger.info("/contact.do");
		return "contact/contact";
	}

}
