package com.project.sp.dao;

import java.util.List;

import com.project.sp.vo.PostVO;

public interface PostDAO {

	public List<PostVO> postSelectList(PostVO post);
	public List<PostVO> postSelectListCode(PostVO post);
	public int postSelectListCodeSize(String postCode);
	public PostVO postSelect(String postCode);
	public List<PostVO> postSelectUser(PostVO post);
	public int postSelectUserSize(int userNum);
	public int postInsert(PostVO post);
	public int postUpdate(PostVO post);
	public int postDelete(String postCode);
}
