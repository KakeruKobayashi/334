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
	href="${pageContext.request.contextPath}/CSS/courseSelection.css">

<title>コース選択</title>
</head>
<body>
<div class="image-container">
		<img class="image-element" src="./IMG/Background_move.png" alt="Image">
	</div>
	<div id="info">
		<c:out value="${nickname}" />さんが<br>取得したい資格を選んでください
	</div>

	<form action="courseSelectionController" method="post">
		<div class="course">
			<c:forEach var="item" items="${courseResult}">
				<label class="radio-inline__label">
					<input type="radio" name="learningCourse" value="${item.coursename}">
					<span>
					資格名:<c:out value="${item.coursename}" /><br>
					試験日:<c:out value="${item.examdate}" />
					</span>
				</label>
				<br>
			</c:forEach>
			<br>
		</div>
		<!-- 分岐処理が必要 -->

		<div class="button-container">
			<div>
			<button type="button" name="return" value="戻る" onclick="window.location.href='question'" class="button_line007">戻る</button>
			</div>
			<div>
			<button type="submit" name="dicision" value="決定" class="button_line008">決定</button>
			</div>
		</div>
	</form>
</body>
</html>