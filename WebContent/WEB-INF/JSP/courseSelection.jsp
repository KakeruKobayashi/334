<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>コース選択</title>
</head>
<body>
    <h1>現在の河村智也さんに薦めるコースは以下の通りです</h1>
    <form action="/courseConform" method="post">
        <% // 選択可能な画像リスト（仮として3つの画像を用意） %>
        <% List<String> imageList = new ArrayList<>(); %>
        <% imageList.add("image1.jpg"); %>
        <% imageList.add("image2.jpg"); %>
        <% imageList.add("image3.jpg"); %>

        <% // 選択可能な画像の数だけラジオボタンと画像を表示 %>
        <% for (String image : imageList) { %>
            <input type="radio" name="image" value="<%= image %>" id="<%= image %>">
            <label for="<%= image %>"><img src="images/<%= image %>" alt="Image"></label><br>
        <% } %>
        <input type="submit" value="確定">
    </form>
    <form action="/registration" method="get">
        <input type="submit" value="戻る">
    </form>
</body>
</html>
