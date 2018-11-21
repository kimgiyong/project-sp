package com.project.sp.dao.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.project.sp.dao.LibDAO;
import com.project.sp.vo.userVO;

@Repository
public class LibDAOImpl implements LibDAO {

	@Autowired
	private SqlSession ss;
	
	@Override
	public int userInsert(userVO user) {
		String userId = user.getUserId();
		String userId2 = ss.selectOne("com.project.sp.USER.userCheck",userId);
		if(userId2 == null) {
			return ss.insert("com.project.sp.USER.userInsert",user);
		}else {
			return 2;
		}
	}

	@Override
	public userVO userLogin(userVO user) {
		return ss.selectOne("com.project.sp.USER.userLogin",user);
	}

	@Override
	public int userUpdate(userVO user) {
		return ss.update("com.project.sp.USER.userUpdate",user);
	}

	@Override
	public int userDelete(int userNum) {
		return ss.delete("com.project.sp.USER.userDelete",userNum);
	}

	@Override
	public List<userVO> userSelectList(userVO user) {
		return ss.selectList("com.project.sp.USER.userSelectList",user);
	}

	@Override
	public userVO userSelect(int userNum) {
		return ss.selectOne("com.project.sp.USER.userSelect",userNum);
	}

}
