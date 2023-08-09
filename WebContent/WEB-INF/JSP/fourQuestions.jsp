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
			<form action="suspensionConfirmation" method="get">
				<!-- <input type = "submit" name = "suspension" value = "中断"> -->
				<input type="image" name="interruption" value="中断"
					src="./IMG/suspension_1.png" alt="中断">
			</form>
		</div>
		<div>
			<div>
				<h4>TOEIC読解基礎</h4>
			</div>
			<div>
				<div>Choose the correct word to complete the sentence: "I love
					to _______ in the park on sunny days."</div>
				<div>
					<form action="judgment" method="post">
						<div>
							<div style="display: inline-flex">
								<input type="radio" name="answer" value="walk">walk <input
									type="radio" name="answer" value="swim">swim
							</div>
							<br>
							<div style="display: inline-flex">
								<input type="radio" name="answer" value="cook">cook <input
									type="radio" name="answer" value="sleep">sleep
							</div>
						</div>
						<input type="image" name="decide" value="決定"
							src="./IMG/decision_1.png" alt="決定">
						<!-- <input type = "submit" name = "decide" value = "決定"> -->
					</form>
				</div>
			</div>
		</div>
	</div>
</body>
</html>