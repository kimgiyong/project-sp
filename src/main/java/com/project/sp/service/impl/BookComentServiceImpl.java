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
	public List<BookComentVO> bookComentSelectList(BookComentVO bookComent) {
		return bcd.bookComentSelectList(bookComent);
	}

	@Override
	public int bookComentSelectListSize(BookComentVO bookComent) {
		return bcd.bookComentSelectListSize(bookComent);
	}

	@Override
	public BookComentVO bookComentSelect(int comentNum) {
		return bcd.bookComentSelect(comentNum);
	}

	@Override
	public List<BookComentVO> bookComentUser(BookComentVO bookComent) {
		return bcd.bookComentUser(bookComent);
	}

	@Override
	public List<BookComentVO> bookComentBook(BookComentVO bookComent) {
		return bcd.bookComentBook(bookComent);
	}

	@Override
	public int bookComentUserSize(int userNum) {
		return bcd.bookComentUserSize(userNum);
	}

	@Override
	public int bookComentBookSize(String bookCode) {
		return bcd.bookComentBookSize(bookCode);
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
