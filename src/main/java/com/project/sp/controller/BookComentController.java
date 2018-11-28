package com.project.sp.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
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
}
