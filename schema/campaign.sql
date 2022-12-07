-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- 主機： localhost
-- 產生時間： 2022 年 12 月 07 日 15:04
-- 伺服器版本： 10.4.21-MariaDB
-- PHP 版本： 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 資料庫： `hiking`
--

-- --------------------------------------------------------

--
-- 資料表結構 `campaign`
--
DROP TABLE IF EXISTS `campaign`;
CREATE TABLE `campaign` (
  `sid` int(255) NOT NULL,
  `camp_name` varchar(255) NOT NULL,
  `location_sid` int(30) NOT NULL,
  `mountain_sid` int(100) NOT NULL,
  `campaign_days_sid` int(100) NOT NULL,
  `campaign_type_sid` int(11) NOT NULL,
  `price` int(100) NOT NULL,
  `camp_startdate` varchar(100) NOT NULL,
  `camp_joinenddate` varchar(100) NOT NULL,
  `brife_describe` text NOT NULL,
  `schedule_day1` text NOT NULL,
  `schedule_day2` text DEFAULT NULL,
  `schedule_day3` text DEFAULT NULL,
  `qty` int(100) DEFAULT NULL,
  `mainImage` varchar(255) NOT NULL,
  `detailImages` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 傾印資料表的資料 `campaign`
--

INSERT INTO `campaign` (`sid`, `camp_name`, `location_sid`, `mountain_sid`, `campaign_days_sid`, `campaign_type_sid`, `price`, `camp_startdate`, `camp_joinenddate`, `brife_describe`, `schedule_day1`, `schedule_day2`, `schedule_day3`, `qty`, `mainImage`, `detailImages`) VALUES
(1, '南橫三星 - 新手難度報名兩天兩夜規劃', 7, 120, 2, 1, 1200, '2022-12-15', '2023-02-28', '你見過南橫之美嗎？\n自從2009年8月，南橫公路中斷之後，美麗的南橫三星便淪為黑山、少有人探訪，直到最近才又終於開放了許多山友鍾情的南橫三星！\n塔關山、關山嶺山、庫哈諾辛山皆為A級百岳，是適合當日來回的平易、絕美山嶺，封閉多年的原始森林風華更甚以往，台灣368還安排了專車接送往返民宿及各登山口，讓你飽覽南橫的沿線風光、更讓你輕鬆的入手三座百岳。\n穿梭在巨木參天的鐵杉林中、將炎熱的暑氣全數隔絕在外，美麗的自然景觀、雲海、山稜線，就這樣在山中靜靜的等著你的拜訪。', 'Day1\n05:30 起床用早餐\n06:30 上車出發\n08:00 大關山隧道口 關山嶺山登山口起登\n09:30 登頂關山嶺山\n10:30 關山嶺山登山口上車\n11:00 塔關山登山口起登\n13:30 登頂塔關山（午餐自理）\n16:00 塔關山登山口\n17:30 返抵民宿', 'Day2\n05:30 起床用早餐\n06:30 上車出發\n08:00 進涇橋起登\n10:30 庫哈諾辛山屋\n12:00 登頂庫哈諾辛山（午餐自理）\n14:30 庫哈諾辛山屋\n16:00 進涇橋上車返程\n 19:30 高雄左營高鐵站解散', '', 0, 'campmain1.jpg', 'campdetail1.jpg, campdetail2.jpg, campdetail3.jpg'),
(2, '玉山前峰免抽籤 - 登頂玉山的行前訓練 一日單攻初階難度', 7, 2, 1, 1, 1280, '2022-12-15', '2023-02-28', '玉山前峰標高3239公尺，位於玉山西峰西側尾稜，是很受歡迎的入門百岳行程，擁有270度的良好展望。從塔塔加登山口出發，經孟祿亭到2.7K處即為玉山前峰的登山口，此處距離峰頂只有800公尺，卻需花費超過一小時步程，惡名昭彰的亂石陡坡讓人腿軟，難怪叉路口路牌上會被寫上『很難爬』三個字，是挑戰玉山主峰前最好的訓練場。', 'Day1\n\n05:30 嘉義火車站前站集合出發（早餐自理）\n\n08:00 上東埔停車場整裝出發\n\n08:30 入園報導/搭乘園區接駁車(自費)\n\n09:00 塔塔加登山口起登\n\n10:30 2.7K玉山前鋒登山口\n\n 12:30 玉山前峰 H3239（午餐自理）\n\n14:30 玉山前鋒登山口\n\n16:00 塔塔加登山口\n\n16:30 上東埔停車場上車回程\n\n19:30 嘉義火車站前站解散', '', '', 0, 'campmain2.jpg', 'campdetail4.jpg, campdetail5.jpg, campdetail6.jpg'),
(3, '閂山鈴鳴 - 代辦入園申請三天兩夜初階難度非單攻', 14, 34, 3, 1, 1200, '2022-12-15', '2023-02-28', '閂山、鈴鳴山是中央山脈北二段縱走中會遇到的兩座百岳\n\n相較於無明山與甘薯峰，閂山和鈴鳴山的路線格外的清晰、沒有險峻的危崖或太過困難的地形、也不需在暗夜中踩跨大石頭渡溪\n\n他們擁有的是和緩柔美的高山草原、純粹的原始樹林、蒼勁矗立的鐵杉樹群\n\n360度全景的遼闊展望和沿途相伴的南湖、中央、無明、甘薯、鋸齒、奇萊的山脈稜線\n\n遍佈在730高海拔林道中的原生種紅葉植物，每到季節就落了滿地、化作腳下鮮豔的紅地毯的美麗景色\n\n更成了許多攝影人眼中的楓紅秘境，幽靜的等待人們的探訪', 'Day 1\n06:00 台北車站西三門集合出發\n08:30 南山部落便利商店休息\n11:00 730林道11.7K行車終點（整裝起登） \n12:30 16K廢棄機車（午餐自理）\n16:30 25K工寮紮營休息 \n17:30 晚餐', 'Day 2\n05:30 早餐（協作提供）\n06:30 出發鈴鳴山\n08:30 27.5K鈴鳴山登山口\n10:30 鈴鳴山（午餐自理）\n11:30 出發返程\n14:30 返回25K工寮\n17:30 晚餐', 'Day 3\n05:00 早餐（協作提供）\n06:00 整裝出發\n07:00 閂山登山口（輕裝登頂）\n09:00 登頂閂山\n10:00 出發返程\n11:00 回到閂山登山口（午餐自理）\n11:30 出發返程 \n16:00 11.7K行車終點上車 \n18:30 南山部落 \n21:30 台北車站西三門解散', 0, 'campmain3.jpg', 'campdetail7.jpg, campdetail8.jpg, campdetail9.jpg'),
(4, '霞喀羅古道 - 賞楓路線新手難度兩天一夜', 3, 155, 2, 1, 1390, '2022-12-15', '2023-02-28', '初入山林的你，是否會想要走進大自然、穿越歷史、體驗山林呢？\n\n\n霞喀羅古道，又稱石鹿古道\n\n可以說是個北起秀巒溫泉、南到清泉溫泉的史蹟巡禮之路\n\n日治時代政府開闢警備道路直通深山部落，並設立薩克亞金駐在所派駐警力監控山地部落\n\n直到 2001 年經林務局規劃後，霞喀羅就這樣成了台灣的第一條國家步道\n\n在這條路線中，我們不攻頂、也不在凌晨早起整裝待命，只單純靠著雙腳一步步走入山林沐浴在大自然的芬多精之下\n\n希望能夠帶著大家一同進入山林之中，享受與自然共存的每一個當下', 'Day1 \n\n07:30 新竹高鐵站集合\n\n10:30 清泉石鹿登山口\n\n11:00 田村台駐在所\n\n12:00 霞喀羅大山登山口\n\n12:30 第二鞍部，古道最高點\n\n13:00 午餐時間（午餐自理）\n\n15:00 楢山駐在所\n\n17:00 晚餐時間\n\n18:00 分享山林故事', 'Day2\n\n07:00 早餐、自由活動\n\n09:00 回程\n\n10:00 白石吊橋\n\n11:00 武神駐在所\n\n11:30 布奴加里山登山口\n\n11:45 馬鞍駐在所 \n\n12:00 午餐時間（午餐自理）\n\n13:00 粟園駐在所\n\n14:30 尖石養老登山口 \n\n17:00 新竹高鐵站解散', '', 0, 'campmain4.jpg', 'campdetail10.jpg, campdetail11.jpg, campdetail12.jpg'),
(5, '四崁水生態導覽 - 新北近郊親民步道，親子賞鳥聖地', 3, 129, 1, 1, 1450, '2022-12-15', '2023-02-28', '相鄰於水庫旁的四崁水，是綠意盎然的山間秘境，簡直就是異世界般的賞鳥天堂！包含12種臺灣特有種的鳥類，像是泰雅族傳說中占卜運示的神鳥-繡眼畫眉，以及穿梭在灌木叢間，有著獨特鉤狀嘴喙的大彎嘴與小彎嘴，還有身披典雅深藍，與鮮明紅色臉頰的藍腹鷴。除了特有種們，亦有其他多采多姿的鳥類。像是中低海拔常見的美麗仙子-灰喉山椒，一黃一橘的成群結隊，在綠樹的映襯下顯得格外的繽紛。來到此地，更不能忘記，躲藏在樹林間不易看見的朱鸝，竟有著如烈焰般鮮紅的絢麗羽衣，驚鴻一瞥，必定能在心中留下絕美的記憶。除了增加對動物的瞭解之外，也能拉近自身與大自然的距離，靜下心來感受大自然給予不一樣的體驗，進而對於尊重生命、環境以及自身有更深一層的體悟。這裡不僅僅是單純的視覺與聽覺的饗宴，也是身心放鬆的世外桃源，還能在其中更加認識與我們相距不遠的生態環境。不如一起走進四崁水，來趟飲水思源的生態之旅吧！', 'Day1\n8:00 桂山發電廠冰品部集合(早餐自理)\n8: 15  四坎水桂山路\n11:40 大桶山交叉口折返\n(時間彈性調整)\n12:30桂山發電廠冰品部\n12:45  結束解散', '', '', 0, 'campmain5.jpg', 'campdetail13.jpg, campdetail14.jpg, campdetail15.jpg'),
(6, '二子坪夜觀 - 陽明山生態導覽 - 台北近郊親民步道', 1, 159, 1, 1, 1450, '2022-12-15', '2023-02-28', '二子坪步道位於陽明山國家公園境內，離台北市中心不遠的路程，卻有著豐富的生物多樣性，而夜間出現的生物又不同於日間，有著獨特的迷人之處。山羌、大赤鼯鼠等哺乳類在晚上時常發出叫聲溝通，有時也能見到大赤鼯鼠滑翔的畫面；黃嘴角鴞和領角鴞的叫聲環繞於耳，牠們伺機而動地尋找小動物當獵物，雖不容易見到其蹤影，卻更顯得神秘；生態池的蛙鳴此起彼落，在這邊更可能發現僅在北部狹窄山區才能見到的藍色斯文豪氏赤蛙，非常夢幻；爬蟲類與兩生類同為夜間觀察的主要類群，常見的有黃口攀蜥、紅斑蛇、青蛇和龜殼花等等，運氣好也能發現一些不常見的蛇種，同時也能更認識這些平常行蹤隱密的蛇類，得以近距離觀察與接觸，會發現這些動物其實並不可怕，反而很迷人。步道路程平緩易行，對於入門者來說是良好的地點，除了增加對動物的瞭解之外，也能拉近自身與大自然的距離，靜下心來感受大自然給予不一樣的體驗，進而對於尊重生命、環境以及自身有更深一層的體悟。當我們抱持著與萬物同樣平等的角度以及謙卑的心態進入大自然，以不傷害動物、減到最低干擾為前提，會發現得到的比想像中來的多。來一起探索吧！會發現很多意想不到、新奇的事物。', '19:00 二子坪遊客服務站集合(晚餐自理)(有停車場可供停車，需刷悠遊卡進出)\n19: 15  二子坪步道入口\n20:30 生態池折返\n(時間彈性調整)\n21:30二子坪步道入口\n21:45  結束解散', '', '', 0, 'campmain6.jpg', 'campdetail16.jpg, campdetail17.jpg, campdetail18.jpg'),
(7, '合歡山四峰行程怎麼玩 - 兩天一夜合歡四峰新手難度包住宿', 7, 5, 2, 1, 1450, '2022-12-15', '2023-02-28', '是不是也很想爬百岳，卻不知道要從何開始下腳呢？\n合歡四峰的行程結合了登山技巧的戶外教學\n讓你不用擔心自己的體能不足訓練不夠、擔心對山岳的了解不足\n在路程中我們會一邊爬山、一邊學習更有效的登山步行技巧以及自主體能訓練方式\n降低你在爬山時遇到的體力不支、韌帶拉傷、抽筋、扭傷等傷害\n讓登山變得更安全、讓戶外變得更簡單', 'Day1 \n\n07:30 台中高鐵站七號出口一樓會面點4集合出發（早餐自理）\n\n10:30 合歡東峰登山口\n\n12:00 合歡東峰 ( 午餐自理 )\n\n14:00 合歡主峰登山口\n\n16:00 合歡主峰\n\n17:30 餐廳用膳\n\n19:00 民宿 ', 'Day2\n\n04:00 起床早餐（由民宿提供）\n\n05:00 石門山日出\n\n08:00 北峰登山口 \n\n10:00 合歡山北峰\n\n13:00 北峰登山口  ( 午餐自理 )\n\n16:00 台中烏日高鐵站解散', '', 0, 'campmain7.jpg', 'campdetail19.jpg, campdetail20.jpg, campdetail21.jpg'),
(8, '眠月線 - 代辦申請阿里山眠月線 兩天一夜新手難度路線行程', 7, 57, 2, 1, 1450, '2022-12-15', '2023-02-28', '眠月線的光影映照在高聳的鐵道，微風吹拂樹梢\n那一刻，真的會覺得失落的森林鐵道秘境美的名不虛傳\n即便走在高聳的鐵道上的每一步都是膽戰心驚、如履薄冰但也不能擋住你內心繼續往前邁進的渴望\n就讓我們一起沿著鐵軌、走進蓊鬱、穿越歷史的長河\n一同回到過去，體驗人們眠於月下的浪漫吧', 'Day1 \n\n07:00 嘉義火車站集合\n\n10:00 阿里山森林遊樂區\n\n11:00 出發眠月線（午餐自理）\n\n13:00 抵達營地\n\n15:00 石猴車站\n\n17:00 返回營地自由活動，領隊需準備晚餐\n\n19:00 享用晚餐\n\n20:00 肝膽相照（拿出你們的耍廢糧跟坦誠相見的心吧～）', 'Day2\n\n07:00 起床吃早餐\n\n08:00 離開營地返程\n\n11:00 阿里山森林遊樂區\n\n14:00 嘉義火車站', '', 0, 'campmain8.jpg', 'campdetail22.jpg, campdetail23.jpg, campdetail24.jpg'),
(9, '水漾森林2022行程 - 水漾森林台中接駁 新手難度路線兩天一夜免申請', 7, 57, 2, 1, 1450, '2022-12-15', '2023-02-28', '霧氣氤氳的像是人間仙境一樣的水漾森林\n\n之所以會有那麼美的地形出現，都是因為1999年9月21日的大地震震跨了山林，堵住了溪水上游的河道\n\n原本生長在河道附近的杉樹林眨眼變成如同森林版的亞特蘭提斯一樣浸泡在水中\n\n夢幻的堰塞湖地形景致，美的彷彿置身優美的迷幻山林\n\n而這就是水漾森林的名稱由來', 'Day1 \n\n07:30 台中高鐵站集合出發（早餐自理）\n(高鐵站七號出口一樓會面點4)\n\n10:30 杉林溪森林遊樂區→園區接駁車\n\n12:30 仁亭登山口（海拔 1680m）\n\n15:20 工寮\n\n16:30 水漾森林入水口營地（ 海拔 1800m ）\n\n17:00 晚餐時間', 'Day2\n\n06:00 起床早餐\n\n08:00 水漾森林湖邊賞景後出發\n\n11:30 工寮 ( 午餐自理 )\n\n14:30 仁亭登山口→園區接駁車\n\n15:00 杉林溪森林遊樂區門口停車處\n\n18:00 台中烏日高鐵站解散', '', 0, 'campmain9.jpg', 'campdetail25.jpg, campdetail26.jpg, campdetail27.jpg'),
(10, '加羅湖2022 - 代辦申請距離7.2公里 兩天一夜新手難度', 13, 54, 2, 1, 1450, '2022-12-15', '2023-02-28', '加羅湖有一個美麗的別稱「散落的珍珠」\n\n說到這個美麗名字的起源，那就要回到在距離現在相當遙遠的年代了\n\n傳說中，有個美麗的仙女在梳妝打扮時，不慎將手中的寶鏡摔碎\n\n那些晶瑩閃爍的細小碎片就這樣從天上紛紛落下、遍灑在宜蘭縣大同鄉的加羅山區，化作了一座座清澈如鏡的高山湖泊\n\n從天上往下俯瞰，那些湖泊就像是一顆顆散落在山林間的珍珠一樣散發出溫潤的光芒\n\n而加羅湖正是其中最具代表性的一顆珍珠', 'Day1 \n\n06:00 台北車站西三門集合\n\n10:00 四季國小\n\n10:30 林道柵欄口出發\n\n11:30 廢棄四季護管所\n\n12:00 巨木登山口（午餐自理）\n\n16:30 加羅湖露營', 'Day2\n\n06:00 起床\n\n08:00 出發下山\n\n12:30 巨木登山口（午餐自理）\n\n13:00 廢棄四季護管所\n\n14:30 林道柵欄口 \n\n19:30 台北車站解散', '', 0, 'campmain10.jpg', 'campdetail28.jpg, campdetail29.jpg, campdetail30.jpg'),
(11, '松蘿湖跟團 - 代辦交通申請 松蘿湖畔露營新手難度兩天一夜', 5, 3, 2, 1, 1450, '2022-12-15', '2023-02-28', '松蘿湖因時常籠罩在薄霧之中，如同嬌羞少女帶上面紗般，讓人無法窺見其全貌，被稱為「十七歲少女之湖」每年10月至翌年4月，松蘿湖水量充沛，陽光照射湖面時，湖面倒映著七彩暈影，彷彿美少女紅暈敷面，醉意迷人其餘月份雖水量較少，但湖底紅綠小草，舖陳如茵，讓人流連忘返！此行程雨季滿路泥濘，最好穿著雨鞋，要不然就要有登山鞋變雨鞋的打算整條路線都是在杉、樹林中行走，不會晒到太陽，水源取得亦是方便，帶行動水即可至松羅湖畔紮營，翌日可欣賞到松羅湖最美的濛瀧美\n \n\n行經在杉樹林的涼蔭中，只要兩個多小時就可以抵達此行最高的十字越嶺鞍部\n\n時常籠罩在薄霧中的松蘿湖美的如夢似幻\n\n湖面四散著七彩的暈影、湖底亦有綠紅各色小草野蠻生長、鋪陳如茵，讓人流連忘返\n\n每年十月至翌年四月，適逢松蘿湖水量最充沛之時\n\n陽光映射湖面、倒映出七彩的暈影，一儒少女紅暈敷面、醉意迷人的樣態\n十七歲少女之湖名不虛傳', 'Day1 \n\n06:00 台北車站西三門集合\n\n10:00 松蘿湖登山口\n\n11:30 水龍頭營地（午餐自理）\n\n15:00 拳頭姆岔路\n\n15:40 松蘿湖', 'Day2\n\n06:00 起床早餐\n\n07:30 出發下山\n\n11:00 水龍頭營地（午餐自理）\n\n14:00 松蘿湖登山口\n\n14:30 林道柵欄口 \n\n18:00 台北車站解散', '', 0, 'campmain11.jpg', 'campdetail31.jpg, campdetail32.jpg, campdetail33.jpg'),
(12, '司馬庫斯鎮西堡 - 精緻民宿 兩天一夜新手行程', 3, 155, 2, 1, 1450, '2022-12-15', '2023-02-28', '你有聽過「上帝部落」這個名字嗎？還記得多年前機車環島盛行之時，這個名字時常被人們提到\n\n司馬庫斯位在海拔1600多公尺的深山，因為交通不便的關係，那裡直到民國 68 年才開始供電，也因此被人們稱為「黑暗部落」\n\n但神秘的黑暗部落卻也是最適合當作第一次山旅的行程\n\n從部落通往神木區的路徑清楚、舒緩，沿路的巨木、竹林、絕佳的展望都生氣勃勃地存在於這座廣大的森林之中\n\n而鎮西堡 Cinsbu 在泰雅族語中更有「清晨，太陽第一個照到，日照充足之地。」之意\n\n在他們眼中，那是最接近上帝的部落', 'Day1 \n\n06:30 台北車站西三門集合（早餐自理）\n\n08:00 新竹高鐵站四號出口大時鐘下方集合（早餐自理）\n\n11:00 司馬庫斯部落停車場整裝出發\n\n11:20 巨木登山口\n\n12:40 楓香亭\n\n13:20 廁所\n\n13:50 神木區\n\n14:00 大老爺神木\n\n16:00 司馬庫斯部落停車場\n\n18:00 部落民宿（由民宿提供晚餐）', 'Day2\n\n06:30 起床早餐（由民宿提供早餐）\n\n07:30 出發\n\n08:00 鎮西堡巨木群登山口\n\n08:20 過木橋\n\n09:10 AB區岔路\n\n09:25 2K休息區\n\n09:45 馬洋山岔路\n\n09:55 亞當夏娃巨木\n\n10:25 3K指標\n\n11:10 4K指標\n\n11:15 馬洋山岔路\n\n11:25 2.5K休息區（享用獵人包飯）\n\n14:00 鎮西堡巨木群登山口\n\n17:00 新竹高鐵站\n\n19:00 台北車站', '', 0, 'campmain12.jpg', 'campdetail34.jpg, campdetail35.jpg, campdetail36.jpg'),
(13, '羅馬縱走 - 含前晚住宿一日單攻距離10公里 新手難度路線免申請', 5, 12, 2, 1, 1300, '2022-12-15', '2023-02-28', '羅馬縱走，指的是從羅葉尾山到馬武佐野郡山的這條稜線。\n\n屬於雪山山脈、百岳喀拉業山向南延伸的支稜的羅馬縱走，海拔高度約在 1800m～2700m 之間，高度落差達 900m。\n\n旁有南湖中央尖、北二段群峰、武陵四秀、雪山主東、志佳陽、大小劍等百岳名山相伴。沿途豐富的巨木群、鐵杉林、白木林、千年羅馬神木森林景觀，更是令人目不暇給。\n\n全長約十公里的羅馬縱走，除了頭尾兩端有溪水之外，全程皆無水源，需準備足夠的飲水和食物，是一條可看性很高、也充滿挑戰性的縱走路線。', 'Day0（登山行程日期前一日）\n\n19:00 台北火車站西三門集合\n\n22:30 夜宿「南山村民宿」（通鋪床位，可以盥洗）        \n         備註：隔天需爬升900公尺，請養精蓄銳。', 'Day1\n\n\n05:00 起床\n\n05:30 早餐\n\n06:00 開車\n\n06:30 「思源埡口廢棄派出所」整裝出發\n\n10:00 羅葉尾山（2717m ，一等三角點）\n\n11:20  2410峰\n\n12:30 羅馬神木休息（午餐自理）\n\n14:00 馬武佐野郡山（2368m）\n\n16:00 馬鰣橋\n\n19:30 台北火車站西三門', '', 0, 'campmain13.jpg', 'campdetail37.jpg, campdetail38.jpg, campdetail39.jpg'),
(14, '加里山 - 台北包車新手難度來回約8公里一日遊', 4, 63, 1, 1, 1300, '2022-12-15', '2023-02-28', '加里山是位於台灣苗栗縣南庄鄉、泰安鄉的山脈\n\n標高 2220 公尺，素來有著「台灣小百岳」的稱號\n\n同時，他也是苗栗地區主要河川，中港溪、後龍溪的源頭\n\n更因為形似富士山，而被山友岳人們親稱為「台灣富士山」\n\n因為四季氣候、早晚光線的變化巨大的緣故\n\n賽夏族的長老總說這裡是「沒有門的地方」\n\n一般人身處其中很容易迷失方向\n\n「魔幻森林」的稱號可說是名不虛傳、其來有自', 'Day1\n05:30 台北火車站西三門\n\n06:45 新竹高鐵四號出口外\n\n08:15 加里山鹿場登山口，整裝完畢起登\n\n08:30 風美溪\n\n09:45 加里山避難山屋\n\n11:00 九號救援樁陡升坡\n\n11:50 加里山休息（2220m，一等三角點）（午餐自理）\n\n12:30 出發返程\n\n16:00 加里山鹿場登山口\n\n17:30 新竹高鐵站\n\n19:00 台北火車站西三門\n\n\n貼心叮嚀：實際活動行程需視當天氣候狀況、團員狀況及車流量狀況而定，本表僅供參考。\"', '', '', 0, 'campmain14.jpg', 'campdetail40.jpg, campdetail41.jpg, campdetail42.jpg'),
(15, '高島縱走2022開團 - 含交通新手難度一日遊', 3, 267, 1, 1, 1300, '2022-12-15', '2023-02-28', '位於新竹縣尖石鄉那羅部落一帶的高島縱走，是許多山友岳人們喜愛的路線之一\n\n他寬緩的山頭，可讓人放牧望出一片筆直優美的杉木林、觀景台的開闊展望甚至可以遠眺望到尖石部落與那羅一帶\n\n而且據說，高島縱走在日治時期還是條秘密的古道呢\n\n在黃福森著作的《走向古道來一場時空之旅》一書中，更提到了當時政府為了鞏固山區政權、以及開發山區資源，而多次向原住民討伐的歷史故事\n\n高島縱走往返距離約莫 9 公里，行走時間 6-8 小時、高度落差約 770 公尺，是單日縱走的好選擇\n\n途中的森林迷霧、參天大樹與雲海美景，搭配多樣化的地形、景觀與林相變化，是相當適合新手（也相當殺底片）的台灣縱走路線', 'Day1\n05:30 台北火車站西三門\n\n06:45 新竹高鐵四號出口外\n\n08:15 高台山第二登山口，整裝完畢起登\n\n09:15 高台山（1510m，三等三角點 ）\n\n10:15 高島觀景台\n\n10:45 小島田山（1670m）\n\n11:45 中島田山（1805m）\n\n12:45 大島田山休息（1824m）（午餐自理）\n\n13:30 三叉路口（途經日治時期警備道）\n\n14:30 高島觀景台\n\n13:10 高台山三角點\n\n16:00 高台山第二登山口\n\n17:30 新竹高鐵站\n\n19:00 台北火車站西三門', '', '', 0, 'campmain15.jpg', 'campdetail43.jpg, campdetail44.jpg, campdetail45.jpg'),
(16, '奇萊南華 - 代辦申請三天兩夜新手難度非單攻', 7, 11, 3, 1, 1300, '2022-12-15', '2023-02-28', '在遙遠的中央山脈，接近濁水溪的源頭的地方，是數百年前的泰雅族、賽德克族建立家園的那塊土地\n\n奇萊位在花東縱谷的北端，是現今花蓮的古地名\n\n祂是一座豐潤而富麗的大山，散發出溫文可親的氣質，為台灣高山「十崇」的代表山岳之一\n\n著名的能高越嶺古道就是循著這條西伸支脈的南腹，從屯原蜿蜒東上\n\n他不僅有美麗的風景、高山瀑布\n\n同時也是當時霧社事件發生的所在地、和台灣唯二的東西向輸電道路之一\n\n在電影《賽德克．巴萊》引發熱潮後，這個霧社事件發生地，充滿歷史故事的迷人古道\n\n也讓更多的山友岳人們踏上了旅途，一探百年前的究竟', 'Day1\n\n07:30 台中高鐵站集合出發（早餐自理）\n(高鐵站七號出口一樓會面點4)\n\n09:30 屯原登山口\n\n12:00 雲海保線所（午餐自理）\n\n16:00 天池山莊\n\n17:30 晚餐時間（由天池山莊提供）\n\n', 'Day2\n\n02:00 起床吃早餐（由天池山莊提供）\n\n03:00 出發奇萊南華\n\n05:30 奇萊南峰\n\n08:30 南華山\n\n09:30 光被八表碑\n\n10:30 天池山莊補眠休息（午餐自理）\n\n14:00 能高瀑布\n\n17:30 晚餐（由天池山莊提供）', 'Day 3\n\n06:00 起床吃早餐（由天池山莊提供）\n\n07:00 出發\n\n11:00 雲海保線所（午餐自理）\n\n13:00 屯原登山口\n\n16:00 台中高鐵站', 0, 'campmain16.jpg', 'campdetail46.jpg, campdetail47.jpg, campdetail48.jpg'),
(17, '郡大山 - 台中接駁包車代辦申請 新手難度單攻', 5, 37, 1, 1, 1680, '2022-12-15', '2023-02-28', '位在南投線信義鄉的百岳「郡大山」是布農族郡社人 Is-bukun 的傳統領域\n\n他們在 200 年前從郡大溪流域搬遷到這片河階台地後，便快速的發展了起來\n\n很快的，這裡就形成了數百人定居的郡大社\n\n郡大山對於他們而言\n\n是孩子們的後花園、是獵人們追逐獵物的運動場、是族人們最親近的大地母親', 'Day1\n\n05:00 背包41青年旅館-台中館集合出發\n\n06:30 郡大林道0K檢查哨\n\n09:30 郡大登山口起登\n\n10:30 望鄉山\n\n11:30 郡大山北峰 \n\n12:30 郡大山登頂（午餐自理）\n\n15:30 登山口\n\n18:00 郡大林道0K檢查哨\n\n19:30 台中火車站', '', '', 0, 'campmain17.jpg', 'campdetail49.jpg, campdetail50.jpg, campdetail51.jpg'),
(18, '嘉明湖禁忌傳說 - 代辦山屋申請 嘉明湖四天三夜新手難度路線行程', 15, 51, 2, 1, 1680, '2022-12-15', '2023-02-28', '位於台東縣海端鄉的嘉明湖，是台灣第二高的高山湖泊、也是布農族的傳統領域\n\n那是個美的像是天使掉落在人間的眼淚，一樣的地方\n\n曾經共同奔赴在中央山脈的鄒族和布農族，因為獵場重疊的關係發生過多次激烈的戰爭\n\n最終，布農族的勇士們在嘉明湖展開了全力反擊、擊退了鄒族\n\n至此，他們也成為了嘉明湖最終的守護者\n\n在布農語中，嘉明湖 cidanumas buan 是「月亮的鏡子」的意思，之所以布農族人會這樣稱呼嘉明湖，都是因為在部落裡，有著這樣的一個傳說。\n\n相傳，那是在很久很久以前，天上還有兩個太陽的時代。\n\n過度炎熱的天氣讓地面上的一切彷彿都要融化了一般，草木乾枯，所有的作物、生命都奄奄一息，沒有誰能在這樣這樣嚴酷的天氣裡存活下去的。就在這個時候，一位布農族的勇士背上了弓與箭，決定要去把其中一顆太陽射下來，否則再這樣下去的話，族人們遲早都會乾枯、飢餓而亡的。他抬臂、拉滿弓，箭如迅雷般的射向了天空。\n\n後來，剩下的族人們是這麼說的。\n\n在太陽被射傷了以後，他就不再如同以往一樣的炙熱和明亮了。他從太陽變成了現在的月亮，光芒變得微弱而溫和、讓人可以靜靜地凝望。後來那顆受傷的太陽每晚都會去到cidanumas buan 看看，看看那個自己被射傷的傷口、懷念那個曾經是太陽的自己。而那一面照映月亮的鏡子──就是 cidanumas buan、就是上帝遺失在人間之藍寶石、就是天使的眼淚，嘉明湖。', 'Day1\n06:00  起床吃早餐（由向陽山屋提供）\n\n07:00  向陽山屋出發\n\n08:30  黑水塘營地休息拍照\n\n10:00   向陽嘉明湖岔路\n\n10:30   向陽大崩壁\n\n11:30   向陽山三岔路（午餐自理）\n\n13:00   向陽山（可將裝備放置於入口處輕裝上去）\n\n16:00   嘉明湖山屋\n\n17:00   晚餐（由嘉明湖山屋提供）', 'Day2\n01:30   起床\n\n02:00  早餐時間（由嘉明湖山屋提供）\n\n02:30  出發\n\n05:00  賞嘉明湖日出、合影留念\n\n09:00  三叉山\n\n12:00  嘉明湖山屋（午餐自理）\n\n17:00   晚餐（由嘉明湖山屋提供）', 'Day 3\n05:00  起床吃早餐（由嘉明湖山屋提供）\n\n06:00  嘉明湖山屋出發\n\n08:30  向陽山屋\n\n11:00   向陽遊樂區（午餐自理）\n\n16:00  池上火車站', 0, 'campmain18.jpg', 'campdetail52.jpg, campdetail53.jpg, campdetail54.jpg'),
(19, '奇萊南華 - 代辦奇萊南華山屋申請 中階難度兩天一夜行程路線', 7, 11, 2, 2, 2100, '2022-12-15', '2023-02-28', '奇萊位在花東縱谷的北端，是現今花蓮的古地名\n\n祂是一座豐潤而富麗的大山，散發出溫文可親的氣質，為台灣高山「十崇」的代表山岳之一\n\n著名的能高越嶺古道就是循著這條西伸支脈的南腹，從屯原蜿蜒東上\n\n他不僅有美麗的風景、高山瀑布\n\n同時也是當時霧社事件發生的所在地、和台灣唯二的東西向輸電道路之一\n\n在電影《賽德克．巴萊》引發熱潮後，這個霧社事件發生地，充滿歷史故事的迷人古道\n\n也讓更多的山友岳人們踏上了旅途，一探百年前的究竟', 'Day1\n\n07:30 台中高鐵站集合出發（早餐自理）\n(高鐵站七號出口一樓會面點4)\n\n09:30 屯原登山口\n\n12:00 雲海保線所（午餐自理） \n\n16:00 抵達天池山莊\n\n17:00 晚餐時間（由天池山莊提供）', 'Day2\n\n02:00 起床早餐（由天池山莊提供）\n\n03:00 出發奇萊南華\n\n05:30 奇萊南峰\n\n08:30 南華山\n\n10:00 天池山莊（09:00 - 11:00 山屋供給早午餐）\n\n16:00 屯原登山口\n\n19:30 台中高鐵站解散', '', 0, 'campmain19.jpg', 'campdetail55.jpg, campdetail56.jpg, campdetail57.jpg'),
(20, '嘉明湖 - 代辦山屋申請 嘉明湖外星人傳說三天兩夜中階難度', 15, 51, 3, 2, 2200, '2022-12-15', '2023-02-28', '你見過天使的眼淚嗎？\n\n位於台東海端鄉的嘉明湖，是台灣第二高的高山湖泊、也是布農族的傳統領域。\n\ncidanumas buan 在布農語中有著「月亮的鏡子」之意\n\n那是個美的像是天使掉落在人間的眼淚，一樣的地方\n\n那些傳說的起源親眼目睹這些古老的傳說，是開始讓我爬山的初衷\n\n若非親眼目睹\n\n你真的不會感受到被神話撼動的深刻感動', 'Day1\n11:00 池上火車站集合（午餐自理）\n\n14:30 向陽遊樂區登山口\n\n16:30 向陽山屋\n\n17:00 晚餐時間（由向陽山屋提供）', 'Day2\n\n02:00 起床早餐（由向陽山屋提供）\n\n03:00 向陽山屋出發\n\n04:00 黑水塘營地休息拍照\n\n08:00 嘉明湖避難山屋\n\n10:00 叉路口\n\n11:00 三叉山\n\n12:00 嘉明湖畔（若天氣良好，可延長在湖邊停留的時間）\n\n13:00 回程（午餐自理，行進間不便煮食） \n\n15:00 嘉明湖避難山屋', 'Day3\n\n04:00 起床早餐（由嘉明湖避難山屋提供）\n\n05:00 嘉明湖避難山屋出發\n\n06:00 向陽山登山口\n\n07:00 向陽山\n\n09:30 向陽山屋\n\n12:00 回到登山口\n\n16:00 池上車站解散', 0, 'campmain20.jpg', 'campdetail58.jpg, campdetail59.jpg, campdetail60.jpg'),
(21, '雪山主東峰 - 代辦申請上雪山 兩天兩夜中階難度非單攻', 5, 3, 2, 2, 2300, '2022-12-15', '2023-02-28', '雪山地區是世居在此的泰雅族人的獵區\n\n而他們親暱的用各種名字稱呼雪山\n\n其一，雪山東麓溪頭蕃稱為 Babo Hagai，Babo是大山、Hagai指崩塌裂開，意為本山冬季因積雪深厚而逐漸崩塌的樣子\n\n從意譯可稱「雪崩山」，音譯稱為「巴布哈蓋山」或「哈蓋山」\n\n其二，雪山西麓的北勢部族泰雅族稱雪山為 Sekoan，意為「岩壁的裂溝」，音譯「雪高翁」，後來簡稱為「雪翁山」或「雪山」', 'Day1\n\n07:00  起床早餐（由七卡山莊提供早餐）\n\n08:00  出發\n\n10:30  哭坡前\n\n11:20  東峰口\n\n11:25  雪山東峰\n\n13:00 抵達三六九山莊（午餐自理） \n\n17:30 晚餐時間', 'Day2\n\n02:00  起床早餐（由三六九山莊提供早餐）\n\n03:00 三六九山莊輕裝出發\n\n04:00 7.8K黑森林\n\n05:30 雪山圈谷\n\n06:30 雪山主峰\n\n08:00  雪山圈谷\n\n09:30 黑森林\n\n10:30 返回三六九山莊（午餐自理） \n\n12:30 雪山東峰\n\n13:30 七卡山莊\n\n19:30  台北火車站解散', '', 0, 'campmain21.jpg', 'campdetail61.jpg, campdetail62.jpg, campdetail63.jpg'),
(22, '北大武山行程 - 代辦申請北大武登山行程 三天兩夜中階難度非單攻', 12, 7, 3, 2, 2300, '2022-12-15', '2023-02-28', '位於屏東縣泰武鄉的「北大武山」標高 3092 公尺\n\n有著「南台灣屏障」、「屋脊橫樑」之稱\n\n祂是排灣族的聖山，也是與玉山、雪山、南湖大山、秀姑巒山合稱的台灣「五嶽」之一\n\n排灣族人們尊敬的稱祂 kavulungan、眾山之母\n\n他們相信 kavulungan 就是他們祖先靈魂歸宿之地，是神聖不可侵犯的領域\n\n那是他們生命的搖籃、文化的紐帶\n\n而途中美麗的喜多麗斷崖夕陽雲海，更是讓山友岳人們讓人不辭辛勞的攀登尋訪', 'Day1\n\n07:30  左營高鐵站四樓接送區集合\n\n09:00 北大武新登山口\n\n09:30 整裝出發\n\n12:00 北大武舊登山口（午餐自理） \n\n16:00 檜谷山莊\n\n17:00 晚餐時間（由檜谷山莊提供）', 'Day2\n\n02:00 起床早餐（由檜谷山莊提供）\n\n02:30 檜谷山莊出發\n\n03:50 最後水源\n\n05:10 稜線\n\n06:10 大武祠\n\n07:30 北大武山\n\n08:30 離開\n\n09:30 大武祠\n\n10:30 稜線\n\n12:30 檜谷山莊（午餐自理） \n\n16:00 晚餐時間（由檜谷山莊提供）', 'Day3\n\n05:30 起床早餐\n\n06:30 檜谷山莊出發\n\n09:30 登山口\n\n11:30 愛宿園停車場整理裝備\n\n12:00 發車（午餐自理） \n\n15:00 左營高鐵站解散', 0, 'campmain22.jpg', 'campdetail64.jpg, campdetail65.jpg, campdetail66.jpg'),
(23, '阿溪縱走2022開團 - 報名三天兩夜中階難度', 7, 57, 3, 2, 2300, '2022-12-15', '2023-02-28', '阿溪縱走在許多人耳中聽來可能陌生\n\n但他可是民國六、七十年代救國團的最最著名健行路線之一\n\n那是一段被時間奪走的路線、那是一個失落的鐵路歷史\n\n自九二一大地震後沈寂的阿溪縱走，隨後又因為一夕爆紅的「水漾森林」讓山友們重新開闢出一條從阿里山下到水漾森林的替代路線\n\n豐富的地貌、神木森林、高空鐵橋、鐵路隧道等美麗的森林鐵路步道\n\n就這樣以嶄新的姿態穿越民國六、七十年代救國團的目光\n\n再現風華', 'Day1\n\n07:30  台中高鐵站集合（早餐自理）\n\n10:30  阿里山正式出發\n\n13:00 塔山車站（午餐自理） \n\n15:30 廢棄眠月車站\n\n16:30 石猴車站扎營\n\n17:00 晚餐時間', 'Day2\n\n05:30 起床早餐\n\n06:00 石猴車站出發\n\n13:30 眠月神木（午餐自理） \n\n15:00 水漾森林扎營\n\n16:30  晚餐時間', 'Day3\n\n06:00 起床早餐\n\n08:00 水漾森林出發\n\n14:30 仁亭登山口（午餐自理） \n\n15:00 杉林溪停車場\n\n19:00   台中高鐵站解散', 0, 'campmain23.jpg', 'campdetail67.jpg, campdetail68.jpg, campdetail69.jpg'),
(24, '戒茂斯路線上嘉明湖 - 四天三夜新手難度免抽山屋', 15, 51, 3, 2, 2300, '2022-12-15', '2023-02-28', '位在台東縣海端鄉的嘉明湖，是台灣湖泊中第二高的高山湖泊，也是布農族的傳統領域，那是美的像是天使掉落在人間的眼淚一樣的地方在布農語中，嘉明湖 cidanumas buan 是「月亮的鏡子」的意思\n\n那是布農族的傳統獵境\n\n清澈見底的溪底營地，遍地綠茵的排球場、足球場、高爾夫球場營地總讓人更想一探背後神話故事的究竟', 'Day1 \n\n06:00 起床早餐\n07:00 新武呂溪營地出發\n11:00 抵達足球場營地\n\n15:30 抵達獵寮營地\n\n16:30 晚餐時間\n\n17:00 扎營獵寮營地\n\n\n', 'Day2\n\n03:00 起床早餐\n04:00 獵寮營地出發\n06:00 嘉明湖欣賞日出\n07:30 三叉山\n\n08:00 出發返程\n\n10:00 獵寮營地出發\n\n17:30 扎營新武呂溪營地\n\n18:00 晚餐時間', 'Day3\n\n06:00 起床早餐\n07:00 新武呂溪營地出發\n\n11:00 戒茂斯山前峰\n\n12:00 戒茂斯山登山口\n\n16:00 池上火車站', 0, 'campmain24.jpg', 'campdetail70.jpg, campdetail71.jpg, campdetail72.jpg'),
(25, '雪山下翠池 - 代辦申請雪山下翠池路線 三天兩夜中階難度非單攻', 5, 3, 3, 2, 2560, '2022-12-15', '2023-02-28', '座落在台中與苗栗間的五嶽之一「雪山」，是一座海拔高度3886公尺、僅次於玉山主峰的台灣第二高山\n\n他傲然立於山巔、環顧台灣的大半山林\n\n放眼望去從腳下延伸出的六大稜脈，有種觸目驚心的美\n\n斷崖崩稜被綠意點綴、蜿蜒巨嶺漫向大霸尖山\n\n巨大的冰河凹谷更是大自然筆下的鬼斧神工之作\n\n雪山的浩瀚與峻秀是多麼的難以一言蔽之\n\n何其有幸，我們才能擁有像雪山這樣的獨特山岳', 'Day1\n\n07:00  起床早餐（由七卡山莊提供早餐）\n08:00  出發\n10:30  哭坡前\n\n11:20  東峰口\n\n11:25  雪山東峰\n\n13:00 抵達三六九山莊（午餐自理） \n\n17:30 晚餐時間\n\n\n\n', 'Day2\n\n03:00 三六九山莊輕裝出發\n\n04:00 7.8K黑森林\n\n05:30 雪山圈谷\n\n06:30 雪山主峰\n\n07:00 出發至翠池\n\n08:30 翠池\n\n09:00 返回三六九山莊\n\n10:30 雪山主峰\n\n11:30 雪山圈谷\n\n12:00 9K黑森林（午餐自理）\n\n15:00 三六九山莊\n\n17:30 晚餐時間', 'Day3\n\n06:00 起床早餐\n\n07:00 三六九山莊出發\n\n08:30 雪山東峰岔路口\n\n09:30 哭坡觀景台\n\n11:30 七卡山莊（午餐自理）\n\n13:00 雪山登山口\n\n18:00 台北車站西三門解散', 0, 'campmain25.jpg', 'campdetail73.jpg, campdetail74.jpg, campdetail75.jpg'),
(26, '玉山主峰 - 代辦申請兩天一夜中階難度非單攻', 7, 2, 2, 2, 2560, '2022-12-15', '2023-02-28', '台灣人的必做清單，你完成了幾項呢？\n\n相傳在望鄉部落裡的布農族人們稱「玉山」為 Tongku-saveq ，那有著群山之山的含義、更是布農族眼中神聖的聖山「東谷沙飛」\n\n位於台灣的中心位置的玉山為台灣群山之首\n\n在百岳中排名第一、是東北亞的最高峰，每年都吸引了無數的登山客前來攀登\n\n近年來更成為台灣人一生必須完成的三件事之一\n\n而你，完成了嗎？', 'Day1\n\n06:00 嘉義火車站外集合\n08:10 檢查哨\n\n08:30 塔塔加登山口\n\n09:30 孟祿亭\n\n11:30 西峰下觀景台（午餐自理）\n\n15:00 抵達排雲山莊\n\n16:30 晚餐時間（由排雲山莊提供）', 'Day2\n\n03:00 起床早餐（由排雲山莊提供）\n\n03:30 輕裝前往玉山主峰\n\n04:30 主南岔路\n\n05:30 主北岔路\n\n06:00 玉山主峰\n\n08:00 排雲山莊（由排雲山莊提供早午餐）\n\n14:00 塔塔加登山口（午餐自理） \n\n18:00 嘉義火車站解散', '', 0, 'campmain26.jpg', 'campdetail76.jpg, campdetail77.jpg, campdetail78.jpg'),
(27, '畢羊縱走2022行程 - 三天兩夜中階難度路線', 14, 10, 3, 2, 2560, '2022-12-15', '2023-02-28', '羊頭山、畢祿山是百岳行程「中橫四辣」中人稱的小辣和中辣\n\n也因此，傳說中的「畢羊縱走」以此類推就是「老闆我要點一碗麻辣拉麵加辣！」的辣上加辣行程。\n\n途中我們會經過景色絕佳、但又惡名昭彰的鋸齒連峰\n\n在行程的最後還要陡下1000多米的落差才能回到慈恩登山口，是非常需要腿力的艱鉅考驗。\n\n切記切記！此行程需要有相當的體能和腳力才能完成挑戰，新手菜雞請勿輕易嘗試啊！', 'Day 1\n10:00 台中烏日高鐵站集合\n11:30 820林道0K（午餐自理）\n12:00 起登 \n15:00 林道8.4K紮營\n', 'Day 2\n04:00 起床用早餐（協作提供）\n05:00 林道8.4K起登\n07:00 拉繩岩壁\n09:00 稜線三叉路口\n09:05 畢祿山\n10:30 畢祿營地\n12:30 鋸山\n15:00 鋸東山屋（營地）', 'Day 3\n05:00 起床用早餐（協作提供）\n06:00 整裝出發\n07:00 鋸山東峰\n07:30 三叉路口\n08:30 羊頭山\n13:00 慈恩羊頭山登山口\n17:30 台中烏日高鐵站解散', 0, 'campmain27.jpg', 'campdetail79.jpg, campdetail80.jpg, campdetail81.jpg'),
(28, '雪山東峰 - 代辦申請上雪山東峰 兩天一夜初階難度非單攻', 5, 3, 2, 2, 2560, '2022-12-15', '2023-02-28', '雪山地區是世居在此的泰雅族人的獵區\n而他們親暱的用各種名字稱呼雪山\n\n其一，雪山東麓溪頭蕃稱為 Babo Hagai，Babo是大山、Hagai指崩塌裂開，意為本山冬季因積雪深厚而逐漸崩塌的樣子\n\n從意譯可稱「雪崩山」，音譯稱為「巴布哈蓋山」或「哈蓋山」\n\n其二，雪山西麓的北勢部族泰雅族稱雪山為 Sekoan，意為「岩壁的裂溝」，音譯「雪高翁」，後來簡稱為「雪翁山」或「雪山」\n\n雪山主峰與東峰位於台中市和平區與苗栗泰安鄉的交界，由於鄰近中橫公路、開發較早、路徑清楚、指標和山莊等設施完善，因此在攀登雪山主峰的眾多路線之中，這條沿著東支稜上行、里程最短、難度最低的「雪東線」成為熱門的大眾化高山路線。\n雪山東峰矗立在距離登山口大約五公里的地方，只要通過哭坡的考驗，便能登上展望良好的山頂，武陵四秀、南湖中央尖、合歡群峰等名山盡收眼底，若申請不到369山莊或百岳初體驗的人，當日輕裝往返東峰是極佳的選擇。', 'Day1\n09:00 台北火車站西三門集合出發\n13:00 雪山登山口管制站 (午餐自理)\n13:30 整裝起登\n15:30 七卡山莊\n17:00 晚餐', 'Day2\n05:30 早餐\n06:00 七卡山莊起登\n11:00 雪山東峰（午餐自理）\n15:00 七卡山莊\n16:00 雪山登山口管制站\n20:30 台北火車站西三門解散', '', 0, 'campmain28.jpg', 'campdetail82.jpg, campdetail83.jpg, campdetail84.jpg'),
(29, '奇萊主北 - 天氣多變的奇萊主北 高階難度路線三天兩夜非單攻', 7, 11, 3, 3, 1980, '2022-12-15', '2023-02-28', '你曾到過傳說中的黑色奇萊嗎？\n\n從合歡山遠眺位在南投與花蓮之間的奇萊山時，背著光的山脊顯得陰暗神祕\n\n而他錯綜複雜、變幻莫測的氣候更讓山嶺彷彿蒙上了一層神秘的輕紗\n\n險峻的地勢、頻傳的神秘故事使得「黑色奇萊」聲名遠播\n\n隨著國家公園的成立，越來越多人踏足奇萊、揭開他神祕的面紗\n\n巍峨的奇萊，就這樣成了人們流連忘返、一再拜訪的熱門山區', 'Day1\n\n07:30 台中高鐵站集合出發(早餐自理)\n(高鐵站七號出口一樓會面點4)\n\n11:00 奇萊山登山口 \n\n12:00 中餐時間（午餐自理）\n\n13:00 黑水塘\n\n16:00 成功山屋\n\n17:00 晚餐時間（由成功山屋提供）', 'Day2\n\n02:30 起床早餐（由成功山屋提供）\n\n03:30 輕裝出發\n\n05:00 主北岔路口 \n\n08:00 奇萊北峰，休息拍照 \n\n09:30 稜線山屋\n\n12:30 主峰登山口（午餐自理）\n\n13:30 奇萊主峰，休息拍照\n\n14:00 主峰登山口 \n\n15:30 主北岔路口\n\n17:00 成功山屋\n\n18:00 晚餐時間（由成功山屋提供）', 'Day3\n\n05:00 起床早餐（由成功山屋提供）\n\n06:30 重裝出發\n\n08:30 黑水塘\n\n11:00 抵達奇萊山登山口（午餐自理）\n\n16:00 台中烏日高鐵站解散', 0, 'campmain29.jpg', 'campdetail85.jpg, campdetail86.jpg, campdetail87.jpg'),
(30, '南湖大山 - 囊收四座百岳路線 南湖大山四天三夜高階難度非單攻', 13, 36, 3, 3, 1880, '2022-12-15', '2023-02-28', '你曾經去到過中央山脈的北段最高峰、同時也是台灣的帝王之山，南湖大山嗎？\n\n那裡的風景，美的就像童話裡的故事場景廣闊的冰河圈谷地形中、佇立著一棟山屋，沿途的茂密森林、鑲了金邊的皎潔雲朵\n\n在壯闊龐大、端寧深厚的延綿山脊前，自我顯得多的的渺小、就連煩惱都變得微不足道步上峰頂的那一刻，除了謙卑、再無其他', 'Day1\n\n06:30 起床早餐（由雲稜山莊提供）\n\n07:00 出發南湖圈谷\n\n08:30 稜線\n\n09:40 審馬陣山登山口\n\n09:45 審馬陣山\n\n12:30 北山岔路口（午餐自理）\n\n12:50 南湖北山\n\n13:30 北山岔路口\n\n15:00 南湖北峰\n\n15:45 南湖山屋\n\n16:30 晚餐時間（由南湖山屋提供）', 'Day2\n\n03:00  起床早餐（由南湖山屋提供）\n\n04:00  整裝出發\n\n06:30  南湖大山主峰\n\n08:30  南湖東峰\n\n10:00  南湖山屋\n\n11:00  南湖北峰（午餐自理）\n\n13:30  南湖北山岔路口\n\n16:30  雲稜山莊\n\n17:00 晚餐時間（由雲稜山莊提供）', 'Day3\n\n05:00  起床早餐\n\n06:00  整裝出發\n\n07:00  木杆鞍部\n\n09:45  多加屯山\n\n12:30  登山口（午餐自理）\n\n14:00  勝光登山口\n\n18:00  台北車站解散', 0, 'campmain30.jpg', 'campdetail88.jpg, campdetail89.jpg, campdetail90.jpg'),
(31, '戒茂斯路線上嘉明湖 - 三天兩夜高階難度行程免抽山屋', 15, 51, 3, 3, 1980, '2022-12-15', '2023-02-28', '位在台東縣海端鄉的嘉明湖，是台灣湖泊中第二高的高山湖泊，也是布農族的傳統領域，那是美的像是天使掉落在人間的眼淚一樣的地方\n在過去，共同奔馳在中央山脈的鄒族和布農族因為獵場重疊的關係，大大小小的發生了多次激烈的戰爭\n\n最終，布農族在嘉明湖擊退了鄒族，成為了嘉明湖的守護者\n\n途經戒茂斯山、清澈見底的溪底營地、遍地綠茵的排球場、足球場、高爾夫球場營地等\n\n就讓我們登上山林\n\n一同體驗身處與歷史於神話間隙的真切的感動吧', 'Day1 \n\n11:00 池上火車站集合（午餐自理）\n\n13:30 戒茂斯登山口\n14:10 戒茂斯山前峰\n\n16:10 戒茂斯山\n\n17:30 扎營新武呂溪營地\n\n18:00 晚餐時間', 'Day2\n\n06:00 起床早餐\n\n07:00 新武呂溪營地出發\n\n11:00 抵達足球場營地\n\n15:30 抵達獵寮營地\n\n17:00 晚餐時間\n\n18:00 扎營獵寮營地', 'Day3\n\n03:00 起床早餐\n\n04:00 獵寮營地出發\n\n06:00 嘉明湖欣賞日出\n\n07:00 三叉山\n\n09:00 嘉明湖山屋\n\n11:00 三岔路（若未於11:00前到達，則全隊放棄登向陽山）\n\n11:30 向陽山（視個人體力登頂）\n\n12:00 三岔路\n\n14:30 向陽山屋\n\n17:00 向陽遊樂區\n\n19:30 池上火車站解散', 0, 'campmain31.jpg', 'campdetail91.jpg, campdetail92.jpg, campdetail93.jpg'),
(32, '大小霸尖山行程 - 代辦大小霸山屋申請 三天三夜高階難度路線行程', 7, 83, 3, 3, 2590, '2022-12-15', '2023-02-28', '你知道哪座山脈，是擁有全台灣中最古老、最堅硬的沈積岩的山嗎？\n\n座落在新竹縣尖石鄉，與中央尖山、達芬尖山合稱「三尖」\n\n被人們稱作世紀奇峰的大霸尖山，帶著千萬年前的海洋記憶，隨著地殼的造山運動，將海底生活過的痕跡，高高的推向湛藍的天空\n\n那是是賽夏族和泰雅族口耳相傳的聖山\n\n是他們的根源、是他們生命的由來', 'Day1\n\n07:30 檢查哨口\n\n13:00 馬達拉溪登山口（午餐自理） \n\n17:30 九九山莊\n\n18:00 晚餐時間（由九九山莊提供）', 'Day2\n\n02:30 起床早餐（由九九山莊提供）\n\n03:00 出發\n\n06:00 中霸山屋\n\n07:30 世紀奇峰大霸尖山底\n\n09:00 小霸尖山（午餐自理） \n\n12:00 伊澤山\n\n14:00 加利山\n\n16:00 九九山莊\n\n17:30 晚餐時間（由九九山莊提供）', 'Day3\n\n03:30 起床早餐\n\n04:00 出發\n\n06:00 馬達拉溪登山口 \n\n12:00 觀霧遊樂區檢查哨\n\n16:00 新竹高鐵站解散', 0, 'campmain32.jpg', 'campdetail94.jpg, campdetail95.jpg, campdetail96.jpg'),
(33, '武陵四秀 - 春夏秋季節都適合登山的武陵四秀 三天兩夜高階難度行程非單攻', 5, 12, 3, 3, 2590, '2022-12-15', '2023-02-28', '你聽過百岳四胞胎，武陵四秀嗎？\n\n他們的險峻凌厲、崢嶸秀麗\n\n唯有在親身的步過、甚至是要手腳並用的走過那些奇岩異樹、斷崖山徑、急陡下的地形\n\n經過四秀中的品田、池有、桃山、喀拉業這四座百岳後\n\n才能體驗出那種峰秀於林、沒有筆墨能形容的仙人所在之地\n\n究竟是如何的清雅、如何的秀雅', 'Day1\n05:00吃早餐（由隆達民宿提供）\n06:00 南山部落出發\n07:00 抵達桃山登山口岔路\n13:00 三岔營地（午餐自理）\n14:00 池有山登山口（輕裝登池有山）\n15:00 回登山口揹重裝前往新達山屋\n16:00 抵達新達山屋\n18:00 晚餐時間（由新達山屋提供）', 'Day2\n04:00 起床早餐（由新達山屋提供） \n05:00 輕裝前往品田山\n9:30 新達山屋\n12:00 三叉營地午餐（午餐自理）\n17:30 桃山山屋\n18:00 晚餐時間（由桃山山屋提供）', 'Day3\n04:00 起床早餐（由桃山山屋提供）\n05:00輕裝前往喀拉業山\n08:30 桃山山屋\n09:00 桃山\n12:00 停機坪午餐（午餐自理）\n14:00 黑水塘\n15:00 武陵吊橋\n22:00 台北火車站西三門賦歸', 0, 'campmain33.jpg', 'campdetail97.jpg, campdetail98.jpg, campdetail99.jpg'),
(34, '白姑大山 - 台中接駁兩天一夜高階難度沒有山屋', 7, 5, 2, 3, 2590, '2022-12-15', '2023-02-28', '白姑大山名列百岳「十翠」之一，同時也是中橫四辣裡頭的特辣行程。\n\n山勢雄偉、山頂展望絕佳的白姑大山，因為難以抵達的路程讓他被人們封為「特辣」的山巒。\n\n可即便有著令人卻步的超過1300公尺的垂直落差和無止盡陡坡，山頂北眺雪山西稜，東望南湖中央尖、合歡群峰、奇萊連峰、能高安東軍，南展玉山和甘卓萬等絕佳的群山展望，卻更是誘人前往。\n\n現在就讓我們跟著台灣368的腳步，動身嚐一嚐傳說中的特辣山巒吧。', 'Day1\n\n07:30 台中高鐵站集合出發（早餐自理）\n(高鐵站七號出口一樓會面點4)\n\n10:30 白姑大山登山口 \n\n13:30 三錐山（午餐自理） \n\n15:00 松林營地紮營', 'Day2\n\n02:00 起床早餐（由協作提供）\n\n03:00 松林營地起登\n\n03:30 司晏池\n\n04:30 白姑大山東南峰\n\n05:30 吉他營地 \n\n07:00 一線天岩壁\n\n09:30 白姑大山\n\n13:00 吉他營地\n\n15:00 司晏池\n\n19:00 白姑大山登山口\n\n22:00 台中高鐵站解散', '', 0, 'campmain34.jpg', 'campdetail100.jpg, campdetail101.jpg, campdetail102.jpg'),
(35, '畢羊縱走2022行程 - 兩天兩夜高階難度路線', 14, 10, 2, 3, 2590, '2022-12-15', '2023-02-28', '畢祿山、羊頭山是百岳行程「中橫四辣」中的小辣和中辣\n\n也因此兩天兩夜的行程安排，絕對就是傳說中的「老闆我要點一碗麻辣拉麵加辣！」辣上加辣行程無誤了\n\n途中我們會經過景色絕佳、但又惡名昭彰的鋸齒連峰\n\n在行程的最後還要陡下1000多米的落差才能回到慈恩登山口，是非常需要腿力的艱鉅考驗。\n\n切記切記！此行程需要有相當的體能和腳力才能完成挑戰，新手菜雞請勿輕易嘗試啊！', 'Day1\n04:30早餐（民宿提供）\n05:00上車出發\n07:40 慈恩隧道起登\n13:30 三叉路口放重裝換輕裝\n14:20 羊頭山 \n15:00 三叉路口背重裝\n15:30 鋸山東峰\n16:10 營地 宿\n17:00-17:30 晚餐', 'Day2\n04:00 早餐\n05:00 起登\n08:00 鋸山\n10:00 畢祿營地\n10:30 三岔 放重裝 \n10:35 畢祿山\n11:00 回程三岔\n12:00 垂直岩壁\n13:20 8.4k登山口\n17:10 820林道登山口\n21:40 台中高鐵', '', 0, 'campmain35.jpg', 'campdetail103.jpg, campdetail104.jpg, campdetail105.jpg'),
(36, '金面山北部一日健行', 2, 199, 1, 4, 450, '2022-11-15', '2022-12-16', '金面山為五指山系且山路中段可接小百岳之一的大崙頭尾山，這座山地質中的安山砂岩含有石英，因此當太陽照射石遠望山頂閃閃發光，當地人便稱之為金面山。金面山位於內湖金龍產業道路西邊，因從碧山巖方向看過來，山頂巨石形貌有如鳥嘴般尖銳，因此又名剪刀石山，曾是清代時期臺北採石場與石堡瞭望台，如今還留有開採痕跡，在我們回程時也有經過此歷史遺跡。', 'Day1\n07:30台北車站集合出發\n\n10:00西湖站集合\n\n12:00 美景野餐 (午餐需自行揹負與準備)\n\n14:30 山上人家休閒農場 享用悠閒午茶時光(園內飲食需自費)\n\n19:00抵達台北車站', '', '', 50, 'campmain36.jpg', 'campdetail106.jpg, campdetail107.jpg, campdetail108.jpg'),
(37, '新北第一高峰 魔幻樹之國 塔曼山 一日健行', 2, 75, 1, 4, 450, '2022-11-15', '2023-02-28', '塔曼山位於新北烏來&桃園復興的交界，為新北市第一高峰，海拔2130公尺，沿路茂密林蔭，奇特樹形，巨木參天、倒木，很像走路阿凡達的異世界中，跟著好野的腳步前往魔幻的樹之國，來趟與森林的小約會吧 !', 'Day1\n07:00 台北火車站\n\n09:50 塔曼山登山步道登山口\n\n10:00『塔曼山登山步道』\n\n12:00 『午餐享用登山餐盒』\n\n16:00 預計返抵登山口\n\n18:30 抵達台北火車站', '', '', 40, 'campmain37.jpg', 'campdetail109.jpg, campdetail110.jpg, campdetail111.jpg'),
(38, '觀音山樂齡一日遊', 2, 206, 1, 4, 450, '2022-11-15', '2023-02-28', '觀音山屬大屯火山群，火山噴發形成十八連峰，宛如一尊仰躺朝天觀音像因而得名，最高峰硬漢嶺海拔616公尺，擁有360度環狀視野，可眺望大屯山群峰、淡水河口、關渡平原等。每年秋季成群猛禽飛往溫暖南方度冬，春天再北返繁殖地，位於淡水河左岸的觀音山，因特有的壯麗景緻與自然生態成為臺灣猛禽往返遷徒的必經路徑，每年四、五月間觀音山區約可見到十餘種猛禽，其中又以赤腹鷹、灰面鵟鷹、鳳頭蒼鷹、大冠鷲等「觀音四秀」為多。', 'Day1\n06:30 台北車站集合出發\n08:00 觀音山遊客中心\n\n10:00 硬漢嶺\n10:30 停車場，整裝\n11:00 觀音山猛禽展示館\n15:00 林梢步道\n15:30 凌雲寺\n18:00 旗竿湖農場\n21:00 抵達台北', '', '', 35, 'campmain38.jpg', 'campdetail112.jpg, campdetail113.jpg, campdetail114.jpg'),
(39, '加里山柳杉林一日登山健行', 4, 63, 1, 4, 450, '2022-11-15', '2023-02-28', '加里山步道沿途多為柳杉人工造林及闊葉林，有豐富的動植物生態。沿途可見伐木時期的台車鐵軌，見證當年興盛的林業。山頂一等三角點，視野遼闊，可遠眺氣勢磅礡的雪山聖稜線和鄰近的鹿場大山。盛產台灣特有一葉蘭，每年3、4月總吸引許多登山客尋芳賞花。', 'Day1\n06:30 台北車站集合\n08:30 苗栗加里山登山口停車場\n09:00 登山口出發\n,加里山與大坪山岔口路,避難山屋岔口\n12:30 加里山三角點(2220M,一等三角點)\n17:00 返回登山口\n18:30 車上享用餐盒\n20:30 台北車站', '', '', 50, 'campmain39.jpg', 'campdetail115.jpg, campdetail116.jpg, campdetail117.jpg'),
(40, '鐵扇公主苗栗火炎山一日遊', 1, 288, 1, 4, 500, '2022-11-15', '2023-02-28', '近幾年來成為網紅熱門拍照打卡景點的火炎山，標高602公尺，位於三義鄉和苑裡鎮的交界，南臨大安溪。因土質鬆散，長年經風吹雨刷，植被無法生長，因此造就了遠望如絢爛的火焰，氣勢奔騰，而已『火炎山』著稱。', 'Day1\n06:40 台北車站出發\n09:00 抵達登山口 \n09:30 火炎山出發\n10:00 欣賞惡地景觀\n11:00 金色連峰映眼簾\n11:30 登頂(午餐敬請自理)\n12:30 森林浴\n➜ 卓蘭大峽谷\n➜ 依依不捨回程\n19:00 抵達台北車站', '', '', 40, 'campmain40.jpg', 'campdetail118.jpg, campdetail119.jpg, campdetail120.jpg');

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `campaign`
--
ALTER TABLE `campaign`
  ADD PRIMARY KEY (`sid`);

--
-- 在傾印的資料表使用自動遞增(AUTO_INCREMENT)
--

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `campaign`
--
ALTER TABLE `campaign`
  MODIFY `sid` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- 已傾印資料表的限制式
--

--
-- 資料表的限制式 `campaign`
--
ALTER TABLE `campaign`
  ADD CONSTRAINT `campaign_ibfk_1` FOREIGN KEY (`location_sid`) REFERENCES `location` (`sid`),
  ADD CONSTRAINT `campaign_ibfk_2` FOREIGN KEY (`campaign_days_sid`) REFERENCES `campaign_days` (`campday_sid`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
