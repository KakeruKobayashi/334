<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
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
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/CSS/questionStyle.css">
<title>学習結果</title>
</head>
<body>
<div class="image-container">
		<img class="image-element" src="./IMG/Background_move.png" alt="Image">
	</div>
	<div>
		<div class="course-container">
			現在選択中コース：<br><c:out value="${course.coursename}コース" />
			<br>
		</div>
		<div>
			<c:out value = "${courseName}" />
		</div>
	</div>
	<c:if test="${sourcePage == 'Home'}">
		<div>
			<div id="info">単語1問1答</div>
			<div>
				<div id="info">確認テスト結果<br>5問中4問正解</div>

					<div id="info">
						次は満点目指そう
					</div>
				</div>
			</div>

	</c:if>
	<c:if test="${sourcePage == 'Time'}">
		<div>
			<div>
			<div id="info">TOEIC本番想定テスト</div>
			</div>
			<div>
				<div id="info">
					確認テスト結果
					<br>
					20問中19問正解
				</div>
			</div>
			<div id="info">
				次は満点目指そう！
			</div>
		</div>
	</c:if>
	<div>
		<form action = "home" method = "get">
			<button type="submit" class="button_line008">終了</button>
		</form>
	</div>
</body>
</html>