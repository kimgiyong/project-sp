package com.project.sp.dao;

import java.util.List;

import com.project.sp.vo.TakeVO;

public interface TakeDAO {

	public List<TakeVO> takeSelectList();
	public List<TakeVO> takeSelectUser(int userNum);
	public TakeVO takeSelect(int takeNum);
	public int takeInsert(TakeVO take);
	public int takeUpdate(TakeVO take);
	public int takeDelete(int takeNum);
}
