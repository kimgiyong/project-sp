package com.project.sp.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.project.sp.service.PostComentService;
import com.project.sp.vo.PostComentVO;

@Controller
public class PostComentController {
	
	@Autowired
	private PostComentService pcs;
	
	@GetMapping(value="/postComentList")
	public @ResponseBody List<PostComentVO> postComentSelectList(){
		return pcs.postComentSelectList();
	}
	@GetMapping(value="/postComent")
	public @ResponseBody PostComentVO postComentSelect(int comentNum) {
		return pcs.postComentSelect(comentNum);
	}
	@GetMapping(value="/postComentUser")
	public @ResponseBody List<PostComentVO> postComentUser(@ModelAttribute PostComentVO postComent){
		return pcs.postComentUser(postComent);
	}
	@GetMapping(value="/postComentPost")
	public @ResponseBody List<PostComentVO> postComentPost(@ModelAttribute PostComentVO postComent){
		return pcs.postComentPost(postComent);
	}
	@PostMapping(value="/postComent")
	public @ResponseBody int pookComentInsert(PostComentVO postComent) {
		return pcs.postComentInsert(postComent);
	}
	@DeleteMapping(value="/postComent")
	public @ResponseBody int pookComentDelete(int comentNum) {
		return pcs.postComentDelete(comentNum);
	}
}
