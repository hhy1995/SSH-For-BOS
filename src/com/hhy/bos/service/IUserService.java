package com.hhy.bos.service;

import com.hhy.bos.domain.User;

public interface IUserService {

	User login(User model);

	void editPassword(String password, String id);
	
}
