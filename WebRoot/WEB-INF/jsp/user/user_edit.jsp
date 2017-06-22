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
<title>用户修改</title>
<script type="text/javascript">
</script>
</head>
<body>
	<center>
		<h3>用户修改</h3>
		<form action="user/editUser.do" method="post">
		<input type="hidden" name="userid" value="${user.userid }"/>
		<table border="0">
			<tr>
				<td>用&nbsp;户&nbsp;名:</td>
				<td><input name="usercode" value="${user.usercode }"/></td>
			</tr>
			<tr>
				<td>真实姓名:</td>
				<td><input name="username" value="${user.username }"/></td>
			</tr>
			<tr>
				<td>权&nbsp;&nbsp;&nbsp;&nbsp;限:</td>
				<td>
					<select name="role">
						<option value="-1">--请选择--</option>
						<option value="${user.role }" <c:if test="${user.role==1 }">selected</c:if>>管理员</option>
						<option value="${user.role }" <c:if test="${user.role==2 }">selected</c:if>>普通用户</option>
					</select>
				</td>
			</tr>
			<tr>
				<td>头&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;像:</td>
				<td><input id="file" type="file" name="" size="10"/></td>
			</tr>
			<tr>
				<td colspan="2">
					<img id="pic" src="###" width="100" height="100"/>
				</td>
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