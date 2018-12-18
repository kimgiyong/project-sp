package com.project.sp.dao;

import java.util.List;

import com.project.sp.vo.PostComentVO;

public interface PostComentDAO {

	public List<PostComentVO> postComentSelectList();
	public PostComentVO postComentSelect(int comentNum);
	public List<PostComentVO> postComentUser(PostComentVO postComent);
	public int postComentUserSize(int userNum);
	public List<PostComentVO> postComentPost(PostComentVO postComent);
	public int postComentPostSize(String postCode);
	public int postComentInsert(PostComentVO postComent);
	public int postComentDelete(int comentNum);
}
