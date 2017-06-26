package com.ssm.emp.service;

import java.util.List;

import com.ssm.emp.pojo.Dept;

public interface DeptService {

	public void saveDept(Dept dept) throws Exception;
	public void editDept(Dept dept) throws Exception;
	public void delDept(Integer[] did) throws Exception;
	public Dept getDept(Integer did) throws Exception;
	public List<Dept> queryDept(Dept dept) throws Exception;
}
