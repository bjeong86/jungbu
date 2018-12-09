package com.spring.assem.home.service;

import java.util.List;

import com.spring.assem.home.vo.SwjMainInfoVO;

public interface HomeService {
	public List<SwjMainInfoVO> getSwjMainInfo() throws Exception;
	
	public void saveConnectingLog(String ip, String msg) throws Exception;
	
	public int getConnectingCount() throws Exception;
	
	public int getConnectingTotalCount() throws Exception;
}
