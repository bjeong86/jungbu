package com.spring.assem.plan.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.spring.assem.plan.vo.PlanInfoVO;

@Repository
public class PlanDAOImpl implements PlanDAO {

	@Inject
	private SqlSession sqlSession;

	private static final String Namespace = "com.spring.assem.plan.mapper.PlanMapper";

	@Override
	public List<PlanInfoVO> getPlanInfoByYear(String year) throws Exception {
		Map<String, Object> param = new HashMap<>();
		param.put("year", year);
		return sqlSession.selectList(Namespace + ".getPlanInfoByYear", param);
	}

}
