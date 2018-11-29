package com.project.sp.service;

import java.util.List;

import com.project.sp.vo.PostComentVO;

public interface PostComentService {

	public List<PostComentVO> postComentSelectList();
	public PostComentVO postComentSelect(int comentNum);
	public List<PostComentVO> postComentUser(int userNum);
	public List<PostComentVO> postComentPost(String postCode);
	public int postComentInsert(PostComentVO postComent);
	public int postComentDelete(int comentNum);
}
