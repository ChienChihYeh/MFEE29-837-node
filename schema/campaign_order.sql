-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- 主機： localhost
-- 產生時間： 2022 年 12 月 06 日 19:56
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
-- 資料表結構 `campaign_order`
--

CREATE TABLE `campaign_order` (
  `order_sid` int(11) NOT NULL,
  `order_num` varchar(255) NOT NULL,
  `campaign_sid` int(11) NOT NULL,
  `dayname` varchar(255) DEFAULT NULL,
  `date_start` date DEFAULT NULL,
  `people` int(255) NOT NULL,
  `total` int(255) NOT NULL,
  `img` varchar(255) NOT NULL,
  `star` int(11) DEFAULT NULL,
  `message` varchar(255) DEFAULT NULL,
  `messageTime` date DEFAULT NULL,
  `created_time` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 傾印資料表的資料 `campaign_order`
--

INSERT INTO `campaign_order` (`order_sid`, `order_num`, `campaign_sid`, `dayname`, `date_start`, `people`, `total`, `img`, `star`, `message`, `messageTime`, `created_time`) VALUES
(8, '20220923024833', 51, NULL, NULL, 0, 3600, '', NULL, NULL, NULL, '2022-09-23 14:48:33'),
(9, '20220923025551', 50, NULL, NULL, 0, 2200, '', NULL, NULL, NULL, '2022-09-23 14:55:51'),
(10, '20220923025620', 50, NULL, NULL, 0, 4400, '', 5, '555', '2022-11-29', '2022-11-29 23:31:01'),
(12, '20220923030059', 43, NULL, NULL, 0, 24800, '', NULL, NULL, NULL, '2022-09-23 15:00:59'),
(13, '20220923035111', 49, NULL, NULL, 0, 1500, '', NULL, NULL, NULL, '2022-09-23 15:51:11');

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `campaign_order`
--
ALTER TABLE `campaign_order`
  ADD PRIMARY KEY (`order_sid`);

--
-- 在傾印的資料表使用自動遞增(AUTO_INCREMENT)
--

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `campaign_order`
--
ALTER TABLE `campaign_order`
  MODIFY `order_sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
