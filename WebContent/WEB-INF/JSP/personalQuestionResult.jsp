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
<title>アンケート結果画面</title>
</head>
<body>
	<div>
		<c:out value="${nickname}" />
		さんの勉強のタイプは…
	</div>
	<c:choose>
		<c:when test="${personalQuestionResult eq 1}">
			<p>まとめて時間を取るタイプ</p>
		</c:when>
		<c:when test="${personalQuestionResult eq 2}">
			<p>毎日コツコツタイプ</p>
		</c:when>
	</c:choose>
	<form action="personalQuestion" method="get">
		<input type="image" name="return" value="やり直す" src="./IMG/return_1.png"
			alt="return">
	</form>
	<form action="question" method="get">
		<div>
			<input type="image" name="dicision" value="決定"
				src="./IMG/decision_1.png" alt="decision">
		</div>
	</form>
</body>
</html>