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
-- 資料庫： `cbf108055_4_資料庫`
--

-- --------------------------------------------------------

--
-- 資料表結構 `員工基本資料`
--

CREATE TABLE `員工基本資料` (
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
-- 傾印資料表的資料 `員工基本資料`
--

INSERT INTO `員工基本資料` (`員工編號`, `部門`, `姓名`, `性別`, `職稱`, `身分證字號`, `生日`, `手機`, `住址`, `電子信箱`, `薪水`) VALUES
(000001, '營業', '陳郁潔', '女', '業務助理', 's225697488', '2000-07-03', '0988877799', '屏東縣屏東市民生東路51號', 'fff@gmail.com', 30000),
(000002, '公關', '張三', '男', '助理', 's154789965', '2000-04-10', '0944789632', '屏東縣屏東市民生北路34號', 'ccc@gmail.com', 35000),
(000003, '製造', '李四', '男', '業務助理', 'a165236541', '2000-12-07', '0977722279', '屏東縣屏東市民生南路8號', 'aaa@gmail.com', 30000);

-- --------------------------------------------------------

--
-- 資料表結構 `員工資料`
--

CREATE TABLE `員工資料` (
  `員工編號` int(2) DEFAULT NULL,
  `身份證字號` varchar(10) DEFAULT NULL,
  `員工姓名` varchar(3) DEFAULT NULL,
  `聯絡住址` varchar(14) DEFAULT NULL,
  `性別` varchar(1) DEFAULT NULL,
  `職稱` varchar(5) DEFAULT NULL,
  `電話` varchar(9) DEFAULT NULL,
  `傳真` varchar(9) DEFAULT NULL,
  `E-mail` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 傾印資料表的資料 `員工資料`
--

INSERT INTO `員工資料` (`員工編號`, `身份證字號`, `員工姓名`, `聯絡住址`, `性別`, `職稱`, `電話`, `傳真`, `E-mail`) VALUES
(1, 'A980123456', '江高舉', '台中縣大雅鄉中山路10號', '男', '總經理', '045551111', '045551112', ''),
(2, 'B893241233', '鄭昱', '台中市中明街109號4樓', '男', '出版部經理', '042223333', '042223334', ''),
(3, 'C234134565', '許進標', '台中市松竹路111號6樓', '男', '人事部經理', '041234321', '041234322', ''),
(4, 'D432165421', '王瑞琦', '台中縣大里市123號', '男', '維修部經理', '043129876', '043126789', ''),
(5, 'E182394921', '郭姮劭', '台中縣沙鹿鄉光明里123號', '女', '會計部經理', '045465555', '045645556', ''),
(6, 'F932134126', '葉芳郁', '台中市崇德路三段105號', '女', '業務部經理', '049722222', '049721111', ''),
(7, 'H478213498', '林錦雀', '台中市僅北街411號5樓', '女', '編輯部經理', '042389668', '042389669', ''),
(8, 'I120507777', '廖佐育', '台中市僅忠街455號5樓', '男', '專任講師', '042229999', '', ''),
(9, 'J100234123', '張亞東', '台中市大東街12號5樓', '男', '專任講師', '044321234', '', ''),
(10, 'K987213434', '蔡秋勇', '台中縣太平鄉仁愛路110號', '男', '專任講師', '041000001', '', ''),
(11, 'L919283476', '許淑玲', '台中市中明路123巷10號', '女', '兼任講師', '041100011', '', ''),
(12, 'M769812344', '趙麗婷', '台中縣烏日鄉忠孝路213號', '女', '兼任講師', '', '', ''),
(13, 'N928323319', '周曉梅', '台中縣沙鹿鎮中沙路123號', '女', '工讀生', '', '', ''),
(14, 'O120044215', '陳惠貞', '台中市福星街123-4號8樓', '女', '工讀生', '042165534', '', ''),
(15, 'P125466662', '袁雄賓', '台中市福興路111-1號5樓', '男', '工讀生', '', '', '');

-- --------------------------------------------------------

--
-- 資料表結構 `期中考成績`
--

CREATE TABLE `期中考成績` (
  `學號` varchar(9) DEFAULT NULL,
  `姓名` varchar(3) DEFAULT NULL,
  `國文` int(2) DEFAULT NULL,
  `英文` int(2) DEFAULT NULL,
  `會計` int(2) DEFAULT NULL,
  `經濟` int(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 傾印資料表的資料 `期中考成績`
--

INSERT INTO `期中考成績` (`學號`, `姓名`, `國文`, `英文`, `會計`, `經濟`) VALUES
('AAA104001', '陳正文', 75, 44, 58, 58),
('AAA104002', '丁語翰', 41, 98, 58, 99),
('AAA104003', '李勝雄', 72, 49, 71, 57),
('AAA104004', '郭炎慶', 99, 84, 64, 86),
('AAA104005', '邱麗文', 96, 86, 62, 96),
('AAA104006', '黃文儒', 92, 75, 61, 49),
('AAA104007', '孟慶齡', 59, 67, 91, 60),
('AAA104008', '張小英', 76, 71, 73, 73),
('AAA104009', '陳明麗', 73, 97, 59, 92),
('AAA104010', '秦惠芬', 80, 49, 75, 77),
('AAA104011', '李郁雪', 47, 74, 89, 89),
('AAA104012', '陳崇銘', 86, 80, 89, 90),
('AAA104013', '陳宏輝', 59, 65, 63, 56),
('AAA104014', '江學成', 95, 98, 60, 74),
('AAA104015', '林玉雯', 44, 25, 50, 52),
('AAA104016', '黃東慶', 95, 89, 74, 47),
('AAA104017', '林俊勇', 85, 73, 91, 84),
('AAA104018', '康書澤', 85, 89, 84, 50),
('AAA104019', '蔡韻華', 80, 80, 81, 51),
('AAA104020', '柯緒德', 46, 89, 95, 68),
('AAA104021', '沈欣慧', 71, 70, 91, 81),
('AAA104022', '彭家達', 43, 98, 86, 41),
('AAA104023', '張德良', 78, 54, 46, 49),
('AAA104024', '周芳瑤', 73, 86, 73, 89);

-- --------------------------------------------------------

--
-- 替換檢視表以便查看 `查詢 3a - 女工讀生`
-- (請參考以下實際畫面)
--
CREATE TABLE `查詢 3a - 女工讀生` (
`員工編號` int(2)
,`身份證字號` varchar(10)
,`員工姓名` varchar(3)
,`聯絡住址` varchar(14)
,`性別` varchar(1)
,`職稱` varchar(5)
,`電話` varchar(9)
,`傳真` varchar(9)
,`E-mail` varchar(10)
);

-- --------------------------------------------------------

--
-- 替換檢視表以便查看 `查詢 3b - 台中市女性或工讀生`
-- (請參考以下實際畫面)
--
CREATE TABLE `查詢 3b - 台中市女性或工讀生` (
`員工編號` int(2)
,`身份證字號` varchar(10)
,`員工姓名` varchar(3)
,`聯絡住址` varchar(14)
,`性別` varchar(1)
,`職稱` varchar(5)
,`電話` varchar(9)
,`傳真` varchar(9)
,`E-mail` varchar(10)
);

-- --------------------------------------------------------

--
-- 替換檢視表以便查看 `查詢 3c - 台中縣經理`
-- (請參考以下實際畫面)
--
CREATE TABLE `查詢 3c - 台中縣經理` (
`員工編號` int(2)
,`身份證字號` varchar(10)
,`員工姓名` varchar(3)
,`聯絡住址` varchar(14)
,`性別` varchar(1)
,`職稱` varchar(5)
,`電話` varchar(9)
,`傳真` varchar(9)
,`E-mail` varchar(10)
);

-- --------------------------------------------------------

--
-- 替換檢視表以便查看 `查詢 3d - 職稱不是經理`
-- (請參考以下實際畫面)
--
CREATE TABLE `查詢 3d - 職稱不是經理` (
`員工編號` int(2)
,`身份證字號` varchar(10)
,`員工姓名` varchar(3)
,`聯絡住址` varchar(14)
,`性別` varchar(1)
,`職稱` varchar(5)
,`電話` varchar(9)
,`傳真` varchar(9)
,`E-mail` varchar(10)
);

-- --------------------------------------------------------

--
-- 替換檢視表以便查看 `查詢 4a - 單價介於一萬與兩萬間`
-- (請參考以下實際畫面)
--
CREATE TABLE `查詢 4a - 單價介於一萬與兩萬間` (
`編號` int(2)
,`產品名稱` varchar(27)
,`類別` varchar(14)
,`單價` int(5)
,`入庫日期` varchar(10)
,`現金` varchar(10)
);

-- --------------------------------------------------------

--
-- 替換檢視表以便查看 `查詢 4b - 類別 developer or games`
-- (請參考以下實際畫面)
--
CREATE TABLE `查詢 4b - 類別 developer or games` (
`編號` int(2)
,`產品名稱` varchar(27)
,`類別` varchar(14)
,`單價` int(5)
,`入庫日期` varchar(10)
,`現金` varchar(10)
);

-- --------------------------------------------------------

--
-- 替換檢視表以便查看 `查詢 4c - 兩三萬的 microsoft 產品`
-- (請參考以下實際畫面)
--
CREATE TABLE `查詢 4c - 兩三萬的 microsoft 產品` (
`編號` int(2)
,`產品名稱` varchar(27)
,`類別` varchar(14)
,`單價` int(5)
,`入庫日期` varchar(10)
,`現金` varchar(10)
);

-- --------------------------------------------------------

--
-- 替換檢視表以便查看 `查詢 4d - 2500 以下的 games 或 5000 以下的 office 軟體`
-- (請參考以下實際畫面)
--
CREATE TABLE `查詢 4d - 2500 以下的 games 或 5000 以下的 office 軟體` (
`編號` int(2)
,`產品名稱` varchar(27)
,`類別` varchar(14)
,`單價` int(5)
,`入庫日期` varchar(10)
,`現金` varchar(10)
);

-- --------------------------------------------------------

--
-- 替換檢視表以便查看 `查詢 5a - 職稱經理`
-- (請參考以下實際畫面)
--
CREATE TABLE `查詢 5a - 職稱經理` (
`員工編號` int(2)
,`身份證字號` varchar(10)
,`員工姓名` varchar(3)
,`職稱` varchar(5)
);

-- --------------------------------------------------------

--
-- 替換檢視表以便查看 `查詢 5b - 工讀生`
-- (請參考以下實際畫面)
--
CREATE TABLE `查詢 5b - 工讀生` (
`員工編號` int(2)
,`員工姓名` varchar(3)
,`聯絡住址` varchar(14)
,`電話` varchar(9)
);

-- --------------------------------------------------------

--
-- 替換檢視表以便查看 `查詢 6a - 會計、經濟都超過 80 分`
-- (請參考以下實際畫面)
--
CREATE TABLE `查詢 6a - 會計、經濟都超過 80 分` (
`學號` varchar(9)
,`姓名` varchar(3)
,`國文` int(2)
,`英文` int(2)
,`會計` int(2)
,`經濟` int(2)
);

-- --------------------------------------------------------

--
-- 替換檢視表以便查看 `查詢 6b - 平均前五名`
-- (請參考以下實際畫面)
--
CREATE TABLE `查詢 6b - 平均前五名` (
`學號` varchar(9)
,`姓名` varchar(3)
,`國文` int(2)
,`英文` int(2)
,`會計` int(2)
,`經濟` int(2)
,`平均` decimal(17,4)
);

-- --------------------------------------------------------

--
-- 資料表結構 `產品清單`
--

CREATE TABLE `產品清單` (
  `產品編號` char(6) NOT NULL,
  `產品名稱` char(40) NOT NULL,
  `類別` char(10) NOT NULL,
  `單價` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 傾印資料表的資料 `產品清單`
--

INSERT INTO `產品清單` (`產品編號`, `產品名稱`, `類別`, `單價`) VALUES
('P-0001', '光碟機', '電腦周邊設備', 1780),
('P-0003', '鍵盤', '電腦周邊設備', 540),
('P-0009', '便條紙', '文具', 20),
('P-0010', '麥克筆', '文具', 25),
('P-0011', '滑鼠', '電腦周邊設備', 199);

-- --------------------------------------------------------

--
-- 資料表結構 `產品資料`
--

CREATE TABLE `產品資料` (
  `編號` int(2) DEFAULT NULL,
  `產品名稱` varchar(27) DEFAULT NULL,
  `類別` varchar(14) DEFAULT NULL,
  `單價` int(5) DEFAULT NULL,
  `入庫日期` varchar(10) DEFAULT NULL,
  `現金` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 傾印資料表的資料 `產品資料`
--

INSERT INTO `產品資料` (`編號`, `產品名稱`, `類別`, `單價`, `入庫日期`, `現金`) VALUES
(1, 'Microsoft Office 中文版', 'Office', 23000, '', ''),
(2, 'Microsoft Office 英文版', 'Office', 21000, '', ''),
(3, 'Microsoft Access 中文版', 'Office', 6000, '', ''),
(4, 'Microsoft Access 英文版', 'Office', 4500, '', ''),
(5, 'Microsoft Word 中文版', 'Office', 6800, '', ''),
(6, 'Microsoft Word 英文版', 'Office', 6000, '', ''),
(7, 'Microsoft Excel 中文版', 'Office', 7200, '', ''),
(8, 'Microsoft Excel 英文版', 'Office', 7000, '', ''),
(9, 'Microsoft PowerPoint 中文版', 'Office', 6800, '', ''),
(10, 'Microsoft PowerPoint 英文版', 'Office', 6000, '', ''),
(11, 'Microsoft Project 中文版', 'Office', 8000, '', ''),
(12, 'Microsoft Project 英文版', 'Office', 7500, '', ''),
(13, 'Microsoft Works 中文版', 'Office', 18000, '', ''),
(14, 'Microsoft Works 英文版', 'Office', 17000, '', ''),
(15, 'Microsoft FrontPage', 'Office', 4500, '', ''),
(16, 'Microsoft Visual Basic 中文版', 'Developer', 20000, '', ''),
(17, 'Microsoft Visual Basic 英文版', 'Developer', 18000, '', ''),
(18, 'Microsoft Visual FoxPro 中文版', 'Developer', 21000, '', ''),
(19, 'Microsoft Visual FoxPro 英文版', 'Developer', 20000, '', ''),
(20, 'Microsoft Visual C++', 'Developer', 32000, '', ''),
(21, 'Visual J++', 'Developer', 25000, '', ''),
(22, 'Visual Source Save', 'Developer', 18000, '', ''),
(23, 'Close Combat', 'Games', 2400, '', ''),
(24, 'Deadly Tide', 'Games', 3200, '', ''),
(25, 'Fury 3', 'Games', 1800, '', ''),
(26, 'GEX', 'Games', 2000, '', ''),
(27, 'Golf', 'Games', 3000, '', ''),
(28, 'Flight Simulator', 'Games', 3000, '', ''),
(29, 'Hellbender', 'Games', 3200, '', ''),
(30, 'Monster Truck Madness', 'Games', 2200, '', ''),
(31, 'NBA Full Court Press', 'Games', 2700, '', ''),
(32, 'Soccer', 'Games', 3200, '', ''),
(33, 'Windows NT Server 中文版', 'BackOffice', 18000, '', ''),
(34, 'Exchange Server 中文版', 'BackOffice', 15000, '', ''),
(35, 'SQL Server', 'BackOffice', 12000, '', ''),
(36, 'Internet Information Server', 'BackOffice', 15000, '', ''),
(37, 'Microsoft Proxy Server', 'BackOffice', 18000, '', ''),
(38, 'Microsoft SNA Server', 'BackOffice', 18000, '', ''),
(39, 'Systems Management Server', 'BackOffice', 15000, '', ''),
(40, 'Windows 95 中文版', 'Windows Family', 6000, '', ''),
(41, 'Microsoft Plus 中文版', 'Windows Family', 2500, '', ''),
(42, 'Windows NT Workstation 中文版', 'Windows Family', 8000, '', ''),
(43, 'Windows NT Server 中文版', 'Windows Family', 15000, '', ''),
(44, 'Internet Products', 'Windows Family', 4800, '', ''),
(45, 'Internet Explorer 中文版', 'Windows Family', 3000, '', ''),
(46, 'Internet phone', 'Windows Family', 2000, '', '');

-- --------------------------------------------------------

--
-- 資料表結構 `類股代碼`
--

CREATE TABLE `類股代碼` (
  `代碼` varchar(2) DEFAULT NULL,
  `類股` varchar(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 傾印資料表的資料 `類股代碼`
--

INSERT INTO `類股代碼` (`代碼`, `類股`) VALUES
('00', '基金'),
('11', '水泥'),
('12', '食品'),
('13', '塑膠'),
('14', '紡織'),
('15', '電機'),
('16', '電纜'),
('17', '化學'),
('18', '玻璃'),
('19', '造紙'),
('20', '鋼鐵'),
('21', '橡膠'),
('22', '汽車'),
('23', '電子'),
('24', '電子'),
('25', '營建'),
('26', '船運'),
('27', '觀光'),
('28', '金融'),
('29', '百貨'),
('98', '綜合'),
('99', '其他');

-- --------------------------------------------------------

--
-- 檢視表結構 `查詢 3a - 女工讀生`
--
DROP TABLE IF EXISTS `查詢 3a - 女工讀生`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `查詢 3a - 女工讀生`  AS  select `員工資料`.`員工編號` AS `員工編號`,`員工資料`.`身份證字號` AS `身份證字號`,`員工資料`.`員工姓名` AS `員工姓名`,`員工資料`.`聯絡住址` AS `聯絡住址`,`員工資料`.`性別` AS `性別`,`員工資料`.`職稱` AS `職稱`,`員工資料`.`電話` AS `電話`,`員工資料`.`傳真` AS `傳真`,`員工資料`.`E-mail` AS `E-mail` from `員工資料` where ((`員工資料`.`性別` = '女') and (`員工資料`.`職稱` = '工讀生')) ;

-- --------------------------------------------------------

--
-- 檢視表結構 `查詢 3b - 台中市女性或工讀生`
--
DROP TABLE IF EXISTS `查詢 3b - 台中市女性或工讀生`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `查詢 3b - 台中市女性或工讀生`  AS  select `員工資料`.`員工編號` AS `員工編號`,`員工資料`.`身份證字號` AS `身份證字號`,`員工資料`.`員工姓名` AS `員工姓名`,`員工資料`.`聯絡住址` AS `聯絡住址`,`員工資料`.`性別` AS `性別`,`員工資料`.`職稱` AS `職稱`,`員工資料`.`電話` AS `電話`,`員工資料`.`傳真` AS `傳真`,`員工資料`.`E-mail` AS `E-mail` from `員工資料` where (((`員工資料`.`聯絡住址` like '台中市%') and (`員工資料`.`性別` like '女')) or (`員工資料`.`職稱` = '工讀生')) ;

-- --------------------------------------------------------

--
-- 檢視表結構 `查詢 3c - 台中縣經理`
--
DROP TABLE IF EXISTS `查詢 3c - 台中縣經理`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `查詢 3c - 台中縣經理`  AS  select `員工資料`.`員工編號` AS `員工編號`,`員工資料`.`身份證字號` AS `身份證字號`,`員工資料`.`員工姓名` AS `員工姓名`,`員工資料`.`聯絡住址` AS `聯絡住址`,`員工資料`.`性別` AS `性別`,`員工資料`.`職稱` AS `職稱`,`員工資料`.`電話` AS `電話`,`員工資料`.`傳真` AS `傳真`,`員工資料`.`E-mail` AS `E-mail` from `員工資料` where ((`員工資料`.`聯絡住址` like '%台中縣%') and (`員工資料`.`職稱` like '%經理%')) ;

-- --------------------------------------------------------

--
-- 檢視表結構 `查詢 3d - 職稱不是經理`
--
DROP TABLE IF EXISTS `查詢 3d - 職稱不是經理`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `查詢 3d - 職稱不是經理`  AS  select `員工資料`.`員工編號` AS `員工編號`,`員工資料`.`身份證字號` AS `身份證字號`,`員工資料`.`員工姓名` AS `員工姓名`,`員工資料`.`聯絡住址` AS `聯絡住址`,`員工資料`.`性別` AS `性別`,`員工資料`.`職稱` AS `職稱`,`員工資料`.`電話` AS `電話`,`員工資料`.`傳真` AS `傳真`,`員工資料`.`E-mail` AS `E-mail` from `員工資料` where (not((`員工資料`.`職稱` like '經理'))) ;

-- --------------------------------------------------------

--
-- 檢視表結構 `查詢 4a - 單價介於一萬與兩萬間`
--
DROP TABLE IF EXISTS `查詢 4a - 單價介於一萬與兩萬間`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `查詢 4a - 單價介於一萬與兩萬間`  AS  select `產品資料`.`編號` AS `編號`,`產品資料`.`產品名稱` AS `產品名稱`,`產品資料`.`類別` AS `類別`,`產品資料`.`單價` AS `單價`,`產品資料`.`入庫日期` AS `入庫日期`,`產品資料`.`現金` AS `現金` from `產品資料` where (`產品資料`.`單價` between 10000 and 20000) ;

-- --------------------------------------------------------

--
-- 檢視表結構 `查詢 4b - 類別 developer or games`
--
DROP TABLE IF EXISTS `查詢 4b - 類別 developer or games`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `查詢 4b - 類別 developer or games`  AS  select `產品資料`.`編號` AS `編號`,`產品資料`.`產品名稱` AS `產品名稱`,`產品資料`.`類別` AS `類別`,`產品資料`.`單價` AS `單價`,`產品資料`.`入庫日期` AS `入庫日期`,`產品資料`.`現金` AS `現金` from `產品資料` where (`產品資料`.`類別` in ('Developer','Game')) ;

-- --------------------------------------------------------

--
-- 檢視表結構 `查詢 4c - 兩三萬的 microsoft 產品`
--
DROP TABLE IF EXISTS `查詢 4c - 兩三萬的 microsoft 產品`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `查詢 4c - 兩三萬的 microsoft 產品`  AS  select `產品資料`.`編號` AS `編號`,`產品資料`.`產品名稱` AS `產品名稱`,`產品資料`.`類別` AS `類別`,`產品資料`.`單價` AS `單價`,`產品資料`.`入庫日期` AS `入庫日期`,`產品資料`.`現金` AS `現金` from `產品資料` where ((`產品資料`.`產品名稱` like 'Microsoft%') and (`產品資料`.`單價` between 20000 and 30000)) ;

-- --------------------------------------------------------

--
-- 檢視表結構 `查詢 4d - 2500 以下的 games 或 5000 以下的 office 軟體`
--
DROP TABLE IF EXISTS `查詢 4d - 2500 以下的 games 或 5000 以下的 office 軟體`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `查詢 4d - 2500 以下的 games 或 5000 以下的 office 軟體`  AS  select `產品資料`.`編號` AS `編號`,`產品資料`.`產品名稱` AS `產品名稱`,`產品資料`.`類別` AS `類別`,`產品資料`.`單價` AS `單價`,`產品資料`.`入庫日期` AS `入庫日期`,`產品資料`.`現金` AS `現金` from `產品資料` where (((`產品資料`.`類別` = 'Games') and (`產品資料`.`單價` < 2500)) or ((`產品資料`.`類別` = 'Office') and (`產品資料`.`單價` < 5000))) ;

-- --------------------------------------------------------

--
-- 檢視表結構 `查詢 5a - 職稱經理`
--
DROP TABLE IF EXISTS `查詢 5a - 職稱經理`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `查詢 5a - 職稱經理`  AS  select `員工資料`.`員工編號` AS `員工編號`,`員工資料`.`身份證字號` AS `身份證字號`,`員工資料`.`員工姓名` AS `員工姓名`,`員工資料`.`職稱` AS `職稱` from `員工資料` where (`員工資料`.`職稱` like '%經理') ;

-- --------------------------------------------------------

--
-- 檢視表結構 `查詢 5b - 工讀生`
--
DROP TABLE IF EXISTS `查詢 5b - 工讀生`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `查詢 5b - 工讀生`  AS  select `員工資料`.`員工編號` AS `員工編號`,`員工資料`.`員工姓名` AS `員工姓名`,`員工資料`.`聯絡住址` AS `聯絡住址`,`員工資料`.`電話` AS `電話` from `員工資料` where (`員工資料`.`職稱` like '工讀生') order by `員工資料`.`員工編號` desc ;

-- --------------------------------------------------------

--
-- 檢視表結構 `查詢 6a - 會計、經濟都超過 80 分`
--
DROP TABLE IF EXISTS `查詢 6a - 會計、經濟都超過 80 分`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `查詢 6a - 會計、經濟都超過 80 分`  AS  select `期中考成績`.`學號` AS `學號`,`期中考成績`.`姓名` AS `姓名`,`期中考成績`.`國文` AS `國文`,`期中考成績`.`英文` AS `英文`,`期中考成績`.`會計` AS `會計`,`期中考成績`.`經濟` AS `經濟` from `期中考成績` where ((`期中考成績`.`會計` > 80) and (`期中考成績`.`經濟` > 80)) order by `期中考成績`.`會計` desc,`期中考成績`.`經濟` desc ;

-- --------------------------------------------------------

--
-- 檢視表結構 `查詢 6b - 平均前五名`
--
DROP TABLE IF EXISTS `查詢 6b - 平均前五名`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `查詢 6b - 平均前五名`  AS  select `期中考成績`.`學號` AS `學號`,`期中考成績`.`姓名` AS `姓名`,`期中考成績`.`國文` AS `國文`,`期中考成績`.`英文` AS `英文`,`期中考成績`.`會計` AS `會計`,`期中考成績`.`經濟` AS `經濟`,((((`期中考成績`.`國文` + `期中考成績`.`英文`) + `期中考成績`.`會計`) + `期中考成績`.`經濟`) / 4) AS `平均` from `期中考成績` order by `平均` desc limit 5 ;

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `員工基本資料`
--
ALTER TABLE `員工基本資料`
  ADD PRIMARY KEY (`員工編號`);

--
-- 資料表索引 `產品清單`
--
ALTER TABLE `產品清單`
  ADD PRIMARY KEY (`產品編號`);

--
-- 在傾印的資料表使用自動遞增(AUTO_INCREMENT)
--

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `員工基本資料`
--
ALTER TABLE `員工基本資料`
  MODIFY `員工編號` int(6) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
