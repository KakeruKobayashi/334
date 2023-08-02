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
	<div>今日の学習時間を<br>入力してください</div>

	<form action="result.jsp" method="post">
		<div id="customTime">
			<input type="number" name="hours" id="hours" min="0" max="23" value="0">時間
			<input type="number" name="minutes" id="minutes" min="0" max="59" value="0"> 分
		</div>
		<br>

		<button type="button" class="return">戻る</button>
		<button type="button" class="decision">決定</button>
	</form>
</body>
</html>