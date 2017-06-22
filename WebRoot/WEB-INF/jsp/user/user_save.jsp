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
<title>用户新增</title>
<script type="text/javascript" src="static/js/jquery-1.4.4.min.js"></script>
<script type="text/javascript" src="static/js/public.js"></script>
<script type="text/javascript">
	$(function(){
		$("#file").change(function(){
			var str = $("#file").val();
			if(!checkPic(str)){
				alert("请选择图片文件");
			}
		});	
	});
</script>
</head>
<body>
	<center>
		<h3>用户新增</h3>
		<form action="user/saveUser.do" method="post" enctype="multipart/form-data">
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
				<td>密&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;码:</td>
				<td><input name="password" value="${user.password }"/></td>
			</tr>
			<tr>
				<td>权&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;限:</td>
				<td>
					<select name="role">
						<option value="-1">--请选择--</option>
						<option value="1" <c:if test="${user.role==1 }">selected</c:if>>管理员</option>
						<option value="2" <c:if test="${user.role==2 }">selected</c:if>>普通用户</option>
					</select>
				</td>
			</tr>
			<tr>
				<td>头&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;像:</td>
				<td><input id="file" type="file" name="" size="10"/></td>
			</tr>
			<tr align="center">
				<td colspan="2">
					<input type="submit" value="确定" />
					<input type="reset" value="取消" />
				</td>
			</tr>
		</table>
		</form>
	</center>
</body>
</html>