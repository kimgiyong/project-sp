package com.project.sp.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.project.sp.service.BookComentService;
import com.project.sp.vo.BookComentVO;

@Controller
public class BookComentController {

	@Autowired
	private BookComentService bcs;
	
	@GetMapping(value="/bookComentList")
	public @ResponseBody List<BookComentVO> bookComentSelectList(){
		return bcs.bookComentSelectList();
	}
	@GetMapping(value="/bookComent")
	public @ResponseBody BookComentVO bookComentSelect(int comentNum) {
		return bcs.bookComentSelect(comentNum);
	}
	@GetMapping(value="/bookComentUser")
	public @ResponseBody List<BookComentVO> bookComentUser(int userNum){
		return bcs.bookComentUser(userNum);
	}
	@GetMapping(value="/bookComentBook")
	public @ResponseBody List<BookComentVO> bookComentBook(String bookCode){
		return bcs.bookComentBook(bookCode);
	}
	@PostMapping(value="/bookComent")
	public @ResponseBody int bookComentInsert(BookComentVO bookComent) {
		return bcs.bookComentInsert(bookComent);
	}
	@DeleteMapping(value="/bookComent")
	public @ResponseBody int bookComentDelete(int comentNum) {
		return bcs.bookComentDelete(comentNum);
	}
}
