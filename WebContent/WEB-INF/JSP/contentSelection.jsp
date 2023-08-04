<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>コンテンツ検索結果</title>
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
    					<c:forEach var="contents" items="${courseContent }">
    						<input type = radio name = "content" value = "${contents.contentName}" required>
    						<c:out value = "${contents.contentName}"/>
    						<br>
    					</c:forEach>
    				</div>
    				<div style = "display:inline-block">
    					<div>
    						<input type = "submit" name = "decide" value = "決定">
    					</div>
    					<div>
    						<c:if test = "${sourcePage == 'Home'}">
    							<input type="button" name="back" value="戻る" onclick="window.location.href='home'">
    						</c:if>
    						<c:if test = "${sourcePage == 'Time'}">
    							<input type="button" name="back" value="戻る" onclick="window.location.href='timeSelection'">
    						</c:if>
    					</div>
    				</div>
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