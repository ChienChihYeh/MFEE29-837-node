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
-- 資料表結構 `booking_order`
--

CREATE TABLE `booking_order` (
  `order_sid` int(11) NOT NULL,
  `order_num` varchar(255) NOT NULL,
  `room_sid` int(11) NOT NULL,
  `start` date DEFAULT NULL,
  `end` date DEFAULT NULL,
  `day` int(11) NOT NULL,
  `qty` int(255) NOT NULL,
  `total` int(255) NOT NULL,
  `img` varchar(255) NOT NULL,
  `star` int(11) DEFAULT NULL,
  `message` varchar(6000) DEFAULT NULL,
  `messageTime` date DEFAULT NULL,
  `created_time` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 傾印資料表的資料 `booking_order`
--

INSERT INTO `booking_order` (`order_sid`, `order_num`, `room_sid`, `start`, `end`, `day`, `qty`, `total`, `img`, `star`, `message`, `messageTime`, `created_time`) VALUES
(9, '20220922031127', 25, '2022-09-22', '2022-09-24', 0, 1, 300, '', NULL, NULL, NULL, '2022-09-22 15:11:27'),
(10, '20220923024833', 49, '2022-09-23', '2022-09-30', 0, 4, 2400, '', NULL, NULL, NULL, '2022-09-23 14:48:33'),
(11, '20220923025328', 49, '2022-09-15', '2022-09-24', 0, 1, 600, '', NULL, NULL, NULL, '2022-09-23 14:53:28'),
(12, '20220923035111', 49, '2022-09-14', '2022-09-24', 0, 1, 600, '', NULL, NULL, NULL, '2022-09-23 15:51:11'),
(20, '1669685741910', 20, '2022-11-29', '2022-11-30', 0, 1, 3000, 'img', 5, '333', '2022-11-29', '2022-11-29 23:30:07'),
(21, '1669690525756', 20, '2022-11-29', '2022-11-30', 0, 8, 24000, 'img', 4, '1111', '2022-11-30', '2022-11-30 00:14:26'),
(22, '1669792688917', 8, '2022-11-30', '2022-12-15', 0, 15, 8250, 'ROOM_10008.jpg', NULL, NULL, NULL, '2022-11-30 15:18:24'),
(23, '1669793490410', 30, '2022-11-30', '2022-12-01', 0, 1, 900, 'ROOM_100054.jpg', 4, '12222', '2022-11-30', '2022-11-30 15:45:11'),
(25, '1669795347257', 15, '2022-11-30', '2022-12-15', 15, 2, 24000, 'ROOM_10007.jpg', NULL, NULL, NULL, '2022-11-30 16:02:43'),
(26, '1669795581953', 15, '2022-11-30', '2022-12-15', 15, 2, 24000, 'ROOM_10007.jpg', NULL, NULL, NULL, '2022-11-30 16:06:46');

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `booking_order`
--
ALTER TABLE `booking_order`
  ADD PRIMARY KEY (`order_sid`);

--
-- 在傾印的資料表使用自動遞增(AUTO_INCREMENT)
--

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `booking_order`
--
ALTER TABLE `booking_order`
  MODIFY `order_sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
