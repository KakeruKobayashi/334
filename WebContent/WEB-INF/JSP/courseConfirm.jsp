<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>コース確認画面</title>
</head>
<body>
	<div>
	<div>
		<h2>以下の資格を学習しますか？</h2>
	</div>
	<div>

	</div>

	<div style="display:inline-flex">
		<div>
			<form action = "courseSelection" method = "get">
				<input type = "submit" name = "back" value = "戻る">
			</form>
		</div>
		<div>
			<form action = "home" method = "post">
				<input type = "submit" name = "start" value = "学習を始める">
			</form>
		</div>
	</div>
	</div>
</body>
</html>