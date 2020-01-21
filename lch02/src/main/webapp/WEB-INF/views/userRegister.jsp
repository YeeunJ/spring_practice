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
<title>회원가입</title>
</head>
<body>
	<%@ include file="header.jsp" %>
	<div class="jumbotron text-center">
		<h1>Board register page</h1> 
	</div>
	<div class = "container">
		<form action = "registerProcess" method = "post"> 
			<div class="form-group"><p><label>ID</label><input type="text" name ="userId" placeholder = "enter ID.."></p></div>
			<div class="form-group"><p><label>Password</label><input type="text" name="userPw" placeholder = "enter Password.."></p></div>
			<div class="form-group"><p><label>Name</label><input type="text" name="userName" placeholder = "enter Name.."></p></div>
			<button type = "submit" class="btn">register</button>
		</form>
	</div>
</body>
</html>