<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<title>ホーム</title>

<head>
    <meta charset="UTF-8">
    <meta name=”viewport” content=”width=device-width, initial-scale=1.0”>
    <title>ホーム</title>
    <style>

    </style>
</head>
<body>
<header></header>

    <main>
    <img src="./IMG/tudurisu.png" alt="つづりす">
        <div class="button-container">
        	<div>
        		<c:if test = "${nickname == null}">
        			<button onclick="window.location.href='personal'"><img src="./IMG/learningStart.png" alt="学習を始める"></button>
        		</c:if>
        	</div>
        	<div>
        		<c:if test = "${nickname != null}">
        			<div>
        				<c:if test = "${personalQuestionResult == 1}">
        					<button onclick="window.location.href='courseSelection'"><img src="./IMG/learningStart.png" alt="学習を始める"></button>
        				</c:if>
        				<c:if test = "${personalQuestionResult == 4}">
        					<button onclick="window.location.href='timeSelection'"><img src="./IMG/learningStart.png" alt="学習を始める"></button>
        				</c:if>
        			</div>

        		</c:if>
        	</div>
        	<div>
        		<form action = "" method = "get">
        			<button><input type = "submit" name = "learningHistory" value = ""><img src="./IMG/learningHistory.png" alt="学習履歴">
        		</button>
        		</form>
        	</div>
        </div>
    </main>

<footer></footer>
</body>
</html>
