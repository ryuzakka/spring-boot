<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<h2>글 상세</h2>
	
	<table width="400" border="1">
		<tr>
			<td>제 목</td>
			<td>${view.title}</td>
		</tr>
		<tr>
			<td>이 름</td>
			<td>${view.name}</td>
		</tr>
		<tr>
			<td>내 용</td>
			<td>${view.content}</td>
		</tr>
		<tr>
			<td>조회수</td>
			<td>${view.readnum}</td>
		</tr>
		<tr>
			<td>작성일</td>
			<td>${view.writeday}</td>
		</tr>
	</table>
	<p>
	<a href="list">list</a>
	
</body>
</html>