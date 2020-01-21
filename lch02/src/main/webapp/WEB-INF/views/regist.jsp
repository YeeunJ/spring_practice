<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<title>글쓰기</title>
</head>
<body>
	<%@ include file="header.jsp" %>
	<div class="jumbotron text-center">
		<h1>Board writing page</h1> 
	</div>
	<div class = "container">
		<form method = "post"> 
			<p><label>제목</label><input type="text" name ="title"></p>
			<p><label>작성자</label><input type="text" name="writer" size="15"></p>
			<label>내용</label><p>
			<textarea rows="15" cols="65" name = "content"></textarea><p>
			<button type = "submit" class="btn">등록</button>
		</form>
	</div>
</body>
</html>