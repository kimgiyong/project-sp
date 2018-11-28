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
	public List<BookComentVO> bookComentSelectList() {
		return ss.selectList("com.project.sp.BOOKCOMENT.bookComentSelectList");
	}

	@Override
	public BookComentVO bookComentSelect(int comentNum) {
		return ss.selectOne("com.project.sp.BOOKCOMENT.bookComentSelect",comentNum);
	}

	@Override
	public List<BookComentVO> bookComentUser(int userNum) {
		return ss.selectList("com.project.sp.BOOKCOMENT.bookComentUser",userNum);
	}

	@Override
	public List<BookComentVO> bookComentBook(String bookCode) {
		return ss.selectList("com.project.sp.BOOKCOMENT.bookComentBook",bookCode);
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
