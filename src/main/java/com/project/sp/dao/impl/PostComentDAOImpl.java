package com.project.sp.dao.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.project.sp.dao.PostComentDAO;
import com.project.sp.vo.PostComentVO;

@Repository
public class PostComentDAOImpl implements PostComentDAO {

	@Autowired
	private SqlSession ss;
	
	@Override
	public List<PostComentVO> postComentSelectList() {
		return ss.selectList("com.project.sp.POSTCOMENT.postComentSelectList");
	}

	@Override
	public PostComentVO postComentSelect(int comentNum) {
		return ss.selectOne("com.project.sp.POSTCOMENT.postComentSelect",comentNum);
	}

	@Override
	public List<PostComentVO> postComentUser(PostComentVO postComent) {
		return ss.selectList("com.project.sp.POSTCOMENT.postComentUser",postComent);
	}
	
	@Override
	public int postComentUserSize(int userNum) {
		int postSize = ss.selectOne("com.project.sp.POSTCOMENT.postComentUserSize",userNum);
		int pageSize = postSize / 15;
		if(postSize%15>0) {
			pageSize++;
		}
		return pageSize;
	}
	
	@Override
	public List<PostComentVO> postComentPost(PostComentVO postComent) {
		return ss.selectList("com.project.sp.POSTCOMENT.postComentPost",postComent);
	}
	
	@Override
	public int postComentPostSize(String postCode) {
		int postSize = ss.selectOne("com.project.sp.POSTCOMENT.postComentPostSize",postCode);
		int pageSize = postSize / 10;
		if(postSize%10>0) {
			pageSize++;
		}
		return pageSize;
	}

	@Override
	public int postComentInsert(PostComentVO postComent) {
		return ss.insert("com.project.sp.POSTCOMENT.postComentInsert",postComent);
	}

	@Override
	public int postComentDelete(int comentNum) {
		return ss.delete("com.project.sp.POSTCOMENT.postComentDelete",comentNum);
	}

}
