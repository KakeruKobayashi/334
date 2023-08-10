<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
<title>中断確認</title>
</head>
<body>
	<div>
		<div>
			<h1>中断しますか</h1>
			<div>
				<form action="learningResult" method="post">
					<div style="display: inline-block">
						<div>
							<!--<input type="submit" name="decide" value="中断する">  -->
							<input type="image" name="interruption" value="中断"
								src="./IMG/suspension_1.png" alt="中断">
						</div>
						<div>
							<c:if test="${sourcePage == 'Home'}">
								<input type="image" name="back" value="戻る"
									onclick="window.location.href='questionAnswer'">
								<img src="./IMG/return_1.png" alt="戻る">
							</c:if>
							<c:if test="${sourcePage == 'Time'}">
								<input type="image" name="back" value="戻る"
									onclick="window.location.href='fourQuestions'">
								<img src="./IMG/return_1.png" alt="戻る">
							</c:if>
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>
</body>
</html>