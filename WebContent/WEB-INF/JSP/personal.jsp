<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/CSS/commonStyle.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/CSS/fontStyle.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/CSS/buttonStyle.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/CSS/personalStyle.css">
<script src="./JS/personal.js"></script>

<title>個人情報入力</title>
</head>
<body>
	<div class="image-container">
		<img class="image-element" src="./IMG/Background_move.png" alt="Image">
	</div>
	<header></header>
	<div>
		<div id="info">
			ユーザー情報を<br>登録してください
		</div>
		<form action="personalController" method="post">

			<div class="form-group">
				<label class="form-label" for="nickname">*ニックネーム</label> <input
					class="form-input" type="text" name="nickname" required>
			</div>
			<div class="form-group">
				<label class="form-label" for="fullname">氏名</label> <input
					class="form-input" type="text" name="fullname">
			</div>
			<div>
				<label>*生年月日</label>
				<div class="form-select-box">
					<div class="form-select">
						<select class="birthday-year dropdown-toggle">
							<!-- 1930-2050まで -->
						</select>
					</div>
					/
					<div class="form-select">
						<select class="birthday-month dropdown-toggle">
							<!-- 1-12まで -->
						</select>
					</div>
					/
					<div class="form-select">
						<select class="birthday-day dropdown-toggle">
							<!-- 1-31まで -->
						</select>
					</div>
				</div>
			</div>

			<div class="form-group">
				<label class="form-label" for="occupation">*職種</label> <select
					class="form-select" name="occupation" required>
					<option value="" disabled selected>選択してください</option>
					<option value="経営者・役員">経営者・役員</option>
					<option value="会社員（正社員）">会社員（正社員）</option>
					<option value="会社員（契約社員）">会社員（契約社員）</option>
					<option value="会社員（派遣社員）">会社員（派遣社員）</option>
					<option value="パート・アルバイト">パート・アルバイト</option>
					<option value="公務員">公務員</option>
					<option value="自営業">自営業</option>
					<option value="自由業">フリーランス</option>
					<option value="専業主婦・主夫">専業主婦・主夫</option>
					<option value="大学生・大学院生">大学生・大学院生</option>
					<option value="専門学校生・短大生">専門学校生・短大生</option>
					<option value="高校生">高校生</option>
					<option value="医師">医師</option>
					<option value="士業">士業（公認会計士・弁護士）</option>
					<option value="NGO・NPO法人職員">NGO・NPO法人職員</option>
					<option value="家事手伝い">家事手伝い</option>
					<option value="無職">無職</option>
					<option value="その他">その他</option>
				</select>
			</div>
			<div class="form-group">
				<label class="form-label" for="field">*分野</label> <select
					class="form-select" name="field" required>
					<option value="" disabled selected>選択してください</option>
					<option value="教育">教育・研究</option>
					<option value="情報">IT・情報技術</option>
					<option value="ビジネス・経営">ビジネス・経営</option>
					<option value="ヘルスケア・医療">ヘルスケア・医療</option>
					<option value="クリエイティブ・デザイン">クリエイティブ・デザイン</option>
					<option value="販売・サービス業">販売・サービス業</option>
					<option value="公務員・官公庁職員">公務員・官公庁職員</option>
					<option value="農業・漁業・林業">農業・漁業・林業</option>
					<option value="自衛隊・警察・消防">自衛隊・警察・消防</option>
					<option value="その他">その他</option>
				</select>
			</div>


			<div class="button-container">
				<div>
					<button type="button" name="return" value="戻る"
						onclick="window.location.href='home'" class="button_line007">戻る</button>
				</div>
				<div>
					<button type="submit" name="return" value="登録"
						class="button_line008">登録</button>
				</div>
			</div>
		</form>
	</div>
</body>

</html>