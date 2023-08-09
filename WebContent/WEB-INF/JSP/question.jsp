<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="./JS/question.js"></script>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/CSS/commonStyle.css">
<title>アンケート画面</title>
</head>
<body>
	<div id="info">興味のあるカテゴリー・コンテンツを選択してください</div>

	<div>
		<form action="questionController" method="post">
			<label for="showOptions1">
				語学
			</label>
			<input type="radio" name="selectedOption" id="showOptions1" value="1" onclick="toggleOptions(1)">
			<div id="options1" style="display: none;">
				<input type="radio" name="genre" value="英語" onclick="toggleDetailOptions(1)">
					英語
				<br>
				<input type="radio" name="genre" value="漢字">
				漢字
				<br>
				<div id="englishOptions" style="display: none;">
				<input type="radio" name="englishOption" value="TOEIC">
				TOEIC
				<br>
				<input type="radio" name="englishOption" value="TOEFL">
				TOEFL
				<br>
				</div>
			</div>

			<label for="showOptions2">会計</label> <input type="radio"
				name="selectedOption" id="showOptions2" value="2"
				onclick="toggleOptions(2)">
			<div id="options2" style="display: none;">
				<input type="radio" name="option2" value="option1"> 日商簿記1級<br>
				<input type="radio" name="option2" value="option2"> 日商簿記2級<br>
				<input type="radio" name="option2" value="option3"> 日商簿記3級<br>
				<input type="radio" name="option2" value="option4">
				会計ソフトマスター<br>
			</div>

			<label for="showOptions3">情報</label> <input type="radio"
				name="selectedOption" id="showOptions3" value="3"
				onclick="toggleOptions(3)">
			<div id="options3" style="display: none;">
				<input type="radio" name="option3" value="option1"> ITリテラシー<br>
				<input type="radio" name="option3" value="option2"> プログラミング<br>
				<input type="radio" name="option3" value="option3"> MOS<br>
			</div>

			<label for="showOptions4">マーケティング</label> <input type="radio"
				name="selectedOption" id="showOptions4" value="4"
				onclick="toggleOptions(4)">
			<div id="options4" style="display: none;">
				<input type="radio" name="option4" value="option1">
				Webマーケティング検定<br> <input type="radio" name="option4"
					value="option2"> Webマーケティング基礎<br>
			</div>

			<label for="showOptions5">社会人基礎</label> <input type="radio"
				name="selectedOption" id="showOptions5" value="5"
				onclick="toggleOptions(5)">
			<div id="options5" style="display: none;">
				<input type="radio" name="option5" value="option1">
				ビジネスマナー入門<br> <input type="radio" name="option5"
					value="option2"> ビジネスコミュニケーション入門<br>
			</div>

			<label for="showOptions6">データ分析入門</label> <input type="radio"
				name="selectedOption" id="showOptions6" value="6"
				onclick="toggleOptions(6)">
			<div id="options6" style="display: none;">
				<input type="radio" name="option6" value="option1"> データ分析入門<br>
				<input type="radio" name="option6" value="option2"> 実践データ分析<br>
				<input type="radio" name="option6" value="option3">
				データベーススペシャリスト<br>
			</div>

			<label for="showOptions7">マネジメント</label> <input type="radio"
				name="selectedOption" id="showOptions7" value="7"
				onclick="toggleOptions(7)">
			<div id="options7" style="display: none;">
				<input type="radio" name="option7" value="option1"> マネジメント入門<br>
				<input type="radio" name="option7" value="option2"> 応用マネジメント<br>
			</div>
			<br>
			<div>
				<input type="image" name="return" value="戻る"
					onclick="window.location.href='personalQuestion'"
					src="./IMG/return_1.png" alt="return">
			</div>
			<div>
				<input type="image" name="dicision" value="決定"
					src="./IMG/decision_1.png" alt="decision">
			</div>
		</form>
	</div>
</body>

</html>