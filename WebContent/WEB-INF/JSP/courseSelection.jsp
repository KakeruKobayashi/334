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
<header></header>
	<h1>
		<c:out value="${user.nickname}"/><br>さんが取得したい資格を<br>選んでください
	</h1>
	<form action="courseSelectionController" method="post">
		<div>
			<c:forEach var="item" items="${courseResult}">
				<label> <input type="radio" name="learningCourse"
					value="${item.coursename}"> <c:out
						value="${item.coursename}" /> <c:out value="${item.category}" />
				</label>
				<br>
			</c:forEach>
			<br>
		</div>
<<<<<<< HEAD
		<input type="submit" value="確定">

		<div>
			<input type="button" name="back" value="戻る"
				onclick="window.location.href='registration'">
=======
		<div style="display: inline-flex">
		<button>
			<input type="submit" value=""> <img src="./IMG/decision.png"
				alt="決定">
		</button>
		<button>
			<input type="submit" name="back" value=""
				onclick="window.location.href='registration'"> <img
				src="./IMG/return.png" alt="戻る">
		</button>
>>>>>>> b6b20d3759e5591f12c954ec32f592449a26a2f5
		</div>
	</form>
	<footer></footer>
</body>
</html>
