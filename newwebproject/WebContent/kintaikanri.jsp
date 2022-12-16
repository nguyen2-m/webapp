<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>kintaikanrigamen</title>
<link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>
	<h1>勤怠管理システム</h1>
	<table class="table1" border="1px solid black">
		<tr>
			<th>クラス</th>
			<th>社員番号</th>
			<th>氏名</th>
		</tr>
		<c:forEach items="${listS}" var="x">
			<tr>
				<td>${x.classname}</td>
				<td>${x.userId}</td>
				<td>${x.name}</td>
			</tr>
		</c:forEach>
	</table>
	<button class="button">勤怠入力</button>
</body>
</html>