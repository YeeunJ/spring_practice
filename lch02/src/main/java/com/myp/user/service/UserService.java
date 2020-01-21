package com.myp.user.service;

import com.myp.user.domain.UserVO;

public interface UserService {
	public UserVO login(UserVO dto);

	public UserVO register(UserVO dto);
}
