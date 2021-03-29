<?php
//1. POSTデータ取得
//入力チェック（受信確認処理追加）
$last_ans = $_POST["last_ans"];
// var_dump($last_ans);
//2. DB接続します xxxにDB名を入力する
//ここから作成したDBに接続をしてデータを登録します xxxxに作成したデータベース名を書きます
try {
    $pdo = new PDO('mysql:dbname=onsen_db; charset=utf8; host=localhost', 'root', '');
} catch (PDOException $e) {
    exit('DbConnectError:' . $e->getMessage());
}
$sql = "";
if($last_ans === "日本酒ラブ！！") {
    // 越後湯沢をおススメする。
    $sql = "SELECT * FROM simple_table WHERE id = 1;";
}elseif ($last_ans === "あまり好きじゃない") {
    // 四万をオススメする。
    $sql = "SELECT * FROM simple_table WHERE id = 2;";
}elseif($last_ans === "海派！！") {
    // 熱海温泉をおススメする。
    $sql = "SELECT * FROM simple_table WHERE id = 3;";
}elseif ($last_ans === "山派！！") {
    // 草津をオススメする。
    $sql = "SELECT * FROM simple_table WHERE id = 4;";
}elseif ($last_ans === "遊べるスポットはほしい！") {
    // 那須塩原をオススメする。
    $sql = "SELECT * FROM simple_table WHERE id = 5;";
}elseif ($last_ans === "遊ぶよりも旅館でまったりしたい") {
    // 万座をオススメする。
    $sql = "SELECT * FROM simple_table WHERE id = 6;";
}elseif ($last_ans === "贅沢しちゃう！") {
    // 箱根をオススメする。
    $sql = "SELECT * FROM simple_table WHERE id = 7;";
}elseif ($last_ans === "コスパ重視！") {
    // 房総をオススメする。
    $sql = "SELECT * FROM simple_table WHERE id = 8;";
}

// var_dump($sql);

//３．データ登録SQL作成 //ここにカラム名を入力する
//xxx_table(テーブル名)はテーブル名を入力します
$stmt = $pdo->prepare($sql);
$status = $stmt->execute();
// var_dump($status);
//３．データ表示
$view = "";
if ($status == false) {
    //execute（SQL実行時にエラーがある場合）
    $error = $stmt->errorInfo();
    exit("ErrorQuery:" . $error[2]);
} else {
    //Selectデータの数だけ自動でループしてくれる $resultの中に「カラム名」が入ってくるのでそれを表示させる例
    while ($result = $stmt->fetch(PDO::FETCH_ASSOC)) {
        $view .= "<h3>"."あなたにおすすめの温泉は..."."</h3>";
        $view .= "<h1>".$result["name"] . "温泉（";
        $view .= $result["pref"] . "）" ."</h1>";
        $view .= "<h3>".$result["img"] . "<br>" . "<br>";
        $view .= $result["comment"]. "<br>" . "<br>";
        $view .= "アクセス（東京駅から）：".$result["access"]."</h3>" ;
        // var_dump($view);
    }
}
?>
<!DOCTYPE html>
<html lang="ja">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>結果表示</title>
    <link rel="stylesheet" href="main.css">
</head>
<body id="main">

    <div>
        <?= $view ?>
    </div>

    <div>
    <a class="last_btn" a href="https://www.ikyu.com/ryokan/">温泉宿を予約する</a><br>
    <a class="last_btn" a href="index.php">もう一回診断する</a>
    </div>

</body>
</html>

