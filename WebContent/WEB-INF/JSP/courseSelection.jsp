<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ page isELIgnored="false"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>コース選択</title>
</head>
<body>
	<h1>
		<c:out value="${user.nickname}"/><br>さんが取得したい資格を<br>選んでください
	</h1>
	<form action="courseSelectionController" method="post">
		<div>
			<c:forEach var="item" items="${courseResult}">
				<label> <input type="radio" name="learningCourse" value="${item.coursename}">
					<c:out value="${item.coursename}" />
					<c:out value="${item.category}" />
				</label>
				<br>
			</c:forEach>
			<br>
		</div>
		<input type="button" value="確定">

		<div>
			<input type="button" name="back" value="戻る"
				onclick="window.location.href='registration'">
		</div>
	</form>
</body>
</html>
