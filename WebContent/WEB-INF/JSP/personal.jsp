<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div>
		<form action="question" method = "post" >
			<div>
				<input type = "text" name = "fullname"><br>
				<input type = "text" name = "age"><br>
			</div>
			<div>
				<select name = "occupation">
					<option>一般社員（事務）</option>
					<option>一般社員（営業）</option>
					<option>エンジニア</option>
				</select><br>
			</div>
			<div>
				<select name = "field">
					<option>教育</option>
					<option>情報</option>
					<option>飲食</option>
				</select><br>
			</div>
			<div>勉強したいものがありますか？</div>
			<div>
				<input type = "radio" name = "userhope" id = "Yes">はい
				<input type = "radio" name  = "userhope" id = "No">いいえ<br>
			</div>
			<div>
				<input type = "submit" name = "decide" value = "決定">
			</div>
		</form>
	</div>
</body>
</html>