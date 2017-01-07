-- phpMyAdmin SQL Dump
-- version 4.4.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 30, 2016 at 09:41 PM
-- Server version: 5.6.26
-- PHP Version: 5.5.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `communication`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL DEFAULT '',
  `password` varchar(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `name`, `password`) VALUES
(1, 'admin', '123456');

-- --------------------------------------------------------

--
-- Table structure for table `client_invoices`
--

CREATE TABLE IF NOT EXISTS `client_invoices` (
  `id` int(11) NOT NULL,
  `client_email` varchar(255) NOT NULL,
  `invoice` varchar(255) NOT NULL,
  `posting_date` date NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `client_invoices`
--

INSERT INTO `client_invoices` (`id`, `client_email`, `invoice`, `posting_date`) VALUES
(10, 'mridul@gmail.com', 'magento.pdf', '2015-01-09');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE IF NOT EXISTS `contact` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `mobile` int(10) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `query` longtext NOT NULL,
  `posting_date` date NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `name`, `email`, `mobile`, `subject`, `query`, `posting_date`) VALUES
(1, 'mridul', 'mridulkumar555@gmail.com', 2147483647, 'hi', 'hwooooooooooo', '2015-01-10');

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE IF NOT EXISTS `message` (
  `id` int(11) NOT NULL,
  `message` text NOT NULL,
  `sender` varchar(30) NOT NULL,
  `user_email` varchar(255) NOT NULL,
  `attached_file` varchar(255) NOT NULL,
  `status` int(11) NOT NULL,
  `status_ad` int(11) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=160 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `message`
--

INSERT INTO `message` (`id`, `message`, `sender`, `user_email`, `attached_file`, `status`, `status_ad`) VALUES
(80, 'find the attachment', 'Mridul kumar', 'mridul@gmail.com', 'PHP - AJAX and PHP.pdf', 1, 2),
(143, 'find the file', 'Mridul kumar', 'mridul@gmail.com', '51.png', 1, 2),
(134, 'm gud howz u', 'Admin', 'mridul@gmail.com', '', 1, 2),
(141, 'hello', 'Mridul kumar', 'mridul@gmail.com', '', 1, 2),
(144, 'hiiiiiiiiiii', 'Anuj kumar', 'anuj.lpu1@gmail.com', '', 1, 0),
(145, 'gfd', 'Admin', 'mridul@gmail.com', '', 1, 2),
(146, 'Hi Anuj,', 'Admin', 'anuj.lpu1@gmail.com', '', 1, 0),
(147, 'Does this work?', 'Admin', 'anuj.lpu1@gmail.com', '', 1, 0),
(148, 'I guess so.', 'Admin', 'anuj.lpu1@gmail.com', '', 1, 0),
(149, 'hii', 'Admin', 'mridul@gmail.com', '', 1, 2),
(150, 'helozzz', 'Admin', 'mridul@gmail.com', '', 1, 2),
(151, 'hyryryryry', 'Admin', 'mridul@gmail.com', '', 1, 2),
(152, ' hfthfhf', 'Admin', 'mridul@gmail.com', '', 1, 2),
(153, 'lykytititnnnnuut', 'Admin', 'mridul@gmail.com', '', 1, 2),
(154, 'lyh y iyiuiyiy', 'Admin', 'mridul@gmail.com', '', 1, 2),
(155, 'Good.', 'Admin', 'mridul@gmail.com', '', 1, 2),
(156, 'hii\r\n', 'Anuj kumar', 'anuj.lpu1@gmail.com', '', 0, 0),
(157, 'heeloo\r\n', 'Anuj kumar', 'anuj.lpu1@gmail.com', '', 0, 0),
(158, 'ggg', 'Anuj kumar', 'anuj.lpu1@gmail.com', '', 0, 0),
(159, 'hiiiiiiiiii', 'Admin', 'mridul@gmail.com', '', 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `prequest`
--

CREATE TABLE IF NOT EXISTS `prequest` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `contactno` varchar(11) NOT NULL,
  `company` varchar(255) NOT NULL,
  `wdd` varchar(255) NOT NULL,
  `cms` varchar(255) NOT NULL,
  `seo` varchar(255) NOT NULL,
  `smo` varchar(255) NOT NULL,
  `swd` varchar(255) NOT NULL,
  `dwd` varchar(255) NOT NULL,
  `fwd` varchar(255) NOT NULL,
  `dr` varchar(255) NOT NULL,
  `whs` varchar(255) NOT NULL,
  `wm` varchar(255) NOT NULL,
  `ed` varchar(255) NOT NULL,
  `wta` varchar(255) NOT NULL,
  `opi` varchar(255) NOT NULL,
  `ld` varchar(255) NOT NULL,
  `da` varchar(255) NOT NULL,
  `osc` varchar(255) NOT NULL,
  `nd` varchar(255) NOT NULL,
  `others` varchar(255) NOT NULL,
  `query` longtext NOT NULL,
  `posting_date` date NOT NULL,
  `remark` longtext NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `prequest`
--

INSERT INTO `prequest` (`id`, `name`, `email`, `contactno`, `company`, `wdd`, `cms`, `seo`, `smo`, `swd`, `dwd`, `fwd`, `dr`, `whs`, `wm`, `ed`, `wta`, `opi`, `ld`, `da`, `osc`, `nd`, `others`, `query`, `posting_date`, `remark`, `status`) VALUES
(4, 'Rahul', 'anuj@fluper.com', '8285703354', 'fluper', 'Website Design & Development', 'CMS (Content Management System)', 'SEO (Search Engine Optimization)', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Sample text Sample text Sample text Sample text Sample text Sample text', '2015-04-24', 'Sample text for testing', 0),
(5, 'vsfsfs', 'anuj.lpu1@gmail.com', '12345678', 'SQ', 'Website Design & Development', 'CMS (Content Management System)', 'SEO (Search Engine Optimization)', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Testing', '2015-04-28', 'Sample text for testing', 1),
(6, 'Anuj kumar', 'anuj@fluper.com', '8285703354', 'Fluper', 'Website Design & Development', '', '', 'SMO (Social Media Optimization)	', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Sample text for testing. Sample text for testing. Sample text for testing. Sample text for testing', '2015-04-28', 'Sample text for testing', 2),
(7, 'Mridul ', 'mridul@gmail.com', '12345678', 'Fluper', 'Website Design & Development', '', 'SEO (Search Engine Optimization)', '', 'Static Website Design', '', 'Flash Website Development', '', '', '', '', '', '', '', '', '', '', '', 'testingvvvtestin testingvtestinggtestingtesting  testingtesting testingv v', '2015-04-28', 'csfsfsf', 2),
(8, 'Mridul ', 'mridul@gmail.com', '12345678', 'Fluper', 'Website Design & Development', '', 'SEO (Search Engine Optimization)', '', 'Static Website Design', '', 'Flash Website Development', '', '', '', '', '', '', '', '', '', '', '', 'testingvvvtestin testingvtestinggtestingtesting  testingtesting testingv v', '2015-04-28', 'dwwrwer', 2);

-- --------------------------------------------------------

--
-- Table structure for table `ticket`
--

CREATE TABLE IF NOT EXISTS `ticket` (
  `id` int(11) NOT NULL,
  `ticket_id` varchar(11) NOT NULL,
  `email_id` varchar(300) NOT NULL,
  `subject` varchar(300) NOT NULL,
  `task_type` varchar(300) NOT NULL,
  `prioprity` varchar(300) NOT NULL,
  `ticket` longtext NOT NULL,
  `attachment` varchar(300) NOT NULL,
  `status` varchar(300) NOT NULL,
  `admin_remark` longtext NOT NULL,
  `posting_date` date NOT NULL,
  `admin_remark_date` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ticket`
--

INSERT INTO `ticket` (`id`, `ticket_id`, `email_id`, `subject`, `task_type`, `prioprity`, `ticket`, `attachment`, `status`, `admin_remark`, `posting_date`, `admin_remark_date`) VALUES
(7, 'TID3071', 'anuj.lpu1@gmail.com', 'testing', 'billing', 'important', 'hiiiiiiiiiiiiii', '', 'close', 'This is done.', '2015-02-18', 2015),
(8, 'TID3072', 'anuj.lpu1@gmail.com', 'testing', 'billing', 'important', 'hiiiiiiiiiiiiii', '', 'close', 'aasdfgdfgvhfgvb jgjfhfh', '2015-02-18', 2015);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `alt_email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `mobile` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `user_image` varchar(255) NOT NULL,
  `user_type` varchar(255) NOT NULL,
  `address` varchar(500) NOT NULL,
  `status` int(11) NOT NULL,
  `resume` varchar(255) NOT NULL,
  `resume_status` varchar(255) NOT NULL,
  `resume_remark` longtext NOT NULL,
  `r_posting_date` date NOT NULL,
  `posting_date` date NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `alt_email`, `password`, `mobile`, `gender`, `user_image`, `user_type`, `address`, `status`, `resume`, `resume_status`, `resume_remark`, `r_posting_date`, `posting_date`) VALUES
(3, 'Anuj kumar', 'anuj.lpu1@gmail.com', 'anujkumar301990@gmail.com', '123456', '8285703354', 'Female', 'elephpant.png', '0', 'Sec-5 Sahibabad Ghaziabad ', 0, 'PHP-Resume_2013_08_11_19_03_21_870.pdf', 'Under review', 'Your profile under consideration. we wil update with in 2 working days				  ', '2015-02-06', '2015-01-02'),
(7, 'Rahul', 'rahul@gmail.com', '', '123456', '8285703355', 'm', '', '0', '', 0, '', 'Under review', 'It is currently under review.				  					  ', '0000-00-00', '2015-02-04');

-- --------------------------------------------------------

--
-- Table structure for table `usercheck`
--

CREATE TABLE IF NOT EXISTS `usercheck` (
  `id` int(11) NOT NULL,
  `logindate` varchar(255) NOT NULL DEFAULT '',
  `logintime` varchar(255) NOT NULL DEFAULT '',
  `user_id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL DEFAULT '',
  `ip` varbinary(16) NOT NULL,
  `mac` varbinary(16) NOT NULL,
  `city` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=107 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `usercheck`
--

INSERT INTO `usercheck` (`id`, `logindate`, `logintime`, `user_id`, `username`, `email`, `ip`, `mac`, `city`, `country`) VALUES
(91, '2015/04/28', '04:37:40pm', 3, 'Anuj kumar', 'anuj.lpu1@gmail.com', 0x3a3a31, 0x31452d38352d35362d43352d39312d45, '', ''),
(92, '2015/04/29', '02:57:12pm', 3, 'Anuj kumar', 'anuj.lpu1@gmail.com', 0x3132322e3136322e302e323431, '', 'Delhi', 'India'),
(93, '2015/04/30', '04:27:02pm', 3, 'Anuj kumar', 'anuj.lpu1@gmail.com', 0x3132322e3136322e3134322e3138, '', 'Delhi', 'India'),
(94, '2015/04/30', '05:23:55pm', 3, 'Anuj kumar', 'anuj.lpu1@gmail.com', 0x3132322e3136322e3134322e3138, '', 'Delhi', 'India'),
(95, '2015/05/18', '01:18:51pm', 3, 'Anuj kumar', 'anuj.lpu1@gmail.com', 0x3132322e3136322e382e313830, '', 'Delhi', 'India'),
(96, '2015/11/05', '09:30:36pm', 3, 'Anuj kumar', 'anuj.lpu1@gmail.com', 0x3a3a31, 0x33342d34422d35302d42372d45462d33, '', ''),
(97, '2015/11/13', '12:05:39am', 3, 'Anuj kumar', 'anuj.lpu1@gmail.com', 0x3a3a31, 0x42432d38352d35362d43352d39312d45, '', ''),
(98, '2015/12/14', '09:36:01pm', 3, 'Anuj kumar', 'anuj.lpu1@gmail.com', 0x3a3a31, 0x42432d38352d35362d43352d39312d45, '', ''),
(99, '2016/02/11', '09:47:08pm', 3, 'Anuj kumar', 'anuj.lpu1@gmail.com', 0x3a3a31, 0x42432d38352d35362d43352d39312d45, '', ''),
(100, '2016/04/07', '12:17:50am', 7, 'Rahul', 'rahul@gmail.com', 0x3a3a31, 0x42432d38352d35362d43352d39312d45, '', ''),
(101, '2016/04/20', '09:37:54am', 3, 'Anuj kumar', 'anuj.lpu1@gmail.com', 0x3a3a31, 0x42432d38352d35362d43352d39312d45, '', ''),
(102, '2016/04/25', '09:55:45pm', 3, 'Anuj kumar', 'anuj.lpu1@gmail.com', 0x3a3a31, 0x42432d38352d35362d43352d39312d45, '', ''),
(103, '2016/04/26', '08:19:12pm', 3, 'Anuj kumar', 'anuj.lpu1@gmail.com', 0x3a3a31, 0x42432d38352d35362d43352d39312d45, '', ''),
(104, '2016/04/26', '08:26:18pm', 3, 'Anuj kumar', 'anuj.lpu1@gmail.com', 0x3a3a31, 0x42432d38352d35362d43352d39312d45, '', ''),
(105, '2016/04/30', '11:59:25pm', 3, 'Anuj kumar', 'anuj.lpu1@gmail.com', 0x3a3a31, 0x42432d38352d35362d43352d39312d45, '', ''),
(106, '2016/04/30', '12:30:10am', 3, 'Anuj kumar', 'anuj.lpu1@gmail.com', 0x3a3a31, 0x42432d38352d35362d43352d39312d45, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `user_query`
--

CREATE TABLE IF NOT EXISTS `user_query` (
  `id` int(11) NOT NULL,
  `user_email` varchar(255) NOT NULL,
  `query` longtext NOT NULL,
  `reply` longtext NOT NULL,
  `status` int(11) NOT NULL,
  `posting_date` date NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_query`
--

INSERT INTO `user_query` (`id`, `user_email`, `query`, `reply`, `status`, `posting_date`) VALUES
(1, 'anuj.lpu1@gmail.com', 'hiiiiiiii', 'hiii', 1, '2015-01-03'),
(3, 'anuj.lpu1@gmail.com', 'howz u', 'heloz', 1, '2015-01-03'),
(12, 'anuj.lpu1@gmail.com', 'howz u\r\n', 'jgjkhjh', 1, '2015-01-04'),
(13, 'anuj.lpu1@gmail.com', 'hilj,khk', 'jghgf', 1, '2015-01-09'),
(14, 'anuj.lpu1@gmail.com', 'hhjgjgj ', 'ngnvnvn', 1, '2015-01-09');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `client_invoices`
--
ALTER TABLE `client_invoices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `prequest`
--
ALTER TABLE `prequest`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ticket`
--
ALTER TABLE `ticket`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `usercheck`
--
ALTER TABLE `usercheck`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_query`
--
ALTER TABLE `user_query`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `client_invoices`
--
ALTER TABLE `client_invoices`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=160;
--
-- AUTO_INCREMENT for table `prequest`
--
ALTER TABLE `prequest`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `ticket`
--
ALTER TABLE `ticket`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `usercheck`
--
ALTER TABLE `usercheck`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=107;
--
-- AUTO_INCREMENT for table `user_query`
--
ALTER TABLE `user_query`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=19;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
