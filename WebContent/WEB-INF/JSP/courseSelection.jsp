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
	href="${pageContext.request.contextPath}/CSS/courseSelection.css">
<script>
  // ラジオボタンの変更を監視する関数
  function handleRadioChange(radioButton) {
    // 全てのコース要素を取得
    var courseElements = document.querySelectorAll('.course');

    // 全てのコース要素の背景色を初期化
    courseElements.forEach(function(courseElement) {
      courseElement.style.backgroundColor = '#3498db'; // 初期の背景色に戻す
    });

    // 選択されたコース要素の背景色を変更
    var selectedCourseElement = radioButton.closest('.course');
    selectedCourseElement.style.backgroundColor = '#2323FF'; // 選択後の背景色
  }
</script>
<title>コース選択</title>
</head>
<body>
<div class="image-container">
		<img class="image-element" src="./IMG/Background_move.png" alt="Image">
	</div>
	<div id="info">
		<c:out value="${nickname}" />さんが<br>取得したい資格を選んでください
	</div>

	<form action="courseSelectionController" method="post">
			<c:forEach var="item" items="${courseResult}">
			<div class="course">
				<label class="radio-inline__label">
					<input type="radio" name="learningCourse" value="${item.coursename}" class="radiobutton" onchange="handleRadioChange(this);">
					<span>
					資格名:<c:out value="${item.coursename}" /><br>
					試験日:<c:out value="${item.examdate}" />
                    </span>
				</label>
			</div>
				<br>
			</c:forEach>
			<br>

		<!-- 分岐処理が必要 -->

		<div class="button-container">
			<div>
			<button type="button" name="return" value="戻る" onclick="window.location.href='question'" class="button_line007">前に戻る</button>
			</div>
			<div>
			<button type="submit" name="dicision" value="決定" class="button_line008">決定する</button>
			</div>
		</div>
	</form>
</body>
</html>