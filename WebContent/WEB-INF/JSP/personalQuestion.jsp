<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/CSS/commonStyle.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/CSS/fontStyle.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/CSS/personalQuestionStyle2.css">
<title>パーソナルアンケート</title>
</head>

<body>
	<div class="image-container">
		<img class="image-element" src="./IMG/Background_move.png" alt="Image">
	</div>
	<div id="info">
		<c:out value="${nickname}" />
		さんのことを教えてください
	</div>
	<br>
	<div>
		<form action="personalQuestionController" method="post">
			<div class="Q">Q1.コツコツ学習するのが得意</div>
			<div class="A">
				<label><input type="radio" name="question1" value="0"
					required><span>はい</span>
				</lavel> <label><input type="radio" name="question1" value="1"><span>いいえ</span></label>
			</div>
			<br>
			<div class="Q">Q2.まとまった時間がとりやすい</div>
			<div class="A">
				<label><input type="radio" name="question2" value="1"
					required><span>はい</span></label> <label><input type="radio"
					name="question2" value="0"><span>いいえ</span></label>
			</div>
			<br>
			<div class="Q">Q3.集中が長く続くほうだ</div>
			<div class="A">
				<label><input type="radio" name="question3" value="1"
					required><span>はい</span></label> <label><input type="radio"
					name="question3" value="0"><span>いいえ</span></label>
			</div>
			<br>
			<div class="Q">Q4.物事を計画立てて進めるほうだ</div>
			<div class="A">
				<label><input type="radio" name="question4" value="0"
					required><span>はい</span></label> <label><input type="radio"
					name="question4" value="1"><span>いいえ</span></label>
			</div>
			<br>
			<div class="Q">Q5.与えられた課題はすぐにこなす</div>
			<div class="A">
				<label><input type="radio" name="question5" value="0"
					required><span>はい</span></label> <label><input type="radio"
					name="question5" value="1"><span>いいえ</span></label>
			</div>
			<br>
			<div class="Q">Q6.どうしてもやる気が出ない日がある</div>
			<div class="A">
				<label><input type="radio" name="question6" value="1"
					required><span>はい</span></label> <label><input type="radio"
					name="question6" value="0"><span>いいえ</span></label>
			</div>
			<br>
			<div class="Q">Q7.緻密なことが好きだ</div>
			<div class="A">
				<label><input type="radio" name="question7" value="0"
					required><span>はい</span></label> <label><input type="radio"
					name="question7" value="1"><span>いいえ</span></label>
			</div>
			<br>
			<div class="Q">Q8.取得したい資格がある</div>
			<div class="A">
				<label><input type="radio" name="question8" id="Yes"
					value="Y" required><span>はい</span></label> <label><input
					type="radio" name="question8" id="No" value="N"><span>いいえ</span></label>
			</div>

			<div class="button-container">
				<div>
					<input type="image" name="return" value="戻る"
						onclick="window.location.href='personal'" src="./IMG/return_1.png"
						alt="return" class="form-button">
				</div>
				<div>
					<input type="image" name="dicision" value="送信"
						src="./IMG/submit_1.png" alt="submit" class="form-button">
				</div>

			</div>
		</form>
	</div>
</body>
</html>
