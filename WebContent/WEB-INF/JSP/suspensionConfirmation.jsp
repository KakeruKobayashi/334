<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
<title>中断確認</title>
</head>
<body>
	<div class="image-container">
		<img class="image-element" src="./IMG/Background_move.png" alt="Image">
	</div>
	<div>
		<div id="info">中断しますか</div>
		<div class="button-container">
			<form action="learningResult" method="post">
				<div>
					<button type="submit" class="button_line007">中断</button>
				</div>
				<div>
					<c:if test="${sourcePage == 'Home'}">
						<button type="button" class="button_line008"
							onclick="window.location.href='questionAnswer'">戻る</button>
					</c:if>
				</div>
				<div>
					<c:if test="${sourcePage == 'Time'}">
						<button type="button" class="button_line008"
							onclick="window.location.href='fourQuestions'">戻る</button>
					</c:if>
				</div>
			</form>
		</div>
	</div>
</body>
</html>