package com.spring.assem.jubo.service;

import java.util.List;

import org.springframework.web.multipart.MultipartFile;

import com.spring.assem.jubo.vo.JuboVO;

public interface JuboService {
	public List<JuboVO> getJubo(String year) throws Exception;
	
	public void juboFileUpload(MultipartFile multipartFile, JuboVO jubo) throws Exception;
}
