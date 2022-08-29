package com.khs.freelance.user.dao;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

@Repository
public interface UserDAO {

	public int insertSignUp(@Param("loginId")String loginId
			,@Param("password") String password
			,@Param("name") String name
			,@Param("email") String email
			,@Param("job") String job 
			,@Param("career") int career
			,@Param("salary") int salary);
}
