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
<title>글읽기</title>
</head>
<body>
	<%@ include file="header.jsp" %>
	<div class="jumbotron text-center">
		<h1>Board read page</h1> 
	</div>
	<div class = "container">
		<form>
			<p><label>글번호</label> <input type="text" name ="bno" value ="${boardVO.bno}" readonly="readonly"></p>
			<p><label>제목</label> <input type="text" name ="title" style="background-color:#B0E0E6;" value ="${boardVO.title}" readonly="readonly"></p>
			<p><label>작성자</label> <input type="text" name="writer" size="15" value = "${boardVO.writer}"readonly="readonly"><p>
			<label>내용</label> <textarea name=content rows ="10" cols="70"  style="background-color:#B0E0E6;"    readonly="readonly">${boardVO.content}</textarea><br>
			
			<button type="submit" formaction="modify" formmethod="get" class = "btn">수정</button>
			<button type="submit" formaction="remove" formmethod="post" class = "btn">삭제</button>
			<button type="submit" formaction="listAll" formmethod="get" class = "btn">목록</button>
		</form>
	</div>
</body>
</html>