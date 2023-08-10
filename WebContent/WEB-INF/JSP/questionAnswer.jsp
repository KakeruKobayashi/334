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
<title>単語1問1答</title>
</head>
<body>
	<div>
		<div>
			<form action="suspensionConfirmation" method="get">
				<input type="image" name="interruption" value="中断"
					src="./IMG/suspension_1.png" alt="中断">
			</form>
		</div>
		<div>
			<h2>単語1問1答</h2>
		</div>
		<div>
			以下の問題が正しいか答えなさい。<br>
			<h2>He often go to the library to study.</h2>
		</div>
		<div>
			<form action="judgment" method="post">
				<div>
					<button type="submit" name="answer" value="circle">〇</button>
					<button type="submit" name="answer" value="cross">×</button>
				</div>
			</form>
		</div>
	</div>
</body>
</html>