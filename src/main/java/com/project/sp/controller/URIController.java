package com.project.sp.controller;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class URIController {
	private static final Logger logger = LoggerFactory.getLogger(URIController.class);
	
	@GetMapping(value="/uri/**")
	public String uriCon(HttpServletRequest req) {
		String rootPath = req.getContextPath();
		logger.debug("rootPath=>{}",rootPath);
		return req.getRequestURI().replace(rootPath+"/uri/", "");
	}
	@GetMapping(value="/WEB-INF/views/uri/**")
	public String uriCon2(HttpServletRequest req) {
		String rootPath = req.getContextPath();
		logger.debug("rootPath=>{}",rootPath);
		return req.getRequestURI().replace(rootPath+"/WEB-INF/views/uri/", "");
	}
	
}
