<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
	<main>
		<img src="./IMG/tudurisu.png" alt="つづりす">
		<div class="button-container">
			<div>
				<c:if test="${nickname == null}">
					<input type="image" name="learingStart"
						onclick="window.location.href='personal'"
						src="./IMG/learningStart.png" alt="学習を始める">
				</c:if>
			</div>
			<div>
				<c:if test="${nickname != null}">
					<div>
						<c:if test="${personalQuestionResult == 1}">
							<input type="image" name="learingStart"
								onclick="window.location.href='courseSelection'"
								src="./IMG/learningStart.png" alt="学習を始める">
						</c:if>
						<c:if test="${personalQuestionResult == 4}">
							<input type="image" name="learingSrart"
								onclick="window.location.href='timeSelection'"
								src="./IMG/learningStart.png" alt="学習を始める">
						</c:if>
					</div>
				</c:if>
			</div>
			<div>
				<form action="learningHistory" method="get">
					<input type="image" name="learningHistory" onclick="window.location.href='learningHistory'"
						src="./IMG/learningHistory.png" alt="学習履歴">
				</form>
			</div>
		</div>
	</main>
</body>
</html>
