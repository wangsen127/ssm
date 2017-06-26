package com.ssm.emp.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ssm.emp.dao.DeptDao;
import com.ssm.emp.pojo.Dept;
import com.ssm.emp.service.DeptService;

@Service
public class DeptServiceImpl implements DeptService {

	@Autowired
	private DeptDao deptDao;
	
	@Override
	public void saveDept(Dept dept) throws Exception {
		deptDao.insertDept(dept);
	}

	@Override
	public void editDept(Dept dept) throws Exception {
		deptDao.updateDept(dept);
	}

	@Override
	public void delDept(Integer[] did) throws Exception {
		deptDao.deleteDept(did);
	}

	@Override
	public Dept getDept(Integer did) throws Exception {
		return deptDao.getDept(did);
	}

	@Override
	public List<Dept> queryDept(Dept dept) throws Exception {
		return deptDao.queryDept(dept);
	}
}
