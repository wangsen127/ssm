<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<base href="<%=basePath%>">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>首页</title>
</head>
<body>
	<center>
	<a href="user/queryUser.do">用户页面</a><br>
	<hr>
	<a href="regist.html">注册页面</a><br>
	<a href="listEmp.do">员工页面</a><br>
	<a href="showMap.do">测试map集合类型的参数</a><br>
	<a href="showUpload.do">测试文件上传</a><br>
	<a href="showUpload2.do">测试多文件上传</a><br>
	<a href="showDownload.do">测试文件下载</a><br>
	<a href="showJson.do">测试json</a><br>
	</center>
</body>
</html>