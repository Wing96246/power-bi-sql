-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- 主機： localhost
-- 產生時間： 
-- 伺服器版本： 8.0.17
-- PHP 版本： 7.3.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 資料庫： `cnf108055_3_資料庫`
--

-- --------------------------------------------------------

--
-- 資料表結構 `cbf108055_3_員工基本資料`
--

CREATE TABLE `cbf108055_3_員工基本資料` (
  `員工編號` int(6) UNSIGNED ZEROFILL NOT NULL,
  `部門` char(6) NOT NULL,
  `姓名` char(4) NOT NULL,
  `性別` set('男','女') NOT NULL,
  `職稱` char(10) NOT NULL DEFAULT '業務專員',
  `身分證字號` char(10) NOT NULL,
  `生日` date NOT NULL,
  `手機` char(10) NOT NULL,
  `住址` varchar(40) NOT NULL,
  `電子信箱` varchar(30) NOT NULL,
  `薪水` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 傾印資料表的資料 `cbf108055_3_員工基本資料`
--

INSERT INTO `cbf108055_3_員工基本資料` (`員工編號`, `部門`, `姓名`, `性別`, `職稱`, `身分證字號`, `生日`, `手機`, `住址`, `電子信箱`, `薪水`) VALUES
(000001, '營業', '陳郁潔', '女', '業務助理', 's225697488', '2000-07-03', '0988877799', '屏東縣屏東市民生東路51號', 'fff@gmail.com', 30000),
(000002, '公關', '張三', '男', '助理', 's154789965', '2000-04-10', '0944789632', '屏東縣屏東市民生北路34號', 'ccc@gmail.com', 35000),
(000003, '製造', '李四', '男', '業務助理', 'a165236541', '2000-12-07', '0977722279', '屏東縣屏東市民生南路8號', 'aaa@gmail.com', 30000);

-- --------------------------------------------------------

--
-- 資料表結構 `cbf108055_3_產品清單`
--

CREATE TABLE `cbf108055_3_產品清單` (
  `產品編號` char(6) NOT NULL,
  `產品名稱` char(40) NOT NULL,
  `類別` char(10) NOT NULL,
  `單價` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 傾印資料表的資料 `cbf108055_3_產品清單`
--

INSERT INTO `cbf108055_3_產品清單` (`產品編號`, `產品名稱`, `類別`, `單價`) VALUES
('P-0001', '光碟機', '電腦周邊設備', 1780),
('P-0003', '鍵盤', '電腦周邊設備', 540),
('P-0009', '便條紙', '文具', 20),
('P-0010', '麥克筆', '文具', 25),
('P-0011', '滑鼠', '電腦周邊設備', 199);

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `cbf108055_3_員工基本資料`
--
ALTER TABLE `cbf108055_3_員工基本資料`
  ADD PRIMARY KEY (`員工編號`);

--
-- 資料表索引 `cbf108055_3_產品清單`
--
ALTER TABLE `cbf108055_3_產品清單`
  ADD PRIMARY KEY (`產品編號`);

--
-- 在傾印的資料表使用自動遞增(AUTO_INCREMENT)
--

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `cbf108055_3_員工基本資料`
--
ALTER TABLE `cbf108055_3_員工基本資料`
  MODIFY `員工編號` int(6) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
