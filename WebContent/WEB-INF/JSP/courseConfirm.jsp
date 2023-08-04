<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>コース確認画面</title>
</head>
<body>
	<div>
	<div>
		<h2>以下の資格を学習しますか？</h2>
	</div>
	<div>
        <img src="../img/course.png" alt="選択したコース"><br>
        <c:out value="${course.coursename}" />
        <c:out value="${course.category}" />
	</div>
    <div>
        <p>あなたの資格取得フロー</p>
        <img src="../img/flow.png" alt="資格取得フロー"><br>
    </div>

	<div style="display:inline-flex">
		<div>
			<form action = "courseSelection" method = "get">
				<input type = "submit" name = "back" value = "戻る">
			</form>
		</div>
		<div>
			<form action = "home" method = "get">
				<input type = "submit" name = "start" value = "学習を始める">
			</form>
		</div>
	</div>
	</div>
</body>
</html>