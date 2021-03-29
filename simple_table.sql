-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 2021 年 3 朁E29 日 17:06
-- サーバのバージョン： 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `onsen_db`
--

-- --------------------------------------------------------

--
-- テーブルの構造 `simple_table`
--

CREATE TABLE IF NOT EXISTS `simple_table` (
`id` int(20) unsigned NOT NULL,
  `name` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `pref` varchar(6) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `access` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `img` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `comment` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

--
-- テーブルのデータのダンプ `simple_table`
--

INSERT INTO `simple_table` (`id`, `name`, `pref`, `access`, `img`, `comment`) VALUES
(1, '越後湯沢', '新潟県', '①新幹線（1.5時間）②車（2.5時間）', '<img src="img/01.jpg" alt="温泉の写真" width=500px><br>出典：<a href="https://www.ikyu.com/00001884/">一休.com</a>', '東京駅から片道80分ほどとアクセス抜群でありながら、川端康成の代表作「雪国」の舞台にもなった、風情ある温泉地です。日本一の米どころで、日本酒も評判。'),
(2, '四万', '群馬県', '①電車＋特急列車＋バス（3時間）②車（2.5時間）', '<img src="img/02.jpg" alt="四万の写真" width=500px><br>出典：<a href="https://www.ikyu.com/00001569/">一休.com</a>', '温泉大国の群馬県の中でも、人気の高い温泉。“四万の病に効く霊泉”という伝説から名づけられていると云われ、街並みはレトロで情緒を感じる雰囲気です。ジブリ作品の舞台になったとも噂される宿や、自然溢れるスポット、美味しいグルメなど数々の魅力であふれています。'),
(3, '熱海', '静岡県', '①新幹線（45分）②車（2時間）', '<img src="img/03.jpg" alt="熱海の写真" width=500px><br>出典：<a href="https://travel.rakuten.co.jp/HOTEL/67482/67482.html">楽天トラベル</a>', '国内屈指の温泉リゾートとして知られる、熱海。東京から1時間かからずサクッと行ける手軽さが嬉しい。温泉と美味しいモノを堪能しつつ、のんびりとした時間を過ごすことができ、忙しい日々を忘れさせてくれます。'),
(4, '草津', '群馬県', '②特急電車＋バス（約3時間）②車（5時間）', '<img src="img/04.jpg" alt="草津の写真" width=500px><br>出典：<a href="https://www.ikyu.com/00002206/?ikCo=fourtravel3">一休.com</a>', '「草津よいとこ一度はおいで♪」の草津節が有名な草津温泉。江戸時代には温泉番付で最高位の“東大関”を得るほどの名湯で、昔から湯治場として親しまれてきました。湯畑さんぽや湯もみ体験など、草津ならではの楽しい観光も盛りだくさん。'),
(5, '那須塩原', '栃木県', '車（2.5～3時間）', '<img src="img/05.jpg" alt="那須塩原の写真" width=500px><br>出典：<a href="https://www.travel.co.jp/guide/article/6938/">LINEトラベル.jp</a>', '栃木県北部に位置する観光エリア・那須塩原は雄大な大自然に囲まれた魅力的な温泉地です。皇族や文豪にも愛された温泉は“美肌の湯”として有名ですよね。自然豊かで落ち着いた雰囲気の温泉郷は、癒しを求めている方にぴったり。また、周辺には那須ハイランドパークや那須ガーデンアウトレットなどの観光スポットもあり楽しめます。'),
(6, '万座', '群馬県', '車（3.5時間）', '<img src="img/06.jpg" alt="万座の写真" width=500px><br>出典：<a href="https://travel.yahoo.co.jp/dhotel/shisetsu/HT10010644/information">Yahoo!トラベル</a>', 'こってり濃厚な温泉に癒されたいと思ったら「万座温泉」へ。硫黄含有量日本一の超高濃度硫黄泉ともいわれ、独特の香りと白濁したお湯に思わず「濃い！」と言ってしまうかも。身体がハードに疲れているのなら、白濁湯で癒されてませんか。群馬の高原に湧き出る知る人ぞ知る「名湯」を求めて、旅にでかけましょう。'),
(7, '箱根', '神奈川県', '①車（1.5時間）②特急列車（1.5時間）', '<img src="img/07.jpg" alt="箱根の写真" width=500px><br>出典：<a href="https://www.ikyu.com/00002370/?ia_theme_rank=1&ia_hotel_rank=1&ia_theme_id=101">一休.com</a>', '新宿から特急ロマンスカーで一本。関東屈指の人気観光地「箱根」は、全国有数の温泉地です。また、温泉だけではなく、大涌谷や、沢山の美術館、箱根神社など、旅の見どころがたくさんあります。思いっきりリフレッシュしたい方は、露天風呂付き客室で贅沢なひとときを過ごしてみては？'),
(8, '房総', '千葉県', '①車（1.5時間）②電車（2時間）', '<img src="img/08.jpg" alt="房総の写真" width=500px><br>出典：<a href="https://www.ikyu.com/00002455/?st=1&lc=1&rc=1&ppc=2&acr=33554432">一休.com</a>', '温泉のイメージがあまりない千葉県。意外ですが、都道府県別温泉地数でトップ10に入るほど、実は温泉の多い地域です。中でも房総半島は、美肌効果が評判の温泉もあって、休日のリフレッシュに最適。都内からもふらっと行けるので、移動で疲れないのも魅力！のんびりゆっくり、美味しいものと温泉を満喫して癒されましょう。');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `simple_table`
--
ALTER TABLE `simple_table`
 ADD UNIQUE KEY `code` (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `simple_table`
--
ALTER TABLE `simple_table`
MODIFY `id` int(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=14;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
