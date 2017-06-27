package com.ssm.core.dao;

import java.util.List;

import com.ssm.core.pojo.FileUpload;

public interface FileUploadDao {

	public void insertFileUpload(FileUpload fileUpload);
	public FileUpload getFileUpload(Integer uid);
	public List<FileUpload> queryFileUpload(FileUpload fileUpload);
	
	public void delFileUploadByFid(Integer fid);
	public void deleteFileUpload(Integer[] uid);
}
