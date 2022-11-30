-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- 主機： localhost
-- 產生時間： 2022 年 11 月 30 日 17:02
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

CREATE TABLE `product_order` (
  `order_sid` int(11) NOT NULL,
  `order_num` varchar(255) CHARACTER SET utf8 COLLATE utf8_german2_ci NOT NULL,
  `products_sid` int(11) NOT NULL,
  `size` varchar(255) NOT NULL,
  `qty` int(255) NOT NULL,
  `total` int(255) NOT NULL,
  `img` varchar(255) NOT NULL,
  `star` int(11) DEFAULT NULL,
  `message` varchar(255) DEFAULT NULL,
  `messageTime` date DEFAULT NULL,
  `created_time` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 傾印資料表的資料 `product_order`
--

INSERT INTO `product_order` (`order_sid`, `order_num`, `products_sid`, `size`, `qty`, `total`, `img`, `star`, `message`, `messageTime`, `created_time`) VALUES
(36, '20220922030642', 18, '', 1, 999, '', NULL, NULL, NULL, '2022-09-22 15:06:42'),
(37, '20220922030642', 17, '', 1, 2340, '', NULL, NULL, NULL, '2022-09-22 15:06:42'),
(38, '20220922030749', 18, '', 1, 999, '', NULL, NULL, NULL, '2022-09-22 15:07:49'),
(39, '20220922030749', 17, '', 1, 2340, '', NULL, NULL, NULL, '2022-09-22 15:07:49'),
(40, '20220922030751', 18, '', 1, 999, '', NULL, NULL, NULL, '2022-09-22 15:07:51'),
(41, '20220922030751', 17, '', 1, 2340, '', NULL, NULL, NULL, '2022-09-22 15:07:51'),
(42, '20220922030753', 18, '', 1, 999, '', NULL, NULL, NULL, '2022-09-22 15:07:53'),
(43, '20220922030753', 17, '', 1, 2340, '', NULL, NULL, NULL, '2022-09-22 15:07:53'),
(44, '20220922030900', 18, '', 1, 999, '', NULL, NULL, NULL, '2022-09-22 15:09:00'),
(45, '20220922030900', 17, '', 1, 2340, '', NULL, NULL, NULL, '2022-09-22 15:09:00'),
(46, '20220922031127', 19, '', 1, 999, '', NULL, NULL, NULL, '2022-09-22 15:11:27'),
(47, '20220923024833', 19, '', 1, 999, '', NULL, NULL, NULL, '2022-09-23 14:48:33'),
(48, '20220923030059', 19, '', 1, 999, '', NULL, NULL, NULL, '2022-09-23 15:00:59'),
(49, '20220923030059', 17, '', 4, 9360, '', NULL, NULL, NULL, '2022-09-23 15:00:59'),
(50, '20220923035111', 18, '', 1, 999, '', NULL, NULL, NULL, '2022-09-23 15:51:11'),
(51, '20220923044421', 19, '', 1, 999, '', 5, '安安', '2022-11-30', '2022-11-30 00:28:41'),
(52, '20220923044421', 17, '', 1, 2340, '', 5, '安安', '2022-11-30', '2022-11-30 12:05:59'),
(53, '20220923044500', 17, '', 1, 2340, '', 5, '1111', '2022-11-30', '2022-11-30 00:30:08'),
(68, '1669685741910', 50, 'S', 1, 2000, 'img', 4, '123', '2022-11-29', '2022-11-29 23:29:32'),
(69, '1669685741910', 30, 'S', 1, 400, 'img', 5, '7777777', '2022-11-30', '2022-11-30 00:15:49'),
(70, '1669690525756', 50, 'S', 1, 2000, 'img', 4, '超級保暖der', '2022-11-29', '2022-11-29 15:08:28'),
(71, '1669690525756', 30, 'S', 1, 400, 'img', 4, '安安', '2022-11-29', '2022-11-29 22:23:44');

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
  MODIFY `order_sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
