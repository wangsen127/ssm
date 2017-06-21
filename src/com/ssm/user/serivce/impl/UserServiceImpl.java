package com.ssm.user.serivce.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ssm.user.dao.UserDao;
import com.ssm.user.pojo.User;
import com.ssm.user.serivce.UserService;

@Service
public class UserServiceImpl implements UserService{

	@Autowired
	private UserDao userDao;
	
	@Override
	public void saveUser(User user) throws Exception {
		userDao.insertUser(user);
	}

	@Override
	public void editUser(User user) throws Exception {
		userDao.updateUser(user);
	}

	@Override
	public void delUser(Integer userid) throws Exception {
		userDao.deleteUser(userid);
	}

	@Override
	public User getUser(Integer userid) throws Exception {
		return userDao.getUser(userid);
	}

	@Override
	public List<User> queryUser() throws Exception {
		return userDao.queryUser();
	}

}
