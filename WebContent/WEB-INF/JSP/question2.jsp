<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title>アンケート２</title>
</head>

<body>
    <h2><c:out value="${nickname}" />さんのことを教えてください</h2>
    <div>
        *興味のある分野:
        <select name="genre" required>
            <option value="" disabled selected>選択してください</option>
            <option value="語学">語学</option>
            <option value="情報">情報</option>
            <option value="マネジメント">マネジメント</option>
            <option value="会計">会計</option>
            <option value="マーケティング">マーケティング</option>
            <option value="データ分析">データ分析</option>
        </select>
        <br>
    </div>


    <div>
        <div>
            語学:
            <select name="genre" required>
                <option value="" disabled selected>選択してください</option>
                <option value="">漢字</option>
                <option value="">英語</option>
            </select>
            <br>
        </div>

        <div>
            漢字:
            <select name="genre" required>
                <option value="" disabled selected>選択してください</option>
                <option value="">日本漢字能力検定１級</option>
            </select>
            <br>
        </div>

        <div>
            英語:
            <select name="genre" required>
                <option value="" disabled selected>選択してください</option>
                <option value="">TOEIC</option>
                <option value="">TOEIF</option>
            </select>
            <br>
        </div>
    </div>

    <div>
        <div>
            情報:
            <select name="genre" required>
                <option value="" disabled selected>選択してください</option>
                <option value="">ITリテラシー</option>
                <option value="">プログラミング</option>
            </select>
            <br>
        </div>

        <div>
            ITリテラシー:
            <select name="genre" required>
                <option value="" disabled selected>選択してください</option>
                <option value="">ITパスポート</option>
                <option value="">基本情報技術者試験</option>
            </select>
            <br>
        </div>

        <div>
            プログラミング:
            <select name="genre" required>
                <option value="" disabled selected>選択してください</option>
                <option value="">C言語プログラミング能力認定試験</option>
                <option value="">オラクルマスター</option>
            </select>
            <br>
        </div>
    </div>

    <div>
        <div>
            マネジメント:
            <select name="genre" required>
                <option value="" disabled selected>選択してください</option>
                <option value="">マネジメント入門</option>
                <option value="">応用マネジメント</option>
            </select>
            <br>
        </div>

        <div>
            マネジメント入門:
            <select name="genre" required>
                <option value="" disabled selected>選択してください</option>
                <option value="">PMC資格</option>
                <option value="">ITコーディネータ試験</option>
            </select>
            <br>
        </div>

        <div>
            応用マネジメント:
            <select name="genre" required>
                <option value="" disabled selected>選択してください</option>
                <option value="">PMP</option>
                <option value="">プロジェクトマネージャ試験</option>
            </select>
            <br>
        </div>
    </div>

    <div>
        <div>
            会計:
            <select name="genre" required>
                <option value="" disabled selected>選択してください</option>
                <option value="英語">会計入門</option>
                <option value="漢字">会計応用</option>
            </select>
            <br>
        </div>

        <div>
            会計入門:
            <select name="genre" required>
                <option value="" disabled selected>選択してください</option>
                <option value="">ファイナンシャル・プランニング技能検定</option>
                <option value="">日商簿記検定</option>
            </select>
            <br>
        </div>

        <div>
            会計応用:
            <select name="genre" required>
                <option value="" disabled selected>選択してください</option>
                <option value="">公認会計士</option>
                <option value="">CFA協会認定証券アナリスト</option>
            </select>
            <br>
        </div>
    </div>


    <div>
        <div>
            マーケティング:
            <select name="genre" required>
                <option value="" disabled selected>選択してください</option>
                <option value="Webマーケティング検定">Webマーケティング入門</option>
                <option value="Webマーケティング基礎">応用Webマーケティング</option>
            </select>
            <br>
        </div>

        <div>
            Webマーケティング入門:
            <select name="genre" required>
                <option value="" disabled selected>選択してください</option>
                <option value="">Webアナリスト検定</option>
                <option value="">マーケティング・ビジネス実務検定</option>
            </select>
            <br>
        </div>

        <div>
            応用Webマーケティング:
            <select name="genre" required>
                <option value="" disabled selected>選択してください</option>
                <option value="">IMA検定</option>
                <option value="">統計検定</option>
            </select>
            <br>
        </div>
    </div>

    <div>
        <div>
            データ分析:
            <select name="genre" required>
                <option value="" disabled selected>選択してください</option>
                <option value="データ分析入門">データ分析入門</option>
                <option value="実践データ分析">応用データ分析</option>
            </select>
            <br>
        </div>

        <div>
            データ分析入門:
            <select name="genre" required>
                <option value="" disabled selected>選択してください</option>
                <option value="">G検定・E検定</option>
                <option value="">データサイエンティスト検定</option>
            </select>
            <br>
        </div>

        <div>
            応用データ分析:
            <select name="genre" required>
                <option value="" disabled selected>選択してください</option>
                <option value="">データベーススペシャリスト試験</option>
                <option value="">データ分析実務スキル検定</option>
            </select>
            <br>
        </div>

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