<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="timeSelection.js"></script>
<title>勉強時間選択</title>
</head>
<body>
	<header></header>
	<div id="info">今日の勉強時間を選択してください</div>
	<form action="timeSelectionController" method="post">
		<div id="customTime">
			<input type="number" name="hours" id="hours" min="0" max="23"
				value="0"> 時間 <input type="number" name="minutes"
				id="minutes" min="0" max="59" value="0"> 分
		</div>
		<br>
		<div>
			<input type="image" name="dicision" value="決定"
				src="./IMG/decision.png" alt="decision">
		</div>
		<div>
			<input type="image" name="return" value="戻る"
			onclick="window.location.href='home'" src="./IMG/return.png"
				alt="return">
		</div>
	</form>
	<footer></footer>
</body>
</html>