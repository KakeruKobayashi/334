<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title>希望登録</title>
</head>

<body>
    <h2>ともやさんが取得したい資格について教えてください</h2>
    <div>
        *ジャンル:
        <select name="genre" required>
            <option value="" disabled selected>選択してください</option>
            <option value="語学">語学</option>
            <option value="情報">情報</option>
            <option value="マネジメント">マネジメント</option>
            <option value="会計">会計</option>
            <option value="マーケティング">マーケティング</option>
            <option value="データ分析">データ分析</option>
            <option value="その他">その他</option>
        </select>
        <br>

        資格名:<input type="text" name="license"><br>

    </div>

    <div style="display:inline-flex">
        <div>
            <form action="personalQuestion" method="get">
                <input type="submit" name="back" value="戻る">
            </form>
        </div>
        <div>
            <form action="courseSelection" method="post">
                <input type="submit" name="dicision" value="決定">
            </form>
        </div>
    </div>

</body>

</html>