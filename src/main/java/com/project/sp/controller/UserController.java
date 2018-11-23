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

import com.project.sp.service.UserService;
import com.project.sp.vo.userVO;

import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
public class UserController {
	
	@Autowired
	private UserService ls;
	
	@PostMapping(value="/user")
	public @ResponseBody int userInsert(@RequestBody userVO user) {
		return ls.userInsert(user);
	}
	
	@PostMapping(value="/login")
	public @ResponseBody userVO userLogin(@RequestBody userVO user,HttpSession hs, HttpServletRequest request) {
		userVO userL = ls.userLogin(user);
		log.info("userL ==>{}",userL);
		if(userL+"" == "") {
			return userL;
		}else {
			hs.setAttribute("user", userL);
			log.info("hs ==>{}",hs);
			return userL;
		}
	}
	
	@PutMapping(value="/user")
	public @ResponseBody int userUpdate(@RequestBody userVO user) {
		return ls.userUpdate(user);
	}
	
	@DeleteMapping(value="/user")
	public @ResponseBody int userDelete(@PathVariable int userNum) {
		return ls.userDelete(userNum);
	}
	
	@GetMapping(value="/user")
	public @ResponseBody List<userVO> userSelectList(@ModelAttribute userVO user){
		return ls.userSelectList(user);
	}
	
	@GetMapping(value="/user/{userNum}")
	public @ResponseBody userVO userSelect(@PathVariable int userNum) {
		return ls.userSelect(userNum);
	}
	@PostMapping(value="/logout")
	public @ResponseBody int userLogout(HttpSession hs, HttpServletRequest request) {
		hs = request.getSession(false);
		if(hs != null) {
			hs.invalidate();
			return 1;
		}else {
			return 2;
		}
	}
}
