package com.ssm.user.service;

import java.util.List;

import com.ssm.user.pojo.User;

public interface UserService {
	public void saveUser(User user) throws Exception;
	public void editUser(User user) throws Exception;
	public void delUser(Integer[] userid) throws Exception;
	public User getUser(Integer userid) throws Exception;
	public List<User> queryUser(User user) throws Exception;
	
	public void changePassword(User user) throws Exception;
	public User login(User user) throws Exception;
}
