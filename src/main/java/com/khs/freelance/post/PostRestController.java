package com.khs.freelance.post;

import java.util.Date;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

import com.khs.freelance.post.bo.PostBO;

@RestController
public class PostRestController {

	@Autowired
	private PostBO postBO;
	// 프로젝트 등록 api
	@PostMapping("/post/insert")
	public Map<String,String> insertProject(
			@RequestParam(value= "companyName") String companyName
			,@RequestParam("name") String name
			,@RequestParam("email") String email
			,@RequestParam("phoneNumber") String phoneNumber
			,@RequestParam("projectName") String projectName
			,@RequestParam("job") String job
			,@RequestParam("needPerson") int needPerson
			,@RequestParam("skill") String skill
			,@DateTimeFormat(pattern = "yyyy-MM-dd") 
			 @RequestParam("startProject") Date startProject
			,@RequestParam("expectTerm") int expectTerm
			,@RequestParam("projectBudget") String projectBudget
			,@RequestParam("minAmount") int minAmount
			,@RequestParam("maxAmount") int maxAmount
			,@RequestParam("workWay") String workWay
			,@RequestParam("progress") String progress
			,@RequestParam("main") String main
			,@RequestParam("detail") String detail
			,@RequestParam("file") MultipartFile file		
			,HttpServletRequest request) {
		
		// 글쓴 사람 정보를 같이 저장하기 위해서
		// 로그인된 사용자의 id(user 테이블 pk)를 세션을 통해서 얻어내고 이를 사용한다.
		
		HttpSession session = request.getSession();
		int loginUserId = (Integer)session.getAttribute("userId");
		
		int count = postBO.addPost(loginUserId, companyName, name, email, phoneNumber, projectName, job, needPerson, skill, startProject, expectTerm, projectBudget, minAmount, maxAmount, workWay, progress, main, detail, file);
		
		Map<String,String> result = new HashMap<>();
		if(count == 1) {
			result.put("result","success");
		}else {
			result.put("result", "fail");
		}
		return result;
	}
}
