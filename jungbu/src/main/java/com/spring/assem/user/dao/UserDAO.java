package com.spring.assem.user.dao;

import java.util.List;

import com.spring.assem.user.vo.UserVO;

public interface UserDAO {
	public List<UserVO> getUsers() throws Exception;
}
