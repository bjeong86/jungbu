package com.spring.assem.student.model;

import java.util.List;

import com.spring.assem.student.vo.StudentVO;

public interface StudentService {
	public List<StudentVO> getStudentInfo() throws Exception;
	
	public void saveStudentInfo(String contents) throws Exception;
}
