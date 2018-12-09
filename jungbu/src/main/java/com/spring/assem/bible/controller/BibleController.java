package com.spring.assem.bible.controller;

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

@Controller
public class BibleController {

	private static final Logger logger = LoggerFactory.getLogger(BibleController.class);

	@Inject
	private HomeService homeservice;
	
	@Inject
	private BibleService service;

	@RequestMapping(value = "/bible.do")
	public String bible(HttpServletRequest request, Locale locale, Model model) throws Exception {
		logger.info("/bible.do");
		homeservice.saveConnectingLog(request.getRemoteAddr(), "bible");
		
		model.addAttribute("bibleContentsBf", service.getBibleContentsByDay(getDayCount()-(long)1));
		model.addAttribute("bibleScheduleBf", service.getBibleScheduleByDay(getDayCount()-(long)1));
		
		model.addAttribute("bibleContents", service.getBibleContentsByDay(getDayCount()));
		model.addAttribute("bibleSchedule", service.getBibleScheduleByDay(getDayCount()));
		
		model.addAttribute("bibleContentsAf", service.getBibleContentsByDay(getDayCount()+(long)1));
		model.addAttribute("bibleScheduleAf", service.getBibleScheduleByDay(getDayCount()+(long)1));
		
		model.addAttribute("connectingCount", homeservice.getConnectingCount());
		model.addAttribute("connectingTotalCount", homeservice.getConnectingTotalCount());

		return "bible/bible";
	}
	
	public static long getDayCount(){
		Calendar sday = Calendar.getInstance();
		Calendar today = Calendar.getInstance();
		sday.set(2017, Calendar.DECEMBER,31);
		
		long l_sday = sday.getTimeInMillis() / (24*60*60*1000);
		long l_today = today.getTimeInMillis() / (24*60*60*1000);
		
		return (l_today - l_sday)%365;
	}
}
