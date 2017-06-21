package com.ssm.core.dao;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class BaseDao {

	@Autowired
	private SqlSessionFactory sqlSessionFactory;
	
	public SqlSession openSession(){
		return sqlSessionFactory.openSession();
	}
}
