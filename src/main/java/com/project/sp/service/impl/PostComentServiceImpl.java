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
	public List<PostComentVO> postComentUser(int userNum) {
		return pcd.postComentUser(userNum);
	}

	@Override
	public List<PostComentVO> postComentPost(String postCode) {
		return pcd.postComentPost(postCode);
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
