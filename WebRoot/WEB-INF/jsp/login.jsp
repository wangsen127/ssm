<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<base href="<%=basePath%>">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>用户登陆</title>
<script type="text/javascript">
</script>
</head>
<body>
	<center>
		<h3>用户登陆</h3>
		<form action="user/login.do" method="post">
		<table border="0">
			<tr>
				<td>用&nbsp;户&nbsp;名:</td>
				<td><input name="usercode" value="${user.ename }"/></td>
			</tr>
			<tr>
				<td>密&nbsp;&nbsp;&nbsp;&nbsp;码:</td>
				<td><input name="password" value="${user.password }"/></td>
			</tr>
			<tr align="center">
				<td colspan="2"><input type="submit" value="登陆" /></td>
			</tr>
		</table>
		</form>
	</center>
</body>
</html>