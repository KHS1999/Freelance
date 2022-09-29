package com.khs.freelance.post.bo;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.khs.freelance.common.FileManagerService;
import com.khs.freelance.post.dao.PostDAO;
import com.khs.freelance.post.model.Post;

@Service
public class PostBO {
	
	@Autowired
	private PostDAO postDAO;
	
	public List<Post> getPostList(int loginUserId){
		return postDAO.selectList();	
		
	}
	
	public int addPost(int userId, String companyName, String name, String email
			,String phoneNumber, String projectName, String job, int needPerson
			,String skill, Date startProject, int expectTerm, String projectBudget
			,int minAmount, int maxAmount, String workWay, String progress, String main
			,String detail, MultipartFile file) {
		
		// 파일을 저장하고, 파일 접근 경로를 DAO로 전달.
		String imagePath = FileManagerService.saveFile(userId, file);	
		
		// 파일 저장이 실패한 경우
		if(imagePath == null) {
			
			return -1;
		}
		
		return postDAO.insertPost(userId, companyName, name, email, phoneNumber, projectName, job, needPerson, skill, startProject, expectTerm, projectBudget, minAmount, maxAmount, workWay, progress, main, detail, imagePath);
		}
	}

