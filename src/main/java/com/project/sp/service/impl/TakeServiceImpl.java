package com.project.sp.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.sp.dao.TakeDAO;
import com.project.sp.service.TakeService;
import com.project.sp.vo.TakeVO;

@Service
public class TakeServiceImpl implements TakeService {

	@Autowired
	private TakeDAO td;
	
	@Override
	public List<TakeVO> takeSelectList() {
		return td.takeSelectList();
	}

	@Override
	public List<TakeVO> takeSelectUser(int userNum) {
		return td.takeSelectUser(userNum);
	}

	@Override
	public TakeVO takeSelect(int takeNum) {
		return td.takeSelect(takeNum);
	}

	@Override
	public int takeInsert(TakeVO take) {
		return td.takeInsert(take);
	}

	@Override
	public int takeUpdate(TakeVO take) {
		return td.takeUpdate(take);
	}

	@Override
	public int takeDelete(int takeNum) {
		return td.takeDelete(takeNum);
	}

}
