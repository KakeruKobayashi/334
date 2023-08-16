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
	href="${pageContext.request.contextPath}/CSS/buttonStyle.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/CSS/questionStyle.css">
<link rel="stylesheet" type="text/css" href="modal.css">
<!-- Include modal CSS -->
<script src="./JS/question.js"></script>
<script src="./JS/comment.js"></script>
<script src="modal.js"></script>
<!-- Include modal JavaScript -->
<title>アンケート画面</title>
</head>
<body>

	<div class="image-container">
		<img class="image-element" src="./IMG/Background_move.png" alt="Image">
	</div>
	<div id="info">興味のあるカテゴリー・コンテンツを選択してください</div>

	<div>
		<form action="questionController" method="post" required>
			<div class="radio-container">
				<label for="showOptions1" class="custom-radio-container"><span class= "genre">英語</span>
					<input type="radio" name="selectedOption" id="showOptions1"
					value="1" onclick="toggleOptions(1)"></label>

				<div id="options1" style="display: none;">
					<label> <input type="radio" name="genre" value="TOEIC">
						<span> TOEIC </span>
					</label>
						<button class="question-btn-container" type="button"
							onclick="showModal('${TOEIC}')">
							<img src="./IMG/questionMark.png" alt="questionMark" class = "questionMark">
						</button>
					<label> <input type="radio" name="genre" value="TOEFL" required>
						<span> TOEFL </span>
					</label> <span class="btn-container">
						<button class="question-btn-container" type="button"
							onclick="showModal('${TOEFL}')">
							<img src="./IMG/questionMark.png" alt="questionMark" class = "questionMark">
						</button>
					</span> <label> <input type="radio" name="genre" value="GTEC">
						<span> GTEC </span>
					</label> <span class="btn-container">
						<button class="question-btn-container" type="button"
							onclick="showModal('${GTEC}')">
							<img src="./IMG/questionMark.png" alt="questionMark" class = "questionMark">
						</button>
					</span>
				</div>
			</div>

			<div class="radio-container">
				<label for="showOptions2" class="custom-radio-container"> <span class= "genre">
						漢字 </span> <input type="radio" name="selectedOption" id="showOptions2"
					value="2" onclick="toggleOptions(2)">
				</label>
				<div id="options2" style="display: none;">
					<label> <input type="radio" name="genre" value="漢字">
						<span> 漢字検定 </span>
					</label> <br>
				</div>
			</div>
			<br>
			<div class="radio-container">
				<label for="showOptions3" class="custom-radio-container"> <span class= "genre">
						会計 </span> <input type="radio" name="selectedOption" id="showOptions3"
					value="3" onclick="toggleOptions(3)">
				</label>
				<div id="options3" style="display: none;">
					<label> <input type="radio" name="genre" value="会計">
						<span> 日商簿記1級 </span>
					</label> <br> <label> <input type="radio" name="genre"
						value="会計"> <span> 日商簿記2級 </span>
					</label> <br> <label> <input type="radio" name="genre"
						value="会計"> <span> 日商簿記3級 </span>
					</label> <br> <label> <span> 会計ソフトマスター </span>
					</label> <br>
				</div>
			</div>
			<div class="radio-container">
				<label for="showOptions4" class="custom-radio-container"> <span class= "genre">
						情報 </span> <input type="radio" name="selectedOption" id="showOptions4"
					value="4" onclick="toggleOptions(4)">
				</label>
				<div id="options4" style="display: none;">
					<label> <input type="radio" name="genre" value="プログラミング">
						<span> プログラミング </span>
					</label> <br> <label> <input type="radio" name="genre"
						value="MOS"> <span> MOS </span>
					</label> <br>
				</div>
			</div>
			<br>
			<div class="radio-container">
				<label for="showOptions5" class="custom-radio-container"> <span class= "genre">
						マーケティング </span> <input type="radio" name="selectedOption"
					id="showOptions5" value="5" onclick="toggleOptions(5)">
				</label>
				<div id="options5" style="display: none;">
					<label> <input type="radio" name="genre" value="マーケティング入門">
						<span> Webマーケ入門 </span>
					</label> <br> <label> <input type="radio" name="genre"
						value="マーケティング応用"> <span> Webマーケ応用 </span>
					</label> <br>
				</div>
			</div>
			<div class="radio-container">
				<label for="showOptions7" class="custom-radio-container"> <span class= "genre">
						データ分析 </span> <input type="radio" name="selectedOption" id="showOptions7"
					value="7" onclick="toggleOptions(7)">
				</label>
				<div id="options7" style="display: none;">
					<label> <input type="radio" name="genre" value="データ分析入門">
						<span> データ分析入門 </span>
					</label> <br> <label> <input type="radio" name="genre"
						value="データ分析応用"> <span> データ分析応用 </span>
					</label> <br>
				</div>
			</div>
			<br>
			<div class="radio-container">
				<label for="showOptions8" class="custom-radio-container"> <span class= "genre">
						マネジメント </span> <input type="radio" name="selectedOption"
					id="showOptions8" value="8" onclick="toggleOptions(8)">
				</label>
				<div id="options8" style="display: none;">
					<label> <input type="radio" name="genre" value="マネジメント入門">
						<span> マネジメント入門 </span>
					</label> <br> <label> <input type="radio" name="genre"
						value="マネジメント応用"> <span> マネジメント応用 </span>
					</label> <br>
				</div>
			</div>
			<br> <br>
			<div class="button-container">
				<div>
					<button type="button" name="return" value="戻る"
						class="button_line007"
						onclick="window.location.href='personalQuestion'">戻る</button>
				</div>
				<div>
					<button type="submit" name="dicision" value="決定"
						class="button_line008">決定</button>
				</div>
			</div>
		</form>
	</div>

	<div class="modal-overlay" id="modalOverlay">
		<div class="modal-content">
			<span class="modal-close" onclick="closeModal()">&times;</span>
			<div id="modalContent"></div>
		</div>
	</div>
</body>
</html>
