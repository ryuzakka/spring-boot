<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form method="post" action="write_ok">
		<table width="500" border="1">
			<tr>
				<td> 제 목 </td>
				<td> <input type="text" name="title"> </td>
			</tr>
			<tr>
				<td> 이 름 </td>
				<td> <input type="text" name="name"> </td>
			</tr>
			<tr>
				<td> 비밀번호 </td>
				<td> <input type="password" name="pwd"> </td>
			</tr>
			<tr>
				<td> 내 용 </td>
				<td> <textarea rows="6" cols="40" name="content"></textarea> </td>
			</tr>
		</table>
		<input type="submit" value="submit">
	</form>
</body>
</html>