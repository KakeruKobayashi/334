<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>中断確認</title>
</head>
<body>
	<div>
		<div>
			<h1>中断しますか</h1>
			<div>
				<form action="learningResult" method="post">
					<div style="display: inline-block">
						<div>
							<input type="button" name="decide" value="中断する">
						</div>
						<div>
							<c:if test="${sourcePage == 'Home'}">
								<input type="button" name="back" value="戻る"
									onclick="window.location.href='questionAnswer'">
							</c:if>
							<c:if test="${sourcePage == 'Time'}">
								<input type="button" name="back" value="戻る"
									onclick="window.location.href='fourQuestions'">
							</c:if>
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>
</body>
</html>