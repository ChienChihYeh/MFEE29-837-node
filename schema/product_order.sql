-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- 主機： localhost
-- 產生時間： 2022 年 12 月 05 日 17:12
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
-- 資料表結構 `product_order`
--
DROP TABLE IF EXISTS `product_order`;
CREATE TABLE `product_order` (
  `order_sid` int(11) NOT NULL,
  `order_num` varchar(255) CHARACTER SET utf8 COLLATE utf8_german2_ci NOT NULL,
  `products_sid` int(11) NOT NULL,
  `size` varchar(255) NOT NULL,
  `qty` int(255) NOT NULL,
  `total` int(255) NOT NULL,
  `img` varchar(255) DEFAULT NULL,
  `star` int(11) DEFAULT NULL,
  `message` varchar(255) DEFAULT NULL,
  `messageTime` date DEFAULT NULL,
  `created_time` datetime NOT NULL DEFAULT current_timestamp(),
  `custom_img` varchar(10000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 傾印資料表的資料 `product_order`
--

INSERT INTO `product_order` (`order_sid`, `order_num`, `products_sid`, `size`, `qty`, `total`, `img`, `star`, `message`, `messageTime`, `created_time`, `custom_img`) VALUES
(47, '20220923024833', 19, '', 1, 999, '', NULL, NULL, NULL, '2022-09-23 14:48:33', NULL),
(48, '20220923030059', 19, '', 1, 999, '', NULL, NULL, NULL, '2022-09-23 15:00:59', NULL),
(49, '20220923030059', 17, '', 4, 9360, '', NULL, NULL, NULL, '2022-09-23 15:00:59', NULL),
(50, '20220923035111', 18, '', 1, 999, '', NULL, NULL, NULL, '2022-09-23 15:51:11', NULL),
(72, '1670215279935', 350, 'US7', 1, 8010, '20221121174157737_2.png', NULL, NULL, NULL, '2022-12-05 12:41:45', NULL),
(73, '1670215279935', 650, '', 1, 9450, '20220914151657701_2.png', NULL, NULL, NULL, '2022-12-05 12:41:45', NULL),
(74, '1670215457617', 350, 'US7', 1, 8010, '20221121174157737_2.png', NULL, NULL, NULL, '2022-12-05 12:44:41', NULL),
(75, '1670215457617', 650, '', 1, 9450, '20220914151657701_2.png', NULL, NULL, NULL, '2022-12-05 12:44:41', NULL),
(76, '1670215720164', 639, '', 1, 6480, '20210120142116198_2.png', NULL, NULL, NULL, '2022-12-05 12:48:55', NULL),
(77, '1670229354701', 205, 'S', 1, 26820, '20220923110044671_2.png', NULL, NULL, NULL, '2022-12-05 16:36:09', NULL),
(78, '1670229354701', 205, 'M', 1, 26820, '20220923110044671_2.png', NULL, NULL, NULL, '2022-12-05 16:36:09', NULL),
(79, '1670229354701', 719, 'S', 1, 2990, NULL, 4, '222', '2022-12-05', '2022-12-05 16:41:52', '7b6f3a83-1412-43b8-8dc2-d3c28b800c32.png');

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `product_order`
--
ALTER TABLE `product_order`
  ADD PRIMARY KEY (`order_sid`);

--
-- 在傾印的資料表使用自動遞增(AUTO_INCREMENT)
--

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `product_order`
--
ALTER TABLE `product_order`
  MODIFY `order_sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
