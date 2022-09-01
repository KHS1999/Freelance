package com.khs.freelance.user.bo;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.khs.freelance.common.EncryptUtils;
import com.khs.freelance.user.dao.UserDAO;
import com.khs.freelance.user.model.User;

@Service
public class UserBO {

	@Autowired
	private UserDAO userDAO;
	
	public int addSignUp(String loginId, String password, String name, String email,
			String job, int career, int salary) {
		String encryptPassword = EncryptUtils.md5(password);
		return userDAO.insertSignUp(loginId, encryptPassword, name, email, job, career, salary);
	}
	
	public boolean isDuplicate(String loginId) {
		int count = userDAO.selectCountLoginId(loginId);
		
		if(count == 0) {
			return false; 
		}else {
			return true;
		}
	}
	
	public User getUser(String loginId, String password) {
		String encryptPassword = EncryptUtils.md5(password);
		return userDAO.selectUser(loginId, encryptPassword);
	}
	
}
