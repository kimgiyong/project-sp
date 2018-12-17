package com.project.sp.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
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
	@GetMapping(value="/bookComent/{comentNum}")
	public @ResponseBody BookComentVO bookComentSelect(@PathVariable int comentNum) {
		return bcs.bookComentSelect(comentNum);
	}
	@GetMapping(value="/bookComentUser/{userNum}")
	public @ResponseBody List<BookComentVO> bookComentUser(@PathVariable int userNum){
		return bcs.bookComentUser(userNum);
	}
	@GetMapping(value="/bookComentBook/{bookCode}")
	public @ResponseBody List<BookComentVO> bookComentBook(@PathVariable String bookCode){
		return bcs.bookComentBook(bookCode);
	}
	@PostMapping(value="/bookComent")
	public @ResponseBody int bookComentInsert(@RequestBody BookComentVO bookComent) {
		return bcs.bookComentInsert(bookComent);
	}
	@DeleteMapping(value="/bookComent/{comentNum}")
	public @ResponseBody int bookComentDelete(@PathVariable int comentNum) {
		return bcs.bookComentDelete(comentNum);
	}
}
