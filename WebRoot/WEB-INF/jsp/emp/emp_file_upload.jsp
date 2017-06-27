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
<title>员工文件上传</title>
<script type="text/javascript">
</script>
</head>
<body>
	<center>
		<h3>员工文件上传</h3>
		<form action="emp/uploadEmpFile.do" method="post" enctype="multipart/form-data">
		<input type="hidden" name="eid" value="${eid }"/>
		<table border="0">
			<tr>
				<td>文件:</td>
				<td><input type="file" name="file"/></td>
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