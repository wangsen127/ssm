package com.ssm.emp.pojo;

import java.util.Date;
import java.util.List;

import com.ssm.core.pojo.FileUpload;

public class Emp {

	private Integer eid;
	//@NotBlank(message="{emp.ename.isnull}")
	//@Size(min=4,max=8,message="{emp.ename.size}")
	private String ename;
	//@NotNull(message="{emp.sal.isnull}")
	//@DecimalMin(value="0",message="{emp.sal.min}")
	private Double sal;
	//@NotNull(message="{emp.hireDate.isnull}")
	private Date hiredate;
	private Dept dept;
	private List<FileUpload> filelist;
	public Integer getEid() {
		return eid;
	}
	public void setEid(Integer eid) {
		this.eid = eid;
	}
	public String getEname() {
		return ename;
	}
	public void setEname(String ename) {
		this.ename = ename;
	}
	public Double getSal() {
		return sal;
	}
	public void setSal(Double sal) {
		this.sal = sal;
	}
	public Date getHiredate() {
		return hiredate;
	}
	public void setHiredate(Date hiredate) {
		this.hiredate = hiredate;
	}
	public Dept getDept() {
		return dept;
	}
	public void setDept(Dept dept) {
		this.dept = dept;
	}
	public List<FileUpload> getFilelist() {
		return filelist;
	}
	public void setFilelist(List<FileUpload> filelist) {
		this.filelist = filelist;
	}
}
