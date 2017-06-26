package com.ssm.emp.pojo;

import java.util.Date;

import javax.validation.constraints.DecimalMin;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.NotBlank;

public class Emp {

	private Integer eid;
	//@NotBlank(message="{emp.ename.isnull}")
	//@Size(min=4,max=8,message="{emp.ename.size}")
	private String ename;
	//@NotNull(message="{emp.sal.isnull}")
	//@DecimalMin(value="0",message="{emp.sal.min}")
	private Double sal;
	//@NotNull(message="{emp.hireDate.isnull}")
	private Date hireDate;
	private Dept dept;
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
	public Date getHireDate() {
		return hireDate;
	}
	public void setHireDate(Date hireDate) {
		this.hireDate = hireDate;
	}
	public Dept getDept() {
		return dept;
	}
	public void setDept(Dept dept) {
		this.dept = dept;
	}
}
