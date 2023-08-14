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
	href="${pageContext.request.contextPath}/CSS/buttonStyle.css">
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
		<button type="submit" name="return" value="やり直す" class="button_line007">戻る</button>
		</form>
		<form action="question" method="get">
			<div>
			<button type="submit" name="dicision" value="決定" class="button_line008">決定</button>
			</div>
		</form>
	</div>
</body>
</html>