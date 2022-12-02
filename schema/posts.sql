-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- 主機： 127.0.0.1
-- 產生時間： 2022-11-30 20:01:31
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
(39, 669, 'bcac7f95-084a-483d-8873-b7e85ad5837b.jpg', '你好', 156, 2, 2, '2022-11-25'),
(40, 669, 'a16ed58a-bf6d-4197-8726-11d51ddc82a7.jpg', 'profile test', 156, 1, 1, '2022-11-25'),
(41, 668, '128ed5b4-1c36-4a59-98e1-a693d87e17f8.jpg', '', 156, 2, 1, '2022-11-28'),
(42, 670, '7efa35b4-e742-4f7c-af51-b5e384fad514.jpg', '', 27, 1, 0, '2022-11-28'),
(45, 670, '0fedf9ed-7e28-4530-885a-5a392fdf2de7.jpg', '', 161, 0, 0, '2022-11-29'),
(46, 670, '4525fa39-a501-4524-95aa-1487801ab605.jpg', '', 72, 0, 0, '2022-11-29'),
(47, 670, '690cd9dd-69e9-46a1-a9a3-8d240e3af5bb.jpg', 'Happy~~!', 147, 0, 1, '2022-11-29');

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
  MODIFY `post_sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
