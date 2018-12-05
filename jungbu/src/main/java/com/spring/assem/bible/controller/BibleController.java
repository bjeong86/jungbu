package com.spring.assem.bible.controller;

import java.text.DateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.spring.assem.bible.service.BibleService;

/**
 * Handles requests for the application home page.
 */
@Controller
public class BibleController {
	
	private static final Logger logger = LoggerFactory.getLogger(BibleController.class);
	
	@Inject
	private BibleService service;
	
	@RequestMapping(value = "/bible.do")
	public String bible(Locale locale, Model model) {
		logger.info("/bible.do");
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		
//		List<SwjMainInfoVO> swjMainInfoVOList = service.getSwjMainInfo();
//		model.addAttribute("swjMainInfoVOList", swjMainInfoVOList);
//
//		for (SwjMainInfoVO s : swjMainInfoVOList) {
//			if ("intro".equals(s.getCategory()))
//				model.addAttribute("intro", s.getContents());
//			else
//				model.addAttribute("brethern", s.getContents());
//		}
		
		return "bible/bible";
	}
	
}
