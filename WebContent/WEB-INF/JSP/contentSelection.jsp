<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/CSS/commonStyle.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/CSS/fontStyle.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/CSS/buttonStyle.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/CSS/courseSelection.css">
<script>
  // ラジオボタンの変更を監視する関数
  function handleRadioChange(radioButton) {
    // 全てのコース要素を取得
    var courseElements = document.querySelectorAll('.course');

    // 全てのコース要素の背景色を初期化
    courseElements.forEach(function(courseElement) {
      courseElement.style.backgroundColor = '#020659'; // 初期の背景色に戻す
    });

    // 選択されたコース要素の背景色を変更
    var selectedCourseElement = radioButton.closest('.course');
    selectedCourseElement.style.backgroundColor = '#484ca1'; // 選択後の背景色
  }
</script>
<title>コンテンツ検索結果</title>
</head>
<body>
<div class="image-container">
	<img class="image-element" src="./IMG/Background_move.png" alt="Image">
</div>
	<div id="info">検索結果</div>

	<form action="contentSelectionController" method="post">
			<c:forEach var="contents" items="${courseContent }">
				<div class="course">
				<label class="radio-inline__label">
					<input type=radio name="content" value="${contents.contentName}" required  class="radiobutton" onchange="handleRadioChange(this);">
					<span>
					<c:out value="${contents.contentName}" />
					</span>
				</label>
				</div>
				<br>
			</c:forEach>

		<div class="button-container">
		<div>
				<c:if test="${sourcePage == 'Home'}">
				<button type = "button" name = "back" value = "戻る" class="button_line007" onclick="window.location.href='home'">前に戻る</button>
				</c:if>
				<c:if test="${sourcePage == 'Time'}">
				<button type = "button" name = "back" value = "戻る" class="button_line007" onclick="window.location.href='timeSelection'">前に戻る</button>
				</c:if>
			</div>
			<div>
			<button type = "submit" name="decide" value="決定" class="button_line008">決定する</button>
			</div>
		</div>
	</form>
</body>
</html>