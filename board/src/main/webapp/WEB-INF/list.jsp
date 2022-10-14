<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<h2>게시판</h2>
	
	<p><a href="write">글쓰기</a></p>
	<table width="500" border="1">
		<tr>
			<td> 제목 </td>
			<td> 작성자 </td>
			<td> 조회수 </td>
			<td> 작성일 </td>
		</tr>
		<c:forEach items="${list}" var="bdto">
			<tr>
				<td><a href="readnum?id=${bdto.id}">${bdto.title}</a></td>
				<td> ${bdto.name} </td>
				<td> ${bdto.readnum} </td>
				<td> ${bdto.writeday} </td>
			</tr>
		</c:forEach>
	</table>
	
</body>
</html>