<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table align="center">
		<tr>
			<td><img src="static/image/top.png"></td>
			<td><img src="${userBean.fileUpload.url }" width="50" height="50"></td>
			<td>当前登陆用户：${userBean.username }</td>
			<td><a href="user/showChangePassword.do" target="show">修改密码</a></td>
			<td><a href="user/logout.do" target="_parent">退出系统</a></td>
		</tr>
	</table>
</body>
</html>