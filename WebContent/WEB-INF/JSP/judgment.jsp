<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>正誤画面</title>
</head>
<body>
	<%!public boolean isCorrectAnswer() {
		return isCorrectAnswer();
	}%>
	<%
	boolean isCorrect = isCorrectAnswer();
	%>

	<%
	if (isCorrect) {
	%>
	<div>正解</div>
	<img src="img/correct.png" alt="correct">
	<%
	} else {
	%>
	<div>不正解</div>
	<img src="img/uncoorect.png" alt="uncorrect">
	<%
	}
	%>

	<div>正解:●●</div>
	<div>解説</div>

	<%
	if (問題がまだある) {
	%>
	<button type="button" class="next">次の問題へ</button>
	<%
	} else {
	%>
	<button type="button" class="end">結果へ</button>
	<%
	}
	%>

</body>
</html>
