package com.myp.user.persistence;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.myp.user.domain.UserVO;

@Repository
public class UserDAOImpl implements UserDAO {
	@Inject
	SqlSession sqlSession;
	String namespace = "com.myp.mapper.UserMapper";
	/** 
	 * 	login에 성공하면, 유저 정보를 담고 있는 UserVO 객체를 반환한다.
	 * */
	@Override
	public UserVO login(UserVO dto) {
		// Mapper의 namespace명.id : 자신에게 맞게 작성해서 넣는다.
		return sqlSession.selectOne(namespace + ".login", dto);
	}

	@Override
	public UserVO register(UserVO dto) {
		return sqlSession.selectOne(namespace + ".register", dto);
	}
}