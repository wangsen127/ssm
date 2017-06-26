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
<title>部门新增</title>
<script type="text/javascript" src="static/js/jquery-1.4.4.min.js"></script>
<script type="text/javascript" src="static/js/public.js"></script>
<script type="text/javascript">
</script>
</head>
<body>
	<center>
		<h3>部门新增</h3>
		<form action="emp/saveDept.do" method="post">
		<input type="hidden" name="did" value="${dept.did }"/>
		<table border="0">
			<tr>
				<td>部门名称:</td>
				<td><input name="dname" value="${dept.dname }"/></td>
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