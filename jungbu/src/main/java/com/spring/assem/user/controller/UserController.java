package com.spring.assem.user.controller;

import java.sql.Date;
import java.util.List;
import java.util.Locale;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.spring.assem.user.service.UserService;
import com.spring.assem.user.vo.UserVO;
import com.ibm.icu.util.Calendar;
import com.ibm.icu.util.ChineseCalendar;
import com.ibm.icu.util.GregorianCalendar;
import com.spring.assem.common.service.LogService;

@Controller
public class UserController {

	private static final Logger logger = LoggerFactory.getLogger(UserController.class);

	@Inject
	private UserService birthdayService;

	@Inject
	private LogService logService;

	@RequestMapping(value = "/user.do")
	public String user(HttpServletRequest request, Locale locale, Model model) throws Exception {
		logger.info("/user.do");
		logService.saveLog(request.getRemoteAddr(), request.getSession().getId(), "생일잔치");

		List<UserVO> arUser = birthdayService.getUsers();

		for (UserVO user : arUser) {
			if (user.getIsMoon()) {

				Calendar calendar = new GregorianCalendar(Locale.KOREA);
				int nYear = calendar.get(Calendar.YEAR);
				String date = nYear + "" + user.getMonth() + "" + user.getDay();
				String lunarDate = fromLunar(date);
				
				user.setMonth_moon(lunarDate.substring(4, 6));
				user.setDay_moon(lunarDate.substring(6));
			}
		}

		model.addAttribute("users", arUser);

		return "user/user";
	}

	static public String fromLunar(String yyyymmdd) {

		Calendar cal = Calendar.getInstance();
		ChineseCalendar cc = new ChineseCalendar();

		if (yyyymmdd == null)
			return "";

		String date = yyyymmdd.trim();
		if (date.length() != 8) {
			if (date.length() == 4) {
				date = date + "0101";
			} else if (date.length() == 6) {
				date = date + "01";
			} else if (date.length() > 8) {
				date = date.substring(0, 8);
			} else {
				return "";
			}
		}

		// ChinessCalendar.EXTENDED_YEAR 는 Calendar.YEAR 값과 2637 만큼의 차이를 가짐.
		cc.set(ChineseCalendar.EXTENDED_YEAR, Integer.parseInt(date.substring(0, 4)) + 2637);
		cc.set(ChineseCalendar.MONTH, Integer.parseInt(date.substring(4, 6)) - 1);
		cc.set(ChineseCalendar.DAY_OF_MONTH, Integer.parseInt(date.substring(6)));

		cal.setTimeInMillis(cc.getTimeInMillis());

		int y = cal.get(Calendar.YEAR);
		int m = cal.get(Calendar.MONTH) + 1;
		int d = cal.get(Calendar.DAY_OF_MONTH);

		StringBuffer sb = new StringBuffer();
		if (y < 1000)
			sb.append("0");
		else if (y < 100)
			sb.append("00");
		else if (y < 10)
			sb.append("000");
		sb.append(y);

		if (m < 10)
			sb.append("0");
		sb.append(m);

		if (d < 10)
			sb.append("0");
		sb.append(d);

		return sb.toString();
	}

}
