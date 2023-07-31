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
		<div>
			<form action="suspensionConfirmation" method = "get">
				<input type = "submit" name = "suspension" value = "中断">
			</form>
		</div>
		<div>
			<div>
				<h4>TOEIC読解基礎</h4>
			</div>
			<div>
				<div>
					Choose the correct word to complete the sentence: "I love to _______ in the park on sunny days."
				</div>
				<div>
					<div style="display:inline-flex">
						<button>walk</button>
						<button>swim</button>
					</div>
					<br>
					<div style="display:inline-flex">
						<button>cook</button>
						<button>sleep</button>
					</div>
				</div>
				<div>
					<form action="judgment" method = "post">
						<input type = "submit" name = "decide" value = "決定">
					</form>
				</div>
			</div>
		</div>
	</div>
</body>
</html>