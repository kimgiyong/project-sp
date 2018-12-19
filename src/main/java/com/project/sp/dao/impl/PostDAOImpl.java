package com.project.sp.dao.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.project.sp.dao.PostDAO;
import com.project.sp.vo.PostVO;

@Repository
public class PostDAOImpl implements PostDAO {

	@Autowired
	private SqlSession ss;
	
	@Override
	public List<PostVO> postSelectList(PostVO post) {
		if(post.getUserNum()!=null) {
			int userNum = ss.selectOne("com.project.sp.USER.userSelectName",post.getUserNum());
			post.setUserNum(userNum);
		}
		return ss.selectList("com.project.sp.POST.postSelectList",post);
	}

	@Override
	public List<PostVO> postSelectListCode(PostVO post) {
		return ss.selectList("com.project.sp.POST.postSelectListCode",post);
	}

	@Override
	public int postSelectListCodeSize(String postCode) {
		int postSize = ss.selectOne("com.project.sp.POST.postSelectListCodeSize",postCode);
		int pageSize = postSize / 10;
		if(postSize%10>0) {
			pageSize++;
		}
		return pageSize;
	}

	@Override
	public PostVO postSelect(String postCode) {
		return ss.selectOne("com.project.sp.POST.postSelect",postCode);
	}

	@Override
	public List<PostVO> postSelectUser(PostVO post) {
		return ss.selectList("com.project.sp.POST.postSelectUser",post);
	}

	@Override
	public int postSelectUserSize(int userNum) {
		int postSize = ss.selectOne("com.project.sp.POST.postSelectUserSize",userNum);
		int pageSize = postSize / 10;
		if(postSize%10>0) {
			pageSize++;
		}
		return pageSize;
	}

	@Override
	public int postInsert(PostVO post) {
		return ss.insert("com.project.sp.POST.postInsert",post);
	}

	@Override
	public int postUpdate(PostVO post) {
		return ss.update("com.project.sp.POST.postUpdate",post);
	}

	@Override
	public int postDelete(String postCode) {
		return ss.delete("com.project.sp.POST.postDelete",postCode);
	}

}
