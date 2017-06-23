package com.ssm.user.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ssm.core.dao.FileUploadDao;
import com.ssm.core.pojo.FileUpload;
import com.ssm.user.dao.UserDao;
import com.ssm.user.pojo.User;
import com.ssm.user.service.UserService;

@Service
public class UserServiceImpl implements UserService{

	@Autowired
	private UserDao userDao;
	@Autowired
	private FileUploadDao fileUploadDao;
	
	@Override
	public void saveUser(User user) throws Exception {
		userDao.insertUser(user);
		FileUpload fileUpload = user.getFileUpload();
		fileUpload.setFid(user.getUserid());
		fileUploadDao.insertFileUpload(fileUpload);
		if(fileUpload != null){
		}
	}

	@Override
	public void editUser(User user) throws Exception {
		userDao.updateUser(user);
	}

	@Override
	public void delUser(Integer[] userid) throws Exception {
		userDao.deleteUser(userid);
	}

	@Override
	public User getUser(Integer userid) throws Exception {
		return userDao.getUser(userid);
	}

	@Override
	public List<User> queryUser(User user) throws Exception {
		return userDao.queryUserPart(user);
	}

	@Override
	public void changePassword(User user) throws Exception {
		userDao.changePassword(user);
	}

	@Override
	public User login(User user) throws Exception {
		return userDao.login(user);
	}

}