package com.project.sp.dao.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.project.sp.dao.UserDAO;
import com.project.sp.util.SendMail;
import com.project.sp.vo.UserVO;

@Repository
public class UserDAOImpl implements UserDAO {

	@Autowired
	private SqlSession ss;
	
	@Override
	public int userInsert(UserVO user) {
		String userId = ss.selectOne("com.project.sp.USER.userCheck",user.getUserId());
		if(userId == null || userId == "") {
			return ss.insert("com.project.sp.USER.userInsert",user);
		}else {
			return 2;
		}
	}

	@Override
	public UserVO userLogin(UserVO user) {
		return ss.selectOne("com.project.sp.USER.userLogin",user);
	}

	@Override
	public int userUpdate(UserVO user) {
		return ss.update("com.project.sp.USER.userUpdate",user);
	}

	@Override
	public int userDelete(int userNum) {
		return ss.delete("com.project.sp.USER.userDelete",userNum);
	}

	@Override
	public List<UserVO> userSelectList(UserVO user) {
		return ss.selectList("com.project.sp.USER.userSelectList",user);
	}

	@Override
	public UserVO userSelect(int userNum) {
		return ss.selectOne("com.project.sp.USER.userSelect",userNum);
	}

	@Override
	public String userSearchId(UserVO user) {
		return ss.selectOne("com.project.sp.USER.userSearchId",user);
	}

	@Override
	public String userSearchPwd(UserVO user) {
		UserVO us = ss.selectOne("com.project.sp.USER.userSearchPassword",user);
		if(us==null) {
			return "fail";
		}else {
			SendMail sm = new SendMail();
			return sm.send(us.getUserId(),us.getUserName());
		//	return "sss";
		}
	}

	@Override
	public int userUpdatePwd(UserVO user) {
		return ss.update("com.project.sp.USER.userUpdatePassword",user);
	}

}
