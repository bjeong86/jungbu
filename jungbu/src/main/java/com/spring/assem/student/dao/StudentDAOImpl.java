package com.spring.assem.student.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.spring.assem.student.vo.StudentVO;

@Repository
public class StudentDAOImpl implements StudentDAO {

	@Inject
	private SqlSession sqlSession;

	private static final String Namespace = "com.spring.assem.student.mapper.StudentMapper";

	@Override
	public List<StudentVO> getStudentInfo() throws Exception {
		return sqlSession.selectList(Namespace + ".getStudentInfo");
	}

	@Override
	public void saveStudentInfo(String contents) throws Exception {
		Map<String, Object> param = new HashMap<String, Object>();
		param.put("contents", contents);
		sqlSession.insert(Namespace + ".saveStudentInfo", param);
	}

}
