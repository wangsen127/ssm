package com.ssm.emp.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ssm.core.dao.FileUploadDao;
import com.ssm.core.pojo.FileUpload;
import com.ssm.emp.dao.EmpDao;
import com.ssm.emp.pojo.Emp;
import com.ssm.emp.service.EmpService;

@Service
public class EmpServiceImpl implements EmpService {

	@Autowired
	private EmpDao empDao;
	@Autowired
	private FileUploadDao fileUploadDao;
	
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
	
	@Override
	public Emp getEmpWithFile(Integer eid) throws Exception {
		Emp emp = empDao.getEmp(eid);
		FileUpload fileUpload = new FileUpload();
		fileUpload.setModule("emp");
		fileUpload.setFid(eid);
		List<FileUpload> filelist = fileUploadDao.queryFileUpload(fileUpload);
		emp.setFilelist(filelist);
		return emp;
	}

}
