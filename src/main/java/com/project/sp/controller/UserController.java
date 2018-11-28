package com.project.sp.controller;

import java.util.ArrayList;
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
import com.project.sp.util.SendMail;
import com.project.sp.vo.UserVO;

import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
public class UserController {
	
	@Autowired
	private UserService ls;
	
	@PostMapping(value="/user")
	public @ResponseBody int userInsert(@RequestBody UserVO user) {
		return ls.userInsert(user);
	}
	
	@PostMapping(value="/login")
	public @ResponseBody UserVO userLogin(@RequestBody UserVO user,HttpSession hs, HttpServletRequest request) {
		UserVO userL = ls.userLogin(user);
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
	public @ResponseBody int userUpdate(@RequestBody UserVO user) {
		return ls.userUpdate(user);
	}
	
	@DeleteMapping(value="/user/{userNum}")
	public @ResponseBody int userDelete(@PathVariable int userNum) {
		return ls.userDelete(userNum);
	}
	
	@GetMapping(value="/user")
	public @ResponseBody List<UserVO> userSelectList(@ModelAttribute UserVO user){
		return ls.userSelectList(user);
	}
	
	@GetMapping(value="/user/{userNum}")
	public @ResponseBody UserVO userSelect(@PathVariable int userNum) {
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
	@PostMapping(value="/searchId")
	public @ResponseBody String userSearchId(@RequestBody UserVO user) {
		return ls.userSearchId(user);
	}
	@PostMapping(value="/searchPwd")
	public @ResponseBody String userSearchPwd(@RequestBody UserVO user) {
		return ls.userSearchPwd(user);
	}
	@GetMapping(value="/test")
	public @ResponseBody String mailTest() {
		SendMail sm = new SendMail();
		try {
			sm.send("xxzcsv@naver.com","김기용");
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return "/uri/book/homePage";
	}
}
