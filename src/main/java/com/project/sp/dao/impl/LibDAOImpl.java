package com.project.sp.dao.impl;

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
		return ss.insert("com.project.sp.USER.userInsert",user);
	}

	@Override
	public userVO userLogin(userVO user) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int userUpdate(userVO user) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int userDelete(int userNum) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public userVO userSelectList(userVO user) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public userVO userSelect(int userNum) {
		// TODO Auto-generated method stub
		return null;
	}

}
