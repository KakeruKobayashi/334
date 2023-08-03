<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>パーソナルアンケート</title>
</head>

<body>
	<div>ともやさんのことを教えてください</div>
	<br>
	<form action="personalQuestionController" method="post">
	<div>Q1.コツコツ学習するのが得意</div>
	<input type="radio" name="example" value="q1">はい
	<input type="radio" name="example" value="q2">いいえ
	<br>

	<div>Q2.まとまった時間がとりやすい</div>
	<input type="radio" name="example" value="q1">はい
	<input type="radio" name="example" value="q2">いいえ
	<br>

	<div>Q3.勉強は好きだ</div>
	<input type="radio" name="example" value="q1">はい
	<input type="radio" name="example" value="q2">いいえ
	<br>

	<div>Q4.活発なほうだとよく言われる</div>
	<input type="radio" name="example" value="q1">はい
	<input type="radio" name="example" value="q2">いいえ
	<br>

	<div>Q5.定期的に新しい友達を作る</div>
	<input type="radio" name="example" value="q1">はい
	<input type="radio" name="example" value="q2">いいえ
	<br>

	<div>Q6.大きなプレッシャーがあっても通常、冷静でいられる</div>
	<input type="radio" name="example" value="q1">はい
	<input type="radio" name="example" value="q2">いいえ
	<br>

	<div>Q7.自分は特別だと感じる</div>
	<input type="radio" name="example" value="q1">はい
	<input type="radio" name="example" value="q2">いいえ
	<br>

	<div>Q8.論理だてて説明するほうだ</div>
	<input type="radio" name="example" value="q1">はい
	<input type="radio" name="example" value="q2">いいえ
	<br>


	<input type="submit" name="dicision" value="決定">
	</form>

	<div style="display: inline-flex">
		<div>
			<form action="personal" method="get">
				<input type="submit" name="back" value="戻る">
			</form>
		</div>
	</div>
</body>

</html>