-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- 主機： 127.0.0.1
-- 產生時間： 2022-11-24 15:01:03
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
-- 資料表結構 `brand`
--
DROP TABLE IF EXISTS `brand`;
CREATE TABLE `brand` (
  `brand_sid` int(11) NOT NULL,
  `brand_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 傾印資料表的資料 `brand`
--

INSERT INTO `brand` (`brand_sid`, `brand_name`) VALUES
(1, 'Nike'),
(2, 'Adidas'),
(3, 'North Face'),
(4, 'Decathlon'),
(5, 'LOWA'),
(6, 'Mammut'),
(7, 'ARC\'TERYX'),
(8, 'sea to summit'),
(9, 'Rudy Project'),
(10, 'Fjällräven'),
(11, 'montbell'),
(12, 'Black Diamond'),
(13, 'Mystery Ranch '),
(14, 'Osprey'),
(15, 'KAVU'),
(16, 'Nalgene'),
(17, 'Camelbak '),
(18, 'Hydrapak'),
(19, 'EVERNEW'),
(20, 'ZIPPO'),
(21, 'ACME '),
(22, 'PETZL'),
(23, 'Trekmates '),
(24, 'Outdoor Research '),
(25, 'Salomon'),
(26, 'Komperdell');

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `brand`
--
ALTER TABLE `brand`
  ADD PRIMARY KEY (`brand_sid`);

--
-- 在傾印的資料表使用自動遞增(AUTO_INCREMENT)
--

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `brand`
--
ALTER TABLE `brand`
  MODIFY `brand_sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
