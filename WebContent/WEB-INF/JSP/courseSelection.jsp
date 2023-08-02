<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>コース選択</title>
</head>
<body>
    <h1>ともや<br>さんが取得したい資格を<br>選んでください</h1>
    <form action="/courseConform" method="post">

    <c:forEach var="" items="">
        <button type="button" class="learningContent">
            <img src="" alt="学習内容">
        </button>
    </c:forEach><br>

        <input type="submit" value="確定">
    </form>
    <form action="/registration" method="get">
        <input type="submit" value="戻る">
    </form>
</body>
</html>
