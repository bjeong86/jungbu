package com.spring.assem.news.dao;

import java.util.List;

import com.spring.assem.news.vo.NewsVO;

public interface NewsDAO {
	public List<NewsVO> getMoimNews() throws Exception;
}
