package com.project.sp.service;

import java.util.List;

import com.project.sp.vo.BookComentVO;

public interface BookComentService {

	public List<BookComentVO> bookComentSelectList(BookComentVO bookComent);
	public int bookComentSelectListSize(BookComentVO bookComent);
	public BookComentVO bookComentSelect(int comentNum);
	public List<BookComentVO> bookComentUser(BookComentVO bookComent);
	public List<BookComentVO> bookComentBook(BookComentVO bookComent);
	public int bookComentUserSize(int userNum);
	public int bookComentBookSize(String bookCode);
	public int bookComentInsert(BookComentVO bookComent);
	public int bookComentDelete(int comentNum);
}
