<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>学習履歴(グラフ)</title>
<link rel="stylesheet" type="text/css"href="${pageContext.request.contextPath}/CSS/commonStyle.css">
<link rel="stylesheet" type="text/css"href="${pageContext.request.contextPath}/CSS/fontStyle.css">
<link rel="stylesheet" type="text/css"href="${pageContext.request.contextPath}/CSS/buttonStyle.css">
<link rel="stylesheet" type="text/css"href="${pageContext.request.contextPath}/CSS/learningHistoryStyle.css">

</head>

<div class="image-container">
	<img class="image-element" src="./IMG/Background_move.png" alt="Image">
</div>

<body>
	<div>
		<div>累計日数</div>
		<span>17</span>日<br>
		<div>総学習時間</div>
		<span>15</span>h<span>20</span>m
	</div>


	<div class="center-container">
	<img class="graph" src="./IMG/graph.png" alt="グラフ">
	<br>
	<img class="flow" src="./IMG/flowstatus.png" alt="フロー">
	</div>

	<div class="button-container">
				<div >
					<button type="button" name="return" value="戻る" onclick="window.location.href='home'" class="button_line007">ホームに戻る</button>
				</div>
	</div>

</body>

</html>