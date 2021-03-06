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
	public int bookSelectSize(BookVO book) {
		return bd.bookSelectSize(book);
	}
	@Override
	public List<BookVO> bookSelectList(BookVO book) {
		return bd.bookSelectList(book);
	}
	
	@Override
	public List<BookVO> bookSelectListCode(String bookCode) {
		return bd.bookSelectListCode(bookCode);
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

}
