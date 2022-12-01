-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- 主機： 127.0.0.1
-- 產生時間： 2022-11-30 20:00:54
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
(528, '羅承翰', '$2y$10$IQJT1thnD59tExGt1jbAseN.qC9zGtmCYNJHBu3Gfip76qks1jCIS', 'mail2886@test.com', '0911292138', '嘉義縣中溝83號 ', '1985-01-20', '羅承翰', 1, 0, NULL, '2022-09-21 15:21:12', '自介測試\r\n換行測試', NULL, NULL),
(529, '許冠宇', '$2y$10$rs21svpKOE5z5lWcyjGZF.RG4pRvjJbQUiyYKuWeyVcMMYgm4ZVCa', 'mail1652@test.com', '0911315874', '新竹市花園新城二街42號 ', '1985-09-06', '許冠宇', 1, 0, NULL, '2022-09-21 15:21:12', NULL, NULL, NULL),
(530, '周冠宇', '$2y$10$2W8cv3AHcODtqnmIp0UQJOe/RkQGQrCSgtZ5ScJvnfvhw70zxBNvW', 'mail1041@test.com', '0911813162', '桃園市陸航一村58號 ', '1995-01-15', '周冠宇', 1, 0, NULL, '2022-09-21 15:21:12', NULL, NULL, NULL),
(531, '徐宇軒', '$2y$10$K4psSszMWHVmvpGpEs1gVeb1aQs3ZMNXqtPAzGDoRKMfTZlgpH/FW', 'mail8708@test.com', '0911322905', '屏東縣陸興路5號 ', '1998-05-31', '徐宇軒', 1, 0, NULL, '2022-09-21 15:21:12', NULL, NULL, NULL),
(532, '韓詩涵', '$2y$10$3kCips/cKLjqdxbLGU2sleQgr0kOi6206aXsjnOJy.lMXNNLUbisW', 'mail2957@test.com', '0911675116', '南投縣加正巷58號 ', '1994-07-11', '韓詩涵', 1, 0, NULL, '2022-09-21 15:21:12', NULL, NULL, NULL),
(533, '王雅筑', '$2y$10$J.dD6JVjP3E.yBOXbUrTQea7QA9tna7w2eDxq/0aFa5LUOa5yfI2y', 'mail8677@test.com', '0911958393', '澎湖縣小門86號 ', '1986-09-10', '王雅筑', 1, 0, NULL, '2022-09-21 15:21:12', NULL, NULL, NULL),
(534, '黃宜庭', '$2y$10$zjyca2gtRIUnCx/08sMZZe6Uqvbwcg.WGql74B7YnCA9jBzkjL.5K', 'mail5312@test.com', '0911856752', '金門縣埔邊10號 ', '1993-09-16', '黃宜庭', 1, 0, NULL, '2022-09-21 15:21:12', NULL, NULL, NULL),
(535, '胡郁婷', '$2y$10$b4Z4duJwI1qw1f79Xd.P6ODGXCyWC82RH8KIONOn3AXOyf5IAiu4S', 'mail5296@test.com', '0911522954', '臺中市日新街41號 ', '1987-02-08', '胡郁婷', 1, 0, NULL, '2022-09-21 15:21:13', NULL, NULL, NULL),
(536, '呂家瑋', '$2y$10$qubeqCAZk5tPVgHtnGq0vOdqk/pkGOagUmQaUWx13sN2GEA4TMZia', 'mail7092@test.com', '0911613768', '桃園市華興路90號 ', '1986-09-05', '呂家瑋', 1, 0, NULL, '2022-09-21 15:21:13', NULL, NULL, NULL),
(537, '林宗翰', '$2y$10$Ph1T3HgwZ0sx5qzWkZMmVecnFXbkXmt110i8P3tnK6ab5VBFM1xsq', 'mail7838@test.com', '0911344117', '彰化縣碧興路90號 ', '1995-02-16', '林宗翰', 1, 0, NULL, '2022-09-21 15:21:13', NULL, NULL, NULL),
(538, '劉冠宇', '$2y$10$XqRCYH1OSp22wWQVV709KuRsPdP0j5iLakUj2.jc6axrCvUtsN7Da', 'mail2963@test.com', '0911157026', '宜蘭縣林森4號 ', '1989-12-19', '劉冠宇', 1, 0, NULL, '2022-09-21 15:21:13', NULL, NULL, NULL),
(539, '曹雅婷', '$2y$10$5ol4QgOMPLskPO.ERLBweO4ZN0RVAh6HNq28s5yGSijQ4WbpHxePy', 'mail3738@test.com', '0911421587', '新竹縣深坑子67號 ', '1991-10-08', '曹雅婷', 1, 0, NULL, '2022-09-21 15:21:13', NULL, NULL, NULL),
(540, '趙詩涵', '$2y$10$I33RRip/DRCvGtG/OdzRS.hnllwY3df6rK0zZPqiH5yKglz1Ehihm', 'mail6149@test.com', '0911429069', '南投縣日新巷56號 ', '1992-12-04', '趙詩涵', 1, 0, NULL, '2022-09-21 15:21:13', NULL, NULL, NULL),
(541, '馮家瑋', '$2y$10$2mqCot857GTfly/x1XhB3OaRJx9jaKT/6a.U6FgcPJ9NgBUq2w2r2', 'mail7164@test.com', '0911410899', '臺北市珠海路56號 ', '1990-08-29', '馮家瑋', 1, 0, NULL, '2022-09-21 15:21:13', NULL, NULL, NULL),
(542, '蕭佳穎', '$2y$10$W/X6vYjV.IBE/7qOiPZQY.l2Wggk97YS3Rd/cd2Rdvb.hDjqTTVuS', 'mail3791@test.com', '0911612370', '金門縣環島西路１段71號 ', '1988-08-17', '蕭佳穎', 1, 0, NULL, '2022-09-21 15:21:13', NULL, NULL, NULL),
(545, '蕭怡婷', '$2y$10$QOAsVYe03urs9uzxwaQb4uF83tlhlyMWsD3IsxAcFCTbU70pZ4z3C', 'mail9769@test.com', '0911295188', '桃園市國園一街55號 ', '1986-12-24', '蕭怡婷', 1, 0, NULL, '2022-09-21 15:21:13', NULL, NULL, NULL),
(546, '王柏翰', '$2y$10$iyQ0rpLFYjeS1qQ7uNcK5uVmTLBfnhMA0ecdVJgSNRXviWFx0ozzO', 'mail6814@test.com', '0911294371', '花蓮縣民享一街38號 ', '1986-09-26', '王柏翰', 1, 0, NULL, '2022-09-21 15:21:13', NULL, NULL, NULL),
(547, '郭雅筑', '$2y$10$w9H9f0qIzVy11GuPZsURiehgEg.Tx2oHEd83D5CNdz2A1RkM7MYu.', 'mail2593@test.com', '0911863496', '連江縣西坵村2號 ', '1989-07-08', '郭雅筑', 1, 0, NULL, '2022-09-21 15:21:13', NULL, NULL, NULL),
(548, '胡家豪', '$2y$10$50ql7nRWhufORCs8XORdrujbyefW.EhfYr/8XWtYXQNDQk4dxyEFW', 'mail7452@test.com', '0911327687', '桃園市羊城一街38號 ', '1996-07-18', '胡家豪', 1, 0, NULL, '2022-09-21 15:21:13', NULL, NULL, NULL),
(549, '張鈺婷', '$2y$10$E9izarXGvGvQ3N6xaXeo8eu2PttcfNyQlKqwmN0HWx2kuXt/7wbPG', 'mail5108@test.com', '0911704289', '嘉義縣過路子34號 ', '1990-12-06', '張鈺婷', 1, 0, NULL, '2022-09-21 15:21:13', NULL, NULL, NULL),
(550, '謝鈺婷', '$2y$10$bA9JYxa83XHE3OCMRMa7XeGpQ1JcmshTEIWXK4LFZrNeujN1Ol55G', 'mail8981@test.com', '0911107375', '宜蘭縣舊街路福園別墅89號 ', '1994-02-25', '謝鈺婷', 1, 0, NULL, '2022-09-21 15:21:13', NULL, NULL, NULL),
(551, '羅家豪', '$2y$10$9PbQ2VBzusB9jNJT5jALe.03kDlpWMcAhhtU91EDNvFvM6LEEaDMO', 'mail1950@test.com', '0911118901', '嘉義市過溪15號 ', '1991-12-14', '羅家豪', 1, 0, NULL, '2022-09-21 15:21:13', NULL, NULL, NULL),
(552, '鄭柏翰', '$2y$10$JlX.ukX.5E4bJIBCIwiId.nIbWKrf8GPZkLmzpACLdERjYfRUbo4.', 'mail5642@test.com', '0911181627', '苗栗縣忠信路55號 ', '1998-03-31', '鄭柏翰', 1, 0, NULL, '2022-09-21 15:21:13', NULL, NULL, NULL),
(553, '鄭詩涵', '$2y$10$Q9zK7DDjGghA.h9iBES.PuhfZeAdlzWgMcBpOlK956U4KRl9G2cP.', 'mail7426@test.com', '0911776744', '金門縣大坵村36號 ', '1991-04-08', '鄭詩涵', 1, 0, NULL, '2022-09-21 15:21:13', NULL, NULL, NULL),
(554, '鄧家瑋', '$2y$10$ppnHJk8Dzv9qHymGh.iwK.H.CFC72ZG8cF1c1yl5Ytr6ygIOYczK6', 'mail5577@test.com', '0911522700', '屏東縣仁和路2號 ', '1985-05-22', '鄧家瑋', 1, 0, NULL, '2022-09-21 15:21:14', NULL, NULL, NULL),
(555, '鄧冠宇', '$2y$10$xEsYpLbK3VoQb7/NfNc5GOLEOCzqmlbqty084T0TdjajTJ0uDOioW', 'mail7980@test.com', '0911554617', '新竹縣石鹿26號 ', '1991-10-20', '鄧冠宇', 1, 0, NULL, '2022-09-21 15:21:14', NULL, NULL, NULL),
(556, '許柏翰', '$2y$10$AlxnXOK2eEHPHV0rjWwUz.YqE1lxPVtyslHDAc97XZWF1bqbbZz8W', 'mail7958@test.com', '0911379832', '新北市坪林20號 ', '1989-07-01', '許柏翰', 1, 0, NULL, '2022-09-21 15:21:14', NULL, NULL, NULL),
(557, '王家瑋', '$2y$10$JaoYDdHDwb4OJy/MMSAZ1OmqsROMwazbKHPt41tFJ7tWKyPyVssIm', 'mail1202@test.com', '0911619102', '臺中市中清路11號 ', '1994-07-14', '王家瑋', 1, 0, NULL, '2022-09-21 15:21:14', NULL, NULL, NULL),
(558, '程宗翰', '$2y$10$73h/yQVLQeJ20wRQQOx.PuqSupOPmsXgP6mbrd2Y0T3brWESQAqq.', 'mail2236@test.com', '0911131615', '澎湖縣土地公前85號 ', '1985-10-19', '程宗翰', 1, 0, NULL, '2022-09-21 15:21:14', NULL, NULL, NULL),
(559, '胡冠宇', '$2y$10$BLHuds..g6RJsLpvoIk9fuRabgjAvz19n/9Qgb5DnpHVkfczYLXIK', 'mail9600@test.com', '0911875516', '桃園市詩朗71號 ', '1998-09-01', '胡冠宇', 1, 0, NULL, '2022-09-21 15:21:14', NULL, NULL, NULL),
(560, '李郁婷', '$2y$10$9y1EG1gqCUUai/viiRnBOeKefhCvTIiyDyzi3lJW5x9DgsFIoZAUG', 'mail1141@test.com', '0911952912', '金門縣頂林路97號 ', '1994-05-10', '李郁婷', 1, 0, NULL, '2022-09-21 15:21:14', NULL, NULL, NULL),
(561, '朱冠廷', '$2y$10$esoudAfgcqgmuJYAG1XZDu9MJowQi7wwFRMQwMOEauQe9zAxEAzJ6', 'mail5181@test.com', '0911530036', '基隆市太白街92號 ', '1993-05-07', '朱冠廷', 1, 0, NULL, '2022-09-21 15:21:14', NULL, NULL, NULL),
(562, '鄧佳穎', '$2y$10$/tih4obxemQfY/6Ici4BqOiV92gx/DHAnxojDCbmwysFs7RQBdWN6', 'mail3899@test.com', '0911222556', '臺北市昌吉街1號 ', '1993-08-31', '鄧佳穎', 1, 0, NULL, '2022-09-21 15:21:14', NULL, NULL, NULL),
(563, '鄧冠廷', '$2y$10$edKbjQUYF6SyhWLAoO/GyudvylkM6HO1D4T3l4ZjR8e56EGxQnD6y', 'mail7709@test.com', '0911838950', '新竹市關東路77號 ', '1994-07-04', '鄧冠廷', 1, 0, NULL, '2022-09-21 15:21:14', NULL, NULL, NULL),
(564, '趙彥廷', '$2y$10$Ex2EQXsoEEnwPqf3QWXiHuuUBZEjM08FsKY/RVwocg6QxjdOeALni', 'mail3669@test.com', '0911435716', '嘉義縣保鐵一路３段72號 ', '1988-05-22', '趙彥廷', 1, 0, NULL, '2022-09-21 15:21:14', NULL, NULL, NULL),
(565, '羅鈺婷', '$2y$10$pnWfkPBZc8SzlJwmtkU/cu5RTkBIz5q4VK0pIPNr7LsRMDM4knjYi', 'mail8711@test.com', '0911677384', '連江縣西坵村77號 ', '1994-03-18', '羅鈺婷', 1, 0, NULL, '2022-09-21 15:21:14', NULL, NULL, NULL),
(566, '曾宇軒', '$2y$10$7BWkrzHNBwyEk48AFvFx4uBOtfDMRV/Zz3hxzsX0lw1yasJSEY4g6', 'mail1602@test.com', '0911263008', '雲林縣中央路61號 ', '1995-07-23', '曾宇軒', 1, 0, NULL, '2022-09-21 15:21:14', NULL, NULL, NULL),
(567, '羅宇軒', '$2y$10$Qk6fYtgBX1yicpzQYK.RZuKCDmPx8/dzG0AYEft4UN3Ky7eC7UXn6', 'mail8730@test.com', '0911540695', '新北市環堤大道34號 ', '1987-04-22', '羅宇軒', 1, 0, NULL, '2022-09-21 15:21:14', NULL, NULL, NULL),
(568, '趙怡萱', '$2y$10$a/jNpqkzM8Gu4ruDq9DcHuwUFAkASXhA90mozY33PorToDWg5erAC', 'mail6192@test.com', '0911287778', '嘉義市嘉工街72號 ', '1994-03-12', '趙怡萱', 1, 0, NULL, '2022-09-21 15:21:14', NULL, NULL, NULL),
(569, '孫柏翰', '$2y$10$9N/DzgnOHV1muaNFcMfsx.W1PT8zaP.gVd.MTelmF8CUMkqokszSS', 'mail9496@test.com', '0911314249', '桃園市大興七街64號 ', '1986-06-06', '孫柏翰', 1, 0, NULL, '2022-09-21 15:21:14', NULL, NULL, NULL),
(570, '胡家瑋', '$2y$10$HEOXUWWztHSBcNUH5KOESeWvL0ZH2ZjBHiaYIx2yOx8wM/Q6hgRRy', 'mail1638@test.com', '0911493733', '臺中市大源二十八街66號 ', '1995-02-06', '胡家瑋', 1, 0, NULL, '2022-09-21 15:21:14', NULL, NULL, NULL),
(571, '王宜庭', '$2y$10$8QDx2jquP9S2zz3xOIN7p.1xPYBWTopa//xkZ9QgdkkiEfsacW93y', 'mail8548@test.com', '0911473980', '雲林縣新興海埔地三路51號 ', '1995-09-21', '王宜庭', 1, 0, NULL, '2022-09-21 15:21:14', NULL, NULL, NULL),
(572, '周宜庭', '$2y$10$s8Q1lLhOd49vPRjxBFnV6uOCfujUumi/rrT.Iin8PbUbyPkCYYFJa', 'mail5173@test.com', '0911368782', '嘉義縣大茅埔67號 ', '1989-08-30', '周宜庭', 1, 0, NULL, '2022-09-21 15:21:14', NULL, NULL, NULL),
(573, '蕭家瑋', '$2y$10$BBME3CcPld2jpM6M8lxPu.JgvY1/hGDd0X4ZbIq3fRLxRD6c1iqzm', 'mail1393@test.com', '0911291982', '桃園市斷匯24號 ', '1986-12-29', '蕭家瑋', 1, 0, NULL, '2022-09-21 15:21:14', NULL, NULL, NULL),
(574, '羅冠霖', '$2y$10$H0IPTH9YOOcv1xA6IQpEOu7E06kJAnvj4ZTdJThrD/D9lWhZjPgAe', 'mail8331@test.com', '0911969021', '宜蘭縣東宜四路66號 ', '1994-07-22', '羅冠霖', 1, 0, NULL, '2022-09-21 15:21:15', NULL, NULL, NULL),
(575, '何家豪', '$2y$10$ISuYJGiJtnznxpRPx6AsZObBxgrC.GdNt5Dgp0ZG5TUVoggG1hWV.', 'mail9129@test.com', '0911394956', '嘉義市維新路61號 ', '1998-05-30', '何家豪', 1, 0, NULL, '2022-09-21 15:21:15', NULL, NULL, NULL),
(576, '林詩涵', '$2y$10$xH017.5KTnc.L7OPQJYcQeQ29XaJhbRl2Y3ZVQZtJ4ulhf4Id9UwS', 'mail1947@test.com', '0911623602', '臺中市現岱路82號 ', '1992-03-18', '林詩涵', 1, 0, NULL, '2022-09-21 15:21:15', NULL, NULL, NULL),
(577, '吳冠霖', '$2y$10$cO4O69hPA/QOEJy/CavmHumWtmUvkQYP1Okn.O5bewNPNz2IzMeLe', 'mail3507@test.com', '0911536701', '臺東縣安朔13號 ', '1988-08-15', '吳冠霖', 1, 0, NULL, '2022-09-21 15:21:15', NULL, NULL, NULL),
(578, '張宇軒', '$2y$10$VSf2kGJdiYb73A3iSVC4dONHI2AOCuIib3ybw0X7yvthn8lFJP3xS', 'mail7404@test.com', '0911788235', '臺東縣四維路３段45號 ', '1999-08-28', '張宇軒', 1, 0, NULL, '2022-09-21 15:21:15', NULL, NULL, NULL),
(579, '曹承翰', '$2y$10$crEDx0bn.0ToJmuuaWs.n.k/bZtVwYtFWKk13ZOidfoHN557x88fS', 'mail5751@test.com', '0911395252', '彰化縣仁德路72號 ', '1994-02-01', '曹承翰', 1, 0, NULL, '2022-09-21 15:21:15', NULL, NULL, NULL),
(580, '吳宗翰', '$2y$10$jnMCqZsQeKGUfAPdMckhTuR/G1PVBQDIC2tdFbqu7nE6sa./V9ayK', 'mail9449@test.com', '0911694324', '新竹市茄苳東街61號 ', '1989-05-02', '吳宗翰', 1, 0, NULL, '2022-09-21 15:21:15', NULL, NULL, NULL),
(581, '劉冠霖', '$2y$10$fN/dtEbAyRswQYBFChgtr.9MCG9mNi/UlDFwgKoe0lOgv/PPp6bky', 'mail5482@test.com', '0911181015', '桃園市十八家35號 ', '1987-08-21', '劉冠霖', 1, 0, NULL, '2022-09-21 15:21:15', NULL, NULL, NULL),
(582, '郭郁婷', '$2y$10$Q5LqlEj3UHDHeMJO9pclNeNqno4wVCiSntMHDcz4hCTTNyrZiJvfa', 'mail6423@test.com', '0911561064', '臺北市松信路3號 ', '1995-01-30', '郭郁婷', 1, 0, NULL, '2022-09-21 15:21:15', NULL, NULL, NULL),
(583, '黃詩涵', '$2y$10$pBNhkdwGGsjr4YJbLpwjjObo.vbbH.w.efYhDUJIxdFOHCGlZLXua', 'mail2716@test.com', '0911523760', '嘉義縣中興街9號 ', '1986-09-24', '黃詩涵', 1, 0, NULL, '2022-09-21 15:21:15', NULL, NULL, NULL),
(584, '袁雅婷', '$2y$10$p1XQBWcMOqJSXPo0dcUH2.t6emKnvRcL5F3HDdqmcDV2a1VGWRS9e', 'mail1099@test.com', '0911702851', '南投縣法治巷37號 ', '1989-03-25', '袁雅婷', 1, 0, NULL, '2022-09-21 15:21:15', NULL, NULL, NULL),
(585, '黃冠廷', '$2y$10$XJbDOjejuC7pANo2m3yCrudcQBHGRZ7T4sts7AnoISGc4UGURODqi', 'mail2131@test.com', '0911265392', '苗栗縣五湖街64號 ', '1995-01-13', '黃冠廷', 1, 0, NULL, '2022-09-21 15:21:15', NULL, NULL, NULL),
(586, '徐彥廷', '$2y$10$DwsDS4Ep.ZFtArjRAMZPreTReMdEtZWe.gKlsW4HWZfKjdTw1gLqm', 'mail5489@test.com', '0911722705', '金門縣上庫6號 ', '1988-05-13', '徐彥廷', 1, 0, NULL, '2022-09-21 15:21:15', NULL, NULL, NULL),
(587, '沈詩涵', '$2y$10$M1rCXrxDl9/T3CYPALq/FejSNQUS0blsgswjThSurZrFkgthWCV56', 'mail5883@test.com', '0911816130', '新竹市關新東路64號 ', '1992-11-30', '沈詩涵', 1, 0, NULL, '2022-09-21 15:21:15', NULL, NULL, NULL),
(588, '趙柏翰', '$2y$10$ATdur8sUHBcnliEqa1dKsewG7liXjFlfMxg3ZGzOccsTAf6KOMgY.', 'mail2604@test.com', '0911542372', '彰化縣新城街39號 ', '1986-06-10', '趙柏翰', 1, 0, NULL, '2022-09-21 15:21:15', NULL, NULL, NULL),
(589, '呂鈺婷', '$2y$10$eg/BdFuu16mCdXeu9plzF.bjLOX6vntvDjxc5vYQ6s24UNCpuSI5y', 'mail3440@test.com', '0911240410', '新北市中央路四十八巷吉祥園49號 ', '1990-11-07', '呂鈺婷', 1, 0, NULL, '2022-09-21 15:21:15', NULL, NULL, NULL),
(590, '孫郁婷', '$2y$10$nBjTxRyqz/cNj7n5i1rtEeFk9fnNuQsiLnaX.dzgauZGR6qkz/EE6', 'mail1067@test.com', '0911735948', '雲林縣新塭89號 ', '1996-06-03', '孫郁婷', 1, 0, NULL, '2022-09-21 15:21:15', NULL, NULL, NULL),
(591, '袁雅婷', '$2y$10$FAOl5rYMpjPf.FM6JUvJpOpHN0r/AFsbntK7GHLQHL5xDEUFKFmhG', 'mail9169@test.com', '0911831376', '高雄市堀江街21號 ', '1992-07-14', '袁雅婷', 1, 0, NULL, '2022-09-21 15:21:15', NULL, NULL, NULL),
(592, '周怡萱', '$2y$10$5jeRVpSKEN4WzftugDreoua2JK7zhyz3Ojza1OJ7tYIKw5Nv38FBy', 'mail4824@test.com', '0911179676', '金門縣仁愛街34號 ', '1987-03-24', '周怡萱', 1, 0, NULL, '2022-09-21 15:21:15', NULL, NULL, NULL),
(593, '傅郁婷', '$2y$10$QU9DDHjTUK6sNjgz9WgVHeSebiLOzI.j4jt6biRLPtlTAPOCdRI6a', 'mail9866@test.com', '0911717012', '基隆市復旦路19號 ', '1986-12-22', '傅郁婷', 1, 0, NULL, '2022-09-21 15:21:15', NULL, NULL, NULL),
(594, '劉冠廷', '$2y$10$dmHolliOzaDn6qiydcY1..p21HKZSFJ9NISBwGjSxAaBOvaurvW.K', 'mail9053@test.com', '0911502769', '南投縣富貴路30號 ', '1991-10-24', '劉冠廷', 1, 0, NULL, '2022-09-21 15:21:16', NULL, NULL, NULL),
(595, '李宗翰', '$2y$10$LIL0wuYKBnVbNHEw72gJye2HxWqh1sIOWMizd4VSMr/ohNgbTJoqC', 'mail6293@test.com', '0911649220', '南投縣永豐街58號 ', '1995-02-17', '李宗翰', 1, 0, NULL, '2022-09-21 15:21:16', NULL, NULL, NULL),
(599, '唐怡婷', '$2y$10$lG/V8U01ot8yx11yxXsACuFGyycOoe3Sc9TU6vQTvAfKSHn5eueXi', 'mail2818@test.com', '0911440249', '嘉義市大同路40號 ', '1987-11-16', '唐怡婷', 1, 0, NULL, '2022-09-21 15:21:16', NULL, NULL, NULL),
(600, '曹詩涵', '$2y$10$gzk0vMlofoaZKqwcCas3l.kqbylbXleDixlAui0YCwADHjp5wa3ee', 'mail1122@test.com', '0911837699', '新竹市園區二路73號 ', '1998-08-28', '曹詩涵', 1, 0, NULL, '2022-09-21 15:21:16', NULL, NULL, NULL),
(611, '王彥廷', '$2y$10$ZBGDEAJSojKjc3rJqBgTrOk76yo5pkkZ8ig2y99VZTTACVPbOtr4.', 'mail6597@test.com', '0911912280', '新北市藤寮坑91號 ', '1989-12-04', '王彥廷', 1, 0, NULL, '2022-09-21 15:21:16', NULL, NULL, NULL),
(612, '傅鈺婷', '$2y$10$aRceYIsKVkoVcqFIbZND..YZGGrl3XyScgC.GZh0FSJDPmASw0UD2', 'mail8389@test.com', '0911861170', '高雄市南沙52號 ', '1992-04-09', '傅鈺婷', 1, 0, NULL, '2022-09-21 15:21:16', NULL, NULL, NULL),
(633, '測試', '$2y$10$i4xue40mjTs64SaNMgmo4.thXVQuj2TGt624flMC3Gz7v705LPfVO', 'test@test.com', '0911223344', '高雄市南台路64號', '1999-09-06', '測試暱稱', 1, 0, '200246559f8227d72de75faaa517ce0d.jpg', '2022-09-21 16:19:04', NULL, NULL, NULL),
(643, 'test3', '$2y$10$BIRb7p537HhQGIH2vif8Fuz1wZtFekWJdpA8IJRoXcpUdK7trztKu', 'test3@test.com', '0911223344', 'aaa', '2022-08-29', 'test3', 1, 0, '', '2022-09-22 16:33:09', NULL, NULL, NULL),
(645, 'test4', '$2y$10$0W74nQVUYpEtH0bHlEZiTO609pf59eeY/j/4lYteuQmgdprrA1YGq', 'test4@test.com', '0911223344', 'aaa', '2022-08-28', 'test4', 1, 0, 'b256488ff6bb5a5a2dbdc7c1783d67ef.jpg', '2022-09-22 16:42:14', NULL, NULL, NULL),
(668, '陳誠成', '2222', 'chen@test.com', '0911223344', '台北市大安路一段1號', '1999-09-09', '阿成', 1, 1120, '185ccc3d-f4a3-4d42-8eae-5a1900394942.png', '2022-11-18 16:46:51', '自介測試\r\n換行測試', NULL, NULL),
(669, '林陵', '123456', 'lin@test.com', '0911223344', '', '1999-01-01', '林林', 1, 2240, '', '2022-11-18 16:51:01', '我的自介\r\n1\r\n2\r\n3', NULL, NULL),
(670, '吳梧', '333', 'woo@test.com', '0912345678', '', NULL, '嗚嗚嗚', 1, 7225, 'b915fefc-747e-48c3-9f08-330606dc768c.jpg', '2022-11-21 15:42:08', '唔唔唔唔唔唔唔唔唔唔唔唔唔唔唔唔唔唔唔唔唔唔唔唔唔唔唔\r\n唔唔唔', NULL, NULL);

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
  MODIFY `member_sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=671;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
