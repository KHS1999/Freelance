package com.khs.freelance.post;

import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

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
	
	// 등록페이지 1
	@GetMapping("/post/regist1")
	public String projectRegist1(){
		return "post/projectRegist";
	}
	
	
	// 등록페이지 2
	@GetMapping("/post/regist2")
	public String projectRegist2(@RequestParam( required=false ,value="companyName") String companyName
			,@RequestParam("name") String name
			,@RequestParam("email") String email
			,@RequestParam("phoneNumber") String phoneNumber) {
		return "/post/projectRegist2";
	}		
	
	// 등록페이지 3
	@GetMapping("/post/regist3")
	public String projectRegist3(@RequestParam( required=false ,value="companyName") String companyName
			,@RequestParam("name") String name
			,@RequestParam("email") String email
			,@RequestParam("phoneNumber") String phoneNumber
			,@RequestParam("projectName") String projectName
			,@RequestParam("job") String job
			,@RequestParam("needPerson") int needPerson
			,@RequestParam("year") int year
			,@RequestParam("skill") String skill){
		
		return "/post/projectRegist3";		
	}
	// 등록페이지 4
	@GetMapping("/post/regist4")
	public String projectRegist4(@RequestParam( required=false ,value="companyName") String companyName
			,@RequestParam("name") String name
			,@RequestParam("email") String email
			,@RequestParam("phoneNumber") String phoneNumber
			,@RequestParam("projectName") String projectName
			,@RequestParam("job") String job
			,@RequestParam("needPerson") int needPerson
			,@RequestParam("year") int year
			,@RequestParam("skill") String skill
			,@DateTimeFormat(pattern = "yyyy-MM-dd") 
			 @RequestParam("startProject") Date startProject
			,@RequestParam("expectTerm") String expectTerm) {
		return "/post/projectRegist4";
	}
	// 등록페이지 5
	@GetMapping("/post/regist5")
	public String projectRegist5(@RequestParam(required=false ,value="companyName") String companyName
	,@RequestParam("name") String name
	,@RequestParam("email") String email
	,@RequestParam("phoneNumber") String phoneNumber
	,@RequestParam("projectName") String projectName
	,@RequestParam("job") String job
	,@RequestParam("needPerson") int needPerson
	,@RequestParam("year") int year
	,@RequestParam("skill") String skill
	,@DateTimeFormat(pattern = "yyyy-MM-dd") 
	 @RequestParam("startProject") Date startProject
	,@RequestParam("expectTerm") String expectTerm
	,@RequestParam("projectBudget") String projectBudget
	,@RequestParam("workWay") String workWay
	,@RequestParam("minAmount") int minAmount
	,@RequestParam("maxAmount") int maxAmount) {
		return "/post/projectRegist5";	
	}
	//  프로젝트 찾기
	@GetMapping("/post/search")
	public String postSerach(){
			
		return "/post/findProject";
		}
}
