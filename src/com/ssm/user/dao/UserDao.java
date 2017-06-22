package com.ssm.user.dao;

import java.util.List;

import com.ssm.user.pojo.User;

public interface UserDao {

	public void insertUser(User user) throws Exception;
	public void updateUser(User user) throws Exception;
	public void deleteUser(Integer[] userid) throws Exception;
	public User getUser(Integer userid) throws Exception;
	public List<User> queryUser() throws Exception;
	
	public void changePassword(User user) throws Exception;
	public User login(User user) throws Exception;
	public List<User> queryUserPart(User user) throws Exception;
}
