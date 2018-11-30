package com.project.sp.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.sp.dao.PostDAO;
import com.project.sp.service.PostService;
import com.project.sp.vo.PostVO;

@Service
public class PostServiceImpl implements PostService {

	@Autowired
	private PostDAO pd;
	
	@Override
	public List<PostVO> postSelectList(PostVO post) {
		return pd.postSelectList(post);
	}

	@Override
	public List<PostVO> postSelectListCode(String postCode) {
		return pd.postSelectListCode(postCode);
	}

	@Override
	public PostVO postSelect(String postCode) {
		return pd.postSelect(postCode);
	}

	@Override
	public List<PostVO> postSelectUser(int userNum) {
		return pd.postSelectUser(userNum);
	}

	@Override
	public int postInsert(PostVO post) {
		return pd.postInsert(post);
	}

	@Override
	public int postUpdate(PostVO post) {
		return pd.postUpdate(post);
	}

	@Override
	public int postDelete(String postCode) {
		return pd.postDelete(postCode);
	}

}
