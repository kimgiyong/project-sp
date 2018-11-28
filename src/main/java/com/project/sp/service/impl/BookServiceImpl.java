package com.project.sp.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.sp.dao.BookDAO;
import com.project.sp.service.BookService;
import com.project.sp.vo.BookVO;

@Service
public class BookServiceImpl implements BookService {

	@Autowired
	private BookDAO bd;
	
	@Override
	public List<BookVO> bookSelectList(BookVO book) {
		return bd.bookSelectList(book);
	}

	@Override
	public BookVO bookSelect(String bookCode) {
		return bd.bookSelect(bookCode);
	}

	@Override
	public int bookInsert(BookVO book) {
		return bd.bookInsert(book);
	}

	@Override
	public int bookUpdate(BookVO book) {
		return bd.bookUpdate(book);
	}

	@Override
	public int bookDelete(String bookCode) {
		return bd.bookDelete(bookCode);
	}

	@Override
	public int bookLikeUp(BookVO book) {
		return bd.bookLikeUp(book);
	}

	@Override
	public int bookLikeDown(BookVO book) {
		return bd.bookLikeDown(book);
	}

}
