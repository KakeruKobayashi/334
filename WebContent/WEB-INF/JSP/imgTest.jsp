<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<title>IMGテスト</title>

<head>
<meta charset="UTF-8">
<meta name=”viewport” content=”width=device-width, initial-scale=1.0”>
<title>Document</title>
<style>
/* main要素のスタイル */
main {
	/* フレックス成長を許可し、コンテンツの領域を埋める */
	flex-grow: 1;
	/* コンテンツのスタイルを指定 */
	padding: 20px;
	display: flex;
	justify-content: center;
	align-items: center;
	/* コンテンツのサイズを指定 */
	width: 100%;
	height: 100%;
}

/* ページ全体のスタイル */
body {
	/* 幅を指定 */
	width: 1242px;
	/* 高さを指定 */
	height: 2208px;
	/* ページ全体を中央に配置 */
	border: 2px solid #000000;
	margin: 0 auto;
}
</style>
</head>
<body>
	<header>
		<!-- ヘッダーに表示する内容 -->
		ヘッダー
	</header>

	<img src="./IMG/tudurisu.png" alt="つづりすロゴ">
	<br>
	<img src="./IMG/learningStart.png" alt="学習を始める">
	<br>
	<img src="./IMG/learningHistory.png" alt="学習履歴"><br>

	<img src="./IMG/home.png" alt="ホーム">
	<img src="./IMG/decision.png" alt="決定"><br>
	<img src="./IMG/return.png" alt="戻る">
	<img src="./IMG/suspension.png" alt="中断">
	<footer>
		<!-- フッターに表示する内容 -->
		<img src="./IMG/trees.png" alt="学習履歴"> フッター
	</footer>
</body>
</html>
