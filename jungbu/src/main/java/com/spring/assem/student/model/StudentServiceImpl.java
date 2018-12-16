package com.spring.assem.student.model;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.spring.assem.student.dao.StudentDAO;
import com.spring.assem.student.vo.StudentVO;

@Service
public class StudentServiceImpl implements StudentService {

	@Inject
	private StudentDAO dao;

	@Override
	public List<StudentVO> getStudentInfo() throws Exception {
		return dao.getStudentInfo();
	}

	@Override
	public void saveStudentInfo(String contents) throws Exception {
		dao.saveStudentInfo(contents);
	}

}
