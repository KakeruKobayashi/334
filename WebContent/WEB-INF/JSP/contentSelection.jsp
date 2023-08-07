<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>コンテンツ検索結果</title>
</head>
<body>
	<div id="info">検索結果</div>
	<form action="contentSelectionController" method="post">
		<div>
			<c:forEach var="contents" items="${courseContent }">
				<input type=radio name="content" value="${contents.contentName}"
					required>
				<c:out value="${contents.contentName}" />
				<br>
			</c:forEach>
		</div>
		<div style="display: inline-block">
			<div>
				<c:if test="${sourcePage == 'Home'}">
					<input type="image" name="return" value="戻る"
						onclick="window.location.href='home'" src="./IMG/return.png"
						alt="return">
				</c:if>
				<c:if test="${sourcePage == 'Time'}">
					<input type="image" name="return" value="戻る"
						onclick="window.location.href='timeSelection'"
						src="./IMG/return.png" alt="return">
				</c:if>
			</div>
		</div>
		<div>
			<input type="imgage" name="decide" value="決定"
				src="./IMG/decision.png" alt="決定">
		</div>

	</form>
</body>
</html>