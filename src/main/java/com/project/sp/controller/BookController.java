package com.project.sp.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.ResponseBody;

import com.project.sp.service.BookService;
import com.project.sp.vo.BookVO;
import com.project.sp.vo.PageVO;
import com.project.sp.vo.PostVO;

import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
public class BookController {

	@Autowired
	private BookService bs;
	
	@GetMapping(value="/bookList")
	public String bookSelectList(@ModelAttribute("book") BookVO book, HttpServletRequest request){
		if(book.getPageS()!=null) {
			int pageSize = bs.bookSelectSize(book);
			int pageNO = book.getPageS();
			if(pageNO>pageSize) {
				pageNO = pageSize ;
			}
			if(pageNO<1) {
				pageNO = 1;
			}
			PageVO pages = new PageVO();
			pages.makePaging(pageSize, pageNO);
			request.setAttribute("page", pages);
			book.setPageS(pages.getPageStart());
			List<BookVO> books = bs.bookSelectList(book);
			request.setAttribute("books", books);
			return "book/bookSelect/bookList";
		}else {
			return "book/homePage";
		}
	}
	@GetMapping(value="/bookCode/{bookCode}")
	public @ResponseBody List<BookVO> bookSelectListCode(@PathVariable String bookCode) {
		return bs.bookSelectListCode(bookCode);
	}
	@GetMapping(value="/book/{bookCode}")
	public String bookSelect(@PathVariable String bookCode, HttpServletRequest request) {
		request.setAttribute("books", bs.bookSelect(bookCode));
		return "book/bookSelect/bookOne";
	}
	@PostMapping(value="/book")
	public @ResponseBody int bookInsert(@RequestBody BookVO book) {
		return bs.bookInsert(book);
	}
	@PutMapping(value="/book")
	public @ResponseBody int bookUpdate(@RequestBody BookVO book) {
		return bs.bookUpdate(book);
	}
	@DeleteMapping(value="/book/{bookCode}")
	public @ResponseBody int bookDelete(@PathVariable String bookCode) {
		return bs.bookDelete(bookCode);
	}
}
