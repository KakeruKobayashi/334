<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
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
<title>学習結果</title>
</head>
<body>
	<div>
		<h5>
			現在選択中コース：
			<br>
		</h5>
		<div>
			<c:out value = "${courseName}" />
		</div>
	</div>
	<c:if test="${sourcePage == 'Home'}">
		<div>
			<div>
				<p>
					単語1問1答
				</p>
				<br>
			</div>
			<div>
				<div>
					<h2>
						確認テスト結果
						<br>
						5問中4問正解
					</h2>
				</div>
				<br>
				<div>
					<p>
						次は満点目指そう
					</p>
				</div>
			</div>
		</div>
	</c:if>
	<c:if test="${sourcePage == 'Time'}">
		<div>
			<div>
				<h4>TOEIC本番想定テスト</h4>
			</div>
			<div>
				<h2>
					確認テスト結果
					<br>
					20問中19問正解
				</h2>
			</div>
			<div>
				次は満点目指そう！
			</div>
		</div>
	</c:if>
	<div>
		<form action = "home" method = "get">
			<button type="submit">終了</button>
		</form>
	</div>
</body>
</html>