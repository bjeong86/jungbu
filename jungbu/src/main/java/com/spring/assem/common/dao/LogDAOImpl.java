package com.spring.assem.common.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.spring.assem.common.vo.LogVO;
import com.spring.assem.home.vo.ConnectingLogVO;
import com.spring.assem.home.vo.SwjMainInfoVO;

@Repository
public class LogDAOImpl implements LogDAO {

	@Inject
	private SqlSession sqlSession;

	private static final String Namespace = "com.spring.assem.common.mappers.LogMapper";

	@Override
	public void saveLog(String ip, String sessionId, String url) throws Exception {
		LogVO vo = new LogVO();
		vo.setIp(ip);
		vo.setSessionId(sessionId);
		vo.setUrl(url);
		
		sqlSession.insert(Namespace + ".insertLog", vo);
	}

	@Override
	public List<LogVO> getLogs() throws Exception {
		return sqlSession.selectList(Namespace + ".getLogs");
	}
	
}
