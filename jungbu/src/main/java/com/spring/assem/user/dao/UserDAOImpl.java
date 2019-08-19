
package com.spring.assem.user.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.spring.assem.user.vo.UserVO;

@Repository
public class UserDAOImpl implements UserDAO {

	@Inject
	private SqlSession sqlSession;

	private static final String Namespace = "com.spring.assem.user.mapper.BirthdayMapper";

	@Override
	public List<UserVO> getUsers() throws Exception {
		return sqlSession.selectList(Namespace + ".getUsers");
	}

}
