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
<title>TOEIC本番想定テスト</title>
</head>
<body>
	<div>
		<div>
			<form action="suspensionConfirmation" method="get">
				<div class="button_line007">
					<button type="submit">中断</button>
				</div>
			</form>
		</div>
		<div>
			<div>
				<h2>TOEIC本番想定テスト</h2>
			</div>
			<div>
				<div>Choose the correct word to complete the sentence: "I love to _______ in the park on sunny days."</div>
				<div>
					<form action="judgment" method="post">
						<div>
							<div style="display: inline-flex">
								<input type="radio" name="answer" value="walk">walk
								<input type="radio" name="answer" value="swim">swim
							</div>
							<br>
							<div style="display: inline-flex">
								<input type="radio" name="answer" value="cook">cook
								<input type="radio" name="answer" value="sleep">sleep
							</div>
						</div>
						<div class="button_line007">
							<button type="submit">送信</button>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
</body>
</html>