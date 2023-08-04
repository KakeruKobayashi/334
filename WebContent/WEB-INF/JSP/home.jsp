<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<title>ホーム</title>

<head>
    <meta charset="UTF-8">
    <meta name=”viewport” content=”width=device-width, initial-scale=1.0”>
    <title>Document</title>
    <style>

    </style>
</head>
<body>
    <header>
        <!-- ヘッダーに表示する内容 -->
        ヘッダー
    </header>

    <main>
        <div class="button-container">
        	<div>
        		<c:if test = "${nickname == null}">
        			<button onclick="window.location.href='home'">学習を始める</button>
        		</c:if>
        	</div>
        	<div>
        		<c:if test = "${nickname != null}">
        			<div>
        				<c:if test = "${personalQuestionResult == 1}">
        					<button onclick="window.location.href='courseSelection'">学習を始める</button>
        				</c:if>
        				<c:if test = "${personalQuestionResult == 4}">
        					<button onclick="window.location.href='timeSelection'">学習を始める</button>
        				</c:if>
        			</div>

        		</c:if>
        	</div>
        	<div>
        		<form action = "" method = "get">
        			<input type = "submit" name = "history" value = "学習履歴">
        		</form>
        	</div>
        </div>
        <img src="img/tudurisu.png" alt="つづりす">
    </main>

    <footer>
        <!-- フッターに表示する内容 -->
        フッター
    </footer>
</body>
</html>
