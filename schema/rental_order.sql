-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- 主機： localhost
-- 產生時間： 2022 年 11 月 30 日 17:00
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
-- 資料表結構 `rental_order`
--

CREATE TABLE `rental_order` (
  `order_sid` int(11) NOT NULL,
  `order_num` varchar(255) NOT NULL,
  `rental_sid` int(11) NOT NULL,
  `store_out` varchar(255) DEFAULT NULL COMMENT '(租)',
  `store_back` varchar(255) DEFAULT NULL COMMENT '(還)',
  `out_date` date DEFAULT NULL,
  `back_date` date DEFAULT NULL,
  `day` int(11) NOT NULL,
  `deliveryFee` int(11) NOT NULL COMMENT '跨店費用',
  `qty` int(255) NOT NULL,
  `total` int(255) NOT NULL,
  `img` varchar(255) NOT NULL,
  `star` int(11) DEFAULT NULL,
  `message` varchar(255) DEFAULT NULL,
  `messageTime` date DEFAULT NULL,
  `created_time` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 傾印資料表的資料 `rental_order`
--

INSERT INTO `rental_order` (`order_sid`, `order_num`, `rental_sid`, `store_out`, `store_back`, `out_date`, `back_date`, `day`, `deliveryFee`, `qty`, `total`, `img`, `star`, `message`, `messageTime`, `created_time`) VALUES
(6, '20220922030642', 30, NULL, NULL, NULL, NULL, 0, 0, 1, 66, '', NULL, NULL, NULL, '2022-09-22 15:06:42'),
(7, '20220922030642', 29, NULL, NULL, NULL, NULL, 0, 0, 1, 60, '', NULL, NULL, NULL, '2022-09-22 15:06:42'),
(8, '20220922030749', 30, NULL, NULL, NULL, NULL, 0, 0, 1, 66, '', NULL, NULL, NULL, '2022-09-22 15:07:49'),
(9, '20220922030749', 29, NULL, NULL, NULL, NULL, 0, 0, 1, 60, '', NULL, NULL, NULL, '2022-09-22 15:07:49'),
(10, '20220922030751', 30, NULL, NULL, NULL, NULL, 0, 0, 1, 66, '', NULL, NULL, NULL, '2022-09-22 15:07:51'),
(11, '20220922030751', 29, NULL, NULL, NULL, NULL, 0, 0, 1, 60, '', NULL, NULL, NULL, '2022-09-22 15:07:51'),
(12, '20220922030753', 30, NULL, NULL, NULL, NULL, 0, 0, 1, 66, '', NULL, NULL, NULL, '2022-09-22 15:07:53'),
(13, '20220922030753', 29, NULL, NULL, NULL, NULL, 0, 0, 1, 60, '', NULL, NULL, NULL, '2022-09-22 15:07:53'),
(14, '20220922030900', 30, NULL, NULL, NULL, NULL, 0, 0, 1, 66, '', NULL, NULL, NULL, '2022-09-22 15:09:00'),
(15, '20220922030900', 29, NULL, NULL, NULL, NULL, 0, 0, 1, 60, '', NULL, NULL, NULL, '2022-09-22 15:09:00'),
(16, '20220922031127', 30, NULL, NULL, NULL, NULL, 0, 0, 1, 66, '', NULL, NULL, NULL, '2022-09-22 15:11:27'),
(17, '20220923025328', 28, NULL, NULL, NULL, NULL, 0, 0, 1, 60, '', NULL, NULL, NULL, '2022-09-23 14:53:28'),
(18, '20220923035111', 30, NULL, NULL, NULL, NULL, 0, 0, 1, 66, '', NULL, NULL, NULL, '2022-09-23 15:51:11'),
(19, '20220923044421', 43, NULL, NULL, NULL, NULL, 0, 0, 1, 999, '', NULL, NULL, NULL, '2022-09-23 16:44:21'),
(20, '20220923044421', 41, NULL, NULL, NULL, NULL, 0, 0, 1, 20, '', NULL, NULL, NULL, '2022-09-23 16:44:21'),
(21, '20220923044500', 43, NULL, NULL, NULL, NULL, 0, 0, 1, 999, '', 3, '11111111', '2022-11-30', '2022-11-30 00:30:24'),
(22, '20220923044500', 41, NULL, NULL, NULL, NULL, 0, 0, 1, 20, '', NULL, NULL, NULL, '2022-09-23 16:45:00'),
(28, '1669685741910', 5, '台北', '宜蘭', '2022-11-29', '2022-11-30', 0, 100, 1, 600, 'img', 4, '444444', '2022-11-30', '2022-11-30 00:25:07'),
(29, '1669690525756', 5, '台北', '宜蘭', '2022-11-15', '2022-11-30', 0, 100, 1, 600, 'img', 3, '44', '2022-11-30', '2022-11-30 00:15:17');

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `rental_order`
--
ALTER TABLE `rental_order`
  ADD PRIMARY KEY (`order_sid`);

--
-- 在傾印的資料表使用自動遞增(AUTO_INCREMENT)
--

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `rental_order`
--
ALTER TABLE `rental_order`
  MODIFY `order_sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
