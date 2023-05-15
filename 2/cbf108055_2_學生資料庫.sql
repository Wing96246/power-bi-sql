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
-- 資料庫： `cbf108055_2_學生資料庫`
--

-- --------------------------------------------------------

--
-- 資料表結構 `cbf108055_2_學生基本資料`
--

CREATE TABLE `cbf108055_2_學生基本資料` (
  `學號` char(9) DEFAULT NULL,
  `姓名` char(4) DEFAULT NULL,
  `生日` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- 傾印資料表的資料 `cbf108055_2_學生基本資料`
--

INSERT INTO `cbf108055_2_學生基本資料` (`學號`, `姓名`, `生日`) VALUES
('cbf108055', '陳郁潔', '2001-05-22'),
('cac108033', '張三', '2008-04-28'),
('cae108022', '李四', '2001-09-28');

-- --------------------------------------------------------

--
-- 資料表結構 `cbf108055_2_學生成績`
--

CREATE TABLE `cbf108055_2_學生成績` (
  `學號` char(9) DEFAULT NULL,
  `中會` int(11) DEFAULT NULL,
  `財管` int(11) DEFAULT NULL,
  `保險` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- 傾印資料表的資料 `cbf108055_2_學生成績`
--

INSERT INTO `cbf108055_2_學生成績` (`學號`, `中會`, `財管`, `保險`) VALUES
('cbf108055', 50, 70, 90),
('cac108033', 70, 70, 40),
('cae108022', 60, 50, 80);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
