package com.khs.freelance.user.bo;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.khs.freelance.common.EncryptUtils;
import com.khs.freelance.user.dao.UserDAO;

@Service
public class UserBO {

	@Autowired
	private UserDAO userDAO;
	
	public int AddSignUp(String loginId, String password, String name, String email,
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
}
