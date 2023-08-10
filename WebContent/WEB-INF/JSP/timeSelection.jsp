<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="timeSelection.js"></script>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/CSS/commonStyle.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/CSS/fontStyle.css">
	<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/CSS/buttonStyle.css">

<title>勉強時間選択</title>
</head>
<body>
	<div id="info">今日の勉強時間を選択してください</div>
	<form action="timeSelectionController" method="post">
		<div id="customTime">
			<input type="number" name="hours" id="hours" min="0" max="23"
				value="0"> 時間 <input type="number" name="minutes"
				id="minutes" min="0" max="59" value="0"> 分
		</div>
		<br>
		<div class="button-container">
			<div class="button_line007">
				<button type="button" name="return"
					onclick="window.location.href='home'">戻る</button>
			</div>
			<div class="button_line007">
				<button type="submit">決定</button>
			</div>
		</div>
	</form>
</body>
</html>