<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>CSS Test</title>
  <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/CSS/commonStyle.css">
  <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/CSS/fontStyle.css">


</head>
<body>
  <header>
    <h1> </h1>
  </header>

  <!-- ボタン -->
  <button class="button button">クリックしてください</button>

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

  <!-- <p>タグ -->
  <p>これは適当な文章です。</p>

  <!-- <h2>タグ -->
  <h2>タイトル2</h2>

  <!-- <div>タグ -->
  <div>これは適当な要素を含んだDIVタグです。</div>

  <footer>
    <p> </p>
  </footer>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script>
        // アスペクト比を計算して適用する関数
        function updateAspectRatio() {
            var viewportWidth = $(window).width();
            var viewportHeight = $(window).height();
            var aspectRatio = 750 / 1334; // スマホサイズのアスペクト比

            if (viewportWidth / viewportHeight > aspectRatio) {
                // 幅に合わせる場合
                $('body').css('width', viewportHeight * aspectRatio);
                $('body').css('height', viewportHeight);
            } else {
                // 高さに合わせる場合
                $('body').css('width', viewportWidth);
                $('body').css('height', viewportWidth / aspectRatio);
            }
        }

        // ページの初期化時にアスペクト比を適用
        updateAspectRatio();

        // ウィンドウサイズが変わった時にアスペクト比を再計算
        $(window).on('resize', function() {
            updateAspectRatio();
        });
    </script>
</body>
</html>
