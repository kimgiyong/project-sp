package com.project.sp.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.project.sp.service.FamousService;
import com.project.sp.vo.FamousVO;

import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
public class FamousController {

	@Autowired
	private FamousService fs;
	
	@GetMapping(value="/famous")
	public @ResponseBody FamousVO famous() {
		return fs.famouse();
	}
}
