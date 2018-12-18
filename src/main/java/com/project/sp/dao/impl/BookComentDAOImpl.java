package com.project.sp.dao.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.project.sp.dao.BookComentDAO;
import com.project.sp.vo.BookComentVO;

@Repository
public class BookComentDAOImpl implements BookComentDAO {

	@Autowired
	private SqlSession ss;

	@Override
	public List<BookComentVO> bookComentSelectList(BookComentVO bookComent) {
		return ss.selectList("com.project.sp.BOOKCOMENT.bookComentSelectList",bookComent);
	}

	@Override
	public int bookComentSelectListSize(BookComentVO bookComent) {
		return ss.selectOne("com.project.sp.BOOKCOMENT.bookComentSelectListSize",bookComent);
	}

	@Override
	public BookComentVO bookComentSelect(int comentNum) {
		return ss.selectOne("com.project.sp.BOOKCOMENT.bookComentSelect",comentNum);
	}

	@Override
	public List<BookComentVO> bookComentUser(BookComentVO bookComent) {
		return ss.selectList("com.project.sp.BOOKCOMENT.bookComentUser",bookComent);
	}

	@Override
	public List<BookComentVO> bookComentBook(BookComentVO bookComent) {
		return ss.selectList("com.project.sp.BOOKCOMENT.bookComentBook",bookComent);
	}

	@Override
	public int bookComentUserSize(int userNum) {
		int bookSize = ss.selectOne("com.project.sp.BOOKCOMENT.bookComentUserSize",userNum);
		int pageSize = bookSize / 10;
		if(bookSize%10>0) {
			pageSize++;
		}
		return pageSize;
	}

	@Override
	public int bookComentBookSize(String bookCode) {
		int bookSize = ss.selectOne("com.project.sp.BOOKCOMENT.bookComentBookSize",bookCode);
		int pageSize = bookSize / 10;
		if(bookSize%10>0) {
			pageSize++;
		}
		return pageSize;
	}

	@Override
	public int bookComentInsert(BookComentVO bookComent) {
		return ss.insert("com.project.sp.BOOKCOMENT.bookComentInsert",bookComent);
	}

	@Override
	public int bookComentDelete(int comentNum) {
		return ss.delete("com.project.sp.BOOKCOMENT.bookComentDelete",comentNum);
	}

}
