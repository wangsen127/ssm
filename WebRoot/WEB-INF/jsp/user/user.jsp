<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>用户信息列表</title>
<script type="text/javascript">
	function deluser(){
		document.delUserForm.submit();
	}
</script>
</head>
<body>
	<center>
		<h3>用户信息列表</h3>
		<form action="listEmp.do" method="post">
		<table border="0" width="80%">
			<tr align="left">
				<td>部门名称:
					<select name="">
						<option value="0">--请选择--</option>
					</select>
				</td>
				<td>员工姓名:<input name=""></td>	
				<td>
					<input type="submit" value="查询">
					<a href="###">新增</a>
					<a href="javascript:deluser()">批量删除</a>
				</td>				
			</tr>
		</table>
		</form>
		<form name="delUserForm" action="delEmpAll.do" method="post">
		<table border="1" width="80%">
			<tr>
				<th></th>
				<th>用&nbsp;&nbsp;户&nbsp;&nbsp;名</th>
				<th>真实姓名</th>
				<th>权&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;限</th>
				<th>操&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;作</th>
			</tr>
			<c:forEach items="${userlist }" var="user">
			<tr>
				<td><input type="checkbox" name="ids" value="${user.userid }"/></td>
				<td>${user.usercode }&nbsp;</td>				
				<td>${user.username }&nbsp;</td>				
				<td>${user.role }&nbsp;</td>
				<td>
					<a href="showEditEmp.do?eid=${emp.eid }">修改</a>
					&nbsp;&nbsp;&nbsp;&nbsp;
					<a href="delEmp.do?eid=${emp.eid }">删除</a>
				</td>				
			</tr>
			</c:forEach>
		</table>
		</form>
	</center>
</body>
</html>