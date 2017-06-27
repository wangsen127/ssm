package com.ssm.core.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ssm.core.dao.FileUploadDao;
import com.ssm.core.pojo.FileUpload;
import com.ssm.core.service.FileUploadService;

@Service
public class FileUploadServiceImpl implements FileUploadService {

	@Autowired
	private FileUploadDao fileUploadDao;
	
	@Override
	public void saveFileUpload(FileUpload fileUpload) {
		fileUploadDao.insertFileUpload(fileUpload);
	}

	@Override
	public FileUpload getFileUpload(Integer uid) {
		return fileUploadDao.getFileUpload(uid);
	}

	@Override
	public List<FileUpload> queryFileUpload(FileUpload fileUpload) {
		return fileUploadDao.queryFileUpload(fileUpload);
	}

	@Override
	public void delFileUploadByFid(Integer fid) {
		fileUploadDao.delFileUploadByFid(fid);
	}

	@Override
	public void deleteFileUpload(Integer[] uid) {
		fileUploadDao.deleteFileUpload(uid);
	}

}
