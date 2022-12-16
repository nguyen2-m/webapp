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
	<h1>勤怠入力フォーム</h1>

	<form action="add" method="post">


		<table class="table2" width = "70%" height = "250">
			<tr>
				<td class="q">勤怠区分：</td>
				<td><select class="select1" name="code">
						<option selected disabled>選択してください</option>
						<option value="1">欠勤</option>
						<option value="2">遅刻</option>
						<option value="3">早退</option>

				</select></td>

			</tr>
			<tr>
				<td rowspan="2" class="q">日時：</td>
				<td>
					<label for="day"></label>
					<input class="input1" type="date"id="day" name="day"></input>
					<span>～</span>
					<label for="day"></label>
					<input class="input1"type="date" id="day" name="day"></input>
				</td>

			</tr>

			<tr>

				<td><select class="w">
						<c:forEach var="i" begin="0" end="23">

							<option value="${i}"><c:out value="${i}" /></option>

						</c:forEach>
				</select> <span class="j">時</span>
				<select class="w">
						<c:forEach var="i" begin="0" end="59">

							<option value="${i}"><c:out value="${i}" /></option>

						</c:forEach>
				</select> <span class="j">分</span>
				<span class ="l">～</span>
				<select class="w">
						<c:forEach var="i" begin="0" end="23">

							<option value="${i}"><c:out value="${i}" /></option>

						</c:forEach>
				</select> <span class="j">時</span>
				<select class="w">
						<c:forEach var="i" begin="0" end="59">

							<option value="${i}"><c:out value="${i}" /></option>

						</c:forEach>
				</select> <span class="j">分</span></td>
			</tr>

			<tr>
				<td class ="q">備考:</td>
				<td><input class="text1" name="name" type="text" placeholder="理由などを書いてください"></input></td>

			</tr>


		</table>
		<input class="button" type="submit" value="申請" />

	</form>

</body>
</html>