package com.project.sp.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.sp.dao.BookComentDAO;
import com.project.sp.service.BookComentService;
import com.project.sp.vo.BookComentVO;

@Service
public class BookComentServiceImpl implements BookComentService {

	@Autowired
	private BookComentDAO bcd;
	
	@Override
	public List<BookComentVO> bookComentSelectList() {
		return bcd.bookComentSelectList();
	}

	@Override
	public BookComentVO bookComentSelect(int comentNum) {
		return bcd.bookComentSelect(comentNum);
	}

	@Override
	public List<BookComentVO> bookComentUser(int userNum) {
		return bcd.bookComentUser(userNum);
	}

	@Override
	public List<BookComentVO> bookComentBook(String bookCode) {
		return bcd.bookComentBook(bookCode);
	}

	@Override
	public int bookComentInsert(BookComentVO bookComent) {
		return bcd.bookComentInsert(bookComent);
	}

	@Override
	public int bookComentDelete(int comentNum) {
		return bcd.bookComentDelete(comentNum);
	}

}
