package com.ssm.emp.dao;

import java.util.List;

import com.ssm.emp.pojo.Emp;

public interface EmpDao {

	public void insertEmp(Emp emp) throws Exception;
	public void updateEmp(Emp emp) throws Exception;
	public void deleteEmp(Integer[] eid) throws Exception;
	public Emp getEmp(Integer eid) throws Exception;
	public List<Emp> queryEmp(Emp emp) throws Exception;
}
