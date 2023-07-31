<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>学習履歴(グラフ)</title>
</head>
<body>
	   <!--ヘッダー-->
    <header></header>

    <!--継続日数表示-->
    <form class="learningHistory">
        継続日数 <span class="learningTime">17</span>日<br>
        総学習時間 <span class="learningTime">15</span>時間
    </form>

    <!--グラフ表示-->
    <!--グラフはChart.jsというのが使えるかも、ここでは仮置き-->
    <!--HTMLパターン-->
    <div class="bar-chart">
        <div class="bar a" style="height: calc(var(--value-a) / 100 * 300px); background-color: blue;"></div>
        <div class="bar b" style="height: calc(var(--value-b) / 100 * 300px); background-color: red;"></div>
        <div class="bar c" style="height: calc(var(--value-c) / 100 * 300px); background-color: green;"></div>
    </div>

    <!--写真-->
    <img src="../img/graph.png" alt="グラフ"><br>

    <button type="button" class="home button">ホーム</button>

    <!--フッター-->
    <footer></footer>
</body>
</html>