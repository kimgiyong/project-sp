package com.project.sp.dao.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.project.sp.dao.TakeDAO;
import com.project.sp.vo.TakeVO;

@Repository
public class TakeDAOImpl implements TakeDAO {

	@Autowired
	private SqlSession ss;
	
	@Override
	public List<TakeVO> takeSelectList() {
		return ss.selectList("com.project.sp.TAKE.takeSelectList");
	}

	@Override
	public List<TakeVO> takeSelectUser(int userNum) {
		return ss.selectList("com.project.sp.TAKE.takeSelectUser",userNum);
	}

	@Override
	public TakeVO takeSelect(int takeNum) {
		return ss.selectOne("com.project.sp.TAKE.takeSelect",takeNum);
	}

	@Override
	public int takeInsert(TakeVO take) {
		return ss.insert("com.project.sp.TAKE.takeInsert",take);
	}

	@Override
	public int takeUpdate(TakeVO take) {
		return ss.update("com.project.sp.TAKE.takeUpdate",take);
	}

	@Override
	public int takeDelete(int takeNum) {
		return ss.delete("com.project.sp.TAKE.takeDelete",takeNum);
	}

}
