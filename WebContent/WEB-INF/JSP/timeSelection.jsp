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
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/CSS/timeSelection.css">

<title>勉強時間選択</title>
</head>
<body>
<div class="image-container">
		<img class="image-element" src="./IMG/Background_move.png" alt="Image">
	</div>
	<div id="info">
		今日の学習時間を<br>選択してください
	</div>
	<div id="info">
	<form action="timeSelectionController" method="post">
		<div id="customTime">
			<input type="number" name="hours" id="hours" min="0" max="23"
				value="0"> 時間 <input type="number" name="minutes"
				id="minutes" min="0" max="59" value="0"> 分
		</div>
		<br>
	</div>
		<div class="button-container">
		<div>
		<button type="button" name="return" value="戻る" class="button_line007"
				onclick="window.location.href='home'">戻る</button>
		</div>
		<div>
		<button type="submit" class="button_line008">決定</button>
		</div>
		</div>
	</form>
</body>
</html>