package com.spring.assem.bible.dao;

import java.util.List;

import com.spring.assem.home.model.SwjMainInfoVO;

public interface BibleDAO {
	public List<SwjMainInfoVO> getSwjMainInfo() throws Exception;

}
