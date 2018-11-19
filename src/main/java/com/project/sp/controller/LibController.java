package com.project.sp.controller;

import java.util.List;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

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
import org.springframework.web.context.request.RequestAttributes;

import com.project.sp.service.LibService;
import com.project.sp.vo.userVO;

import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
public class LibController {
	
	@Autowired
	private LibService ls;
	
	@PostMapping(value="/libuser")
	public @ResponseBody int userInsert(@RequestBody userVO user) {
		return ls.userInsert(user);
	}
	
	@PostMapping(value="/liblogin")
	public @ResponseBody userVO userLogin(@RequestBody userVO user,HttpSession hs) {
		log.info("HttpSession => {}", hs);
		userVO userL = ls.userLogin(user);
		hs.setAttribute("user", userL);
		log.info("user =>{}" + userL);
		return userL;
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
