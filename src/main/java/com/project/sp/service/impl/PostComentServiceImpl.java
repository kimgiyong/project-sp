package com.project.sp.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.sp.dao.PostComentDAO;
import com.project.sp.service.PostComentService;
import com.project.sp.vo.PostComentVO;

@Service
public class PostComentServiceImpl implements PostComentService {

	@Autowired
	private PostComentDAO pcd;
	
	@Override
	public List<PostComentVO> postComentSelectList() {
		return pcd.postComentSelectList();
	}

	@Override
	public PostComentVO postComentSelect(int comentNum) {
		return pcd.postComentSelect(comentNum);
	}
	
	@Override
	public List<PostComentVO> postComentUser(PostComentVO postComent) {
		return pcd.postComentUser(postComent);
	}

	@Override
	public int postComentUserSize(int userNum) {
		return pcd.postComentUserSize(userNum);
	}

	@Override
	public List<PostComentVO> postComentPost(PostComentVO postComent) {
		return pcd.postComentPost(postComent);
	}

	@Override
	public int postComentPostSize(String postCode) {
		return pcd.postComentPostSize(postCode);
	}
	@Override
	public int postComentInsert(PostComentVO postComent) {
		return pcd.postComentInsert(postComent);
	}

	@Override
	public int postComentDelete(int comentNum) {
		return pcd.postComentDelete(comentNum);
	}

}
