<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script src="http://code.jquery.com/jquery-3.1.1.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert</title>
</head>
<body>
	<h1>글쓰기</h1>

	<form action="insert" method="post" name="frm">
		<table border="1">
			<tr>
				<td width=100>title</td>
				<td width=300><input type="text" name="title"></td>

			</tr>
			<tr>
				<td width=100>writer</td>
				<td width=300><input type="text" name="writer" value="guest">
				</td>
			</tr>
			<tr>
				<td width=100>content</td>
				<td width=300><textarea rows="10" cols="50" name="content"> </textarea>
				</td>
			</tr>
		</table>
		<input type="submit" value="저장"> <input type="reset"
			value="취소"> <input type="button" value="list"
			onclick="location.href='list'">
	</form>
</body>

<script>
	$(frm).submit(function(e) {
		e.preventDefault();

		if ($(frm.title).val() == "") {
			alert("제목");
			$(frm.title).focus();
		} else if ($(frm.content).val() == "") {
			alert("내용");
			$(frm.content).focus();
		} else {
			if (!confirm("글등록?"))
				return;
			frm.submit();
		}
	})
	
</script>
</html>