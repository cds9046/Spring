<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script src="http://code.jquery.com/jquery-3.1.1.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/handlebars.js/3.0.1/handlebars.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert</title>
</head>
<body>
	<h1>글읽기</h1>
	<form action="update" method="post" name="frm">
		<input type="hidden" name="bno" value="${vo.bno}">
		<table border="1">
			<tr>
				<td width=100>title</td>
				<td width=300> <input type="text" name="title" value="${vo.title}"> </td>
			</tr>
			<tr>
				<td width=100>writer</td>
				<td width=300> <input type="text" name="writer" value="${vo.writer}"> </td>
			</tr>
			<tr>
				<td width=100>content</td>
				<td width=300><textarea rows="10" cols="50" name="content"> ${vo.content}</textarea>
				</td>
			</tr>
		</table>
		<input type="submit" value="저장">
		<input type="reset"	value="취소">
		<input type="button" value="삭제" id="btnDelete">
		<input type="button" value="목록" onclick="location.href='list'">
		<br><br>
		<hr>
		<h1>[첨부파일목록]</h1>
		<div id = "upload">
			<input type = "file" id = "file">
		</div>
		<div id = "uploaded">
			<ul id = "uploadedFiles"></ul>
			
		</div>
	</form>
</body>

<script>
	var bno = "${vo.bno}";
	
	getAttach();
	
	function getAttach(){
		$.ajax({
			type:"get",
			url:"getAttach.json",
			data:{"bno":bno},
			dataType:"json",
			success:function(data){
				$(data).each(function(){
					var str = "<li>";
					str += "<img src=/displayFile?fileName="+this+" width = 100/>";
					str += "<input type = 'text' name = 'files' value = '"+ this + "'>";
					str += "<a href='"+this+"'>삭제</a>";
					str += "</li>";
					
					$("#uploadedFiles").append(str);
				});
			}
		});
	}
	$("#file").on("change", function(){
		var file = $("#file")[0].files[0];
		if(file == null){
			return;
		}
		
		var formData = new FormData();
		formData.append("file", file);
		
		$.ajax({
			type:"post",
			url:"/uploadFile",
			processData:false,
			contentType:false,
			data:formData,
			success:function(data){
				var str = "<li>";
				str += "<img src=/displayFile?fileName="+data+" width = 100/>";
				str += "<input type = 'text' name = 'files' value = '"+ data + "'>";
				str += "<a href='"+data+"'>삭제</a>";
				str += "</li>";
				
				$("#uploadedFiles").append(str);
			}
		});
	});
	
	//업로드 파일 삭제
	$("#uploadedFiles").on("click", "a", function(e){
		e.preventDefault();
		var fileName = $(this).attr("href");
		var li = $(this).parent();
		$.ajax({
			type:"post",
			url:"/deleteFile",
			data:{"fileName":fileName},
			success:function(){
				li.remove();
			}
		});
	});

</script>
</html>