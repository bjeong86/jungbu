package com.spring.assem.student.dao;

import java.util.List;

import com.spring.assem.student.vo.StudentVO;

public interface StudentDAO {
	public List<StudentVO> getStudentInfo() throws Exception;
	
	public void saveStudentInfo(String contents) throws Exception;
}
