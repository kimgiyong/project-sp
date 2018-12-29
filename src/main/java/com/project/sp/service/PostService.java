package com.project.sp.service;

import java.util.List;

import com.project.sp.vo.PostVO;

public interface PostService {

	public List<PostVO> postSelectList(PostVO post);
	public List<PostVO> postSelectListCode(PostVO post);
	public int postSelectListCodeSize(PostVO post);
	public PostVO postSelect(String postCode);
	public List<PostVO> postSelectUser(PostVO post);
	public int postSelectUserSize(int userNum);
	public int postInsert(PostVO post);
	public int postUpdate(PostVO post);
	public int postDelete(String postCode);
}
