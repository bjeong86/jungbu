package com.spring.assem.plan.controller;

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

import com.spring.assem.bible.service.BibleService;
import com.spring.assem.plan.service.PlanService;
import com.spring.assem.plan.vo.PlanInfoVO;

/**
 * Handles requests for the application home page.
 */
@Controller
public class PlanController {
	
	private static final Logger logger = LoggerFactory.getLogger(PlanController.class);
	
	@Inject
	private PlanService service;
	
	@RequestMapping(value = "/plan.do")
	public String plan(Locale locale, Model model) throws Exception {
		logger.info("/plan.do");
		model.addAttribute("planInfo", service.getPlanInfoByYear("2019"));
		return "plan/plan";
	}
	
}
