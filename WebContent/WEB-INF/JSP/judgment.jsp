<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>正誤画面</title>
</head>
<body>
	<div>TOEIC読解基礎</div>
	<div>
		<img src="../img/judge.png" alt="〇">
	</div>
	<br>
	<div class="box">
		<p>正解:walk</p>
	</div>
	<div class="box">
		<p>解説</p>
	</div>

	<div>
		<form action="learningResult" method="post">
			<!-- <input type="submit" name="next" value="次へ"> -->
			<input type = "image" name = "next" value = "次へ" src="./IMG/next_1.png" alt="次へ">
		</form>
	</div>

</body>
</html>