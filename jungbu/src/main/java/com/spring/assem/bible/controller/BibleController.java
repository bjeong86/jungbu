package com.spring.assem.bible.controller;

import java.util.Calendar;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

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
	public String bible(HttpServletRequest request, Locale locale, Model model, @RequestParam(value = "day", defaultValue = "0") long day)
			throws Exception {
		logger.info("/bible.do");
		homeservice.saveConnectingLog(request.getRemoteAddr(), "bible");

		long dayCount = day;
		boolean isToday = false;

		if (dayCount == 0L || dayCount == getDayCount()) {
			dayCount = getDayCount();
			isToday = true;
		}

		model.addAttribute("bibleContentsBf", service.getBibleContentsByDay(dayCount - (long) 1));
		model.addAttribute("bibleScheduleBf", service.getBibleScheduleByDay(dayCount - (long) 1));

		model.addAttribute("bibleContents", service.getBibleContentsByDay(dayCount));
		model.addAttribute("bibleSchedule", service.getBibleScheduleByDay(dayCount));

		model.addAttribute("bibleContentsAf", service.getBibleContentsByDay(dayCount + (long) 1));
		model.addAttribute("bibleScheduleAf", service.getBibleScheduleByDay(dayCount + (long) 1));

		model.addAttribute("dayCount", dayCount);
		model.addAttribute("isToday", isToday);

		model.addAttribute("connectingCount", homeservice.getConnectingCount());
		model.addAttribute("connectingTotalCount", homeservice.getConnectingTotalCount());

		return "bible/bible";
	}

	@RequestMapping(value = "/bibleAllView.do")
	public String bibleAllView(HttpServletRequest request, Locale locale, Model model) throws Exception {
		logger.info("/bibleAllView.do");

		return "bible/bibleAllView";
	}

	@ResponseBody
	@RequestMapping(value = "/getBibleByDay.json")
	public Map<String, Object> getBibleByDay(HttpServletRequest request, Locale locale, Model model,
			@RequestParam(value = "day", defaultValue = "0") long day) throws Exception {
		logger.info("/getBibleByDay.json?day=" + day);

		Map<String, Object> map = new HashMap<String, Object>();
		map.put("bibleContentsAll", service.getBibleContentsByDay(day));
		map.put("bibleScheduleAll", service.getBibleScheduleByDay(day));

		return map;
	}

	public static long getDayCount() {
		Calendar sday = Calendar.getInstance();
		Calendar today = Calendar.getInstance();
		sday.set(2017, Calendar.DECEMBER, 31);

		long l_sday = sday.getTimeInMillis() / (24 * 60 * 60 * 1000);
		long l_today = today.getTimeInMillis() / (24 * 60 * 60 * 1000);

		return (l_today - l_sday) % 365;
	}
}
