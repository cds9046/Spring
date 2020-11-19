<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>사용자목록</title>
</head>
<body>
	<h1>사용자목록</h1>
	<table border=1>
		<tr>
			<td width=100>id</td>
			<td width=100>pw</td>
			<td width=100>name</td>
			<td width=100>point</td>
			<td width=100>보냄</td>
			<td width=100>받음</td>
		</tr>
		
		<c:forEach items="${list}" var="vo">
			<tr>
				<td width=100> ${vo.uid}</td>
				<td width=100> ${vo.upw}</td>
				<td width=100> ${vo.uname}</td>
				<td width=100> ${vo.point}</td>
				<td width=100> <button onClick="location.href='send?uid=${vo.uid}'"> 보냄 </button></td>
				<td width=100> <button onClick="location.href='receive?uid=${vo.uid}'"> 받음 </button></td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>