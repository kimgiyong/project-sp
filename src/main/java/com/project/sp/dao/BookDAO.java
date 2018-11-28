package com.project.sp.dao;

import java.util.List;

import com.project.sp.vo.BookVO;

public interface BookDAO {

	public List<BookVO> bookSelectList(BookVO book);
	public BookVO bookSelect(String bookCode);
	public int bookInsert(BookVO book);
	public int bookUpdate(BookVO book);
	public int bookDelete(String bookCode);
	public int bookLikeUp(BookVO book);
	public int bookLikeDown(BookVO book);
}
