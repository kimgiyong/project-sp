package com.project.sp.service;

import java.util.List;

import com.project.sp.vo.userVO;

public interface LibService {
	
	public int userInsert(userVO user);
	public userVO userLogin(userVO user);
	public int userUpdate(userVO user);
	public int userDelete(int userNum);
	public List<userVO> userSelectList(userVO user);
	public userVO userSelect(int userNum);
}
