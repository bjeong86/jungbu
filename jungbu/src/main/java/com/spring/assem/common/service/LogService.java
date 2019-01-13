package com.spring.assem.common.service;

import java.util.List;

import com.spring.assem.common.vo.LogVO;

public interface LogService {
	public List<LogVO> getLogs() throws Exception;
	
	public void saveLog(String ip, String sessionId, String url) throws Exception;
}
