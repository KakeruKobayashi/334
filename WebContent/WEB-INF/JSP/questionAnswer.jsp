<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>英語一問一答</title>
</head>
<body>
   <main>
   <p>一問一答</p>
        <div class="button-container">
            <button class="button button1">〇</button>
            <button class="button button2">×</button>
        </div>
        <div style="display: inline;">
        <form action="suspensionConfirmation" method="post" >
                <input type="image" name="interruption" value="中断" src="./IMG/suspension_1.png" alt="中断">
        </form>
        <img src="img/question.png" alt="問題">
        </div>
    </main>
</body>
</html>