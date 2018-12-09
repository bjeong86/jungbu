
package com.spring.assem.bible.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.spring.assem.bible.vo.BibleContentsVO;
import com.spring.assem.bible.vo.BibleScheduleVO;
import com.spring.assem.home.vo.SwjMainInfoVO;

@Repository
public class BibleDAOImpl implements BibleDAO {

	@Inject
	private SqlSession sqlSession;

	private static final String Namespace = "com.spring.assem.bible.mapper.BibleMapper";

	@Override
	public List<BibleContentsVO> getBibleContentsByDay(long day) throws Exception {
		Map<String, Object> param = new HashMap<>();
		param.put("day", day);

		return sqlSession.selectList(Namespace + ".getBibleContentsByDay", param);
	}

	@Override
	public List<BibleScheduleVO> getBibleScheduleByDay(long day) throws Exception {
		Map<String, Object> param = new HashMap<>();
		param.put("day", day);

		return sqlSession.selectList(Namespace + ".getBibleScheduleByDay", param);
	}

}
