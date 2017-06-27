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
<title>员工文件列表</title>
<script type="text/javascript" src="static/js/jquery-1.4.4.min.js"></script>
<script type="text/javascript" src="static/js/public.js"></script>
</head>
<body>
	<center>
		<h3>员工文件列表</h3>
		<table border="0" width="60%">
			<tr>
				<th>员工姓名:</th>
				<td>${emp.ename }</td>
				<th>员工薪资:</th>
				<td>${emp.sal }</td>
			</tr>
			<tr>
				<th>入职日期:</th>
				<td><fmt:formatDate value='${emp.hiredate }' pattern='yyyy-MM-dd'/></td>
				<th>部&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;门:</th>
				<td>${emp.dept.dname }</td>
			</tr>
		</table>
		<table border="0" width="60%">
			<tr align="left">
				<td align="right">
					<a href="emp/showUploadEmpFile.do?eid=${emp.eid }">上传文件</a>&nbsp;&nbsp;
					<a href="javascript:delemp()">批量删除</a>
				</td>				
			</tr>
		</table>
		<table border="1" width="60%">
			<tr>
				<th><input type="checkbox"/></th>
				<th>文件类型</th>
				<th>文件名称</th>
				<th>路径</th>
				<th>大小</th>
				<th>操作</th>
			</tr>
			<c:forEach items="${emp.filelist }" var="fileUpload">
			<tr>
				<td><input type="checkbox" name="uid" value="${fileUpload.uid }"/></td>
				<td><span class="spanClass">${fileUpload.suffixname }</span></td>
				<td>${fileUpload.originalname }</td>
				<td>${fileUpload.url }</td>
				<td>${fileUpload.filesize }</td>
				<td><a href="emp/downloadEmpFile.do?uid=${fileUpload.uid }">下载</a></td>
			</tr>
			</c:forEach>
		</table>
	</center>
	<script type="text/javascript">
		var spans = $(".spanClass");
		for(var i=0;i<spans.length;i++){
			var span = spans[i];
			span.innerHTML = changeToPic(span.innerHTML);
		}
	</script>
</body>
</html>