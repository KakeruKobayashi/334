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
		<form action="question" method="post">
			<div>
				*ニックネーム：<input type="text" name="name" required><br>
				氏名：<input type="text" name="fullname" ><br>
				*生年月日<!-- 年の入力 -->
				<label for="year">年:</label>
				<input type="text" name="year" id="year" pattern="[0-9]{4}" required maxlength="4" placeholder="yyyy">

				<!-- 月の入力 -->
				<label for="month">月:</label>
				<input type="text" name="month" id="month" pattern="[0-9]{2}" required maxlength="2" placeholder="mm">

				<!-- 日の入力 -->
				<label for="day">日:</label>
				<input type="text" name="day" id="day" pattern="[0-9]{2}" required maxlength="2" placeholder="dd"><br>
			</div>
			<div>
				*職種：<select name="occupation" required>
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
					<option value="士業（公認会計士・弁護士・税理士・司法書士）">士業（公認会計士・弁護士・税理士・司法書士）</option>
					<option value="NGO・NPO法人職員">NGO・NPO法人職員</option>
					<option value="家事手伝い">家事手伝い</option>
					<option value="無職">無職</option>
					<option value="その他">その他</option>
				</select>
				<br>
			</div>
			<div>
				*分野：<select name="field" required>
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
				</select><br>
			</div>
			<div>*取得したい資格がありますか？</div>
			<div>
				<input type="radio" name="userhope" id="Yes" value="Y" required>
				<label for="Yes">はい</label>
				<input type="radio" name="userhope" id="No" value="N" required>
				<label for="No">いいえ</label><br>
			</div>
			<div>
				<input type="submit" name="decide" value="決定">
			</div>
			<div>
  				<input type="submit" name="back" value="戻る" onclick="window.location.href='home'">
			</div>

		</form>
	</div>
</body>

</html>