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
<title>希望登録</title>
</head>

<body>
	<header></header>
	<div id="info">
		<c:out value="${nickname}" />
		さんが取得したい資格について教えてください
	</div>
	<div style="display: inline-flex">
		<div>
			<form action="registrationController" method="post">
				<div>
					*ジャンル: <select name="genre" required>
						<option value="" disabled selected>選択してください</option>
						<option value="語学">語学</option>
						<option value="情報">情報</option>
						<option value="マネジメント">マネジメント</option>
						<option value="会計">会計</option>
						<option value="マーケティング">マーケティング</option>
						<option value="データ分析">データ分析</option>
						<option value="その他">その他</option>
					</select> <br>
					<div>
						資格名: <input type="text" name="license"> <br>
					</div>
					<div>
						<input type="image" name="return" value="戻る"
							onclick="window.location.href='personalQuestion'"
							src="./IMG/return.png" alt="return">
					</div>
					<div>
						<input type="image" name="dicision" value="確定"
							src="./IMG/decision.png" alt="decision">
					</div>
				</div>
			</form>
		</div>
	</div>
	<footer></footer>
</body>

</html>