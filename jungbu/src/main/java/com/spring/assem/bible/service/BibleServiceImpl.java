package com.spring.assem.bible.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.spring.assem.home.dao.HomeDAO;
import com.spring.assem.home.model.SwjMainInfoVO;

@Service
public class BibleServiceImpl implements BibleService {

	@Inject
	private HomeDAO dao;

	@Override
	public List<SwjMainInfoVO> getSwjMainInfo() throws Exception {
		return dao.getSwjMainInfo();
	}

}
