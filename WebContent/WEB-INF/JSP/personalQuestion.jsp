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
				<input type="radio" name="question1" value="Y">はい <input
					type="radio" name="question1" value="N">いいえ
			</div>
			<br>
			<div>Q2.まとまった時間がとりやすい</div>
			<div>
				<input type="radio" name="question2" value="Y">はい <input
					type="radio" name="question2" value="N">いいえ
			</div>
			<br>
			<div>Q3.勉強は好きだ</div>
			<div>
				<input type="radio" name="question3" value="Y">はい <input
					type="radio" name="question3" value="N">いいえ
			</div>
			<br>
			<div>Q4.活発なほうだとよく言われる</div>
			<div>
				<input type="radio" name="question4" value="Y">はい <input
					type="radio" name="question4" value="N">いいえ
			</div>
			<br>
			<div>Q5.定期的に新しい友達を作る</div>
			<div>
				<input type="radio" name="question5" value="Y">はい <input
					type="radio" name="question5" value="N">いいえ
			</div>
			<br>
			<div>Q6.大きなプレッシャーがあっても通常、冷静でいられる</div>
			<div>
				<input type="radio" name="question6" value="Y">はい <input
					type="radio" name="question6" value="N">いいえ
			</div>
			<br>
			<div>Q7.自分は特別だと感じる</div>
			<div>
				<input type="radio" name="question7" value="Y">はい <input
					type="radio" name="question7" value="N">いいえ
			</div>
			<br>
			<div>Q8.論理だてて説明するほうだ</div>
			<div>
				<input type="radio" name="question8" value="Y">はい <input
					type="radio" name="question8" value="N">いいえ
			</div>
			<br>
			<div>Q9.取得したい資格がある</div>
			<div>
				<input type="radio" name="question9" id="Yes" value="Y">
				<label for="Yes">はい</label> <input type="radio" name="question9"
					id="No" value="N" > <label for="No">いいえ</label>
			</div>
			<div style="display: inline-flex">
				<div>
					<input type="image" name="dicision" value="決定"
						src="./IMG/decision.png" alt="decision">
				</div>
				<div>
					<input type="image" name="return" value="戻る"
						onclick="window.location.href='personal'" src="./IMG/return.png"
						alt="return">
				</div>
			</div>
		</form>
	</div>
</body>
</html>