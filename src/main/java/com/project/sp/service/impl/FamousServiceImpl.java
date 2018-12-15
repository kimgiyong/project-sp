package com.project.sp.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.sp.dao.FamousDAO;
import com.project.sp.service.FamousService;
import com.project.sp.vo.FamousVO;

@Service
public class FamousServiceImpl implements FamousService {

	@Autowired
	private FamousDAO fdao;
	
	@Override
	public FamousVO famouse() {
		return fdao.famouse();
	}

}
