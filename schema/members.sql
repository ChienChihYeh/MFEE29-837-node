-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- 主機： 127.0.0.1
-- 產生時間： 2022-12-05 18:05:44
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
-- 資料表結構 `members`
--

DROP TABLE IF EXISTS `members`;
CREATE TABLE `members` (
  `member_sid` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `mobile` varchar(255) CHARACTER SET utf8mb4 DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `nickname` varchar(255) NOT NULL,
  `member_level` int(11) NOT NULL DEFAULT 1,
  `total_height` int(11) NOT NULL DEFAULT 0,
  `avatar` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `intro` varchar(255) CHARACTER SET utf8mb4 DEFAULT NULL,
  `token` varchar(255) DEFAULT NULL,
  `verification` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 傾印資料表的資料 `members`
--

INSERT INTO `members` (`member_sid`, `name`, `password`, `email`, `mobile`, `address`, `birthday`, `nickname`, `member_level`, `total_height`, `avatar`, `created_at`, `intro`, `token`, `verification`) VALUES
(1, '阿儒', '$2b$10$SggwzWCMVDaewd6H7uT7YuXL4ks1NUDQUZo60QnpSWbjbhpnhwXf2', 'yiru@hiking.com', '', '', NULL, '阿儒', 1, 0, NULL, '2022-12-05 17:37:26', '', NULL, NULL),
(2, '力誠', '$2b$10$Za6fZxcQyi6nvKaLcMWoEepUnX8tR7crIxuqYD72gfkjVY28lIkVG', 'zx@hiking.com', '', '宜蘭市龜山島57巷10號1樓', NULL, 'ZX', 1, 0, '', '2022-12-05 17:39:29', '爬山好好玩，歡迎來一起爬山，增加抵抗力!!!', NULL, NULL),
(3, '鎧維', '$2b$10$Z3uQ6Ja2rp5J7z3tvtAI.uWRhSSewcb3sh2e.0V2VEpIwFtpAGqyi', 'wei@hiking.com', '', '', NULL, '貝果三號', 1, 0, NULL, '2022-12-05 17:40:43', '', NULL, NULL),
(4, '恩齊', '$2b$10$wzBGlL/pb87Y0LxQjqBFEeD2Ib/zOY5m/joqKkPyhXqZtjKpYGSey', 'n7@hiking.com', '', '', NULL, 'N7', 1, 0, NULL, '2022-12-05 17:41:32', '', NULL, NULL),
(5, '柏宏', '$2b$10$mJBEi4Tp70rgz9NqQTUYduAckdjSVlgIokwddN6UtFTeCQIhhQJwu', 'bert@hiking.com', '', '', NULL, '伯特', 1, 0, NULL, '2022-12-05 17:42:22', '', NULL, NULL),
(6, '潛之', '$2b$10$P8ygYfBQV0mKxmkQWCFcu.rQTCZIEIiIXzvvMfmf90mrtcrw.0GsC', 'yeh@hiking.com', '', '', NULL, '趴趴', 1, 0, NULL, '2022-12-05 17:42:59', '大家好～我是趴趴！我喜歡山上新鮮的空氣，希望能在這裡認識更多的同好！\r\n\r\n請多指教！\r\n', NULL, NULL);

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `members`
--
ALTER TABLE `members`
  ADD PRIMARY KEY (`member_sid`);

--
-- 在傾印的資料表使用自動遞增(AUTO_INCREMENT)
--

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `members`
--
ALTER TABLE `members`
  MODIFY `member_sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
