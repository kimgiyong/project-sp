package com.project.sp.controller;

import java.util.List;

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

import com.project.sp.service.LibService;
import com.project.sp.vo.userVO;

@Controller
public class LibController {
	
	@Autowired
	private LibService ls;
	
	@PostMapping(value="/libuser")
	public @ResponseBody int userInsert(@RequestBody userVO user) {
		return ls.userInsert(user);
	}
	
	@PostMapping(value="/liblogin")
	public @ResponseBody userVO userLogin(@RequestBody userVO user) {
		return ls.userLogin(user);
	}
	
	@PutMapping(value="/libuser")
	public @ResponseBody int userUpdate(@RequestBody userVO user) {
		return ls.userUpdate(user);
	}
	
	@DeleteMapping(value="/libuser")
	public @ResponseBody int userDelete(@PathVariable int userNum) {
		return ls.userDelete(userNum);
	}
	
	@GetMapping(value="/libuser")
	public @ResponseBody List<userVO> userSelectList(@ModelAttribute userVO user){
		return ls.userSelectList(user);
	}
	
	@GetMapping(value="/libuser/{userNum}")
	public @ResponseBody userVO userSelect(@PathVariable int userNum) {
		return ls.userSelect(userNum);
	}
}
