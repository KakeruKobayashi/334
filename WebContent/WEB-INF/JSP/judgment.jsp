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
	href="${pageContext.request.contextPath}/CSS/questionStyle.css">
<title>答え</title>
</head>
<body>
	<div class="image-container">
		<img class="image-element" src="./IMG/Background_move.png" alt="Image">
	</div>
	<div class="answerForm">
		<!-- correct.pngは画像なし -->

		<div id="info">単語1問1答</div>
		<div class="box">
		<c:if test="${sourcePage == 'Time'}">
			<div class="course-container">
				現在のコース：<c:out value="${course.coursename}" />
				<br> TOEIC本番想定テスト 20/20
			</div>
			<div class="box">
				<c:choose>
					<c:when test="${answer == 'walk'}">
						<img src="./IMG/〇.png" alt="〇">
					</c:when>
					<c:otherwise>
						<img src="./IMG/×.png" alt="×">
					</c:otherwise>
				</c:choose>
				<div class="Answer">
					<p>正解:walk</p>
					<p>解説</p>
				</div>
			</div>

		</c:if>


		<c:if test="${sourcePage == 'Home'}">
			<div class="course-container">
				現在のコース：<c:out value="${course.coursename}" />
				<br> 単語1問1答 5/5
			</div>
			<div class="box">
				<c:choose>
					<c:when test="${answer == 'cross'}">
						<div>正解</div>
					</c:when>
					<c:otherwise>
						<div>不正解</div>
					</c:otherwise>
				</c:choose>

			<div class="Answer">
				<p>解説</p>
			</div>

		</div>
		</c:if>

	</div>

	<div>
		<form action="learningResult" method="post">
			<button type="submit" name="next" value="次へ" class="button_line008">次へ</button>
		</form>
	</div>
</body>
</html>