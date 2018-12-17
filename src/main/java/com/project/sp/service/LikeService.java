package com.project.sp.service;

import java.util.List;

import com.project.sp.vo.LikeVO;

public interface LikeService {

	public int likeSelect(LikeVO like);
	public List<LikeVO> likeUserSelect(int userNum);
	public List<LikeVO> likeBookSelect(String bookCode);
	public int likeInsert(LikeVO like);
	public int likeDelete(LikeVO like);
}
