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
<title>员工修改</title>
<script type="text/javascript">
</script>
</head>
<body>
	<center>
		<h3>员工修改</h3>
		<form action="emp/editEmp.do" method="post">
		<input type="hidden" name="eid" value="${emp.eid }"/>
		<table border="0">
			<tr>
				<td>员工姓名:</td>
				<td><input name="ename" value="${emp.ename }"/></td>
			</tr>
			<tr>
				<td>员工薪资:</td>
				<td><input name="sal" value="${emp.sal }"/></td>
			</tr>
			<tr>
				<td>入职日期:</td>
				<td><input name="hiredate" value="<fmt:formatDate value='${emp.hiredate }' pattern='yyyy-MM-dd'/>"/></td>
			</tr>
			<tr>
				<td>部&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;门:</td>
				<td>
					<select name="dept.did">
						<option value="-1">--请选择--</option>
						<c:forEach items="${deptlist }" var="dept">
						<option value="${dept.did }" <c:if test="${dept.did==emp.dept.did }">selected</c:if>>${dept.dname }</option>
						</c:forEach>
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