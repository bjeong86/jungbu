package com.spring.assem.bible.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.spring.assem.home.model.SwjMainInfoVO;

@Repository
public class BIbleDAOImpl implements BibleDAO {

	@Inject
	private SqlSession sqlSession;

	private static final String Namespace = "com.spring.assem.home.mappers.HomeMapper";

	@Override
	public List<SwjMainInfoVO> getSwjMainInfo() throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.selectList(Namespace + ".getMainInfo");
	}

}
