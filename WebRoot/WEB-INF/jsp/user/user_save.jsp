<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>用户新增</title>
<script type="text/javascript">
</script>
</head>
<body>
	<center>
		<h3>用户新增</h3>
		<form action="" method="post">
		<input type="hidden" name="userid" value="${user.userid }"/>
		<table border="0">
			<tr>
				<td>用&nbsp;&nbsp;户&nbsp;&nbsp;名:</td>
				<td><input name="usercode" value="${user.ename }"/></td>
			</tr>
			<tr>
				<td>真实姓名:</td>
				<td><input name="username" value="${user.username }"/></td>
			</tr>
			<tr>
				<td>权&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;限:</td>
				<td>
					<select name="role">
						<option value="-1">--请选择--</option>
						<option value="${user.role }" <c:if test="${user.role==1 }">selected</c:if>>管理员</option>
						<option value="${dept.role }" <c:if test="${user.role==2 }">selected</c:if>>普通用户</option>
					</select>
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