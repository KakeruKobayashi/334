<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="./JS/question.js"></script>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/CSS/commonStyle.css">
<title>アンケート画面</title>
</head>
<body>
	<div id="info">興味のあるカテゴリー・コンテンツを選択してください</div>

	<div>
		<form action="questionController" method="post">
			英語<input type="radio" name="selectedOption" id="showOptions1"
				value="1" onclick="toggleOptions(1)">
			<div id="options1" style="display: none;">
				<input type="radio" name="genre" value="英語"> TOEIC<br>
				<input type="radio" name="genre" value="英語"> TOEFL<br>
			</div>

			漢字<input type="radio" name="selectedOption" id="showOptions2"
				value="2" onclick="toggleOptions(2)">
			<div id="options2" style="display: none;">
				<input type="radio" name="genre" value="漢字"> 漢字検定<br>
			</div>

			会計<input type="radio" name="selectedOption" id="showOptions3"
				value="3" onclick="toggleOptions(3)">
			<div id="options2" style="display: none;">
				<input type="radio" name="genre" value="会計"> 日商簿記1級<br>
				<input type="radio" name="genre" value="会計"> 日商簿記2級<br>
				<input type="radio" name="genre" value="会計"> 日商簿記3級<br>
				会計ソフトマスター<br>
			</div>

			情報<input type="radio" name="selectedOption" id="showOptions4"
				value="4" onclick="toggleOptions(4)">
			<div id="options4" style="display: none;">
				<input type="radio" name="genre" value="情報"> ITリテラシー<br>
				<input type="radio" name="genre" value="情報"> プログラミング<br>
				<input type="radio" name="genre" value="MOS"> MOS<br>
			</div>

			マーケティング<input type="radio" name="selectedOption" id="showOptions5"
				value="5" onclick="toggleOptions(5)">
			<div id="options5" style="display: none;">
				<input type="radio" name="genre" value="マーケティング"> Webマーケティング検定<br>
				<input type="radio" name="genre" value="マーケティング"> Webマーケティング基礎<br>
			</div>

			社会人基礎<input type="radio" name="selectedOption" id="showOptions6"
				value="6" onclick="toggleOptions(6)">
			<div id="options6" style="display: none;">
				<input type="radio" name="genre" value="社会人基礎"> ビジネスマナー入門<br>
				<input type="radio" name="genre" value="社会人基礎"> ビジネスコミュニケーション入門<br>
			</div>

			データ分析<input type="radio" name="selectedOption" id="showOptions7"
				value="7" onclick="toggleOptions(7)">
			<div id="options7" style="display: none;">
				<input type="radio" name="genre" value="データ分析"> データ分析入門<br>
				<input type="radio" name="genre" value="データ分析<"> <br>
				<input type="radio" name="genre" value="データ分析<"> データベーススペシャリスト<br>
			</div>

			マネジメント<input type="radio" name="selectedOption" id="showOptions8"
				value="8" onclick="toggleOptions(8)">
			<div id="options8" style="display: none;">
				<input type="radio" name="genre" value="マネジメント"> マネジメント入門<br>
				<input type="radio" name="genre" value="マネジメント"> 応用マネジメント<br>
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