package com.khs.freelance.post.dao;

import java.util.Date;
import java.util.List;


import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;


import com.khs.freelance.post.model.Post;

@Repository
public interface PostDAO {

	public List<Post> selectList();
	
	public int insertPost(
			@Param("userId") int userId
			,@Param("companyName") String companyName
			,@Param("name") String name
			,@Param("email") String email
			,@Param("phoneNumber") String phoneNumber
			,@Param("projectName") String projectName
			,@Param("job") String job
			,@Param("needPerson") int needPerson
			,@Param("skill") String skill
			,@Param("startProject") Date startProject
			,@Param("expectTerm") int expectTerm
			,@Param("projectBudget") String projectBudget
			,@Param("minAmount") int minAmount
			,@Param("maxAmount") int maxAmount
			,@Param("workWay") String workWay
			,@Param("progress") String progress
			,@Param("main") String main
			,@Param("detail") String detail
			,@Param("imagePath") String imagePath);
}
