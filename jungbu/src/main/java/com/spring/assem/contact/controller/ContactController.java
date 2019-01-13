package com.spring.assem.contact.controller;

import java.util.List;
import java.util.Locale;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.spring.assem.common.service.LogService;
import com.spring.assem.home.service.HomeService;
import com.spring.assem.home.vo.SwjMainInfoVO;

@Controller
public class ContactController {

	private static final Logger logger = LoggerFactory.getLogger(ContactController.class);

	@Inject
	private HomeService service;
	
	@Inject
	private LogService logService;

	@RequestMapping(value = "/contact.do", method = RequestMethod.GET)
	public String contact(HttpServletRequest request, Locale locale, Model model) throws Exception {
		logger.info("/contact.do");
		logService.saveLog(request.getRemoteAddr(), request.getSession().getId(), "contact");
		
		return "contact/contact";
	}

}
