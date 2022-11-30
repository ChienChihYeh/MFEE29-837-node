-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- 主機： localhost
-- 產生時間： 2022 年 11 月 30 日 17:01
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
-- 資料表結構 `order`
--

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
-- 傾印資料表的資料 `order`
--

INSERT INTO `order` (`order_sid`, `order_num`, `member_sid`, `total`, `recipient`, `recipient_address`, `recipient_phone`, `payment`, `remark`, `created_time`) VALUES
(40, '20220922030642', 2, '3466', '', '', '', '', '', '2022-09-22 15:06:42'),
(41, '20220922030749', 2, '3466', '', '', '', '', '', '2022-09-22 15:07:49'),
(42, '20220922030751', 2, '3466', '', '', '', '', '', '2022-09-22 15:07:51'),
(43, '20220922030753', 2, '3466', '', '', '', '', '', '2022-09-22 15:07:53'),
(44, '20220922030900', 2, '3466', '', '', '', '', '', '2022-09-22 15:09:00'),
(45, '20220922031127', 2, '1398', '', '', '', '', '', '2022-09-22 15:11:27'),
(46, '20220922031336', 2, '1844', '', '', '', '', '', '2022-09-22 15:13:36'),
(47, '20220922045657', 2, '2570', '', '', '', '', '', '2022-09-22 16:56:57'),
(49, '20220922112239', 2, '1067', '', '', '', '', '', '2022-09-22 17:22:39'),
(50, '20220923014140', 2, '15837', '', '', '', '', '', '2022-09-23 13:41:40'),
(51, '20220923020817', 2, '8438', '', '', '', '', '', '2022-09-23 14:08:17'),
(55, '20220923024833', 644, '6999', '', '', '', '', '', '2022-09-23 14:48:33'),
(56, '20220923025328', 644, '660', '', '', '', '', '', '2022-09-23 14:53:28'),
(57, '20220923025551', 644, '2200', '', '', '', '', '', '2022-09-23 14:55:51'),
(58, '20220923025620', 644, '4400', '', '', '', '', '', '2022-09-23 14:56:20'),
(60, '20220923030059', 633, '35159', '', '', '', '', '', '2022-09-23 15:00:59'),
(61, '20220923035111', 633, '3165', '', '', '', '', '', '2022-09-23 15:51:11'),
(62, '20220923044421', 647, '9058', '阿儒', '你家', '0987564321', 'LINE PAY', '感恩', '2022-09-23 16:44:21'),
(63, '20220923044500', 647, '5859', 'Amy', '我家', '0965432198', '信用卡', '惜福', '2022-09-23 16:45:00'),
(64, '20220923105945', 647, '3799', 'Amanda', '她家', '0912345678', 'ATM轉帳', '大愛', '2022-09-23 22:59:45'),
(83, '1669685741910', 647, '7900', 'YIRU測試2222', '新北市新莊區', '0987654321', 'LINE PAY', '', '2022-11-29 09:36:03'),
(84, '1669690525756', 647, '40300', 'YIRU測試111', '新北市大安區', '0987654321', 'LINE PAY', 'test', '2022-11-29 10:55:56'),
(85, '1669792688917', 647, '123750', 'YIRU測試111', '新北市大安區', '0987654321', 'LINE PAY', '', '2022-11-30 15:18:24'),
(86, '1669793490410', 647, '900', '', '', '0', '', '', '2022-11-30 15:31:43'),
(89, '1669795347257', 647, '24000', '', '', '0', '', '', '2022-11-30 16:02:43'),
(90, '1669795581953', 647, '24000', '', '', '0', '', '', '2022-11-30 16:06:46');

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
  MODIFY `order_sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
