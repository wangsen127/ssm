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
<title>更换密码</title>
<script type="text/javascript">
</script>
</head>
<body>
	<center>
		<h3>更换密码</h3>
		<form action="user/changePassword.do" method="post">
		<input type="hidden" name="userid" value="${userBean.userid }"/>
		<table border="0">
			<tr>
				<td>用&nbsp;户&nbsp;名:</td>
				<td><input name="usercode" value="${userBean.usercode }" readonly/></td>
			</tr>
			<tr>
				<td>真实姓名:</td>
				<td><input name="username" value="${userBean.username }" readonly/></td>
			</tr>
			<tr>
				<td>密&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;码:</td>
				<td><input name="password"/></td>
			</tr>
			<tr>
				<td>确认密码:</td>
				<td><input name="repassword"/></td>
			</tr>
			<tr>
				<td><input type="submit" value="确定" /></td>
				<td><input type="reset" value="取消" /></td>				
			</tr>
		</table>
		</form>
	</center>
</body>
</html>