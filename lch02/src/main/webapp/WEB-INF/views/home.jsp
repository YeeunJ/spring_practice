<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page session="false" %>
<html>
<head>
<title>Home</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>
	<%@ include file="header.jsp" %>
	<div class="jumbotron text-center">
	  <h1>My First Board page!!</h1>
	  <p>The time on the server is ${serverTime}.</p> 
	</div>
	<div class = "container">
		<form action = "listAll" method="get">
			<button type ="submit" class="btn btn-info">CRUD게시판 가기</button>
		</form>
	</div>
</body>
</html>

