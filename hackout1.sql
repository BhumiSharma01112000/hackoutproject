-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Oct 05, 2019 at 01:24 PM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 7.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hackout1`
--

-- --------------------------------------------------------

--
-- Table structure for table `graph`
--

CREATE TABLE `graph` (
  `g_id` int(11) NOT NULL,
  `disaster` varchar(50) NOT NULL,
  `count` int(50) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `graph`
--

INSERT INTO `graph` (`g_id`, `disaster`, `count`, `timestamp`, `status`) VALUES
(1, 'earthquake', 102, '2019-07-12 08:51:31', 1),
(2, 'tsunami', 11, '2019-07-12 08:51:31', 1),
(3, 'flood', 26, '2019-07-12 09:00:46', 1),
(4, 'drought', 1, '2019-07-12 09:13:20', 1),
(5, 'manmade', 10, '2019-07-12 09:26:49', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tb1_alert`
--

CREATE TABLE `tb1_alert` (
  `alert_id` int(10) NOT NULL,
  `name` int(20) NOT NULL,
  `department` varchar(20) NOT NULL,
  `disaster_name` varchar(20) NOT NULL,
  `occurred_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `intensity` varchar(20) NOT NULL,
  `created_on` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_on` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb1_chart`
--

CREATE TABLE `tb1_chart` (
  `chart_id` int(10) NOT NULL,
  `name` varchar(20) NOT NULL,
  `no_of_occurrence` int(10) NOT NULL,
  `status` int(10) NOT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_on` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb1_currentdisaster`
--

CREATE TABLE `tb1_currentdisaster` (
  `disaster_id` int(10) NOT NULL,
  `name` varchar(50) NOT NULL,
  `description` varchar(5000) NOT NULL,
  `image` varchar(50) NOT NULL,
  `occurred_on` date NOT NULL,
  `status` int(10) NOT NULL,
  `current_status` varchar(200) DEFAULT NULL,
  `created_on` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_on` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb1_currentdisaster`
--

INSERT INTO `tb1_currentdisaster` (`disaster_id`, `name`, `description`, `image`, `occurred_on`, `status`, `current_status`, `created_on`, `updated_on`) VALUES
(4, 'Vayu', 'It Will Reach By 19/july/2019 Night', '../photos/download.jpg', '2019-07-18', 1, 'It is 1000km Away', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 'Tsunami', 'It will Reach the Costal Area by 18th Night', '../photos/drow.jpg', '2019-07-18', 1, 'It is 1000 km away', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tb1_detail`
--

CREATE TABLE `tb1_detail` (
  `detail_id` int(10) NOT NULL,
  `login_id` int(10) NOT NULL,
  `name` varchar(50) NOT NULL,
  `dob` date NOT NULL,
  `gender` varchar(10) NOT NULL,
  `address` varchar(500) NOT NULL,
  `profile_pic` varchar(50) NOT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_on` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb1_detail`
--

INSERT INTO `tb1_detail` (`detail_id`, `login_id`, `name`, `dob`, `gender`, `address`, `profile_pic`, `created_on`, `updated_on`) VALUES
(15, 16, 'Sharma Bhumi', '0000-00-00', 'female', 'H/502, Dev Vrushti, Near Tejendra Part-7, Ioc Road', '../photos/12.jpg', '2019-09-22 16:55:26', '0000-00-00 00:00:00'),
(16, 17, 'Bhumi Sharma', '2019-07-06', 'male', 'saibaug', '../photos/IMG_20180114_131937940.jpg', '2019-07-16 15:06:12', '0000-00-00 00:00:00'),
(65, 46, 'Mitendra Sharma', '2000-11-01', 'female', 'H/502, Dev Vrushti, Near Tejendra Part-7, Ioc Road', '../photos/IMG-20170101-WA0018.jpg', '2019-07-16 14:13:04', '0000-00-00 00:00:00'),
(68, 49, 'Mitendra Bhupendra Sharma', '1998-01-15', 'male', 'H/502, Dev Vrushti Appartment, Near TejendraNagar Part-7, Ioc Road', '../photos/IMG_20170807_151014.jpg', '2019-07-16 14:29:21', '0000-00-00 00:00:00'),
(69, 50, 'Zinal Thakkar', '2000-07-23', 'female', 'SaiBaug', '../photos/zinal.jpg', '2019-07-16 14:26:15', '0000-00-00 00:00:00'),
(70, 51, 'Ravina Sardar', '2001-08-23', 'female', 'Sarangpur', '../photos/IMG_20170701_175944486.jpg', '2019-10-04 22:31:45', '0000-00-00 00:00:00'),
(71, 52, 'Twinkle Shukla', '2019-07-10', 'female', 'SaiBaug', '../photos/IMG_20170701_175944486.jpg', '2019-07-16 14:10:26', '0000-00-00 00:00:00'),
(72, 53, 'Devanshi Shah', '2019-07-12', 'female', 'Ishanpur', '../photos/IMG_20180119_133417856.jpg', '2019-07-16 14:01:00', '0000-00-00 00:00:00'),
(74, 55, 'Mamta Sharma', '2019-07-10', 'male', 'gghh', '../photos/IMG_20170210_222905.jpg', '2019-07-16 14:20:35', '0000-00-00 00:00:00'),
(80, 61, 'Hirva', '2019-07-10', 'male', 'Sarangpur', '../photos/IMG_20170928_224806871.jpg', '2019-07-16 15:46:51', '0000-00-00 00:00:00'),
(83, 64, 'Muskan Rawat', '2019-07-03', 'female', 'Ahmedabad', '../photos/20170626_003442.jpg', '2019-10-04 22:27:20', '0000-00-00 00:00:00'),
(84, 65, 'bhumi', '2019-09-05', 'male', 'Ahmedabad', '../photos/IMG_3498.JPG', '2019-09-22 15:55:53', '0000-00-00 00:00:00'),
(85, 66, 'Bhumi', '2019-09-06', 'female', 'Ahmedabad', '../photos/IMG-20181101-WA0019.jpg', '2019-09-22 15:59:40', '0000-00-00 00:00:00'),
(86, 67, 'fdhshj', '2019-10-18', 'male', 'jhgjk', '../photos/20170330_133625254_iOS1-e1562787120776.j', '2019-10-04 22:17:59', '0000-00-00 00:00:00'),
(87, 68, 'shsjdhdsj', '2019-10-10', 'male', 'fgydhujiko', '../photos/1.png', '2019-10-04 22:25:16', '0000-00-00 00:00:00'),
(88, 69, 'dgdhgs', '2019-10-05', 'male', 'saduajhd', '../photos/default.png', '2019-10-04 22:24:58', '0000-00-00 00:00:00'),
(89, 71, 'dfghijok', '2019-10-10', 'male', 'cjsajd', '../photos/1.png', '2019-10-04 22:27:03', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tb1_disaster`
--

CREATE TABLE `tb1_disaster` (
  `disaster_id` int(10) NOT NULL,
  `name` varchar(50) NOT NULL,
  `description` varchar(5000) NOT NULL,
  `image` varchar(50) NOT NULL,
  `occurred_on` date NOT NULL,
  `status` int(10) NOT NULL,
  `created_on` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_on` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb1_disaster`
--

INSERT INTO `tb1_disaster` (`disaster_id`, `name`, `description`, `image`, `occurred_on`, `status`, `created_on`, `updated_on`) VALUES
(22, 'Bandipur Forest Fire	', 'On 21 February 2019, wildfire broke out in the bandipur tiger reserve. In history it is for first time where wildfire is flared up in bandipur and suddenly moving due to the sudden climatic change and rapid growth of dry grass and Lantana. According to reports there was no deaths of larger mammals in the park such as bision, elephants, leopard and tiger. But 10,000 acres of forest had been destroyed due to wildfire in bandipur', '../photos/bandipur.jpg', '2019-02-21', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(23, 'Cyclone Fani', 'Cyclone Fani was the strongest tropical cyclone to strike the Odisha which is situated in India. On 26th April, in the west of Sumatra in Indian ocean a tropical depression was formed from which Fani cyclone was originated. Due to this 1.6 crore people were affected. It caused loss of over Rs 9,000 crore in Odisha According to the examination, Cyclone Fani destroyed 20,367 villages in 14 coastal districts and 1.88 lakh hectare', '../photos/fani.jpg', '2019-04-26', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(24, 'Assam alcohol poisonings', 'In February 2019, at least 168 people died after drinking toxic bootleg alcohol in Golaghat and Jorhat districts in Indian state of Assam. The incident occurred two weeks after 100 people died by drinking toxic alcohol in the northern states of Uttar Pradesh and Uttarakhand. In February 2019, in Golaghat and Jorhat districts of Assam at least 168 people died after drinking toxic bootleg alcohol. The incident occurred two weeks', '../photos/assam.jpg', '2019-02-01', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(25, 'Surat Fire	', 'On 24 May 2019, a fire occurred at a commercial complex in Sarthana area of Surat, located in Gujarat state of India. In that fireTwenty-two students died and others were injured in an academic coaching centre which was located on the building terrace. The fire was started due to short circuit in air conditioner on the second floor the students in the coaching centre were trapped by the destruction of a wooden staircase. \n', '../photos/surat.jpg', '2019-05-24', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(26, 'KULLU BUS ACCIDENT', 'On 20 June 2019, in Dhoth Morh, tehsil Banjar, Kullu district in Himachal Pradesh an overloaded bus fell into a deep drain and in that accident 44 people died and 34 were injured. In Kullu hospitals, the injured were getting treatment. In that accident most of the victims were students, who were going back to home from Government Degree College.in that accident 44 people died and 34 were injured. it is a worst incident happen', '../photos/kullu.jpg', '2019-06-20', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(27, 'Seemanchal Express derailment', 'Seemanchal Express derailment - On 3 February 2019 near Sahdei Buzurg in Vaishali district of Bihar, India, the Seemanchal Express derailment occurred. More than 30 people were injured and 6 were killed. Investigations suggest that due to fracture in rail line the derailment happened. On 3 February 2019 near Sahdei Buzurg in Vaishali district of Bihar, India, the Seemanchal Express derailment occurred.', '../photos/seemanchal.jpg', '2019-02-03', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(28, '	Bihar encephalitis outbreak', 'Bihar encephalitis outbreak - In June 2019, in Bihar state of India an outbreak of acute encephalitis syndrome occurred. It is the second-longest heatwave in the region. Due to hypoglycemia, more than 100 children were dead.', '../photos/Bihar.jpg', '2019-06-07', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tb1_incidence`
--

CREATE TABLE `tb1_incidence` (
  `incidence_id` int(10) NOT NULL,
  `login_id` int(50) NOT NULL,
  `name` varchar(20) NOT NULL,
  `location` varchar(50) NOT NULL,
  `description` varchar(50) NOT NULL,
  `image` varchar(50) NOT NULL,
  `occurred_date` date NOT NULL,
  `occurred_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` int(10) NOT NULL,
  `verified` int(10) NOT NULL,
  `created_on` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_on` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb1_incidence`
--

INSERT INTO `tb1_incidence` (`incidence_id`, `login_id`, `name`, `location`, `description`, `image`, `occurred_date`, `occurred_time`, `status`, `verified`, `created_on`, `updated_on`) VALUES
(13, 17, '', 'commerece six road', 'one tree is fallen on the main highway', 'photos/darjeeling landslide2.jpg', '2019-07-16', '2019-07-18 02:57:54', 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(14, 17, '', 'Chandkheda Bus stop', 'one light pole is fallen on the bus', '../photos/54a3599840d8e.image.jpg', '2019-07-06', '2019-07-16 22:59:07', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(15, 17, '', 'Namsata circle, ShahiBaug', 'there is a tree fallen on the road', '../photos/download (1).jpg', '2019-07-17', '2019-09-22 17:01:57', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(16, 51, '', 'sadgh', 'djahd', '../photos/2014-07-01-003.jpg', '2019-10-10', '2019-10-04 22:31:20', 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(17, 17, '', 'feyui', 'ewftqyeu', '../photos/Fairness-Approach.png', '2019-10-09', '2019-10-05 02:19:00', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(18, 64, '', 'gandhinagar', 'gagd', '../photos/Common-Good-Approach.png', '2019-10-01', '2019-10-05 10:55:49', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tb1_info`
--

CREATE TABLE `tb1_info` (
  `info_id` int(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `location` varchar(100) NOT NULL,
  `description` varchar(200) NOT NULL,
  `intensity` varchar(200) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` bigint(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb1_info`
--

INSERT INTO `tb1_info` (`info_id`, `name`, `location`, `description`, `intensity`, `email`, `phone`) VALUES
(47, 'sd', 'sjahaj', 'SHAjsh', 'jsh', 'sardarravina@gmail.com', 8320547900),
(48, 'sjhgvhkbk', 'jk,bk.', 'jvjjhv', 'dff', 'sardarravina@gmail.com', 8320547900),
(49, 'sjhgvhkbk', 'jk,bk.', 'jvjjhv', 'dff', 'sardarravina@gmail.com', 8320547900),
(50, 'sjhgvhkbk', 'jk,bk.', 'jvjjhv', 'dff', 'sardarravina@gmail.com', 8320547900),
(51, 'n', 'e', 'e', 'l', 'sardarravina@gmail.com', 8320547900),
(52, 'n', 'e', 'e', 'l', 'sardarravina@gmail.com', 8320547900),
(53, 'n', 'e', 'e', 'l', 'sardarravina@gmail.com', 8320547900),
(54, '', '', '', '', 'sardarravina@gmail.com', 8320547900),
(55, '84', '54', '5', '45', 'sardarravina@gmail.com', 8320547900),
(56, '', '', '', '', 'sardarravina@gmail.com', 8320547900),
(57, '84', '54', '5', '45', 'sardarravina@gmail.com', 8320547900),
(58, '84', '54', '5', '45', 'sardarravina@gmail.com', 8320547900),
(59, '84', '54', '5', '45', 'sardarravina@gmail.com', 8320547900),
(60, 'GAG', 'HDGA', 'HH', 'ghs', 'sharmabhumi2000@gmail.com', 9898660970),
(61, 'GAG', 'HDGA', 'HH', 'ghs', 'sharmabhumi2000@gmail.com', 9898660970),
(62, 'GAG', 'HDGA', 'HH', 'ghs', 'sharmabhumi2000@gmail.com', 9898660970),
(63, 'GAG', 'HDGA', 'HH', 'ghs', 'sharmabhumi2000@gmail.com', 9898660970),
(64, '', '', '', '', 'sharmabhumi2000@gmail.com', 9898660970),
(65, 'kfjksd', 'ndnfd', 'ADFDKFN', 'NEAKFN', 'sharmabhumi2000@gmail.com', 9898660970),
(66, 'FNGK', 'S;LFGLR', 'FLG,L', 'F;LFGR', '', 0),
(67, 'kdfjfghlkq', 'seklfmk', 'mfdklgmf;l', 'mfsgmfl;d', '', 0),
(68, 'DSHAJ', 'hajdsh', 'jdah', 'hjdahd', 'sharmabhumi2000@gmail.com', 9898660970),
(69, 'DSHAJ', 'hajdsh', 'jdah', 'hjdahd', 'sharmabhumi2000@gmail.com', 9898660970),
(70, 'DSHAJ', 'hajdsh', 'jdah', 'hjdahd', 'sharmabhumi2000@gmail.com', 9898660970),
(71, '', '', '', '', 'sharmabhumi2000@gmail.com', 9898660970),
(72, 'fa', 'jdash', 'hdajsha', 'hjh', 'sharmabhumi2000@gmail.com', 9898660970),
(73, 'dhaj', 'jhaJS', 'JHJAhsj', 'hj', 'sharmabhumi2000@gmail.com', 9898660970),
(74, 'vayu', 'gandhinagar', 'dasj', '100', 'sharmabhumi2000@gmail.com', 9898660970),
(75, 'vayu', 'gandhinagar', 'dasj', '100', 'sharmabhumi2000@gmail.com', 9898660970),
(76, 'Vayu', 'DA-IICT', 'be alert', '50', 'sardarravina@gmail.com', 9427421806);

-- --------------------------------------------------------

--
-- Table structure for table `tb1_login`
--

CREATE TABLE `tb1_login` (
  `login_id` int(10) NOT NULL,
  `email_id` varchar(50) NOT NULL,
  `phone_no` bigint(20) NOT NULL,
  `password` varchar(50) NOT NULL,
  `status` int(10) NOT NULL,
  `type` int(10) NOT NULL,
  `active` int(10) NOT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_on` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb1_login`
--

INSERT INTO `tb1_login` (`login_id`, `email_id`, `phone_no`, `password`, `status`, `type`, `active`, `created_on`, `updated_on`) VALUES
(16, 'sharmabhumi2000@gmail.com', 9998252323, 'c20ad4d76fe97759aa27a0c99bff6710', 1, 2, 1, '2019-10-04 17:39:02', '0000-00-00 00:00:00'),
(17, 'bhumisharma401@gmail.com', 9725973035, 'c20ad4d76fe97759aa27a0c99bff6710', 1, 1, 1, '2019-10-04 22:06:08', '0000-00-00 00:00:00'),
(46, 'mitendrasharma1998@gmail.com', 9574066880, '25d55ad283aa400af464c76d713c07ad', 1, 2, 1, '2019-07-14 09:26:40', '0000-00-00 00:00:00'),
(49, 'mitendrasharma102@gmail.com', 9574066883, '25d55ad283aa400af464c76d713c07ad', 1, 1, 0, '2019-09-22 16:56:25', '0000-00-00 00:00:00'),
(50, 'zinal23072000@gmail.com', 8866889017, '25d55ad283aa400af464c76d713c07ad', 1, 1, 1, '2019-07-14 09:49:40', '0000-00-00 00:00:00'),
(51, 'c', 8320547900, 'c20ad4d76fe97759aa27a0c99bff6710', 1, 3, 1, '2019-09-22 17:27:28', '0000-00-00 00:00:00'),
(52, 'twinkleshukla@gmail.com', 7878660970, '25d55ad283aa400af464c76d713c07ad', 1, 2, 1, '2019-07-16 16:22:57', '0000-00-00 00:00:00'),
(53, 'devanshi@gmail.com', 7845787878, '25d55ad283aa400af464c76d713c07ad', 1, 2, 1, '2019-07-16 16:23:00', '0000-00-00 00:00:00'),
(55, 'mamta@gmail.com', 9784578787, '25d55ad283aa400af464c76d713c07ad', 1, 1, 1, '2019-07-16 14:56:16', '0000-00-00 00:00:00'),
(61, 'hirva@gmail.com', 9745154545, '25d55ad283aa400af464c76d713c07ad', 1, 2, 1, '2019-07-16 16:23:06', '0000-00-00 00:00:00'),
(64, 'muskan071212001@gmail.com', 7898787478, '25d55ad283aa400af464c76d713c07ad', 1, 3, 1, '2019-10-04 21:52:02', '0000-00-00 00:00:00'),
(65, 'bhumisharma4011@gmail.com', 9745621215, '25d55ad283aa400af464c76d713c07ad', 0, 2, 1, '2019-09-22 15:55:53', '0000-00-00 00:00:00'),
(66, 'bhumisharma111@gmail.com', 7842145432, '25d55ad283aa400af464c76d713c07ad', 0, 2, 1, '2019-09-22 15:59:40', '0000-00-00 00:00:00'),
(67, 'ahfsah@fhsag', 8784541211, '25d55ad283aa400af464c76d713c07ad', 0, 2, 1, '2019-10-04 22:17:59', '0000-00-00 00:00:00'),
(68, 'wj@jwkds', 7845123265, '25d55ad283aa400af464c76d713c07ad', 0, 2, 0, '2019-10-04 22:25:21', '0000-00-00 00:00:00'),
(69, 'dhdg@hs', 9745123512, '25d55ad283aa400af464c76d713c07ad', 0, 2, 0, '2019-10-04 22:25:07', '0000-00-00 00:00:00'),
(70, 'dfghj@cvbnm', 7845127849, '25d55ad283aa400af464c76d713c07ad', 0, 3, 1, '2019-10-04 22:25:59', '0000-00-00 00:00:00'),
(71, 'dw@dh', 7845654512, '25f9e794323b453885f5181f1b624d0b', 0, 3, 0, '2019-10-04 22:27:11', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tb1_map`
--

CREATE TABLE `tb1_map` (
  `map_id` int(10) NOT NULL,
  `address` varchar(500) NOT NULL,
  `latitude` float NOT NULL,
  `longitude` float NOT NULL,
  `status` int(10) NOT NULL,
  `mobile` bigint(50) NOT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_on` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb1_map`
--

INSERT INTO `tb1_map` (`map_id`, `address`, `latitude`, `longitude`, `status`, `mobile`, `created_on`, `updated_on`) VALUES
(3, 'CommissionerAMR Andhra Pradesh Academy of Rural Development (APARD), Rajendranagar, Hyderabad, 500 030 Andhra Pradesh, India', 15.9129, 79.74, 1, 24014027, '2019-07-17 10:36:05', '0000-00-00 00:00:00'),
(4, 'Director General (Trg.)\nAdministrative Training Institute D-Sector, Naharlagum, District Papumpara, Arunachal Pradesh', 28.218, 94.7278, 1, 2244036, '2019-07-11 19:19:38', '0000-00-00 00:00:00'),
(5, 'Director \nAssam Administrative Staff College, Jawahar Nagar, P. O. Khanpara, Guwahati-781022, Assam', 26.2006, 92.9376, 1, 2361547, '2019-07-11 19:19:49', '0000-00-00 00:00:00'),
(6, 'Vice - Chancellor\n3, Tezpur University, Tezpur, NAPAAM, District Sonitpur, Assam-784 028', 26.2006, 92.9376, 1, 23263325, '2019-07-11 19:20:01', '0000-00-00 00:00:00'),
(7, '	Director General\nBihar Institute of Public Administration and Rural Development WALMI Complex, Phulwari Sharif Patna-801505, Bihar', 25.0961, 85.3131, 1, 2452585, '2019-07-11 19:20:31', '0000-00-00 00:00:00'),
(8, 'Director General\nChattisgarh Academy of Administration, Indrawati Khand, Mantralaya Parisar, Raipur', 21.2787, 81.8661, 1, 2221280, '2019-07-11 19:20:35', '0000-00-00 00:00:00'),
(10, 'Spl. Secretary\nDirectorate of Training UT Civil Services, Institutional Area, Vishwas Nagar, Shahadara, Delhi-110032', 28.6863, 77.2218, 1, 22304439, '2019-07-11 19:20:52', '0000-00-00 00:00:00'),
(11, '	Executive Director\nGIDM, Gujarat State Disaster Management Authority, Govt. of Gujarat, Block No.11, 5th Floor, Sector-11, Udyog Bhawan, Gandhinagar, Gujarat', 22.2587, 71.1924, 1, 23259303, '2019-07-11 19:21:09', '0000-00-00 00:00:00'),
(12, 'Director General\nHaryana Institute of Public Administration (HIPA) Complex-76, Sector-18, Gurgaon-122001, Haryana', 29.0588, 76.0856, 1, 2340413, '2019-07-11 19:21:21', '0000-00-00 00:00:00'),
(13, 'Director,\nHimachal Pradesh Institute of Public Administration, Fairlawans, Shimla-171012, Himachal Pradesh\n', 31.1048, 77.1734, 1, 2647855, '2019-07-11 19:21:38', '0000-00-00 00:00:00'),
(14, 'Director General\nJ&K Institute of Management and Public Administration and Rural Development, (IMPA), 3rd Floor, Vikas Bhawan, Rail Head Complex, Jammu - 180004\n', 33.7782, 76.5762, 1, 2472564, '2019-07-11 19:22:11', '0000-00-00 00:00:00'),
(15, '\nShri Krishna Institute of Public Administration Meurs Road, Post-Ranchi University, Ranchi-834008, Jharkhand', 23.6102, 85.2799, 1, 2283804, '2019-07-11 19:23:33', '0000-00-00 00:00:00'),
(16, '\nAdministrative Training Institute P. A. No. 2, Lalitha Mahal Road, Mysore-570011, Karnataka', 15.3173, 75.7139, 1, 2520906, '2019-07-11 19:23:21', '0000-00-00 00:00:00'),
(17, '\nInstitute of Land & Disaster Management PTP Nagar, Near Nirmithi Kendra, Trivandrum-695038, Kerala', 10.8505, 76.2711, 1, 2362885, '2019-07-11 19:23:15', '0000-00-00 00:00:00'),
(18, 'Disaster Management Institute Paryavaran prisar, E-5, Arera Colony, PB No. 563 Bhopal-462016, MP (India)', 22.9734, 78.6569, 1, 2461538, '2019-07-11 19:23:10', '0000-00-00 00:00:00'),
(19, 'Yashwant Chavan Academy of Development Administration, Raj Bhavan Complex, Baner Road, Ganeshkhind, Pune-410017, Maharashtra', 19.7515, 75.7139, 1, 25608209, '2019-07-11 19:24:13', '0000-00-00 00:00:00'),
(20, ' Relief & Disaster Management and Director, DMI\nGovt. of Manipur, Secretariat, Annexe Building, Room No.115, North Block, Imphal-795001', 23.7072, 73.5211, 1, 2440736, '2019-07-11 19:24:32', '0000-00-00 00:00:00'),
(21, 'Meghalaya Administrative Training Institute (MATI), IGP Point, Behind Addl. Secretariat Building, Shillong-793001, Meghalaya', 25.467, 91.3662, 1, 2210132, '2019-07-11 19:24:39', '0000-00-00 00:00:00'),
(22, 'Administrative Training Institute New Capital Complex, Khatla, Aizwal, Mizoram-796 001', 23.1645, 92.9376, 1, 2335830, '2019-07-11 19:25:04', '0000-00-00 00:00:00'),
(23, 'Administrative Training Institute, P. Box-162, Kimho, Kohima-797003, Nagaland', 26.1584, 94.5624, 1, 2280063, '2019-07-11 19:25:22', '0000-00-00 00:00:00'),
(24, 'Gopabandhu Academy of Administration, Chandrashekharpur, Bhubaneswar-751023, Orissa', 20.9517, 85.0985, 1, 2300743, '2019-07-11 19:25:36', '0000-00-00 00:00:00'),
(25, 'Mahatama Gandhi State Institute of Public Administration, Punjab, Sector 26, Near Sant Kabir School, Chandigarh-160019, Punjab', 31.1471, 75.3412, 1, 2792114, '2019-07-11 19:25:49', '0000-00-00 00:00:00'),
(26, 'HCM Rajasthan State Institute of Public Administration, Jawaharlal Nehru Marg, Jaipur-302017, Rajasthan', 27.0238, 74.2179, 1, 2706556, '2019-07-11 19:26:13', '0000-00-00 00:00:00'),
(27, 'G.B. Pant Institute of Himalayan Environment and Development, Sikkim Unit, Gangtok\nHQ at: Kosi Katarmal, Almora-263643 Uttarakhand (Sikkim Unit)', 27.533, 88.5122, 1, 241015, '2019-07-11 19:26:28', '0000-00-00 00:00:00'),
(28, 'DG Training (Ex Officio)\nAdministrative Training Institute, 163/1, P S Kumarasamy, Raja Salai, Greenways Road, Chennai- 600028, Tamil Nadu', 11.1271, 78.6569, 1, 24938247, '2019-07-11 19:26:33', '0000-00-00 00:00:00'),
(29, 'State Institute of Public Administration and Rural Development (SIPARD), Camper Bazar, A. D. Nagar, P. O. SD Mission, Camper Bazar, Agartalla, Tripura West-799003', 23.9408, 91.9882, 1, 2374048, '2019-07-11 19:27:03', '0000-00-00 00:00:00'),
(30, 'Uttar Pradesh Academy of Administration and Management Sector-''D'', ALIGANJ, Lucknow-226024, Uttar Pradesh', 26.8467, 80.9462, 1, 2336292, '2019-07-11 19:27:15', '0000-00-00 00:00:00'),
(31, 'Uttarakhand Academy of Administration Ardwell Camp, Mallital Nainital-263001, Uttarakhand', 30.0668, 79.0193, 1, 239114, '2019-07-11 19:27:27', '0000-00-00 00:00:00'),
(32, 'Disaster Mitigation and Management Centre, Department of Disaster Management, Uttarakhand Secretariat Rajpur Road, Dehradun-248001 Uttarakhand', 30.0668, 79.0193, 1, 2710232, '2019-07-11 19:27:39', '0000-00-00 00:00:00'),
(33, 'Administrative Training Institute, Government of West Bengal FC Block, Sector III, Salt Lake City, Kolkata-700 106', 22.9868, 87.855, 1, 23373960, '2019-07-11 19:27:42', '0000-00-00 00:00:00'),
(34, 'Ahmedabad, Gujarat, India', 23.0225, 72.5714, 0, 9898660970, '2019-07-14 11:28:46', '0000-00-00 00:00:00'),
(35, 'Sabarmati, Ahmedabad, Gujarat, India', 23.0903, 72.5856, 0, 8745454545, '2019-07-14 11:28:50', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tb1_officer`
--

CREATE TABLE `tb1_officer` (
  `officer_id` int(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` bigint(60) NOT NULL,
  `address` varchar(300) NOT NULL,
  `designation` varchar(30) NOT NULL,
  `status` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb1_officer`
--

INSERT INTO `tb1_officer` (`officer_id`, `name`, `email`, `phone`, `address`, `designation`, `status`) VALUES
(10, 'Ravina sardar', 'sardarravina@gmail.com', 9427421806, 'Sarangpur, Ahmedabad', 'Mayor', 1),
(11, 'Bhumi Sharma', 'sharmabhumi2000@gmail.com', 9898660970, 'Ahmedabad', 'Mayor, Ahmedabad', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tb1_otp`
--

CREATE TABLE `tb1_otp` (
  `otp_id` int(10) NOT NULL,
  `login_id` int(10) NOT NULL,
  `otp` int(10) NOT NULL,
  `otp_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb1_otp`
--

INSERT INTO `tb1_otp` (`otp_id`, `login_id`, `otp`, `otp_time`) VALUES
(1, 0, 259988, '2019-07-11 06:05:08'),
(2, 16, 259988, '2019-07-11 06:05:12'),
(3, 16, 154812, '2019-07-11 06:06:15'),
(4, 17, 908664, '2019-07-16 12:58:31'),
(5, 0, 469964, '2019-07-16 13:01:29'),
(6, 17, 469964, '2019-07-16 13:01:32'),
(7, 0, 747534, '2019-07-16 13:02:27'),
(8, 17, 747534, '2019-07-16 13:02:31'),
(9, 0, 518331, '2019-07-16 13:03:46'),
(10, 17, 518331, '2019-07-16 13:03:50'),
(11, 16, 506971, '2019-07-16 16:36:46'),
(12, 0, 347631, '2019-10-04 21:52:54'),
(13, 0, 835836, '2019-10-04 21:55:12'),
(14, 17, 187933, '2019-10-04 21:59:40'),
(15, 17, 555935, '2019-10-04 22:05:42'),
(16, 0, 509103, '2019-10-04 22:06:21'),
(17, 0, 607897, '2019-10-04 22:07:08'),
(18, 17, 607897, '2019-10-04 22:07:13');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `graph`
--
ALTER TABLE `graph`
  ADD PRIMARY KEY (`g_id`);

--
-- Indexes for table `tb1_alert`
--
ALTER TABLE `tb1_alert`
  ADD PRIMARY KEY (`alert_id`);

--
-- Indexes for table `tb1_chart`
--
ALTER TABLE `tb1_chart`
  ADD PRIMARY KEY (`chart_id`);

--
-- Indexes for table `tb1_currentdisaster`
--
ALTER TABLE `tb1_currentdisaster`
  ADD PRIMARY KEY (`disaster_id`);

--
-- Indexes for table `tb1_detail`
--
ALTER TABLE `tb1_detail`
  ADD PRIMARY KEY (`detail_id`),
  ADD KEY `login_id` (`login_id`);

--
-- Indexes for table `tb1_disaster`
--
ALTER TABLE `tb1_disaster`
  ADD PRIMARY KEY (`disaster_id`);

--
-- Indexes for table `tb1_incidence`
--
ALTER TABLE `tb1_incidence`
  ADD PRIMARY KEY (`incidence_id`),
  ADD KEY `login_id` (`login_id`);

--
-- Indexes for table `tb1_info`
--
ALTER TABLE `tb1_info`
  ADD PRIMARY KEY (`info_id`);

--
-- Indexes for table `tb1_login`
--
ALTER TABLE `tb1_login`
  ADD PRIMARY KEY (`login_id`);

--
-- Indexes for table `tb1_map`
--
ALTER TABLE `tb1_map`
  ADD PRIMARY KEY (`map_id`);

--
-- Indexes for table `tb1_officer`
--
ALTER TABLE `tb1_officer`
  ADD PRIMARY KEY (`officer_id`);

--
-- Indexes for table `tb1_otp`
--
ALTER TABLE `tb1_otp`
  ADD PRIMARY KEY (`otp_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `graph`
--
ALTER TABLE `graph`
  MODIFY `g_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `tb1_alert`
--
ALTER TABLE `tb1_alert`
  MODIFY `alert_id` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tb1_chart`
--
ALTER TABLE `tb1_chart`
  MODIFY `chart_id` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tb1_currentdisaster`
--
ALTER TABLE `tb1_currentdisaster`
  MODIFY `disaster_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `tb1_detail`
--
ALTER TABLE `tb1_detail`
  MODIFY `detail_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=90;
--
-- AUTO_INCREMENT for table `tb1_disaster`
--
ALTER TABLE `tb1_disaster`
  MODIFY `disaster_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
--
-- AUTO_INCREMENT for table `tb1_incidence`
--
ALTER TABLE `tb1_incidence`
  MODIFY `incidence_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `tb1_info`
--
ALTER TABLE `tb1_info`
  MODIFY `info_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;
--
-- AUTO_INCREMENT for table `tb1_login`
--
ALTER TABLE `tb1_login`
  MODIFY `login_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;
--
-- AUTO_INCREMENT for table `tb1_map`
--
ALTER TABLE `tb1_map`
  MODIFY `map_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;
--
-- AUTO_INCREMENT for table `tb1_officer`
--
ALTER TABLE `tb1_officer`
  MODIFY `officer_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `tb1_otp`
--
ALTER TABLE `tb1_otp`
  MODIFY `otp_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
