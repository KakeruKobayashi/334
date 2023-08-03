<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
 <script src="./JS/question.js"></script>
<title>アンケート画面</title>
</head>
<body>
<div>興味のあるカテゴリー・コンテンツを選択してください</div>
	<form>
		<label for="showOptions1">語学</label> <input type="radio"
        name="selectedOption" id="showOptions1" value="1"
        onclick="toggleOptions(1)">
    <div id="options1" style="display: none;">
        <input type="radio" name="option1" value="option1" onclick="toggleDetailOptions(1)"> 英語<br>
        <input type="radio" name="option1" value="option2"> 漢字<br>
        <div id="englishOptions" style="display: none;">
            <input type="radio" name="englishOption" value="option3"> TOEIC<br>
            <input type="radio" name="englishOption" value="option4"> TOEFL<br>
        </div>
    </div>

		<label for="showOptions2">会計</label> <input type="radio"
			name="selectedOption" id="showOptions2" value="2"
			onclick="toggleOptions(2)">
		<div id="options2" style="display: none;">
			<input type="radio" name="option2" value="option1"> 日商簿記1級<br>
			<input type="radio" name="option2" value="option2"> 日商簿記2級<br>
			<input type="radio" name="option2" value="option3"> 日商簿記3級<br>
			<input type="radio" name="option2" value="option4"> 会計ソフトマスター<br>
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
			<input type="radio" name="option4" value="option1"> Webマーケティング検定<br>
			<input type="radio" name="option4" value="option2"> Webマーケティング基礎<br>
		</div>

		<label for="showOptions5">社会人基礎</label> <input type="radio"
			name="selectedOption" id="showOptions5" value="5"
			onclick="toggleOptions(5)">
		<div id="options5" style="display: none;">
			<input type="radio" name="option5" value="option1"> ビジネスマナー入門<br>
			<input type="radio" name="option5" value="option2"> ビジネスコミュニケーション入門<br>
		</div>

		<label for="showOptions6">データ分析入門</label> <input type="radio"
			name="selectedOption" id="showOptions6" value="6"
			onclick="toggleOptions(6)">
		<div id="options6" style="display: none;">
			<input type="radio" name="option6" value="option1"> データ分析入門<br>
			<input type="radio" name="option6" value="option2"> 実践データ分析<br>
			<input type="radio" name="option6" value="option3"> データベーススペシャリスト<br>
		</div>

		<label for="showOptions7">マネジメント</label> <input type="radio"
			name="selectedOption" id="showOptions7" value="7"
			onclick="toggleOptions(7)">
		<div id="options7" style="display: none;">
			<input type="radio" name="option7" value="option1"> マネジメント入門<br>
			<input type="radio" name="option7" value="option2"> 応用マネジメント<br>
		</div>
	</form>

	<button type="button" class="return">戻る</button>
	<button type="button" class="decision">決定</button>

</body>
</html>
