package com.project.sp.service;

import java.util.List;

import javax.servlet.http.HttpSession;

import com.project.sp.vo.UserVO;

public interface UserService {
	
	public int userInsert(UserVO user);
	public UserVO userLogin(UserVO user);
	public int userUpdate(UserVO user);
	public int userDelete(int userNum);
	public List<UserVO> userSelectList(UserVO user);
	public UserVO userSelect(int userNum);
	public String userSearchId(UserVO user);
	public String userSearchPwd(UserVO user);
	public int userUpdatePwd(UserVO user);
}
