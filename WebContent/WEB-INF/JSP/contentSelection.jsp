<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/CSS/commonStyle.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/CSS/fontStyle.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/CSS/buttonStyle.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/CSS/courseSelection.css">

<title>コンテンツ検索結果</title>
</head>
<body>
<div class="image-container">
	<img class="image-element" src="./IMG/Background_move.png" alt="Image">
</div>
	<div id="info">検索結果</div>
	<form action="contentSelectionController" method="post">
		<div class="course">
			<c:forEach var="contents" items="${courseContent }">
			<label class="radio-inline__label">
				<input type=radio name="content" value="${contents.contentName}"
					required>
				<span>
				<c:out value="${contents.contentName}" />
				</span>
			</label>
			<br>
			</c:forEach>
		</div>
		<div class="button-container">
		<div>
				<c:if test="${sourcePage == 'Home'}">
				<button type = "button" name = "back" value = "戻る" class="button_line007" onclick="window.location.href='home'">前に戻る</button>
				</c:if>
				<c:if test="${sourcePage == 'Time'}">
				<button type = "button" name = "back" value = "戻る" class="button_line007" onclick="window.location.href='timeSelection'">前に戻る</button>
				</c:if>
			</div>
			<div>
			<button type = "submit" name="decide" value="決定" class="button_line008">決定する</button>
			</div>
		</div>
	</form>
</body>
</html>