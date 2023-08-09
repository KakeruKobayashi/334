<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<!--<link rel="stylesheet" type="text/css"
    href="${pageContext.request.contextPath}/CSS/commonStyle.css">  -->
<title>パーソナルアンケート</title>
</head>

<body>
	<header></header>
	<div id="info">
		<c:out value="${nickname}" />
		さんのことを教えてください
	</div>
	<br>
	<div>
		<form action="personalQuestionController" method="post">
			<div>Q1.コツコツ学習するのが得意</div>
			<div>
				<input type="radio" name="question1" value="0" required>はい <input
					type="radio" name="question1" value="1">いいえ
			</div>
			<br>
			<div>Q2.まとまった時間がとりやすい</div>
			<div>
				<input type="radio" name="question2" value="1" required>はい <input
					type="radio" name="question2" value="0">いいえ
			</div>
			<br>
			<div>Q3.集中が長く続くほうだ</div>
			<div>
				<input type="radio" name="question3" value="1" required>はい <input
					type="radio" name="question3" value="0">いいえ
			</div>
			<br>
			<div>Q4.物事を計画立てて進めるほうだ</div>
			<div>
				<input type="radio" name="question4" value="0" required>はい <input
					type="radio" name="question4" value="1">いいえ
			</div>
			<br>
			<div>Q5.与えられた課題はすぐにこなす</div>
			<div>
				<input type="radio" name="question5" value="0" required>はい <input
					type="radio" name="question5" value="1">いいえ
			</div>
			<br>
			<div>Q6.どうしてもやる気が出ない日がある</div>
			<div>
				<input type="radio" name="question6" value="1" required>はい <input
					type="radio" name="question6" value="0">いいえ
			</div>
			<br>
			<div>Q7.緻密なことが好きだ</div>
			<div>
				<input type="radio" name="question7" value="0" required>はい <input
					type="radio" name="question7" value="1">いいえ
			</div>
			<div>Q8.取得したい資格がある</div>
			<div>
				<input type="radio" name="question8" id="Yes" value="Y" required>
				<label for="Yes">はい</label> <input type="radio" name="question8"
					id="No" value="N"> <label for="No">いいえ</label>
			</div>
			<div style="display: inline-flex">
				<div>
					<input type="image" name="dicision" value="送信"
						src="./IMG/submit_1.png" alt="submit">
				</div>
				<div>
					<input type="image" name="return" value="戻る"
						onclick="window.location.href='personal'" src="./IMG/return_1.png"
						alt="return">
				</div>
			</div>
		</form>
	</div>
</body>
</html>
