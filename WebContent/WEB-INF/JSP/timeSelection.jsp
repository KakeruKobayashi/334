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
	<div>本日の勉強時間を選択してください</div>

	<form action="result.jsp" method="post">
		<input type="radio" name="studyTime" value="5" id="course1"
			onclick="disableCustomTime()">
			<label for="course1">5分で完了</label>
		<br>

		<input type="radio" name="studyTime" value="custom"
			id="course2" onclick="enableCustomTime()">
			<label for="course2">時間を選ぶ</label> <br>

		<div id="customTime">
			<input type="number" name="hours" id="hours" min="0" max="23" value="0" disabled>時間
			<input type="number" name="minutes" id="minutes" min="0" max="59" value="0" disabled> 分
		</div>
		<br>

		<button type="button" class="return">戻る</button>
		<button type="button" class="decision">決定</button>
	</form>

	<script>
		function disableCustomTime() {
			document.getElementById("hours").disabled = true;
			document.getElementById("minutes").disabled = true;
		}

		function enableCustomTime() {
			document.getElementById("hours").disabled = false;
			document.getElementById("minutes").disabled = false;
		}

		disableCustomTime();
	</script>

</body>
</html>
