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
<title>コース選択</title>
</head>
<body>
	<h1>
		<c:out value="${nickname}" />さんが取得したい資格を選んでください
	</h1>
	<form action="courseSelectionController" method="post">
		<div>
			<c:forEach var="item" items="${courseResult}">
				<label> <input type="radio" name="learningCourse"
					value="${item.coursename}"> <c:out
						value="${item.coursename}" /> <c:out value="${item.genre}" />
				</label>
				<br>
			</c:forEach>
			<br>
		</div>
		<!-- 分岐処理が必要 -->
		<div>
			<input type="image" name="return" value="戻る"
				onclick="window.location.href='question'" src="./IMG/return_1.png" alt="return">

		</div>
		<input type="image" value="決定" name ="decision" src="./IMG/decision_1.png" alt="decision">


	</form>
</body>
</html>
