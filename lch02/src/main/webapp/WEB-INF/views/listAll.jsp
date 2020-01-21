<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page session="false"%>

<!DOCTYPE html> 
<html>
<head>
<title>게시판 목록</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>

<body>
	<%@ include file="header.jsp" %>
	<div class="jumbotron text-center">
		<h1>Board list</h1>
	</div>
	<div class = "container">
		<form action = "regist" method = "get">
		<table border="1" width="880" class="table table-striped">
		<thead>
	        <tr>
	        <td width="77">
	            <p align="center">글번호</p>
	        </td>
	        <td width="327">
	            <p align="center">제목</p>
	        </td>
	        <td width="197">
	            <p align="center">작성자</p>
	        </td>
	        <td width="155">
	            <p align="center">작성일</p>
	        </td>
	        <td width="90">
	            <p align="center">조회수</p>
	        </td>
	        </tr>
	     </thead>
	     <tbody>
	        <c:forEach items="${list}" var="boardVO">
		<tr>
	        <td>${boardVO.bno}</td>
	        <td><a href='/read?bno=${boardVO.bno}'>${boardVO.title}</a></td>
	        <td>${boardVO.writer}</td>
	        <td><fmt:formatDate pattern="yyyy-MM-dd HH:mm"
					value="${boardVO.regdate}" /></td>
	        <td><span class="badge bg-red">${boardVO.viewcnt}</span></td>
		</tr>
			</c:forEach>
		</tbody>
	    </table>
	    <button type ="submit" class="btn">글쓰기</button>
		</form>
	</div>
</body>
</html>