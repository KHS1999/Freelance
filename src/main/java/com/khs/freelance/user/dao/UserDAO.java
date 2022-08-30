package com.khs.freelance.user.dao;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.khs.freelance.user.model.User;

@Repository
public interface UserDAO {

	public int insertSignUp(@Param("loginId")String loginId
			,@Param("password") String password
			,@Param("name") String name
			,@Param("email") String email
			,@Param("job") String job 
			,@Param("career") int career
			,@Param("salary") int salary);
	
	public int selectCountLoginId(@Param("loginId") String loginId);
	
	public User selectUser(
			@Param("loginId") String loginId
			,@Param("password") String password);
}
