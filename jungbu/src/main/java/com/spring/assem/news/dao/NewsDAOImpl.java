
package com.spring.assem.news.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.spring.assem.news.vo.NewsVO;

@Repository
public class NewsDAOImpl implements NewsDAO {

	@Inject
	private SqlSession sqlSession;

	private static final String Namespace = "com.spring.assem.news.mapper.NewsMapper";

	@Override
	public List<NewsVO> getMoimNews() throws Exception {
		return sqlSession.selectList(Namespace + ".getMoimNews");
	}

}
