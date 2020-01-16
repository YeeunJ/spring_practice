<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ModelAndView 타입</title>
</head>
<body>
	<h1>ModelAndView_test.jsp파일</h1>
	<p>view.setViewName("ModelAndView_test"); 이 안에 적은 string 값이 jsp 파일의 이름이 됨</p>
	<h4>이름 : ${name}</h4>
	<p>view.addObject("name", "yeeun");  이런식으로 객체를 만들어 정보 전달 가능</p>
	
</body>
</html>