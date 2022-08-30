package com.khs.freelance.user;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.khs.freelance.user.bo.UserBO;
import com.khs.freelance.user.model.User;

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
		
		int count = userBO.addSignUp(loginId, password, name, email, job, career, salary);
		
		Map<String,String> map = new HashMap<>();
		
		if( count == 1) {
			map.put("result","success");
		}else {
			map.put("result", "fail");
		}
		return map;
		
	}
	
	// 아이디 중복확인 api
	@GetMapping("/user/duplicate_id")
	public Map<String,Boolean> isDuplicate(String loginId){
		
		Map<String, Boolean> map = new HashMap<>();
		
		if(userBO.isDuplicate(loginId)) {
			map.put("result",true);
		}else {
			map.put("result",false);
		}
		
		return map;
		
	}
	
	// 로그인 api
	@PostMapping("/user/signin")
	public Map<String,String> signIn(
			@RequestParam("loginId") String loginId
			,@RequestParam("password") String password
			,HttpServletRequest request){
		
		User user = userBO.getUser(loginId, password);
		
		Map<String, String> map = new HashMap<>();
		
		if(user != null) {
			map.put("result","success");
			HttpSession session = request.getSession();
			
			session.setAttribute("userId", user.getId());
			session.setAttribute("userLoginId", user.getLoginId());
			
		}else {
			map.put("result","fail");
		}
		return map;
	}
}
