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
<title>単語1問1答</title>
</head>
<body>
	<div class="course-container">
		現在のコース：<c:out value="${course.coursename}" />
		<br> 単語1問1答 5/5
	</div>
	<div class="image-container">
		<img class="image-element" src="./IMG/Background_move.png" alt="Image">
	</div>
	<div class="questionAnswer">
		<div class="suspension">
			<form action="suspensionConfirmation" method="get">
				<button type="submit" name="suspension" value="中断"
					class="button_line007">中断</button>
			</form>
		</div>
		<div id="info">単語1問1答</div>
		<div class="questionForm">
			以下の単語と意味の組み合わせについて正しいかどうか答えなさい。<br>
			<div>
				<h4>account : 口座・勘定</h4>
			</div>
		</div>
		<div>
			<form action="judgment" method="post">
				<div class="●×">
					<button type="submit" name="answer" value="circle"
						class="circle-btn">
						<img src="./IMG/〇.png" class="circleMark">
					</button>
					<button type="submit" name="answer" value="cross" class="cross-btn">
						<img src="./IMG/×.png" class="crossMark">
					</button>
				</div>
			</form>
		</div>
	</div>
</body>
</html>