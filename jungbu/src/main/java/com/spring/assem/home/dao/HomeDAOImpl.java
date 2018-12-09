package com.spring.assem.home.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.spring.assem.home.vo.ConnectingLogVO;
import com.spring.assem.home.vo.SwjMainInfoVO;

@Repository
public class HomeDAOImpl implements HomeDAO {

	@Inject
	private SqlSession sqlSession;

	private static final String Namespace = "com.spring.assem.home.mappers.HomeMapper";

	@Override
	public List<SwjMainInfoVO> getSwjMainInfo() throws Exception {
		return sqlSession.selectList(Namespace + ".getMainInfo");
	}

	@Override
	public void saveConnectingLog(String ip, String msg) throws Exception {
		ConnectingLogVO vo = new ConnectingLogVO();
		vo.setIp(ip);
		vo.setUserName(msg);
		sqlSession.insert(Namespace + ".insertConnectingLog", vo);
	}

	@Override
	public int getConnectingCount() throws Exception {
		ConnectingLogVO cvo = (ConnectingLogVO)sqlSession.selectList(Namespace + ".getConnectingCount").get(0);
		return cvo.getCount();
	}
	
	@Override
	public int getConnectingTotalCount() throws Exception {
		ConnectingLogVO cvo = (ConnectingLogVO)sqlSession.selectList(Namespace + ".getConnectingTotalCount").get(0);
		return cvo.getCount();
	}

}
