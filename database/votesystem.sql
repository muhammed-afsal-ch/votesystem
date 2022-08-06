-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 06, 2022 at 02:24 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `votesystem`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(60) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `photo` varchar(150) NOT NULL,
  `created_on` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `firstname`, `lastname`, `photo`, `created_on`) VALUES
(1, 'mediawing', '$2y$10$aoN3spB/sKuZMdrWob3V3.E0HWS3L1Mr2I7K5hIxdWz2hCy.XE9zC', 'AL ANSAR', 'ARABIC COLLEGE', 'LOG OGVFDBV.png', '2018-04-02');

-- --------------------------------------------------------

--
-- Table structure for table `candidates`
--

CREATE TABLE `candidates` (
  `id` int(11) NOT NULL,
  `position_id` int(11) NOT NULL,
  `firstname` varchar(30) NOT NULL,
  `lastname` varchar(30) NOT NULL,
  `photo` varchar(150) NOT NULL,
  `platform` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `candidates`
--

INSERT INTO `candidates` (`id`, `position_id`, `firstname`, `lastname`, `photo`, `platform`) VALUES
(18, 8, 'FAVAS A', 'OZHUKOOR', '52.jpg', 'USWA 2022-23 UNION PRESIDENT'),
(19, 9, 'SAYYID SHAHADAD VK', 'KODUVALLY', '62.jpg', 'USWA 2022-23 UNION SECRETARY'),
(20, 9, 'SINAN A', 'PALLIKKAL BAZAR', '26.jpg', 'USWA 2022-23 UNION SECRETARY'),
(21, 9, 'ABIN MUHAMMED M', 'MAVOOR', '2.png', 'USWA 2022-23 UNION SECRETARY'),
(25, 8, 'ATHIF PK', 'RAMANATTUKARA', '9.jpg', 'USWA 2022-23 UNION PRESIDENT'),
(26, 8, 'SWALIH C', 'KODUVALLY', '28.jpg', 'USWA 2022-23 UNION PRESIDENT');

-- --------------------------------------------------------

--
-- Table structure for table `positions`
--

CREATE TABLE `positions` (
  `id` int(11) NOT NULL,
  `description` varchar(50) NOT NULL,
  `max_vote` int(11) NOT NULL,
  `priority` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `positions`
--

INSERT INTO `positions` (`id`, `description`, `max_vote`, `priority`) VALUES
(8, 'USWA 2022-23  UNION  PRESIDENT', 1, 1),
(9, 'USWA 2022-23  UNION  SECRETARY', 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `voters`
--

CREATE TABLE `voters` (
  `id` int(11) NOT NULL,
  `voters_id` varchar(15) NOT NULL,
  `password` varchar(60) NOT NULL,
  `firstname` varchar(30) NOT NULL,
  `lastname` varchar(30) NOT NULL,
  `photo` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `voters`
--

INSERT INTO `voters` (`id`, `voters_id`, `password`, `firstname`, `lastname`, `photo`) VALUES
(2, '1001', 'qzVD', 'ABIN', 'D2', '2.png'),
(4, '1002', 'OsTp', 'FARHAN', 'D2', '4.jpg'),
(5, '1003', 'sWmb', 'SABITH', 'D2', '5.jpg'),
(7, '1004', 'txur', 'FAVAS', 'D2', '7.jpg'),
(8, '1005', 'TimN', 'NABEEL', 'D2', '8.jpg'),
(9, '1006', 'xdAR', 'ATHIF', 'D2', '9.jpg'),
(11, '1007', 'XtyO', 'SIBIN', 'D2', '11.jpg'),
(14, '1008', 'GDMu', 'MIDLAJ', 'D2', '14.jpg'),
(19, '1009', 'orqY', 'SHEFEEF', 'D2', '19.jpg'),
(20, '1036', 'ZKIf', 'ARAFATH', 'D1', '20.jpg'),
(26, '1037', 'EjVw', 'SINAN', 'D1', '26.jpg'),
(27, '1010', 'lYQV', 'SHIBILI', 'D2', '27.jpg'),
(28, '1011', 'Jays', 'SWALIH', 'D2', '28.jpg'),
(30, '1038', 'wNWW', 'NIHAL', 'D1', '30.jpg'),
(31, '1039', 'XeYZ', 'SHIJIL', 'D1', '31.jpg'),
(33, '1012', 'qirK', 'MUSTHAFA', 'D2', '33.jpg'),
(34, '1040', 'zkmS', 'MUBASHIR', 'D1', '34.jpg'),
(37, '1041', 'UdwW', 'SABIR', 'D1', '37.jpg'),
(38, '1013', 'upsN', 'JALAL', 'D2', '38.jpg'),
(41, '1042', 'kemW', 'ATHEEF', 'D1', '41.jpg'),
(42, '1014', 'euuM', 'MAJID', 'D2', '42.jpg'),
(43, '1015', 'yDgU', 'NIYAS', 'D1', '43.jpg'),
(44, '1016', 'uEip', 'SHAHID', 'D1', '44.jpg'),
(46, '1017', 'JsmB', 'ANSHAD', 'D1', '46.jpg'),
(49, '1018', 'GVFu', 'YASEEN', 'D1', '49.jpg'),
(52, '1019', 'RRDW', 'FAVAS', 'D1', '52.jpg'),
(53, '1020', 'fIbo', 'SHADULI', 'D1', '53.jpg'),
(56, '1021', 'CnTR', 'JAMEEL', 'D1', '56.jpg'),
(57, '1022', 'KzPt', 'JAVAD', 'D1', '57.jpg'),
(60, '1023', 'xdah', 'SINAN', 'D1', '60.jpg'),
(62, '1024', 'swaE', 'SHAHADAD', 'D1', '62.jpg'),
(63, '1025', 'rIjx', 'ANAS', 'D1', '63.jpg'),
(64, '1026', 'wpDZ', 'IRSHAD', 'D1', '64.jpg'),
(65, '1027', 'kxvM', 'SALIM', 'D1', '65.jpg'),
(67, '1028', 'qXhq', 'SAMEEH', 'D1', '67.jpg'),
(68, '1029', 'crSG', 'RASHID', 'D1', '68.jpg'),
(71, '1030', 'kReJ', 'ARSHAD', 'D1', '71.jpg'),
(72, '1031', 'csEd', 'AFLAH', 'D1', '72.jpg'),
(75, '1063', 'YQVe', 'MILHAN', '+2', '75.jpg'),
(77, '1032', 'vYCV', 'SELMAN', 'D1', '77.jpg'),
(79, '1033', 'rzeW', 'FAYIZ', 'D1', '79.jpg'),
(83, '1034', 'YdsM', 'THWAYYIB', 'D1', '83.jpg'),
(84, '1064', 'BBDx', 'JIRSHAD', '+2', '84.jpg'),
(85, '1035', 'kugN', 'FASIL', 'D1', '85.jpg'),
(86, '1043', 'hlXj', 'RAHEES', '+2', '86.jpg'),
(87, '1044', 'yaku', 'FAYIS', '+2', '87.jpg'),
(89, '1045', 'fXbK', 'ABDULLAH', '+2', '89.jpg'),
(90, '1046', 'kuVK', 'SUHAIL', '+2', '90.jpg'),
(92, '1047', 'FWUt', 'SINAN', '+2', '92.jpg'),
(93, '1048', 'auuS', 'NAHEEL', '+2', '93.jpg'),
(94, '1086', 'sQWo', 'ASEEF', '+1', '94.jpg'),
(96, '1049', 'xaTS', 'FAIROOZ', '+2', '96.jpg'),
(98, '1050', 'Haof', 'NAHAS', '+2', '98.jpg'),
(100, '1051', 'GJqN', 'FAYIZ', '+2', '100.jpg'),
(101, '1052', 'zgPI', 'SHAHAL', '+2', '101.jpg'),
(107, '1053', 'wXrN', 'NAZMAL', '+2', '107.jpg'),
(110, '1054', 'gzBC', 'FAVAS', '+2', '110.jpg'),
(111, '1088', 'lyyh', 'SAHAD', '+1', '111.jpg'),
(113, '1055', 'xdYn', 'RAZEEN', '+2', '113.jpg'),
(114, '1056', 'cIzm', 'SINAN', '+2', '114.jpg'),
(115, '1057', 'qEmY', 'SHAMIL', '+2', '115.jpg'),
(116, '1058', 'HRmE', 'UZAIR', '+2', '116.jpg'),
(120, '1059', 'ivDb', 'DILSHAD', '+2', '120.jpg'),
(121, '1060', 'DIKZ', 'MUHEED', '+2', '121.jpg'),
(122, '1061', 'HLwC', 'ASHAD', '+2', '122.jpg'),
(124, '1062', 'Dhmx', 'SAEED', '+2', '124.jpg'),
(125, '1065', 'AOoi', 'SUHAIL', '+1', '125.jpg'),
(129, '1066', 'oFRc', 'AFSAL', '+1', '129.jpg'),
(133, '1067', 'Wkhn', 'RAFNAS', '+1', '133.jpg'),
(134, '1068', 'aSij', 'MUHSIN', '+1', '134.jpg'),
(135, '1069', 'bKOS', 'FAYIZ', '+1', '135.jpg'),
(138, '1070', 'HDHk', 'NIZAM', '+1', '138.jpg'),
(139, '1071', 'wVwb', 'SHABEEB', '+1', '139.jpg'),
(140, '1072', 'xfsD', 'SIYAD', '+1', '140.jpg'),
(142, '1073', 'EHLt', 'ANSHIF', '+1', '142.jpg'),
(145, '1074', 'BxEw', 'RAYHAN', '+1', '145.jpg'),
(147, '1075', 'eVie', 'MINHAJ', '+1', '147.jpg'),
(150, '1076', 'ullO', 'SABITH', '+1', '150.jpg'),
(155, '1077', 'qNgY', 'JASEEM', '+1', '155.jpg'),
(157, '1078', 'Bcdx', 'ADILHASSAN', '+1', '157.jpg'),
(158, '1079', 'HDlT', 'HARSHIL', '+1', '158.jpg'),
(163, '1080', 'Iqer', 'MINHAJ', '+1', '163.jpg'),
(165, '1081', 'rdjS', 'ADEEB', '+1', '165.jpg'),
(166, '1082', 'Goid', 'AMEEN', '+1', '166.jpg'),
(167, '1083', 'GSom', 'SAHAD', '+1', '167.jpg'),
(169, '1084', 'UcqK', 'FAHMIN', '+1', '169.jpg'),
(170, '1085', 'jhkk', 'IHTHISHAM', '+1', '170.jpg'),
(174, '1089', 'vSRs', 'AMEEN', '10', '174.jpg'),
(175, '1090', 'cqMy', 'FARSIN ', '10', '175.jpg'),
(176, '1091', 'BKmg', 'ISMAYIL ', '10', '176.jpg'),
(178, '1092', 'FcaG', 'SHAMIL ', '10', '178.jpg'),
(179, '1093', 'pfwb', 'ADIL ', '10', '179.jpg'),
(181, '1094', 'uRTa', 'ANFAS ', '10', '181.jpg'),
(182, '1095', 'DyOi', 'ASHIF ', '10', '182.jpg'),
(183, '1096', 'TNiZ', 'ASHMIL ', '10', '183.jpg'),
(184, '1097', 'OsWf', 'DINAN', '10', '184.jpg'),
(185, '1098', 'lpzI', 'DIYAN', '10', '185.jpg'),
(187, '1099', 'rbbN', 'IJLAN ', '10', '187.jpg'),
(188, '1100', 'LRKY', 'NAFIH', '10', '188.jpg'),
(190, '1101', 'oCQZ', 'RASHID', '10', '190.jpg'),
(191, '1102', 'DaUe', 'SHABEEL', '10', '191.jpg'),
(192, '1103', 'yrpd', 'SHAFIN', '10', '192.jpg'),
(193, '1104', 'bdeo', 'SHAN', '10', '193.jpg'),
(194, '1105', 'bMRN', 'SINAN', '10', '194.jpg'),
(195, '1106', 'FvVA', 'SINAN ', '10', '195.jpg'),
(196, '1107', 'gnkS', 'SUHAIL', '10', '196.jpg'),
(197, '1108', 'qGOl', 'SWALIH', '10', '197.jpg'),
(199, '1109', 'opuQ', 'RASIL', '10', '199.jpg'),
(200, '1110', 'wIWo', 'SINAN', '10', '200.jpg'),
(201, '1111', 'BnRg', 'SAYYIDNAJIL', '09', '201.jpg'),
(202, '1112', 'YDDl', 'ADHIL', '09', '202.jpg'),
(203, '1113', 'KnfA', 'SHAHEER', '09', '203.jpg'),
(205, '1114', 'ZjIx', 'SHAHID', '09', '205.jpg'),
(206, '1115', 'zjWg', 'INSHID', '09', '206.jpg'),
(207, '1116', 'KKji', 'MUSHTHAQUE', '09', '207.jpg'),
(209, '1117', 'MnNZ', 'TWAYYIB ', '09', '209.jpg'),
(210, '1118', 'WSwe', 'JASIM ', '09', '210.jpg'),
(212, '1119', 'joEv', 'AJNAS', '09', '212.jpg'),
(213, '1120', 'fEOi', 'NIHAL ', '09', '213.jpg'),
(215, '1121', 'jCZw', 'SINAN ', '09', '215.jpg'),
(216, '1122', 'dVxz', 'HADI', '09', '216.jpg'),
(217, '1123', 'yyGg', 'HISHAM ', '09', '217.jpg'),
(218, '1124', 'Spkq', 'SHAHEEN', '09', '218.jpg'),
(219, '1125', 'DiUk', 'BASIM', '09', '219.jpg'),
(220, '1126', 'qeOs', 'SWALIH', '09', '220.jpg'),
(221, '1127', 'rAQl', 'SHAMVEEL', '09', '221.jpg'),
(222, '1128', 'eNSu', 'JASNAN', '09', '222.jpg'),
(224, '1129', 'UnwI', 'SHAHID ', '09', '224.jpg'),
(225, '1130', 'kmFr', 'AKMALSHA', '09', '225.jpg'),
(226, '1131', 'qObY', 'NASAL ', '09', '226.jpg'),
(227, '1132', 'MPMt', 'NADIR ', '09', '227.jpg'),
(230, '1135', 'ObWY', 'NASIH', '08', 'male.jpg'),
(231, '1136', 'TLnJ', 'DANISH', '08', 'male.jpg'),
(232, '1137', 'HtQU', 'MIDLAJ', '08', 'male.jpg'),
(233, '1138', 'rxKw', 'AFNAN', '08', 'male.jpg'),
(234, '1139', 'kzzg', 'SAFWAN', '08', 'male.jpg'),
(235, '1140', 'lbRn', 'ANASEBAKARY', '08', 'male.jpg'),
(236, '1141', 'YbYQ', 'SAHL', '08', 'male.jpg'),
(237, '1142', 'SxId', 'SINAN', '08', 'male.jpg'),
(238, '1143', 'tlRB', 'SINAN', '08', 'male.jpg'),
(240, '1144', 'afiV', 'HISHAM ', '08', 'male.jpg'),
(241, '1145', 'EWpD', 'NAFIH', '08', 'male.jpg'),
(242, '1146', 'EuCZ', 'RAYYAN', '08', 'male.jpg'),
(243, '1147', 'kXbk', 'HISHAMT', '08', 'male.jpg'),
(244, '1148', 'lmHm', 'KHASEBAKARY', '08', 'male.jpg'),
(245, '1149', 'Jjzr', 'SHANID', '08', 'male.jpg'),
(246, '1150', 'mWqK', 'NISHAD', '08', 'male.jpg'),
(247, '1151', 'kmbF', 'SHAMIL', '08', 'male.jpg'),
(248, '1152', 'gIVF', 'SARBAS', '08', 'male.jpg'),
(249, '1153', 'RdcO', 'MUBARAK', '08', 'male.jpg'),
(250, '1154', 'mOje', 'MIRAS', '08', 'male.jpg'),
(251, '1155', 'Zyfv', 'FAHAD', '08', 'male.jpg'),
(252, '1156', 'WYsH', 'HIBAN', '08', 'male.jpg'),
(253, '1157', 'eesr', 'RAYYAN', '08', 'male.jpg'),
(254, '1158', 'fqih', 'SALIF', '08', 'male.jpg'),
(255, '1159', 'ffSR', 'ANAS', '08', 'male.jpg'),
(256, '1160', 'Twtb', 'NAFIH', '08', 'male.jpg'),
(257, '1161', 'BWSI', 'HAYAN', '08', 'male.jpg'),
(258, '1087', 'efTE', 'ABDULVAHID', '10', '258.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `votes`
--

CREATE TABLE `votes` (
  `id` int(11) NOT NULL,
  `voters_id` int(11) NOT NULL,
  `candidate_id` int(11) NOT NULL,
  `position_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `candidates`
--
ALTER TABLE `candidates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `positions`
--
ALTER TABLE `positions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `voters`
--
ALTER TABLE `voters`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `votes`
--
ALTER TABLE `votes`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `candidates`
--
ALTER TABLE `candidates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `positions`
--
ALTER TABLE `positions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `voters`
--
ALTER TABLE `voters`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=259;

--
-- AUTO_INCREMENT for table `votes`
--
ALTER TABLE `votes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=141;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;