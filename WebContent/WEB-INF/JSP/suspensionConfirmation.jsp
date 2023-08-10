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
	href="${pageContext.request.contextPath}/CSS/buttonStyle.css">
<title>中断確認</title>
</head>
<body>
	<div>
		<div>
			<h1>中断しますか</h1>
			<div>
				<form action="learningResult" method="post">
					<div style="display: inline-block">
						<div class="button_line007">
							<button type="submit">中断</button>
						</div>
						<div>
							<c:if test="${sourcePage == 'Home'}">
								<div class="button_line007">
									<button type="button"
										onclick="window.location.href='questionAnswer'">戻る</button>
								</div>
							</c:if>
							<c:if test="${sourcePage == 'Time'}">
								<div class="button_line007">
									<button type="button"
										onclick="window.location.href='fourQuestions'">戻る</button>
								</div>
							</c:if>
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>
</body>
</html>