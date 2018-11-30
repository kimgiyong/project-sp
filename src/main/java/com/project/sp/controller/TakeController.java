package com.project.sp.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.project.sp.service.TakeService;
import com.project.sp.vo.TakeVO;

@Controller
public class TakeController {

	@Autowired
	private TakeService ts;
	
	@GetMapping(value="/takeList")
	public @ResponseBody List<TakeVO> takeSelectList(){
		return ts.takeSelectList();
	}
	@GetMapping(value="/take/{userNum}")
	public @ResponseBody List<TakeVO> takeSelectUser(@PathVariable int userNum){
		return ts.takeSelectUser(userNum);
	}
	@GetMapping(value="/take/{takeNum}")
	public @ResponseBody TakeVO takeSelect(int takeNum) {
		return ts.takeSelect(takeNum);
	}
	@PostMapping(value="/take")
	public @ResponseBody int takeInsert(TakeVO take) {
		return ts.takeInsert(take);
	}
	@PutMapping(value="/take")
	public @ResponseBody int takeUpdate(TakeVO take) {
		return ts.takeUpdate(take);
	}
	@DeleteMapping(value="/take")
	public @ResponseBody int takeDelete(int takeNum) {
		return ts.takeDelete(takeNum);
	}
}
