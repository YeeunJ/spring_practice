<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page session="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>글 수정</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>
<%@ include file="header.jsp" %>
<div class="jumbotron text-center">
	<h1>Board modify page</h1> 
</div>
<div class ="container">
<h2>modifying page.</h2>
<form action="modify" method = "post">
    <div class="form-group"><p><label>글번호</label> <input type="text" name ="bno" value ="${boardVO.bno}" readonly="readonly"></p></div>
    <div class="form-group"><p><label>제목</label ><input type="text" name ="title" value ="${boardVO.title}" ></p></div>
    <div class="form-group"><p><label>작성자</label> <input type="text" name="writer" size="15" value = "${boardVO.writer}"></p></div>
    <div class="form-group">
	    <label>내용</label>
	    <textarea name=content rows ="10" cols="70" >${boardVO.content}</textarea><br>
    </div>
    <button type ="submit" class ="btn">완료</button>
 </form>
 </div>
</body>
</html>