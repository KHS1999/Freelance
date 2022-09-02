package com.khs.freelance.post.bo;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.khs.freelance.post.dao.PostDAO;
import com.khs.freelance.post.model.Post;

@Service
public class PostBO {
	
	@Autowired
	private PostDAO postDAO;
	
	public List<Post> getPostList(int loginUserId){
		return postDAO.selectList();	
	}
}
