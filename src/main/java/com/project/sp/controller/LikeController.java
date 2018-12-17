package com.project.sp.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.ResponseBody;

import com.project.sp.service.LikeService;
import com.project.sp.vo.LikeVO;

@Controller
public class LikeController {

	@Autowired
	private LikeService ls;
	
	@GetMapping(value="/like")
	public @ResponseBody int likeSelect(@ModelAttribute LikeVO like) {
		return ls.likeSelect(like);
	}
	@GetMapping(value="/like/{userNum}")
	public @ResponseBody List<LikeVO> likeUserSelect(@PathVariable int userNum) {
		return ls.likeUserSelect(userNum);
	}
	@GetMapping(value="/like/{bookCode}")
	public @ResponseBody List<LikeVO> likeBookSelect(@PathVariable String bookCode){
		return ls.likeBookSelect(bookCode);
	}
	@PostMapping(value="/like")
	public @ResponseBody int likeInsert(@RequestBody LikeVO like) {
		return ls.likeInsert(like);
	}
	@DeleteMapping(value="/like")
	public @ResponseBody int likeDelete(@RequestBody LikeVO like) {
		return ls.likeDelete(like);
	}
}
