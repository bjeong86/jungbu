package com.spring.assem.news.controller;

import java.util.Calendar;
import java.util.Locale;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.spring.assem.bible.service.BibleService;
import com.spring.assem.home.service.HomeService;
import com.spring.assem.news.service.NewsService;

@Controller
public class NewsController {

	private static final Logger logger = LoggerFactory.getLogger(NewsController.class);
	
	@Inject
	private NewsService service;

	@RequestMapping(value = "/news.do")
	public String news(HttpServletRequest request, Locale locale, Model model) throws Exception {
		logger.info("/news.do");
		
		model.addAttribute("moimNewsContents", service.getMoimNews());

		return "news/news";
	}
}
