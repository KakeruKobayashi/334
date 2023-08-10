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
<title>答え</title>
</head>
<body>

<!-- correct.pngは画像なし -->
	<div>
		<c:out value="${contentName}" />
	</div>

	<c:if test="${sourcePage == 'Time'}">
		<c:choose>
			<c:when test="${answer == 'walk'}">
    正解
    <img src="../img/correct.png" alt="〇">
			</c:when>
			<c:otherwise>
    不正解
    <img src="../img/incorrect.png" alt="×">
			</c:otherwise>
		</c:choose>

		<div class="box">
			<p>正解:walk</p>
		</div>
		<div class="box">
			<p>解説</p>
		</div>
	</c:if>

	<c:if test="${sourcePage == 'Home'}">
		<c:choose>
			<c:when test="${answer == 'cross'}">
    正解
    <img src="../img/correct.png" alt="〇">
			</c:when>
			<c:otherwise>
    不正解
    <img src="../img/incorrect.png" alt="×">
			</c:otherwise>
		</c:choose>
	</c:if>

	<div class="box">
		<p>正解:○</p>
	</div>
	<div class="box">
		<p>解説</p>
	</div>

	<div>
		<form action="learningResult" method="post">
			<button type="submit">次の問題</button>
		</form>
	</div>

</body>
</html>