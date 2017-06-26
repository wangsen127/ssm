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
	当前登陆用户：${userBean.username }<img src="${userBean.fileUpload.url }" width="100" height="100">
	<a href="user/showChangePassword.do">修改密码</a>
	<a href="user/logout.do">退出系统</a>
	<hr>
	1.<a href="user/queryUser.do">用户管理</a><br>
	2.<a href="emp/queryDept.do">部门管理</a><br>
	3.<a href="emp/queryEmp.do">员工管理</a><br>
	4.<a href="regist.html">注册页面</a><br>
	</center>
</body>
</html>