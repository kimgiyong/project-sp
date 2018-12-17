package com.project.sp.dao.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

import com.project.sp.dao.BookDAO;
import com.project.sp.vo.BookVO;
import com.project.sp.vo.LikeVO;

@Repository
public class BookDAOImpl implements BookDAO {

	@Autowired
	private SqlSession ss;
	
	@Override
	public int bookSelectSize(BookVO book) {
		int bookSize = ss.selectOne("com.project.sp.BOOK.bookSelectSize",book);
		int pageSize = bookSize / 10;
		if(bookSize%10>0) {
			pageSize++;
		}
		return pageSize;
	}
	
	@Override
	public List<BookVO> bookSelectList(BookVO book) {
		return ss.selectList("com.project.sp.BOOK.bookSelectList",book);
	}
	
	@Override
	public List<BookVO> bookSelectListCode(String bookCode) {
		return ss.selectList("com.project.sp.BOOK.bookSelectList",bookCode);
	}

	@Override
	public BookVO bookSelect(String bookCode) {
		return ss.selectOne("com.project.sp.BOOK.bookSelect",bookCode);
	}

	@Override
	public int bookInsert(BookVO book) {
		return ss.insert("com.project.sp.BOOK.bookInsert",book);
	}

	@Override
	public int bookUpdate(BookVO book) {
		return ss.update("com.project.sp.BOOK.bookUpdate",book);
	}

	@Override
	public int bookDelete(String bookCode) {
		return ss.delete("com.project.sp.BOOK.bookDelete",bookCode);
	}

}
