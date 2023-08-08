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
]
/* main要素のスタイル */
main {
	/* フレックス成長を許可し、コンテンツの領域を埋める */
	flex-grow: 1;
	/* コンテンツのスタイルを指定 */
	padding: 20px;
	display: flex;
	justify-content: center;
	align-items: center;
	/* コンテンツのサイズを指定 */
	width: 100%;
	height: 100%;
}

/* ページ全体のスタイル */
body {
	/* 幅を指定 */
	width: 1242px;
	/* 高さを指定 */
	height: 2208px;
	/* ページ全体を中央に配置 */
	margin: 0 auto;
}
</style>
</head>
<body
	style="background-image: url('./IMG/homeBackground.jpg'); background-repeat: no-repeat; background-size: contain;">
	<main>
		<div style="display: flex;">
			<input type="image" name="haguruma" onclick="window.location.href=''"
				src="./IMG/haguruma.png" alt="歯車"> <input type="image"
				name="friend" onclick="window.location.href=''"
				src="./IMG/friend.png" alt="フレンド">
		</div>

		<div>
			受講中のコース<br> <select name="course">
				<option value="TOEIC700コース" selected>
					<c:out value="${course.coursename}受講中コース名" /></option>
				<option value="英検4級コース">英検4級コース</option>
				<option value="＋">＋</option>
			</select>
		</div>


		<div class="button-container" >
			<div>
				<c:if test="${nickname == null}">
					<input type="image" name="learingStart"
						onclick="window.location.href='personal'"
						src="./IMG/learningStart3.png" alt="学習を始める">
				</c:if>
			</div>
			<div>
				<c:if test="${nickname != null}">
					<div>
						<c:if test="${personalQuestionResult == 1}">
							<input type="image" name="learingStart"
								onclick="window.location.href='courseSelection'"
								src="./IMG/learningStar3.png" alt="学習を始める">
						</c:if>
						<c:if test="${personalQuestionResult == 4}">
							<input type="image" name="learingSrart"
								onclick="window.location.href='timeSelection'"
								src="./IMG/learningStart3.png" alt="学習を始める">
						</c:if>
					</div>
				</c:if>
			</div>
			<div>
				<form action="learningHistory" method="get">
					<input type="image" name="learningHistory"
						onclick="window.location.href='learningHistory'"
						src="./IMG/learningHistory2.png" alt="学習履歴">
				</form>
			</div>
		</div>
	</main>
</body>
</html>