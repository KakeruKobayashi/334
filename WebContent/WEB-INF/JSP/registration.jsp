<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/CSS/commonStyle.css">
    <title>希望登録</title>
</head>

<body>
    <header></header>
    <div id="info">ともやさんが取得したい資格について教えてください</div>
    <div style="display: inline-flex">
        <div>
            <form action="registrationController" method="post">
                <div>
                    *ジャンル: <select name="genre" required>
                        <option value="" disabled selected>選択してください</option>
                        <option value="語学">語学</option>
                        <option value="情報">情報</option>
                        <option value="マネジメント">マネジメント</option>
                        <option value="会計">会計</option>
                        <option value="マーケティング">マーケティング</option>
                        <option value="データ分析">データ分析</option>
                        <option value="その他">その他</option>
                    </select> <br>
                    <div>
                        資格名: <input type="text" name="license"> <br>
                    </div>
                    <div>
                        <button>
                            <input type="submit" name="back" value="" onclick="window.location.href='personalQuestion'">
                            <img src="./IMG/return.png" alt="戻る">
                        </button>
                        <button>
                            <input type="submit" name="dicision" value=""> <img src="./IMG/decision.png" alt="決定">
                        </button>
                    </div>
                </div>
            </form>
        </div>
    </div>
    <footer></footer>
</body>

</html>