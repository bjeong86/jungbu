package com.spring.assem.home.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.spring.assem.home.dao.HomeDAO;
import com.spring.assem.home.vo.SwjMainInfoVO;

@Service
public class HomeServiceImpl implements HomeService {

	@Inject
	private HomeDAO dao;

	@Override
	public List<SwjMainInfoVO> getSwjMainInfo() throws Exception {
		return dao.getSwjMainInfo();
	}

	@Override
	public int getConnectingCount() throws Exception {
		return dao.getConnectingCount();
	}

	@Override
	public int getConnectingTotalCount() throws Exception {
		return dao.getConnectingTotalCount();
	}

}
