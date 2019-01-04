
package com.spring.assem.jubo.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.spring.assem.jubo.vo.JuboVO;

@Repository
public class JuboDAOImpl implements JuboDAO {

	@Inject
	private SqlSession sqlSession;

	private static final String Namespace = "com.spring.assem.jubo.mapper.JuboMapper";
	
	@Override
	public List<JuboVO> getJubo(String year) throws Exception {
		Map<String, Object> param = new HashMap<String, Object>();
		param.put("year", year);
		
		return sqlSession.selectList(Namespace + ".getJubo", param);
	}

	@Override
	public void juboFileUpload(JuboVO jubo) throws Exception {
		Map<String, Object> param = new HashMap<String, Object>();
		param.put("year", jubo.getYear());
		param.put("month", jubo.getMonth());
		param.put("day", jubo.getDay());
		param.put("page", jubo.getPage());
		param.put("url", jubo.getUrl());
		param.put("realFileName", jubo.getRealFileName());
		param.put("genSaveFileName", jubo.getGenSaveFileName());

		sqlSession.insert(Namespace + ".juboFileUpload", param);
	}

}
