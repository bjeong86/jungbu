package com.spring.assem.home.dao;

import java.util.List;

import com.spring.assem.home.vo.SwjMainInfoVO;

public interface HomeDAO {
	public List<SwjMainInfoVO> getSwjMainInfo() throws Exception;
	
	public int getConnectingCount() throws Exception;
	
	public int getConnectingTotalCount() throws Exception;

}
