<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
	<div id="info">ともやさんのことを教えてください</div>
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

			<div style="display: inline-flex">
				<div>
					<button>
						<input type="submit" name="dicision" value=""><img
							src="./IMG/decision.png" alt="決定">
					</button>
				</div>
		</form>
		<div>
			<button onclick="window.location.href='personal'">
				<img src="./IMG/return.png" alt="戻る">
			</button>
		</div>
	</div>
	</div>
	<footer></footer>
</body>
</html>