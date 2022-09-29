package com.khs.freelance.user;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class UserController {

	// 회원가입 페이지
	@GetMapping("/user/signup/view")
	public String signup() {
		return "/user/signup";
	}
	// 로그인 페이지
	@GetMapping("/user/signin/view")
	public String signin() {
		return "/user/signin";
	}
	
}
