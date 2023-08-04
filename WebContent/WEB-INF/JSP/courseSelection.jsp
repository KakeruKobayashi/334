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
		ともや<br>さんが取得したい資格を<br>選んでください
	</h1>
	<form action="courseSelectionController" method="post">
		<div>
			<c:forEach var="item" items="${courseResult}">
				<label> <input type="radio" name="learningContent">
					<c:out value="${item}" />

				</label>
				<br>
			</c:forEach>
			<br>
		</div>
		<input type="submit" value="確定">

		<div>
			<input type="submit" name="back" value="戻る"
				onclick="window.location.href='registrarion'">
		</div>
	</form>
</body>
</html>
