package com.ssm.core.util;

import java.io.File;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.UUID;

import org.springframework.web.multipart.MultipartFile;

import com.ssm.core.pojo.FileUpload;

public class UploadUtil {

	private UploadUtil(){}
	public static FileUpload upload(MultipartFile file,String module) throws Exception{
		String filename = file.getOriginalFilename();
		if(filename == null || filename.equals("")) 
			return null;
		
		SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMdd");
		String basePath = "\\up\\"+sdf.format(new Date());
		File baseFile = new File(basePath);
		if(!baseFile.exists()) baseFile.mkdirs();
		
		String originalname = filename.substring(0, filename.lastIndexOf("."));
		String realname = UUID.randomUUID().toString();
		String suffixname = filename.substring(filename.lastIndexOf(".")+1);
		String url = basePath + File.separator + realname + "." + suffixname;
		long filesize = file.getSize();
		
		File newFile = new File(url);
		file.transferTo(newFile);
				
		FileUpload fileUpload = new FileUpload();
		fileUpload.setOriginalname(originalname);
		fileUpload.setRealname(realname);
		fileUpload.setSuffixname(suffixname);
		fileUpload.setUrl(url);
		fileUpload.setFilesize(filesize);
		fileUpload.setModule(module);
		return fileUpload;
	}
}
