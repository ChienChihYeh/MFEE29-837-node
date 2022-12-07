-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- 主機： 127.0.0.1
-- 產生時間： 2022-12-07 00:41:38
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
-- 資料表結構 `order`
--
DROP TABLE IF EXISTS `order`;
CREATE TABLE `order` (
  `order_sid` int(11) NOT NULL,
  `order_num` varchar(255) COLLATE utf8mb4_german2_ci NOT NULL,
  `member_sid` int(11) NOT NULL,
  `total` varchar(255) COLLATE utf8mb4_german2_ci NOT NULL,
  `recipient` varchar(255) COLLATE utf8mb4_german2_ci NOT NULL COMMENT '收件人',
  `recipient_address` varchar(255) COLLATE utf8mb4_german2_ci NOT NULL COMMENT '收件人地址',
  `recipient_phone` varchar(255) COLLATE utf8mb4_german2_ci NOT NULL COMMENT '收件人電話',
  `payment` varchar(255) COLLATE utf8mb4_german2_ci NOT NULL COMMENT '付款方式',
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_german2_ci NOT NULL COMMENT '備註',
  `created_time` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_german2_ci;

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`order_sid`);

--
-- 在傾印的資料表使用自動遞增(AUTO_INCREMENT)
--

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `order`
--
ALTER TABLE `order`
  MODIFY `order_sid` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
