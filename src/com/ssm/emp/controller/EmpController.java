package com.ssm.emp.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ssm.emp.pojo.Dept;
import com.ssm.emp.pojo.Emp;
import com.ssm.emp.service.DeptService;
import com.ssm.emp.service.EmpService;

@Controller
@RequestMapping("/emp")
public class EmpController {
	
	@Autowired
	private EmpService empService;
	@Autowired
	private DeptService deptService;
	
	@RequestMapping("/showSaveEmp.do")
	public String showSaveEmp() throws Exception{
		return "emp/emp_save";
	}
	
	@RequestMapping("/saveEmp.do")
	public String saveEmp(Emp emp) throws Exception{
		empService.saveEmp(emp);
		return "redirect:queryEmp.do";
	}
	
	@RequestMapping("/showEditEmp.do")
	public String showEditEmp(HttpServletRequest request, Integer eid) throws Exception{
		Emp emp = empService.getEmp(eid);
		request.setAttribute("emp", emp);
		return "emp/emp_edit";
	}
	
	@RequestMapping("/editEmp.do")
	public String editEmp(Emp emp) throws Exception{
		empService.editEmp(emp);
		return "redirect:queryEmp.do";
	}
	
	@RequestMapping("/delEmp.do")
	public String delEmp(Integer[] eid) throws Exception{
		empService.delEmp(eid);
		return "redirect:queryEmp.do";
	}
	
	@RequestMapping("/queryEmp.do")
	public String queryEmp(HttpServletRequest request, Emp emp) throws Exception{
		List<Emp> list = empService.queryEmp(emp);
		request.setAttribute("emplist", list);
		return "emp/emp";
	}
	
	/**
	 * @ModelAttribute将方法的返回值放入request域中
	 */
	@ModelAttribute("deptlist")
	public List<Dept> queryDept()  throws Exception{
		return deptService.queryDept(null);
	}
}
