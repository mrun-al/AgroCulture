-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:4000
-- Generation Time: Mar 18, 2023 at 08:11 AM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `agroculture`
--

-- --------------------------------------------------------

--
-- Table structure for table `blogdata`
--

CREATE TABLE `blogdata` (
  `blogId` int(10) NOT NULL,
  `blogUser` varchar(256) NOT NULL,
  `blogTitle` varchar(256) NOT NULL,
  `blogContent` longtext NOT NULL,
  `blogTime` timestamp NOT NULL DEFAULT current_timestamp(),
  `likes` int(10) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `blogdata`
--

INSERT INTO `blogdata` (`blogId`, `blogUser`, `blogTitle`, `blogContent`, `blogTime`, `likes`) VALUES
(19, 'ThePhenom', 'First Blog', '<p>Its Awesome website<img alt=\"wink\" src=\"https://cdn.ckeditor.com/4.8.0/full/plugins/smiley/images/wink_smile.png\" style=\"height:23px; width:23px\" title=\"wink\" /></p>\r\n', '2018-02-25 13:09:41', 1),
(20, 'buyer123', 'Gardening Person', '<p>Hey guys, I urgently need a gardener</p>\r\n<p>Contact me +91 8898076543<p>\r\n', '2023-03-16 09:20:35', 1),
(21, 'Mrunal', 'People Required for Harvesting', '<p>Hi Guys,</p>\r\n\r\n<p>I want 8 people for harvesting for 10days. I&#39;ll be pay 100rs per day</p>\r\n\r\n<p>Contact me +91 9087654321</p>\r\n', '2023-03-16 10:29:49', 1);

-- --------------------------------------------------------

--
-- Table structure for table `blogfeedback`
--

CREATE TABLE `blogfeedback` (
  `blogId` int(10) NOT NULL,
  `comment` varchar(256) NOT NULL,
  `commentUser` varchar(256) NOT NULL,
  `commentPic` varchar(256) NOT NULL DEFAULT 'profile0.png',
  `commentTime` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `blogfeedback`
--

INSERT INTO `blogfeedback` (`blogId`, `comment`, `commentUser`, `commentPic`, `commentTime`) VALUES
(19, 'Mast yarr', 'ThePhenom', 'profile0.png', '2018-02-25 13:09:54'),
(19, 'djj', 'Bunty', 'profile0.png', '2023-03-16 14:59:48'),
(21, 'Interested', 'Bunty', 'profile0.png', '2023-03-16 15:00:16');

-- --------------------------------------------------------

--
-- Table structure for table `buyer`
--

CREATE TABLE `buyer` (
  `bid` int(100) NOT NULL,
  `bname` varchar(100) NOT NULL,
  `busername` varchar(100) NOT NULL,
  `bpassword` varchar(100) NOT NULL,
  `bhash` varchar(100) NOT NULL,
  `bemail` varchar(100) NOT NULL,
  `bmobile` varchar(100) NOT NULL,
  `baddress` text NOT NULL,
  `bactive` int(100) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `buyer`
--

INSERT INTO `buyer` (`bid`, `bname`, `busername`, `bpassword`, `bhash`, `bemail`, `bmobile`, `baddress`, `bactive`) VALUES
(3, 'buyer123', 'buyer123', '$2y$10$JibKrcooki6S0uu.y/RwM.YIzyOJv6uK5G9RChGDgXPHDm/YNxNai', 'be83ab3ecd0db773eb2dc1b0a17836a1', 'buyer123@gmail.com', '8898382751', 'Ghatkopar', 0),
(5, 'Sahil', 'Sahil', '$2y$10$5atEKMHj2p5VWylKI.pdx.4wgTF2KMj.6G1XUbMmeJbrT4Wb3j9zu', '19b650660b253761af189682e03501dd', 'sahil123@gmail.com', '9087654326', 'Kurla', 0);

-- --------------------------------------------------------

--
-- Table structure for table `farmer`
--

CREATE TABLE `farmer` (
  `fid` int(255) NOT NULL,
  `fname` varchar(255) NOT NULL,
  `fusername` varchar(255) NOT NULL,
  `fpassword` varchar(255) NOT NULL,
  `fhash` varchar(255) NOT NULL,
  `femail` varchar(255) NOT NULL,
  `fmobile` varchar(255) NOT NULL,
  `faddress` text NOT NULL,
  `factive` int(255) NOT NULL DEFAULT 0,
  `frating` int(11) NOT NULL DEFAULT 0,
  `picExt` varchar(255) NOT NULL DEFAULT 'png',
  `picStatus` int(10) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `farmer`
--

INSERT INTO `farmer` (`fid`, `fname`, `fusername`, `fpassword`, `fhash`, `femail`, `fmobile`, `faddress`, `factive`, `frating`, `picExt`, `picStatus`) VALUES
(3, 'Kaivalya Hemant Mendki', 'ThePhenom', '$2y$10$22ezmzHRa9c5ycHmVm5RpOnlT4LwFaDZar1XhmLRJQKGrcVRhPgti', '61b4a64be663682e8cb037d9719ad8cd', 'kmendki98@gmail.com', '8600611198', 'abcde', 0, 0, 'png', 0),
(5, 'Pratibha', 'Pratibha', '$2y$10$CrxZVVGRaCcSuSxf4IUevOwm8GigBDonNX.hqTS8CvberwVH3jYBK', '9e3cfc48eccf81a0d57663e129aef3cb', 'rpratibha842@gmail.com', '8898382751', 'Powai', 0, 0, 'png', 0),
(6, 'pooja', 'pooja', '$2y$10$aV.plolbm8ching5iKmEn.RNsKwFIjJyYJK9t.0Y9G/sSaHHEDpsO', '8dd48d6a2e2cad213179a3992c0be53c', 'rpratibha007@gmail.com', '8976543211', 'Powaii', 0, 0, 'png', 0),
(7, 'Mrunal', 'Mrunal', '$2y$10$XtgG36mK.qH3tfpOVSNn3.3gMbfPtT3NbK3nycO3O1fimuTpeI02e', 'd14220ee66aeec73c49038385428ec4c', 'mrunu@gmail.com', '8907654321', 'Chandivali', 0, 0, 'png', 0),
(8, 'Bunty', 'Bunty', '$2y$10$7MCOJ8kaqVCBQyEXiaUasutHPSD.RIPtNVGWnr35sg.8xP1SQJpxa', 'b1eec33c726a60554bc78518d5f9b32c', 'Bunty@gmail.com', '9876543201', 'Powai', 0, 0, 'png', 0);

-- --------------------------------------------------------

--
-- Table structure for table `fproduct`
--

CREATE TABLE `fproduct` (
  `fid` int(255) NOT NULL,
  `pid` int(255) NOT NULL,
  `product` varchar(255) NOT NULL,
  `pcat` varchar(255) NOT NULL,
  `pinfo` varchar(255) NOT NULL,
  `price` float NOT NULL,
  `pimage` varchar(255) NOT NULL DEFAULT 'blank.png',
  `picStatus` int(10) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fproduct`
--

INSERT INTO `fproduct` (`fid`, `pid`, `product`, `pcat`, `pinfo`, `price`, `pimage`, `picStatus`) VALUES
(7, 32, 'Hay Blader', 'Vegetable', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a ', 2000, 'Hay Blader7.jpg', 1),
(8, 33, 'Thresher', 'harvest', '<p>This thresher consists of&nbsp;<strong>threshing cylinder, oscillating box, straw walker, and winnowing and cleaning attachment</strong>. The rasp-bar cylinder is made of cast iron rings, sheet metal and toothed racks and is fitted on the main shaft ru', 2000, 'Thresher8.jpg', 1),
(8, 34, 'Harrows', 'harvest', '<p>Harrowing removes dead thatch lifts vegetation up and levels any mole hills. Its job is to allow air movement and root aeration which helps the soil to breathe and improves water infiltration.&nbsp;</p>\r\n', 4000, 'Harrows8.png', 1),
(8, 35, 'Tractor', 'harvest', '<p>&nbsp;</p>\r\n\r\n<p>This&nbsp;farm tractor is used for&nbsp;pulling or pushing agricultural machinery or trailers, for plowing, tilling, disking, harrowing, planting, and similar tasks.</p>\r\n', 3500, 'Tractor8.jpg', 1),
(8, 36, 'Combine Harvester', 'harvest', '<p>Combine harvesting combines several operations into one:&nbsp;cutting the crop, feeding it into threshing mechanism, threshing, cleaning, and discharging rain into a bulk wagon or directly into a bags. Straw is usually discharged behind the combine in ', 10000, 'Combine Harvester8.jpg', 1),
(8, 37, 'Irrigation Pump', 'irrigation', '<p>Irrigation pumps are used to pump water from a lower to a higher level from which the water then flows through channels to the fields requiring irrigation (lift operation) or to raise it to the required pressure head so that it can be sprayed on the fi', 3000, 'Irrigation Pump8.jpg', 1),
(8, 38, 'Irrigation Sprayer', 'irrigation', '<p>This sprayer is&nbsp;to break the liquid into droplets of effective size and distribute them uniformly over the surface or space to be protected. Another function is to regulate the amount of insecticide to avoid excessive application that might prove ', 2000, 'Irrigation Sprayer8.jpg', 1),
(8, 40, 'Trowel', 'gardening', '<p>A trowel is a small garden tool which you use for&nbsp;digging small holes or removing weeds.</p>\r\n', 500, 'Trowel8.jpg', 1),
(8, 42, 'Cultivator', 'harvest', '<p>A&nbsp;cultivator&nbsp;is a piece of&nbsp;agricultural<em> </em>equipment&nbsp;used for secondary tillage.</p>\r\n', 1500, 'Cultivator8.jpg', 1),
(8, 43, 'Trolley', 'harvest', '<p>Tractor trolleys or tractor trailers are used for&nbsp;transporting agriculture products, construction materials, and many other things.</p>\r\n', 2500, 'Trolley8.jpg', 1),
(8, 44, 'Gardening Wheelbarrows', 'gardening', '<p>Wheelbarrows and carts are very handy for hauling bags of fertilizer or mulch, plants, tools, trash or bulk materials like soil, sand, gravel or compost.</p>\r\n', 1000, 'Gardening Wheelbarrows8.jpg', 1),
(8, 45, 'Lawn Mower', 'gardening', '<p>A lawn mower is a machine used to&nbsp;mow grass or plants. This machine is commonly used to tidy up the garden and also to clear the fields from grass or other types of grass. The commonly used lawn mowers are made of thin, hard and very sharp iron pl', 2000, 'Lawn Mower8.jpg', 1),
(8, 46, 'Rake', 'gardening', '<p>A rake is a garden tool consisting of a row of metal or wooden teeth attached to a long handle. You can use a rake&nbsp;to make the earth smooth and level before you put plants in, or to gather leaves together</p>\r\n', 1200, 'Rake8.jpg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `likedata`
--

CREATE TABLE `likedata` (
  `blogId` int(10) NOT NULL,
  `blogUserId` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `likedata`
--

INSERT INTO `likedata` (`blogId`, `blogUserId`) VALUES
(19, 3),
(20, 3),
(21, 5);

-- --------------------------------------------------------

--
-- Table structure for table `mycart`
--

CREATE TABLE `mycart` (
  `bid` int(10) NOT NULL,
  `pid` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mycart`
--

INSERT INTO `mycart` (`bid`, `pid`) VALUES
(3, 27),
(3, 30),
(0, 27),
(6, 31),
(7, 32);

-- --------------------------------------------------------

--
-- Table structure for table `review`
--

CREATE TABLE `review` (
  `pid` int(10) NOT NULL,
  `name` varchar(255) NOT NULL,
  `rating` int(10) NOT NULL,
  `comment` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `tid` int(10) NOT NULL,
  `bid` int(10) NOT NULL,
  `pid` int(10) NOT NULL,
  `name` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `mobile` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `pincode` varchar(255) NOT NULL,
  `addr` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`tid`, `bid`, `pid`, `name`, `city`, `mobile`, `email`, `pincode`, `addr`) VALUES
(1, 3, 28, 'sa,j,cns', 'sajc', 'sajch', 'kmendki98@gmail.com', 'sacu', 'ckaskjc'),
(2, 6, 31, 'prasad', 'Mumbai', '9876543212', 'rpooja219@gmail.com', '400072', 'Powai'),
(3, 7, 31, 'Mrunal', 'Mumbai', '9876543212', 'mrunu@gmail.com', '400072', 'Powai');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `blogdata`
--
ALTER TABLE `blogdata`
  ADD PRIMARY KEY (`blogId`);

--
-- Indexes for table `buyer`
--
ALTER TABLE `buyer`
  ADD PRIMARY KEY (`bid`),
  ADD UNIQUE KEY `bid` (`bid`);

--
-- Indexes for table `farmer`
--
ALTER TABLE `farmer`
  ADD PRIMARY KEY (`fid`),
  ADD UNIQUE KEY `fid` (`fid`);

--
-- Indexes for table `fproduct`
--
ALTER TABLE `fproduct`
  ADD PRIMARY KEY (`pid`);

--
-- Indexes for table `likedata`
--
ALTER TABLE `likedata`
  ADD KEY `blogId` (`blogId`),
  ADD KEY `blogUserId` (`blogUserId`);

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`tid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `blogdata`
--
ALTER TABLE `blogdata`
  MODIFY `blogId` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `buyer`
--
ALTER TABLE `buyer`
  MODIFY `bid` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `farmer`
--
ALTER TABLE `farmer`
  MODIFY `fid` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `fproduct`
--
ALTER TABLE `fproduct`
  MODIFY `pid` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `tid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `buyer`
--
ALTER TABLE `buyer`
  ADD CONSTRAINT `buyer_ibfk_1` FOREIGN KEY (`bid`) REFERENCES `farmer` (`fid`);

--
-- Constraints for table `likedata`
--
ALTER TABLE `likedata`
  ADD CONSTRAINT `likedata_ibfk_1` FOREIGN KEY (`blogId`) REFERENCES `blogdata` (`blogId`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
