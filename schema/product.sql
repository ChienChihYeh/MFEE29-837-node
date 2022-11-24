-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- 主機： 127.0.0.1
-- 產生時間： 2022-11-23 18:48:25
-- 伺服器版本： 10.5.17-MariaDB
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
-- 資料表結構 `product`
--
DROP TABLE IF EXISTS product;

CREATE TABLE `product` (
  `product_sid` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_category_sid` int(11) NOT NULL,
  `brand_sid` int(11) NOT NULL,
  `product_price` int(11) NOT NULL,
  `product_inventory` int(11) NOT NULL,
  `product_img` varchar(255) NOT NULL,
  `product_imgs` varchar(255) NOT NULL,
  `product_spec` varchar(255) NOT NULL,
  `product_feature` varchar(255) NOT NULL,
  `size` varchar(20) DEFAULT NULL,
  `proof` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 傾印資料表的資料 `product`
--

INSERT INTO `product` (`product_sid`, `product_name`, `product_category_sid`, `brand_sid`, `product_price`, `product_inventory`, `product_img`, `product_imgs`, `product_spec`, `product_feature`, `size`, `proof`) VALUES
(1, 'Arcteryx 始祖鳥 Beta LT  Gore Tex登山雨衣/風雨衣/女款 鐵克諾紅 Techno', 10, 7, 3699, 20, 'M84312469_big4.jpg', 'M84312469_big4.jpg,M84312469_big3.jpg,M84312469_big2.jpg,M84312469_big1.jpg', 'Arcteryx 始祖鳥 Beta LT 女款 Gore Tex登山雨衣/風雨衣 29458\r\n材質：3L tricot技術N40p-X GORE-TEX材質\r\n重量：350g\r\n符合bluesign標準的材料', '透氣的GORE-TEX材質提供全面抗候防護\r\n可調整、可兼容頭盔StormHood™兜帽提供防護且不遮擋視線\r\nWaterTight™抗水主拉鍊\r\n雙WaterTight™抗水拉鍊插手口袋，配有RS™拉鍊頭\r\n腋下拉鍊以便透氣\r\nWaterTight™抗水主拉鍊\r\n兩個可調節的下擺抽繩，可防止寒氣入侵\r\n可調式袖口 ', 'S', '防潑水'),
(2, 'Arcteryx 始祖鳥 Beta LT  Gore Tex登山雨衣/風雨衣/女款 鐵克諾紅 Techno', 10, 7, 3699, 20, 'M84312469_big4.jpg', 'M84312469_big4.jpg,M84312469_big3.jpg,M84312469_big2.jpg,M84312469_big1.jpg', 'Arcteryx 始祖鳥 Beta LT 女款 Gore Tex登山雨衣/風雨衣 29458\r\n材質：3L tricot技術N40p-X GORE-TEX材質\r\n重量：350g\r\n符合bluesign標準的材料', '透氣的GORE-TEX材質提供全面抗候防護\r\n可調整、可兼容頭盔StormHood™兜帽提供防護且不遮擋視線\r\nWaterTight™抗水主拉鍊\r\n雙WaterTight™抗水拉鍊插手口袋，配有RS™拉鍊頭\r\n腋下拉鍊以便透氣\r\nWaterTight™抗水主拉鍊\r\n兩個可調節的下擺抽繩，可防止寒氣入侵\r\n可調式袖口 ', 'M', ''),
(3, 'Arcteryx 始祖鳥 Beta LT  Gore Tex登山雨衣/風雨衣/女款 鐵克諾紅 Techno', 10, 7, 3699, 20, 'M84312469_big4.jpg', 'M84312469_big4.jpg,M84312469_big3.jpg,M84312469_big2.jpg,M84312469_big1.jpg', 'Arcteryx 始祖鳥 Beta LT 女款 Gore Tex登山雨衣/風雨衣 29458\r\n材質：3L tricot技術N40p-X GORE-TEX材質\r\n重量：350g\r\n符合bluesign標準的材料', '透氣的GORE-TEX材質提供全面抗候防護\r\n可調整、可兼容頭盔StormHood™兜帽提供防護且不遮擋視線\r\nWaterTight™抗水主拉鍊\r\n雙WaterTight™抗水拉鍊插手口袋，配有RS™拉鍊頭\r\n腋下拉鍊以便透氣\r\nWaterTight™抗水主拉鍊\r\n兩個可調節的下擺抽繩，可防止寒氣入侵\r\n可調式袖口 ', 'L', ''),
(4, 'Arcteryx 始祖鳥 Beta LT  Gore Tex登山雨衣/風雨衣/女款 鐵克諾紅 Techno', 10, 7, 3699, 20, 'M84312469_big4.jpg', 'M84312469_big4.jpg,M84312469_big3.jpg,M84312469_big2.jpg,M84312469_big1.jpg', 'Arcteryx 始祖鳥 Beta LT 女款 Gore Tex登山雨衣/風雨衣 29458\r\n材質：3L tricot技術N40p-X GORE-TEX材質\r\n重量：350g\r\n符合bluesign標準的材料', '透氣的GORE-TEX材質提供全面抗候防護\r\n可調整、可兼容頭盔StormHood™兜帽提供防護且不遮擋視線\r\nWaterTight™抗水主拉鍊\r\n雙WaterTight™抗水拉鍊插手口袋，配有RS™拉鍊頭\r\n腋下拉鍊以便透氣\r\nWaterTight™抗水主拉鍊\r\n兩個可調節的下擺抽繩，可防止寒氣入侵\r\n可調式袖口 ', 'L', '防水'),
(5, 'Arcteryx 始祖鳥 Beta LT  Gore Tex登山雨衣/風雨衣/女款 鐵克諾紅 Techno', 10, 7, 3699, 20, 'M84312469_big4.jpg', 'M84312469_big4.jpg,M84312469_big3.jpg,M84312469_big2.jpg,M84312469_big1.jpg', 'Arcteryx 始祖鳥 Beta LT 女款 Gore Tex登山雨衣/風雨衣 29458\r\n材質：3L tricot技術N40p-X GORE-TEX材質\r\n重量：350g\r\n符合bluesign標準的材料', '透氣的GORE-TEX材質提供全面抗候防護\r\n可調整、可兼容頭盔StormHood™兜帽提供防護且不遮擋視線\r\nWaterTight™抗水主拉鍊\r\n雙WaterTight™抗水拉鍊插手口袋，配有RS™拉鍊頭\r\n腋下拉鍊以便透氣\r\nWaterTight™抗水主拉鍊\r\n兩個可調節的下擺抽繩，可防止寒氣入侵\r\n可調式袖口 ', 'L', ''),
(6, '777777777777777', 10, 1, 3699, 20, 'M84312469_big4.jpg', 'M84312469_big4.jpg,M84312469_big3.jpg,M84312469_big2.jpg,M84312469_big1.jpg', '5555555555555', '555', 'L', ''),
(7, '男 Gamma LT 軟殼外套', 9, 0, 6999, 20, 'M84312469_big4.jpg', 'M84312469_big4.jpg,M84312469_big3.jpg,M84312469_big2.jpg,M84312469_big1.jpg', '【剪裁】\r\n標準剪裁，衣長至臀部\r\n後背長度：73.5cm/28.9in，落尾下擺\r\n\r\n【材質】\r\nWee Burly 雙層編織面料- 56%尼龍、34%聚酯纖維、10% 彈性纖維\r\n\r\n【永續發展】\r\n包含符合bluesign 標準的材料', '耐磨而輕薄的軟殼外套，防風擋雨，透氣舒適富彈性\r\n可調式袖口\r\n•採用輕量的Wee Burly™雙層編織面料，外層耐磨，內裡舒適\r\n•領子提供抗候保護\r\n•全長帶擋風片的Vislon No Slip Zip™主拉鍊，可防止拉鍊自動打開\r\n•雙拉鍊插手口袋，一個內側熱壓胸袋\r\n•彈性袖口\r\n•可調下擺抽繩', 'S', ''),
(8, '男 Gamma LT 軟殼外套', 9, 0, 6999, 20, 'M84312469_big4.jpg', 'M84312469_big4.jpg,M84312469_big3.jpg,M84312469_big2.jpg,M84312469_big1.jpg', '【剪裁】\r\n標準剪裁，衣長至臀部\r\n後背長度：73.5cm/28.9in，落尾下擺\r\n\r\n【材質】\r\nWee Burly 雙層編織面料- 56%尼龍、34%聚酯纖維、10% 彈性纖維\r\n\r\n【永續發展】\r\n包含符合bluesign 標準的材料', '耐磨而輕薄的軟殼外套，防風擋雨，透氣舒適富彈性\r\n可調式袖口\r\n•採用輕量的Wee Burly™雙層編織面料，外層耐磨，內裡舒適\r\n•領子提供抗候保護\r\n•全長帶擋風片的Vislon No Slip Zip™主拉鍊，可防止拉鍊自動打開\r\n•雙拉鍊插手口袋，一個內側熱壓胸袋\r\n•彈性袖口\r\n•可調下擺抽繩\r\n防水', 'S', '抗水'),
(9, '男 Gamma LT 軟殼外套', 9, 0, 6999, 20, 'M84312469_big4.jpg', 'M84312469_big4.jpg,M84312469_big3.jpg,M84312469_big2.jpg,M84312469_big1.jpg', '【剪裁】\r\n標準剪裁，衣長至臀部\r\n後背長度：73.5cm/28.9in，落尾下擺\r\n\r\n【材質】\r\nWee Burly 雙層編織面料- 56%尼龍、34%聚酯纖維、10% 彈性纖維\r\n\r\n【永續發展】\r\n包含符合bluesign 標準的材料', '耐磨而輕薄的軟殼外套，防風擋雨，透氣舒適富彈性\r\n可調式袖口\r\n•採用輕量的Wee Burly™雙層編織面料，外層耐磨，內裡舒適\r\n•領子提供抗候保護\r\n•全長帶擋風片的Vislon No Slip Zip™主拉鍊，可防止拉鍊自動打開\r\n•雙拉鍊插手口袋，一個內側熱壓胸袋\r\n•彈性袖口\r\n•可調下擺抽繩\r\n防水', 'S', '防潑水'),
(10, '男 Gamma LT 軟殼外套', 9, 0, 6999, 20, 'M84312469_big4.jpg', 'M84312469_big4.jpg,M84312469_big3.jpg,M84312469_big2.jpg,M84312469_big1.jpg', '【剪裁】\r\n標準剪裁，衣長至臀部\r\n後背長度：73.5cm/28.9in，落尾下擺\r\n\r\n【材質】\r\nWee Burly 雙層編織面料- 56%尼龍、34%聚酯纖維、10% 彈性纖維\r\n\r\n【永續發展】\r\n包含符合bluesign 標準的材料', '耐磨而輕薄的軟殼外套，防風擋雨，透氣舒適富彈性\r\n可調式袖口\r\n•採用輕量的Wee Burly™雙層編織面料，外層耐磨，內裡舒適\r\n•領子提供抗候保護\r\n•全長帶擋風片的Vislon No Slip Zip™主拉鍊，可防止拉鍊自動打開\r\n•雙拉鍊插手口袋，一個內側熱壓胸袋\r\n•彈性袖口\r\n•可調下擺抽繩\r\n防水', 'S', '防水'),
(11, 'Arcteryx 始祖鳥 Beta LT  Gore Tex登山雨衣/風雨衣/女款 鐵克諾紅 Techno', 10, 7, 1200, 20, 'M84312469_big4.jpg', 'M84312469_big4.jpg,M84312469_big3.jpg,M84312469_big2.jpg,M84312469_big1.jpg', 'Arcteryx 始祖鳥 Beta LT 女款 Gore Tex登山雨衣/風雨衣 29458\r\n材質：3L tricot技術N40p-X GORE-TEX材質\r\n重量：350g\r\n符合bluesign標準的材料', '透氣的GORE-TEX材質提供全面抗候防護\r\n可調整、可兼容頭盔StormHood™兜帽提供防護且不遮擋視線\r\nWaterTight™抗水主拉鍊\r\n雙WaterTight™抗水拉鍊插手口袋，配有RS™拉鍊頭\r\n腋下拉鍊以便透氣\r\nWaterTight™抗水主拉鍊\r\n兩個可調節的下擺抽繩，可防止寒氣入侵\r\n可調式袖口 ', 'L', '防水'),
(12, '我是鞋子', 7, 7, 2000, 20, 'M84312469_big4.jpg', 'M84312469_big4.jpg,M84312469_big3.jpg,M84312469_big2.jpg,M84312469_big1.jpg', 'Arcteryx 始祖鳥 Beta LT 女款 Gore Tex登山雨衣/風雨衣 29458\r\n材質：3L tricot技術N40p-X GORE-TEX材質\r\n重量：350g\r\n符合bluesign標準的材料', '透氣的GORE-TEX材質提供全面抗候防護\r\n可調整、可兼容頭盔StormHood™兜帽提供防護且不遮擋視線\r\nWaterTight™抗水主拉鍊\r\n雙WaterTight™抗水拉鍊插手口袋，配有RS™拉鍊頭\r\n腋下拉鍊以便透氣\r\nWaterTight™抗水主拉鍊\r\n兩個可調節的下擺抽繩，可防止寒氣入侵\r\n可調式袖口 ', 'L', '防水');

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`product_sid`),
  ADD KEY `product_category_sid` (`product_category_sid`),
  ADD KEY `brand_sid` (`brand_sid`);

--
-- 在傾印的資料表使用自動遞增(AUTO_INCREMENT)
--

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `product`
--
ALTER TABLE `product`
  MODIFY `product_sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
