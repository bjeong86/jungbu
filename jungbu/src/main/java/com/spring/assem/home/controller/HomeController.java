package com.spring.assem.home.controller;

import java.util.List;
import java.util.Locale;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.spring.assem.home.model.SwjMainInfoVO;
import com.spring.assem.home.service.HomeService;

@Controller
public class HomeController {

	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);

	@Inject
	private HomeService service;

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) throws Exception {

		logger.info("Welcome home! The client locale is {}.", locale);
		List<SwjMainInfoVO> swjMainInfoVOList = service.getSwjMainInfo();
		model.addAttribute("swjMainInfoVOList", swjMainInfoVOList);

		for (SwjMainInfoVO s : swjMainInfoVOList) {
			if ("intro".equals(s.getCategory()))
				model.addAttribute("intro", s.getContents());
			else
				model.addAttribute("brethern", s.getContents());
		}

		return "home/index";
	}

}
