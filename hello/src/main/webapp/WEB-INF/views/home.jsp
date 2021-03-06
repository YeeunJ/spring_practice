<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ page session="false" %>
<html>
<head>
	<title>Home</title>
</head>
<body>
<div id="friendlist">
	<table border="1">
		<tr>
			<th>구분</th>
			<th>이름</th>
			<th>나이</th>
			<th>주소</th>
			<th>이미지</th>
			<th>제거</th>
		</tr>
		
		<c:forEach items='${listuser}' var='user'>
			<tr>
				<td><c:out value='${i}'/></td>
				<td><c:out value='${user.userName}'/></td>
				<td><c:out value='${user.userAge}'/></td>
				<td><c:out value='${user.userAddress}'/></td>
				<td><img src="http://marin.dothome.co.kr/2020Camp/img/${user.userImage}" width="100px" height="100px"/></td>
				<td><button data-pid="${user.userName}">제거</button></td>
			</tr>
		</c:forEach>
	</table>
</div>
</body>
</html>
