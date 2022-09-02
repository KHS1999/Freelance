package com.khs.freelance.post;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.khs.freelance.post.bo.PostBO;
import com.khs.freelance.post.model.Post;

@Controller
public class PostController {
	
	@Autowired
	private PostBO postBO;
	// 메인 페이지
	// 프로젝트 조회
	@GetMapping("/post/main/view")
	public String main(Model model
			,HttpServletRequest request) {
		
		HttpSession session= request.getSession();
		int userId = (Integer)session.getAttribute("userId");
		
		List<Post> postDetailList = postBO.getPostList(userId);
		
		model.addAttribute("postList",postDetailList);
		
		return "/post/main";
	}
	
	@GetMapping("/post/regist1")
	public String projectRegist1(){
		return "/post/projectRegist";
	}
}
