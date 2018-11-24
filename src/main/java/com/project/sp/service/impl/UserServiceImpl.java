package com.project.sp.service.impl;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.sp.dao.UserDAO;
import com.project.sp.service.UserService;
import com.project.sp.vo.UserVO;

@Service
public class UserServiceImpl implements UserService {

	@Autowired
	private UserDAO ld;
	
	@Override
	public int userInsert(UserVO user) {
		return ld.userInsert(user);
	}

	@Override
	public UserVO userLogin(UserVO user) {
		return ld.userLogin(user);
	}

	@Override
	public int userUpdate(UserVO user) {
		return ld.userUpdate(user);
	}

	@Override
	public int userDelete(int userNum) {
		return ld.userDelete(userNum);
	}

	@Override
	public List<UserVO> userSelectList(UserVO user) {
		return ld.userSelectList(user);
	}

	@Override
	public UserVO userSelect(int userNum) {
		return ld.userSelect(userNum);
	}

}
