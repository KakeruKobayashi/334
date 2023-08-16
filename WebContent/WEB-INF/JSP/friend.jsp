<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>フレンド画面</title>
<link rel="stylesheet" type="text/css"href="${pageContext.request.contextPath}/CSS/commonStyle.css">
<link rel="stylesheet" type="text/css"href="${pageContext.request.contextPath}/CSS/fontStyle.css">
<link rel="stylesheet" type="text/css"href="${pageContext.request.contextPath}/CSS/buttonStyle.css">
<link rel="stylesheet" type="text/css"href="${pageContext.request.contextPath}/CSS/friend.css">

</head>

<div class="image-container">
	<img class="image-element" src="./IMG/Background_move.png" alt="Image">
</div>

<body>
	<div id="info">
		<div>フレンド</div>
	</div>


	<div class="center-container">
	<img class="list" src="./IMG/friendlist.png" alt="フレンドリスト">
	</div>

	<div class="button-container">
				<div >
					<button type="button" name="return" value="戻る" onclick="window.location.href='home'" class="button_line007 home-btn">ホームに戻る</button>
				</div>
	</div>

</body>

</html>
