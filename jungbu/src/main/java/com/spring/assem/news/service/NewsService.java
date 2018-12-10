package com.spring.assem.news.service;

import java.util.List;

import com.spring.assem.news.vo.NewsVO;

public interface NewsService {
	public List<NewsVO> getMoimNews() throws Exception;
}
