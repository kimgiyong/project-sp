package com.project.sp.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.sp.dao.LikeDAO;
import com.project.sp.service.LikeService;
import com.project.sp.vo.LikeVO;

@Service
public class LikeServiceImpl implements LikeService {

	@Autowired
	private LikeDAO ld;
	
	@Override
	public int likeSelect(LikeVO like) {
		return ld.likeSelect(like);
	}

	@Override
	public List<LikeVO> likeUserSelect(int userNum) {
		return ld.likeUserSelect(userNum);
	}

	@Override
	public List<LikeVO> likeBookSelect(String bookCode) {
		return ld.likeBookSelect(bookCode);
	}

	@Override
	public int likeInsert(LikeVO like) {
		return ld.likeInsert(like);
	}

	@Override
	public int likeDelete(LikeVO like) {
		return ld.likeDelete(like);
	}

}
