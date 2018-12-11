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

import com.project.sp.service.PostService;
import com.project.sp.vo.PostVO;

@Controller
public class PostController {

	@Autowired
	private PostService ps;
	
	@GetMapping(value="/postList")
	public @ResponseBody List<PostVO> postSelectList(@ModelAttribute PostVO post){
		System.out.println(post);
		return ps.postSelectList(post);
	}
	@GetMapping(value="/postCode/{postCode}")
	public @ResponseBody List<PostVO> postSelectListCode(@PathVariable String postCode) {
		return ps.postSelectListCode(postCode);
	}
	@GetMapping(value="/post/{postCode}")
	public @ResponseBody PostVO postSelect(@PathVariable String postCode) {
		return ps.postSelect(postCode);
	}
	@GetMapping(value="/post/{userNum}")
	public @ResponseBody List<PostVO> postSelectUser(@PathVariable int userNum){
		return ps.postSelectUser(userNum);
	}
	@PostMapping(value="/post")
	public @ResponseBody int postInsert(@RequestBody PostVO post) {
		return ps.postInsert(post);
	}
	@PutMapping(value="/post")
	public @ResponseBody int postUpdate(@RequestBody PostVO post) {
		return ps.postUpdate(post);
	}
	@DeleteMapping(value="/post/{postCode}")
	public @ResponseBody int postDelete(@PathVariable String postCode) {
		return ps.postDelete(postCode);
	}
}
