<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>string type</title>
</head>
<body>
<h1>
    string 타입으로 실행!!
</h1>
<p>문자열.jsp 파일을 찾아서 실행</p>
<p> @ModelAttribute("msg") 는 주소창에 msg라는 파라미터 값을 가져온다.<br>
    http://localhost:8080/doB?msg=haha 이런 식으로 넘김
</p>
<p>넘어온 것 찍어보자!!: ${msg}</p>
<p>넘기기 위해서는 위 url에 적어야 한다!! </p>

</body>
</html>