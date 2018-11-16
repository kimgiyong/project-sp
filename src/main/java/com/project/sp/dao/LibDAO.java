package com.project.sp.dao;

import com.project.sp.vo.userVO;

public interface LibDAO {

	public int userInsert(userVO user);
	public userVO userLogin(userVO user);
	public int userUpdate(userVO user);
	public int userDelete(int userNum);
	public userVO userSelectList(userVO user);
	public userVO userSelect(int userNum);
}
