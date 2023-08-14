<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/CSS/commonStyle.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/CSS/fontStyle.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/CSS/buttonStyle.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/CSS/questionStyle.css">
<title>単語1問1答</title>
</head>
<body>
 <div class="image-container">
		<img class="image-element" src="./IMG/Background_move.png" alt="Image">
</div>
	<div class="questionAnswer">
		<div class="suspension">
			<form action="suspensionConfirmation" method="get">
				<button type="submit" name="suspension" value="中断" class="button_line007">中断</button>
			</form>
		</div>

		<div id="info">単語1問1答</div>
		<div class="questionForm">
			以下の問題が正しいか答えなさい。<br>
			<div>He often go to the library to study.</div>
		</div>
		<div>
			<form action="judgment" method="post">
				<div class="●×">
					<button type="submit" name="answer" value="circle"><img src="./IMG/〇.png"></button>
					<button type="submit" name="answer" value="cross"><img src="./IMG/×.png"></button>
				</div>
			</form>
		</div>
	</div>
</body>
</html>