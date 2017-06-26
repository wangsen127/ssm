package com.ssm.emp.dao;

import java.util.List;

import com.ssm.emp.pojo.Dept;

public interface DeptDao {

	public void insertDept(Dept dept) throws Exception;
	public void updateDept(Dept dept) throws Exception;
	public void deleteDept(Integer[] did) throws Exception;
	public Dept getDept(Integer did) throws Exception;
	public List<Dept> queryDept(Dept dept) throws Exception;
}
