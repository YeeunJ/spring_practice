package com.myp.user.persistence;

import com.myp.user.domain.UserVO;

public interface UserDAO {

	public UserVO login(UserVO dto);
	public UserVO register(UserVO dto);
	
}
