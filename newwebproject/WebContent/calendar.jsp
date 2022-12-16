<%@page import="java.util.Calendar"%>
<%@page import="model.MyCalendar"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
	MyCalendar mc = (MyCalendar) request.getAttribute("mc");
%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<title><%=mc.getGengou()%>年<%=mc.getMonth()%>月カレンダー</title>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<link rel="stylesheet" href="style6.css">
</head>

<body>
	<h1>勤怠管理システム</h1>
	<div class="tbDisplay">
		<div class="management_menu">
			<div>
				<button>
					<a href="http://">勤怠管理一覧</a>
				</button>
			</div>
			<div>
				<button>
					<a href="http://">カレンダー設定</a>
				</button>
			</div>
			<div>
				<button>
					<a href="http://">マスタメンテ</a>
				</button>
			</div>
		</div>
		<h2><%=mc.getGengou()%>年<%=mc.getMonth()%>月のカレンダー
		</h2>
		<p>
			<a href="?year=<%=mc.getYear()%>&month=<%=mc.getMonth() - 1%>">前月</a>
			<a class="a1"
				href="?year=<%=mc.getYear()%>&month=<%=mc.getMonth() + 1%>">翌月</a>
		</p>

		<div class="sangngang">

			<table>
				<tr>
					<th>日</th>
					<th>月</th>
					<th>火</th>
					<th>水</th>
					<th>木</th>
					<th>金</th>
					<th>土</th>
				</tr>
				<%
					for (String[] row : mc.getData()) {
				%>
				<tr>
					<%
						for (String col : row) {
					%>
					<%
						if (col.startsWith("*")) {
					%>
					<td class="today"><%=col.substring(1)%></td>
					<%
						} else {
					%>
					<td><%=col%></td>
					<%
						}
					%>
					<%
						}
					%>
				</tr>
				<%
					}
				%>
			</table>
			<form class ="form1" action="">

				<label class="label1" for="">日付入力</label><br>

				<label for="day"></label>
					<input class="select2" type="date"id="day" name="day"></input><br>

					<label class="label1" for="">勤怠選択</label><br>

				<select class="select2" name="code">
						<option selected disabled>選択してください</option>
						<option value="1">出勤</option>
						<option value="2">休日</option>


				</select><br>


				<label class="label1" for="">理由</label><br>

				<input class ="select2" type="text"><br>

				<div class="form_button">

					<button href="http://">登録</button>

				</div>
			</form>
		</div>

	</div>

</body>

</html>