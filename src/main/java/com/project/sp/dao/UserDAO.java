package com.project.sp.dao;

import java.util.List;

import javax.servlet.http.HttpSession;

import com.project.sp.vo.UserVO;

public interface UserDAO {

	public int userInsert(UserVO user);
	public UserVO userLogin(UserVO user);
	public int userUpdate(UserVO user);
	public int userDelete(int userNum);
	public List<UserVO> userSelectList(UserVO user);
	public UserVO userSelect(int userNum);
	public String userSearchId(UserVO user);
	public String userSearchPwd(UserVO user);
}
