<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!--ヘッダー-->
	<header></header>
	<h1></h1>

	<!--分野-->
	<select name="field">
		<option selected>分野</option>
		<option>語学</option>
		<option>情報</option>
		<option>マネジメント</option>
		<option>会計</option>
		<option>マーケティング</option>
		<option>データ分析</option>
		<option>社会人基礎力</option>
	</select>
	<br>

	<!--資格-->
	<input type="text" name="qualification" placeholder="資格">
	<br>

	<!--現在の習熟度-->
	<select name="proficiency">
		<option selected>現在の習熟度</option>
		<option>初心者</option>
		<option>中級者</option>
		<option>上級者</option>
	</select>
	<br>

	<!--キーワード-->
	<input type="text" name="keyword" placeholder="キーワード">
	<br>

	<button type="button" class="return">戻る</button>
	<button type="button" class="decision">決定</button>

	<!--フッター-->
	<footer></footer>
</body>
</html>