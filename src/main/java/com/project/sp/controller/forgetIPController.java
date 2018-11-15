package com.project.sp.controller;

import org.springframework.web.bind.annotation.RequestMapping;

public class forgetIPController {
	@RequestMapping(value = "/find_id_form.do")
	public String find_id_form() throws Exception{
		return "/member/find_id_form";
	}
}
