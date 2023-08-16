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
<title>答え</title>
</head>
<body>
	<div class="image-container">
		<img class="image-element" src="./IMG/Background_move.png" alt="Image">
	</div>
	<div class="answerForm">
		<div>
			<c:if test="${sourcePage == 'Time'}">
				<div class="course-container">
					現在のコース：<c:out value="${course.coursename}" />
					<br>
					TOEIC本番想定テスト 20/20
				</div>
				<div class="box">
					<c:choose>
						<c:when test="${answer == 'walk'}">
							<img src="./IMG/〇.png" alt="〇">
						</c:when>
						<c:otherwise>
							<img src="./IMG/×.png" alt="×">
						</c:otherwise>
					</c:choose>
					<div class="Answer">
						<p>正解:walk</p>
						<p>解説</p>
						<p>この文は、作者が晴れた日に公園で散歩することを楽しんでいるということを表現しています。動詞「walk」は歩くことを意味し、公園で散歩する活動を指しています。文脈から、公園での歩行が作者にとって楽しみの一つであることがわかります。</p>
					</div>
				</div>
			</c:if>

			<c:if test="${sourcePage == 'Home'}">
				<div class="course-container">
					現在のコース：<c:out value="${course.coursename}" />
					<br>
					単語1問1答 5/5
				</div>
				<div class="box">
					<c:choose>
						<c:when test="${answer == 'cross'}">
							<div class = "answerText">正解</div>
						</c:when>
						<c:otherwise>
							<div class = "answerText">不正解</div>
						</c:otherwise>
					</c:choose>
					<div class="Answer">
						<p>解説</p>
						<p>「Account」は、個人や企業が財務情報を管理し、記録するための仕組みや場所を指すことがあります。銀行口座やクレジットカード口座などがこれに当たります。これらの口座では、入金や出金、残高の確認、取引履歴の記録などが行われます。</p>
					</div>
				</div>
			</c:if>
		</div>
		<div>
			<form action="learningResult" method="post">
				<button type="submit" name="next" value="次へ" class="button_line008">次へ</button>
			</form>
		</div>
	</div>
</body>
</html>