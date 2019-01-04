package com.spring.assem.jubo.dao;

import java.util.List;

import com.spring.assem.jubo.vo.JuboVO;

public interface JuboDAO {
	public List<JuboVO> getJubo(String year) throws Exception;
	
	public void juboFileUpload(JuboVO jubo) throws Exception;
}
