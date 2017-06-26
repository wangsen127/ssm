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
<title>部门列表</title>
<script type="text/javascript" src="static/js/jquery-1.4.4.min.js"></script>
<script type="text/javascript">
	function deldept(){
		$("#delDeptForm").submit();
	}
	function querydept(){
		$("#queryDeptForm").submit();
	}
</script>
</head>
<body>
	<center>
		<h3>部门列表</h3>
		<form id="queryDeptForm" action="emp/queryDept.do" method="post">
		<table border="0" width="60%">
			<tr align="left">
				<td>部门名称:<input name="dname" value="${dept.dname }"></td>	
				<td>
				</td>
				<td>
					<a href="javascript:querydept()">查询</a>&nbsp;&nbsp;
					<a href="emp/showSaveDept.do">新增</a>&nbsp;&nbsp;
					<a href="javascript:deldept()">批量删除</a>
				</td>				
			</tr>
		</table>
		</form>
		<form id="delDeptForm" action="emp/delDept.do" method="post">
		<table border="1" width="60%">
			<tr>
				<th></th>
				<th>部门</th>
				<th>操作</th>
			</tr>
			<c:forEach items="${deptlist }" var="dept">
			<tr align="center">
				<td><input type="checkbox" name="did" value="${dept.did }"/></td>
				<td>${dept.dname }&nbsp;</td>				
				<td>
					<a href="emp/showEditDept.do?did=${dept.did }">修改</a>
					&nbsp;&nbsp;&nbsp;&nbsp;
					<a href="emp/delDept.do?did=${dept.did }">删除</a>
				</td>				
			</tr>
			</c:forEach>
		</table>
		</form>
	</center>
</body>
</html>