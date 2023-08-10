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
	href="${pageContext.request.contextPath}/CSS/courseSelection.css">

<title>コンテンツ検索結果</title>
</head>
<body>
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
		<div class="button-container"style="display: inline-block">
			<div>
				<input type="image" name="decide"> <img
					src="./IMG/decision_1.png" alt="決定" class="form-button">
			</div>
			<div>
				<c:if test="${sourcePage == 'Home'}">
					<input type="button" name="back"
						onclick="window.location.href='home'">
					<img src="./IMG/return_1.png" alt="戻る" class="form-button">
				</c:if>
				<c:if test="${sourcePage == 'Time'}">
					<input type="button" name="back"
						onclick="window.location.href='timeSelection'">
					<img src="./IMG/return_1.png" alt="戻る" class="form-button">
				</c:if>
			</div>
		</div>
	</form>
</body>
</html>