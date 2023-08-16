<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
    <meta charset="UTF-8">
    <title>設定画面</title>
    <link rel="stylesheet" type="text/css"href="${pageContext.request.contextPath}/CSS/commonStyle.css">
<link rel="stylesheet" type="text/css"href="${pageContext.request.contextPath}/CSS/fontStyle.css">
<link rel="stylesheet" type="text/css"href="${pageContext.request.contextPath}/CSS/buttonStyle.css">
<link rel="stylesheet" type="text/css"href="${pageContext.request.contextPath}/CSS/settingStyle.css">
</head>
<body>
<div class="image-container">
	<img class="image-element" src="./IMG/Background_move.png" alt="Image">
</div>
    <div>
    	<div id="info">
        <div>設定画面</div>
        </div>
         <div class="settingbutton-container">
            <button class="button">アカウント設定</button>
            <button class="button">コース設定</button>
            <button class="button">リマインド設定</button>
        </div>
    </div>
    	<div class="button-container">
				<div >
					<button type="button" name="return" value="戻る" onclick="window.location.href='home'" class="button_line007 home-btn">ホームに戻る</button>
				</div>
	</div>
</body>
</html>