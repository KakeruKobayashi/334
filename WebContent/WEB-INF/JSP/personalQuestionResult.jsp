<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/CSS/commonStyle.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/CSS/fontStyle.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/CSS/personalQuestionStyle2.css">
<title>アンケート結果画面</title>
</head>
<body>
<div class="image-container">
		<img class="image-element" src="./IMG/Background_move.png" alt="Image">
	</div>
	<div class="studyType">
		<c:out value="${nickname}" />
		さんの勉強のタイプは…
	</div>
	<c:choose>
		<c:when test="${personalQuestionResult eq 1}">
			<div class="typeResult"><p>まとめて時間を取るタイプ</p></div>
		</c:when>
		<c:when test="${personalQuestionResult eq 2}">
			<div class="typeResult"><p>毎日コツコツ<br>タイプ</p></div>
		</c:when>
	</c:choose>
	<div class="button-container">
		<form action="personalQuestion" method="get">
			<input type="image" name="return" value="やり直す"
				src="./IMG/return_1.png" alt="return" class="form-button">
		</form>
		<form action="question" method="get">
			<div>
				<input type="image" name="dicision" value="決定"
					src="./IMG/decision_1.png" alt="decision" class="form-button">
			</div>
		</form>
	</div>
</body>
</html>