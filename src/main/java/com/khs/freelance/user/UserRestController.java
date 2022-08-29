package com.khs.freelance.user;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.khs.freelance.user.bo.UserBO;

@RestController
public class UserRestController {

	@Autowired
	private UserBO userBO;
	// 회원가입 api
	@PostMapping("/user/signup")
	public Map<String,String> signup(
			@RequestParam("loginId") String loginId,
			@RequestParam("password") String password,
			@RequestParam("name") String name,
			@RequestParam("email") String email,
			@RequestParam("job") String job,
			@RequestParam("career") int career,
			@RequestParam("salary") int salary){
		
		int count = userBO.AddSignUp(loginId, password, name, email, job, career, salary);
		
		Map<String,String> map = new HashMap<>();
		
		if( count == 1) {
			map.put("result","success");
		}else {
			map.put("result", "fail");
		}
		return map;
		
	}
}
