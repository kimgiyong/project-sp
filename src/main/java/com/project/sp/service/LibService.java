package com.project.sp.service;

import com.project.sp.vo.userVO;

public interface LibService {
	
	public int userInsert(userVO user);
	public userVO userLogin(userVO user);
	public int userUpdate(userVO user);
	public int userDelete(int userNum);
	public userVO userSelectList(userVO user);
	public userVO userSelect(int userNum);
}
