<!DOCTYPE html>
<html lang="ja">
<head>
  <meta charset="UTF-8">
  <title>おすすめ温泉診断</title>
  <link href="main.css" rel="stylesheet">
  <style>
    div {
      padding: 10px;
      font-size: 16px;
    }
  </style>
</head>
<body>
  <header>
    <nav class="navbar navbar-default">
      <div class="container-fluid">
      </div>
    </nav>
  </header>

  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
  <script src="main.js"></script>

  <h1 class="pageTitle">温泉旅行♨行き先診断</h1>

   <!-- スタート画面-->
   <div id="q_0" class="positionFit">
    <h2>都内から1泊2日で行ける、あなたにぴったりの温泉地を提案します。</h2> 
    <button class="yn_btn" a href="#q_1" >診断する</button>
    </div>

    <!-- 1問目-->
   <div id="q_1" class="positionFit" style="display: none">
    <h2>「電車やバス」と「車」どっちで行きたい？</h2> 
    <button class="yn_btn" a href="#q_2a" >電車やバス</button>
    <button class="yn_btn" a href="#q_2b" >車</button>
    </div>

   <!-- 2問目-->
   <div id="q_2a" class="positionFit" style="display: none">
    <h2>温泉旅館でまったり or 温泉街を散策、どっちが好み？</h2> 
    <button class="yn_btn" a href="#q_3a" >温泉旅館でまったりしたい</button>
    <button class="yn_btn" a href="#q_3b" >温泉街を散策したい</button>
    </div>

   <div id="q_2b" class="positionFit" style="display: none">
    <h2>多少遠くてもいい？</h2> 
    <button class="yn_btn" a href="#q_3c" >せっかくなら遠出したい！</button>
    <button class="yn_btn" a href="#q_3d" >気軽に行ける近場がいい！</button>
    </div>


   <!-- 3問目-->
  <form id="q_3a" method="post" action="insert.php" style="display: none">
    <div>
      <h2>日本酒は好き？</h2>
      <input class="yn_btn" type="submit" name="last_ans" value="日本酒ラブ！！">
      <input class="yn_btn" type="submit" name="last_ans" value="あまり好きじゃない">
  </div>
  </form>

  <form id="q_3b" method="post" action="insert.php" style="display: none">
    <div>
      <h2>海派？山派？</h2>
      <input class="yn_btn" type="submit" name="last_ans" value="海派！！">
      <input class="yn_btn" type="submit" name="last_ans" value="山派！！">
    </div>
  </form>

  <form id="q_3c" method="post" action="insert.php" style="display: none">
    <div>
      <h2>遊べるスポットが周りにあってほしい？</h2>
      <input class="yn_btn" type="submit" name="last_ans" value="遊べるスポットはほしい！">
      <input class="yn_btn" type="submit" name="last_ans" value="遊ぶよりも旅館でまったりしたい">
    </div>
  </form>

  <form id="q_3d" method="post" action="insert.php" style="display: none;">
    <div>
      <h2>思い切って贅沢したい？</h2>
      <input class="yn_btn" type="submit" name="last_ans" value="贅沢しちゃう！">
      <input class="yn_btn" type="submit" name="last_ans" value="コスパ重視！">
    </div>
  </form>
  
</body>
</html>