-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Oct 07, 2019 at 04:42 PM
-- Server version: 10.1.16-MariaDB
-- PHP Version: 7.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `email` varchar(30) NOT NULL,
  `passsword` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `email`, `passsword`) VALUES
(1, 'admin@admin.com', 'admin@123');

-- --------------------------------------------------------

--
-- Table structure for table `bank`
--

CREATE TABLE `bank` (
  `trans_id` int(11) NOT NULL,
  `driver_id` int(11) NOT NULL,
  `name_on_card` varchar(30) NOT NULL,
  `credit_card_no` varchar(12) NOT NULL,
  `exp_month` varchar(15) NOT NULL,
  `exp_year` year(4) NOT NULL,
  `CVV` int(3) NOT NULL,
  `rider_id` int(11) NOT NULL,
  `req_id` int(11) NOT NULL,
  `Dtime` datetime NOT NULL,
  `amount` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bank`
--

INSERT INTO `bank` (`trans_id`, `driver_id`, `name_on_card`, `credit_card_no`, `exp_month`, `exp_year`, `CVV`, `rider_id`, `req_id`, `Dtime`, `amount`) VALUES
(1, 0, 'kkkkkkkkkkkkkkkkkkkk', '1111-2222-33', 'march', 2019, 345, 27, 53, '0000-00-00 00:00:00', 250),
(2, 0, 'dddddddddddddddddddd', '111111111111', 'sssssssssss', 0000, 222, 27, 53, '0000-00-00 00:00:00', 250);

-- --------------------------------------------------------

--
-- Table structure for table `distance`
--

CREATE TABLE `distance` (
  `did` int(11) NOT NULL,
  `source` varchar(50) NOT NULL,
  `destination` varchar(50) NOT NULL,
  `distance` decimal(11,5) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `distance`
--

INSERT INTO `distance` (`did`, `source`, `destination`, `distance`) VALUES
(8, 'panachippara', 'edamaruk', '88.00000'),
(9, 'panachippara', 'melukkavu', '14.00000'),
(27, 'test', 'test', '10.00000'),
(11, 'panachippara', 'muttom', '24.00000'),
(12, 'panachippara', 'amparanirappel', '4.00000'),
(13, 'panachippara', 'edappady', '11.00000'),
(14, 'panachippara', 'chemmalamattom', '9.00000'),
(15, 'panachippara', 'thidanad', '6.00000'),
(16, 'panachippara', 'pinakkanad', '10.00000'),
(17, 'panachippara', 'bharanaganam', '9.00000'),
(18, 'panachippara', 'kalakketty', '11.00000'),
(19, 'panachippara', 'kappadu', '13.00000'),
(20, 'panachippara', 'anakkal', '14.00000'),
(21, 'panachippara', 'thodupuzha', '32.00000'),
(22, 'erattupetta', 'poonajr', '2.00000'),
(23, 'erattupetta', 'edamaruk', '6.00000'),
(24, 'erattupetta', 'melukkavu', '12.00000'),
(25, 'erattupetta', 'muttom', '21.60000'),
(26, 'erattupetta', 'amparanirappel', '1.60000');

-- --------------------------------------------------------

--
-- Table structure for table `driveraccount`
--

CREATE TABLE `driveraccount` (
  `dic` int(11) NOT NULL,
  `driver_id` int(11) NOT NULL,
  `housename` varchar(20) NOT NULL,
  `place` varchar(20) NOT NULL,
  `district` varchar(20) NOT NULL,
  `state` varchar(20) NOT NULL,
  `cardno` varchar(12) NOT NULL,
  `month` varchar(15) NOT NULL,
  `year` year(4) NOT NULL,
  `CW` int(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `driveraccount`
--

INSERT INTO `driveraccount` (`dic`, `driver_id`, `housename`, `place`, `district`, `state`, `cardno`, `month`, `year`, `CW`) VALUES
(1, 82, 'ddddddddddd', 'tttttttt', 'ttttttttt', 'tttt', '111111111111', 'january', 0000, 77),
(2, 85, '', '', '', '', '', '', 0000, 0),
(3, 90, '', '', '', '', '', '', 0000, 0),
(4, 91, '', '', '', '', '', '', 0000, 0);

-- --------------------------------------------------------

--
-- Table structure for table `driverdetails`
--

CREATE TABLE `driverdetails` (
  `driver_id` int(11) NOT NULL,
  `fname` varchar(30) NOT NULL,
  `mname` varchar(15) NOT NULL,
  `lname` varchar(30) NOT NULL,
  `email` varchar(25) NOT NULL,
  `password` varchar(20) NOT NULL,
  `city` varchar(20) NOT NULL,
  `vehicle_name` varchar(30) NOT NULL,
  `vehicle_no` int(11) NOT NULL,
  `vid` int(11) NOT NULL,
  `phoneno` int(10) NOT NULL,
  `category` int(11) NOT NULL COMMENT 'category he belongs',
  `status` int(11) NOT NULL COMMENT 'whether he is available or not',
  `O_N` int(11) NOT NULL,
  `no_of_rides` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `driverdetails`
--

INSERT INTO `driverdetails` (`driver_id`, `fname`, `mname`, `lname`, `email`, `password`, `city`, `vehicle_name`, `vehicle_no`, `vid`, `phoneno`, `category`, `status`, `O_N`, `no_of_rides`) VALUES
(1, 'Kripa', 'Mary', 'Jose', 'kripa@gmail.com', 'kripa@gmail.com', 'Erattupetta', '', 0, 2, 2147483647, 0, 1, 0, 0),
(2, 'Lighiya', '7777777777', 'ddddddddd', 'jhjk@gmail.com', 'Lqwert12', 'Erattupetta', '', 0, 1, 2147483647, 0, 1, 0, 0),
(3, 'Rani', '', 'Jose', 'Rani@gmail.com', 'Ranioff@55', 'Pala', '', 0, 1, 1234567898, 0, 0, 0, 0),
(4, '', '', '', '', '', '', '', 0, 0, 0, 1, 0, 0, 0),
(5, 'Kripa', 'Mary', 'Jose', 'kripa@gmail.com', 'Kripamary@55', 'pala', '', 0, 0, 2147483647, 0, 0, 0, 0),
(6, 'Kripa', 'Mary', 'Jose', 'kripa@gmail.com', 'K1234qwert', 'edf', '', 0, 0, 2147483647, 0, 0, 0, 0),
(7, '', '', '', '', '', '', '', 0, 0, 0, 1, 0, 0, 0),
(8, '', '', '', '', '', '', '', 0, 0, 0, 1, 0, 0, 0),
(9, '', '', '', '', '', '', '', 0, 1, 0, 1, 0, 0, 0),
(10, '', '', '', '', '', '', '', 0, 0, 0, 1, 0, 0, 0),
(11, '', '', '', '', '', '', '', 0, 0, 0, 1, 0, 0, 0),
(12, '', '', '', '', '', '', '', 0, 0, 0, 1, 0, 0, 0),
(13, '', '', '', '', '', '', '', 0, 0, 0, 1, 0, 0, 0),
(14, '', '', '', '', '', '', '', 0, 0, 0, 1, 0, 0, 0),
(15, 'Abraham', '', 'Jose', 'Aby@gmail.com', 'Aby@12qwer', 'Erattupetta', '', 0, 1, 2147483647, 1, 0, 0, 0),
(16, '', '', '', '', '', '', '', 0, 0, 0, 1, 0, 0, 0),
(17, '', '', '', '', '', '', '', 0, 0, 0, 1, 0, 0, 0),
(18, 'Abrahamkrrr', '', 'Jose', 'Aby@gmail.com', 'Aby@12qwer', 'erattupetta', '', 0, 2, 2147483647, 0, 0, 0, 0),
(19, '', '', '', '', '', '', '', 0, 0, 0, 1, 0, 0, 0),
(20, '', '', '', '', '', '', '', 0, 0, 0, 1, 0, 0, 0),
(21, 'Tbaitha', '', 'jose', 'tabi@gmail.com', 'Tabi@12qwe', 'panachippara', '', 0, 0, 2147483647, 0, 0, 0, 0),
(22, '', '', '', '', '', '', '', 0, 0, 0, 1, 0, 0, 0),
(23, '', '', '', '', '', '', '', 0, 0, 0, 1, 0, 0, 0),
(24, 'Tbaitha', '', 'jose', 'tabi@gmail.com', 'Qwerty@13', 'poonjar', '', 0, 0, 2147483647, 0, 0, 0, 0),
(25, '', '', '', '', '', '', '', 0, 0, 0, 1, 0, 0, 0),
(26, '', '', '', '', '', '', '', 0, 0, 0, 1, 0, 0, 0),
(27, 'Abraham', '', 'Jose', 'Aby@gmail.com', 'Qwert@12', 'pala', '', 0, 0, 2147483647, 0, 0, 0, 0),
(28, '', '', '', '', '', '', '', 0, 0, 0, 1, 0, 0, 0),
(29, '', '', '', '', '', '', '', 0, 0, 0, 1, 0, 0, 0),
(30, 'Tbaitha', '', 'jose', 'tabi@gmail.com', 'Tabi@12qwer', 'pala', '', 0, 0, 2147483647, 0, 0, 0, 0),
(31, '', '', '', '', '', '', '', 0, 0, 0, 1, 0, 0, 0),
(32, '', '', '', '', '', '', '', 0, 0, 0, 1, 0, 0, 0),
(33, 'Tbaitha', '', 'jose', 'tabi@gmail.com', 'Qwert12qwer', 'dfdgdg', '', 0, 0, 2147483647, 0, 0, 0, 0),
(34, '', '', '', '', '', '', '', 0, 0, 0, 1, 0, 0, 0),
(35, '', '', '', '', '', '', '', 0, 0, 0, 1, 0, 0, 0),
(36, 'Abrahamkrrr', '', 'Jose', 'Aby@gmail.com', 'Qwert12rty', 'kottayam', '', 0, 0, 2147483647, 0, 0, 0, 0),
(37, '', '', '', '', '', '', '', 0, 0, 0, 1, 0, 0, 0),
(38, '', '', '', '', '', '', '', 0, 0, 0, 1, 0, 0, 0),
(39, 'Abrahamkrrr', '', 'Jose', 'Aby@gmail.com', 'Abyqwer@12', 'pala', '', 0, 0, 2147483647, 0, 0, 0, 0),
(40, '', '', '', '', '', '', '', 0, 0, 0, 1, 0, 0, 0),
(41, '', '', '', '', '', '', '', 0, 0, 0, 1, 0, 0, 0),
(42, 'Abrahamkrrr', '', 'Jose', 'Aby@gmail.com', 'Qweert123344', 'mkkkk', '', 0, 0, 2147483647, 0, 0, 0, 0),
(43, '', '', '', '', '', '', '', 0, 0, 0, 1, 0, 0, 0),
(44, '', '', '', '', '', '', '', 0, 0, 0, 1, 0, 0, 0),
(45, 'Abrahamkrrr', '', 'Jose', 'Aby@gmail.com', 'Qwee12234234', 'ghh', '', 0, 0, 2147483647, 0, 0, 0, 0),
(46, '', '', '', '', '', '', '', 0, 0, 0, 1, 0, 0, 0),
(47, '', '', '', '', '', '', '', 0, 0, 0, 1, 0, 0, 0),
(48, 'Abraham', '', 'Jose', 'Aby@gmail.com', 'Qweer1343w25', 'bbb', '', 0, 0, 2147483647, 0, 0, 0, 0),
(49, '', '', '', '', '', '', '', 0, 0, 0, 1, 0, 0, 0),
(50, 'Abraham', '', 'Jose', 'Aby@gmail.com', 'Errdtrddr1111111', '33', '', 0, 0, 2147483647, 0, 0, 0, 0),
(51, '', '', '', '', '', '', '', 0, 0, 0, 2, 0, 0, 0),
(52, 'Kiran', '', 'JOSe', 'jacab@123', 'JAsdf123', 'nlml;l', '', 0, 0, 2147483647, 0, 0, 0, 0),
(53, '', '', '', '', '', '', '', 0, 0, 0, 2, 0, 0, 0),
(54, '', '', '', '', '', '', '', 0, 0, 0, 2, 0, 0, 0),
(55, 'Kiran', '', 'JOSe', 'jacab@123', 'Qwer123433', 'kjkjbjkbjkbkjb', '', 0, 0, 2147483647, 0, 0, 0, 0),
(56, 'Kiran', '', 'JOSe', 'jacab@123', 'Qwer1234kjbb', '  nmmn n n ', '', 0, 0, 2147483647, 0, 0, 0, 0),
(57, 'Jacob', '', 'Jose', 'Jasmin@gmail.com', 'Aqwert123', 'Kottayam', '', 0, 0, 2147483647, 2, 0, 0, 0),
(58, '', '', '', '', '', '', '', 0, 0, 0, 2, 0, 0, 0),
(59, 'Jacob', '', 'Jose', 'Jasmin@gmail.com', 'Qwerty1234', 'hfgfhfj', '', 0, 0, 2147483647, 0, 0, 0, 0),
(60, 'Jacob', '', 'Jose', 'Jasmin@gmail.com', 'Qwert1234', 'nkjnjkjnjn', '', 0, 0, 2147483647, 0, 0, 0, 0),
(61, 'Jacob', '', 'Jose', 'Jasmin@gmail.com', 'Qtyuio111111111', 'ddddddd', '', 0, 0, 2147483647, 0, 0, 0, 0),
(62, 'Jacob', '', 'Jose', 'Jasmin@gmail.com', 'Qwerty12345', 'dddddddddd', '', 0, 0, 2147483647, 0, 0, 0, 0),
(63, 'Jacob', '', 'Jose', 'Jasmin@gmail.com', 'Aqwert1234', 'mmmmmmmmmmmm', '', 0, 0, 2147483647, 0, 0, 0, 0),
(64, 'Jacob', '', 'Jose', 'Jasmin@gmail.com', 'Qwert1234', 'erattupetta', '', 0, 0, 2147483647, 0, 0, 0, 0),
(65, 'kerthi', '', 'sureesh', 'kerthi@gmail.com', 'Kerthi@123', 'erattupetta', '', 0, 0, 2147483647, 1, 0, 0, 0),
(66, 'Anu', '', 'jose', 'anu@gmail.com', 'Anu@123qw', 'dddddd', '', 0, 0, 2147483647, 2, 0, 0, 0),
(67, 'Hey', '', 'njan', 'anu@gmail.com', 'Hey@12345eee', 'uj', 'dddddddddd', 2147483647, 1, 2147483647, 1, 1, 0, 0),
(68, 'Hey', '', 'njan', 'anu@gmail.com', 'Juyuy123', 'dc', '', 0, 0, 2147483647, 0, 0, 0, 0),
(69, 'Anu', '', 'jose', 'anu@gmail.com', 'K234ghghj', 'ggggggggggggg', '', 0, 0, 2147483647, 0, 0, 0, 0),
(70, 'Anu', '', 'jose', 'anu@gmail.com', 'Hg12tghhhh', 'hhhhhhhhhhh', '', 0, 0, 2147483647, 0, 0, 0, 0),
(71, 'Anu', '', 'jose', 'anu@gmail.com', 'Jhhh22222', 'ddddddddd', '', 0, 0, 2147483647, 0, 0, 0, 0),
(72, 'Hey', '', 'njan', 'anu@gmail.com', 'JHghh123', 'rrrrrrrrr', '', 0, 0, 2147483647, 0, 0, 0, 0),
(73, 'Anu', '', 'jose', 'anu@gmail.com', 'Jhj12344', 'ggggggggggg', '', 0, 0, 2147483647, 0, 0, 0, 0),
(74, 'Hey', '', 'njan', 'anu@gmail.com', 'Hgj12234', 'gggggggggg', '', 0, 0, 2147483647, 0, 0, 0, 0),
(75, 'Hey', '', 'njan', 'anu@gmail.com', '12HGHyyyyyy', 'ooooooooooo', '', 0, 0, 2147483647, 0, 0, 0, 0),
(76, 'Rajamani', 'tyyyyynnnn', 'mani', 'taf@gmail.com', '', 'hhhhhhhhhh', 'vkdfnvkdfn', 2147483647, 1, 2147483647, 1, 1, 0, 0),
(77, 'Hey', '', 'njan', 'anu@gmail.com', 'Kjdfjb1323', 'mv', '', 0, 0, 2147483647, 0, 0, 0, 0),
(78, 'Rajamani', '', 'mani', 'taf@gmail.com', 'Jhhh1223', 'ttttttt', '', 0, 0, 2147483647, 0, 0, 0, 0),
(79, 'Joe', 'John', 'Vincy', 'Joe@gmail.com', 'Joe@12jjj', 'llllllllll', 'dddddddddd', 1111111111, 1, 2147483647, 1, 1, 0, 0),
(80, 'josemonnndbgfjb', 'bfg', 'fgb', 'jose@gmail.com', 'Josd12Jvjvj', 'kkkkkkk', 'rgthytyht', 677777, 1, 2147483647, 1, 1, 0, 0),
(81, 'Unni', '', 'john', 'john@gmail.com', 'Unni@1234', 'Erattupetta', 'dddddddddd', 2147483647, 1, 2147483647, 1, 1, 0, 0),
(82, 'Joe', 'John', 'Vincy', 'Unni@gmail.com', 'Joejohn@12', 'Erattupetta', 'dddddddddd', 2147483647, 3, 2147483647, 1, 1, 1, 0),
(83, 'Ajay', '', 'Isac', 'ajay@gmail.com', 'AjayIsac1', 'Erattupetta', 'dddddddddd', 2147483647, 3, 0, 2, 1, 1, 0),
(84, 'Joe', 'John', 'Vincy', 'Unni@gmail.com', 'Kripa@12', 'Erattupetta', '', 0, 0, 2147483647, 0, 0, 0, 0),
(85, 'Kiran', 'ffffffff', '', 'Unni@gmail.com', 'Kripa@12', 'Erattupetta', '', 0, 0, 2147483647, 0, 0, 0, 0),
(86, 'Kiran', 'ffffffff', '', 'Unni@gmail.com', 'Kiran@12', 'erattupetta', '', 0, 0, 2147483647, 0, 0, 0, 0),
(87, 'Ajay', '', 'Isac', 'ajay@gmail.com', 'Kiran@12', 'erattupetta', '', 0, 0, 0, 0, 0, 0, 0),
(88, 'Ajay', '', 'Isac', 'ajay@gmail.com', 'Kiran@12', 'ffhjgj', '', 0, 0, 0, 0, 0, 0, 0),
(89, 'Kiran', 'ffffffff', '', 'Unni@gmail.com', 'Kiran@12', 'erattupetta', '', 0, 0, 2147483647, 0, 0, 0, 0),
(90, 'Kiran', 'ffffffff', '', 'john@gmail.com', 'Kiran@12', 'erattupetta', '', 0, 0, 2147483647, 0, 1, 0, 0),
(91, 'Kiran', '', '', 'josekripamary99@gmail.com', 'Kiran@12', 'Erattupetta', '', 0, 0, 2147483647, 0, 0, 0, 0),
(92, 'Kripa', 'Mary', 'Jose', 'josekripamary99@gmail.com', 'Kiran@12', 'Erattupetta', 'nnnnnnnnnnnnnn', 2147483647, 3, 2147483647, 1, 1, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `driverdocuments`
--

CREATE TABLE `driverdocuments` (
  `did` int(11) NOT NULL,
  `driver_id` int(11) NOT NULL,
  `photo` varchar(30) NOT NULL,
  `licence` varchar(30) NOT NULL,
  `registration` varchar(30) NOT NULL,
  `insurance` varchar(30) NOT NULL,
  `permit` varchar(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `driverdocuments`
--

INSERT INTO `driverdocuments` (`did`, `driver_id`, `photo`, `licence`, `registration`, `insurance`, `permit`) VALUES
(20, 76, 'IMG_20180714_203539_930.jpg', '', '', '', ''),
(19, 76, 'IMG_20180714_203539_930.jpg', '', '', '', ''),
(18, 76, 'images (6).jpg', '', '', '', ''),
(17, 76, 'download.jpg', '', '', '', ''),
(16, 76, 'download (1).jpg', '', '', '', ''),
(15, 76, 'download (3).jpg', '', '', '', ''),
(14, 76, 'IMG_20180714_203539_930.jpg', '', '', '', ''),
(13, 76, 'IMG_20180714_203539_930.jpg', '', '', '', ''),
(12, 67, '', 'Free_Sample_By_Wix (1).jpg', '', '', ''),
(11, 67, 'Drive to Heavens, Central Prov', '', '', '', ''),
(21, 76, 'download (1).jpg', '', '', '', ''),
(22, 76, 'download (1).jpg', '', '', '', ''),
(23, 76, 'download.jpg', '', '', '', ''),
(24, 76, 'download (1).jpg', '', '', '', ''),
(25, 76, 'download (1).jpg', '', '', '', ''),
(26, 76, 'download (3).jpg', '', '', '', ''),
(27, 76, 'download (1).jpg', '', '', '', ''),
(28, 76, 'download.jpg', '', '', '', ''),
(29, 76, 'download (1).jpg', '', '', '', ''),
(30, 76, 'download.jpg', '', '', '', ''),
(31, 80, 'download.jpg', '', '', '', ''),
(32, 81, 'download (3).jpg', '', '', '', ''),
(33, 82, 'IMG_20180714_203539_930.jpg', '', '', '', ''),
(34, 83, 'images (6).jpg', '', '', '', ''),
(35, 82, 'images (6).jpg', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `driverlogin`
--

CREATE TABLE `driverlogin` (
  `dlogin_id` int(11) NOT NULL,
  `driver_id` int(11) NOT NULL,
  `email` varchar(30) NOT NULL,
  `password` varchar(8) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `driverlogin`
--

INSERT INTO `driverlogin` (`dlogin_id`, `driver_id`, `email`, `password`) VALUES
(1, 1, 'kripa@gmail.com', 'kripa@gm'),
(2, 2, 'jhjk@gmail.com', 'Lqwert12'),
(3, 3, 'Rani@gmail.com', 'Ranioff@'),
(4, 15, 'Aby@gmail.com', 'Aby@12qw');

-- --------------------------------------------------------

--
-- Stand-in structure for view `driverprofileview`
--
CREATE TABLE `driverprofileview` (
`driver_id` int(11)
,`fname` varchar(30)
,`lname` varchar(30)
,`mname` varchar(15)
,`phoneno` int(10)
,`vehicle_name` varchar(30)
,`vehicle_no` int(11)
,`did` int(11)
,`photo` varchar(30)
);

-- --------------------------------------------------------

--
-- Table structure for table `fare`
--

CREATE TABLE `fare` (
  `fare_id` int(11) NOT NULL,
  `vid` int(11) NOT NULL,
  `min_charge` int(11) NOT NULL,
  `cpk` int(11) NOT NULL,
  `wtg_charge` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fare`
--

INSERT INTO `fare` (`fare_id`, `vid`, `min_charge`, `cpk`, `wtg_charge`) VALUES
(9, 9, 9, 9, 9),
(2, 2, 30, 3, 150),
(3, 3, 300, 50, 100);

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `pay_id` int(11) NOT NULL,
  `trans_id` int(11) NOT NULL,
  `amount` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `rating`
--

CREATE TABLE `rating` (
  `rid` int(11) NOT NULL,
  `driver_id` int(11) NOT NULL,
  `rider_id` int(11) NOT NULL,
  `rate` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `request`
--

CREATE TABLE `request` (
  `req_id` int(11) NOT NULL,
  `driver_id` int(11) NOT NULL,
  `rider_id` int(11) NOT NULL,
  `vid` int(11) NOT NULL,
  `source` varchar(30) NOT NULL,
  `destination` varchar(30) NOT NULL,
  `total_amt` int(11) NOT NULL,
  `DateT` datetime NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `request`
--

INSERT INTO `request` (`req_id`, `driver_id`, `rider_id`, `vid`, `source`, `destination`, `total_amt`, `DateT`, `status`) VALUES
(1, 0, 27, 0, 'pala', 'erattupetta', 0, '0000-00-00 00:00:00', 0),
(2, 0, 27, 0, 'pala', 'erattupetta', 0, '0000-00-00 00:00:00', 0),
(3, 0, 27, 0, 'pala', 'erattupetta', 0, '0000-00-00 00:00:00', 0),
(4, 0, 27, 0, 'pla', 'erattupetta', 0, '0000-00-00 00:00:00', 0),
(5, 0, 27, 0, 'erattupetta', 'pala', 0, '0000-00-00 00:00:00', 0),
(6, 0, 27, 0, 'pala', 'erattupetta', 0, '0000-00-00 00:00:00', 0),
(7, 0, 27, 0, 'Erattupetta', 'pala', 0, '0000-00-00 00:00:00', 0),
(8, 0, 27, 0, 'Erattpetta', 'pala', 0, '0000-00-00 00:00:00', 0),
(9, 0, 27, 0, 'Erattupetta', 'pala', 0, '0000-00-00 00:00:00', 0),
(10, 0, 27, 0, 'erattipetta', 'pala', 0, '0000-00-00 00:00:00', 0),
(11, 0, 27, 0, 'Erattupetta', 'pala', 0, '0000-00-00 00:00:00', 0),
(12, 0, 27, 0, 'Erattupetta', 'ramapuram', 0, '0000-00-00 00:00:00', 0),
(13, 0, 27, 0, 'Erattupetta', 'pala', 0, '0000-00-00 00:00:00', 0),
(14, 0, 27, 0, 'Erattupetta', 'ramapuram', 0, '0000-00-00 00:00:00', 0),
(15, 0, 27, 0, 'Erattupetta', 'ramapuram', 0, '0000-00-00 00:00:00', 0),
(16, 0, 27, 0, 'Erattupetta', 'pala', 0, '0000-00-00 00:00:00', 0),
(17, 0, 27, 0, 'Erattupetta', 'pala', 0, '0000-00-00 00:00:00', 0),
(18, 0, 27, 0, 'Erattupetta', 'ramapuram', 0, '0000-00-00 00:00:00', 0),
(19, 0, 28, 0, 'Erattupetta', 'pala', 0, '0000-00-00 00:00:00', 0),
(20, 0, 28, 0, 'Erattupetta', 'ramapuram', 0, '0000-00-00 00:00:00', 0),
(21, 0, 28, 0, 'Erattupetta', 'ramapuram', 0, '0000-00-00 00:00:00', 0),
(22, 0, 28, 0, 'Erattupetta', 'erattupetta', 0, '0000-00-00 00:00:00', 0),
(23, 0, 28, 0, 'Erattupetta', 'ramapuram', 0, '0000-00-00 00:00:00', 0),
(24, 0, 28, 0, 'Erattupetta', 'ramapuram', 0, '0000-00-00 00:00:00', 0),
(25, 0, 28, 0, 'Erattupetta', 'ramapuram', 0, '0000-00-00 00:00:00', 0),
(26, 0, 28, 0, 'Erattupetta', 'ramapuram', 0, '0000-00-00 00:00:00', 0),
(27, 0, 27, 0, 'Erattupetta', 'kera', 0, '0000-00-00 00:00:00', 0),
(28, 0, 27, 0, 'Erattupetta', 'kera', 0, '0000-00-00 00:00:00', 0),
(29, 0, 27, 0, 'Erattupetta', 'erattupetta', 0, '0000-00-00 00:00:00', 0),
(30, 0, 27, 0, 'Erattupetta', 'ramapuram', 0, '0000-00-00 00:00:00', 0),
(31, 0, 27, 0, 'Erattupetta', 'nn', 0, '0000-00-00 00:00:00', 0),
(32, 0, 27, 2, 'Erattupetta', 'ramapuram', 0, '2019-09-22 19:11:13', 0),
(33, 0, 27, 2, 'Erattupetta', 'ramapuram', 0, '2019-09-22 19:13:40', 0),
(34, 0, 27, 2, 'Erattupetta', 'kera', 0, '2019-09-22 19:22:59', 0),
(35, 0, 27, 2, 'Erattupetta', 'ramapuram', 0, '2019-09-22 19:23:54', 0),
(36, 0, 27, 4, 'Erattupetta', 'ramapuram', 0, '2019-09-23 05:51:16', 0),
(37, 0, 27, 4, 'Erattupetta', 'ramapuram', 0, '2019-09-23 06:19:54', 0),
(38, 0, 27, 3, 'Erattupetta', 'pala', 0, '2019-09-23 13:29:47', 0),
(39, 0, 27, 3, 'Erattupetta', 'pala', 0, '2019-09-23 13:43:05', 0),
(40, 0, 27, 3, 'Erattupetta', 'pala', 0, '2019-09-23 17:18:14', 0),
(41, 0, 27, 3, 'Erattupetta', 'pala', 0, '2019-09-23 17:20:14', 0),
(42, 0, 27, 3, 'Erattupetta', 'pala', 0, '2019-09-24 14:56:45', 0),
(43, 0, 27, 3, 'Erattupetta', 'pala', 0, '2019-09-24 14:57:07', 0),
(44, 0, 27, 3, 'Erattupetta', 'pala', 0, '2019-09-24 15:18:43', 0),
(45, 0, 27, 3, 'Erattupetta', 'ramapuram', 0, '2019-09-24 15:20:07', 0),
(46, 0, 27, 0, 'Erattupetta', 'pala', 0, '2019-09-24 15:21:33', 0),
(47, 0, 27, 3, 'Erattupetta', 'ramapuram', 0, '2019-09-24 15:32:17', -1),
(48, 0, 27, 2, 'erattupetta', 'poonjar', 0, '2019-09-29 18:15:34', 0),
(49, 0, 27, 2, 'Erattupetta', 'ramapuram', 0, '2019-10-05 14:48:02', 0),
(50, 0, 27, 2, 'Erattupetta', 'nkknk', 0, '2019-10-05 15:02:31', 0),
(51, 0, 27, 2, 'Erattupetta', 'nkknk', 0, '2019-10-05 15:03:36', 0),
(52, 0, 27, 0, 'Erattupetta', 'ramapuram', 0, '2019-10-05 17:02:48', 0),
(53, 0, 27, 3, 'Erattupetta', 'ramapuram', 250, '2019-10-05 17:03:28', -1),
(54, 0, 27, 3, 'Erattupetta', 'ramapuram', 250, '2019-10-05 17:25:56', 0),
(55, 0, 1, 0, 'panachippara', 'poonjar', 0, '2019-10-07 12:17:52', 0),
(56, 0, 1, 0, 'panachippara', 'poonjar', 0, '2019-10-07 12:22:16', 0);

-- --------------------------------------------------------

--
-- Table structure for table `riderdetails`
--

CREATE TABLE `riderdetails` (
  `rider_id` int(11) NOT NULL,
  `fname` varchar(30) NOT NULL,
  `mname` varchar(15) NOT NULL,
  `lname` varchar(30) NOT NULL,
  `email` varchar(25) NOT NULL,
  `password` varchar(8) NOT NULL,
  `phoneno` int(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `riderdetails`
--

INSERT INTO `riderdetails` (`rider_id`, `fname`, `mname`, `lname`, `email`, `password`, `phoneno`) VALUES
(1, 'Daniel', '', 'Jose', 'daniel@gmail.com', 'Daniel@1', 2147483647),
(2, 'Daniel', '', 'Jose', 'daniel@gmail.com', 'Daniel@1', 2147483647),
(3, 'Dalvy', '', 'Jose', 'dalvy@gmail.com', 'Dalvy@12', 2147483647),
(4, 'Liya', '', 'george', 'liya@gmail.com', 'Liya@123', 2147483647),
(5, 'Joe', 'John', 'Vincy', 'joe@gmail.com', 'Joe@123q', 2147483647),
(6, 'Rahul', '', 'htyt', 'rahul@gmail.com', 'Rahul@7q', 2147483647),
(7, 'Krip', '', 'mARY', 'kripa@gmail.com', 'Kripa@89', 666666),
(8, 'Unni', '', 'kuttan', 'unni@gmail.com', 'Unni@123', 66666),
(9, 'Karthika', '', 'rajev', 'karthu@gmail.com', 'Karthu@1', 2147483647),
(10, 'Kinginigtgg', '', 'ggg', 'kingu@gmail.com', 'Kingu@12', 666666),
(11, 'Kinginigtgg', '', 'ggg', 'kingu@gmail.com', 'Kingu@12', 666666),
(15, 'Preetha ', '', 'rose', 'preetha@gmail.com', 'Preetha@', 1223234567),
(13, 'reena', '', 'Jose', 'reena@gmail.com', 'Reena@12', 2147483647),
(14, 'reena', '', 'Jose', 'reena@gmail.com', 'Reena@24', 2147483647),
(16, 'George', '', 'njaral', 'george@gmail.com', 'George@1', 2147483647),
(17, 'Tabitha', '', 'jose', 'tabitha@gmail.com', 'Tabitha@', 2147483647),
(18, 'rtyu', '', 'rtyu', 'rtyu@gmail.com', 'Rtyu@123', 5678),
(19, 'Suz', '', 'jose', 'suz@gmail.com', 'Suz@123q', 12),
(20, 'rajama', '', 'pk', 'rajama@gmail.com', 'Rajama@p', 2147483647),
(21, 'Joel', '', 'Jose', 'joel@gmail.com', 'Joel@123', 8888),
(22, 'rrrrrrrrr', 'fggtg', 'sunny', 'gbgbggbgbgbbgb', '44gfvg', 0),
(23, 'mlkjkljk', 'bfg', 'fghfg', 'jose@gmail.com', '12@Jkkjf', 66666),
(24, 'jkj', 'uuuuuu', 'uuuuuuu', 'ktyui@gmail.com', '12@mahfk', 777777777),
(25, 'Rexi', '', 'Jose', 'rexi@gmail.com', 'Rexi@123', 123456789),
(26, 'Ajay', '', 'Isac', 'Isac@gmail.com', 'Ajay@123', 2147483647),
(27, 'Kiran', 'treesa', 'jose', 'kiran@gmail.com', 'Kiran@12', 1234567890),
(28, 'sre', '', 'raj', 'sre@gmail.com', 'Sreyas@1', 88888888);

-- --------------------------------------------------------

--
-- Table structure for table `riderlogin`
--

CREATE TABLE `riderlogin` (
  `login_id` int(11) NOT NULL,
  `rider_id` int(11) NOT NULL,
  `email` varchar(30) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `riderlogin`
--

INSERT INTO `riderlogin` (`login_id`, `rider_id`, `email`, `password`) VALUES
(1, 18, 'rtyu@gmail.com', 'Rtyu@123'),
(2, 19, 'suz@gmail.com', 'Suz@123q'),
(3, 21, 'joel@gmail.com', 'Joel@123'),
(4, 21, 'joel@gmail.com', 'Joel@123'),
(5, 21, 'joel@gmail.com', 'Joel@123'),
(6, 21, 'joel@gmail.com', 'Joel@123'),
(7, 22, 'ritto@gmail.com', 'Ritto@12'),
(8, 26, 'Isac@gmail.com', 'Ajay@123'),
(9, 27, 'kiran@gmail.com', 'Kiran@12'),
(10, 27, 'kiran@gmail.com', 'Kiran@12'),
(11, 27, 'kiran@gmail.com', 'Kiran@12'),
(12, 27, 'kiran@gmail.com', 'Kiran@12'),
(13, 27, 'kiran@gmail.com', 'Kiran@12'),
(14, 28, 'sre@gmail.com', 'Sreyas@1'),
(15, 27, 'kiran@gmail.com', 'Kiran@12'),
(16, 27, 'kiran@gmail.com', 'Kiran@12'),
(17, 27, 'kiran@gmail.com', 'Kiran@12'),
(18, 27, 'kiran@gmail.com', 'kiran@12'),
(19, 27, 'kiran@gmail.com', 'Kiran@12'),
(20, 27, 'kiran@gmail.com', 'Kiran@12'),
(21, 27, 'kiran@gmail.com', 'Kiran@12'),
(22, 27, 'kiran@gmail.com', 'Kiran@12'),
(23, 1, 'daniel@gmail.com', 'Daniel@1');

-- --------------------------------------------------------

--
-- Table structure for table `tasks`
--

CREATE TABLE `tasks` (
  `id` int(11) NOT NULL,
  `task` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `vehicle`
--

CREATE TABLE `vehicle` (
  `vid` int(11) NOT NULL,
  `type` varchar(30) NOT NULL,
  `cc` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vehicle`
--

INSERT INTO `vehicle` (`vid`, `type`, `cc`) VALUES
(1, 'auto', 140),
(2, 'motorcycle', 500),
(3, 'suv', 2500),
(4, 'hatchback', 1400),
(7, 'sedan', 1000);

-- --------------------------------------------------------

--
-- Structure for view `driverprofileview`
--
DROP TABLE IF EXISTS `driverprofileview`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `driverprofileview`  AS  select `driverdetails`.`driver_id` AS `driver_id`,`driverdetails`.`fname` AS `fname`,`driverdetails`.`lname` AS `lname`,`driverdetails`.`mname` AS `mname`,`driverdetails`.`phoneno` AS `phoneno`,`driverdetails`.`vehicle_name` AS `vehicle_name`,`driverdetails`.`vehicle_no` AS `vehicle_no`,`driverdocuments`.`did` AS `did`,`driverdocuments`.`photo` AS `photo` from (`driverdetails` join `driverdocuments`) where (`driverdetails`.`driver_id` = `driverdocuments`.`driver_id`) ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bank`
--
ALTER TABLE `bank`
  ADD PRIMARY KEY (`trans_id`),
  ADD KEY `driver_id` (`driver_id`),
  ADD KEY `rider_id` (`rider_id`),
  ADD KEY `req_id` (`req_id`);

--
-- Indexes for table `distance`
--
ALTER TABLE `distance`
  ADD PRIMARY KEY (`did`);

--
-- Indexes for table `driveraccount`
--
ALTER TABLE `driveraccount`
  ADD PRIMARY KEY (`dic`),
  ADD KEY `driver_id` (`driver_id`);

--
-- Indexes for table `driverdetails`
--
ALTER TABLE `driverdetails`
  ADD PRIMARY KEY (`driver_id`),
  ADD KEY `vid` (`vid`);

--
-- Indexes for table `driverdocuments`
--
ALTER TABLE `driverdocuments`
  ADD PRIMARY KEY (`did`),
  ADD KEY `driver_id` (`driver_id`);

--
-- Indexes for table `driverlogin`
--
ALTER TABLE `driverlogin`
  ADD PRIMARY KEY (`dlogin_id`);

--
-- Indexes for table `fare`
--
ALTER TABLE `fare`
  ADD PRIMARY KEY (`fare_id`),
  ADD KEY `vid` (`vid`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD KEY `trans_id` (`trans_id`);

--
-- Indexes for table `rating`
--
ALTER TABLE `rating`
  ADD PRIMARY KEY (`rid`),
  ADD KEY `driver_id` (`driver_id`),
  ADD KEY `rider_id` (`rider_id`);

--
-- Indexes for table `request`
--
ALTER TABLE `request`
  ADD PRIMARY KEY (`req_id`),
  ADD KEY `driver_id` (`driver_id`),
  ADD KEY `rider_id` (`rider_id`),
  ADD KEY `vid` (`vid`);

--
-- Indexes for table `riderdetails`
--
ALTER TABLE `riderdetails`
  ADD PRIMARY KEY (`rider_id`);

--
-- Indexes for table `riderlogin`
--
ALTER TABLE `riderlogin`
  ADD PRIMARY KEY (`login_id`),
  ADD KEY `rider_id` (`rider_id`);

--
-- Indexes for table `tasks`
--
ALTER TABLE `tasks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vehicle`
--
ALTER TABLE `vehicle`
  ADD PRIMARY KEY (`vid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `bank`
--
ALTER TABLE `bank`
  MODIFY `trans_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `distance`
--
ALTER TABLE `distance`
  MODIFY `did` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
--
-- AUTO_INCREMENT for table `driveraccount`
--
ALTER TABLE `driveraccount`
  MODIFY `dic` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `driverdetails`
--
ALTER TABLE `driverdetails`
  MODIFY `driver_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=93;
--
-- AUTO_INCREMENT for table `driverdocuments`
--
ALTER TABLE `driverdocuments`
  MODIFY `did` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;
--
-- AUTO_INCREMENT for table `driverlogin`
--
ALTER TABLE `driverlogin`
  MODIFY `dlogin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `fare`
--
ALTER TABLE `fare`
  MODIFY `fare_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `rating`
--
ALTER TABLE `rating`
  MODIFY `rid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `request`
--
ALTER TABLE `request`
  MODIFY `req_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;
--
-- AUTO_INCREMENT for table `riderdetails`
--
ALTER TABLE `riderdetails`
  MODIFY `rider_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
--
-- AUTO_INCREMENT for table `riderlogin`
--
ALTER TABLE `riderlogin`
  MODIFY `login_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT for table `tasks`
--
ALTER TABLE `tasks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `vehicle`
--
ALTER TABLE `vehicle`
  MODIFY `vid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
