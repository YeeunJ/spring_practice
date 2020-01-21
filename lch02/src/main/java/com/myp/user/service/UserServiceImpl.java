package com.myp.user.service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.myp.user.domain.UserVO;
import com.myp.user.persistence.UserDAO;

@Service
public class UserServiceImpl implements UserService {
	@Inject
	UserDAO dao;
	
	@Override
	public UserVO login(UserVO dto) {
		return dao.login(dto);
	}

	@Override
	public UserVO register(UserVO dto) {
		return dao.register(dto);
	}
}