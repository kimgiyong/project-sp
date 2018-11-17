package com.project.sp.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.sp.dao.LibDAO;
import com.project.sp.service.LibService;
import com.project.sp.vo.userVO;

@Service
public class LibServiceImpl implements LibService {

	@Autowired
	private LibDAO ld;
	
	@Override
	public int userInsert(userVO user) {
		return ld.userInsert(user);
	}

	@Override
	public userVO userLogin(userVO user) {
		return ld.userLogin(user);
	}

	@Override
	public int userUpdate(userVO user) {
		return ld.userUpdate(user);
	}

	@Override
	public int userDelete(int userNum) {
		return ld.userDelete(userNum);
	}

	@Override
	public List<userVO> userSelectList(userVO user) {
		return ld.userSelectList(user);
	}

	@Override
	public userVO userSelect(int userNum) {
		return ld.userSelect(userNum);
	}

}
