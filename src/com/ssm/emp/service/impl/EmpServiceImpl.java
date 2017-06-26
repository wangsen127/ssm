package com.ssm.emp.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ssm.emp.dao.EmpDao;
import com.ssm.emp.pojo.Emp;
import com.ssm.emp.service.EmpService;

@Service
public class EmpServiceImpl implements EmpService {

	@Autowired
	private EmpDao empDao;
	
	@Override
	public void saveEmp(Emp emp) throws Exception {
		empDao.insertEmp(emp);
	}

	@Override
	public void editEmp(Emp emp) throws Exception {
		empDao.updateEmp(emp);
	}

	@Override
	public void delEmp(Integer[] eid) throws Exception {
		empDao.deleteEmp(eid);
	}

	@Override
	public Emp getEmp(Integer eid) throws Exception {
		return empDao.getEmp(eid);
	}

	@Override
	public List<Emp> queryEmp(Emp emp) throws Exception {
		return empDao.queryEmp(emp);
	}

}
