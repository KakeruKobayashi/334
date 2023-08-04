<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>CSS Test</title>
  <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/CSS/commonStyle.css">


</head>
<body>
  <header>
    <h1>ヘッダー</h1>
  </header>

  <!-- ボタン -->
  <button>クリックしてください</button>

  <!-- ラジオボタン -->
  <input type="radio" name="gender" value="male">男性
  <input type="radio" name="gender" value="female">女性

  <!-- 入力フォーム -->
  <form>
    <label for="username">ユーザー名:</label>
    <input type="text" id="username" name="username" required><br>

    <label for="email">Eメール:</label>
    <input type="email" id="email" name="email" required><br>

    <label for="password">パスワード:</label>
    <input type="password" id="password" name="password" required><br>

    <input type="submit" value="送信">
  </form>

	    <div class="button-container">
            <button class="button button1">ボタン1</button>
            <button class="button button2">ボタン2</button>
        </div>
        <div class="square"></div>

  <!-- <p>タグ -->
  <p>これは適当な文章です。</p>

  <!-- <h2>タグ -->
  <h2>タイトル2</h2>

  <!-- <div>タグ -->
  <div>これは適当な要素を含んだDIVタグです。</div>

  <footer>
    <p>フッター</p>
  </footer>
</body>
</html>
