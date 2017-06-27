package com.ssm.emp.controller;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.net.URLEncoder;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;

import com.ssm.core.pojo.FileUpload;
import com.ssm.core.service.FileUploadService;
import com.ssm.core.util.UploadUtil;
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
	@Autowired
	private FileUploadService fileUploadService;
	
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
	
	@RequestMapping("/queryEmpFile.do")
	public String queryEmpFile(HttpServletRequest request, Integer eid) throws Exception{
		Emp emp = empService.getEmpWithFile(eid);
		request.setAttribute("emp", emp);
		return "emp/emp_file";
	}
	
	@RequestMapping("/showUploadEmpFile.do")
	public String showUploadEmpFile(HttpServletRequest request, Integer eid) throws Exception{
		request.setAttribute("eid", eid);
		return "emp/emp_file_upload";
	}
	
	@RequestMapping("/uploadEmpFile.do")
	public String uploadEmpFile(Integer eid, MultipartFile file) throws Exception{
		FileUpload fileUpload = UploadUtil.upload(file,"emp");
		fileUpload.setFid(eid);
		fileUploadService.saveFileUpload(fileUpload);
		return "redirect:queryEmpFile.do?eid="+eid;
	}
	
	@RequestMapping("/downloadEmpFile.do")
	public void downloadEmpFile(HttpServletRequest request, HttpServletResponse response, Integer uid) throws Exception{
		FileUpload fileUpload = fileUploadService.getFileUpload(uid);
		if(fileUpload != null){
			File file = new File(fileUpload.getUrl());
			if(file.exists()){
				String agent = request.getHeader("USER-AGENT");
				System.out.println(agent);
				String filename = fileUpload.getOriginalname().replaceAll(" ", "");
				if(agent!=null && agent.toUpperCase().contains("FIREFOX")){
					filename = new String(filename.getBytes("UTF-8"),"iso-8859-1");
				}else{
					filename = URLEncoder.encode(filename, "UTF-8");
				}
				//设置响应头
				response.setContentType("application/force-download");// 设置强制下载不打开
				response.addHeader("Content-Disposition","attachment;fileName=" + filename +"."+fileUpload.getSuffixname());// 设置文件名
				byte[] buffer = new byte[1024];
				BufferedInputStream bis = new BufferedInputStream(new FileInputStream(file));
				BufferedOutputStream bos = new BufferedOutputStream(response.getOutputStream());
				while(bis.read(buffer)!=-1){
					bos.write(buffer);
				}
				bos.flush();
				bis.close();
				bos.close();
			}
		}
	}
	
	/**
	 * @ModelAttribute将方法的返回值放入request域中
	 */
	@ModelAttribute("deptlist")
	public List<Dept> queryDept()  throws Exception{
		return deptService.queryDept(null);
	}
}
