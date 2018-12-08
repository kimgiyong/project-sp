package com.project.sp.util;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;

import com.project.sp.vo.LikeVO;

public class LikeInOut {

	@Autowired
	private SqlSession ss;
	
	public LikeVO likeSelect(LikeVO like){
		return ss.selectOne("com.project.sp.LIKE.likeSelect",like);
	}
	public List<LikeVO> likeUserSelect(int userNum){
		return ss.selectList("com.project.sp.LIKE.likeUserSelect",userNum);
	}
	public List<LikeVO> likeBookSelect(String bookCode){
		return ss.selectList("com.project.sp.LIKE.likeBookSelect",bookCode);
	}
	public int likeInsert(LikeVO like) {
		return ss.insert("com.project.sp.LIKE.likeInsert",like);
	}
	public int likeDelete(LikeVO like) {
		return ss.delete("com.project.sp.LIKE.likeDelete",like);
	}
}
