package com.spring.assem.common.controller;

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
import com.spring.assem.common.vo.LogVO;

@Controller
public class LogController {

	private static final Logger logger = LoggerFactory.getLogger(LogController.class);

	@Inject
	private LogService service;

	@RequestMapping(value = "/log.do", method = RequestMethod.GET)
	public String log(HttpServletRequest request, Locale locale, Model model) throws Exception {

//		List<LogVO> logVOList = service.getLogs();
//		model.addAttribute("logVOList",  service.getLogs());
		model.addAttribute("logTotalViewList",  service.getLogTotalView());
		
		return "log/log";
	}

}
