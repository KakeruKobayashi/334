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
	href="${pageContext.request.contextPath}/CSS/studyQuestionStyle.css">
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
		<div id="info" style="font-size:40px;">単語1問1答</div>
		<div class="fourQuestion">
			以下の単語と意味の組み合わせに<br>ついて正しいかどうか答えなさい。<br>
			<div>
				<h4>account : 口座・勘定</h4>
			</div>
		</div>
		<div>
			<form action="judgment" method="post">
				<div class="●×">
					<button type="submit" name="answer" value="circle" class = "answer"><img src="./IMG/circle.png"></button>
					<button type="submit" name="answer" value="cross" class = "answer"><img src="./IMG/cross.png"></button>
				</div>
			</form>
		</div>
	</div>
</body>
</html>