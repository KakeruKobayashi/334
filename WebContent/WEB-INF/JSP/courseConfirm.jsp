<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/CSS/commonStyle.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/CSS/fontStyle.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/CSS/courseConfirmStyle.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/CSS/buttonStyle.css">
<title>コース確認画面</title>
</head>
<body>
<header></header>
<div class="image-container">
	<img class="image-element" src="./IMG/Background_move.png" alt="Image">
</div>
	<br>
	<br>
	<br>
	<div>
		<div id="info">以下の資格を学習しますか？</div>
	</div>

	<div class="div-container">
	    <!-- <img src="../img/course.png" alt="選択したコース"><br>-->
	    資格名:<c:out value="${course.coursename}" /><br>
	    試験日:<c:out value="${date[0]}" />年<c:out value="${date[1]}" />月<c:out value="${date[2]}" />日
	</div>
	<br>
    <div class="div-flow">
        <p>あなたの資格取得フロー</p>
        <img src="./IMG/courseflow.png" alt="資格取得フロー"><br>
    </div>

	<div class="button-container">
		<div>
			<form action = "courseSelection" method = "get">
			<button type="submit" name="back" value="戻る" class="button_line007">前に戻る</button>
			</form>
		</div>
		<div>
			<form action = "courseConfirmController" method = "post">
			<button type="submit" name="start" value="学習を始める" class="button_line008">はじめる</button>
			</form>
		</div>
	</div>
	<footer></footer>
</body>
</html>