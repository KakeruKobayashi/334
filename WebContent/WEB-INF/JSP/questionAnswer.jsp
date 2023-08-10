<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>英語一問一答</title>
</head>
<body>
	<main>
		<div>
			<img src="img/question.png" alt="問題">
		</div>
		<div>
			<p>
				一問一答
			</p>
		</div>
		<div>
			<form action = "judgment" method = "post">
				<div>
					<button type = "submit" name = "correct" value = "〇">〇</button>
					<button type = "submit" name = "incorrect" value = "×">×</button>
				</div>
			</form>
		</div>
		<div style="display: inline;">
			<form action="suspensionConfirmation" method="post">
				<input type="image" name="interruption" value="中断" src="./IMG/suspension_1.png" alt="中断">
			</form>
		</div>
	</main>
</body>
</html>