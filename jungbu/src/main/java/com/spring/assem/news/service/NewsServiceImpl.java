package com.spring.assem.news.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.spring.assem.news.dao.NewsDAO;
import com.spring.assem.news.vo.NewsVO;

@Service
public class NewsServiceImpl implements NewsService {

	@Inject
	private NewsDAO dao;

	@Override
	public List<NewsVO> getMoimNews() throws Exception {
		return dao.getMoimNews();
	}

}
