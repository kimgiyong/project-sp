package com.project.sp.service;

import java.util.List;

import com.project.sp.vo.BookComentVO;

public interface BookComentService {

	public List<BookComentVO> bookComentSelectList();
	public BookComentVO bookComentSelect(int comentNum);
	public List<BookComentVO> bookComentUser(int userNum);
	public List<BookComentVO> bookComentBook(String bookCode);
	public int bookComentInsert(BookComentVO bookComent);
	public int bookComentDelete(int comentNum);
}
