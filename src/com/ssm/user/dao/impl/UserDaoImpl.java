package com.ssm.user.dao.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.ssm.core.dao.BaseDao;
import com.ssm.user.dao.UserDao;
import com.ssm.user.pojo.User;

@Repository
public class UserDaoImpl extends BaseDao implements UserDao{

	@Override
	public void insertUser(User user) throws Exception {
		this.openSession().insert("com.mybatis.dao.StudentDao.insertUser", user);
	}

	@Override
	public void updateUser(User user) throws Exception {
		this.openSession().update("com.mybatis.dao.StudentDao.updateUser", user);
	}

	@Override
	public void deleteUser(Integer[] userid) throws Exception {
		this.openSession().delete("com.mybatis.dao.StudentDao.deleteUser", userid);
		
	}

	@Override
	public User getUser(Integer userid) throws Exception {
		return this.openSession().selectOne("com.mybatis.dao.StudentDao.getUser", userid);
	}

	@Override
	public List<User> queryUser() throws Exception {
		return this.openSession().selectList("com.mybatis.dao.StudentDao.queryUser");
	}

	@Override
	public void changePassword(User user) throws Exception {
		this.openSession().update("com.mybatis.dao.StudentDao.changePassword", user);
	}

	@Override
	public User login(User user) throws Exception {
		return this.openSession().selectOne("com.mybatis.dao.StudentDao.login", user);
	}

	@Override
	public List<User> queryUserPart(User user) throws Exception {
		return this.openSession().selectList("com.mybatis.dao.StudentDao.queryUserPart", user);
	}

	
}
