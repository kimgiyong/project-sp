package com.project.sp.dao.impl;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.project.sp.dao.FamousDAO;
import com.project.sp.vo.FamousVO;

@Repository
public class FamousDAOImpl implements FamousDAO {

	@Autowired
	private SqlSession ss;
	
	@Override
	public FamousVO famouse() {
		return ss.selectOne("com.project.sp.FAMOUS.famousSaying");
	}
}
