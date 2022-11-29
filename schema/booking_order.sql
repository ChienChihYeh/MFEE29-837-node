-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- 主機： 127.0.0.1
-- 產生時間： 2022-11-29 01:07:59
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
-- 資料表結構 `booking_order`
--
DROP TABLE IF EXISTS `booking_order`;
CREATE TABLE `booking_order` (
  `sid` int(11) NOT NULL,
  `order_num` varchar(255) NOT NULL,
  `room_sid` int(11) NOT NULL,
  `start` date DEFAULT NULL,
  `end` date DEFAULT NULL,
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

INSERT INTO `booking_order` (`sid`, `order_num`, `room_sid`, `start`, `end`, `qty`, `total`, `img`, `star`, `message`, `messageTime`, `created_time`) VALUES
(9, '20220922031127', 25, '2022-09-22', '2022-09-24', 1, 300, '', NULL, NULL, NULL, '2022-09-22 15:11:27'),
(10, '20220923024833', 49, '2022-09-23', '2022-09-30', 4, 2400, '', NULL, NULL, NULL, '2022-09-23 14:48:33'),
(11, '20220923025328', 49, '2022-09-15', '2022-09-24', 1, 600, '', NULL, NULL, NULL, '2022-09-23 14:53:28'),
(12, '20220923035111', 49, '2022-09-14', '2022-09-24', 1, 600, '', NULL, NULL, NULL, '2022-09-23 15:51:11');

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `booking_order`
--
ALTER TABLE `booking_order`
  ADD PRIMARY KEY (`sid`);

--
-- 在傾印的資料表使用自動遞增(AUTO_INCREMENT)
--

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `booking_order`
--
ALTER TABLE `booking_order`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
