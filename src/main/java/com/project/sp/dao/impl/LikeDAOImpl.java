package com.project.sp.dao.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.project.sp.dao.LikeDAO;
import com.project.sp.vo.BookVO;
import com.project.sp.vo.LikeVO;

@Repository
public class LikeDAOImpl implements LikeDAO {

	@Autowired
	private SqlSession ss;
	
	@Override
	public int likeSelect(LikeVO like) {
		return ss.selectOne("com.project.sp.LIKE.likeSelect",like);
	}

	@Override
	public List<LikeVO> likeUserSelect(int userNum) {
		return ss.selectList("com.project.sp.LIKE.likeUserSelect",userNum);
	}

	@Override
	public List<LikeVO> likeBookSelect(String bookCode) {
		return ss.selectList("com.project.sp.LIKE.likeBookSelect",bookCode);
	}

	@Override
	public int likeInsert(LikeVO like) {
		int result = ss.insert("com.project.sp.LIKE.likeInsert",like);
		if(result==1) {
			return ss.update("com.project.sp.BOOK.bookLikeUp",like.getBookCode());
		}
		return result;
	}

	@Override
	public int likeDelete(LikeVO like) {
		int result = ss.delete("com.project.sp.LIKE.likeDelete",like);
		if(result==1) {
			return ss.delete("com.project.sp.BOOK.bookLikeDown",like.getBookCode());
		}
		return result;
	}

}
