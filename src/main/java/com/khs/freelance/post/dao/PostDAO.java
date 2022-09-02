package com.khs.freelance.post.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.khs.freelance.post.model.Post;

@Repository
public interface PostDAO {

	public List<Post> selectList();
}
