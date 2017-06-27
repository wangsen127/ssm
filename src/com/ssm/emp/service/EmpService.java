package com.ssm.emp.service;

import java.util.List;

import com.ssm.emp.pojo.Emp;

public interface EmpService {
	
	public void saveEmp(Emp emp) throws Exception;
	public void editEmp(Emp emp) throws Exception;
	public void delEmp(Integer[] eid) throws Exception;
	public Emp getEmp(Integer eid) throws Exception;
	public List<Emp> queryEmp(Emp emp) throws Exception;
	
	public Emp getEmpWithFile(Integer eid) throws Exception;
}
