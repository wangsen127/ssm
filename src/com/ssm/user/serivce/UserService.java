package com.ssm.user.serivce;

import java.util.List;

import com.ssm.user.pojo.User;

public interface UserService {
	public void saveUser(User user) throws Exception;
	public void editUser(User user) throws Exception;
	public void delUser(Integer userid) throws Exception;
	public User getUser(Integer userid) throws Exception;
	public List<User> queryUser() throws Exception;
}
