package com.ssm.user.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ssm.core.util.MD5Util;
import com.ssm.user.pojo.User;
import com.ssm.user.serivce.UserService;

@Controller
@RequestMapping("/user")
public class UserController {

	@Autowired
	private UserService userService;
	
	@RequestMapping("/showSaveUser.do")
	public String showSaveUser() throws Exception {
		return "user/user_save";
	}
	
	@RequestMapping("/saveUser.do")
	public String saveUser(User user) throws Exception {
		user.setPassword(MD5Util.toMD5(user.getPassword()));
		userService.saveUser(user);
		return "redirect:queryUser.do";
	}
	
	@RequestMapping("/showEditUser.do")
	public String showEditUser(HttpServletRequest request, Integer userid) throws Exception {
		User user = userService.getUser(userid);
		request.setAttribute("user", user);
		return "user/user_edit";
	}
	
	@RequestMapping("/editUser.do")
	public String editUser(User user) throws Exception {
		userService.editUser(user);
		return "redirect:queryUser.do";
	}
	
	@RequestMapping("/delUser.do")
	public String delUser(Integer[] userid) throws Exception {
		userService.delUser(userid);
		return "redirect:queryUser.do";
	}
	
	@RequestMapping("/queryUser.do")
	public String queryUser(HttpServletRequest request, User user) throws Exception {
		List<User> list = userService.queryUser(user);
		request.setAttribute("userlist", list);
		return "user/user";
	}
	
	@RequestMapping("/showChangePassword.do")
	public String showChangePassword() throws Exception {
		return "user/user_changepassword";
	}
	
	@RequestMapping("/changePassword.do")
	public String changePassword(User user) throws Exception {
		user.setPassword(MD5Util.toMD5(user.getPassword()));
		userService.changePassword(user);
		return "redirect:queryUser.do";
	}
	
	@RequestMapping("/login.do")
	public String login(HttpSession session, User user) throws Exception {
		User userBean = userService.login(user);
		if(userBean == null){
			return "login";
		}
		session.setAttribute("userBean", userBean);
		return "index";
	}
}
