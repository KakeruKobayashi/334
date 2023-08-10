<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<title>ホーム</title>

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>ホーム</title>
 <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/CSS/commonStyle.css">
 <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/CSS/fontStyle.css">
 <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/CSS/homeStyle.css">

</head>
<body style="background-image: url('./IMG/homeBackground_1.png'); background-repeat: no-repeat; background-size: contain;">
    <main>
        <div class="setting-container">
            <input type="image" name="haguruma" onclick="window.location.href=''" src="./IMG/haguruma.png" alt="歯車">
            <input type="image" name="friend" onclick="window.location.href=''" src="./IMG/friend2.png" alt="フレンド">
        </div>

        <div class="course-container">
            <p>受講中のコース</p>
            <select name="course">
        <option value="TOEIC700コース" selected>
            <c:out value="${course.coursename}コース" />
        </option>
        <option value="英検4級コース">英検4級コース</option>
        <option value="＋">＋</option>
    </select>
        </div>
    </main>
</body>
		<div class="homeButton-container" >
			<div>
				<c:if test="${nickname == null}">
					<input type="image" name="learingStart"
						onclick="window.location.href='personal'"
						src="./IMG/learningStart_1.png" alt="学習を始める">
				</c:if>
			</div>
			<div>
				<c:if test="${nickname != null}">
					<div>
						<c:if test="${personalQuestionResult eq 2}">
							<input type="image" name="learingStart"
								onclick="window.location.href='contentSearchController'"
								src="./IMG/learningStart_1.png" alt="学習を始める">
						</c:if>
						<c:if test="${personalQuestionResult eq 1}">
							<input type="image" name="learingSrart"
								onclick="window.location.href='timeSelection'"
								src="./IMG/learningStart_1.png" alt="学習を始める">
						</c:if>
					</div>
				</c:if>
			</div>
			<div>
				<form action="learningHistory" method="get">
					<input type="image" name="learningHistory"
						onclick="window.location.href='learningHistory'"
						src="./IMG/learningHistory_1.png" alt="学習履歴">
				</form>
			</div>
		</div>
	</main>
</body>
</html>