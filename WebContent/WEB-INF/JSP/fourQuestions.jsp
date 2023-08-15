<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/CSS/commonStyle.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/CSS/fontStyle.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/CSS/buttonStyle.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/CSS/questionStyle.css">
<title>TOEIC本番想定テスト</title>
</head>
<body>
	<div class="image-container">
		<img class="image-element" src="./IMG/Background_move.png" alt="Image">
	</div>
	<div>
		<div class="suspension">
			<form action="suspensionConfirmation" method="get">
				<button type="submit" name="suspension" value="中断"
					class="button_line007">中断</button>
			</form>
		</div>


		<div id="info">TOEIC本番想定テスト</div>
		<div class="questionForm">
			<div>Choose the correct word to complete the sentence: "I love
				to _______ in the park on sunny days."</div>
			<div>
				<form action="judgment" method="post">
					<div>
						<div style="display: inline-flex">
							<input type="radio" name="answer" value="walk">walk <input
								type="radio" name="answer" value="swim">swim
						</div>
						<br>
						<div style="display: inline-flex">
							<input type="radio" name="answer" value="cook">cook <input
								type="radio" name="answer" value="sleep">sleep
						</div>
					</div>
			</div>
		</div>
		<div class="button-container">
			<button type="submit" class="button_line008">送信</button>
		</div>
		</form>
	</div>
</body>
</html>