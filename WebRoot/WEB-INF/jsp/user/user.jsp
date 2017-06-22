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
<title>用户信息列表</title>
<script type="text/javascript" src="static/js/jquery-1.4.4.min.js"></script>
<script type="text/javascript">
	function deluser(){
		$("#delUserForm").submit();
	}
	function queryUser(){
		$("#queryUserForm").submit();
	}
</script>
</head>
<body>
	<center>
		<h3>用户信息列表</h3>
		<form id="queryUserForm" action="user/queryUser.do" method="post">
		<table border="0" width="60%">
			<tr align="left">
				<td>真实姓名:<input name="username" value="${user.username }"></td>	
				<td>权限:
					<select name="role">
						<option value="-1">--请选择--</option>
						<option value="1" <c:if test="${user.role==1 }">selected</c:if>>管理员</option>
						<option value="2" <c:if test="${user.role==2 }">selected</c:if>>普通用户</option>
					</select>
				</td>
				<td>
					<a href="javascript:queryUser()">查询</a>&nbsp;&nbsp;
					<a href="user/showSaveUser.do">新增</a>&nbsp;&nbsp;
					<a href="javascript:deluser()">批量删除</a>
				</td>				
			</tr>
		</table>
		</form>
		<form id="delUserForm" action="user/delUser.do" method="post">
		<table border="1" width="60%">
			<tr>
				<th></th>
				<th>用户名</th>
				<th>真实姓名</th>
				<th>权限</th>
				<th>操作</th>
			</tr>
			<c:forEach items="${userlist }" var="user">
			<tr align="center">
				<td><input type="checkbox" name="userid" value="${user.userid }"/></td>
				<td>${user.usercode }&nbsp;</td>				
				<td>${user.username }&nbsp;</td>				
				<td>
					<c:choose>
						<c:when test="${user.role==1 }">管理员</c:when>
						<c:otherwise>普通用户</c:otherwise>
					</c:choose>
				</td>
				<td>
					<a href="user/showEditUser.do?userid=${user.userid }">修改</a>
					&nbsp;&nbsp;&nbsp;&nbsp;
					<a href="user/delUser.do?userid=${user.userid }">删除</a>
				</td>				
			</tr>
			</c:forEach>
		</table>
		</form>
	</center>
</body>
</html>