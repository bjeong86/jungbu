package com.spring.assem.user.service;

import java.util.List;

import com.spring.assem.user.vo.UserVO;

public interface UserService {
	public List<UserVO> getUsers() throws Exception;
}
