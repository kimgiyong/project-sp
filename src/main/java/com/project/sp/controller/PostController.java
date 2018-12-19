package com.project.sp.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

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
import com.project.sp.vo.BookVO;
import com.project.sp.vo.PageVO;
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
	@GetMapping(value="/postCode")
	public @ResponseBody List<PostVO> postSelectListCode(@ModelAttribute PostVO post) {
		return ps.postSelectListCode(post);
	}
	@GetMapping(value="/post/{postCode}")
	public @ResponseBody PostVO postSelect(@PathVariable String postCode) {
		return ps.postSelect(postCode);
	}
	@GetMapping(value="/post")
	public String postSelectUser(@ModelAttribute PostVO post,HttpServletRequest request){
		if(post.getPageS()!=null) {
			int pageSize = ps.postSelectUserSize(post.getUserNum());
			int pageNO = post.getPageS();
			if(pageNO>pageSize) {
				pageNO = pageSize ;
			}
			if(pageNO<1) {
				pageNO = 1;
			}
			PageVO pages = new PageVO();
			pages.makePaging(pageSize, pageNO);
			request.setAttribute("page", pages);
			post.setPageS(pages.getPageStart());
			List<PostVO> posts = ps.postSelectUser(post);
			request.setAttribute("posts", posts);
			return "uri/book/update/homeMypage?dif=1&";
		}else {
			return "book/homePage";
		}
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
