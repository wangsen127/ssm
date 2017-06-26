package com.ssm.emp.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ssm.emp.pojo.Dept;
import com.ssm.emp.service.DeptService;

@Controller
@RequestMapping("/emp")
public class DeptController {
	
	@Autowired
	private DeptService deptService;
	
	@RequestMapping("/showSaveDept.do")
	public String showSaveDept() throws Exception{
		return "emp/dept_save";
	}
	
	@RequestMapping("/saveDept.do")
	public String saveDept(Dept dept) throws Exception{
		deptService.saveDept(dept);
		return "redirect:queryDept.do";
	}
	
	@RequestMapping("/showEditDept.do")
	public String showEditDept(HttpServletRequest request, Integer did) throws Exception{
		Dept dept = deptService.getDept(did);
		request.setAttribute("dept", dept);
		return "emp/dept_edit";
	}
	
	@RequestMapping("/editDept.do")
	public String editDept(Dept dept) throws Exception{
		deptService.editDept(dept);
		return "redirect:queryDept.do";
	}
	
	@RequestMapping("/delDept.do")
	public String delDept(Integer[] did) throws Exception{
		deptService.delDept(did);
		return "redirect:queryDept.do";
	}
	
	@RequestMapping("/queryDept.do")
	public String queryDept(HttpServletRequest request, Dept dept) throws Exception{
		List<Dept> list = deptService.queryDept(dept);
		request.setAttribute("deptlist", list);
		return "emp/dept";
	}
}
