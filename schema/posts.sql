-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- 主機： 127.0.0.1
-- 產生時間： 2022-11-24 03:31:21
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
-- 資料表結構 `posts`
--
DROP TABLE IF EXISTS `posts`;
CREATE TABLE `posts` (
  `post_sid` int(11) NOT NULL,
  `member_sid` int(11) NOT NULL,
  `image_url` varchar(255) NOT NULL,
  `context` varchar(255) CHARACTER SET utf8mb4 DEFAULT NULL,
  `mountain_sid` int(11) NOT NULL,
  `likes` int(11) NOT NULL DEFAULT 0,
  `comments` int(11) NOT NULL DEFAULT 0,
  `created_at` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 傾印資料表的資料 `posts`
--

INSERT INTO `posts` (`post_sid`, `member_sid`, `image_url`, `context`, `mountain_sid`, `likes`, `comments`, `created_at`) VALUES
(12, 670, 'e82b1104-1d3b-4d59-bb8c-667585b9a3e3.jpg', '山高度累加測試\r\n1\r\n2\r\n3', 18, 0, 0, '2022-11-23'),
(13, 670, '052c2ca6-6c33-4760-8d31-4a0f9c81a1af.jpg', '預覽圖清空測試', 75, 0, 0, '2022-11-23'),
(14, 670, 'e3948838-9458-4ef8-a75d-bd8178d049e2.jpg', '', 156, 0, 0, '2022-11-23');

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`post_sid`);

--
-- 在傾印的資料表使用自動遞增(AUTO_INCREMENT)
--

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `posts`
--
ALTER TABLE `posts`
  MODIFY `post_sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
