<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>答え</title>
</head>
<body>
	<div>
		<c:out value="${contentName}" />
	</div>

	<c:if test="${sourcePage == 'Time'}">
		<c:choose>
			<c:when test="${answer == 'walk'}">
    正解
    <img src="../img/judge.png" alt="〇">
			</c:when>
			<c:otherwise>
    不正解
    <img src="../img/judge.png" alt="×">
			</c:otherwise>
		</c:choose>

		<div class="box">
			<p>正解:walk</p>
		</div>
		<div class="box">
			<p>解説</p>
		</div>
	</c:if>

	<c:if test="${sourcePage == 'Home'}">
		<c:choose>
			<c:when test="${answer == 'circle'}">
    正解
    <img src="../img/judge.png" alt="〇">
			</c:when>
			<c:otherwise>
    不正解
    <img src="../img/judge.png" alt="×">
			</c:otherwise>
		</c:choose>
	</c:if>

	<div class="box">
		<p>正解:○</p>
	</div>
	<div class="box">
		<p>解説</p>
	</div>

	<div>
		<form action="learningResult" method="post">
			<input type="image" name="next" value="次へ" src="./IMG/next_1.png"
				alt="次へ">
		</form>
	</div>

</body>
</html>