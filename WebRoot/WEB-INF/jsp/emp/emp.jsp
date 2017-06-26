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
<title>员工列表</title>
<script type="text/javascript" src="static/js/jquery-1.4.4.min.js"></script>
<script type="text/javascript">
	function delemp(){
		$("#delEmpForm").submit();
	}
	function queryEmp(){
		$("#queryEmpForm").submit();
	}
</script>
</head>
<body>
	<center>
		<h3>员工列表</h3>
		<form id="queryEmpForm" action="emp/queryEmp.do" method="post">
		<table border="0" width="60%">
			<tr align="left">
				<td>员工姓名:<input name="ename" value="${emp.ename }"></td>	
				<td>部门:
					<select name="dept.did">
						<option value="-1">--请选择--</option>
						<c:forEach items="${deptlist }" var="dept">
						<option value="${dept.did }" <c:if test="${dept.did==emp.dept.did }">selected</c:if>>${dept.dname }</option>
						</c:forEach>
					</select>
				</td>
				<td>
					<a href="javascript:queryEmp()">查询</a>&nbsp;&nbsp;
					<a href="emp/showSaveEmp.do">新增</a>&nbsp;&nbsp;
					<a href="javascript:delemp()">批量删除</a>
				</td>				
			</tr>
		</table>
		</form>
		<form id="delEmpForm" action="emp/delEmp.do" method="post">
		<table border="1" width="60%">
			<tr>
				<th></th>
				<th>员工姓名</th>
				<th>员工薪资</th>
				<th>入职日期</th>
				<th>部门名称</th>
				<th>操作</th>
			</tr>
			<c:forEach items="${emplist }" var="emp">
			<tr align="center">
				<td><input type="checkbox" name="eid" value="${emp.eid }"/></td>
				<td>${emp.ename }&nbsp;</td>				
				<td>${emp.sal }&nbsp;</td>				
				<td><fmt:formatDate value="${emp.hiredate }" pattern="yyyy-MM-dd"/>&nbsp;</td>				
				<td>${emp.dept.dname }&nbsp;</td>				
				<td>
					<a href="emp/showEditEmp.do?eid=${emp.eid }">修改</a>
					&nbsp;&nbsp;&nbsp;&nbsp;
					<a href="emp/delEmp.do?eid=${emp.eid }">删除</a>
				</td>				
			</tr>
			</c:forEach>
		</table>
		</form>
	</center>
</body>
</html>