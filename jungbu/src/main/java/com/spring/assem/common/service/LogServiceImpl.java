package com.spring.assem.common.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.spring.assem.common.dao.LogDAO;
import com.spring.assem.common.vo.LogVO;

@Service
public class LogServiceImpl implements LogService {

	@Inject
	private LogDAO dao;

	@Override
	public void saveLog(String ip, String sessionId, String url) throws Exception {
		dao.saveLog(ip, sessionId, url);
	}

	@Override
	public List<LogVO> getLogs() throws Exception {
		return dao.getLogs();
	}
}
