<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
    <div>
    	<div>
    		<!--ヘッダー-->
    		<header></header>
    	</div>
    	<div>
    		<div>
    			<h1>検索結果</h1>
    		</div>
    		<div>
    			<form action = "contentSelectionController" method = "post">
    				<div>
    					<c:forEach var="" items="">
    						<input type = radio name = "content" value = "一問一答">
    					</c:forEach>
    				</div>
    				<div>
    					<input type = "submit" class = "return" value = "戻る">
    				</div>
    				<div>
    					<!--飛んできた元の画面先に応じて遷移先を変える-->
    					<c:if>
    						<input type="submit" name="back" value="戻る" onclick="window.location.href='home'">
    					</c:if>
    					<c:if>
    						<input type="submit" name="back" value="戻る" onclick="window.location.href='timeSelection'">
    					</c:if>
    				</div>>
    			</form>
    		</div>
    		<div>
    			<!--フッター-->
    			<footer></footer>
    		</div>
    	</div>
    </div>
</body>
</html>