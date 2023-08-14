<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>学習履歴(グラフ)</title>
<link rel="stylesheet" type="text/css"href="${pageContext.request.contextPath}/CSS/commonStyle.css">
<link rel="stylesheet" type="text/css"href="${pageContext.request.contextPath}/CSS/fontStyle.css">
<link rel="stylesheet" type="text/css"href="${pageContext.request.contextPath}/CSS/buttonStyle.css">
</head>

<body>
	<div>
		<div>累計日数</div>
		<span>17</span>日<br>
		<div>総学習時間</div>
		<span>15</span>h<span>20</span>m
	</div>


	<img class="graph" src="./IMG/graph.png" alt="グラフ">
	<br>
	<img class="flow" src="./IMG/flowstatus.png" alt="フロー">

	<div>
		<form action="home" method="get">
			<input type="image" name="backhome" value="ホーム"
				src="./IMG/home_1.png" alt="ホーム">
			<!-- ><input type="submit" name="backhome" value="ホーム"> -->
		</form>
	</div>

</body>

</html>