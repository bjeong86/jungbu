package com.spring.assem.user.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.spring.assem.user.dao.UserDAO;
import com.spring.assem.user.vo.UserVO;

@Service
public class UserServiceImpl implements UserService {

	@Inject
	private UserDAO dao;

	@Override
	public List<UserVO> getUsers() throws Exception {
		return dao.getUsers();
	}



}
