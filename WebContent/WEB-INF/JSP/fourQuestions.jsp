<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
	href="${pageContext.request.contextPath}/CSS/studyQuestionStyle.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/CSS/personalQuestionStyle2.css">

<title>TOEIC本番想定テスト</title>
</head>
<body>

<div class="content-status">
TOEIC本番想定テスト 20/20
</div>
	<div class="image-container">
		<img class="image-element" src="./IMG/Background_move.png" alt="Image">
	</div>
	<div>
		<div class="suspension">
			<form action="suspensionConfirmation" method="get">
				<button type="submit" name="suspension" value="中断"
					class="button_line007">中断する</button>
			</form>
		</div>
	</div>


		<div id="info" style="font-size:40px;">TOEIC本番想定テスト</div>

			<div class="fourQuestion">
			Choose the correct word to complete the sentence: "I love
				to _______ in the park on sunny days."</div>
			<div>

			<div class="fourAnswer">
			<form action="judgment" method="post">
				<div>
					<div style="display: inline-flex">
						<label class="four"><input type="radio" name="answer" value="walk"><span class="span">walk</span></label>
						<label class="four"><input type="radio" name="answer" value="swim"><span class="span">swim</span></label>
					</div>
					<br>
					<div style="display: inline-flex">
					    <label class="four"><input type="radio" name="answer" value="cook"><span class="span">cook</span></label>
					    <label class="four"><input type="radio" name="answer" value="sleep"><span class="span">sleep</span></label>
					</div>
                 </div>


				<div class="button-container">
					<button type="submit" class="button_line008">送信する</button>
				</div>
	       </form>
	    </div>
</body>
</html>