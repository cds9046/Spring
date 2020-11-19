<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script src="http://code.jquery.com/jquery-3.1.1.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>주소수정</title>
</head>
<body>
	<h1>[주소수정]</h1>
	<form action="update" method="post">
		<input type="hidden" name="ano" value="${vo.ano}">
		<table border=1>
			<tr>
				<td width=100>이름</td>
				<td width=100><input type="text" name="name" value="${vo.name}"></td>
			</tr>
			<tr>
				<td width=100>전화</td>
				<td width=100><input type="text" name="tel" value="${vo.tel}"></td>
			</tr>
			<tr>
				<td width=100>add</td>
				<td width=100><input type="text" name="addr" value="${vo.addr}"></td>
			</tr>
		</table>
		<input type="submit" value="save"> <input type="button"
			value="delete" id="btnDelete"> <input type="reset"
			value="cancle"> <input type="button" value="list"
			onClick="location.href='list'">
	</form>
</body>
<script src="../resources/home.js"></script>
<script>
//겟일떄의 삭제!!!!!!!!!!!!!!!!!!
	$("#btnDelete").on("click", function() {
		if (!confirm("삭제?"))
			return;
		location.href = "delete?ano=${vo.ano}";
	});
</script>
</html>