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
            <input type="image" name="haguruma" onclick="window.location.href='SettingServlet'" src="./IMG/haguruma.png" alt="歯車">
            <input type="image" name="friend" onclick="window.location.href='FriendServlet'" src="./IMG/friend2.png" alt="フレンド">
        </div>

        <div class="course-container">
            <p>受講中のコース</p>
            <select name="course">
        <option value="コース" selected>
            <c:out value="${course.coursename}" />
        </option>
         <option value="コース">
            英検3級コース
        </option>
        <option value="コース">
            ＋
        </option>
    </select>
        </div>
    </main>
</body>
		<div class="homeButton-container" >
			<div>
				<c:if test="${nickname == null}">
					<button type="button" name="learingStart" onclick="window.location.href='personal'" class="btn btn-svg">
						<svg>
							<rect x="6" y="6" rx="0" fill="none" width=600 height="150"></rect>
						  </svg>
						<span>学習を始める</span>
					</button>
				</c:if>
			</div>
			<div>
				<c:if test="${nickname != null}">
					<div>
						<c:if test="${personalQuestionResult eq 2}">
							<button type="button" name="learingStart" onclick="window.location.href='contentSearchController'" class="btn btn-svg">
								<svg>
									<rect x="6" y="6" rx="0" fill="none" width=600 height="150"></rect>
								</svg>
								<span>学習を始める</span>
							</button>
						</c:if>
						<c:if test="${personalQuestionResult eq 1}">
							<button type="button" name="learingStart" onclick="window.location.href='timeSelection'" class="btn btn-svg">
								<svg>
									<rect x="6" y="6" rx="0" fill="none" width=600 height="150"></rect>
								  </svg>
								<span>学習を始める</span>
							</button>
						</c:if>
					</div>
				</c:if>
			</div>
			<div>
				<form action="learningHistory" method="get">
					<button type="button" name="learningHistory" onclick="window.location.href='learningHistory'" class="btn btn-svg">
						<svg>
							<rect x="6" y="6" rx="0" fill="none" width=600 height="150"></rect>
						  </svg>
						<span>学習履歴を見る</span>
					</button>
				</form>
			</div>
		</div>
	</main>
</body>
</html>