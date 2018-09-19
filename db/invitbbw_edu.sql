-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Sep 19, 2018 at 02:23 PM
-- Server version: 5.6.40-84.0-log
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `invitbbw_edu`
--

-- --------------------------------------------------------

--
-- Table structure for table `advertisements`
--

CREATE TABLE `advertisements` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `photo` varchar(100) DEFAULT NULL,
  `ordering` int(11) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `url_type` varchar(8) DEFAULT NULL,
  `url_target` varchar(6) DEFAULT NULL,
  `status` varchar(7) DEFAULT 'Active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `advertisements`
--

INSERT INTO `advertisements` (`id`, `name`, `photo`, `ordering`, `url`, `url_type`, `url_target`, `status`) VALUES
(1, 'Ads1', '2bfaa6769fd29edb8be4f3f3701f6cbd.jpg', 1, '', 'Internal', '_self', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `configurations`
--

CREATE TABLE `configurations` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `organization_name` varchar(255) DEFAULT NULL,
  `domain_name` varchar(255) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `meta_title` text,
  `meta_keyword` text,
  `meta_content` text,
  `timezone` varchar(100) DEFAULT NULL,
  `author` varchar(255) DEFAULT NULL,
  `sms_notification` tinyint(1) DEFAULT NULL,
  `email_notification` tinyint(1) DEFAULT NULL,
  `guest_login` tinyint(1) DEFAULT NULL,
  `front_end` tinyint(1) DEFAULT NULL,
  `slides` tinyint(4) DEFAULT NULL,
  `translate` tinyint(4) DEFAULT '0',
  `paid_exam` tinyint(4) DEFAULT '1',
  `leader_board` tinyint(1) DEFAULT '1',
  `math_editor` tinyint(1) DEFAULT '0',
  `certificate` tinyint(1) DEFAULT '1',
  `contact` text,
  `email_contact` text,
  `currency` int(11) DEFAULT NULL,
  `photo` varchar(100) DEFAULT NULL,
  `signature` varchar(100) DEFAULT NULL,
  `date_format` varchar(25) DEFAULT NULL,
  `exam_expiry` int(11) NOT NULL DEFAULT '1',
  `exam_feedback` tinyint(1) NOT NULL DEFAULT '1',
  `tolrance_count` int(1) DEFAULT NULL,
  `min_limit` int(11) DEFAULT NULL,
  `max_limit` int(11) DEFAULT NULL,
  `captcha_type` tinyint(4) DEFAULT NULL,
  `dir_type` tinyint(4) DEFAULT NULL,
  `language` varchar(6) DEFAULT NULL,
  `panel1` tinyint(1) DEFAULT '1',
  `panel2` tinyint(1) DEFAULT '1',
  `panel3` tinyint(1) DEFAULT '1',
  `ads` tinyint(1) DEFAULT '1',
  `testimonial` tinyint(1) DEFAULT '1',
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `powerdby` varchar(100) NOT NULL,
  `powerdlink` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `configurations`
--

INSERT INTO `configurations` (`id`, `name`, `organization_name`, `domain_name`, `email`, `meta_title`, `meta_keyword`, `meta_content`, `timezone`, `author`, `sms_notification`, `email_notification`, `guest_login`, `front_end`, `slides`, `translate`, `paid_exam`, `leader_board`, `math_editor`, `certificate`, `contact`, `email_contact`, `currency`, `photo`, `signature`, `date_format`, `exam_expiry`, `exam_feedback`, `tolrance_count`, `min_limit`, `max_limit`, `captcha_type`, `dir_type`, `language`, `panel1`, `panel2`, `panel3`, `ads`, `testimonial`, `created`, `modified`, `powerdby`, `powerdlink`) VALUES
(1, 'Easy Neet', 'Easy Neet', 'www.easyneet.com', 'info@easyneet.com', 'Easy Neet', 'Exam Software, Exam Application, Easeneet', 'Easy Neet Pro is a leading exam application.', 'Asia/Kolkata', 'Exam Solution', 1, 1, 0, 1, 1, 1, 0, 1, 1, 1, '8248778021~info@easyneet.com~http://facebook.com', 'Phone : 8248778021 Email : info@easyneet.com', 6, '4b10114c8ed93cb9d5a1b43678b51d52.png', '871d157c9c20f5f1a7ae1ae0dfe2c41a.jpg', 'd,m,Y,h,i,s,A,-,:', 0, 1, 3, 30, 2500, 0, 1, 'en', 1, 1, 1, 0, 1, '2014-04-08 20:56:04', '2018-09-13 11:35:07', 'easyneet.com', 'http://easyneet.com/');

-- --------------------------------------------------------

--
-- Table structure for table `contents`
--

CREATE TABLE `contents` (
  `id` int(11) NOT NULL,
  `link_name` varchar(255) DEFAULT NULL,
  `page_name` varchar(255) DEFAULT NULL,
  `is_url` varchar(8) DEFAULT 'Internal',
  `url` varchar(255) DEFAULT NULL,
  `url_target` varchar(6) DEFAULT NULL,
  `main_content` longtext,
  `page_url` varchar(255) DEFAULT NULL,
  `icon` varchar(40) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `ordering` int(11) DEFAULT NULL,
  `views` int(11) DEFAULT '1',
  `sel_name` varchar(100) DEFAULT NULL,
  `published` varchar(11) DEFAULT 'Published',
  `meta_title` text,
  `meta_keyword` text,
  `meta_content` text,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `contents`
--

INSERT INTO `contents` (`id`, `link_name`, `page_name`, `is_url`, `url`, `url_target`, `main_content`, `page_url`, `icon`, `parent_id`, `ordering`, `views`, `sel_name`, `published`, `meta_title`, `meta_keyword`, `meta_content`, `created`, `modified`) VALUES
(1, 'Home', 'Home', 'Page', 'Home', '_self', '', 'Home', 'fa fa-home', 0, 1, 16, NULL, 'Published', '', '', '', '2016-12-05 18:11:19', '2017-03-20 19:29:58'),
(2, 'About', 'About', 'Internal', '', '_self', '', 'About', 'fa fa-globe', 0, 2, 11, NULL, 'Unpublished', '', '', '', '2016-12-05 13:59:12', '2018-08-30 12:52:40'),
(3, 'About Us', 'About Us', 'Internal', '', '_self', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla non molestie magna. Phasellus luctus, erat quis efficitur lacinia, magna massa rutrum libero, fermentum cursus enim erat vel lorem. Vestibulum quis faucibus risus. Cras egestas mauris sed nulla maximus cursus. Integer varius leo sed metus egestas fringilla. Praesent mattis, eros non consectetur ultrices, diam felis dictum nisl, non bibendum nibh lorem ut justo. Nulla orci nunc, aliquam ac finibus sit amet, porttitor vitae risus. Maecenas bibendum felis mi, vel euismod eros rutrum vitae. Vivamus suscipit nulla scelerisque libero venenatis placerat. Phasellus vitae egestas odio. Integer non justo nisl. Vivamus tincidunt est eu nisi semper dignissim. Nam rhoncus sapien quis diam ultrices, quis malesuada ex euismod.</p>\r\n<p>Vivamus vel porta lacus. Donec a dui risus. Nunc eget mi in diam faucibus molestie. Duis dictum dolor sit amet semper consequat. Nunc et facilisis orci, sed vestibulum lacus. Morbi metus sapien, lobortis et placerat non, finibus ut mauris. Aenean tristique, ex sagittis tristique congue, enim eros congue nulla, sed placerat erat felis eu urna. Fusce porttitor tortor vitae metus pulvinar, nec bibendum tortor aliquet. Vivamus id nisi malesuada, facilisis sem nec, aliquam massa. Integer et diam ac velit iaculis sollicitudin. Pellentesque placerat viverra nibh, sed congue nibh maximus sit amet.</p>\r\n<p>Duis fringilla pulvinar nulla, eget condimentum arcu accumsan quis. Curabitur at pulvinar libero, at interdum elit. Vivamus sed dui non sapien aliquet tincidunt. Phasellus ut ligula sem. Cras elit ante, varius at elementum nec, vestibulum pharetra mauris. Nulla molestie ultrices lectus, et pellentesque nisl finibus ut. Proin vel massa vitae sem pharetra ultrices vel ut risus. Morbi erat mi, aliquam et venenatis nec, sollicitudin vitae felis. Phasellus lectus purus, venenatis in sapien at, malesuada tincidunt magna. Aliquam eu nunc vel quam consequat fringilla eu non sapien. In est risus, gravida at libero ut, elementum molestie sem. Curabitur cursus nulla nec metus cursus, non convallis purus aliquam. Aliquam erat volutpat. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Maecenas dignissim nibh id blandit facilisis.</p>\r\n<p>Proin iaculis vehicula dolor, id commodo ex ultricies nec. Donec quis est vitae purus auctor rutrum. Nulla convallis velit id tellus finibus faucibus. Cras dignissim justo non libero tempor cursus. Etiam libero tellus, sagittis tempor diam quis, dignissim pretium lacus. Cras ac ipsum ac tortor ornare luctus. Praesent dignissim metus ultricies nisl feugiat, id convallis velit maximus. Curabitur et interdum tellus. Proin quis bibendum sapien. Maecenas sit amet massa at lorem aliquet tincidunt. Maecenas leo felis, dictum non neque et, tempus blandit sem. Mauris sit amet mi purus. Sed non odio sit amet dolor scelerisque facilisis. Cras sollicitudin fermentum ipsum. Fusce dictum, ipsum a auctor suscipit, tortor nisl cursus mi, eget viverra dolor est in diam.</p>\r\n<p>Vestibulum efficitur vel ligula a vestibulum. Donec condimentum porta bibendum. In lobortis odio ut suscipit vulputate. Proin tempor dapibus ornare. Maecenas auctor convallis ullamcorper. In elementum sed dolor vel cursus. Praesent at tempor turpis. Praesent interdum dapibus sapien id vulputate. In maximus finibus lorem in condimentum. Proin nec sapien sit amet libero placerat vestibulum eget in turpis.</p>', 'About-Us', '', 2, 3, 153, NULL, 'Unpublished', '<p>About Us</p>', '', '', '2016-12-05 14:14:13', '2018-08-30 12:52:16'),
(4, 'Profile', 'Profile', 'Internal', '', '_self', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer sit amet ligula metus. Nulla sagittis orci id ultricies elementum. Proin maximus tortor urna, ac egestas quam placerat nec. Praesent ultrices neque tincidunt lectus malesuada, facilisis commodo odio luctus. Pellentesque blandit, sem quis mollis tincidunt, enim lectus scelerisque diam, et egestas sem nunc ac turpis. Aliquam faucibus purus ut velit facilisis condimentum. Nam rhoncus aliquam leo vitae tempor. Nulla magna purus, vestibulum eget cursus scelerisque, eleifend in metus. Phasellus pretium elit sapien, sit amet sagittis metus facilisis ac. Nunc dictum commodo ante ac sagittis. Vestibulum non ligula elementum, aliquam metus id, dapibus magna. Aenean lacinia, urna nec blandit fringilla, lectus lectus lacinia enim, nec iaculis lectus eros vel lacus. Proin tristique metus ac felis dictum pretium. Nulla non sollicitudin mi, a tincidunt arcu.</p>\r\n<p>Phasellus accumsan, tortor non bibendum elementum, mi diam scelerisque mi, imperdiet imperdiet tellus sem ut ligula. Mauris et risus efficitur nunc viverra ornare. Aenean semper lectus in nisl tincidunt, sit amet pharetra nibh efficitur. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Maecenas lobortis elit et felis vehicula malesuada non eu lorem. Suspendisse quis porttitor magna. Mauris erat enim, blandit eu sodales nec, commodo nec lectus. Ut eget ligula in sapien bibendum auctor. Pellentesque ac iaculis diam. Vestibulum quam sapien, rhoncus sit amet dapibus egestas, ultricies elementum est. Quisque congue leo eu purus vehicula rhoncus. Suspendisse ac neque et velit auctor tempor. Cras tempus ligula sit amet sagittis commodo.</p>\r\n<p>Mauris efficitur libero sit amet tortor tincidunt, at faucibus ex semper. Morbi non lorem posuere, ullamcorper ante a, auctor ante. Etiam pretium blandit risus sed fringilla. Proin et dignissim eros. Pellentesque at commodo lectus, quis blandit leo. Aenean rutrum lacus non congue tempus. In rutrum augue a enim auctor, vel sodales purus condimentum. Fusce sit amet est neque. Fusce rutrum maximus turpis.</p>', 'Profile', '', 2, 4, 16, NULL, 'Unpublished', 'Profile', '', '', '2016-12-06 17:43:20', '2018-08-30 12:52:18'),
(5, 'Register', '', 'Page', 'Registers', '_self', '', 'Registers', 'fa fa-user', 0, 6, 5, NULL, 'Published', '', '', '', '2016-12-06 11:11:09', '2017-03-20 19:29:58'),
(6, 'Login', '', 'Page', 'crm/Users', '_self', '', 'Login', 'fa fa-lock', 0, 7, 1, NULL, 'Published', '', '', '', '2016-12-06 16:10:52', '2017-03-20 19:29:58'),
(7, 'Packages', '', 'Page', 'Packages/index', '_self', '', 'Packages', 'fa fa-shopping-cart', 0, 5, 1, NULL, 'Published', '', '', '', '2017-03-20 19:29:33', '2017-03-20 19:29:58');

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` text,
  `amount` decimal(10,2) DEFAULT NULL,
  `discount_type` varchar(10) DEFAULT NULL,
  `min_amount` decimal(10,2) DEFAULT NULL,
  `code` varchar(15) DEFAULT NULL,
  `coupon_no` int(11) DEFAULT NULL,
  `per_customer` int(11) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `status` varchar(8) DEFAULT 'Active',
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `coupons_students`
--

CREATE TABLE `coupons_students` (
  `id` int(11) NOT NULL,
  `student_id` int(11) DEFAULT NULL,
  `coupon_id` int(11) DEFAULT NULL,
  `redeem_date` datetime DEFAULT NULL,
  `redeem_ip` varchar(50) DEFAULT NULL,
  `session_id` varchar(100) DEFAULT NULL,
  `status` char(1) DEFAULT '0',
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `currencies`
--

CREATE TABLE `currencies` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `short` varchar(3) DEFAULT NULL,
  `photo` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `currencies`
--

INSERT INTO `currencies` (`id`, `name`, `short`, `photo`) VALUES
(1, 'Australia Dollar AUD', 'AUD', '64238c6d767ab034b04c4681295567a0.gif'),
(2, 'Brunei Darussalam Dollar BND', 'BND', '53e34059e7bfe4db945404e901c4f396.gif'),
(3, 'Cambodia Riel KHR', 'KHR', 'aaa57dd0012641cdee2c8d6484db8238.gif'),
(4, 'China Yuan Renminbi CNY ', 'CNY', '5586a267c542d0f49b6c22c5c978bf23.gif'),
(5, 'Hong Kong Dollar HKD', 'HKD', '200ec0145292d85b380d8c4f570f9aa9.gif'),
(6, 'India Rupee INR', 'INR', '537f17a76864d11438d25ff5af7641a5.gif'),
(7, 'Indonesia Rupiah IDR', 'IDR', '6d27b2f196ce9d74b10d12111d9838b0.gif'),
(8, 'Japan Yen JPY', 'JPY', '3a7f86a61af62ddab4737f3df6db4807.gif'),
(9, 'Korea (North) Won KPW', 'KPW', 'cc0ad4a7ba48bedd9cf57bc4125fc2c9.gif'),
(10, 'Korea (South) Won KRW', 'KRW', '28fdcdac33f7429afe6bce2e08dd47c2.gif'),
(11, 'Laos Kip LAK', 'LAK', 'f72da580f617ee32683202aeee564df0.gif'),
(12, 'Malaysia Ringgit MYR', 'MYR', 'e86af0a98bf7398c27a5ad30319d82ad.gif'),
(13, 'Nigeria Naira NGN', 'NGN', '2cdb9ceeae309e948c6bd0a90e30ffec.gif'),
(14, 'Pakistan Rupee PKR', 'PKR', 'bac3525bb97f15f806a74d248f71d6b2.gif'),
(15, 'Philippines Peso PHP', 'PHP', 'c46c38e2701d3c3bd6ee442c93befd04.gif'),
(16, 'Singapore Dollar SGD', 'SGD', '2c1e20836f56700b13a08477216a61fb.gif'),
(17, 'Sri Lanka Rupee LKR', 'LKR', '38bb6c10813d0a1eb9c878bcea2b7570.gif'),
(18, 'Taiwan New Dollar TWD', 'TWD', 'a558976f34bf485cb72f61656595536c.gif'),
(19, 'Thailand Baht THB', 'THB', '3c3bcc74de1fd038ec2d7e0dfe2965bf.gif'),
(20, 'United Kingdom Pound GBP', 'GBP', 'df773c6ce35993089139c888ec5a3210.gif'),
(21, 'United States Dollar USD', 'USD', 'ef1e801ee13715b41e55c16886597878.gif'),
(22, 'Viet Nam Dong VND', 'VND', '5a5b143e1685239abd85f0b367d4669b.gif');

-- --------------------------------------------------------

--
-- Table structure for table `diffs`
--

CREATE TABLE `diffs` (
  `id` int(11) NOT NULL,
  `diff_level` varchar(15) DEFAULT NULL,
  `type` char(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `diffs`
--

INSERT INTO `diffs` (`id`, `diff_level`, `type`) VALUES
(1, 'Easy', 'E'),
(2, 'Medium', 'M'),
(3, 'Hard', 'D');

-- --------------------------------------------------------

--
-- Table structure for table `emailsettings`
--

CREATE TABLE `emailsettings` (
  `id` int(11) NOT NULL,
  `type` varchar(10) CHARACTER SET latin1 DEFAULT NULL,
  `host` varchar(100) CHARACTER SET latin1 DEFAULT NULL,
  `username` varchar(100) CHARACTER SET latin1 DEFAULT NULL,
  `password` varchar(100) CHARACTER SET latin1 DEFAULT NULL,
  `port` varchar(10) CHARACTER SET latin1 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `emailsettings`
--

INSERT INTO `emailsettings` (`id`, `type`, `host`, `username`, `password`, `port`) VALUES
(1, 'Smtp', 'mail.easyneet.com', 'info@easyneet.com', 'invity@123', '587');

-- --------------------------------------------------------

--
-- Table structure for table `emailtemplates`
--

CREATE TABLE `emailtemplates` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `description` text,
  `status` varchar(11) DEFAULT 'Published',
  `type` varchar(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `emailtemplates`
--

INSERT INTO `emailtemplates` (`id`, `name`, `description`, `status`, `type`) VALUES
(1, 'Student Registration', '<p style=\"text-align: center;\"><img src=\"http://www.easyneet.com/img/Uploads/easyneetlogo.png\" alt=\"\" width=\"494\" height=\"112\" /></p>\r\n<p><span style=\"font-size: 18pt; color: #ff0000;\">Hi, $studentName</span></p>\r\n<p><span style=\"font-size: 14pt; color: #74ba46;\">Your signup email: <strong>$email</strong></span></p>\r\n<p><span style=\"font-size: 14pt; color: #74ba46;\">Your password: <strong>$password</strong></span></p>\r\n<p><span style=\"font-size: 14pt; color: #74ba46;\">Please click the following link to finish up registration:</span></p>\r\n<p><a href=\"http://$url\" target=\"_blank\"><span style=\"font-size: 14pt;\">$ur</span>l</a></p>\r\n<p><span style=\"font-size: 14pt; color: #0094da;\"><strong>Note: If the link does not open directly, please copy and paste the url into your internet browser.</strong></span></p>\r\n<p><span style=\"color: #0094da;\"><strong><span style=\"font-size: 14pt;\">Verification Code: $code</span></strong></span></p>\r\n<p><span style=\"font-size: 12pt; color: #74ba46;\">Sincerely,</span></p>\r\n<p><span style=\"font-size: 12pt; color: #74ba46;\">$siteName</span></p>\r\n<p><span style=\"font-size: 12pt; color: #74ba46;\">$siteEmailContact</span></p>', 'Published', 'SRN'),
(2, 'Re-send Verification', '<p><span style=\"font-size: 18pt; color: #ff0000;\"><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"http://easyneet.com/img/Uploads/easyneetlogo.png\" alt=\"\" width=\"494\" height=\"112\" />Hi, $studentName</span></p>\r\n<p><span style=\"font-size: 14pt; color: #74ba46;\">Your signup email: <strong>$email</strong></span></p>\r\n<p><span style=\"font-size: 14pt; color: #74ba46;\">Please click the following link to finish up registration:</span></p>\r\n<p><a href=\"http://easyneet.com/admin/$url\" target=\"_blank\">$url</a></p>\r\n<p><span style=\"font-size: 14pt; color: #0094da;\">Note: If the link does not open directly, please copy and paste the url into your internet browser.</span></p>\r\n<p><span style=\"font-size: 14pt; color: #0094da;\"><strong>Verification Code: $code</strong></span></p>\r\n<p>&nbsp;</p>\r\n<p><span style=\"font-size: 12pt; color: #74ba46;\">Sincerely,</span></p>\r\n<p><span style=\"font-size: 12pt; color: #74ba46;\">$siteName</span></p>\r\n<p><span style=\"font-size: 12pt; color: #74ba46;\">$siteEmailContact</span></p>', 'Published', 'RVN'),
(4, 'Student Forgot Password', '<p><span style=\"font-size: 18pt; color: #ff0000;\"><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"http://easyneet.com/img/Uploads/easyneetlogo.png\" alt=\"\" width=\"494\" height=\"112\" />Dear $studentName,</span></p>\r\n<p><span style=\"color: #74ba46; font-size: 14pt;\">Please click the following link to finish forgot password:</span></p>\r\n<p><a href=\"http://easyneet.com/admin/$url\" target=\"_blank\">$url</a></p>\r\n<p><span style=\"font-size: 12pt; color: #0094da;\"><strong>Note: If the link does not open directly, please copy and paste the url into your internet browser.</strong></span></p>\r\n<p><span style=\"font-size: 14pt; color: #0094da;\"><strong>Verification Code: $code</strong></span></p>\r\n<p><span style=\"font-size: 12pt; color: #74ba46;\">Sincerely,</span></p>\r\n<p><span style=\"font-size: 12pt; color: #74ba46;\">$siteName</span></p>\r\n<p><span style=\"font-size: 12pt; color: #74ba46;\">$siteEmailContact</span></p>', 'Published', 'SFP'),
(5, 'Admin Forgot Password', '<p>&nbsp;</p>\r\n<p style=\"text-align: center;\"><span style=\"font-size: 18pt; color: #ff0000;\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<img src=\"http://easyneet.com/img/Uploads/easyneetlogo.png\" alt=\"\" width=\"494\" height=\"112\" /></span></p>\r\n<p><span style=\"font-size: 18pt; color: #ff0000;\">Dear $name,</span></p>\r\n<p><span style=\"font-size: 14pt; color: #74ba46;\">Please click the following link to finish forgot password:</span></p>\r\n<p><span style=\"font-size: 12pt;\"><a href=\"http://$url\" target=\"_blank\">$url</a></span></p>\r\n<p><span style=\"font-size: 12pt; color: #0094da;\"><strong>Note: If the link does not open directly, please copy and paste the url into your internet browser.</strong></span></p>\r\n<p><span style=\"font-size: 14pt; color: #0094da;\"><strong>Verification Code: $code</strong></span></p>\r\n<p>&nbsp;</p>\r\n<p><span style=\"font-size: 12pt; color: #74ba46;\">Sincerely,</span></p>\r\n<p><span style=\"font-size: 12pt; color: #74ba46;\">$siteName</span></p>\r\n<p><span style=\"font-size: 12pt; color: #74ba46;\">$siteEmailContact</span></p>', 'Published', 'AFP'),
(6, 'Admin Forgot Username', '<p><span style=\"font-size: 18pt; color: #ff0000;\"><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"http://easyneet.com/img/Uploads/easyneetlogo.png\" alt=\"\" width=\"494\" height=\"112\" />Dear $name,</span></p>\r\n<p><span style=\"font-size: 14pt; color: #0094da;\">You have forgot User Name. your username is <strong>$userName</strong></span></p>\r\n<p><span style=\"font-size: 12pt; color: #74ba46;\">Sincerely,</span></p>\r\n<p><span style=\"font-size: 12pt; color: #74ba46;\">$siteName</span></p>\r\n<p><span style=\"font-size: 12pt; color: #74ba46;\">$siteEmailContact</span></p>', 'Published', 'AFU'),
(7, 'Student Login Credentials', '<p><span style=\"font-size: 18pt; color: #ff0000;\"><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"http://easyneet.com/img/Uploads/easyneetlogo.png\" alt=\"\" width=\"494\" height=\"112\" />Dear $studentName,</span></p>\r\n<p><span style=\"font-size: 14pt; color: #74ba46;\">Congratulations! Your $siteName account is now active.</span></p>\r\n<p><span style=\"font-size: 14pt; color: #0094da;\">Email Address : $email</span></p>\r\n<p><span style=\"font-size: 14pt; color: #0094da;\">Password: $password</span></p>\r\n<p><span style=\"color: #0094da; font-size: 14pt;\">If you need, you can reset your password at any time.</span></p>\r\n<p><span style=\"color: #0094da; font-size: 14pt;\">To get started, log on :&nbsp;<a href=\"http://easyneet.com/\" target=\"_blank\"><span style=\"color: #3366ff;\"><span style=\"color: #3366ff;\">$url</span></span></a></span></p>\r\n<p><span style=\"color: #0094da; font-size: 14pt;\">If you have any questions or need assistance, please contact us.</span></p>\r\n<p>&nbsp;</p>\r\n<p><span style=\"font-size: 12pt; color: #74ba46;\">Best Regards,</span></p>\r\n<p><span style=\"font-size: 12pt; color: #74ba46;\">$siteName</span></p>\r\n<p><span style=\"font-size: 12pt; color: #74ba46;\">$siteEmailContact</span></p>', 'Published', 'SLC'),
(8, 'User Login Credentials', '<p><span style=\"font-size: 18pt; color: #ff0000;\"><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"http://easyneet.com/img/Uploads/easyneetlogo.png\" alt=\"\" width=\"494\" height=\"112\" />Dear $name,</span></p>\r\n<p><span style=\"color: #74ba46; font-size: 14pt;\">Congratulations! Your $siteName account is now active.</span></p>\r\n<p><span style=\"font-size: 14pt; color: #74ba46;\">Email Address : $email</span></p>\r\n<p><span style=\"font-size: 14pt; color: #74ba46;\">Username : $userName</span></p>\r\n<p><span style=\"font-size: 14pt; color: #74ba46;\">Password: $password</span></p>\r\n<p><span style=\"color: #0094da; font-size: 14pt;\">If you need, you can reset your password at any time.</span></p>\r\n<p><span style=\"color: #0094da; font-size: 14pt;\">To get started, log on:<span style=\"color: #3366ff;\"><a href=\"http://easyneet.com/admin/$url\" target=\"_blank\"><span style=\"color: #3366ff;\">$url</span></a></span></span></p>\r\n<p><span style=\"color: #0094da; font-size: 14pt;\">If you have any questions or need assistance, please contact us.</span></p>\r\n<p>&nbsp;</p>\r\n<p><span style=\"font-size: 12pt; color: #74ba46;\">Best Regards,</span></p>\r\n<p><span style=\"font-size: 12pt; color: #74ba46;\">$siteName</span></p>\r\n<p><span style=\"font-size: 12pt; color: #74ba46;\">$siteEmailContact</span></p>', 'Published', 'ULC'),
(9, 'Exam Activation', '<p><span style=\"font-size: 18pt; color: #ff0000;\"><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"http://easyneet.com/img/Uploads/easyneetlogo.png\" alt=\"\" width=\"494\" height=\"112\" />Dear $studentName,</span></p>\r\n<p><span style=\"color: #0094da;\"><span style=\"font-size: 14pt;\">Exam Name <strong>$examName&nbsp;</strong></span><span style=\"font-size: 14pt;\">Type <strong>$type</strong> is active and start on <strong>$startDate</strong> end on <strong>$endDate</strong></span></span></p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p><span style=\"font-size: 12pt; color: #74ba46;\">Sincerely,</span></p>\r\n<p><span style=\"font-size: 12pt; color: #74ba46;\">$siteName</span></p>\r\n<p><span style=\"font-size: 12pt; color: #74ba46;\">$siteEmailContact</span></p>', 'Published', 'EAN'),
(10, 'Exam Finalized', '<p><span style=\"color: #ff0000; font-size: 18pt;\">Dear $studentName0,</span></p>\r\n<p style=\"text-align: justify;\">&nbsp;</p>\r\n<p style=\"text-align: justify;\"><span style=\"font-size: 14pt; color: #0094da;\">Name&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; : $examName</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-size: 14pt; color: #0094da;\">Result&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;: $result</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-size: 14pt; color: #0094da;\">Rank&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;: $rank</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-size: 14pt; color: #0094da;\">Obtained Marks&nbsp; &nbsp; &nbsp; : $obtainedMarks</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-size: 14pt; color: #0094da;\">Question Attempt&nbsp; &nbsp;: $questionAttempt</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-size: 14pt; color: #0094da;\">Time Taken&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; : $timeTaken</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-size: 14pt; color: #0094da;\">Percentage&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; : $percent</span></p>\r\n<p>&nbsp;</p>\r\n<p><span style=\"font-size: 12pt; color: #74ba46;\">Sincerely,</span></p>\r\n<p><span style=\"font-size: 12pt; color: #74ba46;\">$siteName</span></p>\r\n<p><span style=\"font-size: 12pt; color: #74ba46;\">$siteEmailContact</span></p>', 'Published', 'EFD'),
(11, 'Exam Result', '<p>&nbsp;</p>\r\n<p><span style=\"font-size: 18pt; color: #ff0000;\"><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"http://easyneet.com/img/Uploads/easyneetlogo.png\" alt=\"\" width=\"494\" height=\"112\" />Dear $studentName,</span></p>\r\n<p>&nbsp;</p>\r\n<p><span style=\"font-size: 14pt; color: #0094da;\">Name&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; : $examName</span></p>\r\n<p><span style=\"font-size: 14pt; color: #0094da;\">Result&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; : $result&nbsp;</span></p>\r\n<p><span style=\"font-size: 14pt; color: #0094da;\">Obtained Marks&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; : $obtainedMarks</span></p>\r\n<p><span style=\"font-size: 14pt; color: #0094da;\">Question Attempt&nbsp;&nbsp; : $questionAttempt</span></p>\r\n<p><span style=\"font-size: 14pt; color: #0094da;\">Time Taken&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; : $timeTaken</span></p>\r\n<p><span style=\"font-size: 14pt; color: #0094da;\">Percentage&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; : $percent %</span></p>\r\n<p>&nbsp;</p>\r\n<p><span style=\"font-size: 12pt; color: #74ba46;\">Sincerely,</span></p>\r\n<p><span style=\"font-size: 12pt; color: #74ba46;\">$siteName</span></p>\r\n<p><span style=\"font-size: 12pt; color: #74ba46;\">$siteEmailContact</span></p>', 'Published', 'ERT'),
(12, 'Package Purchased', '<p><span style=\"color: #ff0000; font-size: 18pt;\"><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"http://easyneet.com/img/Uploads/easyneetlogo.png\" alt=\"\" width=\"494\" height=\"112\" />Dear $studentName,</span></p>\r\n<p><span style=\"color: #74ba46;\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <span style=\"font-size: 14pt;\">&nbsp;</span></span><span style=\"color: #74ba46; font-size: 14pt;\">We thank you for choosing $siteName for your career, professional and educational needs.</span></p>\r\n<p><span style=\"font-size: 14pt;\"><span style=\"color: #74ba46;\">Your package details are as follows:-</span></span></p>\r\n<p>&nbsp;</p>\r\n<p style=\"text-align: justify;\"><span style=\"color: #0094da; font-size: 14pt;\"><strong>&nbsp;Total Amount&nbsp; &nbsp; &nbsp; &nbsp;: $currency $totalAmount</strong></span></p>\r\n<p style=\"text-align: justify;\"><span style=\"color: #0094da; font-size: 14pt;\"><strong>&nbsp;Coupon Discount : $currency $couponDiscount</strong></span></p>\r\n<p style=\"text-align: justify;\"><span style=\"color: #0094da; font-size: 14pt;\"><strong>&nbsp;Net Amount&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;:&nbsp; $currency $netAmount</strong></span></p>\r\n<p style=\"text-align: justify;\"><span style=\"color: #0094da; font-size: 14pt;\"><strong>&nbsp;Transaction ID&nbsp; &nbsp; :&nbsp; $transactionId</strong></span></p>\r\n<p style=\"text-align: justify;\"><span style=\"color: #0094da; font-size: 14pt;\">&nbsp;</span><span style=\"color: #0094da; font-size: 14pt;\">$packageDetail</span></p>\r\n<p style=\"text-align: justify;\"><strong style=\"font-size: 12pt;\"><span style=\"color: #74ba46;\">Sincerely,</span></strong></p>\r\n<p><span style=\"font-size: 12pt;\"><strong><span style=\"color: #74ba46;\">$siteName</span></strong></span></p>\r\n<p><span style=\"font-size: 12pt;\"><strong><span style=\"color: #74ba46;\">$siteEmailContact</span></strong></span></p>\r\n<p><span style=\"font-size: 12pt;\"><strong><span style=\"color: #74ba46;\">&nbsp;</span></strong></span></p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>%MCEPASTEBIN%</p>', 'Published', 'PPD');

-- --------------------------------------------------------

--
-- Table structure for table `exams`
--

CREATE TABLE `exams` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `instruction` text,
  `duration` int(11) DEFAULT NULL,
  `start_date` datetime DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `passing_percent` int(11) DEFAULT NULL,
  `negative_marking` varchar(3) DEFAULT NULL,
  `attempt_count` int(11) DEFAULT NULL,
  `declare_result` varchar(3) DEFAULT 'Yes',
  `finish_result` char(1) DEFAULT '0',
  `ques_random` char(1) DEFAULT '0',
  `paid_exam` char(1) DEFAULT '0',
  `browser_tolrance` char(1) DEFAULT '1',
  `instant_result` char(1) NOT NULL DEFAULT '0',
  `option_shuffle` char(1) DEFAULT '1',
  `amount` decimal(10,2) DEFAULT NULL,
  `status` varchar(10) DEFAULT 'Inactive',
  `type` varchar(12) DEFAULT NULL,
  `multi_language` char(1) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `expiry` int(11) DEFAULT '0',
  `finalized_time` datetime DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `exams`
--

INSERT INTO `exams` (`id`, `name`, `instruction`, `duration`, `start_date`, `end_date`, `passing_percent`, `negative_marking`, `attempt_count`, `declare_result`, `finish_result`, `ques_random`, `paid_exam`, `browser_tolrance`, `instant_result`, `option_shuffle`, `amount`, `status`, `type`, `multi_language`, `user_id`, `expiry`, `finalized_time`, `created`, `modified`) VALUES
(9, 'Biology - The Living World', '', 30, '2018-09-10 00:00:00', '2018-10-17 00:00:00', 70, 'Yes', 55, 'Yes', '1', '1', '0', '1', '1', '1', NULL, 'Active', 'Exam', '1', 0, 0, NULL, '2018-09-17 22:40:04', '2018-09-19 15:32:04'),
(10, 'Chemistry- Some Basic Concepts of Chemistry', '', 60, '2018-09-18 00:00:00', '2018-09-20 00:00:00', 80, 'Yes', 0, 'Yes', '1', '0', '0', '1', '1', '0', NULL, 'Active', 'Exam', '1', 0, 0, NULL, '2018-09-19 15:31:28', '2018-09-19 17:49:53'),
(11, 'Biology -Biological Classification', '', 180, '2018-09-19 00:00:00', '2018-10-06 00:00:00', 80, 'Yes', 0, 'Yes', '1', '0', '0', '1', '1', '1', NULL, 'Inactive', 'Exam', '1', NULL, 0, NULL, '2018-09-19 18:11:26', '2018-09-19 18:11:26');

-- --------------------------------------------------------

--
-- Table structure for table `exams_packages`
--

CREATE TABLE `exams_packages` (
  `id` int(11) NOT NULL,
  `package_id` int(11) NOT NULL,
  `exam_id` int(11) NOT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `exams_packages`
--

INSERT INTO `exams_packages` (`id`, `package_id`, `exam_id`, `created`, `modified`) VALUES
(115, 10, 9, NULL, NULL),
(118, 12, 11, '2018-09-19 18:11:26', '2018-09-19 18:11:26'),
(119, 11, 10, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `exam_feedbacks`
--

CREATE TABLE `exam_feedbacks` (
  `id` int(11) NOT NULL,
  `exam_result_id` int(11) NOT NULL,
  `comment1` varchar(255) DEFAULT NULL,
  `comment2` varchar(255) DEFAULT NULL,
  `comment3` varchar(255) DEFAULT NULL,
  `comments` mediumtext,
  `created` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `exam_feedbacks`
--

INSERT INTO `exam_feedbacks` (`id`, `exam_result_id`, `comment1`, `comment2`, `comment3`, `comments`, `created`) VALUES
(16, 22, 'Largely Clear', 'Largely Clear', 'Good', 'test', '2018-09-17 23:06:55'),
(17, 25, 'Largely Clear', 'Largely Clear', 'Good', 'Good', '2018-09-17 23:10:53'),
(18, 26, 'Largely Clear', 'Largely Clear', 'Good', 'test', '2018-09-19 15:39:41'),
(19, 23, 'Largely Clear', 'Largely Clear', 'Good', 'DDDD', '2018-09-19 17:48:28'),
(20, 27, 'Largely Clear', 'Largely Clear', 'Good', 'gOOD\r\n', '2018-09-19 17:49:11'),
(21, 28, 'Largely Clear', 'Largely Clear', 'Good', 'good\r\n\r\n', '2018-09-19 17:51:56'),
(22, 29, 'Largely Clear', 'Largely Clear', 'Good', 'good', '2018-09-19 18:21:49'),
(23, 30, 'Largely Clear', 'Largely Clear', 'Good', 'Test', '2018-09-19 18:44:03');

-- --------------------------------------------------------

--
-- Table structure for table `exam_groups`
--

CREATE TABLE `exam_groups` (
  `id` int(11) NOT NULL,
  `exam_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `exam_groups`
--

INSERT INTO `exam_groups` (`id`, `exam_id`, `group_id`) VALUES
(108, 9, 3),
(109, 9, 2),
(110, 9, 4),
(111, 9, 1),
(116, 10, 3),
(117, 10, 2),
(118, 10, 4),
(119, 10, 1),
(120, 11, 3),
(121, 11, 2),
(122, 11, 4),
(123, 11, 1);

-- --------------------------------------------------------

--
-- Table structure for table `exam_maxquestions`
--

CREATE TABLE `exam_maxquestions` (
  `id` int(11) NOT NULL,
  `exam_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `max_question` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `exam_orders`
--

CREATE TABLE `exam_orders` (
  `id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `exam_id` int(11) NOT NULL,
  `payment_id` int(11) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `expiry_date` date DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `exam_orders`
--

INSERT INTO `exam_orders` (`id`, `student_id`, `exam_id`, `payment_id`, `date`, `expiry_date`, `created`, `modified`) VALUES
(68, 17, 9, 34, '2018-09-17', '2018-10-17', '2018-09-17 22:42:03', '2018-09-17 22:42:03'),
(69, 13, 9, 35, '2018-09-17', '2018-10-17', '2018-09-17 22:48:45', '2018-09-17 22:48:45'),
(70, 11, 9, 36, '2018-09-17', '2018-10-17', '2018-09-17 22:54:48', '2018-09-17 22:54:48'),
(71, 11, 9, 37, '2018-09-17', NULL, '2018-09-17 22:55:58', '2018-09-17 22:55:58'),
(72, 11, 9, 38, '2018-09-17', '2018-10-17', '2018-09-17 23:02:56', '2018-09-17 23:02:56'),
(73, 11, 9, 39, '2018-09-17', '2018-10-17', '2018-09-17 23:03:52', '2018-09-17 23:03:52'),
(74, 11, 9, 40, '2018-09-17', '2018-10-17', '2018-09-17 23:06:30', '2018-09-17 23:06:30'),
(75, 13, 9, 41, '2018-09-18', '2018-10-18', '2018-09-18 11:31:19', '2018-09-18 11:31:19'),
(76, 13, 9, 42, '2018-09-18', '2018-10-18', '2018-09-18 11:31:56', '2018-09-18 11:31:56'),
(77, 8, 9, 43, '2018-09-18', '2018-10-18', '2018-09-18 18:29:24', '2018-09-18 18:29:24'),
(78, 8, 9, 44, '2018-09-18', '2018-10-18', '2018-09-18 18:31:13', '2018-09-18 18:31:13'),
(79, 17, 10, 45, '2018-09-19', NULL, '2018-09-19 15:34:20', '2018-09-19 15:34:20'),
(80, 13, 10, 46, '2018-09-19', NULL, '2018-09-19 17:48:14', '2018-09-19 17:48:14'),
(81, 13, 10, 47, '2018-09-19', NULL, '2018-09-19 17:49:37', '2018-09-19 17:49:37');

-- --------------------------------------------------------

--
-- Table structure for table `exam_preps`
--

CREATE TABLE `exam_preps` (
  `id` int(11) NOT NULL,
  `exam_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `ques_no` int(11) DEFAULT NULL,
  `type` varchar(10) DEFAULT NULL,
  `level` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `exam_questions`
--

CREATE TABLE `exam_questions` (
  `id` int(11) NOT NULL,
  `exam_id` int(11) NOT NULL,
  `question_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `exam_questions`
--

INSERT INTO `exam_questions` (`id`, `exam_id`, `question_id`) VALUES
(1279, 9, 859),
(1280, 9, 858),
(1281, 9, 857),
(1282, 9, 856),
(1283, 9, 855),
(1284, 9, 854),
(1285, 9, 853),
(1286, 9, 852),
(1287, 9, 851),
(1288, 9, 850),
(1289, 9, 849),
(1290, 9, 848),
(1291, 9, 847),
(1292, 9, 846),
(1293, 9, 845),
(1294, 9, 844),
(1295, 9, 843),
(1296, 9, 842),
(1297, 9, 841),
(1298, 9, 840),
(1299, 9, 839),
(1300, 9, 838),
(1301, 9, 837),
(1302, 9, 836),
(1303, 9, 835),
(1304, 9, 834),
(1305, 10, 1012),
(1306, 10, 1011),
(1307, 10, 1010),
(1308, 10, 1009),
(1309, 10, 1008),
(1310, 10, 1007),
(1311, 10, 1006),
(1312, 10, 1005),
(1313, 10, 1004),
(1314, 10, 1003),
(1315, 10, 1002),
(1316, 10, 1001),
(1317, 10, 1000),
(1318, 10, 999),
(1319, 10, 998),
(1320, 10, 997),
(1321, 10, 996),
(1322, 10, 995),
(1323, 10, 994),
(1324, 10, 993),
(1325, 10, 992),
(1326, 10, 991),
(1327, 10, 990),
(1328, 10, 989),
(1329, 10, 988),
(1330, 10, 987),
(1331, 10, 986),
(1332, 10, 985),
(1333, 10, 984),
(1334, 10, 983),
(1335, 10, 982),
(1336, 10, 981),
(1337, 10, 980),
(1338, 10, 979),
(1339, 10, 978),
(1340, 10, 977),
(1341, 10, 976),
(1342, 10, 975),
(1343, 10, 974),
(1344, 10, 973),
(1345, 10, 972),
(1346, 10, 971),
(1347, 10, 970),
(1348, 10, 969),
(1349, 10, 968),
(1350, 10, 967),
(1351, 10, 966);

-- --------------------------------------------------------

--
-- Table structure for table `exam_results`
--

CREATE TABLE `exam_results` (
  `id` int(11) NOT NULL,
  `exam_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `start_time` datetime DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `resume_time` int(11) DEFAULT NULL,
  `total_question` int(11) DEFAULT NULL,
  `total_attempt` int(11) DEFAULT NULL,
  `total_answered` int(11) DEFAULT NULL,
  `total_marks` decimal(5,2) DEFAULT NULL,
  `obtained_marks` decimal(5,2) DEFAULT NULL,
  `result` varchar(10) DEFAULT NULL,
  `percent` decimal(5,2) DEFAULT NULL,
  `finalized_time` datetime DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `exam_results`
--

INSERT INTO `exam_results` (`id`, `exam_id`, `student_id`, `start_time`, `end_time`, `resume_time`, `total_question`, `total_attempt`, `total_answered`, `total_marks`, `obtained_marks`, `result`, `percent`, `finalized_time`, `user_id`) VALUES
(22, 9, 17, '2018-09-17 22:43:10', '2018-09-17 23:06:47', NULL, 0, 0, 0, NULL, '0.00', 'Fail', '0.00', '2018-09-17 23:06:47', 1),
(23, 9, 13, '2018-09-17 22:49:22', '2018-09-19 17:48:21', NULL, 0, 0, 0, NULL, '0.00', 'Fail', '0.00', '2018-09-19 17:48:21', 1),
(24, 9, 11, '2018-09-17 22:55:27', NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(25, 9, 17, '2018-09-17 23:09:04', '2018-09-17 23:10:48', NULL, 26, 26, 26, '104.00', '-1.00', 'Fail', '-0.96', '2018-09-17 23:10:48', 1),
(26, 10, 17, '2018-09-19 15:35:05', '2018-09-19 15:39:33', NULL, 47, 47, 43, '188.00', '2.00', 'Fail', '1.06', '2018-09-19 15:39:33', 1),
(27, 9, 13, '2018-09-19 17:48:57', '2018-09-19 17:49:06', NULL, 26, 26, 0, '104.00', '0.00', 'Fail', '0.00', '2018-09-19 17:49:06', 1),
(28, 10, 13, '2018-09-19 17:50:26', '2018-09-19 17:51:46', NULL, 47, 47, 0, '188.00', '0.00', 'Fail', '0.00', '2018-09-19 17:51:46', 1),
(29, 9, 8, '2018-09-19 18:16:47', '2018-09-19 18:21:37', NULL, 26, 26, 26, '104.00', '24.00', 'Fail', '23.08', '2018-09-19 18:21:37', 1),
(30, 9, 17, '2018-09-19 18:42:33', '2018-09-19 18:43:57', NULL, 26, 26, 26, '104.00', '9.00', 'Fail', '8.65', '2018-09-19 18:43:57', 1);

-- --------------------------------------------------------

--
-- Table structure for table `exam_stats`
--

CREATE TABLE `exam_stats` (
  `id` int(11) NOT NULL,
  `exam_result_id` int(11) NOT NULL,
  `exam_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `question_id` int(11) NOT NULL,
  `ques_no` int(11) DEFAULT NULL,
  `options` varchar(30) DEFAULT NULL,
  `attempt_time` datetime DEFAULT NULL,
  `opened` char(1) DEFAULT '0',
  `answered` char(1) DEFAULT '0',
  `review` char(1) DEFAULT '0',
  `option_selected` varchar(15) DEFAULT NULL,
  `answer` text,
  `true_false` varchar(5) DEFAULT NULL,
  `fill_blank` text,
  `correct_answer` text,
  `marks` decimal(5,2) DEFAULT NULL,
  `marks_obtained` decimal(5,2) DEFAULT NULL,
  `ques_status` char(1) DEFAULT NULL,
  `closed` char(1) DEFAULT '0',
  `user_id` int(11) DEFAULT NULL,
  `checking_time` datetime DEFAULT NULL,
  `time_taken` int(11) DEFAULT NULL,
  `bookmark` char(1) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `exam_stats`
--

INSERT INTO `exam_stats` (`id`, `exam_result_id`, `exam_id`, `student_id`, `question_id`, `ques_no`, `options`, `attempt_time`, `opened`, `answered`, `review`, `option_selected`, `answer`, `true_false`, `fill_blank`, `correct_answer`, `marks`, `marks_obtained`, `ques_status`, `closed`, `user_id`, `checking_time`, `time_taken`, `bookmark`, `created`, `modified`) VALUES
(2394, 25, 9, 17, 857, 1, '4,5,6,2,1,3', '2018-09-17 23:09:06', '1', '1', '0', '4', NULL, NULL, NULL, '3', '4.00', '-1.00', 'W', '1', NULL, NULL, 101, 'Y', '2018-09-17 23:09:04', '2018-09-18 19:00:56'),
(2395, 25, 9, 17, 856, 2, '2,4,3,5,6,1', '2018-09-17 23:10:43', '1', '1', '0', '1', NULL, NULL, NULL, '1', '4.00', '4.00', 'R', '1', NULL, NULL, 10, 'Y', '2018-09-17 23:09:04', '2018-09-18 19:00:19'),
(2396, 25, 9, 17, 836, 3, '1,6,4,5,3,2', '2018-09-17 23:09:15', '1', '1', '0', '4', NULL, NULL, NULL, '3', '4.00', '-1.00', 'W', '1', NULL, NULL, 4, NULL, '2018-09-17 23:09:04', '2018-09-17 23:09:19'),
(2397, 25, 9, 17, 851, 4, '6,4,5,2,3,1', '2018-09-17 23:09:19', '1', '1', '0', '2', NULL, NULL, NULL, '1', '4.00', '-1.00', 'W', '1', NULL, NULL, 2, NULL, '2018-09-17 23:09:04', '2018-09-17 23:09:21'),
(2398, 25, 9, 17, 842, 5, '3,6,1,4,2,5', '2018-09-17 23:09:21', '1', '1', '0', '4', NULL, NULL, NULL, '3', '4.00', '-1.00', 'W', '1', NULL, NULL, 3, NULL, '2018-09-17 23:09:04', '2018-09-17 23:09:24'),
(2399, 25, 9, 17, 847, 6, '6,5,2,1,4,3', '2018-09-17 23:09:24', '1', '1', '0', '4', NULL, NULL, NULL, '3', '4.00', '-1.00', 'W', '1', NULL, NULL, 2, NULL, '2018-09-17 23:09:04', '2018-09-17 23:09:26'),
(2400, 25, 9, 17, 846, 7, '1,6,3,2,5,4', '2018-09-17 23:09:26', '1', '1', '0', '4', NULL, NULL, NULL, '1', '4.00', '-1.00', 'W', '1', NULL, NULL, 2, NULL, '2018-09-17 23:09:04', '2018-09-17 23:09:28'),
(2401, 25, 9, 17, 850, 8, '4,6,2,5,1,3', '2018-09-17 23:09:28', '1', '1', '0', '2', NULL, NULL, NULL, '2', '4.00', '4.00', 'R', '1', NULL, NULL, 4, NULL, '2018-09-17 23:09:04', '2018-09-17 23:09:32'),
(2402, 25, 9, 17, 844, 9, '1,4,3,6,5,2', '2018-09-17 23:09:32', '1', '1', '0', '3', NULL, NULL, NULL, '4', '4.00', '-1.00', 'W', '1', NULL, NULL, 2, NULL, '2018-09-17 23:09:04', '2018-09-17 23:09:34'),
(2403, 25, 9, 17, 848, 10, '4,3,2,1,5,6', '2018-09-17 23:09:34', '1', '1', '0', '3', NULL, NULL, NULL, '1', '4.00', '-1.00', 'W', '1', NULL, NULL, 7, NULL, '2018-09-17 23:09:04', '2018-09-17 23:09:41'),
(2404, 25, 9, 17, 849, 11, '2,4,3,5,6,1', '2018-09-17 23:09:41', '1', '1', '0', '4', NULL, NULL, NULL, '2', '4.00', '-1.00', 'W', '1', NULL, NULL, 4, NULL, '2018-09-17 23:09:04', '2018-09-17 23:09:45'),
(2405, 25, 9, 17, 835, 12, '6,3,5,1,2,4', '2018-09-17 23:09:45', '1', '1', '0', '1', NULL, NULL, NULL, '1', '4.00', '4.00', 'R', '1', NULL, NULL, 2, NULL, '2018-09-17 23:09:04', '2018-09-17 23:09:47'),
(2406, 25, 9, 17, 854, 13, '5,1,3,4,6,2', '2018-09-17 23:09:47', '1', '1', '0', '3', NULL, NULL, NULL, '4', '4.00', '-1.00', 'W', '1', NULL, NULL, 4, NULL, '2018-09-17 23:09:04', '2018-09-17 23:09:51'),
(2407, 25, 9, 17, 845, 14, '3,2,4,5,1,6', '2018-09-17 23:09:51', '1', '1', '0', '2', NULL, NULL, NULL, '3', '4.00', '-1.00', 'W', '1', NULL, NULL, 2, NULL, '2018-09-17 23:09:04', '2018-09-17 23:09:53'),
(2408, 25, 9, 17, 858, 15, '5,4,1,3,2,6', '2018-09-17 23:09:53', '1', '1', '0', '1', NULL, NULL, NULL, '3', '4.00', '-1.00', 'W', '1', NULL, NULL, 2, NULL, '2018-09-17 23:09:04', '2018-09-17 23:09:55'),
(2409, 25, 9, 17, 841, 16, '1,6,5,4,2,3', '2018-09-17 23:09:55', '1', '1', '0', '2', NULL, NULL, NULL, '1', '4.00', '-1.00', 'W', '1', NULL, NULL, 3, NULL, '2018-09-17 23:09:04', '2018-09-17 23:09:58'),
(2410, 25, 9, 17, 859, 17, '1,5,2,3,6,4', '2018-09-17 23:09:58', '1', '1', '0', '3', NULL, NULL, NULL, '3', '4.00', '4.00', 'R', '1', NULL, NULL, 3, NULL, '2018-09-17 23:09:04', '2018-09-17 23:10:01'),
(2411, 25, 9, 17, 843, 18, '3,2,4,5,1,6', '2018-09-17 23:10:01', '1', '1', '0', '4', NULL, NULL, NULL, '1', '4.00', '-1.00', 'W', '1', NULL, NULL, 2, 'Y', '2018-09-17 23:09:04', '2018-09-18 19:01:05'),
(2412, 25, 9, 17, 855, 19, '5,6,3,4,2,1', '2018-09-17 23:10:03', '1', '1', '0', '2', NULL, NULL, NULL, '4', '4.00', '-1.00', 'W', '1', NULL, NULL, 3, NULL, '2018-09-17 23:09:04', '2018-09-17 23:10:06'),
(2413, 25, 9, 17, 837, 20, '4,3,2,6,5,1', '2018-09-17 23:10:06', '1', '1', '0', '2', NULL, NULL, NULL, '3', '4.00', '-1.00', 'W', '1', NULL, NULL, 4, NULL, '2018-09-17 23:09:04', '2018-09-17 23:10:10'),
(2414, 25, 9, 17, 853, 21, '4,3,5,1,2,6', '2018-09-17 23:10:10', '1', '1', '0', '1', NULL, NULL, NULL, '1', '4.00', '4.00', 'R', '1', NULL, NULL, 2, NULL, '2018-09-17 23:09:04', '2018-09-17 23:10:12'),
(2415, 25, 9, 17, 852, 22, '3,6,1,4,5,2', '2018-09-17 23:10:12', '1', '1', '0', '4', NULL, NULL, NULL, '3', '4.00', '-1.00', 'W', '1', NULL, NULL, 7, NULL, '2018-09-17 23:09:04', '2018-09-17 23:10:19'),
(2416, 25, 9, 17, 838, 23, '5,6,1,2,4,3', '2018-09-17 23:10:19', '1', '1', '0', '3', NULL, NULL, NULL, '1', '4.00', '-1.00', 'W', '1', NULL, NULL, 3, NULL, '2018-09-17 23:09:04', '2018-09-17 23:10:22'),
(2417, 25, 9, 17, 840, 24, '5,4,3,1,2,6', '2018-09-17 23:10:22', '1', '1', '0', '1', NULL, NULL, NULL, '2', '4.00', '-1.00', 'W', '1', NULL, NULL, 6, NULL, '2018-09-17 23:09:04', '2018-09-17 23:10:28'),
(2418, 25, 9, 17, 839, 25, '1,2,4,3,5,6', '2018-09-17 23:10:28', '1', '1', '0', '4', NULL, NULL, NULL, '1', '4.00', '-1.00', 'W', '1', NULL, NULL, 2, NULL, '2018-09-17 23:09:04', '2018-09-17 23:10:30'),
(2419, 25, 9, 17, 834, 26, '2,1,3,4,6,5', '2018-09-17 23:10:30', '1', '1', '0', '3', NULL, NULL, NULL, '4', '4.00', '-1.00', 'W', '1', NULL, NULL, NULL, NULL, '2018-09-17 23:09:04', '2018-09-17 23:10:33'),
(2420, 26, 10, 17, 966, 1, '1,2,3,4,5,6', '2018-09-19 15:35:11', '1', '1', '0', '2', NULL, NULL, NULL, '2', '4.00', '4.00', 'R', '1', NULL, NULL, 23, NULL, '2018-09-19 15:35:05', '2018-09-19 15:35:34'),
(2421, 26, 10, 17, 967, 2, '1,2,3,4,5,6', '2018-09-19 15:35:34', '1', '1', '0', '3', NULL, NULL, NULL, '4', '4.00', '-1.00', 'W', '1', NULL, NULL, 16, NULL, '2018-09-19 15:35:05', '2018-09-19 15:35:50'),
(2422, 26, 10, 17, 968, 3, '1,2,3,4,5,6', '2018-09-19 15:35:50', '1', '1', '0', '3', NULL, NULL, NULL, '1', '4.00', '-1.00', 'W', '1', NULL, NULL, 11, NULL, '2018-09-19 15:35:05', '2018-09-19 15:36:01'),
(2423, 26, 10, 17, 969, 4, '1,2,3,4,5,6', '2018-09-19 15:36:01', '1', '1', '0', '4', NULL, NULL, NULL, '1', '4.00', '-1.00', 'W', '1', NULL, NULL, 5, NULL, '2018-09-19 15:35:05', '2018-09-19 15:36:07'),
(2424, 26, 10, 17, 970, 5, '1,2,3,4,5,6', '2018-09-19 15:36:06', '1', '1', '0', '3', NULL, NULL, NULL, '3', '4.00', '4.00', 'R', '1', NULL, NULL, 4, NULL, '2018-09-19 15:35:05', '2018-09-19 15:36:10'),
(2425, 26, 10, 17, 971, 6, '1,2,3,4,5,6', '2018-09-19 15:36:10', '1', '1', '0', '4', NULL, NULL, NULL, '4', '4.00', '4.00', 'R', '1', NULL, NULL, 7, NULL, '2018-09-19 15:35:05', '2018-09-19 15:36:17'),
(2426, 26, 10, 17, 972, 7, '1,2,3,4,5,6', '2018-09-19 15:36:17', '1', '1', '0', '4', NULL, NULL, NULL, '3', '4.00', '-1.00', 'W', '1', NULL, NULL, 7, NULL, '2018-09-19 15:35:05', '2018-09-19 15:36:24'),
(2427, 26, 10, 17, 973, 8, '1,2,3,4,5,6', '2018-09-19 15:36:24', '1', '1', '0', '4', NULL, NULL, NULL, '1', '4.00', '-1.00', 'W', '1', NULL, NULL, 7, NULL, '2018-09-19 15:35:05', '2018-09-19 15:36:31'),
(2428, 26, 10, 17, 974, 9, '1,2,3,4,5,6', '2018-09-19 15:36:31', '1', '1', '0', '3', NULL, NULL, NULL, '2', '4.00', '-1.00', 'W', '1', NULL, NULL, 4, NULL, '2018-09-19 15:35:05', '2018-09-19 15:36:35'),
(2429, 26, 10, 17, 975, 10, '1,2,3,4,5,6', '2018-09-19 15:36:35', '1', '1', '0', '3', NULL, NULL, NULL, '1', '4.00', '-1.00', 'W', '1', NULL, NULL, 6, NULL, '2018-09-19 15:35:05', '2018-09-19 15:36:41'),
(2430, 26, 10, 17, 976, 11, '1,2,3,4,5,6', '2018-09-19 15:36:41', '1', '1', '0', '2', NULL, NULL, NULL, '2', '4.00', '4.00', 'R', '1', NULL, NULL, 3, NULL, '2018-09-19 15:35:05', '2018-09-19 15:36:44'),
(2431, 26, 10, 17, 977, 12, '1,2,3,4,5,6', '2018-09-19 15:36:44', '1', '1', '0', '3', NULL, NULL, NULL, '1', '4.00', '-1.00', 'W', '1', NULL, NULL, 5, NULL, '2018-09-19 15:35:05', '2018-09-19 15:36:49'),
(2432, 26, 10, 17, 978, 13, '1,2,3,4,5,6', '2018-09-19 15:36:49', '1', '1', '0', '2', NULL, NULL, NULL, '4', '4.00', '-1.00', 'W', '1', NULL, NULL, 4, NULL, '2018-09-19 15:35:05', '2018-09-19 15:36:53'),
(2433, 26, 10, 17, 979, 14, '1,2,3,4,5,6', '2018-09-19 15:36:53', '1', '1', '0', '2', NULL, NULL, NULL, '3', '4.00', '-1.00', 'W', '1', NULL, NULL, 5, NULL, '2018-09-19 15:35:05', '2018-09-19 15:36:58'),
(2434, 26, 10, 17, 980, 15, '1,2,3,4,5,6', '2018-09-19 15:36:58', '1', '1', '0', '2', NULL, NULL, NULL, '2', '4.00', '4.00', 'R', '1', NULL, NULL, 3, NULL, '2018-09-19 15:35:05', '2018-09-19 15:37:01'),
(2435, 26, 10, 17, 981, 16, '1,2,3,4,5,6', '2018-09-19 15:37:01', '1', '1', '0', '2', NULL, NULL, NULL, '1', '4.00', '-1.00', 'W', '1', NULL, NULL, 4, NULL, '2018-09-19 15:35:05', '2018-09-19 15:37:05'),
(2436, 26, 10, 17, 982, 17, '1,2,3,4,5,6', '2018-09-19 15:37:05', '1', '1', '0', '3', NULL, NULL, NULL, '2', '4.00', '-1.00', 'W', '1', NULL, NULL, 5, NULL, '2018-09-19 15:35:05', '2018-09-19 15:37:10'),
(2437, 26, 10, 17, 983, 18, '1,2,3,4,5,6', '2018-09-19 15:37:10', '1', '1', '0', '3', NULL, NULL, NULL, '2', '4.00', '-1.00', 'W', '1', NULL, NULL, 5, NULL, '2018-09-19 15:35:05', '2018-09-19 15:37:15'),
(2438, 26, 10, 17, 984, 19, '1,2,3,4,5,6', '2018-09-19 15:37:15', '1', '1', '0', '4', NULL, NULL, NULL, '2', '4.00', '-1.00', 'W', '1', NULL, NULL, 4, NULL, '2018-09-19 15:35:05', '2018-09-19 15:37:19'),
(2439, 26, 10, 17, 985, 20, '1,2,3,4,5,6', '2018-09-19 15:37:19', '1', '1', '0', '3', NULL, NULL, NULL, '3', '4.00', '4.00', 'R', '1', NULL, NULL, 5, NULL, '2018-09-19 15:35:05', '2018-09-19 15:37:24'),
(2440, 26, 10, 17, 986, 21, '1,2,3,4,5,6', '2018-09-19 15:37:24', '1', '1', '0', '3', NULL, NULL, NULL, '1', '4.00', '-1.00', 'W', '1', NULL, NULL, 6, NULL, '2018-09-19 15:35:05', '2018-09-19 15:37:30'),
(2441, 26, 10, 17, 987, 22, '1,2,3,4,5,6', '2018-09-19 15:37:30', '1', '1', '0', '3', NULL, NULL, NULL, '1', '4.00', '-1.00', 'W', '1', NULL, NULL, 3, NULL, '2018-09-19 15:35:05', '2018-09-19 15:37:33'),
(2442, 26, 10, 17, 988, 23, '1,2,3,4,5,6', '2018-09-19 15:37:33', '1', '1', '0', '3', NULL, NULL, NULL, '4', '4.00', '-1.00', 'W', '1', NULL, NULL, 4, NULL, '2018-09-19 15:35:05', '2018-09-19 15:37:37'),
(2443, 26, 10, 17, 989, 24, '1,2,3,4,5,6', '2018-09-19 15:37:37', '1', '1', '0', '3', NULL, NULL, NULL, '1', '4.00', '-1.00', 'W', '1', NULL, NULL, 3, NULL, '2018-09-19 15:35:05', '2018-09-19 15:37:40'),
(2444, 26, 10, 17, 990, 25, '1,2,3,4,5,6', '2018-09-19 15:37:40', '1', '1', '0', '3', NULL, NULL, NULL, '2', '4.00', '-1.00', 'W', '1', NULL, NULL, 5, NULL, '2018-09-19 15:35:05', '2018-09-19 15:37:45'),
(2445, 26, 10, 17, 991, 26, '1,2,3,4,5,6', '2018-09-19 15:37:45', '1', '1', '0', '4', NULL, NULL, NULL, '2', '4.00', '-1.00', 'W', '1', NULL, NULL, 4, NULL, '2018-09-19 15:35:05', '2018-09-19 15:37:49'),
(2446, 26, 10, 17, 992, 27, '1,2,3,4,5,6', '2018-09-19 15:37:49', '1', '1', '0', '2', NULL, NULL, NULL, '3', '4.00', '-1.00', 'W', '1', NULL, NULL, 4, NULL, '2018-09-19 15:35:05', '2018-09-19 15:37:53'),
(2447, 26, 10, 17, 993, 28, '1,2,3,4,5,6', '2018-09-19 15:37:53', '1', '1', '0', '2', NULL, NULL, NULL, '1', '4.00', '-1.00', 'W', '1', NULL, NULL, 2, NULL, '2018-09-19 15:35:05', '2018-09-19 15:37:55'),
(2448, 26, 10, 17, 994, 29, '1,2,3,4,5,6', '2018-09-19 15:37:55', '1', '1', '0', '2', NULL, NULL, NULL, '3', '4.00', '-1.00', 'W', '1', NULL, NULL, 11, NULL, '2018-09-19 15:35:05', '2018-09-19 15:38:06'),
(2449, 26, 10, 17, 995, 30, '1,2,3,4,5,6', '2018-09-19 15:38:06', '1', '1', '0', '4', NULL, NULL, NULL, '1', '4.00', '-1.00', 'W', '1', NULL, NULL, 5, NULL, '2018-09-19 15:35:05', '2018-09-19 15:38:11'),
(2450, 26, 10, 17, 996, 31, '1,2,3,4,5,6', '2018-09-19 15:38:11', '1', '1', '0', '3', NULL, NULL, NULL, '3', '4.00', '4.00', 'R', '1', NULL, NULL, 12, NULL, '2018-09-19 15:35:05', '2018-09-19 15:38:23'),
(2451, 26, 10, 17, 997, 32, '1,2,3,4,5,6', '2018-09-19 15:38:23', '1', '1', '0', '4', NULL, NULL, NULL, '1', '4.00', '-1.00', 'W', '1', NULL, NULL, 4, NULL, '2018-09-19 15:35:05', '2018-09-19 15:38:27'),
(2452, 26, 10, 17, 998, 33, '1,2,3,4,5,6', '2018-09-19 15:38:27', '1', '1', '0', '4', NULL, NULL, NULL, '2', '4.00', '-1.00', 'W', '1', NULL, NULL, 8, NULL, '2018-09-19 15:35:05', '2018-09-19 15:38:35'),
(2453, 26, 10, 17, 999, 34, '1,2,3,4,5,6', '2018-09-19 15:38:35', '1', '1', '0', '3', NULL, NULL, NULL, '1', '4.00', '-1.00', 'W', '1', NULL, NULL, 12, NULL, '2018-09-19 15:35:05', '2018-09-19 15:38:47'),
(2454, 26, 10, 17, 1000, 35, '1,2,3,4,5,6', '2018-09-19 15:38:47', '1', '1', '0', '4', NULL, NULL, NULL, '3', '4.00', '-1.00', 'W', '1', NULL, NULL, 3, NULL, '2018-09-19 15:35:05', '2018-09-19 15:38:50'),
(2455, 26, 10, 17, 1001, 36, '1,2,3,4,5,6', '2018-09-19 15:38:50', '1', '1', '0', '4', NULL, NULL, NULL, '1', '4.00', '-1.00', 'W', '1', NULL, NULL, 3, NULL, '2018-09-19 15:35:05', '2018-09-19 15:38:53'),
(2456, 26, 10, 17, 1002, 37, '1,2,3,4,5,6', '2018-09-19 15:38:53', '1', '1', '0', '4', NULL, NULL, NULL, '2', '4.00', '-1.00', 'W', '1', NULL, NULL, 6, NULL, '2018-09-19 15:35:05', '2018-09-19 15:38:59'),
(2457, 26, 10, 17, 1003, 38, '1,2,3,4,5,6', '2018-09-19 15:38:59', '1', '1', '0', '3', NULL, NULL, NULL, '3', '4.00', '4.00', 'R', '1', NULL, NULL, 3, NULL, '2018-09-19 15:35:05', '2018-09-19 15:39:02'),
(2458, 26, 10, 17, 1004, 39, '1,2,3,4,5,6', '2018-09-19 15:39:02', '1', '1', '0', '4', NULL, NULL, NULL, '2', '4.00', '-1.00', 'W', '1', NULL, NULL, 3, NULL, '2018-09-19 15:35:05', '2018-09-19 15:39:05'),
(2459, 26, 10, 17, 1005, 40, '1,2,3,4,5,6', '2018-09-19 15:39:05', '1', '1', '0', '4', NULL, NULL, NULL, '3', '4.00', '-1.00', 'W', '1', NULL, NULL, 3, NULL, '2018-09-19 15:35:05', '2018-09-19 15:39:08'),
(2460, 26, 10, 17, 1006, 41, '1,2,3,4,5,6', '2018-09-19 15:39:08', '1', '1', '0', '4', NULL, NULL, NULL, '4', '4.00', '4.00', 'R', '1', NULL, NULL, 6, NULL, '2018-09-19 15:35:05', '2018-09-19 15:39:14'),
(2461, 26, 10, 17, 1007, 42, '1,2,3,4,5,6', '2018-09-19 15:39:14', '1', '1', '0', '4', NULL, NULL, NULL, '1', '4.00', '-1.00', 'W', '1', NULL, NULL, 4, NULL, '2018-09-19 15:35:05', '2018-09-19 15:39:18'),
(2462, 26, 10, 17, 1008, 43, '1,2,3,4,5,6', '2018-09-19 15:39:18', '1', '1', '0', '4', NULL, NULL, NULL, '1', '4.00', '-1.00', 'W', '1', NULL, NULL, 7, NULL, '2018-09-19 15:35:05', '2018-09-19 15:39:25'),
(2463, 26, 10, 17, 1009, 44, '1,2,3,4,5,6', '2018-09-19 15:39:25', '1', '0', '0', NULL, NULL, NULL, NULL, '1', '4.00', NULL, NULL, '1', NULL, NULL, 8, NULL, '2018-09-19 15:35:05', '2018-09-19 15:39:33'),
(2464, 26, 10, 17, 1010, 45, '1,2,3,4,5,6', NULL, '0', '0', '0', NULL, NULL, NULL, NULL, '3', '4.00', NULL, NULL, '1', NULL, NULL, NULL, NULL, '2018-09-19 15:35:05', '2018-09-19 15:35:05'),
(2465, 26, 10, 17, 1011, 46, '1,2,3,4,5,6', NULL, '0', '0', '0', NULL, NULL, NULL, NULL, '1', '4.00', NULL, NULL, '1', NULL, NULL, NULL, NULL, '2018-09-19 15:35:05', '2018-09-19 15:35:05'),
(2466, 26, 10, 17, 1012, 47, '1,2,3,4,5,6', NULL, '0', '0', '0', NULL, NULL, NULL, NULL, '4', '4.00', NULL, NULL, '1', NULL, NULL, NULL, NULL, '2018-09-19 15:35:05', '2018-09-19 15:35:05'),
(2467, 27, 9, 13, 849, 1, '1,5,2,4,6,3', '2018-09-19 17:49:00', '1', '0', '0', NULL, NULL, NULL, NULL, '2', '4.00', NULL, NULL, '1', NULL, NULL, 6, NULL, '2018-09-19 17:48:57', '2018-09-19 17:49:06'),
(2468, 27, 9, 13, 841, 2, '3,5,1,4,6,2', NULL, '0', '0', '0', NULL, NULL, NULL, NULL, '1', '4.00', NULL, NULL, '1', NULL, NULL, NULL, NULL, '2018-09-19 17:48:57', '2018-09-19 17:48:57'),
(2469, 27, 9, 13, 846, 3, '2,3,4,6,5,1', NULL, '0', '0', '0', NULL, NULL, NULL, NULL, '1', '4.00', NULL, NULL, '1', NULL, NULL, NULL, NULL, '2018-09-19 17:48:57', '2018-09-19 17:48:57'),
(2470, 27, 9, 13, 857, 4, '4,3,5,2,6,1', NULL, '0', '0', '0', NULL, NULL, NULL, NULL, '3', '4.00', NULL, NULL, '1', NULL, NULL, NULL, NULL, '2018-09-19 17:48:57', '2018-09-19 17:48:57'),
(2471, 27, 9, 13, 850, 5, '2,3,6,5,1,4', NULL, '0', '0', '0', NULL, NULL, NULL, NULL, '2', '4.00', NULL, NULL, '1', NULL, NULL, NULL, NULL, '2018-09-19 17:48:57', '2018-09-19 17:48:57'),
(2472, 27, 9, 13, 840, 6, '3,6,4,2,1,5', NULL, '0', '0', '0', NULL, NULL, NULL, NULL, '2', '4.00', NULL, NULL, '1', NULL, NULL, NULL, NULL, '2018-09-19 17:48:57', '2018-09-19 17:48:57'),
(2473, 27, 9, 13, 843, 7, '2,1,4,3,6,5', NULL, '0', '0', '0', NULL, NULL, NULL, NULL, '1', '4.00', NULL, NULL, '1', NULL, NULL, NULL, NULL, '2018-09-19 17:48:57', '2018-09-19 17:48:57'),
(2474, 27, 9, 13, 838, 8, '6,1,2,3,5,4', NULL, '0', '0', '0', NULL, NULL, NULL, NULL, '1', '4.00', NULL, NULL, '1', NULL, NULL, NULL, NULL, '2018-09-19 17:48:57', '2018-09-19 17:48:57'),
(2475, 27, 9, 13, 837, 9, '5,3,2,1,6,4', NULL, '0', '0', '0', NULL, NULL, NULL, NULL, '3', '4.00', NULL, NULL, '1', NULL, NULL, NULL, NULL, '2018-09-19 17:48:57', '2018-09-19 17:48:57'),
(2476, 27, 9, 13, 842, 10, '5,2,3,1,6,4', NULL, '0', '0', '0', NULL, NULL, NULL, NULL, '3', '4.00', NULL, NULL, '1', NULL, NULL, NULL, NULL, '2018-09-19 17:48:57', '2018-09-19 17:48:57'),
(2477, 27, 9, 13, 855, 11, '4,3,5,1,6,2', NULL, '0', '0', '0', NULL, NULL, NULL, NULL, '4', '4.00', NULL, NULL, '1', NULL, NULL, NULL, NULL, '2018-09-19 17:48:57', '2018-09-19 17:48:57'),
(2478, 27, 9, 13, 847, 12, '6,4,5,3,2,1', NULL, '0', '0', '0', NULL, NULL, NULL, NULL, '3', '4.00', NULL, NULL, '1', NULL, NULL, NULL, NULL, '2018-09-19 17:48:57', '2018-09-19 17:48:57'),
(2479, 27, 9, 13, 851, 13, '6,4,2,3,1,5', NULL, '0', '0', '0', NULL, NULL, NULL, NULL, '1', '4.00', NULL, NULL, '1', NULL, NULL, NULL, NULL, '2018-09-19 17:48:57', '2018-09-19 17:48:57'),
(2480, 27, 9, 13, 852, 14, '5,3,2,4,1,6', NULL, '0', '0', '0', NULL, NULL, NULL, NULL, '3', '4.00', NULL, NULL, '1', NULL, NULL, NULL, NULL, '2018-09-19 17:48:57', '2018-09-19 17:48:57'),
(2481, 27, 9, 13, 844, 15, '3,4,5,2,6,1', NULL, '0', '0', '0', NULL, NULL, NULL, NULL, '4', '4.00', NULL, NULL, '1', NULL, NULL, NULL, NULL, '2018-09-19 17:48:57', '2018-09-19 17:48:57'),
(2482, 27, 9, 13, 835, 16, '3,4,1,6,5,2', NULL, '0', '0', '0', NULL, NULL, NULL, NULL, '1', '4.00', NULL, NULL, '1', NULL, NULL, NULL, NULL, '2018-09-19 17:48:57', '2018-09-19 17:48:57'),
(2483, 27, 9, 13, 858, 17, '6,3,5,1,4,2', NULL, '0', '0', '0', NULL, NULL, NULL, NULL, '3', '4.00', NULL, NULL, '1', NULL, NULL, NULL, NULL, '2018-09-19 17:48:57', '2018-09-19 17:48:57'),
(2484, 27, 9, 13, 859, 18, '3,6,1,5,2,4', NULL, '0', '0', '0', NULL, NULL, NULL, NULL, '3', '4.00', NULL, NULL, '1', NULL, NULL, NULL, NULL, '2018-09-19 17:48:57', '2018-09-19 17:48:57'),
(2485, 27, 9, 13, 848, 19, '2,4,3,6,5,1', NULL, '0', '0', '0', NULL, NULL, NULL, NULL, '1', '4.00', NULL, NULL, '1', NULL, NULL, NULL, NULL, '2018-09-19 17:48:57', '2018-09-19 17:48:57'),
(2486, 27, 9, 13, 836, 20, '2,1,5,3,4,6', NULL, '0', '0', '0', NULL, NULL, NULL, NULL, '3', '4.00', NULL, NULL, '1', NULL, NULL, NULL, NULL, '2018-09-19 17:48:57', '2018-09-19 17:48:57'),
(2487, 27, 9, 13, 856, 21, '4,1,6,2,5,3', NULL, '0', '0', '0', NULL, NULL, NULL, NULL, '1', '4.00', NULL, NULL, '1', NULL, NULL, NULL, NULL, '2018-09-19 17:48:57', '2018-09-19 17:48:57'),
(2488, 27, 9, 13, 839, 22, '3,2,4,5,1,6', NULL, '0', '0', '0', NULL, NULL, NULL, NULL, '1', '4.00', NULL, NULL, '1', NULL, NULL, NULL, NULL, '2018-09-19 17:48:57', '2018-09-19 17:48:57'),
(2489, 27, 9, 13, 853, 23, '4,6,3,1,2,5', NULL, '0', '0', '0', NULL, NULL, NULL, NULL, '1', '4.00', NULL, NULL, '1', NULL, NULL, NULL, NULL, '2018-09-19 17:48:57', '2018-09-19 17:48:57'),
(2490, 27, 9, 13, 854, 24, '3,1,5,4,6,2', NULL, '0', '0', '0', NULL, NULL, NULL, NULL, '4', '4.00', NULL, NULL, '1', NULL, NULL, NULL, NULL, '2018-09-19 17:48:57', '2018-09-19 17:48:57'),
(2491, 27, 9, 13, 834, 25, '1,6,3,2,4,5', NULL, '0', '0', '0', NULL, NULL, NULL, NULL, '4', '4.00', NULL, NULL, '1', NULL, NULL, NULL, NULL, '2018-09-19 17:48:57', '2018-09-19 17:48:57'),
(2492, 27, 9, 13, 845, 26, '1,3,5,2,4,6', NULL, '0', '0', '0', NULL, NULL, NULL, NULL, '3', '4.00', NULL, NULL, '1', NULL, NULL, NULL, NULL, '2018-09-19 17:48:57', '2018-09-19 17:48:57'),
(2493, 28, 10, 13, 966, 1, '1,2,3,4,5,6', '2018-09-19 17:50:32', '1', '0', '0', NULL, NULL, NULL, NULL, '2', '4.00', NULL, NULL, '1', NULL, NULL, 15, NULL, '2018-09-19 17:50:26', '2018-09-19 17:50:47'),
(2494, 28, 10, 13, 967, 2, '1,2,3,4,5,6', '2018-09-19 17:50:47', '1', '0', '0', NULL, NULL, NULL, NULL, '4', '4.00', NULL, NULL, '1', NULL, NULL, 1, NULL, '2018-09-19 17:50:26', '2018-09-19 17:50:48'),
(2495, 28, 10, 13, 968, 3, '1,2,3,4,5,6', '2018-09-19 17:50:48', '1', '0', '0', NULL, NULL, NULL, NULL, '1', '4.00', NULL, NULL, '1', NULL, NULL, 2, NULL, '2018-09-19 17:50:26', '2018-09-19 17:50:50'),
(2496, 28, 10, 13, 969, 4, '1,2,3,4,5,6', '2018-09-19 17:50:50', '1', '0', '0', NULL, NULL, NULL, NULL, '1', '4.00', NULL, NULL, '1', NULL, NULL, 1, NULL, '2018-09-19 17:50:26', '2018-09-19 17:50:51'),
(2497, 28, 10, 13, 970, 5, '1,2,3,4,5,6', '2018-09-19 17:50:56', '1', '0', '0', NULL, NULL, NULL, NULL, '3', '4.00', NULL, NULL, '1', NULL, NULL, 5, NULL, '2018-09-19 17:50:26', '2018-09-19 17:50:59'),
(2498, 28, 10, 13, 971, 6, '1,2,3,4,5,6', '2018-09-19 17:50:59', '1', '0', '0', NULL, NULL, NULL, NULL, '4', '4.00', NULL, NULL, '1', NULL, NULL, 5, NULL, '2018-09-19 17:50:26', '2018-09-19 17:51:01'),
(2499, 28, 10, 13, 972, 7, '1,2,3,4,5,6', '2018-09-19 17:51:01', '1', '0', '0', NULL, NULL, NULL, NULL, '3', '4.00', NULL, NULL, '1', NULL, NULL, 4, NULL, '2018-09-19 17:50:26', '2018-09-19 17:51:05'),
(2500, 28, 10, 13, 973, 8, '1,2,3,4,5,6', '2018-09-19 17:51:05', '1', '0', '0', NULL, NULL, NULL, NULL, '1', '4.00', NULL, NULL, '1', NULL, NULL, 2, NULL, '2018-09-19 17:50:26', '2018-09-19 17:51:07'),
(2501, 28, 10, 13, 974, 9, '1,2,3,4,5,6', '2018-09-19 17:51:07', '1', '0', '0', NULL, NULL, NULL, NULL, '2', '4.00', NULL, NULL, '1', NULL, NULL, 1, NULL, '2018-09-19 17:50:26', '2018-09-19 17:51:08'),
(2502, 28, 10, 13, 975, 10, '1,2,3,4,5,6', '2018-09-19 17:51:08', '1', '0', '0', NULL, NULL, NULL, NULL, '1', '4.00', NULL, NULL, '1', NULL, NULL, 1, NULL, '2018-09-19 17:50:26', '2018-09-19 17:51:09'),
(2503, 28, 10, 13, 976, 11, '1,2,3,4,5,6', '2018-09-19 17:51:09', '1', '0', '0', NULL, NULL, NULL, NULL, '2', '4.00', NULL, NULL, '1', NULL, NULL, 1, NULL, '2018-09-19 17:50:26', '2018-09-19 17:51:10'),
(2504, 28, 10, 13, 977, 12, '1,2,3,4,5,6', '2018-09-19 17:51:10', '1', '0', '0', NULL, NULL, NULL, NULL, '1', '4.00', NULL, NULL, '1', NULL, NULL, 1, NULL, '2018-09-19 17:50:26', '2018-09-19 17:51:11'),
(2505, 28, 10, 13, 978, 13, '1,2,3,4,5,6', '2018-09-19 17:51:11', '1', '0', '0', NULL, NULL, NULL, NULL, '4', '4.00', NULL, NULL, '1', NULL, NULL, 1, NULL, '2018-09-19 17:50:26', '2018-09-19 17:51:12'),
(2506, 28, 10, 13, 979, 14, '1,2,3,4,5,6', '2018-09-19 17:51:12', '1', '0', '0', NULL, NULL, NULL, NULL, '3', '4.00', NULL, NULL, '1', NULL, NULL, 1, NULL, '2018-09-19 17:50:26', '2018-09-19 17:51:13'),
(2507, 28, 10, 13, 980, 15, '1,2,3,4,5,6', '2018-09-19 17:51:13', '1', '0', '0', NULL, NULL, NULL, NULL, '2', '4.00', NULL, NULL, '1', NULL, NULL, 1, NULL, '2018-09-19 17:50:26', '2018-09-19 17:51:14'),
(2508, 28, 10, 13, 981, 16, '1,2,3,4,5,6', '2018-09-19 17:51:14', '1', '0', '0', NULL, NULL, NULL, NULL, '1', '4.00', NULL, NULL, '1', NULL, NULL, 2, NULL, '2018-09-19 17:50:26', '2018-09-19 17:51:16'),
(2509, 28, 10, 13, 982, 17, '1,2,3,4,5,6', '2018-09-19 17:51:16', '1', '0', '0', NULL, NULL, NULL, NULL, '2', '4.00', NULL, NULL, '1', NULL, NULL, 1, NULL, '2018-09-19 17:50:26', '2018-09-19 17:51:17'),
(2510, 28, 10, 13, 983, 18, '1,2,3,4,5,6', '2018-09-19 17:51:17', '1', '0', '0', NULL, NULL, NULL, NULL, '2', '4.00', NULL, NULL, '1', NULL, NULL, 1, NULL, '2018-09-19 17:50:26', '2018-09-19 17:51:18'),
(2511, 28, 10, 13, 984, 19, '1,2,3,4,5,6', '2018-09-19 17:51:18', '1', '0', '0', NULL, NULL, NULL, NULL, '2', '4.00', NULL, NULL, '1', NULL, NULL, 2, NULL, '2018-09-19 17:50:26', '2018-09-19 17:51:20'),
(2512, 28, 10, 13, 985, 20, '1,2,3,4,5,6', '2018-09-19 17:51:20', '1', '0', '0', NULL, NULL, NULL, NULL, '3', '4.00', NULL, NULL, '1', NULL, NULL, 0, NULL, '2018-09-19 17:50:26', '2018-09-19 17:51:21'),
(2513, 28, 10, 13, 986, 21, '1,2,3,4,5,6', '2018-09-19 17:51:20', '1', '0', '0', NULL, NULL, NULL, NULL, '1', '4.00', NULL, NULL, '1', NULL, NULL, 2, NULL, '2018-09-19 17:50:26', '2018-09-19 17:51:22'),
(2514, 28, 10, 13, 987, 22, '1,2,3,4,5,6', '2018-09-19 17:51:22', '1', '0', '0', NULL, NULL, NULL, NULL, '1', '4.00', NULL, NULL, '1', NULL, NULL, 1, NULL, '2018-09-19 17:50:26', '2018-09-19 17:51:23'),
(2515, 28, 10, 13, 988, 23, '1,2,3,4,5,6', '2018-09-19 17:51:23', '1', '0', '0', NULL, NULL, NULL, NULL, '4', '4.00', NULL, NULL, '1', NULL, NULL, 1, NULL, '2018-09-19 17:50:26', '2018-09-19 17:51:24'),
(2516, 28, 10, 13, 989, 24, '1,2,3,4,5,6', '2018-09-19 17:51:24', '1', '0', '0', NULL, NULL, NULL, NULL, '1', '4.00', NULL, NULL, '1', NULL, NULL, 1, NULL, '2018-09-19 17:50:26', '2018-09-19 17:51:25'),
(2517, 28, 10, 13, 990, 25, '1,2,3,4,5,6', '2018-09-19 17:51:25', '1', '0', '0', NULL, NULL, NULL, NULL, '2', '4.00', NULL, NULL, '1', NULL, NULL, 1, NULL, '2018-09-19 17:50:26', '2018-09-19 17:51:26'),
(2518, 28, 10, 13, 991, 26, '1,2,3,4,5,6', '2018-09-19 17:51:26', '1', '0', '0', NULL, NULL, NULL, NULL, '2', '4.00', NULL, NULL, '1', NULL, NULL, 0, NULL, '2018-09-19 17:50:26', '2018-09-19 17:51:26'),
(2519, 28, 10, 13, 992, 27, '1,2,3,4,5,6', '2018-09-19 17:51:26', '1', '0', '0', NULL, NULL, NULL, NULL, '3', '4.00', NULL, NULL, '1', NULL, NULL, 1, NULL, '2018-09-19 17:50:26', '2018-09-19 17:51:28'),
(2520, 28, 10, 13, 993, 28, '1,2,3,4,5,6', '2018-09-19 17:51:27', '1', '0', '0', NULL, NULL, NULL, NULL, '1', '4.00', NULL, NULL, '1', NULL, NULL, 2, NULL, '2018-09-19 17:50:26', '2018-09-19 17:51:29'),
(2521, 28, 10, 13, 994, 29, '1,2,3,4,5,6', '2018-09-19 17:51:29', '1', '0', '0', NULL, NULL, NULL, NULL, '3', '4.00', NULL, NULL, '1', NULL, NULL, 1, NULL, '2018-09-19 17:50:26', '2018-09-19 17:51:30'),
(2522, 28, 10, 13, 995, 30, '1,2,3,4,5,6', '2018-09-19 17:51:30', '1', '0', '0', NULL, NULL, NULL, NULL, '1', '4.00', NULL, NULL, '1', NULL, NULL, 1, NULL, '2018-09-19 17:50:26', '2018-09-19 17:51:31'),
(2523, 28, 10, 13, 996, 31, '1,2,3,4,5,6', '2018-09-19 17:51:31', '1', '0', '0', NULL, NULL, NULL, NULL, '3', '4.00', NULL, NULL, '1', NULL, NULL, 1, NULL, '2018-09-19 17:50:26', '2018-09-19 17:51:33'),
(2524, 28, 10, 13, 997, 32, '1,2,3,4,5,6', '2018-09-19 17:51:32', '1', '0', '0', NULL, NULL, NULL, NULL, '1', '4.00', NULL, NULL, '1', NULL, NULL, 1, NULL, '2018-09-19 17:50:26', '2018-09-19 17:51:33'),
(2525, 28, 10, 13, 998, 33, '1,2,3,4,5,6', '2018-09-19 17:51:33', '1', '0', '0', NULL, NULL, NULL, NULL, '2', '4.00', NULL, NULL, '1', NULL, NULL, 2, NULL, '2018-09-19 17:50:26', '2018-09-19 17:51:35'),
(2526, 28, 10, 13, 999, 34, '1,2,3,4,5,6', '2018-09-19 17:51:35', '1', '0', '0', NULL, NULL, NULL, NULL, '1', '4.00', NULL, NULL, '1', NULL, NULL, 0, NULL, '2018-09-19 17:50:26', '2018-09-19 17:51:35'),
(2527, 28, 10, 13, 1000, 35, '1,2,3,4,5,6', '2018-09-19 17:51:35', '1', '0', '0', NULL, NULL, NULL, NULL, '3', '4.00', NULL, NULL, '1', NULL, NULL, 2, NULL, '2018-09-19 17:50:26', '2018-09-19 17:51:37'),
(2528, 28, 10, 13, 1001, 36, '1,2,3,4,5,6', '2018-09-19 17:51:37', '1', '0', '0', NULL, NULL, NULL, NULL, '1', '4.00', NULL, NULL, '1', NULL, NULL, 3, NULL, '2018-09-19 17:50:26', '2018-09-19 17:51:40'),
(2529, 28, 10, 13, 1002, 37, '1,2,3,4,5,6', '2018-09-19 17:51:40', '1', '0', '0', NULL, NULL, NULL, NULL, '2', '4.00', NULL, NULL, '1', NULL, NULL, 0, NULL, '2018-09-19 17:50:26', '2018-09-19 17:51:40'),
(2530, 28, 10, 13, 1003, 38, '1,2,3,4,5,6', '2018-09-19 17:51:40', '1', '0', '0', NULL, NULL, NULL, NULL, '3', '4.00', NULL, NULL, '1', NULL, NULL, 6, NULL, '2018-09-19 17:50:26', '2018-09-19 17:51:46'),
(2531, 28, 10, 13, 1004, 39, '1,2,3,4,5,6', NULL, '0', '0', '0', NULL, NULL, NULL, NULL, '2', '4.00', NULL, NULL, '1', NULL, NULL, NULL, NULL, '2018-09-19 17:50:26', '2018-09-19 17:50:26'),
(2532, 28, 10, 13, 1005, 40, '1,2,3,4,5,6', NULL, '0', '0', '0', NULL, NULL, NULL, NULL, '3', '4.00', NULL, NULL, '1', NULL, NULL, NULL, NULL, '2018-09-19 17:50:26', '2018-09-19 17:50:26'),
(2533, 28, 10, 13, 1006, 41, '1,2,3,4,5,6', NULL, '0', '0', '0', NULL, NULL, NULL, NULL, '4', '4.00', NULL, NULL, '1', NULL, NULL, NULL, NULL, '2018-09-19 17:50:26', '2018-09-19 17:50:26'),
(2534, 28, 10, 13, 1007, 42, '1,2,3,4,5,6', NULL, '0', '0', '0', NULL, NULL, NULL, NULL, '1', '4.00', NULL, NULL, '1', NULL, NULL, NULL, NULL, '2018-09-19 17:50:26', '2018-09-19 17:50:26'),
(2535, 28, 10, 13, 1008, 43, '1,2,3,4,5,6', NULL, '0', '0', '0', NULL, NULL, NULL, NULL, '1', '4.00', NULL, NULL, '1', NULL, NULL, NULL, NULL, '2018-09-19 17:50:26', '2018-09-19 17:50:26'),
(2536, 28, 10, 13, 1009, 44, '1,2,3,4,5,6', NULL, '0', '0', '0', NULL, NULL, NULL, NULL, '1', '4.00', NULL, NULL, '1', NULL, NULL, NULL, NULL, '2018-09-19 17:50:26', '2018-09-19 17:50:26'),
(2537, 28, 10, 13, 1010, 45, '1,2,3,4,5,6', NULL, '0', '0', '0', NULL, NULL, NULL, NULL, '3', '4.00', NULL, NULL, '1', NULL, NULL, NULL, NULL, '2018-09-19 17:50:26', '2018-09-19 17:50:26'),
(2538, 28, 10, 13, 1011, 46, '1,2,3,4,5,6', NULL, '0', '0', '0', NULL, NULL, NULL, NULL, '1', '4.00', NULL, NULL, '1', NULL, NULL, NULL, NULL, '2018-09-19 17:50:26', '2018-09-19 17:50:26'),
(2539, 28, 10, 13, 1012, 47, '1,2,3,4,5,6', NULL, '0', '0', '0', NULL, NULL, NULL, NULL, '4', '4.00', NULL, NULL, '1', NULL, NULL, NULL, NULL, '2018-09-19 17:50:26', '2018-09-19 17:50:26'),
(2540, 29, 9, 8, 850, 1, '6,3,2,4,1,5', '2018-09-19 18:17:45', '1', '1', '0', '2', NULL, NULL, NULL, '2', '4.00', '4.00', 'R', '1', NULL, NULL, 90, NULL, '2018-09-19 18:16:47', '2018-09-19 18:18:21'),
(2541, 29, 9, 8, 845, 2, '2,3,6,1,4,5', '2018-09-19 18:18:21', '1', '1', '0', '3', NULL, NULL, NULL, '3', '4.00', '4.00', 'R', '1', NULL, NULL, 5, NULL, '2018-09-19 18:16:47', '2018-09-19 18:18:26'),
(2542, 29, 9, 8, 851, 3, '5,3,6,1,2,4', '2018-09-19 18:18:26', '1', '1', '0', '2', NULL, NULL, NULL, '1', '4.00', '-1.00', 'W', '1', NULL, NULL, 4, NULL, '2018-09-19 18:16:47', '2018-09-19 18:18:30'),
(2543, 29, 9, 8, 838, 4, '1,5,3,2,6,4', '2018-09-19 18:18:30', '1', '1', '0', '1', NULL, NULL, NULL, '1', '4.00', '4.00', 'R', '1', NULL, NULL, 3, NULL, '2018-09-19 18:16:47', '2018-09-19 18:18:33'),
(2544, 29, 9, 8, 855, 5, '3,5,6,1,4,2', '2018-09-19 18:18:33', '1', '1', '0', '4', NULL, NULL, NULL, '4', '4.00', '4.00', 'R', '1', NULL, NULL, 4, NULL, '2018-09-19 18:16:47', '2018-09-19 18:18:37'),
(2545, 29, 9, 8, 858, 6, '1,6,3,4,5,2', '2018-09-19 18:18:37', '1', '1', '0', '1', NULL, NULL, NULL, '3', '4.00', '-1.00', 'W', '1', NULL, NULL, 3, NULL, '2018-09-19 18:16:47', '2018-09-19 18:18:40'),
(2546, 29, 9, 8, 852, 7, '2,6,1,5,4,3', '2018-09-19 18:18:40', '1', '1', '0', '2', NULL, NULL, NULL, '3', '4.00', '-1.00', 'W', '1', NULL, NULL, 6, NULL, '2018-09-19 18:16:47', '2018-09-19 18:18:46'),
(2547, 29, 9, 8, 842, 8, '3,1,6,4,5,2', '2018-09-19 18:18:46', '1', '1', '0', '1', NULL, NULL, NULL, '3', '4.00', '-1.00', 'W', '1', NULL, NULL, 3, NULL, '2018-09-19 18:16:47', '2018-09-19 18:18:49'),
(2548, 29, 9, 8, 839, 9, '3,5,4,6,1,2', '2018-09-19 18:18:49', '1', '1', '0', '2', NULL, NULL, NULL, '1', '4.00', '-1.00', 'W', '1', NULL, NULL, 6, NULL, '2018-09-19 18:16:47', '2018-09-19 18:18:54'),
(2549, 29, 9, 8, 853, 10, '3,2,5,4,1,6', '2018-09-19 18:18:54', '1', '1', '0', '4', NULL, NULL, NULL, '1', '4.00', '-1.00', 'W', '1', NULL, NULL, 4, NULL, '2018-09-19 18:16:47', '2018-09-19 18:18:58'),
(2550, 29, 9, 8, 836, 11, '1,6,4,5,2,3', '2018-09-19 18:18:58', '1', '1', '0', '2', NULL, NULL, NULL, '3', '4.00', '-1.00', 'W', '1', NULL, NULL, 4, NULL, '2018-09-19 18:16:47', '2018-09-19 18:19:02'),
(2551, 29, 9, 8, 844, 12, '3,1,2,5,6,4', '2018-09-19 18:19:02', '1', '1', '0', '3', NULL, NULL, NULL, '4', '4.00', '-1.00', 'W', '1', NULL, NULL, 2, NULL, '2018-09-19 18:16:47', '2018-09-19 18:19:04'),
(2552, 29, 9, 8, 840, 13, '3,6,2,5,1,4', '2018-09-19 18:19:04', '1', '1', '0', '3', NULL, NULL, NULL, '2', '4.00', '-1.00', 'W', '1', NULL, NULL, 3, NULL, '2018-09-19 18:16:47', '2018-09-19 18:19:07'),
(2553, 29, 9, 8, 854, 14, '6,3,5,1,4,2', '2018-09-19 18:19:18', '1', '1', '0', '3', NULL, NULL, NULL, '4', '4.00', '-1.00', 'W', '1', NULL, NULL, 9, NULL, '2018-09-19 18:16:47', '2018-09-19 18:19:22'),
(2554, 29, 9, 8, 857, 15, '4,5,6,1,2,3', '2018-09-19 18:19:22', '1', '1', '0', '4', NULL, NULL, NULL, '3', '4.00', '-1.00', 'W', '1', NULL, NULL, 16, NULL, '2018-09-19 18:16:47', '2018-09-19 18:19:35'),
(2555, 29, 9, 8, 843, 16, '3,2,6,5,4,1', '2018-09-19 18:19:35', '1', '1', '0', '1', NULL, NULL, NULL, '1', '4.00', '4.00', 'R', '1', NULL, NULL, 14, NULL, '2018-09-19 18:16:47', '2018-09-19 18:19:46'),
(2556, 29, 9, 8, 856, 17, '3,6,1,5,2,4', '2018-09-19 18:19:46', '1', '1', '0', '1', NULL, NULL, NULL, '1', '4.00', '4.00', 'R', '1', NULL, NULL, 11, NULL, '2018-09-19 18:16:47', '2018-09-19 18:19:57'),
(2557, 29, 9, 8, 835, 18, '6,5,1,3,4,2', '2018-09-19 18:19:57', '1', '1', '0', '3', NULL, NULL, NULL, '1', '4.00', '-1.00', 'W', '1', NULL, NULL, 9, NULL, '2018-09-19 18:16:47', '2018-09-19 18:20:06'),
(2558, 29, 9, 8, 849, 19, '5,3,6,2,4,1', '2018-09-19 18:20:06', '1', '1', '0', '2', NULL, NULL, NULL, '2', '4.00', '4.00', 'R', '1', NULL, NULL, 24, NULL, '2018-09-19 18:16:47', '2018-09-19 18:20:30'),
(2559, 29, 9, 8, 841, 20, '6,1,5,4,2,3', '2018-09-19 18:20:30', '1', '1', '0', '2', NULL, NULL, NULL, '1', '4.00', '-1.00', 'W', '1', NULL, NULL, 3, NULL, '2018-09-19 18:16:47', '2018-09-19 18:20:33'),
(2560, 29, 9, 8, 859, 21, '4,2,5,3,1,6', '2018-09-19 18:20:33', '1', '1', '0', '3', NULL, NULL, NULL, '3', '4.00', '4.00', 'R', '1', NULL, NULL, 3, NULL, '2018-09-19 18:16:47', '2018-09-19 18:20:36'),
(2561, 29, 9, 8, 834, 22, '5,4,1,6,2,3', '2018-09-19 18:20:41', '1', '1', '0', '4', NULL, NULL, NULL, '4', '4.00', '4.00', 'R', '1', NULL, NULL, 6, NULL, '2018-09-19 18:16:47', '2018-09-19 18:20:45'),
(2562, 29, 9, 8, 848, 23, '1,2,5,3,6,4', '2018-09-19 18:20:49', '1', '1', '0', '2', NULL, NULL, NULL, '1', '4.00', '-1.00', 'W', '1', NULL, NULL, 9, NULL, '2018-09-19 18:16:47', '2018-09-19 18:20:51'),
(2563, 29, 9, 8, 847, 24, '4,1,6,2,5,3', '2018-09-19 18:20:51', '1', '1', '0', '3', NULL, NULL, NULL, '3', '4.00', '4.00', 'R', '1', NULL, NULL, 4, NULL, '2018-09-19 18:16:47', '2018-09-19 18:20:55'),
(2564, 29, 9, 8, 837, 25, '2,1,3,4,6,5', '2018-09-19 18:20:55', '1', '1', '0', '1', NULL, NULL, NULL, '3', '4.00', '-1.00', 'W', '1', NULL, NULL, 4, NULL, '2018-09-19 18:16:47', '2018-09-19 18:20:59'),
(2565, 29, 9, 8, 846, 26, '4,1,5,2,3,6', '2018-09-19 18:20:59', '1', '1', '0', '2', NULL, NULL, NULL, '1', '4.00', '-1.00', 'W', '1', NULL, NULL, 38, NULL, '2018-09-19 18:16:47', '2018-09-19 18:21:37'),
(2566, 30, 9, 17, 846, 1, '2,4,5,3,6,1', '2018-09-19 18:42:36', '1', '1', '0', '2', NULL, NULL, NULL, '1', '4.00', '-1.00', 'W', '1', NULL, NULL, 81, NULL, '2018-09-19 18:42:33', '2018-09-19 18:43:54'),
(2567, 30, 9, 17, 857, 2, '3,6,5,2,1,4', '2018-09-19 18:43:54', '1', '1', '0', '2', NULL, NULL, NULL, '3', '4.00', '-1.00', 'W', '1', NULL, NULL, 6, NULL, '2018-09-19 18:42:33', '2018-09-19 18:43:57'),
(2568, 30, 9, 17, 834, 3, '3,5,1,6,2,4', '2018-09-19 18:42:42', '1', '1', '0', '1', NULL, NULL, NULL, '4', '4.00', '-1.00', 'W', '1', NULL, NULL, 2, NULL, '2018-09-19 18:42:33', '2018-09-19 18:42:44'),
(2569, 30, 9, 17, 842, 4, '4,1,6,3,2,5', '2018-09-19 18:42:44', '1', '1', '0', '1', NULL, NULL, NULL, '3', '4.00', '-1.00', 'W', '1', NULL, NULL, 3, NULL, '2018-09-19 18:42:33', '2018-09-19 18:42:47'),
(2570, 30, 9, 17, 856, 5, '1,3,2,4,5,6', '2018-09-19 18:42:47', '1', '1', '0', '3', NULL, NULL, NULL, '1', '4.00', '-1.00', 'W', '1', NULL, NULL, 2, NULL, '2018-09-19 18:42:33', '2018-09-19 18:42:49'),
(2571, 30, 9, 17, 844, 6, '6,1,4,3,5,2', '2018-09-19 18:42:49', '1', '1', '0', '4', NULL, NULL, NULL, '4', '4.00', '4.00', 'R', '1', NULL, NULL, 4, NULL, '2018-09-19 18:42:33', '2018-09-19 18:42:53'),
(2572, 30, 9, 17, 841, 7, '2,1,4,3,5,6', '2018-09-19 18:42:53', '1', '1', '0', '1', NULL, NULL, NULL, '1', '4.00', '4.00', 'R', '1', NULL, NULL, 3, NULL, '2018-09-19 18:42:33', '2018-09-19 18:42:56'),
(2573, 30, 9, 17, 837, 8, '5,3,6,1,2,4', '2018-09-19 18:42:56', '1', '1', '0', '1', NULL, NULL, NULL, '3', '4.00', '-1.00', 'W', '1', NULL, NULL, 3, NULL, '2018-09-19 18:42:33', '2018-09-19 18:42:59'),
(2574, 30, 9, 17, 839, 9, '1,2,4,5,3,6', '2018-09-19 18:42:59', '1', '1', '0', '2', NULL, NULL, NULL, '1', '4.00', '-1.00', 'W', '1', NULL, NULL, 2, NULL, '2018-09-19 18:42:33', '2018-09-19 18:43:01'),
(2575, 30, 9, 17, 850, 10, '4,6,5,1,3,2', '2018-09-19 18:43:01', '1', '1', '0', '3', NULL, NULL, NULL, '2', '4.00', '-1.00', 'W', '1', NULL, NULL, 3, NULL, '2018-09-19 18:42:33', '2018-09-19 18:43:04'),
(2576, 30, 9, 17, 851, 11, '6,3,1,5,4,2', '2018-09-19 18:43:04', '1', '1', '0', '1', NULL, NULL, NULL, '1', '4.00', '4.00', 'R', '1', NULL, NULL, 3, NULL, '2018-09-19 18:42:33', '2018-09-19 18:43:07'),
(2577, 30, 9, 17, 859, 12, '2,5,1,6,3,4', '2018-09-19 18:43:07', '1', '1', '0', '1', NULL, NULL, NULL, '3', '4.00', '-1.00', 'W', '1', NULL, NULL, 3, NULL, '2018-09-19 18:42:33', '2018-09-19 18:43:10'),
(2578, 30, 9, 17, 843, 13, '1,4,3,5,6,2', '2018-09-19 18:43:10', '1', '1', '0', '1', NULL, NULL, NULL, '1', '4.00', '4.00', 'R', '1', NULL, NULL, 3, NULL, '2018-09-19 18:42:33', '2018-09-19 18:43:13'),
(2579, 30, 9, 17, 840, 14, '5,4,2,1,6,3', '2018-09-19 18:43:13', '1', '1', '0', '2', NULL, NULL, NULL, '2', '4.00', '4.00', 'R', '1', NULL, NULL, 3, NULL, '2018-09-19 18:42:33', '2018-09-19 18:43:16'),
(2580, 30, 9, 17, 852, 15, '2,5,1,6,3,4', '2018-09-19 18:43:16', '1', '1', '0', '3', NULL, NULL, NULL, '3', '4.00', '4.00', 'R', '1', NULL, NULL, 3, NULL, '2018-09-19 18:42:33', '2018-09-19 18:43:19'),
(2581, 30, 9, 17, 849, 16, '2,1,4,6,3,5', '2018-09-19 18:43:19', '1', '1', '0', '4', NULL, NULL, NULL, '2', '4.00', '-1.00', 'W', '1', NULL, NULL, 3, NULL, '2018-09-19 18:42:33', '2018-09-19 18:43:22'),
(2582, 30, 9, 17, 858, 17, '3,6,2,5,1,4', '2018-09-19 18:43:22', '1', '1', '0', '2', NULL, NULL, NULL, '3', '4.00', '-1.00', 'W', '1', NULL, NULL, 2, NULL, '2018-09-19 18:42:33', '2018-09-19 18:43:24'),
(2583, 30, 9, 17, 836, 18, '2,5,4,3,6,1', '2018-09-19 18:43:24', '1', '1', '0', '4', NULL, NULL, NULL, '3', '4.00', '-1.00', 'W', '1', NULL, NULL, 4, NULL, '2018-09-19 18:42:33', '2018-09-19 18:43:28'),
(2584, 30, 9, 17, 847, 19, '5,4,6,3,2,1', '2018-09-19 18:43:28', '1', '1', '0', '3', NULL, NULL, NULL, '3', '4.00', '4.00', 'R', '1', NULL, NULL, 3, NULL, '2018-09-19 18:42:33', '2018-09-19 18:43:31'),
(2585, 30, 9, 17, 838, 20, '6,1,5,2,4,3', '2018-09-19 18:43:31', '1', '1', '0', '2', NULL, NULL, NULL, '1', '4.00', '-1.00', 'W', '1', NULL, NULL, 2, NULL, '2018-09-19 18:42:33', '2018-09-19 18:43:33'),
(2586, 30, 9, 17, 835, 21, '2,5,4,3,1,6', '2018-09-19 18:43:33', '1', '1', '0', '4', NULL, NULL, NULL, '1', '4.00', '-1.00', 'W', '1', NULL, NULL, 3, NULL, '2018-09-19 18:42:33', '2018-09-19 18:43:36'),
(2587, 30, 9, 17, 845, 22, '6,1,2,4,3,5', '2018-09-19 18:43:36', '1', '1', '0', '2', NULL, NULL, NULL, '3', '4.00', '-1.00', 'W', '1', NULL, NULL, 2, NULL, '2018-09-19 18:42:33', '2018-09-19 18:43:38'),
(2588, 30, 9, 17, 853, 23, '3,4,5,6,1,2', '2018-09-19 18:43:38', '1', '1', '0', '4', NULL, NULL, NULL, '1', '4.00', '-1.00', 'W', '1', NULL, NULL, 3, NULL, '2018-09-19 18:42:33', '2018-09-19 18:43:41'),
(2589, 30, 9, 17, 855, 24, '4,1,6,3,2,5', '2018-09-19 18:43:41', '1', '1', '0', '1', NULL, NULL, NULL, '4', '4.00', '-1.00', 'W', '1', NULL, NULL, 2, NULL, '2018-09-19 18:42:33', '2018-09-19 18:43:43'),
(2590, 30, 9, 17, 848, 25, '6,4,2,5,3,1', '2018-09-19 18:43:43', '1', '1', '0', '2', NULL, NULL, NULL, '1', '4.00', '-1.00', 'W', '1', NULL, NULL, 3, NULL, '2018-09-19 18:42:33', '2018-09-19 18:43:46'),
(2591, 30, 9, 17, 854, 26, '3,6,5,2,1,4', '2018-09-19 18:43:46', '1', '1', '0', '2', NULL, NULL, NULL, '4', '4.00', '-1.00', 'W', '1', NULL, NULL, NULL, NULL, '2018-09-19 18:42:33', '2018-09-19 18:43:49');

-- --------------------------------------------------------

--
-- Table structure for table `exam_warns`
--

CREATE TABLE `exam_warns` (
  `id` int(11) NOT NULL,
  `exam_result_id` int(11) NOT NULL,
  `created` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

CREATE TABLE `groups` (
  `id` int(11) NOT NULL,
  `group_name` varchar(255) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `groups`
--

INSERT INTO `groups` (`id`, `group_name`, `created`, `modified`) VALUES
(1, 'IIT', '2015-11-09 18:19:44', '2016-03-07 10:02:45'),
(2, 'CPMT', '2015-11-09 18:19:47', '2016-03-07 10:02:45'),
(3, 'Batch 2018 ', '2018-08-30 10:26:40', '2018-08-30 10:26:40'),
(4, 'Hiniq', '2018-09-06 11:50:57', '2018-09-06 11:50:57');

-- --------------------------------------------------------

--
-- Table structure for table `helpcontents`
--

CREATE TABLE `helpcontents` (
  `id` int(11) NOT NULL,
  `link_title` varchar(255) DEFAULT NULL,
  `link_desc` longtext,
  `status` varchar(8) DEFAULT 'Active',
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `helpcontents`
--

INSERT INTO `helpcontents` (`id`, `link_title`, `link_desc`, `status`, `created`, `modified`) VALUES
(1, 'Help ', '<p><span style=\"font-family: \'times new roman\', times; font-size: 14pt;\">Please refer the USER MANUAL</span></p>', 'Active', '2014-12-19 14:45:19', '2018-09-15 12:03:47'),
(2, 'Help2', '<p>Aenean pretium nunc lectus, quis viverra metus accumsan vestibulum. Mauris vulputate urna nec leo viverra, at dictum nulla suscipit. Sed id pretium lectus, vitae egestas turpis. Quisque metus tortor, tristique in diam sit amet, suscipit facilisis augue. Nunc vel leo vitae ligula auctor tristique ut nec tortor. Aliquam nibh ligula, tristique non pharetra in, congue ac sem. Donec odio nulla, lobortis vitae risus in, porttitor pretium mauris. Nullam fringilla tortor eu quam luctus, eget bibendum lectus eleifend. Nam facilisis libero tempor rhoncus consequat.</p>', 'Suspend', '2014-12-19 14:45:43', '2018-09-15 12:02:26');

-- --------------------------------------------------------

--
-- Table structure for table `homesections`
--

CREATE TABLE `homesections` (
  `id` int(11) NOT NULL,
  `section` varchar(30) CHARACTER SET utf8 NOT NULL,
  `sections_heading` varchar(300) CHARACTER SET utf8 NOT NULL,
  `sections_content` longtext CHARACTER SET utf8 NOT NULL,
  `sections_img` varchar(300) CHARACTER SET utf8 NOT NULL,
  `content` varchar(5) CHARACTER SET utf8 NOT NULL DEFAULT 'Yes',
  `image` varchar(5) CHARACTER SET utf8 NOT NULL DEFAULT 'Yes',
  `published` varchar(10) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `homesections`
--

INSERT INTO `homesections` (`id`, `section`, `sections_heading`, `sections_content`, `sections_img`, `content`, `image`, `published`) VALUES
(1, 'Header Top image', '', '', '27754bc05a2075e549bcd5d900d8be7e.jpg', '1', '1', 'Published'),
(2, 'Packages', 'About easyNEET', '<br/><p style=\"font-family: Verdana; text-align:justify;\">easyNEET provides important questions regarding Biology, Physics, Chemistry  and many more. easyNEET useful for all the aspirants who is preparing for NEET Exam.easyNEET provide lots of online test along with solution and report (Graphical,Statistical) page. \r\nFree test is started to provide all the previous year solved questions to the aspirants. The main difference between free online test and other websites is quality of the questions, easy navigations to the links, many number of questions are available, time spent on each questions, in detailed report page and many more. \r\nEasyNEET helps students who will be preparing for competitive exams, or frequently facing problems with the exam methodology, time management and the way of solving out the answers. Whoever is attending these exams can get a better experience to face the original competitive exams.</p>', '8a9d9f46204362be9a4f7ef1fe30e017.PNG', '1', '1', 'Published'),
(3, 'Easy Use', 'Go with easyNEET', '<p style=\"text-align: justify;\"><strong>Time Management</strong></p>\r\n<p style=\"text-align: justify;\">Using the easyNEET, institutes can get rid of lengthy formalities that include question paper creation, candidate registration for an exam, evaluating the answer sheets and declaring/publishing the results with reports.</p>\r\n<p style=\"text-align: justify;\"><strong>Efficiency</strong></p>\r\n<p style=\"text-align: justify;\">easyNEET controls the whole exam process and also simplifies every step from conducting exams to the evaluation process. It brings efficiency in the exam process and makes it more competitive. The probability of errors in the evaluation and results is very less.</p>\r\n<p style=\"text-align: justify;\"><strong>Comfort</strong></p>\r\n<p style=\"text-align: justify;\">easyNEET helps in creating multiple set question papers for every subject with very less effort and time. These online tests make students more comfortable and boost their confidence this typically helps them in performing well.</p>\r\n<p style=\"text-align: justify;\">&nbsp;</p>', '73170d4742f5601d1150789d4f14ec1f.jpg', '1', '1', 'Published'),
(4, 'Benifits', 'Easy Online examination System ', '<h4 style=\"text-align: justify;\">It saves paper</h4>\r\n<p style=\"text-align: justify;\">You never have to print an exam for your students and hand them out. Saves paper. Saves trees. Everybody happy.&nbsp;</p>\r\n<h4 style=\"text-align: justify;\">It saves time</h4>\r\n<p style=\"text-align: justify;\">You can setup an exam in such a way that it will auto-grade itself. If you only use multiple choice questions you never have to check an exam again.&nbsp;The online exam system will take care of that hassle. Completly automated.&nbsp;</p>\r\n<h4 style=\"text-align: justify;\">It saves more time</h4>\r\n<p style=\"text-align: justify;\">The distribution of the exam doens\'t take you any time. Just upload the email addressess of your students and send them an invite. And after the exam they get their result instantly.&nbsp;</p>\r\n<h4 style=\"text-align: justify;\">It saves the student money</h4>\r\n<p style=\"text-align: justify;\">You don\'t need&nbsp;to buy any paper. Sending an email is free. On top of that you save on the logistics: your students don\'t have to assemble in classroom to take the exam. They can do it within a given time frame from their own device. You don\'t have to rent a classroom. You don\'t have to hire someone to check the students taking the exam.&nbsp;</p>\r\n<h4 style=\"text-align: justify;\">It\'s more secure</h4>\r\n<p style=\"text-align: justify;\">You can make a big question bank with a lot of questions. Every student gets a random selection from that question bank. So it\'s of little use to share the questions among the exam takers to give them a head start.&nbsp;</p>', 'f9136f88dae5585b7b49242c690bf5c9.jpg', '1', '1', 'Published'),
(5, 'Footer image', 'Start Your Exam Preparation Now!', 'PRACTICE, ANALYZE AND IMPROVE!', '05d7afb0b0781f10c7f3e3e27c665200.jpg', '1', '1', 'Published');

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `value1` varchar(100) DEFAULT NULL,
  `value2` varchar(100) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`id`, `name`, `value1`, `value2`, `created`, `modified`) VALUES
(1, 'English', 'True', 'False', '2017-03-29 16:36:55', '2017-03-29 16:36:55'),
(2, 'Hindi', 'सत्य', 'असत्य', '2017-03-29 12:07:06', '2017-03-29 12:07:06'),
(3, 'தமிழ்', 'சரி', 'தவறான', '2018-08-28 15:38:29', '2018-08-28 15:38:29');

-- --------------------------------------------------------

--
-- Table structure for table `mails`
--

CREATE TABLE `mails` (
  `id` int(11) NOT NULL,
  `to_email` varchar(100) DEFAULT NULL,
  `from_email` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `message` longtext,
  `date` datetime DEFAULT NULL,
  `status` varchar(5) DEFAULT 'Live',
  `type` varchar(10) DEFAULT 'Unread',
  `mail_type` varchar(4) DEFAULT 'To'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mails`
--

INSERT INTO `mails` (`id`, `to_email`, `from_email`, `email`, `subject`, `message`, `date`, `status`, `type`, `mail_type`) VALUES
(1, 'student@student.com', 'Administrator', 'student@student.com', 'Demo Subject', 'Demo Content', '2015-02-24 18:33:49', 'Live', 'Unread', 'To'),
(2, 'student@student.com', 'Administrator', 'Administrator', 'Demo Subject', 'Demo Content', '2015-02-24 18:33:49', 'Live', 'Read', 'From'),
(3, 'Administrator', 'student@student.com', 'Administrator', 'Demo Subject', 'Demo Content User', '2015-02-24 18:34:49', 'Live', 'Read', 'To'),
(4, 'Administrator', 'student@student.com', 'student@student.com', 'Demo Subject', 'Demo Content User', '2015-02-24 18:34:49', 'Live', 'Read', 'From'),
(5, 'Administrator', 'mail2pravi98@gmail.com', 'Administrator', 'mark test', 'Dear sir \r\n       Please provide more questions in Chemical Kinetics ', '2018-09-15 17:47:55', 'Live', 'Read', 'To'),
(6, 'Administrator', 'mail2pravi98@gmail.com', 'mail2pravi98@gmail.com', 'mark test', 'Dear sir \r\n       Please provide more questions in Chemical Kinetics ', '2018-09-15 17:47:55', 'Live', 'Read', 'From'),
(7, 'mail2pravi98@gmail.com', 'Administrator', 'mail2pravi98@gmail.com', 'mark test', 'Thanks for your information. Shortly it will be uploaded', '2018-09-15 17:49:03', 'Live', 'Read', 'To'),
(8, 'mail2pravi98@gmail.com', 'Administrator', 'Administrator', 'mark test', 'Thanks for your information. Shortly it will be uploaded', '2018-09-15 17:49:03', 'Live', 'Read', 'From');

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` int(11) NOT NULL,
  `news_title` varchar(255) DEFAULT NULL,
  `news_desc` longtext,
  `page_url` varchar(255) DEFAULT NULL,
  `meta_title` text,
  `meta_keyword` text,
  `meta_content` text,
  `status` varchar(7) DEFAULT 'Active',
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `news_title`, `news_desc`, `page_url`, `meta_title`, `meta_keyword`, `meta_content`, `status`, `created`, `modified`) VALUES
(8, 'Physical World and Measurement', '<p style=\"text-align: justify;\"><span style=\"font-family: \'times new roman\', times; font-size: 14pt;\">Humans have always been curious about the world around them. The night sky with its bright celestial objects has fascinated humans since time immemorial. The regular repetitions of the day and night, the annual cycle of seasons, the eclipses, the tides, the volcanoes, the rainbow have always been a source of wonder. The world has an astonishing variety of materials and a bewildering diversity of life and behaviour. The inquiring and imaginative human mind has responded to the wonder and awe of nature in different ways. One kind of response from the earliest times has been to observe the physical environment carefully, look for any meaningful patterns and relations in natural phenomena, and build and use new tools to interact with nature. This human endeavour led, in course of time, to modern science and technology. The word Science originates from the Latin verb Scientia meaning &lsquo;to know&rsquo;. The Sanskrit word Vijnan and the Arabic word Ilm convey similar meaning, namely &lsquo;knowledge&rsquo;. Science, in a broad sense, is as old as human species. The early civilisations of Egypt, India, China, Greece, Mesopotamia and many others made vital contributions to its progress. From the sixteenth century onwards, great strides were made in science in Europe. By the middle of the twentieth century, science had become a truly international enterprise, with many cultures and countries contributing to its rapid growth. What is Science and what is the so-called Scientific Method? Science is a systematic attempt to understand natural phenomena in as much detail and depth as possible, and use the knowledge so gained to predict, modify and control phenomena. Science is exploring, experimenting and predicting from what we see around us. The curiosity to learn about the world, unravelling the secrets of nature is the first step towards the discovery of science. The scientific method involves several interconnected steps : Systematic observations, controlled experiments, qualitative and CHAPTER ONE PHYSICAL WORLD 1.1 What is physics ? 1.2 Scope and excitement of physics 1.3 Physics, technology and society 1.4 Fundamental forces in nature 1.5 Nature of physical laws Summary Exercises 2 PHYSICS quantitative reasoning, mathematical modelling, prediction and verification or falsification of theories. Speculation and conjecture also have a place in science; but ultimately, a scientific theory, to be acceptable, must be verified by relevant observations or experiments. There is much philosophical debate about the nature and method of science that we need not discuss here. The interplay of theory and observation (or experiment) is basic to the progress of science. Science is ever dynamic. There is no &lsquo;final&rsquo; theory in science and no unquestioned authority among scientists. As observations improve in detail and precision or experiments yield new results, theories must account for them, if necessary, by introducing modifications. Sometimes the modifications may not be drastic and may lie within the framework of existing theory. For example, when Johannes Kepler (1571-1630) examined the extensive data on planetary motion collected by Tycho Brahe (1546-1601), the planetary circular orbits in heliocentric theory (sun at the centre of the solar system) imagined by Nicolas Copernicus (1473&ndash;1543) had to be replaced by elliptical orbits to fit the data better. Occasionally, however, the existing theory is simply unable to explain new observations. This causes a major upheaval in science. In the beginning of the twentieth century, it was realised that Newtonian mechanics, till then a very successful theory, could not explain some of the most basic features of atomic phenomena. Similarly, the then accepted wave picture of light failed to explain the photoelectric effect properly. This led to the development of a radically new theory (Quantum Mechanics) to deal with atomic and molecular phenomena. Just as a new experiment may suggest an alternative theoretical model, a theoretical advance may suggest what to look for in some experiments. The result of experiment of scattering of alpha particles by gold foil, in 1911 by Ernest Rutherford (1871&ndash;1937) established the nuclear model of the atom, which then became the basis of the quantum theory of hydrogen atom given in 1913 by Niels Bohr (1885&ndash;1962). On the other hand, the concept of antiparticle was first introduced theoretically by Paul Dirac (1902&ndash;1984) in 1930 and confirmed two years later by the experimental discovery of positron (antielectron) by Carl Anderson. Physics is a basic discipline in the category of Natural Sciences, which also includes other disciplines like Chemistry and Biology. The word Physics comes from a Greek word meaning nature. Its Sanskrit equivalent is Bhautiki that is used to refer to the study of the physical world. A precise definition of this discipline is neither possible nor necessary. We can broadly describe physics as a study of the basic laws of nature and their manifestation in different natural phenomena. The scope of physics is described briefly in the next section. Here we remark on two principal thrusts in physics : unification and reduction. In Physics, we attempt to explain diverse physical phenomena in terms of a few concepts and laws. The effort is to see the physical world as manifestation of some universal laws in different domains and conditions. For example, the same law of gravitation (given by Newton) describes the fall of an apple to the ground, the motion of the moon around the earth and the motion of planets around the sun. Similarly, the basic laws of electromagnetism (Maxwell&rsquo;s equations) govern all electric and magnetic phenomena. The attempts to unify fundamental forces of nature (section 1.4) reflect this same quest for unification. A related effort is to derive the properties of a bigger, more complex, system from the properties and interactions of its constituent simpler parts. This approach is called reductionism and is at the heart of physics. For example, the subject of thermodynamics, developed in the nineteenth century, deals with bulk systems in terms of macroscopic quantities such as temperature, internal energy, entropy, etc. Subsequently, the subjects of kinetic theory and statistical mechanics interpreted these quantities in terms of the properties of the molecular constituents of the bulk system. In particular, the temperature was seen to be related to the average kinetic energy of molecules of the system</span></p>', 'Physical-World-and-Measurement', '<p>Physical World and Measurement</p>', '', '', 'Active', '2018-09-14 13:22:42', '2018-09-14 14:48:28'),
(9, 'Behaviour of Perfect Gas and Kinetic Theory', '<p><span style=\"font-family: \'times new roman\', times; font-size: 14pt;\"><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"/img/Uploads/103416-004-EDD8271C.jpg\" alt=\"\" width=\"308\" height=\"400\" />Perfect gas, also called ideal gas, a gas that conforms, in physical behaviour, to a particular, idealized relation between pressure, volume, and temperature called the general gas law. This law is a generalization containing both Boyle&rsquo;s law and Charles&rsquo;s law as special cases and states that for a specified quantity of gas, the product of the volume v and pressure p is proportional to the absolute temperature t; i.e., in equation form, pv = kt, in which k is a constant. Such a relation for a substance is called its equation of state and is sufficient to describe its gross behaviour.</span></p>\r\n<p>&nbsp;</p>\r\n<p><span style=\"font-family: \'times new roman\', times; font-size: 18pt;\"><strong>Kinetic Theory Of Gases</strong></span></p>\r\n<p><span style=\"font-family: \'times new roman\', times;\"><span style=\"font-size: 14pt;\">The aim of kinetic theory is to account for the properties of gases in terms of the forces between the molecules, assuming that their motions are described by the laws of mechanics (usually classical Newtonian mechanics, although quantum mechanics is needed in some cases). The present discussion focuses on dilute ideal gases, in which molecular collisions of at most two bodies are of primary importance. Only the simplest theories are treated here in order to avoid obscuring the fundamental physics with complex mathematics</span></span></p>', 'Behaviour-of-Perfect-Gas-and-Kinetic-Theory', '<p>Behaviour of Perfect Gas and Kinetic Theory</p>', '', '', 'Active', '2018-09-14 13:22:58', '2018-09-15 10:50:25'),
(10, 'Current Electricity', '<p style=\"text-align: center;\"><span style=\"font-family: \'times new roman\', times; font-size: 14pt;\"><img src=\"/img/Uploads/download.png\" alt=\"\" width=\"608\" height=\"234\" /></span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: \'times new roman\', times; font-size: 14pt;\">An electric current is a flow of electric charge. In electric circuits this charge is often carried by moving electrons in a wire. It can also be carried by ions in an electrolyte, or by both ions and electrons such as in an ionised gas (plasma). </span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: \'times new roman\', times; font-size: 14pt;\">The SI unit for measuring an electric current is the ampere, which is the flow of electric charge across a surface at the rate of one coulomb per second. Electric current is measured using a device called an ammeter. Electric currents cause Joule heating, which creates light in incandescent light bulbs. They also create magnetic fields, which are used in motors, inductors and generators. </span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: \'times new roman\', times; font-size: 14pt;\">The moving charged particles in an electric current are called charge carriers. In metals, one or more electrons from each atom are loosely bound to the atom, and can move freely about within the metal. These conduction electrons are the charge carriers in metal conductors.</span></p>\r\n<p style=\"text-align: justify;\">&nbsp;</p>\r\n<p><span style=\"font-size: 18pt; font-family: \'times new roman\', times;\"><strong>Ohm\'s law</strong></span></p>\r\n<p style=\"text-align: justify;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span style=\"font-family: \'times new roman\', times; font-size: 14pt;\">Ohm\'s law states that the current through a conductor between two points is directly proportional to the potential difference across the two points. Introducing the constant of proportionality, the resistance one arrives at the usual mathematical equation that describes this relationship.</span></p>', 'Current-Electricity', '<p>Current Electricity</p>', '', '', 'Active', '2018-09-14 13:23:12', '2018-09-15 10:49:53'),
(11, 'Biotechnology and its Applications', '<p style=\"text-align: justify;\"><span style=\"font-family: \'times new roman\', times; font-size: 14pt;\"><img src=\"/img/Uploads/download.jpg\" alt=\"\" width=\"593\" height=\"256\" /></span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: \'times new roman\', times; font-size: 14pt;\">Biotechnology is the broad area of biology involving living systems and organisms to develop or make products, or \"any technological application that uses biological systems, living organisms, or derivatives thereof, to make or modify products or processes for specific use\" (UN Convention on Biological Diversity, Art. 2). Depending on the tools and applications, it often overlaps with the (related) fields of molecular biology, bio-engineering, biomedical engineering, biomanufacturing, molecular engineering, etc.</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: \'times new roman\', times; font-size: 14pt;\">&nbsp;</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: \'times new roman\', times; font-size: 14pt;\">For thousands of years, humankind has used biotechnology in agriculture, food production, and medicine.The term is largely believed to have been coined in 1919 by Hungarian engineer K&aacute;roly Ereky. In the late 20th and early 21st centuries, biotechnology has expanded to include new and diverse sciences such as genomics, recombinant gene techniques, applied immunology, and development of pharmaceutical therapies and diagnostic tests</span></p>\r\n<p style=\"text-align: justify;\"><strong><span style=\"font-family: \'times new roman\', times; font-size: 18pt;\">Definitions</span></strong></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: \'times new roman\', times; font-size: 14pt;\">The wide concept of \"biotech\" or \"biotechnology\" encompasses a wide range of procedures for modifying living organisms according to human purposes, going back to domestication of animals, cultivation of the plants, and \"improvements\" to these through breeding programs that employ artificial selection and hybridization. Modern usage also includes genetic engineering as well as cell and tissue culture technologies. The American Chemical Society defines biotechnology as the application of biological organisms, systems, or processes by various industries to learning about the science of life and the improvement of the value of materials and organisms such as pharmaceuticals, crops, and livestock.[3] Per the European Federation of Biotechnology, biotechnology is the integration of natural science and organisms, cells, parts thereof, and molecular analogues for products and services.[4] Biotechnology is based on the basic biological sciences (e.g. molecular biology, biochemistry, cell biology, embryology, genetics, microbiology) and conversely provides methods to support and perform basic research in biology.</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: \'times new roman\', times; font-size: 14pt;\">&nbsp;</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: \'times new roman\', times; font-size: 14pt;\">Biotechnology is the research and development in the laboratory using bioinformatics for exploration, extraction, exploitation and production from any living organisms and any source of biomass by means of biochemical engineering where high value-added products could be planned (reproduced by biosynthesis, for example), forecasted, formulated, developed, manufactured, and marketed for the purpose of sustainable operations (for the return from bottomless initial investment on R &amp; D) and gaining durable patents rights (for exclusives rights for sales, and prior to this to receive national and international approval from the results on animal experiment and human experiment, especially on the pharmaceutical branch of biotechnology to prevent any undetected side-effects or safety concerns by using the products).</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: \'times new roman\', times; font-size: 14pt;\">&nbsp;</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: \'times new roman\', times; font-size: 14pt;\">By contrast, bioengineering is generally thought of as a related field that more heavily emphasizes higher systems approaches (not necessarily the altering or using of biological materials directly) for interfacing with and utilizing living things. Bioengineering is the application of the principles of engineering and natural sciences to tissues, cells and molecules. This can be considered as the use of knowledge from working with and manipulating biology to achieve a result that can improve functions in plants and animals. Relatedly, biomedical engineering is an overlapping field that often draws upon and applies biotechnology (by various definitions), especially in certain sub-fields of biomedical or chemical engineering such as tissue engineering, biopharmaceutical engineering, and genetic engineering.</span></p>\r\n<p>%MCEPASTEBI<img src=\"/img/Uploads/download.jpg\" alt=\"\" width=\"301\" height=\"167\" />N%</p>', 'Biotechnology-and-its-Applications', '<p>Biotechnology and its Applications</p>', '', '', 'Active', '2018-09-14 13:23:30', '2018-09-14 14:08:01'),
(12, 'Cell Structure and Function	', '<p><img src=\"/img/Uploads/e847d42f49d14f22969b51d1f8d7262e.jpg\" alt=\"\" width=\"877\" height=\"402\" /></p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<div class=\"section-0\">\r\n<p style=\"text-align: justify;\"><span style=\"font-family: \'times new roman\', times; font-size: 14pt;\">Cells, generally speaking, are similar-to-identical units that make up a whole. Prison blocks and beehives, for example, are made up mostly of cells. As applied to biological systems, the term was likely coined by the 17th-century scientist Robert Hooke, inventor of the compound microscope and pioneer in a remarkable number of scientific endeavors. A cell, as described today, is the smallest unit of a living thing that retains the characteristics of life itself. In other words, individual cells not only contain genetic information, but they also use and transform energy, host chemical reactions, maintain equilibrium and so on. More colloquially, cells are typically and appropriately called \"the building blocks of life.\"</span></p>\r\n</div>\r\n<div class=\"inline-ad no-print\" style=\"text-align: justify;\"><span style=\"font-family: \'times new roman\', times; font-size: 14pt;\">&nbsp;</span></div>\r\n<div class=\"section-1\" style=\"text-align: justify;\">\r\n<p><span style=\"font-family: \'times new roman\', times; font-size: 14pt;\">The essential characteristics of a cell include a cell membrane to separate and protect the cell contents from the rest of the world; cytoplasm, or a liquid-like substance in the cell interior in which metabolic processes occur; and genetic material (deoxyribonucleic acid, or DNA). This essentially describes a prokaryotic, or bacterial, cell in its entirety. More complex organisms, however, called eukaryotes &ndash; including animals, plants and fungi &ndash; feature a variety of other cell structures as well, all of them evolved in accordance with the needs of highly specialized living things. These structures are called organelles. Organelles are to eukaryotic cells what your own organs (stomach, liver, lungs and so on) are to your body as a whole.</span></p>\r\n</div>\r\n<h2 style=\"text-align: justify;\"><span style=\"font-family: \'times new roman\', times; font-size: 14pt;\">Basic Cell Structure</span></h2>\r\n<div class=\"section-2\">\r\n<p style=\"text-align: justify;\"><span style=\"font-family: \'times new roman\', times; font-size: 14pt;\">Cells, structurally, are units of organization. They are formally classified on the basis of where they get their energy. Prokaryotes include two of the six taxonomic kingdoms, Archaebacteria and Monera; all of these species are single-celled and most are bacteria, and they date back an astonishing 3.5 billion years or so (about 80 percent of the estimated age of the Earth itself). Eukaryotes are a \"mere\" 1.5 billion years old and include Animalia, Plantae, Fungae and Protista. Most eukaryotes are multicellular, although some (e.g., yeast) are not.</span></p>\r\n<div class=\"section-3\">\r\n<p style=\"text-align: justify;\"><span style=\"font-family: \'times new roman\', times; font-size: 14pt;\">Prokaryotic cells, at an absolute minimum, feature an agglomeration of genetic material in the form of DNA inside an enclosure bounded by a cell membrane, also called a plasma membrane. Within this enclosure is, also, is cytoplasm, which in prokaryotes has the consistency of wet asphalt; in eukaryotes, it is much more fluid. In addition, many prokaryotes also have a cell wall outside the cell membrane to serve as a protective layer (as you\'ll see, the cell membrane serves a variety of functions). Notably, plant cells, which are eukaryotic, also include cell walls. But prokaryotic cells do not include organelles, and this is the primary structural distinction. Even if one chooses to view the distinction as a metabolic one, this is still linked to the respective structural properties.</span></p>\r\n</div>\r\n<div class=\"section-4\" style=\"text-align: justify;\">\r\n<p><span style=\"font-family: \'times new roman\', times; font-size: 14pt;\">Some prokaryotes have&nbsp;<em>flagella</em>, which are whip-like polypeptides used for propulsion. Some also have&nbsp;<em>pili</em>, which are hair-like projections used for adhesive purposes. Bacteria also come in multiple shapes: Cocci are round (like the meningococci, which can cause meningitis in humans), baccilli (rods, like the species that cause anthrax), and spirilla or spirochetes (helical bacteria, like those responsible for causing syphilis).</span></p>\r\n</div>\r\n<div class=\"section-5\">\r\n<p style=\"text-align: justify;\"><span style=\"font-family: \'times new roman\', times; font-size: 14pt;\">What about viruses? These are merely tiny bits of genetic material, which can be DNA or RNA (ribonucleic acid), surrounded by a protein coat. Viruses are unable to reproduce on their own, and must therefore must infect cells and \"hijack\" their reproductive apparatus in order to propagate copies of themselves. Antbiotics, as a result, target all manner of bacteria but are ineffective against viruses. Antiviral drugs exist, with newer and more effective ones being introduced all the time, but their mechanisms of action are completely different from those of antibiotics, which usually target either cell walls or metabolic enzymes particular to prokaryotic cells.</span></p>\r\n</div>\r\n</div>', 'Cell-Structure-and-Function	', '<p>Cell Structure and Function</p>', '', '', 'Active', '2018-09-14 13:23:47', '2018-09-14 14:01:44'),
(13, 'Diversity in Living World', '<p><span style=\"font-family: \'times new roman\', times; font-size: 14pt;\"><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"/img/Uploads/maxresdefault.jpg\" alt=\"\" width=\"960\" height=\"720\" /></span></p>\r\n<p style=\"text-align: justify;\">&nbsp;</p>\r\n<p style=\"text-align: justify;\">&nbsp;</p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: \'times new roman\', times; font-size: 14pt;\">If you look around you will see a large variety of living organisms, be it potted plants, insects, birds, your pets or other animals and plants. There are also several organisms that you cannot see with your naked eye but they are all around you. If you were to increase the area that you make observations in, the range and variety of organisms that you see would increase. Obviously, if you were to visit a dense forest, you would probably see a much greater number and kinds of living organisms in it. Each different kind of plant, animal or organism that you see, represents a species. The number of species that are known and described range between 1.7-1.8 million. This refers to biodiversity or the number and types of organisms present on earth. We should remember here that as we explore new areas, and even old ones, new organisms are continuously being identified. As stated earlier, there are millions of plants and animals in the world; we know the plants and animals in our own area by their local names. These local names would vary from place to place, even within a country. Probably you would recognise the confusion that would be created if we did not find ways and means to talk to each other, to refer to organisms we are talking about. Hence, there is a need to standardise the naming of living organisms such that a particular organism is known by the same name all over the world. This process is called nomenclature. Obviously, nomenclature or naming is only possible when the organism is described correctly and we know to what organism the name is attached to. This is identification. In order to facilitate the study, number of scientists have established procedures to assign a scientific name to each known organism. This is acceptable to biologists all over the world. For plants, scientific names are based on agreed principles and criteria, which are provided in International Code for Botanical Nomenclature (ICBN). You may ask, how are animals named? Animal taxonomists have evolved International Code of Zoological Nomenclature (ICZN). The scientific names ensure that each organism has only one name. Description of any organism should enable the people (in any part of the world) to arrive at the same name. They also ensure that such a name has not been used for any other known organism. Biologists follow universally accepted principles to provide scientific names to known organisms. Each name has two components &ndash; the Generic name and the specific epithet. This system of providing a name with two components is called Binomial nomenclature. This naming system given by Carolus Linnaeus is being practised by biologists all over the world. This naming system using a two word format was found convenient. Let us take the example of mango to understand the way of THE LIVING WORLD 7 providing scientific names better. The scientific name of mango is written as Mangifera indica. Let us see how it is a binomial name. In this name Mangifera represents the genus while indica, is a particular species, or a specific epithet. Other universal rules of nomenclature are as follows: 1. Biological names are generally in Latin and written in italics. They are Latinised or derived from Latin irrespective of their origin. 2. The first word in a biological name represents the genus while the second component denotes the specific epithet. 3. Both the words in a biological name, when handwritten, are separately underlined, or printed in italics to indicate their Latin origin. 4. The first word denoting the genus starts with a capital letter while the specific epithet starts with a small letter. It can be illustrated with the example of Mangifera indica. Name of the author appears after the specific epithet, i.e., at the end of the biological name and is written in an abbreviated form, e.g., Mangifera indica Linn. It indicates that this species was first described by Linnaeus. Since it is nearly impossible to study all the living organisms, it is necessary to devise some means to make this possible. This process is classification. Classification is the process by which anything is grouped into convenient categories based on some easily observable characters. For example, we easily recognise groups such as plants or animals or dogs, cats or insects. The moment we use any of these terms, we associate certain characters with the organism in that group. What image do you see when you think of a dog ? Obviously, each one of us will see &lsquo;dogs&rsquo; and not &lsquo;cats&rsquo;. Now, if we were to think of &lsquo;Alsatians&rsquo; we know what we are talking about. Similarly, suppose we were to say &lsquo;mammals&rsquo;, you would, of course, think of animals with external ears and body hair. Likewise, in plants, if we try to talk of &lsquo;Wheat&rsquo;, the picture in each of our minds will be of wheat plants, not of rice or any other plant. Hence, all these - &lsquo;Dogs&rsquo;, &lsquo;Cats&rsquo;, &lsquo;Mammals&rsquo;, &lsquo;Wheat&rsquo;, &lsquo;Rice&rsquo;, &lsquo;Plants&rsquo;, &lsquo;Animals&rsquo;, etc., are convenient categories we use to study organisms. The scientific term for these categories is taxa. Here you must recognise that taxa can indicate categories at very different levels. &lsquo;Plants&rsquo; &ndash; also form a taxa. &lsquo;Wheat&rsquo; is also a taxa. Similarly, &lsquo;animals&rsquo;, &lsquo;mammals&rsquo;, &lsquo;dogs&rsquo; are all taxa &ndash; but you know that a dog is a mammal and mammals are animals. Therefore, &lsquo;animals&rsquo;, &lsquo;mammals&rsquo; and &lsquo;dogs&rsquo; represent taxa at different levels. Hence, based on characteristics, all living organisms can be classified into different taxa. This process of classification is taxonomy. External and internal structure, along with the structure of cell, development 2015-16(19/01/2015) 8 BIOLOGY process and ecological information of organisms are essential and form the basis of modern taxonomic studies. Hence, characterisation, identification, classification and nomenclature are the processes that are basic to taxonomy. Taxonomy is not something new. Human beings have always been interested in knowing more and more about the various kinds of organisms, particularly with reference to their own use. In early days, human beings needed to find sources for their basic needs of food, clothing and shelter. Hence, the earliest classifications were based on the &lsquo;uses&rsquo; of various organisms. Human beings were, since long, not only interested in knowing more about different kinds of organisms and their diversities, but also the relationships among them. This branch of study was referred to as systematics. The word systematics is derived from the Latin word &lsquo;systema&rsquo; which means systematic arrangement of organisms. Linnaeus used Systema Naturae as the title of his publication. The scope of systematics was later enlarged to include identification, nomenclature and classification. Systematics takes into account evolutionary relationships between organisms.</span></p>', 'Diversity-in-Living-World', '<p>Diversity in Living World</p>', '', '', 'Active', '2018-09-14 13:24:06', '2018-09-15 14:32:59'),
(14, 'Chemical Kinetics	', '<p>&nbsp;</p>\r\n<p><img src=\"/img/Uploads/chemical-kinetics-1.jpg\" alt=\"\" width=\"728\" height=\"546\" /></p>\r\n<p>&nbsp;</p>\r\n<p><span style=\"font-family: \'times new roman\', times; font-size: 14pt;\">Chemical kinetics is the study of chemical processes and&nbsp;<a href=\"https://www.thoughtco.com/definition-of-reaction-rate-605597\" data-component=\"link\" data-source=\"inlineLink\" data-type=\"internalLink\" data-ordinal=\"1\">rates of reactions</a>. This includes analysis of conditions that affect speed of a chemical reaction, understanding reaction mechanisms and transition states, and forming mathematical models to predict and describe a chemical reaction.</span></p>\r\n<p><span style=\"font-family: \'times new roman\', times; font-size: 14pt;\"><strong>Also Known As</strong></span></p>\r\n<p><span style=\"font-family: \'times new roman\', times; font-size: 14pt;\">Chemical kinetics may also be called reaction kinetics or simply \"kinetics\". The rate of a chemical reaction usually&nbsp;has units of sec<sup>-1</sup></span></p>\r\n<h3><span style=\"font-family: \'times new roman\', times; font-size: 14pt;\">Chemical Kinetics History</span></h3>\r\n<p><span style=\"font-family: \'times new roman\', times; font-size: 14pt;\">The field of chemical kinetics developed from the law of mass action, formulated in 1864 by Peter Waage and Cato Guldberg. The law of mass action states the speed of a chemical reaction is proportional to the amount of reactants.</span></p>\r\n<h3><span style=\"font-family: \'times new roman\', times; font-size: 14pt;\">Rate Laws and Rate Constants</span></h3>\r\n<p><span style=\"font-family: \'times new roman\', times; font-size: 14pt;\">Experimental data is used to find reaction rates, from which rate laws and chemical kinetics rate constants are derived by applying the law of mass action. Rate laws allow for simple calculations for zero order reactions, first order reactions, and&nbsp;<a href=\"https://www.thoughtco.com/second-order-reaction-examples-609202\" data-component=\"link\" data-source=\"inlineLink\" data-type=\"internalLink\" data-ordinal=\"2\">second order reactions</a>.</span></p>\r\n<ul>\r\n<li><span style=\"font-family: \'times new roman\', times; font-size: 14pt;\">The rate of a zero-order reaction is constant and independent of the concentration of reactants.</span><br /> <br /><span style=\"font-family: \'times new roman\', times; font-size: 14pt;\"> rate = k&nbsp;</span></li>\r\n<li><span style=\"font-family: \'times new roman\', times; font-size: 14pt;\">The rate of a first-order reaction is proportional to the concentration of one reactants:</span><br /> <br /><span style=\"font-family: \'times new roman\', times; font-size: 14pt;\"> rate = k[A]&nbsp;</span></li>\r\n<li><span style=\"font-family: \'times new roman\', times; font-size: 14pt;\">The rate of a second order reaction has a rate proportional to the square of the concentration of a single reactant or else the product of the concentration of two reactants.</span><br /> <br /><span style=\"font-family: \'times new roman\', times; font-size: 14pt;\"> rate = k[A]<sup>2</sup>&nbsp;or k[A][B]</span></li>\r\n</ul>\r\n<p><span style=\"font-family: \'times new roman\', times; font-size: 14pt;\">Rate laws for individual steps must be combined to derive laws for more complex chemical reactions. For these reactions:</span></p>\r\n<ul>\r\n<li><span style=\"font-family: \'times new roman\', times; font-size: 14pt;\">There is a rate-determining step that limits the kinetics.</span></li>\r\n<li><span style=\"font-family: \'times new roman\', times; font-size: 14pt;\">The Arrhenius equation and Eyring equations may be used to experimentally determine activation energy.</span></li>\r\n<li><span style=\"font-family: \'times new roman\', times; font-size: 14pt;\">Steady-state approximations may be applied to simplify the rate law.</span></li>\r\n</ul>\r\n<h3><span style=\"font-family: \'times new roman\', times; font-size: 14pt;\">Factors That Affect Chemical Reaction Rate</span></h3>\r\n<p><span style=\"font-family: \'times new roman\', times; font-size: 14pt;\">Chemical kinetics predicts the rate of a chemical reaction will be increased by factors that increase the kinetic energy of the reactants (up to a point), leading to increased likelihood the reactants will interact with each other. Similarly, factors that decrease the chance of reactants colliding with each other may be expected to lower the reaction rate. The main factors that affect reaction rate are:</span></p>\r\n<ul>\r\n<li><span style=\"font-family: \'times new roman\', times; font-size: 14pt;\"><strong>concentration of reactants</strong>&nbsp;(increasing concentration increases reaction rate)</span></li>\r\n<li><span style=\"font-family: \'times new roman\', times; font-size: 14pt;\"><strong>temperature</strong>&nbsp;(increasing temperature increases reaction rate, up to a point)</span></li>\r\n<li><span style=\"font-family: \'times new roman\', times; font-size: 14pt;\"><strong>presence of catalysts</strong>&nbsp;(<a href=\"https://www.thoughtco.com/catalysts-and-catalysis-604034\" data-component=\"link\" data-source=\"inlineLink\" data-type=\"internalLink\" data-ordinal=\"3\">catalysts</a>&nbsp;offer a reaction a mechanism that requires a lower&nbsp;<a href=\"https://www.thoughtco.com/activation-energy-definition-ea-606348\" data-component=\"link\" data-source=\"inlineLink\" data-type=\"internalLink\" data-ordinal=\"4\">activation energy</a>, so the presence of a catalyst increases the rate of a reaction)</span></li>\r\n<li><span style=\"font-family: \'times new roman\', times; font-size: 14pt;\"><span style=\"font-family: \'times new roman\', times; font-size: 14pt;\"><strong>physical state of reactants</strong>&nbsp;(reactants in the same phase may come into contact via thermal action, but surface area and agitation affect reactions between reactants in different phases)Chemical kinetics is the study of chemical processes and&nbsp;<a href=\"https://www.thoughtco.com/definition-of-reaction-rate-605597\" data-component=\"link\" data-source=\"inlineLink\" data-type=\"internalLink\" data-ordinal=\"1\">rates of reactions</a>. This includes analysis of conditions that affect speed of a chemical reaction, understanding reaction mechanisms and transition states, and forming mathematical models to predict and describe a chemical reaction.<strong>Also Known As</strong>Chemical kinetics may also be called reaction kinetics or simply \"kinetics\". The rate of a chemical reaction usually&nbsp;has units of sec<sup>-1</sup></span></span>\r\n<h3>Chemical Kinetics History</h3>\r\n<span style=\"font-family: \'times new roman\', times; font-size: 14pt;\"><span style=\"font-family: \'times new roman\', times; font-size: 14pt;\">The field of chemical kinetics developed from the law of mass action, formulated in 1864 by Peter Waage and Cato Guldberg. The law of mass action states the speed of a chemical reaction is proportional to the amount of reactants.</span></span>\r\n<h3>Rate Laws and Rate Constants</h3>\r\n<span style=\"font-family: \'times new roman\', times; font-size: 14pt;\">Experimental data is used to find reaction rates, from which rate laws and chemical kinetics rate constants are derived by applying the law of mass action. Rate laws allow for simple calculations for zero order reactions, first order reactions, and&nbsp;<a href=\"https://www.thoughtco.com/second-order-reaction-examples-609202\" data-component=\"link\" data-source=\"inlineLink\" data-type=\"internalLink\" data-ordinal=\"2\">second order reactions</a>.</span>\r\n<ul>\r\n<li>The rate of a zero-order reaction is constant and independent of the concentration of reactants.<br /> <br /> rate = k&nbsp;</li>\r\n<li>The rate of a first-order reaction is proportional to the concentration of one reactants:<br /> <br /> rate = k[A]&nbsp;</li>\r\n<li>The rate of a second order reaction has a rate proportional to the square of the concentration of a single reactant or else the product of the concentration of two reactants.<br /> <br /> rate = k[A]<sup>2</sup>&nbsp;or k[A][B]</li>\r\n</ul>\r\nRate laws for individual steps must be combined to derive laws for more complex chemical reactions. For these reactions:\r\n<ul>\r\n<li>There is a rate-determining step that limits the kinetics.</li>\r\n<li>The Arrhenius equation and Eyring equations may be used to experimentally determine activation energy.</li>\r\n<li>Steady-state approximations may be applied to simplify the rate law.</li>\r\n</ul>\r\n<h3>Factors That Affect Chemical Reaction Rate</h3>\r\nChemical kinetics predicts the rate of a chemical reaction will be increased by factors that increase the kinetic energy of the reactants (up to a point), leading to increased likelihood the reactants will interact with each other. Similarly, factors that decrease the chance of reactants colliding with each other may be expected to lower the reaction rate. The main factors that affect reaction rate are:\r\n<ul>\r\n<li><strong>concentration of reactants</strong>&nbsp;(increasing concentration increases reaction rate)</li>\r\n<li><strong>temperature</strong>&nbsp;(increasing temperature increases reaction rate, up to a point)</li>\r\n<li><strong>presence of catalysts</strong>&nbsp;(<a href=\"https://www.thoughtco.com/catalysts-and-catalysis-604034\" data-component=\"link\" data-source=\"inlineLink\" data-type=\"internalLink\" data-ordinal=\"3\">catalysts</a>&nbsp;offer a reaction a mechanism that requires a lower&nbsp;<a href=\"https://www.thoughtco.com/activation-energy-definition-ea-606348\" data-component=\"link\" data-source=\"inlineLink\" data-type=\"internalLink\" data-ordinal=\"4\">activation energy</a>, so the presence of a catalyst increases the rate of a reaction)</li>\r\n<li><strong>physical state of reactants</strong>&nbsp;(reactants in the same phase may come into contact via thermal action, but surface area and agitation affect reactions between reactants in different phases)</li>\r\n<li><strong>pressure</strong>&nbsp;(for reactions involving gases, raising pressure increases the collisions between reactants, increasing reaction rate)</li>\r\n</ul>\r\n&nbsp;<strong>pressure</strong>&nbsp;(for reactions involving gases, raising pressure increases the collisions between reactants, increasing reaction rate)</li>\r\n</ul>\r\n<p><span style=\"font-family: \'times new roman\', times; font-size: 14pt;\">&nbsp;</span></p>', 'Chemical-Kinetics	', '<p>Chemical Kinetics</p>', '', '', 'Active', '2018-09-14 13:24:18', '2018-09-15 14:41:39'),
(15, 'Electrochemistry	', '<p style=\"text-align: justify;\"><span style=\"font-family: \'times new roman\', times; font-size: 14pt;\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"/img/Uploads/slide_1.jpg\" alt=\"\" width=\"960\" height=\"720\" /> Electrochemistry is the branch of physical chemistry that studies the relationship between electricity, as a measurable and quantitative phenomenon, and identifiable chemical change, with either electricity considered an outcome of a particular chemical change or vice versa. These reactions involve electric charges moving between electrodes and an electrolyte (or ionic species in a solution). Thus electrochemistry deals with the interaction between electrical energy and chemical change.</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: \'times new roman\', times; font-size: 14pt;\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; When a chemical reaction is caused by an externally supplied current, as in electrolysis, or if an electric current is produced by a spontaneous chemical reaction as in a battery, it is called an electrochemical reaction. Chemical reactions where electrons are transferred directly between molecules and/or atoms are called oxidation-reduction or (redox) reactions. In general, electrochemistry describes the overall reactions when individual redox reactions are separate but connected by an external electric circuit and an intervening electrolyte.</span></p>', 'Electrochemistry	', '<p>&nbsp;Electrochemistry</p>', '', '', 'Active', '2018-09-14 13:24:36', '2018-09-15 13:36:16');
INSERT INTO `news` (`id`, `news_title`, `news_desc`, `page_url`, `meta_title`, `meta_keyword`, `meta_content`, `status`, `created`, `modified`) VALUES
(16, 'Equilibrium', '<blockquote>\r\n<p><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"/img/Uploads/osmosis_2.jpg\" alt=\"\" width=\"928\" height=\"272\" /></p>\r\n<p style=\"text-align: justify;\">&nbsp;</p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: \'times new roman\', times; font-size: 14pt;\">In a chemical reaction, chemical equilibrium is the state in which both reactants and products are present in concentrations which have no further tendency to change with time, so that there is no observable change in the properties of the system. Usually, this state results when the forward reaction proceeds at the same rate as the reverse reaction. The reaction rates of the forward and backward reactions are generally not zero, but equal. Thus, there are no net changes in the concentrations of the reactant(s) and product(s). Such a state is known as dynamic equilibrium.</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: \'times new roman\', times; font-size: 14pt;\">&nbsp;</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: \'times new roman\', times; font-size: 14pt;\"><strong>Equilibrium Constant Definition</strong></span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: \'times new roman\', times; font-size: 14pt;\">The equilibrium constant is the value of the reaction quotient that is calculated from the expression for chemical equilibrium. It depends on the ionic strength and temperature and is independent of the concentrations of reactants and products in a solution.</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: \'times new roman\', times; font-size: 14pt;\">Calculating the Equilibrium Constant</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: \'times new roman\', times; font-size: 14pt;\">&nbsp;For the following chemical reaction:</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: \'times new roman\', times; font-size: 14pt;\">aA(g) + bB(g) &harr; cC(g) + dD(g)</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: \'times new roman\', times; font-size: 14pt;\">The equilibrium constant Kc is calculated using molarity and coefficients:</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: \'times new roman\', times; font-size: 14pt;\">Kc = [C]c[D]d / [A]a[B]b</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: \'times new roman\', times; font-size: 14pt;\">where:</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: \'times new roman\', times; font-size: 14pt;\">[A], [B], [C], [D] etc. are the molar concentrations of A, B, C, D (molarity)</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: \'times new roman\', times; font-size: 14pt;\">a, b, c, d, etc. are the coefficients in the balanced chemical equation (the numbers in front of the molecules)</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: \'times new roman\', times; font-size: 14pt;\">The equilibrium constant is a dimensionless quantity (has no units). Although the calculation is usually written for two reactants and two products, it works for any numbers of participants in the reaction.</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: \'times new roman\', times; font-size: 14pt;\">Kc in Homogeneous vs Heterogeneous Equilibrium</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: \'times new roman\', times; font-size: 14pt;\">&nbsp;</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: \'times new roman\', times; font-size: 14pt;\">The calculation and interpretation of the equilibrium constant depends on whether the chemical reaction involves homogeneous equilibrium or heterogeneous equilibrium.</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: \'times new roman\', times; font-size: 14pt;\">All of the products and reactants are in the same phase for a reaction at homogeneous equilibrium. For example, everything could be a liquid or all the species could be gases.</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: \'times new roman\', times; font-size: 14pt;\">More than one phase is present for reactions that reach heterogeneous equilibrium. Usually only two phases are present, such as liquids and gases or solids and liquids. Solids are omitted from the equilibrium expression.</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: \'times new roman\', times; font-size: 14pt;\">&nbsp;</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: \'times new roman\', times; font-size: 14pt;\"><strong>Significance of the Equilibrium Constant</strong></span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: \'times new roman\', times; font-size: 14pt;\">&nbsp;For any given temperature, there is only one value for the equilibrium constant. Kc only changes if the temperature at which the reaction occurs changes. You can make some predictions about the chemical reaction based on whether the equilibrium constant is large or small.</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: \'times new roman\', times; font-size: 14pt;\">If the value for Kc is very large, then the equilibrium favors the reaction to the right and there are more products than reactants. The reaction may be said to be \"complete\" or \"quantitative.\"</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: \'times new roman\', times; font-size: 14pt;\">&nbsp;</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: \'times new roman\', times; font-size: 14pt;\">If the value for the equilibrium constant is small, then the equilibrium favors the reaction to the left and there are more reactants than products. If the value of Kcapproaches zero the reaction may be considered not to occur.</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: \'times new roman\', times; font-size: 14pt;\">&nbsp;</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: \'times new roman\', times; font-size: 14pt;\">If the values for the equilibrium constant for the forward and reverse reaction are nearly the same then the reaction is about as likely to proceed in one direction and the other and the amounts of reactants and products will be nearly equal. This type of reaction is considered to be reversible.</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: \'times new roman\', times; font-size: 14pt;\">&nbsp;</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: \'times new roman\', times; font-size: 14pt;\">&nbsp;Example Equilibrium Constant Calculation</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: \'times new roman\', times; font-size: 14pt;\">&nbsp;For the equilibrium between copper and silver ions:</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: \'times new roman\', times; font-size: 14pt;\">Cu(s) + 2Ag+ ⇆ Cu2+(aq) + 2Ag(s)</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: \'times new roman\', times; font-size: 14pt;\">The equilibrium constant expression is written as:</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: \'times new roman\', times; font-size: 14pt;\">Kc = [Cu2+] / [Ag+]2</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: \'times new roman\', times; font-size: 14pt;\">Note the solid copper and silver were omitted from the expression. Also, note the coefficient for the silver ion becomes an exponent in the equilibrium constant calculation.</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: \'times new roman\', times; font-size: 14pt;\">&nbsp;</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: \'times new roman\', times; font-size: 14pt;\">&nbsp;</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: \'times new roman\', times; font-size: 14pt;\">&nbsp;</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: \'times new roman\', times; font-size: 14pt;\">&nbsp;</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: \'times new roman\', times; font-size: 14pt;\">&nbsp;</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: \'times new roman\', times; font-size: 14pt;\">&nbsp;</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: \'times new roman\', times; font-size: 14pt;\">&nbsp;</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: \'times new roman\', times; font-size: 14pt;\"><strong>Equilibrium Constant Definition</strong></span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: \'times new roman\', times; font-size: 14pt;\">The equilibrium constant is the value of the reaction quotient that is calculated from the expression for chemical equilibrium. It depends on the ionic strength and temperature and is independent of the concentrations of reactants and products in a solution.</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: \'times new roman\', times; font-size: 14pt;\">&nbsp;</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: \'times new roman\', times; font-size: 14pt;\"><strong>Calculating the Equilibrium Constant</strong></span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: \'times new roman\', times; font-size: 14pt;\">For the following chemical reaction:</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: \'times new roman\', times; font-size: 14pt;\">&nbsp;</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: \'times new roman\', times; font-size: 14pt;\">aA(g) + bB(g) &harr; cC(g) + dD(g)</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: \'times new roman\', times; font-size: 14pt;\">&nbsp;</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: \'times new roman\', times; font-size: 14pt;\">The equilibrium constant Kc is calculated using molarity and coefficients:</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: \'times new roman\', times; font-size: 14pt;\">&nbsp;</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: \'times new roman\', times; font-size: 14pt;\">&nbsp;</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: \'times new roman\', times; font-size: 14pt;\">Kc = [C]c[D]d / [A]a[B]b</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: \'times new roman\', times; font-size: 14pt;\">&nbsp;</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: \'times new roman\', times; font-size: 14pt;\">where:</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: \'times new roman\', times; font-size: 14pt;\">&nbsp;</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: \'times new roman\', times; font-size: 14pt;\">[A], [B], [C], [D] etc. are the molar concentrations of A, B, C, D (molarity)</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: \'times new roman\', times; font-size: 14pt;\">&nbsp;</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: \'times new roman\', times; font-size: 14pt;\">a, b, c, d, etc. are the coefficients in the balanced chemical equation (the numbers in front of the molecules)</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: \'times new roman\', times; font-size: 14pt;\">&nbsp;</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: \'times new roman\', times; font-size: 14pt;\">The equilibrium constant is a dimensionless quantity (has no units). Although the calculation is usually written for two reactants and two products, it works for any numbers of participants in the reaction.</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: \'times new roman\', times; font-size: 14pt;\">&nbsp;</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: \'times new roman\', times; font-size: 14pt;\">Kc in Homogeneous vs Heterogeneous Equilibrium</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: \'times new roman\', times; font-size: 14pt;\">The calculation and interpretation of the equilibrium constant depends on whether the chemical reaction involves homogeneous equilibrium or heterogeneous equilibrium.</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: \'times new roman\', times; font-size: 14pt;\">&nbsp;</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: \'times new roman\', times; font-size: 14pt;\">All of the products and reactants are in the same phase for a reaction at homogeneous equilibrium. For example, everything could be a liquid or all the species could be gases.</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: \'times new roman\', times; font-size: 14pt;\">More than one phase is present for reactions that reach heterogeneous equilibrium. Usually only two phases are present, such as liquids and gases or solids and liquids. Solids are omitted from the equilibrium expression.</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: \'times new roman\', times; font-size: 14pt;\">&nbsp;</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: \'times new roman\', times; font-size: 14pt;\"><strong>Significance of the Equilibrium Constant</strong></span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: \'times new roman\', times; font-size: 14pt;\">For any given temperature, there is only one value for the equilibrium constant. Kc only changes if the temperature at which the reaction occurs changes. You can make some predictions about the chemical reaction based on whether the equilibrium constant is large or small.</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: \'times new roman\', times; font-size: 14pt;\">&nbsp;</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: \'times new roman\', times; font-size: 14pt;\">&nbsp;</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: \'times new roman\', times; font-size: 14pt;\">If the value for Kc is very large, then the equilibrium favors the reaction to the right and there are more products than reactants. The reaction may be said to be \"complete\" or \"quantitative.\"</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: \'times new roman\', times; font-size: 14pt;\">&nbsp;</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: \'times new roman\', times; font-size: 14pt;\">If the value for the equilibrium constant is small, then the equilibrium favors the reaction to the left and there are more reactants than products. If the value of Kcapproaches zero the reaction may be considered not to occur.</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: \'times new roman\', times; font-size: 14pt;\">&nbsp;</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: \'times new roman\', times; font-size: 14pt;\">If the values for the equilibrium constant for the forward and reverse reaction are nearly the same then the reaction is about as likely to proceed in one direction and the other and the amounts of reactants and products will be nearly equal. This type of reaction is considered to be reversible.</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: \'times new roman\', times; font-size: 14pt;\">&nbsp;</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: \'times new roman\', times; font-size: 14pt;\"><strong>Example Equilibrium Constant Calculation</strong></span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: \'times new roman\', times; font-size: 14pt;\">For the equilibrium between copper and silver ions:</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: \'times new roman\', times; font-size: 14pt;\">&nbsp;</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: \'times new roman\', times; font-size: 14pt;\">Cu(s) + 2Ag+ ⇆ Cu2+(aq) + 2Ag(s)</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: \'times new roman\', times; font-size: 14pt;\">&nbsp;</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: \'times new roman\', times; font-size: 14pt;\">The equilibrium constant expression is written as:</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: \'times new roman\', times; font-size: 14pt;\">&nbsp;</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: \'times new roman\', times; font-size: 14pt;\">Kc = [Cu2+] / [Ag+]2</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: \'times new roman\', times; font-size: 14pt;\">&nbsp;</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: \'times new roman\', times; font-size: 14pt;\">Note the solid copper and silver were omitted from the expression. Also, note the coefficient for the silver ion becomes an exponent in the equilibrium constant calculation.</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: \'times new roman\', times; font-size: 14pt;\">&nbsp;</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: \'times new roman\', times; font-size: 14pt;\">&nbsp;</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: \'times new roman\', times; font-size: 14pt;\">&nbsp;&nbsp;&nbsp;</span></p>\r\n</blockquote>', 'Equilibrium', '<p>Equilibrium</p>', '', '', 'Active', '2018-09-14 13:24:48', '2018-09-15 14:37:53');

-- --------------------------------------------------------

--
-- Table structure for table `packages`
--

CREATE TABLE `packages` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` text,
  `amount` decimal(10,2) DEFAULT NULL,
  `show_amount` decimal(10,2) DEFAULT NULL,
  `package_type` char(1) DEFAULT NULL,
  `photo` varchar(100) DEFAULT NULL,
  `expiry_days` int(11) DEFAULT NULL,
  `status` varchar(8) DEFAULT 'Active',
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `packages`
--

INSERT INTO `packages` (`id`, `name`, `description`, `amount`, `show_amount`, `package_type`, `photo`, `expiry_days`, `status`, `created`, `modified`) VALUES
(1, 'Demo Free Package', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis laoreet ante ex, sed bibendum velit tincidunt vel. Sed id velit non dolor viverra ornare. Maecenas pretium nibh vel nisi hendrerit, ac pharetra eros feugiat. Aenean sollicitudin lobortis augue a dapibus. Nam tincidunt dapibus eros, hendrerit vehicula ex interdum non. Pellentesque ultrices, ipsum laoreet elementum pretium, mi orci egestas tellus, blandit tincidunt nisi dolor quis ligula. Pellentesque euismod scelerisque porttitor. Sed sed dictum quam. Mauris nec venenatis magna. Praesent a pharetra est, sed accumsan dui. Quisque laoreet congue urna, sit amet commodo sapien convallis sed. Pellentesque luctus dignissim purus, quis consectetur tortor semper eget. Duis tempus sapien elit, ac sagittis ante elementum eget. Duis ac rhoncus odio. Phasellus dictum semper neque sed ornare. Pellentesque eu purus nulla.', '0.00', '0.00', 'F', NULL, 30, 'Active', '2017-03-28 23:40:59', '2018-09-06 19:46:25'),
(9, 'NEET Mock', '', '0.00', '0.00', 'P', 'b746ae39232cd4cdde7599139adbf284.jpg', 0, 'Inactive', '2018-09-13 11:22:45', '2018-09-17 23:27:10'),
(10, 'Biology - The Living World', '', '0.00', '0.00', 'P', '903e3631c220e17993ad3eb5b6ca3cd8.jpg', 30, 'Active', '2018-09-17 22:39:09', '2018-09-17 23:29:36'),
(11, 'CHEMISTRY - Some Basic Concepts of Chemistry', '', '0.00', '0.00', 'P', '4e7df2f563b99620378dbc4a1ccf7814.jpg', 0, 'Active', '2018-09-19 15:29:28', '2018-09-19 18:17:33'),
(12, 'Biology -Biological Classification', '', '0.00', '0.00', 'P', 'b7f1fda9134942c003bef9cc793be5df.jpg', 0, 'Active', '2018-09-19 18:10:28', '2018-09-19 18:10:28');

-- --------------------------------------------------------

--
-- Table structure for table `packages_payments`
--

CREATE TABLE `packages_payments` (
  `id` int(11) NOT NULL,
  `payment_id` int(11) DEFAULT NULL,
  `package_id` int(11) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `amount` decimal(10,2) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `expiry_date` date DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `packages_payments`
--

INSERT INTO `packages_payments` (`id`, `payment_id`, `package_id`, `price`, `quantity`, `amount`, `date`, `expiry_date`, `created`, `modified`) VALUES
(2, 2, 1, '0.00', 1, '0.00', '2018-08-29', '2018-09-28', '2018-08-29 21:35:10', '2018-08-29 21:35:10'),
(5, 5, 1, '0.00', 1, '0.00', '2018-09-06', '2018-10-06', '2018-09-06 20:40:39', '2018-09-06 20:40:39'),
(10, 9, 1, '0.00', 1, '0.00', '2018-09-12', '2018-10-12', '2018-09-12 11:45:00', '2018-09-12 11:45:00'),
(13, 11, 1, '0.00', 1, '0.00', '2018-09-12', '2018-10-12', '2018-09-12 12:14:36', '2018-09-12 12:14:36'),
(20, 17, 9, '0.00', 1, '0.00', '2018-09-13', NULL, '2018-09-13 11:24:36', '2018-09-13 11:24:36'),
(21, 18, 1, '0.00', 1, '0.00', '2018-09-13', '2018-10-13', '2018-09-13 11:42:47', '2018-09-13 11:42:47'),
(22, 19, 9, '0.00', 1, '0.00', '2018-09-13', NULL, '2018-09-13 12:19:38', '2018-09-13 12:19:38'),
(23, 20, 9, '0.00', 1, '0.00', '2018-09-13', NULL, '2018-09-13 12:58:19', '2018-09-13 12:58:19'),
(24, 21, 9, '0.00', 1, '0.00', '2018-09-13', NULL, '2018-09-13 13:00:25', '2018-09-13 13:00:25'),
(25, 22, 9, '0.00', 1, '0.00', '2018-09-13', NULL, '2018-09-13 13:37:23', '2018-09-13 13:37:23'),
(26, 23, 9, '0.00', 1, '0.00', '2018-09-13', NULL, '2018-09-13 13:40:14', '2018-09-13 13:40:14'),
(27, 24, 9, '0.00', 1, '0.00', '2018-09-13', NULL, '2018-09-13 13:55:53', '2018-09-13 13:55:53'),
(28, 25, 9, '0.00', 1, '0.00', '2018-09-14', NULL, '2018-09-14 09:51:58', '2018-09-14 09:51:58'),
(29, 26, 9, '0.00', 1, '0.00', '2018-09-14', NULL, '2018-09-14 11:08:26', '2018-09-14 11:08:26'),
(30, 27, 9, '0.00', 1, '0.00', '2018-09-14', NULL, '2018-09-14 12:30:25', '2018-09-14 12:30:25'),
(31, 28, 9, '0.00', 1, '0.00', '2018-09-14', NULL, '2018-09-14 12:34:00', '2018-09-14 12:34:00'),
(32, 29, 9, '0.00', 1, '0.00', '2018-09-14', NULL, '2018-09-14 12:35:40', '2018-09-14 12:35:40'),
(33, 30, 9, '0.00', 1, '0.00', '2018-09-14', NULL, '2018-09-14 12:38:13', '2018-09-14 12:38:13'),
(34, 31, 9, '0.00', 1, '0.00', '2018-09-15', NULL, '2018-09-15 12:08:36', '2018-09-15 12:08:36'),
(35, 32, 9, '0.00', 1, '0.00', '2018-09-15', NULL, '2018-09-15 17:40:59', '2018-09-15 17:40:59'),
(36, 33, 9, '0.00', 1, '0.00', '2018-09-17', NULL, '2018-09-17 17:26:57', '2018-09-17 17:26:57'),
(37, 34, 10, '0.00', 1, '0.00', '2018-09-17', '2018-10-17', '2018-09-17 22:42:03', '2018-09-17 22:42:03'),
(38, 35, 10, '0.00', 1, '0.00', '2018-09-17', '2018-10-17', '2018-09-17 22:48:45', '2018-09-17 22:48:45'),
(39, 36, 10, '0.00', 1, '0.00', '2018-09-17', '2018-10-17', '2018-09-17 22:54:48', '2018-09-17 22:54:48'),
(40, 37, 9, '0.00', 1, '0.00', '2018-09-17', NULL, '2018-09-17 22:55:58', '2018-09-17 22:55:58'),
(41, 38, 10, '0.00', 1, '0.00', '2018-09-17', '2018-10-17', '2018-09-17 23:02:56', '2018-09-17 23:02:56'),
(42, 39, 10, '0.00', 1, '0.00', '2018-09-17', '2018-10-17', '2018-09-17 23:03:52', '2018-09-17 23:03:52'),
(43, 40, 10, '0.00', 1, '0.00', '2018-09-17', '2018-10-17', '2018-09-17 23:06:30', '2018-09-17 23:06:30'),
(44, 41, 10, '0.00', 1, '0.00', '2018-09-18', '2018-10-18', '2018-09-18 11:31:19', '2018-09-18 11:31:19'),
(45, 42, 10, '0.00', 1, '0.00', '2018-09-18', '2018-10-18', '2018-09-18 11:31:56', '2018-09-18 11:31:56'),
(46, 43, 10, '0.00', 1, '0.00', '2018-09-18', '2018-10-18', '2018-09-18 18:29:24', '2018-09-18 18:29:24'),
(47, 44, 10, '0.00', 1, '0.00', '2018-09-18', '2018-10-18', '2018-09-18 18:31:13', '2018-09-18 18:31:13'),
(48, 45, 11, '0.00', 1, '0.00', '2018-09-19', NULL, '2018-09-19 15:34:20', '2018-09-19 15:34:20'),
(49, 46, 11, '0.00', 1, '0.00', '2018-09-19', NULL, '2018-09-19 17:48:14', '2018-09-19 17:48:14'),
(50, 47, 11, '0.00', 1, '0.00', '2018-09-19', NULL, '2018-09-19 17:49:37', '2018-09-19 17:49:37');

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int(11) NOT NULL,
  `model_name` varchar(100) DEFAULT NULL,
  `page_name` varchar(100) DEFAULT NULL,
  `controller_name` varchar(100) DEFAULT NULL,
  `action_name` varchar(100) DEFAULT NULL,
  `icon` varchar(30) DEFAULT NULL,
  `parent_id` int(1) DEFAULT NULL,
  `ordering` int(11) DEFAULT NULL,
  `published` varchar(3) DEFAULT 'Yes',
  `sel_name` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `model_name`, `page_name`, `controller_name`, `action_name`, `icon`, `parent_id`, `ordering`, `published`, `sel_name`) VALUES
(1, 'Dashboard', 'Dashboard', 'Dashboards', 'index', 'fa fa-dashboard fa-fw', 0, 1, 'Yes', NULL),
(2, 'Subject', 'Subjects', 'Subjects', 'index', 'fa fa-book fa-fw', 0, 5, 'Yes', NULL),
(3, 'Student', 'Students', 'Students', 'index', 'fa fa-graduation-cap fa-fw', 0, 9, 'Yes', 'Iestudents'),
(4, 'Exam', 'Exams', 'Exams', 'index', 'fa fa-list-alt fa-fw', 0, 7, 'Yes', 'Attemptedpapers,Addquestions'),
(5, 'Exam', 'Attempted Papers', 'Attemptedpapers', 'index', '', 4, 6, 'No', NULL),
(6, 'Result', 'Results', 'Results', 'index', 'fa fa-trophy fa-fw', 0, 8, 'Yes', NULL),
(7, 'Configuration', 'Configurations', NULL, NULL, 'fa fa-wrench fa-fw', 0, 12, 'Yes', NULL),
(8, 'Help', 'Help', 'Helps', 'index', 'fa fa-support fa-fw', 0, 15, 'No', NULL),
(9, 'User', 'Users', 'Users', 'index', 'fa fa-user fa-fw', 0, 3, 'Yes', NULL),
(10, 'Group', 'Groups', 'Groups', 'index', 'fa fa-users fa-fw', 0, 2, 'Yes', NULL),
(11, 'Content', 'Contents', NULL, NULL, 'fa fa-newspaper-o fa-fw', 0, 13, 'Yes', NULL),
(12, 'Content', 'Home Slides', 'Slides', 'index', '', 11, 3, 'Yes', NULL),
(13, 'Configuration', 'Organisation Logo', 'Weblogos', 'index', '', 7, 4, 'Yes', NULL),
(14, 'Content', 'News', 'News', 'index', '', 11, 1, 'Yes', NULL),
(15, 'Exam', 'Add Question', 'Addquestions', 'index', NULL, 4, 99, 'No', NULL),
(16, 'Content', 'Help Content', 'Helpcontents', 'index', '', 11, 5, 'Yes', NULL),
(17, 'Question', 'Questions', 'Questions', 'index', 'fa fa-question fa-fw', 0, 6, 'Yes', 'Iequestions'),
(18, 'Question', 'Question Import/Export', 'Iequestions', 'index', '', 17, 99, 'No', NULL),
(19, 'Configuration', 'Payment Settings', 'PaymentSettings', 'index', '', 7, 2, 'Yes', NULL),
(20, 'Mailbox', 'Mailbox', 'Mails', 'index', 'fa fa-envelope fa-fw', 0, 11, 'Yes', NULL),
(21, 'Student', 'Student Import/Export', 'Iestudents', 'index', '', 3, 99, 'No', NULL),
(22, 'Configuration', 'General', 'Configurations', 'index', NULL, 7, 1, 'Yes', NULL),
(23, 'Configuration', 'Currency', 'Currencies', 'index', '', 7, 3, 'Yes', NULL),
(24, 'Content', 'Testimonial', 'Testimonials', 'index', NULL, 11, 6, 'Yes', NULL),
(25, 'Content', 'Advertisement', 'Advertisements', 'index', NULL, 11, 7, 'Yes', NULL),
(26, 'Content', 'Pages', 'Contents', 'index', NULL, 11, 2, 'Yes', NULL),
(27, 'Configuration', 'Certificate Signature', 'Signatures', 'index', NULL, 7, 5, 'Yes', NULL),
(28, 'Configuration', 'Diffculty Level', 'Diffs', 'index', NULL, 7, 6, 'Yes', NULL),
(29, 'Configuration', 'Question Type', 'qtypes', 'index', '', 7, 7, 'Yes', NULL),
(30, 'Configuration', 'Menu Names', 'Menunames', 'index', '', 7, 8, 'Yes', NULL),
(31, 'Email & SMS', 'Email & SMS', NULL, NULL, 'fa fa-shield', 0, 14, 'Yes', NULL),
(32, 'Email & SMS', 'E-Mail Settings', 'Emailsettings', 'index', '', 31, 1, 'Yes', NULL),
(33, 'Email & SMS', 'Email Templates', 'Emailtemplates', 'index', NULL, 31, 2, 'Yes', NULL),
(34, 'Email & SMS', 'Send Emails', 'Sendemails', 'index', NULL, 31, 3, 'Yes', NULL),
(35, 'Email & SMS', 'SMS Settings', 'Smssettings', 'index', '', 31, 4, 'Yes', NULL),
(36, 'Email & SMS', 'SMS Templates', 'Smstemplates', NULL, 'index', 31, 5, 'Yes', NULL),
(37, 'Email & SMS', 'Send Sms', 'Sendsms', 'index', '', 31, 6, 'Yes', NULL),
(38, 'Content', 'Seo', 'Seos', 'index', NULL, 11, 8, 'Yes', NULL),
(39, 'Exam', 'Download Result', 'Downloadresults', 'index', NULL, 4, 99, 'No', NULL),
(40, 'Package', 'Packages', 'Packages', 'index', 'fa fa-shopping-cart', 0, 4, 'Yes', NULL),
(41, 'Salesreport', 'Sales Report', 'Salesreports', 'index', 'fa fa-money', 0, 10, 'Yes', NULL),
(42, 'Configuration', 'Question Language', 'Languages', 'index', NULL, 7, 2, 'Yes', NULL),
(43, 'Configuration', 'Add Question Language', 'QuestionsLangs', 'index', NULL, 7, 99, 'No', NULL),
(44, 'Passage', 'Passage', 'Passages', 'index', 'fa fa-bars', 0, 5, 'Yes', NULL),
(45, 'Coupon', 'Coupons', 'Coupons', 'index', 'fa fa-magic', 0, 9, 'Yes', NULL),
(46, 'Topic', 'Topic', 'Topics', 'index', 'fa fa-file', 0, 5, 'Yes', NULL),
(47, 'Sub Topic', 'Sub Topic', 'Stopics', 'index', 'fa fa-file', 0, 5, 'Yes', NULL),
(48, 'Payment', 'Transaction Report', 'TransactionReports', 'index', 'fa fa-shopping-cart', 0, 1, 'Yes', 'transaction_reports'),
(49, 'Content', 'Home Content', 'Homesections', 'index', '', 11, 4, 'Yes', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `page_rights`
--

CREATE TABLE `page_rights` (
  `id` int(11) NOT NULL,
  `page_id` int(11) NOT NULL,
  `ugroup_id` int(11) NOT NULL,
  `save_right` int(1) DEFAULT NULL,
  `update_right` int(1) DEFAULT NULL,
  `view_right` int(1) DEFAULT NULL,
  `search_right` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `page_rights`
--

INSERT INTO `page_rights` (`id`, `page_id`, `ugroup_id`, `save_right`, `update_right`, `view_right`, `search_right`) VALUES
(1, 1, 3, NULL, NULL, 1, NULL),
(2, 31, 3, NULL, NULL, 1, NULL),
(3, 34, 3, NULL, NULL, 1, NULL),
(4, 37, 3, NULL, NULL, 1, NULL),
(5, 4, 3, NULL, NULL, 1, NULL),
(6, 5, 3, NULL, NULL, 1, NULL),
(7, 15, 3, NULL, NULL, 1, NULL),
(8, 8, 3, NULL, NULL, 1, NULL),
(9, 20, 3, NULL, NULL, 1, NULL),
(10, 30, 3, NULL, NULL, 1, NULL),
(11, 19, 3, NULL, NULL, 1, NULL),
(12, 17, 3, NULL, NULL, 1, NULL),
(13, 18, 3, NULL, NULL, 1, NULL),
(14, 29, 3, NULL, NULL, 1, NULL),
(15, 6, 3, NULL, NULL, 1, NULL),
(16, 3, 3, NULL, NULL, 1, NULL),
(17, 21, 3, NULL, NULL, 1, NULL),
(18, 2, 3, NULL, NULL, 1, NULL),
(19, 1, 2, NULL, NULL, 1, NULL),
(20, 4, 2, NULL, NULL, 1, NULL),
(21, 5, 2, NULL, NULL, 1, NULL),
(22, 15, 2, NULL, NULL, 1, NULL),
(23, 8, 2, NULL, NULL, 1, NULL),
(24, 17, 2, NULL, NULL, 1, NULL),
(25, 18, 2, NULL, NULL, 1, NULL),
(26, 6, 2, NULL, NULL, 1, NULL),
(27, 3, 2, NULL, NULL, 1, NULL),
(28, 21, 2, NULL, NULL, 1, NULL),
(29, 2, 2, NULL, NULL, 1, NULL),
(30, 39, 2, NULL, NULL, 1, NULL),
(31, 39, 3, NULL, NULL, 1, NULL),
(32, 43, 2, NULL, NULL, 1, NULL),
(33, 43, 3, NULL, NULL, 1, NULL),
(34, 44, 2, NULL, NULL, 1, NULL),
(35, 44, 3, NULL, NULL, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `passages`
--

CREATE TABLE `passages` (
  `id` int(11) NOT NULL,
  `passage` text,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `transaction_id` varchar(20) DEFAULT NULL,
  `amount` decimal(18,2) DEFAULT NULL,
  `coupon_id` int(11) DEFAULT NULL,
  `coupon_amount` decimal(10,2) DEFAULT NULL,
  `remarks` varchar(100) DEFAULT NULL,
  `token` varchar(50) DEFAULT NULL,
  `correlation_id` varchar(50) DEFAULT NULL,
  `timestamp` varchar(50) DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `name` varchar(13) DEFAULT NULL,
  `type` varchar(3) DEFAULT NULL,
  `payments_from` varchar(10) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`id`, `student_id`, `transaction_id`, `amount`, `coupon_id`, `coupon_amount`, `remarks`, `token`, `correlation_id`, `timestamp`, `status`, `date`, `name`, `type`, `payments_from`, `created`, `modified`) VALUES
(2, 8, '15355587101118865839', '0.00', NULL, NULL, 'Free Purchase Package From Administrator', '1535558710220099313', NULL, NULL, 'Approved', '2018-08-29 21:35:10', 'Administrator', 'ADM', NULL, '2018-08-29 21:35:10', '2018-08-29 21:35:10'),
(4, 11, '15362460601208974298', '0.00', NULL, NULL, 'Free Purchase Package From Administrator', '153624606048514453', NULL, NULL, 'Approved', '2018-09-06 20:31:00', 'Administrator', 'ADM', NULL, '2018-09-06 20:31:00', '2018-09-06 20:31:00'),
(5, 11, '1536246639101865026', '0.00', NULL, NULL, 'Free Purchase Package From Administrator', '15362466391300143112', NULL, NULL, 'Approved', '2018-09-06 20:40:39', 'Administrator', 'ADM', NULL, '2018-09-06 20:40:39', '2018-09-06 20:40:39'),
(7, 8, '15364005981354187891', '0.00', NULL, NULL, 'Free Purchase Package From Administrator', '15364005981004779348', NULL, NULL, 'Approved', '2018-09-08 15:26:38', 'Administrator', 'ADM', NULL, '2018-09-08 15:26:38', '2018-09-08 15:26:38'),
(8, 12, '15367329001027561170', '0.00', NULL, NULL, 'Free Purchase Package From Administrator', '15367329001416009353', NULL, NULL, 'Approved', '2018-09-12 11:45:00', 'Administrator', 'ADM', NULL, '2018-09-12 11:45:00', '2018-09-12 11:45:00'),
(9, 12, '1536732900882381701', '0.00', NULL, NULL, 'Free Purchase Package From Administrator', '15367329001740112351', NULL, NULL, 'Approved', '2018-09-12 11:45:00', 'Administrator', 'ADM', NULL, '2018-09-12 11:45:00', '2018-09-12 11:45:00'),
(10, 13, '15367346761148921533', '0.00', NULL, NULL, 'Free Purchase Package From Administrator', '15367346761404796116', NULL, NULL, 'Approved', '2018-09-12 12:14:36', 'Administrator', 'ADM', NULL, '2018-09-12 12:14:36', '2018-09-12 12:14:36'),
(11, 13, '15367346761248177381', '0.00', NULL, NULL, 'Free Purchase Package From Administrator', '15367346762025661624', NULL, NULL, 'Approved', '2018-09-12 12:14:36', 'Administrator', 'ADM', NULL, '2018-09-12 12:14:36', '2018-09-12 12:14:36'),
(15, 13, '1536745627446779643', '0.00', NULL, NULL, 'Package Purchase', '1536745627394367566', NULL, NULL, 'Approved', '2018-09-12 15:17:07', 'Free', 'FRE', 'web', '2018-09-12 15:17:07', '2018-09-12 15:17:07'),
(16, 13, '15368152451135530833', '0.00', NULL, NULL, 'Package Purchase', '15368152452085897461', NULL, NULL, 'Approved', '2018-09-13 10:37:25', 'Free', 'FRE', 'web', '2018-09-13 10:37:25', '2018-09-13 10:37:25'),
(17, 13, '15368180761845688854', '0.00', NULL, NULL, 'Package Purchase', '153681807614090409', NULL, NULL, 'Approved', '2018-09-13 11:24:36', 'Free', 'FRE', 'web', '2018-09-13 11:24:36', '2018-09-13 11:24:36'),
(18, 15, '15368191671172006357', '0.00', NULL, NULL, 'Free Purchase Package From Administrator', '15368191671751503736', NULL, NULL, 'Approved', '2018-09-13 11:42:47', 'Administrator', 'ADM', NULL, '2018-09-13 11:42:47', '2018-09-13 11:42:47'),
(19, 13, '15368213781733844498', '0.00', NULL, NULL, 'Package Purchase', '15368213781539099562', NULL, NULL, 'Approved', '2018-09-13 12:19:38', 'Free', 'FRE', 'web', '2018-09-13 12:19:38', '2018-09-13 12:19:38'),
(20, 13, '15368236991050672354', '0.00', NULL, NULL, 'Package Purchase', '15368236991666366487', NULL, NULL, 'Approved', '2018-09-13 12:58:19', 'Free', 'FRE', 'web', '2018-09-13 12:58:19', '2018-09-13 12:58:19'),
(21, 13, '15368238252099004320', '0.00', NULL, NULL, 'Package Purchase', '15368238251866027123', NULL, NULL, 'Approved', '2018-09-13 13:00:25', 'Free', 'FRE', 'web', '2018-09-13 13:00:25', '2018-09-13 13:00:25'),
(22, 13, '15368260431151334545', '0.00', NULL, NULL, 'Package Purchase', '1536826043716329020', NULL, NULL, 'Approved', '2018-09-13 13:37:23', 'Free', 'FRE', 'web', '2018-09-13 13:37:23', '2018-09-13 13:37:23'),
(23, 13, '15368262141512651588', '0.00', NULL, NULL, 'Package Purchase', '1536826214346811055', NULL, NULL, 'Approved', '2018-09-13 13:40:14', 'Free', 'FRE', 'web', '2018-09-13 13:40:14', '2018-09-13 13:40:14'),
(24, 13, '15368271531819009104', '0.00', NULL, NULL, 'Package Purchase', '1536827153175502263', NULL, NULL, 'Approved', '2018-09-13 13:55:53', 'Free', 'FRE', 'web', '2018-09-13 13:55:53', '2018-09-13 13:55:53'),
(25, 13, '15368989182089070607', '0.00', NULL, NULL, 'Package Purchase', '1536898918509877078', NULL, NULL, 'Approved', '2018-09-14 09:51:58', 'Free', 'FRE', 'web', '2018-09-14 09:51:58', '2018-09-14 09:51:58'),
(26, 13, '15369035061721673391', '0.00', NULL, NULL, 'Package Purchase', '15369035062088513992', NULL, NULL, 'Approved', '2018-09-14 11:08:26', 'Free', 'FRE', 'web', '2018-09-14 11:08:26', '2018-09-14 11:08:26'),
(27, 13, '1536908425287340058', '0.00', NULL, NULL, 'Package Purchase', '15369084251031351680', NULL, NULL, 'Approved', '2018-09-14 12:30:25', 'Free', 'FRE', 'web', '2018-09-14 12:30:25', '2018-09-14 12:30:25'),
(28, 13, '1536908640823444516', '0.00', NULL, NULL, 'Package Purchase', '1536908640297587939', NULL, NULL, 'Approved', '2018-09-14 12:34:00', 'Free', 'FRE', 'web', '2018-09-14 12:34:00', '2018-09-14 12:34:00'),
(29, 13, '1536908740148908963', '0.00', NULL, NULL, 'Package Purchase', '1536908740585434359', NULL, NULL, 'Approved', '2018-09-14 12:35:40', 'Free', 'FRE', 'web', '2018-09-14 12:35:40', '2018-09-14 12:35:40'),
(30, 13, '15369088932094256481', '0.00', NULL, NULL, 'Package Purchase', '15369088931181232234', NULL, NULL, 'Approved', '2018-09-14 12:38:13', 'Free', 'FRE', 'web', '2018-09-14 12:38:13', '2018-09-14 12:38:13'),
(31, 13, '1536993516553676613', '0.00', NULL, NULL, 'Package Purchase', '15369935161030432896', NULL, NULL, 'Approved', '2018-09-15 12:08:36', 'Free', 'FRE', 'web', '2018-09-15 12:08:36', '2018-09-15 12:08:36'),
(32, 13, '15370134592090926769', '0.00', NULL, NULL, 'Package Purchase', '1537013459562075857', NULL, NULL, 'Approved', '2018-09-15 17:40:59', 'Free', 'FRE', 'web', '2018-09-15 17:40:59', '2018-09-15 17:40:59'),
(33, 13, '1537185417186175160', '0.00', NULL, NULL, 'Package Purchase', '1537185417767708367', NULL, NULL, 'Approved', '2018-09-17 17:26:57', 'Free', 'FRE', 'web', '2018-09-17 17:26:57', '2018-09-17 17:26:57'),
(34, 17, '15372043231523066248', '0.00', NULL, NULL, 'Package Purchase', '15372043232046212178', NULL, NULL, 'Approved', '2018-09-17 22:42:03', 'Free', 'FRE', 'web', '2018-09-17 22:42:03', '2018-09-17 22:42:03'),
(35, 13, '1537204725617549209', '0.00', NULL, NULL, 'Package Purchase', '15372047251972047753', NULL, NULL, 'Approved', '2018-09-17 22:48:45', 'Free', 'FRE', 'web', '2018-09-17 22:48:45', '2018-09-17 22:48:45'),
(36, 11, '1537205088636254453', '0.00', NULL, NULL, 'Package Purchase', '1537205088248955291', NULL, NULL, 'Approved', '2018-09-17 22:54:48', 'Free', 'FRE', 'web', '2018-09-17 22:54:48', '2018-09-17 22:54:48'),
(37, 11, '1537205158343274591', '0.00', NULL, NULL, 'Package Purchase', '15372051581933813569', NULL, NULL, 'Approved', '2018-09-17 22:55:58', 'Free', 'FRE', 'web', '2018-09-17 22:55:58', '2018-09-17 22:55:58'),
(38, 11, '15372055761747763539', '0.00', NULL, NULL, 'Package Purchase', '15372055761381229858', NULL, NULL, 'Approved', '2018-09-17 23:02:56', 'Free', 'FRE', 'web', '2018-09-17 23:02:56', '2018-09-17 23:02:56'),
(39, 11, '15372056321170337280', '0.00', NULL, NULL, 'Package Purchase', '1537205632918804791', NULL, NULL, 'Approved', '2018-09-17 23:03:52', 'Free', 'FRE', 'web', '2018-09-17 23:03:52', '2018-09-17 23:03:52'),
(40, 11, '15372057901415480106', '0.00', NULL, NULL, 'Package Purchase', '15372057901838701761', NULL, NULL, 'Approved', '2018-09-17 23:06:30', 'Free', 'FRE', 'web', '2018-09-17 23:06:30', '2018-09-17 23:06:30'),
(41, 13, '1537250479471140864', '0.00', NULL, NULL, 'Package Purchase', '15372504791816552135', NULL, NULL, 'Approved', '2018-09-18 11:31:19', 'Free', 'FRE', 'web', '2018-09-18 11:31:19', '2018-09-18 11:31:19'),
(42, 13, '15372505161226214212', '0.00', NULL, NULL, 'Package Purchase', '15372505161038418400', NULL, NULL, 'Approved', '2018-09-18 11:31:56', 'Free', 'FRE', 'web', '2018-09-18 11:31:56', '2018-09-18 11:31:56'),
(43, 8, '1537275564216154904', '0.00', NULL, NULL, 'Package Purchase', '15372755641757694012', NULL, NULL, 'Approved', '2018-09-18 18:29:24', 'Free', 'FRE', 'web', '2018-09-18 18:29:24', '2018-09-18 18:29:24'),
(44, 8, '1537275673947371563', '0.00', NULL, NULL, 'Package Purchase', '153727567370028824', NULL, NULL, 'Approved', '2018-09-18 18:31:13', 'Free', 'FRE', 'web', '2018-09-18 18:31:13', '2018-09-18 18:31:13'),
(45, 17, '15373514601696623161', '0.00', NULL, NULL, 'Package Purchase', '15373514601877663241', NULL, NULL, 'Approved', '2018-09-19 15:34:20', 'Free', 'FRE', 'web', '2018-09-19 15:34:20', '2018-09-19 15:34:20'),
(46, 13, '15373594941305647316', '0.00', NULL, NULL, 'Package Purchase', '1537359494583633247', NULL, NULL, 'Approved', '2018-09-19 17:48:14', 'Free', 'FRE', 'web', '2018-09-19 17:48:14', '2018-09-19 17:48:14'),
(47, 13, '15373595772111254812', '0.00', NULL, NULL, 'Package Purchase', '1537359577319787373', NULL, NULL, 'Approved', '2018-09-19 17:49:37', 'Free', 'FRE', 'web', '2018-09-19 17:49:37', '2018-09-19 17:49:37');

-- --------------------------------------------------------

--
-- Table structure for table `payment_settings`
--

CREATE TABLE `payment_settings` (
  `id` int(11) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `signature` varchar(255) DEFAULT NULL,
  `sandbox_mode` tinyint(1) DEFAULT '0',
  `name` varchar(255) DEFAULT NULL,
  `type` varchar(3) DEFAULT NULL,
  `gateway_url` varchar(255) DEFAULT NULL,
  `authorization` varchar(255) DEFAULT NULL,
  `published` varchar(3) DEFAULT 'Yes',
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `payment_settings`
--

INSERT INTO `payment_settings` (`id`, `username`, `password`, `signature`, `sandbox_mode`, `name`, `type`, `gateway_url`, `authorization`, `published`, `created`, `modified`) VALUES
(1, '', '', '', 1, 'Pay Pal', 'PPL', NULL, NULL, 'Yes', NULL, '2018-09-10 18:24:59'),
(2, '', '', '', 0, 'CC AVENUE', 'CAE', 'https://secure.ccavenue.com', NULL, 'Yes', NULL, '2018-09-10 18:25:34'),
(3, '', '', '', 1, 'PAYU MONEY', 'PME', '', '', 'Yes', NULL, '2018-09-10 18:25:03');

-- --------------------------------------------------------

--
-- Table structure for table `qtypes`
--

CREATE TABLE `qtypes` (
  `id` int(11) NOT NULL,
  `question_type` varchar(20) DEFAULT NULL,
  `type` char(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `qtypes`
--

INSERT INTO `qtypes` (`id`, `question_type`, `type`) VALUES
(1, 'Objective', 'M'),
(2, 'True / False', 'T'),
(3, 'Fill in the blanks', 'F'),
(4, 'Subjective', 'S');

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `id` int(11) NOT NULL,
  `qtype_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `topic_id` int(11) DEFAULT NULL,
  `stopic_id` int(11) DEFAULT NULL,
  `diff_id` int(11) NOT NULL,
  `passage_id` int(11) DEFAULT NULL,
  `question` text,
  `option1` text,
  `option2` text,
  `option3` text,
  `option4` text,
  `option5` text,
  `option6` text,
  `marks` decimal(5,2) DEFAULT NULL,
  `negative_marks` decimal(5,2) DEFAULT NULL,
  `hint` text,
  `explanation` text,
  `answer` varchar(15) DEFAULT NULL,
  `true_false` varchar(5) DEFAULT NULL,
  `fill_blank` text,
  `status` varchar(3) DEFAULT 'Yes',
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`id`, `qtype_id`, `subject_id`, `topic_id`, `stopic_id`, `diff_id`, `passage_id`, `question`, `option1`, `option2`, `option3`, `option4`, `option5`, `option6`, `marks`, `negative_marks`, `hint`, `explanation`, `answer`, `true_false`, `fill_blank`, `status`, `created`, `modified`) VALUES
(834, 1, 5, 13, 92, 2, NULL, 'The label of a  herbarium  sheet  does  not carry  information  on  (NEET­II 2016)', 'date of collection', 'name of collector', ' local names', ' height of the plant', NULL, NULL, '4.00', '1.00', NULL, '(d) :A herbarium is a collection of plants, which  have  been  dried,  pressed,  mounted  on  herbarium  sheets, identified  and  classified  according to  some  approved  system  of  classification. The  storage  of  herbarium sheets forms a repository for future use. A  printed  label  (7  ×  12  cm)  giving  the  following  information  is  fixed  on  the  lower,  right  corner  of  herbarium sheet:  (i) Scientific name of plant (ii) Common/vernacular  name (iii) Family (iv) Locality (v) Date of collection  (vi) Collection number (vii) Name of collector (viii)  Plant  characteristics  (optional)  (ix)  Name  of  institution (optional).', '4', NULL, NULL, 'Yes', '2018-09-17 23:07:44', '2018-09-17 23:07:44'),
(835, 1, 5, 13, 92, 2, NULL, 'Match  column  I  with  column  II  for  housefly  classification and  select the correct option using  the codes given below. Column I  Column II A.  Family  (i)  Diptera  B.  Order  (ii)  Arthropoda  C.  Class  (iii) Muscidae  D.  Phylum  (iv)  Insecta  (NEET­II 2016', 'A­(iii), B­(i), C­(iv), D­(ii) ', 'A­(iii), B­(ii), C­(iv), D­(i)', 'A­(iv), B­(iii), C­(ii), D­(i) ', 'A­(iv), B­(ii), C­(i), D­(iii)', NULL, NULL, '4.00', '1.00', NULL, NULL, '1', NULL, NULL, 'Yes', '2018-09-17 23:07:44', '2018-09-17 23:07:44'),
(836, 1, 5, 13, 92, 2, NULL, 'Study the four statements (A­D) given below and  select the two correct ones out of them.  A.  Definition of biological species was given  by Ernst Mayr.  B.  Photoperiod does not affect reproduction in  plants.  C.  Binomial nomenclature system was  given  by R.H.  Whittaker.  D.  In  unicellular  organisms,  reproduction is  synonymous with growth.  The two correct statements are ', 'B and C', ' C and D', 'A and D', 'A and B', NULL, NULL, '4.00', '1.00', NULL, '(c)  : Photoperiod  affects  flowering  and  reproduction in plants. Binomial nomenclature system  was given by Carolus Linnaeus.', '3', NULL, NULL, 'Yes', '2018-09-17 23:07:44', '2018-09-17 23:07:44'),
(837, 1, 5, 13, 92, 2, NULL, 'Nomenclature is governed by certain universal  rules. Which one of the following is contrary to  the rules of nomenclature? (NEET­I 2016)', 'The  names  are  written  in  Latin  and  are \nitalicised', 'When written by hand the names are to be \nunderlined. ', 'Biological  names  can  be  written in    any  language', 'The  first  word  in  a  biological  name \nrepresents the genus name and the second \nis a specific epithet.\n', NULL, NULL, '4.00', '1.00', NULL, '(c)  : Biological  names  are  derived  either  from  Latin language or are latinised. This is because Latin  language is a dead language and therefore it will not  change in form or spellings with the passage of time.', '3', NULL, NULL, 'Yes', '2018-09-17 23:07:44', '2018-09-17 23:07:44'),
(838, 1, 5, 13, 92, 2, NULL, 'Which  one  of  the  following  is  not  a  correct  statement? (NEET 2013)', 'A museum has collection of photographs of  plants and animals. ', 'Key is a taxonomic aid for identification of \nspecimens. ', 'Herbarium  houses  dried,  pressed  and  preserved plant specimens.', 'Botanical gardens have collection of living  plants for  reference.', NULL, NULL, '4.00', '1.00', NULL, '(a) : Museums  have  collections  of  preserved  plant and animal specimens for study and reference.  Specimens are preserved in the containers or jars in  preservative solutions. Plant and animal specimens  may also be preserved as dry specimens. Insects are  preserved in insect boxes after collecting, killing and  pinning. Larger animals like birds and mammals are  usually stuffed and preserved. Museums often have  collections of skeletons of animals too.', '1', NULL, NULL, 'Yes', '2018-09-17 23:07:44', '2018-09-17 23:07:44'),
(839, 1, 5, 13, 92, 2, NULL, 'The common  characteristics  between tomato  and  potato  will  be  maximum  at  the level  of  their (Karnataka NEET 2013)', 'family ', 'order', 'division', 'genus', NULL, NULL, '4.00', '1.00', NULL, '(a) : Potato  (Solanum tuberosum)  and  tomato  (Lycopersicum  esculentum)  both  belong  to  family  Solanaceae, which is commonly called as the “potato  family”.  Many  plants  belonging  to this  family  are  sources of vegetables, fruits etc.', '1', NULL, NULL, 'Yes', '2018-09-17 23:07:44', '2018-09-17 23:07:44'),
(840, 1, 5, 13, 92, 2, NULL, 'Which  one  of  the  following  organisms  is  scientifically correctly named, correctly printed  according  to  the  International  Rules  of  Nomenclature  and  correctly  described?  (Mains 2012)', 'Musca  domestica  ­  the  common  house  lizard, a reptile ', 'Plasmodium  falciparum  ­  a  protozoan  pathogen causing the most serious type of  malaria.', 'Felis tigris­ the Indian tiger, well protected  in  Gir  forests.', 'E.coli  ­  full  name  Entamoeba  coli,  a  commonly  occurring  bacterium  in  human  intestine.', NULL, NULL, '4.00', '1.00', NULL, '(b)  : Plasmodium falciparum  is  a  protozoan  parasite, one of the species of Plasmodium that causes  malaria in humans. Being digenetic, its life cycle is  complete in two hosts — man and mosquito. Its sexual  cycle is completed in female Anopheles mosquito and  infective individuals called  sporozoites  are  formed.  Which  are transmitted to  humans  with  the  bite  of  infected female Anopheles. Asexual cycle is  passed  in  man  in  two  phases.    Malaria  caused  by P. falciparum  (also  known  as  aestivo­autumnal,  malignant tertian or pernicious malaria) is the most  dangerous form of malaria, with the highest  rate of  complication and mortality. In this case fever cycle is  of 48 hours and is often fatal to patient as it affects  the brain.  Scientific  name  of  common  house  lizard  is Hemidactylus  whereas Musca domestica  is  the  scientific name of common housefly. Scientific name  of Indian tiger is Panthera tigris. Full name of E.coli is Escherichia coli.', '2', NULL, NULL, 'Yes', '2018-09-17 23:07:44', '2018-09-17 23:07:44'),
(841, 1, 5, 13, 92, 2, NULL, 'Which one of the following animals is correctly  matched with its particular taxonomic category? (2011)', 'Tiger ­ Tigris, species', 'Cuttlefish ­ mollusca, class ', 'Humans ­ primata, family', 'Housefly  ­ Musca,  order ', NULL, NULL, '4.00', '1.00', NULL, '(a) : Binomial nomenclature system of naming  organisms using a two­part Latinized  (or scientific)  name  that  was  devised  by  the  Swedish  botanist  Linnaeus  (Carl  Linne);  it  is  also  known  as  the  Linnaean system. The first part is the generic name,  the second is the specific name. Zoological name of  tiger is Panthera tigris. So, tigris is species name of  Tiger.', '1', NULL, NULL, 'Yes', '2018-09-17 23:07:44', '2018-09-17 23:07:44'),
(842, 1, 5, 13, 92, 2, NULL, 'Which  one  of  the  following  aspects  is  an  exclusive characteristic of living things? (Mains 2011)', 'Isolated metabolic reactions occur in vitro', 'Increase in mass from inside only', 'Perception  of  events  happening  in  the  environment and their memory. ', 'Increase  in  mass  by  accumulation  of  material  both  on  surface  as  well  as  internally', NULL, NULL, '4.00', '1.00', NULL, NULL, '3', NULL, NULL, 'Yes', '2018-09-17 23:07:44', '2018-09-17 23:07:44'),
(843, 1, 5, 13, 92, 2, NULL, 'ICBN stands  for (2007)', 'International Code of Botanical Nomencla­  ture ', 'International Congress of Biological Names', 'Indian Code  of Botanical Nomenclature', 'Indian Congress  of Biological Names.', NULL, NULL, '4.00', '1.00', NULL, '(a) : The  International  Code  of  Botanical  Nomenclature  (ICBN)  is  a  set  of  rules  and  recommendations dealing with the formal botanical  names given to plant. The foundations of ICBN are  given  in  book  written  by  C.  Linnaeus  named Philosophia Botanica. It is independent of zoological  nomenclature. The rank of species is basic and relative  order  of the  ranks  of taxa are  as :   species,  genus,  tribe,  family,  order,  series,  class,  division  and  kingdom.  The  different  ranks  or  categories  have  following  specific endings of their names as division – phyla,  class­ae, family­aceae.', '1', NULL, NULL, 'Yes', '2018-09-17 23:07:44', '2018-09-17 23:07:44'),
(844, 1, 5, 13, 92, 2, NULL, 'The living organisms can be unexceptionally  distinguished  from  the  non­living  things  on  the  basis  of their  ability  for (2007)', 'interaction  with  the  environment  and  progressive  evolution ', 'reproduction', 'growth and movement', 'responsiveness to  touch. ', NULL, NULL, '4.00', '1.00', NULL, NULL, '4', NULL, NULL, 'Yes', '2018-09-17 23:07:44', '2018-09-17 23:07:44'),
(845, 1, 5, 13, 92, 2, NULL, 'One of the most important functions of botanical  gardens is that (2005)', 'they provide a beautiful area for recreation ', 'one can  observe tropical plants there', 'they  allow  ex  situ  conservation  of  germ­  plasm', 'they  provide  the  natural  habitat  for  wild  life.', NULL, NULL, '4.00', '1.00', NULL, '  (c)  :  Ex  situ  conservation  means  “offsite  conservation”.  It  is  the  process  of  protecting  endangered species of plants and animals by removing  it from an unsafe or threatened habitat and placing it  or  part  of  it  under  the  care  of  humans.  Botanical  garden serve as ex situ conservation of germplasm of  different plants, to maintain rare and endemic plant  species and also to provide recreation and knowledge  about plants to a common man.', '3', NULL, NULL, 'Yes', '2018-09-17 23:07:44', '2018-09-17 23:07:44'),
(846, 1, 5, 13, 92, 2, NULL, 'Species are considered as (2003)', 'real basic  units  of classification ', 'the lowest  units  of classification', 'artificial  concept  of  human  mind  which  cannot  be  defined in absolute terms ', 'real  units  of  classification  devised  by  taxonomists.', NULL, NULL, '4.00', '1.00', NULL, '  (a) : Species is a natural population or group of  natural  populations  of  individuals  which  are  genetically  distinct and  reproductively isolated with  similar essential morphological traits. Species is also  a genetically closed system because its members do  not interbreed with members of other species. Speciesis lowest  or  basic taxonomic  category,  e.g., mango \n(Mangifera indica), potato (Solanum tuberosum), lion \n(Panthera leo). Here indica, tuberosum, leo are species \nof  genera  Mangifera,  Solanum  and  Pantera\nrespectively. All  other  taxonomic  categories  are \ndefined  and  described  in  relation  to  species.  For \nexample, a genus is a group of species and a subspecies \nor a variety is a part of species. New species originate \nfrom already existing species. Species is considered \nbasic unit of taxonomy since in the  greater majority \nof cases we do not have intraspecific names.', '1', NULL, NULL, 'Yes', '2018-09-17 23:07:44', '2018-09-17 23:07:44'),
(847, 1, 5, 13, 92, 2, NULL, 'Biosystematics aims at (2003)', 'the  classification  of  organisms  based  on  broad morphological characters', 'delimiting  various taxa  of  organisms  and  establishing their relationships', 'the  classification  of  organisms  based  on  their evolutionary history and establishing  their  phylogeny  on  the  totality  of  various  parameters  from all  fields  of  studies', '  identification and arrangement of organisms  on  the  basis  of  their  cytological  characteristics.', NULL, NULL, '4.00', '1.00', NULL, '  (c) : Biosystematics is the study of identification,  nomenclature classification and relationships amongst  living beings. In other words, it is the study of diversity  of  organisms, their  comparative  and  evolutionary  relationships based on comparative anatomy, ecology,  physiology,  biochemistry and  other  fields.', '3', NULL, NULL, 'Yes', '2018-09-17 23:07:44', '2018-09-17 23:07:44'),
(848, 1, 5, 13, 92, 2, NULL, 'Which  of  the  following  is  less  general  in  characters as compared to genus? (2001)', 'Species ', 'Division ', 'Class', 'Family', NULL, NULL, '4.00', '1.00', NULL, '(a)  :  A taxonomic  hierarchy is the  sequence  of  arrangement of taxonomic categories in a descending  order during the classification of an organism. There  are  seven  obligate  categories  ­  kingdom,  division  ,  class, order, family, genus and species. Species is the  lowest category while kingdom is the highest category.  The number of common characters is maximum in case  of organisms placed in the lowest category. Number  of  common  characters  decreases  with  the  rise  in  category. Species are the smallest group of individuals  which  can  be  recognized  by  ordinary  methods  as  groups  and  which  are  consistently  and  persistently  different  from other  groups  because their characters  are less general.', '1', NULL, NULL, 'Yes', '2018-09-17 23:07:44', '2018-09-17 23:07:44'),
(849, 1, 5, 13, 92, 2, NULL, 'The book ‘Genera Plantarum’ was written by (1999)', 'Engler and Prantl', 'Bentham and Hooker ', 'Bessey', 'Hutchinson', NULL, NULL, '4.00', '1.00', NULL, '(b) : Bentham and Hooker in their monumental  work Genera Plantarum (1862­1883) have provided  elaborate  keys  for  the  easy  identification  of  202  natural  orders and  genera.  Engler and Prantl wrote Die naturlichen pflanzen familien. Huchinson wrote  a book titled “The Families of Flowering Plants.”', '2', NULL, NULL, 'Yes', '2018-09-17 23:07:44', '2018-09-17 23:07:44'),
(850, 1, 5, 13, 92, 2, NULL, '‘Taxon’ is the  unit  of  a  group  of  (1996)', 'order ', 'taxonomy ', 'species', 'genes', NULL, NULL, '4.00', '1.00', NULL, '  (b)  :  Taxon  refers  to  all the  categories  in  the  taxonomic  hierarchy.  It may  be  a  kingdom,  class,  order,  family,  genus  or  species.  It  is  any  level  of  grouping of organisms. Each of these categories has  been divided further into intermediate categories like  subkingdom,  subdivision,  superclass,  subgenus,  subspecies  etc. This term  was  coined  by  ICBN  in  1956.', '2', NULL, NULL, 'Yes', '2018-09-17 23:07:44', '2018-09-17 23:07:44'),
(851, 1, 5, 13, 92, 2, NULL, 'Linnaeus is credited with (1993)', 'binomial nomenclature', 'theory  of  biogenesis ', 'discovery  of  microscope', 'discovery  of  blood  circulation', NULL, NULL, '4.00', '1.00', NULL, '(a) : Binomial nomenclature of scientific naming  was  first  given  by C.  Linnaeus  (1735)  in  his  book Systema Naturae and later in  “Species Plantarum”  (1753). He used two latin words for any organism, the  first  being  generic  name  and the  second is  specific  name. The generic name begins with capital letter and  the species name with small letter.', '1', NULL, NULL, 'Yes', '2018-09-17 23:07:44', '2018-09-17 23:07:44'),
(852, 1, 5, 13, 92, 2, NULL, 'Sequence  of taxonomic  categories is (1992)', 'class–phylum–tribe–order–family–genus–  species ', 'division–class–family–tribe–order–genus–  species ', 'division–class–order–family–tribe–genus–  species. ', 'phylum–order–class–tribe–family–genus–  species', NULL, NULL, '4.00', '1.00', NULL, '(c) : To construct the hierarchy of classification,  one or more species are grouped into a genus, one or  more of genera into a family, families are clubbed into  order,  orders  into  class,  classes  into  phylum  and  various phyla into kingdom', '3', NULL, NULL, 'Yes', '2018-09-17 23:07:44', '2018-09-17 23:07:44'),
(853, 1, 5, 13, 92, 2, NULL, 'The term  phylum was  given  by (1992)', 'Cuvier', 'Haeckel ', 'Theophrastus ', 'Linnaeus', NULL, NULL, '4.00', '1.00', NULL, '(a) : The term phylum was given by Cuvier.', '1', NULL, NULL, 'Yes', '2018-09-17 23:07:44', '2018-09-17 23:07:44'),
(854, 1, 5, 13, 92, 2, NULL, 'A group of plants or animals with similar traits  of any rank is (1992, 1991)', 'species ', 'genus ', 'order', 'taxon', NULL, NULL, '4.00', '1.00', NULL, '(d) : A taxon (plural taxa) or taxonomic unit, is  a name designating an organism or group of organisms.  A taxon is  assigned  a  rank  and  can  be  placed  at  a  particular level in  a  systematic  hierarchy  reflecting  evolutionary  relationships.', '4', NULL, NULL, 'Yes', '2018-09-17 23:07:44', '2018-09-17 23:07:44'),
(855, 1, 5, 13, 92, 2, NULL, 'A taxon is (1992, 1990)', 'a  group of  related  families ', 'a  group of  related  species', 'a type  of living  organisms', 'a taxonomic  group of any ranking', NULL, NULL, '4.00', '1.00', NULL, '  (d) : The word taxon signifies a taxonomic group  of  any  rank  which  represents  the  real  biological  organisms included in a category. The term taxon was  coined  by Adolf Meyer  (1926)  for animals  and  H.J  Lam (1948) used this term in plant science.', '4', NULL, NULL, 'Yes', '2018-09-17 23:07:44', '2018-09-17 23:07:44'),
(856, 1, 5, 13, 92, 2, NULL, 'Basic  unit  or  smallest  taxon  of  taxonomy/  classification is (1990)', 'species ', 'kingdom', 'family', 'variety', NULL, NULL, '4.00', '1.00', NULL, '  (a) : Basic  unit or smallest taxon  of taxonomy/  classification  is  species.  Species  is  a  group  of  individuals that  remain  relatively  constant in  their  characteristics; can be distinguished from other species  and do not normally interbreed.', '1', NULL, NULL, 'Yes', '2018-09-17 23:07:44', '2018-09-17 23:07:44'),
(857, 1, 5, 13, 92, 2, NULL, 'Linnaeus  evolved  a  system  of  nomenclature  called (1990)', 'mononomial ', 'vernacular ', 'binomial ', 'polynomial', NULL, NULL, '4.00', '1.00', NULL, '(c) : Refer to answer 18.', '3', NULL, NULL, 'Yes', '2018-09-17 23:07:44', '2018-09-17 23:07:44'),
(858, 1, 5, 13, 92, 2, NULL, 'The term “New Systematics” was introduced by (1988)', 'Bentham and Hooker ', 'Linnaeus ', 'Julian  Huxley', 'A.P. de Candolle', NULL, NULL, '4.00', '1.00', NULL, '  (c) : The term “New Systematics” was given by  Julian  Huxley  (1940). This  classification takes into  account  the  cytological, morphological,  genetical,  anatomical,  palynological  and  physiological  characters.', '3', NULL, NULL, 'Yes', '2018-09-17 23:07:44', '2018-09-17 23:07:44'),
(859, 1, 5, 13, 92, 2, NULL, 'Static concept of species was put forward by (1988)', 'de Candolle', 'Linnaeus', 'Theophrastus', 'Darwin', NULL, NULL, '4.00', '1.00', NULL, NULL, '3', NULL, NULL, 'Yes', '2018-09-17 23:07:44', '2018-09-17 23:07:44'),
(966, 1, 2, 1, 60, 2, NULL, '<p><img src=\"/img/Uploads/basic-concept-of-chemistry/Question/10.PNG\" alt=\"\" width=\"524\" height=\"96\" /></p>', '<p><img src=\"/img/Uploads/basic-concept-of-chemistry/Options/10a.JPG\" alt=\"\" width=\"54\" height=\"27\" /></p>', '<p><img src=\"/img/Uploads/basic-concept-of-chemistry/Options/10b.JPG\" alt=\"\" width=\"64\" height=\"31\" /></p>', '<p><img src=\"/img/Uploads/basic-concept-of-chemistry/Options/10b.JPG\" alt=\"\" width=\"64\" height=\"31\" /></p>', '<p><img src=\"/img/Uploads/basic-concept-of-chemistry/Options/10d.JPG\" alt=\"\" width=\"83\" height=\"34\" /></p>', NULL, NULL, '4.00', '1.00', NULL, '<p><img src=\"/img/Uploads/basic-concept-of-chemistry/Explanation/10.PNG\" alt=\"\" width=\"496\" height=\"120\" /></p>', '2', NULL, NULL, 'Yes', '2018-09-19 15:22:13', '2018-09-19 15:22:13'),
(967, 1, 2, 1, 60, 2, NULL, '<p><img src=\"/img/Uploads/basic-concept-of-chemistry/Question/9.PNG\" alt=\"\" width=\"524\" height=\"96\" /></p>', '<p><img src=\"/img/Uploads/basic-concept-of-chemistry/Options/9a.JPG\" alt=\"\" width=\"54\" height=\"27\" /></p>', '<p><img src=\"/img/Uploads/basic-concept-of-chemistry/Options/9b.JPG\" alt=\"\" width=\"64\" height=\"31\" /></p>', '<p><img src=\"/img/Uploads/basic-concept-of-chemistry/Options/9b.JPG\" alt=\"\" width=\"64\" height=\"31\" /></p>', '<p><img src=\"/img/Uploads/basic-concept-of-chemistry/Options/9d.JPG\" alt=\"\" width=\"83\" height=\"34\" /></p>', NULL, NULL, '4.00', '1.00', NULL, '<p><img src=\"/img/Uploads/basic-concept-of-chemistry/Explanation/9.PNG\" alt=\"\" width=\"496\" height=\"120\" /></p>', '4', NULL, NULL, 'Yes', '2018-09-19 15:22:13', '2018-09-19 15:22:13'),
(968, 1, 2, 1, 60, 2, NULL, '<p><img src=\"/img/Uploads/basic-concept-of-chemistry/Question/8.PNG\" alt=\"\" width=\"524\" height=\"96\" /></p>', '<p><img src=\"/img/Uploads/basic-concept-of-chemistry/Options/8a.JPG\" alt=\"\" width=\"54\" height=\"27\" /></p>', '<p><img src=\"/img/Uploads/basic-concept-of-chemistry/Options/8b.JPG\" alt=\"\" width=\"64\" height=\"31\" /></p>', '<p><img src=\"/img/Uploads/basic-concept-of-chemistry/Options/8c.JPG\" alt=\"\" width=\"53\" height=\"24\" /></p>', '<p><img src=\"/img/Uploads/basic-concept-of-chemistry/Options/8d.JPG\" alt=\"\" width=\"83\" height=\"34\" /></p>', NULL, NULL, '4.00', '1.00', NULL, '<p><img src=\"/img/Uploads/basic-concept-of-chemistry/Explanation/8.PNG\" alt=\"\" width=\"496\" height=\"120\" /></p>', '1', NULL, NULL, 'Yes', '2018-09-19 15:22:13', '2018-09-19 15:22:13'),
(969, 1, 2, 1, 60, 2, NULL, '<p><img src=\"/img/Uploads/basic-concept-of-chemistry/Question/7.PNG\" alt=\"\" width=\"524\" height=\"96\" /></p>', '<p><img src=\"/img/Uploads/basic-concept-of-chemistry/Options/7a.JPG\" alt=\"\" width=\"54\" height=\"27\" /></p>', '<p><img src=\"/img/Uploads/basic-concept-of-chemistry/Options/7b.JPG\" alt=\"\" width=\"64\" height=\"31\" /></p>', '<p><img src=\"/img/Uploads/basic-concept-of-chemistry/Options/7c.JPG\" alt=\"\" width=\"53\" height=\"24\" /></p>', '<p><img src=\"/img/Uploads/basic-concept-of-chemistry/Options/7d.JPG\" alt=\"\" width=\"83\" height=\"34\" /></p>', NULL, NULL, '4.00', '1.00', NULL, '<p><img src=\"/img/Uploads/basic-concept-of-chemistry/Explanation/7.PNG\" alt=\"\" width=\"496\" height=\"120\" /></p>', '1', NULL, NULL, 'Yes', '2018-09-19 15:22:13', '2018-09-19 15:22:13'),
(970, 1, 2, 1, 60, 2, NULL, '<p><img src=\"/img/Uploads/basic-concept-of-chemistry/Question/6.PNG\" alt=\"\" width=\"524\" height=\"96\" /></p>', '<p><img src=\"/img/Uploads/basic-concept-of-chemistry/Options/6a.JPG\" alt=\"\" width=\"54\" height=\"27\" /></p>', '<p><img src=\"/img/Uploads/basic-concept-of-chemistry/Options/6b.JPG\" alt=\"\" width=\"64\" height=\"31\" /></p>', '<p><img src=\"/img/Uploads/basic-concept-of-chemistry/Options/6c.JPG\" alt=\"\" width=\"53\" height=\"24\" /></p>', '<p><img src=\"/img/Uploads/basic-concept-of-chemistry/Options/6d.JPG\" alt=\"\" width=\"83\" height=\"34\" /></p>', NULL, NULL, '4.00', '1.00', NULL, '<p><img src=\"/img/Uploads/basic-concept-of-chemistry/Explanation/6.PNG\" alt=\"\" width=\"496\" height=\"120\" /></p>', '3', NULL, NULL, 'Yes', '2018-09-19 15:22:13', '2018-09-19 15:22:13'),
(971, 1, 2, 1, 60, 2, NULL, '<p><img src=\"/img/Uploads/basic-concept-of-chemistry/Question/5.PNG\" alt=\"\" width=\"524\" height=\"96\" /></p>', '<p><img src=\"/img/Uploads/basic-concept-of-chemistry/Options/5a.JPG\" alt=\"\" width=\"54\" height=\"27\" /></p>', '<p><img src=\"/img/Uploads/basic-concept-of-chemistry/Options/5b.JPG\" alt=\"\" width=\"64\" height=\"31\" /></p>', '<p><img src=\"/img/Uploads/basic-concept-of-chemistry/Options/5c.JPG\" alt=\"\" width=\"53\" height=\"24\" /></p>', '<p><img src=\"/img/Uploads/basic-concept-of-chemistry/Options/5d.JPG\" alt=\"\" width=\"83\" height=\"34\" /></p>', NULL, NULL, '4.00', '1.00', NULL, '<p><img src=\"/img/Uploads/basic-concept-of-chemistry/Explanation/5.PNG\" alt=\"\" width=\"496\" height=\"120\" /></p>', '4', NULL, NULL, 'Yes', '2018-09-19 15:22:13', '2018-09-19 15:22:13'),
(972, 1, 2, 1, 60, 2, NULL, '<p><img src=\"/img/Uploads/basic-concept-of-chemistry/Question/4.PNG\" alt=\"\" width=\"524\" height=\"96\" /></p>', '<p><img src=\"/img/Uploads/basic-concept-of-chemistry/Options/4a.JPG\" alt=\"\" width=\"54\" height=\"27\" /></p>', '<p><img src=\"/img/Uploads/basic-concept-of-chemistry/Options/4b.JPG\" alt=\"\" width=\"64\" height=\"31\" /></p>', '<p><img src=\"/img/Uploads/basic-concept-of-chemistry/Options/4c.JPG\" alt=\"\" width=\"53\" height=\"24\" /></p>', '<p><img src=\"/img/Uploads/basic-concept-of-chemistry/Options/4d.JPG\" alt=\"\" width=\"83\" height=\"34\" /></p>', NULL, NULL, '4.00', '1.00', NULL, '<p><img src=\"/img/Uploads/basic-concept-of-chemistry/Explanation/4.PNG\" alt=\"\" width=\"496\" height=\"120\" /></p>', '3', NULL, NULL, 'Yes', '2018-09-19 15:22:13', '2018-09-19 15:22:13'),
(973, 1, 2, 1, 60, 2, NULL, '<p><img src=\"/img/Uploads/basic-concept-of-chemistry/Question/3.PNG\" alt=\"\" width=\"524\" height=\"96\" /></p>', '<p><img src=\"/img/Uploads/basic-concept-of-chemistry/Options/3a.JPG\" alt=\"\" width=\"54\" height=\"27\" /></p>', '<p><img src=\"/img/Uploads/basic-concept-of-chemistry/Options/3b.JPG\" alt=\"\" width=\"64\" height=\"31\" /></p>', '<p><img src=\"/img/Uploads/basic-concept-of-chemistry/Options/3c.JPG\" alt=\"\" width=\"53\" height=\"24\" /></p>', '<p><img src=\"/img/Uploads/basic-concept-of-chemistry/Options/3d.JPG\" alt=\"\" width=\"83\" height=\"34\" /></p>', NULL, NULL, '4.00', '1.00', NULL, '<p><img src=\"/img/Uploads/basic-concept-of-chemistry/Explanation/3.PNG\" alt=\"\" width=\"496\" height=\"120\" /></p>', '1', NULL, NULL, 'Yes', '2018-09-19 15:22:13', '2018-09-19 15:22:13'),
(974, 1, 2, 1, 60, 2, NULL, '<p><img src=\"/img/Uploads/basic-concept-of-chemistry/Question/2.PNG\" alt=\"\" width=\"524\" height=\"96\" /></p>', '<p><img src=\"/img/Uploads/basic-concept-of-chemistry/Options/2a.JPG\" alt=\"\" width=\"54\" height=\"27\" /></p>', '<p><img src=\"/img/Uploads/basic-concept-of-chemistry/Options/2b.JPG\" alt=\"\" width=\"64\" height=\"31\" /></p>', '<p><img src=\"/img/Uploads/basic-concept-of-chemistry/Options/2c.JPG\" alt=\"\" width=\"53\" height=\"24\" /></p>', '<p><img src=\"/img/Uploads/basic-concept-of-chemistry/Options/2d.JPG\" alt=\"\" width=\"83\" height=\"34\" /></p>', NULL, NULL, '4.00', '1.00', NULL, '<p><img src=\"/img/Uploads/basic-concept-of-chemistry/Explanation/2.PNG\" alt=\"\" width=\"496\" height=\"120\" /></p>', '2', NULL, NULL, 'Yes', '2018-09-19 15:22:13', '2018-09-19 15:22:13'),
(975, 1, 2, 1, 60, 2, NULL, '<p><img src=\"/img/Uploads/basic-concept-of-chemistry/Question/1.PNG\" alt=\"\" width=\"524\" height=\"96\" /></p>', '<p><img src=\"/img/Uploads/basic-concept-of-chemistry/Options/1a.JPG\" alt=\"\" width=\"54\" height=\"27\" /></p>', '<p><img src=\"/img/Uploads/basic-concept-of-chemistry/Options/1b.JPG\" alt=\"\" width=\"64\" height=\"31\" /></p>', '<p><img src=\"/img/Uploads/basic-concept-of-chemistry/Options/1c.JPG\" alt=\"\" width=\"53\" height=\"24\" /></p>', '<p><img src=\"/img/Uploads/basic-concept-of-chemistry/Options/1d.JPG\" alt=\"\" width=\"83\" height=\"34\" /></p>', NULL, NULL, '4.00', '1.00', NULL, '<p><img src=\"/img/Uploads/basic-concept-of-chemistry/Explanation/1.PNG\" alt=\"\" width=\"496\" height=\"120\" /></p>', '1', NULL, NULL, 'Yes', '2018-09-19 15:22:13', '2018-09-19 15:22:13'),
(976, 1, 2, 1, 60, 2, NULL, '<p><img src=\"/img/Uploads/basic-concept-of-chemistry/Question/20.PNG\" alt=\"\" width=\"524\" height=\"96\" /></p>', '<p><img src=\"/img/Uploads/basic-concept-of-chemistry/Options/20a.JPG\" alt=\"\" width=\"54\" height=\"27\" /></p>', '<p><img src=\"/img/Uploads/basic-concept-of-chemistry/Options/20b.JPG\" alt=\"\" width=\"64\" height=\"31\" /></p>', '<p><img src=\"/img/Uploads/basic-concept-of-chemistry/Options/20c.JPG\" alt=\"\" width=\"53\" height=\"24\" /></p>', '<p><img src=\"/img/Uploads/basic-concept-of-chemistry/Options/20d.JPG\" alt=\"\" width=\"83\" height=\"34\" /></p>', NULL, NULL, '4.00', '1.00', NULL, '<p><img src=\"/img/Uploads/basic-concept-of-chemistry/Explanation/20.PNG\" alt=\"\" width=\"496\" height=\"120\" /></p>', '2', NULL, NULL, 'Yes', '2018-09-19 15:22:30', '2018-09-19 15:22:30'),
(977, 1, 2, 1, 60, 2, NULL, '<p><img src=\"/img/Uploads/basic-concept-of-chemistry/Question/19.PNG\" alt=\"\" width=\"524\" height=\"96\" /></p>', '<p><img src=\"/img/Uploads/basic-concept-of-chemistry/Options/19a.JPG\" alt=\"\" width=\"54\" height=\"27\" /></p>', '<p><img src=\"/img/Uploads/basic-concept-of-chemistry/Options/19b.JPG\" alt=\"\" width=\"64\" height=\"31\" /></p>', '<p><img src=\"/img/Uploads/basic-concept-of-chemistry/Options/19c.JPG\" alt=\"\" width=\"53\" height=\"24\" /></p>', '<p><img src=\"/img/Uploads/basic-concept-of-chemistry/Options/19d.JPG\" alt=\"\" width=\"83\" height=\"34\" /></p>', NULL, NULL, '4.00', '1.00', NULL, '<p><img src=\"/img/Uploads/basic-concept-of-chemistry/Explanation/19.PNG\" alt=\"\" width=\"496\" height=\"120\" /></p>', '1', NULL, NULL, 'Yes', '2018-09-19 15:22:30', '2018-09-19 15:22:30'),
(978, 1, 2, 1, 60, 2, NULL, '<p><img src=\"/img/Uploads/basic-concept-of-chemistry/Question/18.PNG\" alt=\"\" width=\"524\" height=\"96\" /></p>', '<p><img src=\"/img/Uploads/basic-concept-of-chemistry/Options/18a.JPG\" alt=\"\" width=\"54\" height=\"27\" /></p>', '<p><img src=\"/img/Uploads/basic-concept-of-chemistry/Options/18b.JPG\" alt=\"\" width=\"64\" height=\"31\" /></p>', '<p><img src=\"/img/Uploads/basic-concept-of-chemistry/Options/18c.JPG\" alt=\"\" width=\"53\" height=\"24\" /></p>', '<p><img src=\"/img/Uploads/basic-concept-of-chemistry/Options/18d.JPG\" alt=\"\" width=\"83\" height=\"34\" /></p>', NULL, NULL, '4.00', '1.00', NULL, '<p><img src=\"/img/Uploads/basic-concept-of-chemistry/Explanation/18.PNG\" alt=\"\" width=\"496\" height=\"120\" /></p>', '4', NULL, NULL, 'Yes', '2018-09-19 15:22:30', '2018-09-19 15:22:30'),
(979, 1, 2, 1, 60, 2, NULL, '<p><img src=\"/img/Uploads/basic-concept-of-chemistry/Question/17.PNG\" alt=\"\" width=\"524\" height=\"96\" /></p>', '<p><img src=\"/img/Uploads/basic-concept-of-chemistry/Options/17a.JPG\" alt=\"\" width=\"54\" height=\"27\" /></p>', '<p><img src=\"/img/Uploads/basic-concept-of-chemistry/Options/17b.JPG\" alt=\"\" width=\"64\" height=\"31\" /></p>', '<p><img src=\"/img/Uploads/basic-concept-of-chemistry/Options/17c.JPG\" alt=\"\" width=\"53\" height=\"24\" /></p>', '<p><img src=\"/img/Uploads/basic-concept-of-chemistry/Options/17d.JPG\" alt=\"\" width=\"83\" height=\"34\" /></p>', NULL, NULL, '4.00', '1.00', NULL, '<p><img src=\"/img/Uploads/basic-concept-of-chemistry/Explanation/17.PNG\" alt=\"\" width=\"496\" height=\"120\" /></p>', '3', NULL, NULL, 'Yes', '2018-09-19 15:22:30', '2018-09-19 15:22:30'),
(980, 1, 2, 1, 60, 2, NULL, '<p><img src=\"/img/Uploads/basic-concept-of-chemistry/Question/16.PNG\" alt=\"\" width=\"524\" height=\"96\" /></p>', '<p><img src=\"/img/Uploads/basic-concept-of-chemistry/Options/16a.JPG\" alt=\"\" width=\"54\" height=\"27\" /></p>', '<p><img src=\"/img/Uploads/basic-concept-of-chemistry/Options/16b.JPG\" alt=\"\" width=\"64\" height=\"31\" /></p>', '<p><img src=\"/img/Uploads/basic-concept-of-chemistry/Options/16c.JPG\" alt=\"\" width=\"53\" height=\"24\" /></p>', '<p><img src=\"/img/Uploads/basic-concept-of-chemistry/Options/16d.JPG\" alt=\"\" width=\"83\" height=\"34\" /></p>', NULL, NULL, '4.00', '1.00', NULL, '<p><img src=\"/img/Uploads/basic-concept-of-chemistry/Explanation/16.PNG\" alt=\"\" width=\"496\" height=\"120\" /></p>', '2', NULL, NULL, 'Yes', '2018-09-19 15:22:30', '2018-09-19 15:22:30'),
(981, 1, 2, 1, 60, 2, NULL, '<p><img src=\"/img/Uploads/basic-concept-of-chemistry/Question/15.PNG\" alt=\"\" width=\"524\" height=\"96\" /></p>', '<p><img src=\"/img/Uploads/basic-concept-of-chemistry/Options/15a.JPG\" alt=\"\" width=\"54\" height=\"27\" /></p>', '<p><img src=\"/img/Uploads/basic-concept-of-chemistry/Options/15b.JPG\" alt=\"\" width=\"64\" height=\"31\" /></p>', '<p><img src=\"/img/Uploads/basic-concept-of-chemistry/Options/15c.JPG\" alt=\"\" width=\"53\" height=\"24\" /></p>', '<p><img src=\"/img/Uploads/basic-concept-of-chemistry/Options/15d.JPG\" alt=\"\" width=\"83\" height=\"34\" /></p>', NULL, NULL, '4.00', '1.00', NULL, '<p><img src=\"/img/Uploads/basic-concept-of-chemistry/Explanation/15.PNG\" alt=\"\" width=\"496\" height=\"120\" /></p>', '1', NULL, NULL, 'Yes', '2018-09-19 15:22:30', '2018-09-19 15:22:30'),
(982, 1, 2, 1, 60, 2, NULL, '<p><img src=\"/img/Uploads/basic-concept-of-chemistry/Question/14.PNG\" alt=\"\" width=\"524\" height=\"96\" /></p>', '<p><img src=\"/img/Uploads/basic-concept-of-chemistry/Options/14a.JPG\" alt=\"\" width=\"54\" height=\"27\" /></p>', '<p><img src=\"/img/Uploads/basic-concept-of-chemistry/Options/14b.JPG\" alt=\"\" width=\"64\" height=\"31\" /></p>', '<p><img src=\"/img/Uploads/basic-concept-of-chemistry/Options/14c.JPG\" alt=\"\" width=\"53\" height=\"24\" /></p>', '<p><img src=\"/img/Uploads/basic-concept-of-chemistry/Options/14d.JPG\" alt=\"\" width=\"83\" height=\"34\" /></p>', NULL, NULL, '4.00', '1.00', NULL, '<p><img src=\"/img/Uploads/basic-concept-of-chemistry/Explanation/14.PNG\" alt=\"\" width=\"496\" height=\"120\" /></p>', '2', NULL, NULL, 'Yes', '2018-09-19 15:22:30', '2018-09-19 15:22:30'),
(983, 1, 2, 1, 60, 2, NULL, '<p><img src=\"/img/Uploads/basic-concept-of-chemistry/Question/13.PNG\" alt=\"\" width=\"524\" height=\"96\" /></p>', '<p><img src=\"/img/Uploads/basic-concept-of-chemistry/Options/13a.JPG\" alt=\"\" width=\"54\" height=\"27\" /></p>', '<p><img src=\"/img/Uploads/basic-concept-of-chemistry/Options/13b.JPG\" alt=\"\" width=\"64\" height=\"31\" /></p>', '<p><img src=\"/img/Uploads/basic-concept-of-chemistry/Options/13c.JPG\" alt=\"\" width=\"53\" height=\"24\" /></p>', '<p><img src=\"/img/Uploads/basic-concept-of-chemistry/Options/13d.JPG\" alt=\"\" width=\"83\" height=\"34\" /></p>', NULL, NULL, '4.00', '1.00', NULL, '<p><img src=\"/img/Uploads/basic-concept-of-chemistry/Explanation/13.PNG\" alt=\"\" width=\"496\" height=\"120\" /></p>', '2', NULL, NULL, 'Yes', '2018-09-19 15:22:30', '2018-09-19 15:22:30'),
(984, 1, 2, 1, 60, 2, NULL, '<p><img src=\"/img/Uploads/basic-concept-of-chemistry/Question/12.PNG\" alt=\"\" width=\"524\" height=\"96\" /></p>', '<p><img src=\"/img/Uploads/basic-concept-of-chemistry/Options/12a.JPG\" alt=\"\" width=\"54\" height=\"27\" /></p>', '<p><img src=\"/img/Uploads/basic-concept-of-chemistry/Options/12b.JPG\" alt=\"\" width=\"64\" height=\"31\" /></p>', '<p><img src=\"/img/Uploads/basic-concept-of-chemistry/Options/12c.JPG\" alt=\"\" width=\"53\" height=\"24\" /></p>', '<p><img src=\"/img/Uploads/basic-concept-of-chemistry/Options/12d.JPG\" alt=\"\" width=\"83\" height=\"34\" /></p>', NULL, NULL, '4.00', '1.00', NULL, '<p><img src=\"/img/Uploads/basic-concept-of-chemistry/Explanation/12.PNG\" alt=\"\" width=\"496\" height=\"120\" /></p>', '2', NULL, NULL, 'Yes', '2018-09-19 15:22:30', '2018-09-19 15:22:30'),
(985, 1, 2, 1, 60, 2, NULL, '<p><img src=\"/img/Uploads/basic-concept-of-chemistry/Question/11.PNG\" alt=\"\" width=\"524\" height=\"96\" /></p>', '<p><img src=\"/img/Uploads/basic-concept-of-chemistry/Options/11a.JPG\" alt=\"\" width=\"54\" height=\"27\" /></p>', '<p><img src=\"/img/Uploads/basic-concept-of-chemistry/Options/11b.JPG\" alt=\"\" width=\"64\" height=\"31\" /></p>', '<p><img src=\"/img/Uploads/basic-concept-of-chemistry/Options/11c.JPG\" alt=\"\" width=\"53\" height=\"24\" /></p>', '<p><img src=\"/img/Uploads/basic-concept-of-chemistry/Options/11d.JPG\" alt=\"\" width=\"83\" height=\"34\" /></p>', NULL, NULL, '4.00', '1.00', NULL, '<p><img src=\"/img/Uploads/basic-concept-of-chemistry/Explanation/11.PNG\" alt=\"\" width=\"496\" height=\"120\" /></p>', '3', NULL, NULL, 'Yes', '2018-09-19 15:22:30', '2018-09-19 15:22:30'),
(986, 1, 2, 1, 60, 2, NULL, '<p><img src=\"/img/Uploads/basic-concept-of-chemistry/Question/30.PNG\" alt=\"\" width=\"524\" height=\"96\" /></p>', '<p><img src=\"/img/Uploads/basic-concept-of-chemistry/Options/30a.JPG\" alt=\"\" width=\"54\" height=\"27\" /></p>', '<p><img src=\"/img/Uploads/basic-concept-of-chemistry/Options/30b.JPG\" alt=\"\" width=\"64\" height=\"31\" /></p>', '<p><img src=\"/img/Uploads/basic-concept-of-chemistry/Options/30c.JPG\" alt=\"\" width=\"53\" height=\"24\" /></p>', '<p><img src=\"/img/Uploads/basic-concept-of-chemistry/Options/30d.JPG\" alt=\"\" width=\"83\" height=\"34\" /></p>', NULL, NULL, '4.00', '1.00', NULL, '<p><img src=\"/img/Uploads/basic-concept-of-chemistry/Explanation/30.PNG\" alt=\"\" width=\"496\" height=\"120\" /></p>', '1', NULL, NULL, 'Yes', '2018-09-19 15:22:47', '2018-09-19 15:22:47'),
(987, 1, 2, 1, 60, 2, NULL, '<p><img src=\"/img/Uploads/basic-concept-of-chemistry/Question/29.PNG\" alt=\"\" width=\"524\" height=\"96\" /></p>', '<p><img src=\"/img/Uploads/basic-concept-of-chemistry/Options/29a.JPG\" alt=\"\" width=\"54\" height=\"27\" /></p>', '<p><img src=\"/img/Uploads/basic-concept-of-chemistry/Options/29b.JPG\" alt=\"\" width=\"64\" height=\"31\" /></p>', '<p><img src=\"/img/Uploads/basic-concept-of-chemistry/Options/29c.JPG\" alt=\"\" width=\"53\" height=\"24\" /></p>', '<p><img src=\"/img/Uploads/basic-concept-of-chemistry/Options/29d.JPG\" alt=\"\" width=\"83\" height=\"34\" /></p>', NULL, NULL, '4.00', '1.00', NULL, '<p><img src=\"/img/Uploads/basic-concept-of-chemistry/Explanation/29.PNG\" alt=\"\" width=\"496\" height=\"120\" /></p>', '1', NULL, NULL, 'Yes', '2018-09-19 15:22:47', '2018-09-19 15:22:47'),
(988, 1, 2, 1, 60, 2, NULL, '<p><img src=\"/img/Uploads/basic-concept-of-chemistry/Question/28.PNG\" alt=\"\" width=\"524\" height=\"96\" /></p>', '<p><img src=\"/img/Uploads/basic-concept-of-chemistry/Options/28a.JPG\" alt=\"\" width=\"54\" height=\"27\" /></p>', '<p><img src=\"/img/Uploads/basic-concept-of-chemistry/Options/28b.JPG\" alt=\"\" width=\"64\" height=\"31\" /></p>', '<p><img src=\"/img/Uploads/basic-concept-of-chemistry/Options/28c.JPG\" alt=\"\" width=\"53\" height=\"24\" /></p>', '<p><img src=\"/img/Uploads/basic-concept-of-chemistry/Options/28d.JPG\" alt=\"\" width=\"83\" height=\"34\" /></p>', NULL, NULL, '4.00', '1.00', NULL, '<p><img src=\"/img/Uploads/basic-concept-of-chemistry/Explanation/28.PNG\" alt=\"\" width=\"496\" height=\"120\" /></p>', '4', NULL, NULL, 'Yes', '2018-09-19 15:22:47', '2018-09-19 15:22:47'),
(989, 1, 2, 1, 60, 2, NULL, '<p><img src=\"/img/Uploads/basic-concept-of-chemistry/Question/27.PNG\" alt=\"\" width=\"524\" height=\"96\" /></p>', '<p><img src=\"/img/Uploads/basic-concept-of-chemistry/Options/27a.JPG\" alt=\"\" width=\"54\" height=\"27\" /></p>', '<p><img src=\"/img/Uploads/basic-concept-of-chemistry/Options/27b.JPG\" alt=\"\" width=\"64\" height=\"31\" /></p>', '<p><img src=\"/img/Uploads/basic-concept-of-chemistry/Options/27c.JPG\" alt=\"\" width=\"53\" height=\"24\" /></p>', '<p><img src=\"/img/Uploads/basic-concept-of-chemistry/Options/27d.JPG\" alt=\"\" width=\"83\" height=\"34\" /></p>', NULL, NULL, '4.00', '1.00', NULL, '<p><img src=\"/img/Uploads/basic-concept-of-chemistry/Explanation/27.PNG\" alt=\"\" width=\"496\" height=\"120\" /></p>', '1', NULL, NULL, 'Yes', '2018-09-19 15:22:47', '2018-09-19 15:22:47'),
(990, 1, 2, 1, 60, 2, NULL, '<p><img src=\"/img/Uploads/basic-concept-of-chemistry/Question/26.PNG\" alt=\"\" width=\"524\" height=\"96\" /></p>', '<p><img src=\"/img/Uploads/basic-concept-of-chemistry/Options/26a.JPG\" alt=\"\" width=\"54\" height=\"27\" /></p>', '<p><img src=\"/img/Uploads/basic-concept-of-chemistry/Options/26b.JPG\" alt=\"\" width=\"64\" height=\"31\" /></p>', '<p><img src=\"/img/Uploads/basic-concept-of-chemistry/Options/26c.JPG\" alt=\"\" width=\"53\" height=\"24\" /></p>', '<p><img src=\"/img/Uploads/basic-concept-of-chemistry/Options/26d.JPG\" alt=\"\" width=\"83\" height=\"34\" /></p>', NULL, NULL, '4.00', '1.00', NULL, '<p><img src=\"/img/Uploads/basic-concept-of-chemistry/Explanation/26.PNG\" alt=\"\" width=\"496\" height=\"120\" /></p>', '2', NULL, NULL, 'Yes', '2018-09-19 15:22:47', '2018-09-19 15:22:47'),
(991, 1, 2, 1, 60, 2, NULL, '<p><img src=\"/img/Uploads/basic-concept-of-chemistry/Question/25.PNG\" alt=\"\" width=\"524\" height=\"96\" /></p>', '<p><img src=\"/img/Uploads/basic-concept-of-chemistry/Options/25a.JPG\" alt=\"\" width=\"54\" height=\"27\" /></p>', '<p><img src=\"/img/Uploads/basic-concept-of-chemistry/Options/25b.JPG\" alt=\"\" width=\"64\" height=\"31\" /></p>', '<p><img src=\"/img/Uploads/basic-concept-of-chemistry/Options/25c.JPG\" alt=\"\" width=\"53\" height=\"24\" /></p>', '<p><img src=\"/img/Uploads/basic-concept-of-chemistry/Options/25d.JPG\" alt=\"\" width=\"83\" height=\"34\" /></p>', NULL, NULL, '4.00', '1.00', NULL, '<p><img src=\"/img/Uploads/basic-concept-of-chemistry/Explanation/25.PNG\" alt=\"\" width=\"496\" height=\"120\" /></p>', '2', NULL, NULL, 'Yes', '2018-09-19 15:22:47', '2018-09-19 15:22:47'),
(992, 1, 2, 1, 60, 2, NULL, '<p><img src=\"/img/Uploads/basic-concept-of-chemistry/Question/24.PNG\" alt=\"\" width=\"524\" height=\"96\" /></p>', '<p><img src=\"/img/Uploads/basic-concept-of-chemistry/Options/24a.JPG\" alt=\"\" width=\"54\" height=\"27\" /></p>', '<p><img src=\"/img/Uploads/basic-concept-of-chemistry/Options/24b.JPG\" alt=\"\" width=\"64\" height=\"31\" /></p>', '<p><img src=\"/img/Uploads/basic-concept-of-chemistry/Options/24c.JPG\" alt=\"\" width=\"53\" height=\"24\" /></p>', '<p><img src=\"/img/Uploads/basic-concept-of-chemistry/Options/24d.JPG\" alt=\"\" width=\"83\" height=\"34\" /></p>', NULL, NULL, '4.00', '1.00', NULL, '<p><img src=\"/img/Uploads/basic-concept-of-chemistry/Explanation/24.PNG\" alt=\"\" width=\"496\" height=\"120\" /></p>', '3', NULL, NULL, 'Yes', '2018-09-19 15:22:47', '2018-09-19 15:22:47'),
(993, 1, 2, 1, 60, 2, NULL, '<p><img src=\"/img/Uploads/basic-concept-of-chemistry/Question/23.PNG\" alt=\"\" width=\"524\" height=\"96\" /></p>', '<p><img src=\"/img/Uploads/basic-concept-of-chemistry/Options/23a.JPG\" alt=\"\" width=\"54\" height=\"27\" /></p>', '<p><img src=\"/img/Uploads/basic-concept-of-chemistry/Options/23b.JPG\" alt=\"\" width=\"64\" height=\"31\" /></p>', '<p><img src=\"/img/Uploads/basic-concept-of-chemistry/Options/23c.JPG\" alt=\"\" width=\"53\" height=\"24\" /></p>', '<p><img src=\"/img/Uploads/basic-concept-of-chemistry/Options/23d.JPG\" alt=\"\" width=\"83\" height=\"34\" /></p>', NULL, NULL, '4.00', '1.00', NULL, '<p><img src=\"/img/Uploads/basic-concept-of-chemistry/Explanation/23.PNG\" alt=\"\" width=\"496\" height=\"120\" /></p>', '1', NULL, NULL, 'Yes', '2018-09-19 15:22:47', '2018-09-19 15:22:47'),
(994, 1, 2, 1, 60, 2, NULL, '<p><img src=\"/img/Uploads/basic-concept-of-chemistry/Question/22.PNG\" alt=\"\" width=\"524\" height=\"96\" /></p>', '<p><img src=\"/img/Uploads/basic-concept-of-chemistry/Options/22a.JPG\" alt=\"\" width=\"54\" height=\"27\" /></p>', '<p><img src=\"/img/Uploads/basic-concept-of-chemistry/Options/22b.JPG\" alt=\"\" width=\"64\" height=\"31\" /></p>', '<p><img src=\"/img/Uploads/basic-concept-of-chemistry/Options/22c.JPG\" alt=\"\" width=\"53\" height=\"24\" /></p>', '<p><img src=\"/img/Uploads/basic-concept-of-chemistry/Options/22d.JPG\" alt=\"\" width=\"83\" height=\"34\" /></p>', NULL, NULL, '4.00', '1.00', NULL, '<p><img src=\"/img/Uploads/basic-concept-of-chemistry/Explanation/22.PNG\" alt=\"\" width=\"496\" height=\"120\" /></p>', '3', NULL, NULL, 'Yes', '2018-09-19 15:22:47', '2018-09-19 15:22:47'),
(995, 1, 2, 1, 60, 2, NULL, '<p><img src=\"/img/Uploads/basic-concept-of-chemistry/Question/21.PNG\" alt=\"\" width=\"524\" height=\"96\" /></p>', '<p><img src=\"/img/Uploads/basic-concept-of-chemistry/Options/21a.JPG\" alt=\"\" width=\"54\" height=\"27\" /></p>', '<p><img src=\"/img/Uploads/basic-concept-of-chemistry/Options/21b.JPG\" alt=\"\" width=\"64\" height=\"31\" /></p>', '<p><img src=\"/img/Uploads/basic-concept-of-chemistry/Options/21c.JPG\" alt=\"\" width=\"53\" height=\"24\" /></p>', '<p><img src=\"/img/Uploads/basic-concept-of-chemistry/Options/21d.JPG\" alt=\"\" width=\"83\" height=\"34\" /></p>', NULL, NULL, '4.00', '1.00', NULL, '<p><img src=\"/img/Uploads/basic-concept-of-chemistry/Explanation/21.PNG\" alt=\"\" width=\"496\" height=\"120\" /></p>', '1', NULL, NULL, 'Yes', '2018-09-19 15:22:47', '2018-09-19 15:22:47'),
(996, 1, 2, 1, 60, 2, NULL, '<p><img src=\"/img/Uploads/basic-concept-of-chemistry/Question/40.PNG\" alt=\"\" width=\"524\" height=\"96\" /></p>', '<p><img src=\"/img/Uploads/basic-concept-of-chemistry/Options/40a.JPG\" alt=\"\" width=\"54\" height=\"27\" /></p>', '<p><img src=\"/img/Uploads/basic-concept-of-chemistry/Options/40b.JPG\" alt=\"\" width=\"64\" height=\"31\" /></p>', '<p><img src=\"/img/Uploads/basic-concept-of-chemistry/Options/40c.JPG\" alt=\"\" width=\"53\" height=\"24\" /></p>', '<p><img src=\"/img/Uploads/basic-concept-of-chemistry/Options/40d.JPG\" alt=\"\" width=\"83\" height=\"34\" /></p>', NULL, NULL, '4.00', '1.00', NULL, '<p><img src=\"/img/Uploads/basic-concept-of-chemistry/Explanation/40.PNG\" alt=\"\" width=\"496\" height=\"120\" /></p>', '3', NULL, NULL, 'Yes', '2018-09-19 15:23:06', '2018-09-19 15:23:06'),
(997, 1, 2, 1, 60, 2, NULL, '<p><img src=\"/img/Uploads/basic-concept-of-chemistry/Question/39.PNG\" alt=\"\" width=\"524\" height=\"96\" /></p>', '<p><img src=\"/img/Uploads/basic-concept-of-chemistry/Options/39a.JPG\" alt=\"\" width=\"54\" height=\"27\" /></p>', '<p><img src=\"/img/Uploads/basic-concept-of-chemistry/Options/39b.JPG\" alt=\"\" width=\"64\" height=\"31\" /></p>', '<p><img src=\"/img/Uploads/basic-concept-of-chemistry/Options/39c.JPG\" alt=\"\" width=\"53\" height=\"24\" /></p>', '<p><img src=\"/img/Uploads/basic-concept-of-chemistry/Options/39d.JPG\" alt=\"\" width=\"83\" height=\"34\" /></p>', NULL, NULL, '4.00', '1.00', NULL, '<p><img src=\"/img/Uploads/basic-concept-of-chemistry/Explanation/39.PNG\" alt=\"\" width=\"496\" height=\"120\" /></p>', '1', NULL, NULL, 'Yes', '2018-09-19 15:23:06', '2018-09-19 15:23:06'),
(998, 1, 2, 1, 60, 2, NULL, '<p><img src=\"/img/Uploads/basic-concept-of-chemistry/Question/38.PNG\" alt=\"\" width=\"524\" height=\"96\" /></p>', '<p><img src=\"/img/Uploads/basic-concept-of-chemistry/Options/38a.JPG\" alt=\"\" width=\"54\" height=\"27\" /></p>', '<p><img src=\"/img/Uploads/basic-concept-of-chemistry/Options/38b.JPG\" alt=\"\" width=\"64\" height=\"31\" /></p>', '<p><img src=\"/img/Uploads/basic-concept-of-chemistry/Options/38c.JPG\" alt=\"\" width=\"53\" height=\"24\" /></p>', '<p><img src=\"/img/Uploads/basic-concept-of-chemistry/Options/38d.JPG\" alt=\"\" width=\"83\" height=\"34\" /></p>', NULL, NULL, '4.00', '1.00', NULL, '<p><img src=\"/img/Uploads/basic-concept-of-chemistry/Explanation/38.PNG\" alt=\"\" width=\"496\" height=\"120\" /></p>', '2', NULL, NULL, 'Yes', '2018-09-19 15:23:06', '2018-09-19 15:23:06'),
(999, 1, 2, 1, 60, 2, NULL, '<p><img src=\"/img/Uploads/basic-concept-of-chemistry/Question/37.PNG\" alt=\"\" width=\"524\" height=\"96\" /></p>', '<p><img src=\"/img/Uploads/basic-concept-of-chemistry/Options/37a.JPG\" alt=\"\" width=\"54\" height=\"27\" /></p>', '<p><img src=\"/img/Uploads/basic-concept-of-chemistry/Options/37b.JPG\" alt=\"\" width=\"64\" height=\"31\" /></p>', '<p><img src=\"/img/Uploads/basic-concept-of-chemistry/Options/37c.JPG\" alt=\"\" width=\"53\" height=\"24\" /></p>', '<p><img src=\"/img/Uploads/basic-concept-of-chemistry/Options/37d.JPG\" alt=\"\" width=\"83\" height=\"34\" /></p>', NULL, NULL, '4.00', '1.00', NULL, '<p><img src=\"/img/Uploads/basic-concept-of-chemistry/Explanation/37.PNG\" alt=\"\" width=\"496\" height=\"120\" /></p>', '1', NULL, NULL, 'Yes', '2018-09-19 15:23:06', '2018-09-19 15:23:06'),
(1000, 1, 2, 1, 60, 2, NULL, '<p><img src=\"/img/Uploads/basic-concept-of-chemistry/Question/36.PNG\" alt=\"\" width=\"524\" height=\"96\" /></p>', '<p><img src=\"/img/Uploads/basic-concept-of-chemistry/Options/36a.JPG\" alt=\"\" width=\"54\" height=\"27\" /></p>', '<p><img src=\"/img/Uploads/basic-concept-of-chemistry/Options/36b.JPG\" alt=\"\" width=\"64\" height=\"31\" /></p>', '<p><img src=\"/img/Uploads/basic-concept-of-chemistry/Options/36c.JPG\" alt=\"\" width=\"53\" height=\"24\" /></p>', '<p><img src=\"/img/Uploads/basic-concept-of-chemistry/Options/36d.JPG\" alt=\"\" width=\"83\" height=\"34\" /></p>', NULL, NULL, '4.00', '1.00', NULL, '<p><img src=\"/img/Uploads/basic-concept-of-chemistry/Explanation/36.PNG\" alt=\"\" width=\"496\" height=\"120\" /></p>', '3', NULL, NULL, 'Yes', '2018-09-19 15:23:06', '2018-09-19 15:23:06'),
(1001, 1, 2, 1, 60, 2, NULL, '<p><img src=\"/img/Uploads/basic-concept-of-chemistry/Question/35.PNG\" alt=\"\" width=\"524\" height=\"96\" /></p>', '<p><img src=\"/img/Uploads/basic-concept-of-chemistry/Options/35a.JPG\" alt=\"\" width=\"54\" height=\"27\" /></p>', '<p><img src=\"/img/Uploads/basic-concept-of-chemistry/Options/35b.JPG\" alt=\"\" width=\"64\" height=\"31\" /></p>', '<p><img src=\"/img/Uploads/basic-concept-of-chemistry/Options/35c.JPG\" alt=\"\" width=\"53\" height=\"24\" /></p>', '<p><img src=\"/img/Uploads/basic-concept-of-chemistry/Options/35d.JPG\" alt=\"\" width=\"83\" height=\"34\" /></p>', NULL, NULL, '4.00', '1.00', NULL, '<p><img src=\"/img/Uploads/basic-concept-of-chemistry/Explanation/35.PNG\" alt=\"\" width=\"496\" height=\"120\" /></p>', '1', NULL, NULL, 'Yes', '2018-09-19 15:23:06', '2018-09-19 15:23:06'),
(1002, 1, 2, 1, 60, 2, NULL, '<p><img src=\"/img/Uploads/basic-concept-of-chemistry/Question/34.PNG\" alt=\"\" width=\"524\" height=\"96\" /></p>', '<p><img src=\"/img/Uploads/basic-concept-of-chemistry/Options/34a.JPG\" alt=\"\" width=\"54\" height=\"27\" /></p>', '<p><img src=\"/img/Uploads/basic-concept-of-chemistry/Options/34b.JPG\" alt=\"\" width=\"64\" height=\"31\" /></p>', '<p><img src=\"/img/Uploads/basic-concept-of-chemistry/Options/34c.JPG\" alt=\"\" width=\"53\" height=\"24\" /></p>', '<p><img src=\"/img/Uploads/basic-concept-of-chemistry/Options/34d.JPG\" alt=\"\" width=\"83\" height=\"34\" /></p>', NULL, NULL, '4.00', '1.00', NULL, '<p><img src=\"/img/Uploads/basic-concept-of-chemistry/Explanation/34.PNG\" alt=\"\" width=\"496\" height=\"120\" /></p>', '2', NULL, NULL, 'Yes', '2018-09-19 15:23:06', '2018-09-19 15:23:06');
INSERT INTO `questions` (`id`, `qtype_id`, `subject_id`, `topic_id`, `stopic_id`, `diff_id`, `passage_id`, `question`, `option1`, `option2`, `option3`, `option4`, `option5`, `option6`, `marks`, `negative_marks`, `hint`, `explanation`, `answer`, `true_false`, `fill_blank`, `status`, `created`, `modified`) VALUES
(1003, 1, 2, 1, 60, 2, NULL, '<p><img src=\"/img/Uploads/basic-concept-of-chemistry/Question/33.PNG\" alt=\"\" width=\"524\" height=\"96\" /></p>', '<p><img src=\"/img/Uploads/basic-concept-of-chemistry/Options/33a.JPG\" alt=\"\" width=\"54\" height=\"27\" /></p>', '<p><img src=\"/img/Uploads/basic-concept-of-chemistry/Options/33b.JPG\" alt=\"\" width=\"64\" height=\"31\" /></p>', '<p><img src=\"/img/Uploads/basic-concept-of-chemistry/Options/33c.JPG\" alt=\"\" width=\"53\" height=\"24\" /></p>', '<p><img src=\"/img/Uploads/basic-concept-of-chemistry/Options/33d.JPG\" alt=\"\" width=\"83\" height=\"34\" /></p>', NULL, NULL, '4.00', '1.00', NULL, '<p><img src=\"/img/Uploads/basic-concept-of-chemistry/Explanation/33.PNG\" alt=\"\" width=\"496\" height=\"120\" /></p>', '3', NULL, NULL, 'Yes', '2018-09-19 15:23:06', '2018-09-19 15:23:06'),
(1004, 1, 2, 1, 60, 2, NULL, '<p><img src=\"/img/Uploads/basic-concept-of-chemistry/Question/32.PNG\" alt=\"\" width=\"524\" height=\"96\" /></p>', '<p><img src=\"/img/Uploads/basic-concept-of-chemistry/Options/32a.JPG\" alt=\"\" width=\"54\" height=\"27\" /></p>', '<p><img src=\"/img/Uploads/basic-concept-of-chemistry/Options/32b.JPG\" alt=\"\" width=\"64\" height=\"31\" /></p>', '<p><img src=\"/img/Uploads/basic-concept-of-chemistry/Options/32c.JPG\" alt=\"\" width=\"53\" height=\"24\" /></p>', '<p><img src=\"/img/Uploads/basic-concept-of-chemistry/Options/32d.JPG\" alt=\"\" width=\"83\" height=\"34\" /></p>', NULL, NULL, '4.00', '1.00', NULL, '<p><img src=\"/img/Uploads/basic-concept-of-chemistry/Explanation/32.PNG\" alt=\"\" width=\"496\" height=\"120\" /></p>', '2', NULL, NULL, 'Yes', '2018-09-19 15:23:06', '2018-09-19 15:23:06'),
(1005, 1, 2, 1, 60, 2, NULL, '<p><img src=\"/img/Uploads/basic-concept-of-chemistry/Question/31.PNG\" alt=\"\" width=\"524\" height=\"96\" /></p>', '<p><img src=\"/img/Uploads/basic-concept-of-chemistry/Options/31a.JPG\" alt=\"\" width=\"54\" height=\"27\" /></p>', '<p><img src=\"/img/Uploads/basic-concept-of-chemistry/Options/31b.JPG\" alt=\"\" width=\"64\" height=\"31\" /></p>', '<p><img src=\"/img/Uploads/basic-concept-of-chemistry/Options/31c.JPG\" alt=\"\" width=\"53\" height=\"24\" /></p>', '<p><img src=\"/img/Uploads/basic-concept-of-chemistry/Options/31d.JPG\" alt=\"\" width=\"83\" height=\"34\" /></p>', NULL, NULL, '4.00', '1.00', NULL, '<p><img src=\"/img/Uploads/basic-concept-of-chemistry/Explanation/31.PNG\" alt=\"\" width=\"496\" height=\"120\" /></p>', '3', NULL, NULL, 'Yes', '2018-09-19 15:23:06', '2018-09-19 15:23:06'),
(1006, 1, 2, 1, 60, 2, NULL, '<p><img src=\"/img/Uploads/basic-concept-of-chemistry/Question/47.PNG\" alt=\"\" width=\"524\" height=\"96\" /></p>', '<p><img src=\"/img/Uploads/basic-concept-of-chemistry/Options/47a.JPG\" alt=\"\" width=\"54\" height=\"27\" /></p>', '<p><img src=\"/img/Uploads/basic-concept-of-chemistry/Options/47b.JPG\" alt=\"\" width=\"64\" height=\"31\" /></p>', '<p><img src=\"/img/Uploads/basic-concept-of-chemistry/Options/47c.JPG\" alt=\"\" width=\"53\" height=\"24\" /></p>', '<p><img src=\"/img/Uploads/basic-concept-of-chemistry/Options/47d.JPG\" alt=\"\" width=\"83\" height=\"34\" /></p>', NULL, NULL, '4.00', '1.00', NULL, '<p><img src=\"/img/Uploads/basic-concept-of-chemistry/Explanation/47.PNG\" alt=\"\" width=\"496\" height=\"120\" /></p>', '4', NULL, NULL, 'Yes', '2018-09-19 15:23:28', '2018-09-19 15:23:28'),
(1007, 1, 2, 1, 60, 2, NULL, '<p><img src=\"/img/Uploads/basic-concept-of-chemistry/Question/46.PNG\" alt=\"\" width=\"524\" height=\"96\" /></p>', '<p><img src=\"/img/Uploads/basic-concept-of-chemistry/Options/46a.JPG\" alt=\"\" width=\"54\" height=\"27\" /></p>', '<p><img src=\"/img/Uploads/basic-concept-of-chemistry/Options/46b.JPG\" alt=\"\" width=\"64\" height=\"31\" /></p>', '<p><img src=\"/img/Uploads/basic-concept-of-chemistry/Options/46c.JPG\" alt=\"\" width=\"53\" height=\"24\" /></p>', '<p><img src=\"/img/Uploads/basic-concept-of-chemistry/Options/46d.JPG\" alt=\"\" width=\"83\" height=\"34\" /></p>', NULL, NULL, '4.00', '1.00', NULL, '<p><img src=\"/img/Uploads/basic-concept-of-chemistry/Explanation/46.PNG\" alt=\"\" width=\"496\" height=\"120\" /></p>', '1', NULL, NULL, 'Yes', '2018-09-19 15:23:28', '2018-09-19 15:23:28'),
(1008, 1, 2, 1, 60, 2, NULL, '<p><img src=\"/img/Uploads/basic-concept-of-chemistry/Question/45.PNG\" alt=\"\" width=\"524\" height=\"96\" /></p>', '<p><img src=\"/img/Uploads/basic-concept-of-chemistry/Options/45a.JPG\" alt=\"\" width=\"54\" height=\"27\" /></p>', '<p><img src=\"/img/Uploads/basic-concept-of-chemistry/Options/45b.JPG\" alt=\"\" width=\"64\" height=\"31\" /></p>', '<p><img src=\"/img/Uploads/basic-concept-of-chemistry/Options/45c.JPG\" alt=\"\" width=\"53\" height=\"24\" /></p>', '<p><img src=\"/img/Uploads/basic-concept-of-chemistry/Options/45d.JPG\" alt=\"\" width=\"83\" height=\"34\" /></p>', NULL, NULL, '4.00', '1.00', NULL, '<p><img src=\"/img/Uploads/basic-concept-of-chemistry/Explanation/45.PNG\" alt=\"\" width=\"496\" height=\"120\" /></p>', '1', NULL, NULL, 'Yes', '2018-09-19 15:23:28', '2018-09-19 15:23:28'),
(1009, 1, 2, 1, 60, 2, NULL, '<p><img src=\"/img/Uploads/basic-concept-of-chemistry/Question/44.PNG\" alt=\"\" width=\"524\" height=\"96\" /></p>', '<p><img src=\"/img/Uploads/basic-concept-of-chemistry/Options/44a.JPG\" alt=\"\" width=\"54\" height=\"27\" /></p>', '<p><img src=\"/img/Uploads/basic-concept-of-chemistry/Options/44b.JPG\" alt=\"\" width=\"64\" height=\"31\" /></p>', '<p><img src=\"/img/Uploads/basic-concept-of-chemistry/Options/44c.JPG\" alt=\"\" width=\"53\" height=\"24\" /></p>', '<p><img src=\"/img/Uploads/basic-concept-of-chemistry/Options/44d.JPG\" alt=\"\" width=\"83\" height=\"34\" /></p>', NULL, NULL, '4.00', '1.00', NULL, '<p><img src=\"/img/Uploads/basic-concept-of-chemistry/Explanation/44.PNG\" alt=\"\" width=\"496\" height=\"120\" /></p>', '1', NULL, NULL, 'Yes', '2018-09-19 15:23:28', '2018-09-19 15:23:28'),
(1010, 1, 2, 1, 60, 2, NULL, '<p><img src=\"/img/Uploads/basic-concept-of-chemistry/Question/43.PNG\" alt=\"\" width=\"524\" height=\"96\" /></p>', '<p><img src=\"/img/Uploads/basic-concept-of-chemistry/Options/43a.JPG\" alt=\"\" width=\"54\" height=\"27\" /></p>', '<p><img src=\"/img/Uploads/basic-concept-of-chemistry/Options/43b.JPG\" alt=\"\" width=\"64\" height=\"31\" /></p>', '<p><img src=\"/img/Uploads/basic-concept-of-chemistry/Options/43c.JPG\" alt=\"\" width=\"53\" height=\"24\" /></p>', '<p><img src=\"/img/Uploads/basic-concept-of-chemistry/Options/43d.JPG\" alt=\"\" width=\"83\" height=\"34\" /></p>', NULL, NULL, '4.00', '1.00', NULL, '<p><img src=\"/img/Uploads/basic-concept-of-chemistry/Explanation/43.PNG\" alt=\"\" width=\"496\" height=\"120\" /></p>', '3', NULL, NULL, 'Yes', '2018-09-19 15:23:28', '2018-09-19 15:23:28'),
(1011, 1, 2, 1, 60, 2, NULL, '<p><img src=\"/img/Uploads/basic-concept-of-chemistry/Question/42.PNG\" alt=\"\" width=\"524\" height=\"96\" /></p>', '<p><img src=\"/img/Uploads/basic-concept-of-chemistry/Options/42a.JPG\" alt=\"\" width=\"54\" height=\"27\" /></p>', '<p><img src=\"/img/Uploads/basic-concept-of-chemistry/Options/42b.JPG\" alt=\"\" width=\"64\" height=\"31\" /></p>', '<p><img src=\"/img/Uploads/basic-concept-of-chemistry/Options/42c.JPG\" alt=\"\" width=\"53\" height=\"24\" /></p>', '<p><img src=\"/img/Uploads/basic-concept-of-chemistry/Options/42d.JPG\" alt=\"\" width=\"83\" height=\"34\" /></p>', NULL, NULL, '4.00', '1.00', NULL, '<p><img src=\"/img/Uploads/basic-concept-of-chemistry/Explanation/42.PNG\" alt=\"\" width=\"496\" height=\"120\" /></p>', '1', NULL, NULL, 'Yes', '2018-09-19 15:23:28', '2018-09-19 15:23:28'),
(1012, 1, 2, 1, 60, 2, NULL, '<p><img src=\"/img/Uploads/basic-concept-of-chemistry/Question/41.PNG\" alt=\"\" width=\"524\" height=\"96\" /></p>', '<p><img src=\"/img/Uploads/basic-concept-of-chemistry/Options/41a.JPG\" alt=\"\" width=\"54\" height=\"27\" /></p>', '<p><img src=\"/img/Uploads/basic-concept-of-chemistry/Options/41b.JPG\" alt=\"\" width=\"64\" height=\"31\" /></p>', '<p><img src=\"/img/Uploads/basic-concept-of-chemistry/Options/41c.JPG\" alt=\"\" width=\"53\" height=\"24\" /></p>', '<p><img src=\"/img/Uploads/basic-concept-of-chemistry/Options/41d.JPG\" alt=\"\" width=\"83\" height=\"34\" /></p>', NULL, NULL, '4.00', '1.00', NULL, '<p><img src=\"/img/Uploads/basic-concept-of-chemistry/Explanation/41.PNG\" alt=\"\" width=\"496\" height=\"120\" /></p>', '4', NULL, NULL, 'Yes', '2018-09-19 15:23:28', '2018-09-19 15:23:28'),
(1013, 1, 5, 13, 93, 2, NULL, 'Which of the following are found in extreme saline conditions (NEET 2017)', 'Eubacteria ', 'Cyanobacteria', 'Mycobacteria', 'Archaebacteria', NULL, NULL, '4.00', '1.00', NULL, 'Halophiles, a type of archaebacteria,\nusually occur in extreme saline conditions like salt\npans, salt beds and salt marshes.', '4', NULL, NULL, 'Yes', '2018-09-19 17:43:14', '2018-09-19 17:43:14'),
(1014, 1, 5, 13, 93, 2, NULL, 'Viroids differ from viruses in having  (NEET 2017)', 'DNA molecules without protein coat', 'RNA molecules with protein coa', 'RNA molecules without protein coat', 'DNA molecules with protein coat.', NULL, NULL, '4.00', '1.00', NULL, 'Viroids are free RNA particles that lack\nprotein coat. They are infectious agents smaller\nthan viruses.', '3', NULL, NULL, 'Yes', '2018-09-19 17:43:14', '2018-09-19 17:43:14'),
(1015, 1, 5, 13, 93, 2, NULL, 'Which among the following are the smallest living cells, known without a definite cell wall,pathogenic to plants as well as animals and can survive without oxygen? (NEET 2017)', 'Pseudomonas', 'Mycoplasma', 'Nostoc', 'Bacillus', NULL, NULL, '4.00', '1.00', NULL, 'Mycoplasmas are the smallest living cells,\nknown without a definite cell wall. They are\npathogenic to both plants and animals and can\nsurvive without oxygen', '2', NULL, NULL, 'Yes', '2018-09-19 17:43:14', '2018-09-19 17:43:14'),
(1016, 1, 5, 13, 93, 2, NULL, 'Which of the following components provides\nsticky character to the bacterial cell?', 'Nuclear membrane\n \n \n', 'Plasma membrane', 'Glycocalyx', 'Cell wall', NULL, NULL, '4.00', '1.00', NULL, 'Glycocalyx is the outermost mucilage layer\nof the cell envelope which consists of noncellulosic\npolysaccharides with or without proteins. It gives\nsticky character to the cell.', '3', NULL, NULL, 'Yes', '2018-09-19 17:43:14', '2018-09-19 17:43:14'),
(1017, 1, 5, 13, 93, 2, NULL, 'DNA replication in bacteria occurs (NEET 2017)', 'within nucleolus', 'prior to fission', 'just before transcription', 'during S phase.', NULL, NULL, '4.00', '1.00', NULL, ': DNA replicates in bacteria just before they\ndivide by fission', '2', NULL, NULL, 'Yes', '2018-09-19 17:43:14', '2018-09-19 17:43:14'),
(1018, 1, 5, 13, 93, 2, NULL, 'Which one of the following is wrong for\nfungi? (NEETII\n2016)', 'They are eukaryotic', 'All fungi possess a purely cellulosic cell\nwall.', 'They are heterotrophic', 'They are both unicellular and multicellular', NULL, NULL, '4.00', '1.00', NULL, 'Cell wall in fungi is composed of chitin, a\npolysaccharide comprising NacetylDglucosamine\n(a derivative of glucose).', '2', NULL, NULL, 'Yes', '2018-09-19 17:43:14', '2018-09-19 17:43:14'),
(1019, 1, 5, 13, 93, 2, NULL, 'Methanogens belong to (NEETII\n2016)', 'eubacteria', 'archaebacteria', 'dinoflagellates', 'slime moulds', NULL, NULL, '4.00', '1.00', NULL, 'Methanogens belong to archaebacteria.\nThey include methane producing genera such as\nMethanobacillus and Methanothrix. Methanogens\nare obligate anaerobes found in oxygendeficient\nenvironments, such as marshes, swamps, sludge\n(formed during sewage treatment), and the digestive\nsystems of ruminants. Mostly they obtain their\nenergy by reducing carbon dioxide and oxidising\nhydrogen, with the production of methane.', '2', NULL, NULL, 'Yes', '2018-09-19 17:43:14', '2018-09-19 17:43:14'),
(1020, 1, 5, 13, 93, 2, NULL, 'Select the wrong statement. (NEETII\n2016', 'The walls of diatoms are easily\ndestructible', '‘Diatomaceous earth’ is formed by the cell\nwalls of diatoms.', 'Diatoms are chief producers in the oceans', 'Diatoms are microscopic and float\npassively in water.', NULL, NULL, '4.00', '1.00', NULL, 'Diatoms are marine or freshwater\nunicellular organisms which have cell walls\n(frustules) composed of pectin impregnated with\nsilica and consisting of two halves, one overlapping\nthe other. The', '1', NULL, NULL, 'Yes', '2018-09-19 17:43:14', '2018-09-19 17:43:14'),
(1021, 1, 5, 13, 93, 2, NULL, 'The primitive prokaryotes responsible for the\nproduction of biogas from the dung of\nruminant animals, include the (NEETI\n2016)', 'methanogens', 'eubacteria', 'halophiles', 'thermoacidophiles', NULL, NULL, '4.00', '1.00', NULL, 'Refer to answer 7.', '1', NULL, NULL, 'Yes', '2018-09-19 17:43:14', '2018-09-19 17:43:14'),
(1022, 1, 5, 13, 93, 2, NULL, 'Which one of the following statements is\nwrong?  (NEETI\n2016)', 'Eubacteria are also called false bacteria', 'Phycomycetes are also called algal fungi.', 'Cyanobacteria are also called bluegreen\nalgae.', 'Golden algae are also called desmids', NULL, NULL, '4.00', '1.00', NULL, 'Eubacteria are also called true bacteria.', '1', NULL, NULL, 'Yes', '2018-09-19 17:43:14', '2018-09-19 17:43:14'),
(1023, 1, 5, 13, 93, 2, NULL, 'Which of the following statements is wrong\nfor viroids? (NEETI\n2016)', 'They cause infections', 'Their RNA is of high molecular weight.', 'They lack a protein coat.', 'They are smaller than viruses', NULL, NULL, '4.00', '1.00', NULL, 'RNA of viroid has low molecular weight.', '2', NULL, NULL, 'Yes', '2018-09-19 17:43:14', '2018-09-19 17:43:14'),
(1024, 1, 5, 13, 93, 2, NULL, 'One of the major components of cell wall of\nmost fungi is (NEETI\n2016)', 'cellulose', 'hemicellulose', 'chitin', 'peptidoglycan', NULL, NULL, '4.00', '1.00', NULL, 'Fungal cell wall contains chitin or fungal\ncellulose along with other polysaccharides,\nproteins, lipids and a number of other substances.', '3', NULL, NULL, 'Yes', '2018-09-19 17:43:14', '2018-09-19 17:43:14'),
(1025, 1, 5, 13, 93, 2, NULL, 'Chrysophytes, Euglenoids, Dinoflagellates\nand Slime moulds are included in the Kingdom  (NEETI\n2016)', 'Fungi', 'Animalia', 'Monera', 'Protista', NULL, NULL, '4.00', '1.00', NULL, 'Protista is a kingdom of unicellular\neukaryotic organisms. It includes photosynthetic\nprotists (dinoflagellates, chrysophytes and\neuglenoids), consumerdecomposer\nprotists (slime\nmoulds) and protozoan protists', '4', NULL, NULL, 'Yes', '2018-09-19 17:43:14', '2018-09-19 17:43:14'),
(1026, 1, 5, 13, 93, 2, NULL, 'Which one is a wrong statement? (2015)', 'Haploid endosperm is typical feature of\nGymnosperms', 'Brown algae have chlorophyll a and c\nand fucoxanthin', 'Archegonia are found in Bryophyta,\nPteridophyta and Gymnosperms', 'Mucor has biflagellate zoospores', NULL, NULL, '4.00', '1.00', NULL, 'Mucor is a member of Zygomycetes (the\nconjugation fungi) in which motile cells e.g.\nzoospores, planogametes, etc. are absent. Asexual\nreproduction takes place by the formation of nonmotile\nmitospores called sporangiospores. Sexual\nreproduction takes place by the formation of nonmotile\nzygospores', '4', NULL, NULL, 'Yes', '2018-09-19 17:43:14', '2018-09-19 17:43:14'),
(1027, 1, 5, 13, 93, 2, NULL, 'The imperfect fungi which are decomposers\nof litter and help in mineral cycling belong to (2015)', 'Phycomycetes', 'Ascomycetes', 'Deuteromycetes', 'Basidiomycetes', NULL, NULL, '4.00', '1.00', NULL, ': Deuteromycetes are the imperfect fungi\nwhich include all those fungi in which sexual stage\nis either absent or not known. Some members are\nsaprophytes or parasites while a large number of\nthem are decomposers of litter and help in mineral\ncycling. E.g., Colletotrichum, Helminthosporium\netc', '3', NULL, NULL, 'Yes', '2018-09-19 17:43:14', '2018-09-19 17:43:14'),
(1028, 1, 5, 13, 93, 2, NULL, 'The structures that help some bacteria to attach\nto rocks and/or host tissues are (2015)', 'mesosomes', 'holdfast', 'rhizoids', 'fimbriae', NULL, NULL, '4.00', '1.00', NULL, 'Fimbriae are small bristlelike\nsolid\nstructures arising from bacterial cell surface. There\nare 300400\nof fimbriae per cell. Their diameter is 310\nnm while length is 0.51.5\nmm. Fimbriae are\ninvolved in attaching bacteria to solid surfaces (e.g.,\nrock in water body) or host tissues (e.g., urinary\ntract in Neisseria gonorrhoeae). Some fimbriae\ncause agglutination of RBCs. They also help in\nmutual clinging of bacteria.', '4', NULL, NULL, 'Yes', '2018-09-19 17:43:14', '2018-09-19 17:43:14'),
(1029, 1, 5, 13, 93, 2, NULL, 'Select the wrong statement (2015)', 'The term ‘contagium vivum fluidum’ was\ncoined by M. W. Beijerinck.', 'Mosaic disease in tobacco and AIDS in\nhuman being are caused by viruses', 'The viroids were discovered by D.J.\nIvanowsky.', 'W.M. Stanley showed that viruses could\nbe crystallised', NULL, NULL, '4.00', '1.00', NULL, 'Viroids are infectious RNA particles which\nwere discovered by T.O. Diener (1971). These are\ndevoid of protein coat and cause diseases in plants\nonly, e.g., potato spindle tuber, chrysanthemum\nstunt etc.', '3', NULL, NULL, 'Yes', '2018-09-19 17:43:14', '2018-09-19 17:43:14'),
(1030, 1, 5, 13, 93, 2, NULL, 'In which group of organisms the cell walls form\ntwo thin overlapping shells which fit together? (2015)', 'Dinoflagellates', 'Slime moulds', 'Chrysophytes', 'Euglenoids', NULL, NULL, '4.00', '1.00', NULL, 'Chrysophytes include diatoms and\ndesmids. The body of diatoms is covered by a\ntransparent siliceous shell (silica deposited in cell\nwall) known as frustule. The frustule is made of\ntwo valves, epitheca and hypotheca, which fit\ntogether like a soap box.', '3', NULL, NULL, 'Yes', '2018-09-19 17:43:14', '2018-09-19 17:43:14'),
(1031, 1, 5, 13, 93, 2, NULL, 'Pick up the wrong statement (2015)', 'Some fungi are edible', 'Nuclear membrane is present in Monera', 'Cell wall is absent in Animalia.', 'Cell wall is absent in Animalia.', NULL, NULL, '4.00', '1.00', NULL, 'Kingdom Monera consists of prokaryotic\norganisms, characterised by absence of nuclear\nenvelope around nucleus and absence of\nmembranebound\ncell organelles.', '2', NULL, NULL, 'Yes', '2018-09-19 17:43:14', '2018-09-19 17:43:14'),
(1032, 1, 5, 13, 93, 2, NULL, 'Choose the wrong statement. (2015)', 'Morels and truffles are poisonous\nmushrooms.', 'Yeast is unicellular and useful in fermentation.', 'Penicillium is multicellular and produces\nantibiotics.', 'Neurospora is used in the study of biochemical\ngenetics.', NULL, NULL, '4.00', '1.00', NULL, 'Kingdom Monera consists of prokaryotic\norganisms, characterised by absence of nuclear\nenvelope around nucleus and absence of\nmembranebound\ncell organelles.', '1', NULL, NULL, 'Yes', '2018-09-19 17:43:14', '2018-09-19 17:43:14'),
(1033, 1, 5, 13, 93, 2, NULL, 'Cell wall is absent in (2015)', 'Mycoplasma', 'Nostoc', 'Aspergillus', 'Funaria', NULL, NULL, '4.00', '1.00', NULL, 'Mycoplasma (KingdomMonera)\nare the\nsimplest and smallest free living prokaryotes which are devoid of a cell wall. Plasma membrane forms\nthe outer boundary of the cell of mycoplasma.\nNostoc is a cyanobacterium (KingdomMonera),\nin which cell wall comprises of peptidoglycans.\nAspergillus is a fungus (KingdomFungi)\nin which\ncell wall is mainly made of chitin. Funaria is a\nbryophyte (KingdomPlantae)\nin which cell wall is\ncellulosic in nature.', '1', NULL, NULL, 'Yes', '2018-09-19 17:43:14', '2018-09-19 17:43:14'),
(1034, 1, 5, 13, 93, 2, NULL, 'True nucleus is absent  in (2015 Cancelled)', 'Vaucheria', 'Volvox', 'Anabaena', 'Mucor', NULL, NULL, '4.00', '1.00', NULL, 'Anabaena is a prokaryotic organism. It is\na cyanobacteria (blue green algae) which belongs\nto Kingdom Monera. Like all other prokaryotes, it\nlacks a true nucleus and other cell organelles.', '3', NULL, NULL, 'Yes', '2018-09-19 17:43:14', '2018-09-19 17:43:14'),
(1035, 1, 5, 13, 93, 2, NULL, 'Which one of the following matches is correct ?  (2015 Cancelled)', 'Mucor-Reproduction by Conjugation -Ascomycetes\nby Conjugation-', 'Agaricus-Parasitic fungus-Basidiomycetes', 'Phytophthora -Aseptate mycelium-Basidiomycetes', 'Alternaria-Sexual reproduction\nabsent-Deuteromycetes\n', NULL, NULL, '4.00', '1.00', NULL, 'Alternaria is a Deuteromycetes member\nwhich are also known as fungi imperfecti. Their\nperfect stages (sexually reproducing stages) are\neither absent or not known.', '4', NULL, NULL, 'Yes', '2018-09-19 17:43:14', '2018-09-19 17:43:14'),
(1036, 1, 5, 13, 93, 2, NULL, 'Five kingdom system of classification suggested\nby R.H. Whittaker is not based on (2014)', 'presence or absence of a well defined\nnucleus', 'mode of reproduction', 'mode of nutrition', 'complexity of body organisation.', NULL, NULL, '4.00', '1.00', NULL, 'R.H. Whittaker considered complexity of\ncell structure and structural (body) organisation,\nmode of nutrition, ecological life style and\nphylogenetic relationships for the five kingdom\nsystem of classification.', '2', NULL, NULL, 'Yes', '2018-09-19 17:43:14', '2018-09-19 17:43:14'),
(1037, 1, 5, 13, 93, 2, NULL, 'Which of the following shows coiled RNA\nstrand and capsomeres? (2014)', 'Polio virus', 'Tobacco mosaic virus', 'Measles virus', 'Retrovirus', NULL, NULL, '4.00', '1.00', NULL, 'Tobacco mosaic virus is a RNA virus that\ncauses tobacco mosaic disease. It has single\nstranded coiled RNA molecule as its genetic material\na part of which hangs outside the protein coat.\nProtein coat consists of approximately 2130\ncapsomeres which are helically arranged to form a\nhollow cylinder of about 4 nm diameter', '2', NULL, NULL, 'Yes', '2018-09-19 17:43:14', '2018-09-19 17:43:14'),
(1038, 1, 5, 13, 93, 2, NULL, 'Viruses have  (2014)', 'DNA enclosed in a protein coat', 'prokaryotic nucleus', 'single chromosome', 'both DNA and RNA.', NULL, NULL, '4.00', '1.00', NULL, 'Viruses are nucleoprotein entities which\nare able to utilize synthetic machinery of a living\ncell of the host organism for its multiplication which\ndoes not involve growth and division. They have\neither RNA or DNA as genetic material and a protein\ncoat', '1', NULL, NULL, 'Yes', '2018-09-19 17:43:14', '2018-09-19 17:43:14'),
(1039, 1, 5, 13, 93, 2, NULL, 'Archaebacteria differ from eubacteria in (2014) ', 'cell membrane structur', 'mode of nutrition', 'cell shape', 'mode of reproduction', NULL, NULL, '4.00', '1.00', NULL, 'The archaebacteria are the ‘ancient’ bacteria\nthat include extremophiles like methanogens,\nhalophiles and thermophiles. They represent some\nof the most ancient of life forms that persist today.\nThey have both eubacterial and eukaryotic\ncharacters besides the features unique to them.\nTheir mode of reproduction, nutrition and cell shape\nand size resembles a typical eubacteria. Their cell\nwalls are made of a variety of polymers, but do not\ncontain peptidoglycan unlike eubacteria. Lipids of\ntheir cytoplasmic membranes are ether linked unlike\neubacteria which contain glycerol ester lipids in\ntheir cell membrane.', '1', NULL, NULL, 'Yes', '2018-09-19 17:43:14', '2018-09-19 17:43:14'),
(1040, 1, 5, 13, 93, 2, NULL, 'Which structures perform the function of mitochondria in bacteria? (2014)', 'Nucleoid', 'Ribosomes', 'Cell wall', 'Mesosomes', NULL, NULL, '4.00', '1.00', NULL, 'Mesosome is a characteristic circular to\nvilliform specialisation of bacterial cell membrane\nthat develops as an ingrowth. It consists of vesicles,tubules and lamellae. Mesosomes may be septal or\nlateral. Septal mesosome connects nucleoid with\nplasma membrane and assists in replication and\nseptum formation during cells division. Lateral\nmesosome is not connected with nucleoid and\ncontains respiratory enzymes and performs\nfunctions similar to eukarytoic mitochondria and\nhence is also called chondrioid. They also increase\nthe surface area of plasma membrane and enzymatic\ncontact.', '4', NULL, NULL, 'Yes', '2018-09-19 17:43:14', '2018-09-19 17:43:14'),
(1041, 1, 5, 13, 93, 2, NULL, 'The motile bacteria are able to move by (2014)', 'fimbriae', 'flagella', 'cilia', 'pili', NULL, NULL, '4.00', '1.00', NULL, 'Flagellum is the organ of motility in\nbacteria. Bacterial flagella are unistranded,\nequivalent to a single microtubular fibre and formed\nof protein called flagellin. They perform rotatory\nmovements.', '2', NULL, NULL, 'Yes', '2018-09-19 17:43:14', '2018-09-19 17:43:14'),
(1042, 1, 5, 13, 93, 2, NULL, 'Anoxygenic photosynthesis is characteristic of (2014)', 'Rhodospirillum', 'Spirogyra', 'Chlamydomonas', 'Ulva', NULL, NULL, '4.00', '1.00', NULL, 'In Rhodospirillum, electron donor is\norganic compound instead of water hence no\noxygen is released, i.e., anoxygenic photosynthesis\noccurs. In other plants water is used as electron\ndonor and H + and O 2 are produced during photolysis\nof wate', '1', NULL, NULL, 'Yes', '2018-09-19 17:43:14', '2018-09-19 17:43:14'),
(1043, 1, 5, 13, 93, 2, NULL, 'Which of the following are likely to be present\nin deep sea water? (NEET 2013)', 'Bluegreen\nalgae', 'Saprophytic fungi', 'Archaebacteria', 'Eubacteria', NULL, NULL, '4.00', '1.00', NULL, 'Archaebacteria belong to a group of\nprokaryotic organisms called Monera. These\ninclude the methanogens, which produce methane;\nthe thermoacidophilic bacteria, which live in\nextremely hot and acidic environments (such as\nhot springs); and the halophilic bacteria, which can\nonly function at high salt concentrations and are\nabundant in the world’s oceans', '3', NULL, NULL, 'Yes', '2018-09-19 17:43:14', '2018-09-19 17:43:14'),
(1044, 1, 5, 13, 93, 2, NULL, 'Pigment containing membranous extensions\nin some cyanobacteria are  (NEET 2013)', 'pneumatophores', 'chromatophores', 'heterocysts', 'basal bodies.', NULL, NULL, '4.00', '1.00', NULL, 'Chromatophore is a pigmented lamellar or\nvesicular structure that can be isolated from\ndisrupted photosynthetic bacteria or\ncyanobacteria. Their plasma membrane may be\nprojected in folds into the cytoplasm forming\nlamellae that have, therefore, double unitmembrane\nstructure. The pigments and most of the enzymes\nrequired for the lightinduced\nelectron transport\nand phosphorylation processes of photosynthesis,\nare located in the plasma membrane and lamellae.', '2', NULL, NULL, 'Yes', '2018-09-19 17:43:14', '2018-09-19 17:43:14'),
(1045, 1, 5, 13, 93, 2, NULL, 'Why is a capsule advantageous to a\nbacterium?  (Karnataka NEET 2013)', 'It protects the bacterium from desiccation', 'It provides means of locomotion', 'It allows bacterium to “hide” from host’s\nimmune system.', 'It allows the bacterium to attach to the\nsurface', NULL, NULL, '4.00', '1.00', NULL, 'Stype\nbacteria or virulent bacteria are\ncapsulated. The capsule is made up of\npolysaccharides and amino acids. It is a tough and\nthick mucilage covering. It gives protection to\nbacteria against host’s immune system.', '3', NULL, NULL, 'Yes', '2018-09-19 17:43:14', '2018-09-19 17:43:14'),
(1046, 1, 5, 13, 93, 2, NULL, 'Which one of the following is true for fungi? (Karnataka NEET 2013)', 'They lack a rigid cell wall.', 'They are heterotrophs', 'They lack nuclear membrane', 'They are phagotrophs.', NULL, NULL, '4.00', '1.00', NULL, 'Fungi are achlorophyllous, heterotrophic,\nspore forming, nonvascular,\neukaryotic organisms\nwhich often contain chitin or fungal cellulose in\ntheir walls. Hence, their cell wall is rigid.', '2', NULL, NULL, 'Yes', '2018-09-19 17:43:14', '2018-09-19 17:43:14'),
(1047, 1, 5, 13, 93, 2, NULL, 'Which statement is wrong for viruses? (2012)', 'All are parasites.', 'All of them have helical symmetry', 'They have ability to synthesize nucleic\nacids and proteins.', 'Antibiotics have no effect on them.\n', NULL, NULL, '4.00', '1.00', NULL, 'In viruses, three architectural forms are\nfound – helical (elongated body, e.g., TMV),\ncuboidal (short broad body with rhombic, rounded,\npolyhedral shape e.g,. poliovirus) and binal (with\nboth cuboidal and helical parts e.g., T 2 phage)', '2', NULL, NULL, 'Yes', '2018-09-19 17:43:14', '2018-09-19 17:43:14'),
(1048, 1, 5, 13, 93, 2, NULL, 'Maximum nutritional diversity is found in the\ngroup', 'fungi', 'animalia', 'nonera', 'plantae', NULL, NULL, '4.00', '1.00', NULL, 'Though the bacterial structure is very\nsimple, they are very complex in behaviour.\nCompared to many other organisms, bacteria as a\ngroup show the most extensive metabolic diversity.\nSome of the bacteria are autotrophic, i.e., they\nsynthesize their own food from inorganic\nsubstrates. They may be photosynthetic\nautotrophic or chemosynthetic autotrophic. The\nvast majority of bacteria are heterotrophs, i.e., they\ndo not synthesize their own food but depend on\nother organisms or on dead organic matter for food', '3', NULL, NULL, 'Yes', '2018-09-19 17:43:14', '2018-09-19 17:43:14'),
(1049, 1, 5, 13, 93, 2, NULL, 'Nuclear membrane is absent in', 'Penicillium', 'Agaricus', 'Volvox', 'Nostoc', NULL, NULL, '4.00', '1.00', NULL, 'Penicillium and Agaricus are fungi while\nVolvox is an alga. All three are eukaryotes thus\nhave a membrane bound nucleus. Nostoc is a\ncyanobacterium, i.e., prokaryote, so it lacks true\nnucleus, thus nuclear membrane is absent.', '4', NULL, NULL, 'Yes', '2018-09-19 17:43:14', '2018-09-19 17:43:14'),
(1050, 1, 5, 13, 93, 2, NULL, 'The cyanobacteria are also referred to as (2012)', 'protists', 'golden algae', 'slime moulds', 'blue green algae', NULL, NULL, '4.00', '1.00', NULL, 'Cyanobacteria is a phylum consisting of\ntwo groups of photosynthetic eubacteria: the bluegreen\nbacteria (formerly known as bluegreen\nalgae,\nor cyanophyta), which comprise the vast majority\nof members, and the grassgreen\nbacteria, or\nchloroxybacteria.', '4', NULL, NULL, 'Yes', '2018-09-19 17:43:14', '2018-09-19 17:43:14'),
(1051, 1, 5, 13, 93, 2, NULL, 'The most abundant prokaryotes helpful to\nhumans in making curd from milk and in\nproduction of antibiotics are the ones\ncategorised as (2012)', 'cyanobacteria', 'archaebacteria', 'chemosynthetic autotrophs', 'heterotrophic bacteria.', NULL, NULL, '4.00', '1.00', NULL, 'Maximum number of antibiotics are\nproduced by mycelial bacteria known as\nactinomycetes and most of the actinomycetes are\nsaprotrophic (heterotrophic). Lactic acid bacteria\nthat are used in preparation of curd are also\nheterotrophic ones.', '4', NULL, NULL, 'Yes', '2018-09-19 17:43:14', '2018-09-19 17:43:14'),
(1052, 1, 5, 13, 93, 2, NULL, 'Which one single organism or the pair of\norganisms is correctly assigned to its or their\nnamed taxonomic group? (2012) ', 'Paramecium and Plasmodium belong to\nthe same kingdom as that of Penicillium', 'Lichen is a composite organism formed\nfrom the symbiotic association of an algae\nand a protozoan', 'Yeast used in making bread and beer is a\nfungus.', 'Nostoc and Anabaena are examples of\nprotista.', NULL, NULL, '4.00', '1.00', NULL, 'Yeast is a group of unicellular fungi of the\nclass ascomycetes. They occur as single cell or as a\ngroup or chain of cells. Yeast of the genus Saccharomyces\nferments sugar and are used to make bread\nand beer.', '3', NULL, NULL, 'Yes', '2018-09-19 17:43:14', '2018-09-19 17:43:14'),
(1053, 1, 5, 13, 93, 2, NULL, ' Which one of the following microbes forms\nsymbiotic association with plants and helps\nthem in their nutrition?(2012)', 'Azotobacter', 'Aspergillus', 'Glomus', 'Trichoderma', NULL, NULL, '4.00', '1.00', NULL, 'Azotobacter, Aspergillus and Trichoderma\nall are free living microbes that help plants in their\nnutrition. Glomus is a fungus that symbiotically\nforms endomycorrhiza that helps in absorption of\nnutrition specially phosphorus from soil.', '3', NULL, NULL, 'Yes', '2018-09-19 17:43:14', '2018-09-19 17:43:14'),
(1054, 1, 5, 13, 93, 2, NULL, 'In the five kingdom classification,\nChlamydomonas and Chlorella have been\nincluded in (Mains 2012)', 'protista', 'algae', 'plantae', 'monera', NULL, NULL, '4.00', '1.00', NULL, 'In order to develop phylogenetic\nclassification, R.H. Whittaker (1969), an American\ntaxonomist, divided all the organisms into five\nkingdoms. Whittaker has used five criteria for\ndelimiting the different kingdoms. (i) Complexity of\ncell structure, prokaryotic and eukaryotic (ii)Complexity of body structure or structural\norganization, unicellular and multicellular. (iii) Mode\nof nutrition which is divergent in multicellular\nkingdoms. (iv) Ecological life style like producers\n(plantae), decomposers (fungi) and consumers\n(animalia), (v) Phylogenetic relationship. When\nsuch characteristics were considered, the fungi were\nplaced in a separate kingdom – Kingdom Fungi. All\nprokaryotic organisms were grouped together\nunder Kingdom Monera and the unicellular\neukaryotic organisms were placed in Kingdom\nProtista. Kingdom Protista has brought together\nChlamydomonas, Chlorella (earlier placed in Algae\nwithin Plants and both having cell walls) with\nParamoecium and Amoeba (which were earlier placed\nin the animal kingdom which lack cell wall). It has\nput together organisms which, in earlier\nclassifications, were placed in different kingdoms.\nThis happened because the criteria for classification\nchanged.', '1', NULL, NULL, 'Yes', '2018-09-19 17:43:14', '2018-09-19 17:43:14'),
(1055, 1, 5, 13, 93, 2, NULL, 'Which one of the following also acts as a catalyst\nin a bacterial cell? (2011)', '5S rRNA', 'snRNA', 'hnRNA', '23S rRNA\n', NULL, NULL, '4.00', '1.00', NULL, 'The 23S rRNA is a component of the large\nprokaryotic (bacterial cell) subunit (50S). The\nribosomal peptidyl transferase activity resides in\nthis rRNA and acts as a ribozyme (catalytic RNA).\nIn eukaryotic cells, the 60S (28S component)\nribosome subunit contains the peptidyl transferase\ncomponent and acts as the ribozyme.', '4', NULL, NULL, 'Yes', '2018-09-19 17:43:14', '2018-09-19 17:43:14'),
(1056, 1, 5, 13, 93, 2, NULL, 'In eubacteria, a cellular component that resembles\neukaryotic cell is (2011)', 'plasma membrane', 'nucleus', 'ribosomes', 'cell wall.\n', NULL, NULL, '4.00', '1.00', NULL, 'Plasma membrane of eubacteria resembles\nplasma membrane of eukaryotic cell. But nucleus,\nribosomes and cell wall are little different in\neukaryotic cell in their structure and organization\nfrom eubacterial cell.', '1', NULL, NULL, 'Yes', '2018-09-19 17:43:14', '2018-09-19 17:43:14'),
(1057, 1, 5, 13, 93, 2, NULL, 'Which one of the following organisms is not\nan eukaryote? (2011)', 'Paramecium caudatum', 'Escherichia coli', 'Euglena virid', 'Amoeba proteus ', NULL, NULL, '4.00', '1.00', NULL, 'Escherichia coli (bacterium) is not an\nexample of eukaryotic cell. It is a typical example of\nprokaryotic cell', '2', NULL, NULL, 'Yes', '2018-09-19 17:43:14', '2018-09-19 17:43:14'),
(1058, 1, 5, 13, 93, 2, NULL, 'Which one of the following is incorrectly\nmatched? (2011)', 'Root pressureguttation', 'Pucciniasmu', 'Rootexarch\nprotoxylem', 'Cassiaimbricate\naestivation\n', NULL, NULL, '4.00', '1.00', NULL, 'Rust is a group of parasitic fungi of the\nphylum Basidiomycota. Many of these species\nattack the leaves and stems of cereal crops.\nPathogens of rust are Puccinia, Uromyces,\nMelampsora, Hemileia.', '2', NULL, NULL, 'Yes', '2018-09-19 17:43:14', '2018-09-19 17:43:14'),
(1059, 1, 5, 13, 93, 2, NULL, 'The pathogen Microsporum responsible for\nringworm disease in humans belongs to the same\nkingdom of organisms as that of (Mains 2011)', 'Taenia, a tapeworm', 'Wuchereria, a filarial worm', 'Rhizopus, a mould', 'Ascaris, a round worm.', NULL, NULL, '4.00', '1.00', NULL, 'The pathogen Microsporum is genus of\nKingdom Fungi that causes diseases of skin and\nhair in humans and animals like dog, cat, monkey.\nRingworm is caused by the dermatophyte fungispecies\nof Microsporum, Trichophyton and\nEpidermophyton.\nRhizopus, a black bread mould belongs to group\nzygomycetes of Kingdom Fungi.', '3', NULL, NULL, 'Yes', '2018-09-19 17:43:14', '2018-09-19 17:43:14'),
(1060, 1, 5, 13, 93, 2, NULL, 'Virus envelope is known as\n(2010)', 'capsid', 'virion', 'nucleoprotein', 'core.', NULL, NULL, '4.00', '1.00', NULL, 'The nucleic acid of a virus is surrounded\nby a protein coat called the capsid. The capsid is\ncomposed of protein subunits called capsomeres.\nIn some viruses, the capsid is covered by an\nenvelope, which usually consists of some\ncombination of lipids, proteins and carbohydrates', '1', NULL, NULL, 'Yes', '2018-09-19 17:43:14', '2018-09-19 17:43:14'),
(1061, 1, 5, 13, 93, 2, NULL, 'Singlecelled\neukaryotes are included in \n(2010)', 'protista', 'fungi', 'archaea', 'monera.', NULL, NULL, '4.00', '1.00', NULL, 'Protista include all unicellular and colonial\neukaryotes except those of green and red algae.\nThe protistan cells are typically eukaryotic having\nmembrane bound organelles like mitochondria,\nchloroplasts, Golgi bodies, endoplasmic reticulum,\nnucleus etc. Protista is commonly known as\nkingdom of unicellular eukaryotes. Kingdom fungi\ncontains achlorophyllous, spore producing,\nheterotrophic, multicellular or multinucleate\neukaryotic organisms (unicellular yeasts are also\nincluded amongst fungi because their sexual\nreproduction is similar to that of some fungi).\nMonerans are basically unicellular prokaryotes.\nArchaea (ancient bacteria) are also a type of\nmonerans which live in primitive environment like\nhigh temperature, high salt content, acidic pH, etc.', '1', NULL, NULL, 'Yes', '2018-09-19 17:43:14', '2018-09-19 17:43:14'),
(1062, 1, 5, 13, 93, 2, NULL, 'Some hyperthermophilic organisms that grow\nin highly acidic (pH 2) habitats belong to the\ntwo groups (2010)', 'eubacteria and archaea', 'b) cyanobacteria and diatoms', 'protists and mosses\n', ' liverworts and yeasts', NULL, NULL, '4.00', '1.00', NULL, 'There are two major groups of monerans\narchaebacteria (ancient bacteria) and eubacteria\n(true bacteria). Eubacteria is of further two types –\nbacteria and cyanobacteria. Thermoacidophiles are\na type of archaebacteria which live in extremely\nacidic environment (pH 2) that have extremely high\ntemperatures (upto 110°C). They are found in hot\nsulphur springs. Some of the eubacteria are also\nfamous for living under the most hostile\nenvironment like salt pans, petroleum pans, spilled\noil, hot springs, sulphur springs, snow, etc.', '1', NULL, NULL, 'Yes', '2018-09-19 17:43:14', '2018-09-19 17:43:14'),
(1063, 1, 5, 13, 93, 2, NULL, 'One of the freeliving,\nanaerobic nitrogenfixer\nis (2010)', 'Beijernickia', 'Rhodospirillum', 'Rhizobium', 'Azotobacter.\n', NULL, NULL, '4.00', '1.00', NULL, 'Many free living bacteria and blue green\nalgae are capable to fix atmospheric nitrogen\nRhodospirillum is a free living photosynthetic\nanaerobic nitrogen fixing nonsulphur\nbacteria. It is\ncapable of synthesizing its organic food in presence\nof light and in absence of O 2 by a process known as\nbacterial photosynthesis. Beijernickia and\nAzotobacter are free living but aerobic nitrogen fixing\nbacteria. Rhizobium is a symbiotic nitrogen fixing\nbacteria.', '2', NULL, NULL, 'Yes', '2018-09-19 17:43:14', '2018-09-19 17:43:14'),
(1064, 1, 5, 13, 93, 2, NULL, 'Membranebound\norganelles are absent in (2010)', 'Saccharomyces', 'Streptococcus', ' Chlamydomonas', 'Plasmodium.', NULL, NULL, '4.00', '1.00', NULL, 'Streptococcus is a bacteria which is\nincluded under Kingdom Monera. Monerans have\nprokaryotic cell organisation in which membrane\nbound organelles like mitochondria, E.R., Golgi\nbodies, etc. are absent. All the other three i.e.,\nSaccharomyces (a fungus) Chlamydomonas (an\nalgae) and Plasmodium (a protozoan protist) are eukaryotes containing true membrane bound\norganelles', '2', NULL, NULL, 'Yes', '2018-09-19 17:43:14', '2018-09-19 17:43:14'),
(1065, 1, 5, 13, 93, 2, NULL, 'Select the correct combination of the\nstatements (iiv)\nregarding the characteristics\nof certain organisms.\n(i) Methanogens are archaebacteria which\nproduce methane in marshy areas.\n(ii) Nostoc is a filamentous bluegreen\nalga\nwhich fixes atmospheric nitrogen.\n(iii) Chemosynthetic autotrophic bacteria\nsynthesize cellulose from glucose.\n(iv) Mycoplasma lack a cell wall and can\nsurvive without oxygen.\nThe correct statements are (Mains 2010)', '(ii) and (iii)  ', '(i),(ii) and (iii)', '(ii), (iii) and (iv)', ' (i), (ii) and (iv).', NULL, NULL, '4.00', '1.00', NULL, 'Chemosynthetic autotrophic bacteria\noxidise various inorganic substances such as\nnitrates, nitrites and ammonia and use the released\nenergy for their ATP production. They play a great\nrole in recycling nutrients like nitrogen,\nphosphorous, iron and sulphur.', '4', NULL, NULL, 'Yes', '2018-09-19 17:43:14', '2018-09-19 17:43:14'),
(1066, 1, 5, 13, 93, 2, NULL, 'Black (stem) rust of wheat is caused by (Mains 2010)', 'Alternaria solani', 'Ustilago nuda', 'Puccinia graminis', 'Xanthomonas oryzae. ', NULL, NULL, '4.00', '1.00', NULL, 'Black stem rust is caused by Puccinia\ngraminis tritici. The genus Puccinia includes 700\nspecies, which cause rust diseases of many\neconomic plants such as wheat, barley, oats, etc.\nIt is called a rust because of the reddish brown\ncolor of the spores that are found chiefly upon the\nsurface of the host leaves and stems. P. graminis is\nheteroecious i.e., requiring two hosts, wheat and\nbarberry for the completion of normal life cycle.\nAccording to the nature of the spores, the life cycle\nof the P. graminis is divided into five stages. It is\nduring, teleuto stage, the teliospore (or\nteleutospores) produce dark brown to black\npustules on the surface of stems and leaves of the\nwheat that results into ‘black stem rust of wheat’.', '3', NULL, NULL, 'Yes', '2018-09-19 17:43:14', '2018-09-19 17:43:14'),
(1067, 1, 5, 13, 93, 2, NULL, 'Phylogenetic system of classification is based\non (2009)', 'morphological features', 'chemical constituents', 'floral characters\n', 'evolutionary relationships', NULL, NULL, '4.00', '1.00', NULL, ': Plylogenetic system or cladistics is based\non evolutionary sequence as well as the genetic\nrelationship among the living beings. Engler and\nPrantl’s System of Classification was jointly\nproposed in Die Naturlichen Pflanzen Familien in\n1892. It is the first phylogenetic system of\nclassification which includes all the plants from\nalgae to angiosperms arranged in an evolutionary\nsequence from simplicity to complexity.', '4', NULL, NULL, 'Yes', '2018-09-19 17:43:14', '2018-09-19 17:43:14'),
(1068, 1, 5, 13, 93, 2, NULL, 'T.O. Diener discovered a  (2009)', 'free infectious DNA', 'infectious protein', 'bacteriophage', 'free infectious RNA.', NULL, NULL, '4.00', '1.00', NULL, 'Refer to answer 17', '4', NULL, NULL, 'Yes', '2018-09-19 17:43:14', '2018-09-19 17:43:14'),
(1069, 1, 5, 13, 93, 2, NULL, 'Oxygenic photosynthesis occurs in (2009)', 'Oscillatoria', 'Rhodospirillum', 'Chlorobium', 'Chromatium.', NULL, NULL, '4.00', '1.00', NULL, 'Oscillatoria is a filamentous Gramve\ncyanobacteria which perform oxygenic\nphotosynthesis because of the presence of\nchlorophylla\nlike eukaryotic algae and higher\nplants.', '1', NULL, NULL, 'Yes', '2018-09-19 17:43:14', '2018-09-19 17:43:14'),
(1070, 1, 5, 13, 93, 2, NULL, 'Which of the following is a symbiotic nitrogen\nfixer?\n(2009)', 'Azotobacter ', 'Frankia', 'Azolla', 'Glomus', NULL, NULL, '4.00', '1.00', NULL, 'Frankia, is a nitrogen fixing symbiotic\nbacteria. It induces root nodules just like\nRhizobium. It is associated symbiotically with the\nroot nodules of several nonlegume\nplants like\nCasuarina, Alnus, Rubus etc. It cannot fix nitrogen\nin free state.', '2', NULL, NULL, 'Yes', '2018-09-19 17:43:14', '2018-09-19 17:43:14'),
(1071, 1, 5, 13, 93, 2, NULL, 'Which one is the wrong pairing for the disease\nand its causal organism? (2009)', 'Black rust of wheatPuccinia\ngraminis', 'Loose smut of wheatUstilago\nnuda', 'Root knot of vegetablesMeloidogyne\nsp', 'Late blight of potatoAlternaria\nsolani\n', NULL, NULL, '4.00', '1.00', NULL, 'Late blight of potato disease is caused by\nPhytophthora infestans. It is a phycomycetes\nfungus. Alternaria solani is the causal organism\nof early blight of potato disease', '4', NULL, NULL, 'Yes', '2018-09-19 17:43:14', '2018-09-19 17:43:14'),
(1072, 1, 5, 13, 93, 2, NULL, 'Bacterial leaf blight of rice is caused by a\nspecies (2008)', 'Alternaria', 'Erwinia', 'Xanthomonas', 'Pseudomonas', NULL, NULL, '4.00', '1.00', NULL, 'Bacterial leaf blight of rice is caused by\nXanthomonas oryzae a bacterium which is gramnegative,\naerobic, capsulated, and motile with a\nsingle polar flagellum. Primary infection is carried\nthrough the infected seeds. The entry of the\npathogen occurs through wounds and stomata.\nThe symptoms of the disease is the appearance of\nlinear, yellow to straw coloured stripes, usually on\nboth the edges of the leaf. As the disease\nprogresses, the drying and twisting of the leaf tip\noccurs. The most destructive phase of the disease\nis the ‘Ikresek’ or wilt resulting from early systematic\ninfection.', '3', NULL, NULL, 'Yes', '2018-09-19 17:43:14', '2018-09-19 17:43:14'),
(1073, 1, 5, 13, 93, 2, NULL, 'Thermococcus, Methanococcus and\nMethanobacterium exemplify (2008)', 'bacteria whose DNA is relaxed or\npositively supercoiled but which have a\ncytoskeleton as well as mitochondria', 'bacteria that contain a cytoskeleton and\nribosomes', 'archaebacteria that contain protein\nhomologous to eukaryotic core histone', 'archaebacteria that lack any histones\nresembling those found in eukaryotes but\nwhose DNA is negatively supercoiled.', NULL, NULL, '4.00', '1.00', NULL, 'Thermococcus, Methanococcus and\nMethanobacterium are examples of archaebacteria\nwhich are characterized by a unique cell wall that\nlack peptidoglycan and consist of polysaccharides\nand protein and closely resemble the eukaryotic\ncell in the mechanism of protein synthesis, structural\nprotein and RNA compliments of the ribosomes', '3', NULL, NULL, 'Yes', '2018-09-19 17:43:14', '2018-09-19 17:43:14'),
(1074, 1, 5, 13, 93, 2, NULL, 'the light of recent classification of living\norganisms into three domains of life (bacteria,\narchaea and eukarya), which one of the\nfollowing statements in true about archaea? (2008)', 'Archaea completely differ from both\nprokaryotes and eukaryotes', 'Archaea completely differ from\nprokaryotes.', 'Archaea resemble eukarya in all respects.', 'Archaea have some novel features that\nare absent in other prokaryotes and\neukaryotes', NULL, NULL, '4.00', '1.00', NULL, 'Archaebacteria represent a cell type that\nseems to possess the characteristics of both\nprokaryotes as well as eukaryotes. In size, the\narchaebacteria are about 1 mm in diameter, the size of\ntypical prokaryotes lack membranebound\norganelles,\nnuclear bodies are not bound by nuclear membranes\nas it is in eukaryotes and ribosomes are 70S, the size\nof those found in typical prokaryotes. They have\nunique cell wall that lacks peptidoglycan, closely\nresemble the eukaryotic cells in the mechanisms of\nprotein synthesis, structural proteins, and RNA\ncompliments of the ribosomes and a very distinctive\nfeature of archeabacterial genes is the presence of\nintrons, elements that are totally unknown in other\nprokaryotes, though relatively common in\neukaryotes.Archaebacteria also possess unique\ncharacteristic found in neither eukaryotes nor\nprokaryotes. For example, their membrane contain\nbranched chain lipids with ether. This enables them\nto tolerate extremes of heat and pH.', '4', NULL, NULL, 'Yes', '2018-09-19 17:43:14', '2018-09-19 17:43:14'),
(1075, 1, 5, 13, 93, 2, NULL, 'Which one of the following is a slime mould? (2007)', 'Physarum', 'Thiobacillus', 'Anabaena', 'Rhizopus ', NULL, NULL, '4.00', '1.00', NULL, 'Slime moulds are peculiar protista that\nnormally take the form of amoebae, but under certain\nconditions develop fruiting bodies that release\nspores, superficially similar to the sporangia of\nfungi. The order physarales include Physarum\nspecies. The fruiting bodies (sporangia) are\ncharacterized by the presence of abundant amount of calcium salt. The order comprises 142 species\nwhich are placed under 12 genera. Physarum\npolycephalam is the best known. The somatic\nphase is multinucleate, diploid holocarpic\nplasmodium which is the product of syngamy.', '1', NULL, NULL, 'Yes', '2018-09-19 17:43:14', '2018-09-19 17:43:14'),
(1076, 1, 5, 13, 93, 2, NULL, 'Which one of the following statements about\nmycoplasma is wrong? (2007)', 'They are pleomorphic', 'They are sensitive to penicillin.', 'They cause diseases in plants', 'They are also called PPLO', NULL, NULL, '4.00', '1.00', NULL, 'Mycoplasma are small, unicellular, (nonmotile)\nprokaryotic organis ms. They are\npleomorphic. Therefore they are known as pleuro\npneumonia like organisms (PPLO). They lack cell\nwall. It contains cytoplasm, ribosomes and DNA.\nThey are inhibited by tetracyclines but insensitive\nto penicillin. They cause various diseases.', '2', NULL, NULL, 'Yes', '2018-09-19 17:43:14', '2018-09-19 17:43:14'),
(1077, 1, 5, 13, 93, 2, NULL, 'Which pair of the following belongs to\nbasidiomycetes? (2007)', 'Puffballs and Claviceps', 'Peziza and stink horns', 'Morchella and mushrooms', 'Birds nest fungi and puffballs', NULL, NULL, '4.00', '1.00', NULL, 'The Cyathus is known as bird’s nest fungi,\nand Lycoperdon is called puff balls. Both these\nfungi belong to the group of club fungi or\nbasidiomycetes. These fungi produce spores inside\nclub shaped fruit bodies called basidium. Typically\nbasidium has 4 basidiospores produced\nexogenously. Peziza and Morchella, Claviceps\nbelong to ascomycetes (produce ascospores in\nascocarps). Mushroom are basidiomycetes fungi.', '4', NULL, NULL, 'Yes', '2018-09-19 17:43:14', '2018-09-19 17:43:14');
INSERT INTO `questions` (`id`, `qtype_id`, `subject_id`, `topic_id`, `stopic_id`, `diff_id`, `passage_id`, `question`, `option1`, `option2`, `option3`, `option4`, `option5`, `option6`, `marks`, `negative_marks`, `hint`, `explanation`, `answer`, `true_false`, `fill_blank`, `status`, `created`, `modified`) VALUES
(1078, 1, 5, 13, 93, 2, NULL, 'Curing of tea leaves is brought about by the\nactivity of  (2006)', 'fungi', 'bacteria', 'mycorrhiza', 'viruses', NULL, NULL, '4.00', '1.00', NULL, 'Curing is a process done to add special\nflavour and taste in tea leaves. It is also done for\ntobacco. In this process after harvesting the cured\nleaves are hung in shade and are permitted for the\naction of bacteria. The curing of tea leaves is done\nby Mycrococcus candidans. Mycrococcus is a gram\npositive aerobic bacterium which is a member of\nmicrococcaceae', '2', NULL, NULL, 'Yes', '2018-09-19 17:43:14', '2018-09-19 17:43:14'),
(1079, 1, 5, 13, 93, 2, NULL, 'Which of the following environmental\nconditions are essential for optimum growth\nof Mucor on a piece of bread ?\nA. Temperature of about 25° C\nB. Temperature of about 5° C\nC. Relative humidity of about 5%\nD. Relative humidity of about 95%\nE. A shady place\nF. A brightly illuminated place\nChoose the answer from the following options. (2006)', 'B, C and F only', 'A, C and E only', 'A, D and E only', 'B, D and E only', NULL, NULL, '4.00', '1.00', NULL, 'Mucor is a filamentous fungus found in\nthe humus of soil decaying fruits, vegetables. It is\ncommonly known as black mould. Most of the\nMucor sp. are unable to grow at 37ºC and the strains\nisolated from human infections are usually one of\nthe few thermotolerant Mucor sp. Colonies of\nMucor grow rapidly at 2530\nºC, humidity about 9095%\nand quickly cover the surface of the agar. It\nrequires moist and shady place for its growth. Many\nsp. of Mucor are responsible for causing roting of\nfruit and vegetables. A few sp. e.g., Mucor pusillus\nare pathogenic to man', '3', NULL, NULL, 'Yes', '2018-09-19 17:43:14', '2018-09-19 17:43:14'),
(1080, 1, 5, 13, 93, 2, NULL, 'All of the following statements concerning\nthe actinomycetous filamentous soil bacterium\nFrankia are correct except that Frankia', 'can induce root nodules on many plant', 'can fix nitrogen in the freeliving', 'cannot fix specialized vesicles in which\nthe nitrogenase is protected from oxygen\nby a chemical barrier involving triterpene\nhopanoids', 'like Rhizobium, it usually infects its host\nplant through root hair deformation and\nstimulates cell proliferation in the host’s\ncortex.', NULL, NULL, '4.00', '1.00', NULL, 'Frankia, is a nitrogen fixing symbiotic\nbacteria. It induces root nodules just like\nRhizobium. It is associated symbiotically with the\nroot nodules of several nonlegume\nplants like\nCasuarina, Alnus, Rubus etc. It cannot fix nitrogen\nin free state', '2', NULL, NULL, 'Yes', '2018-09-19 17:43:14', '2018-09-19 17:43:14'),
(1081, 1, 5, 13, 93, 2, NULL, 'For retting of jute the fermenting microbe used\nis (2005)', 'methanophilic bacteria', 'butyric acid bacteria', 'Helicobactor pylori', 'Streptococcus lactin.', NULL, NULL, '4.00', '1.00', NULL, 'Retting is the process of separating fibres\nthat are held together in close association using a\nvariety of bacteria. Fibres of jute are held together in close association and they are separated by the action\nof butyric acid bacteria e.g. Clostridium butyricum.\nThese plants are immersed in water so that they absorb\nwater and swell. Due to the activity of bacteria, the\npectic substances of middle lamella are hydrolysed\nand the fibres are separated. These separated fibres\nare used in making of ropes and sacks.', '2', NULL, NULL, 'Yes', '2018-09-19 17:43:14', '2018-09-19 17:43:14'),
(1082, 1, 5, 13, 93, 2, NULL, 'Basophilic prokaryotes  (2005)', 'grow and multiply in very deep marine\nsediments', 'occur in water containing high\nconcentrations of barium hydroxide', 'readily grow and divide in sea water\nenriched in any soluble salt of barium', 'grow slowly in highly alkaline frozen lakes\nat high altitudes.', NULL, NULL, '4.00', '1.00', NULL, 'Basopilic prokaryotes are facultatively\nanaerobic bacteria. They grow and multiply in very\ndeep marine sediments. Most basophiles grow\nbetter at a pH of 8.5 or higher.', '1', NULL, NULL, 'Yes', '2018-09-19 17:43:14', '2018-09-19 17:43:14'),
(1083, 1, 5, 13, 93, 2, NULL, 'There exists a close association between the\nalga and the fungus within a lichen. The\nfungus (2005)', 'provides protection, anchorage and\nabsorption for the algae', 'provides food for the alga\n', 'fixes the atmospheric nitrogen for the alga\n', 'releases oxygen for the alga.', NULL, NULL, '4.00', '1.00', NULL, ': Lichens are peculiar dual organisms\nproduced by the intimate association of two\norganisms: a fungus and an alga. The association\nbetween the two organisms is symbiosis. Both\nthe organisms are mutually benefitted in this\nassociation and are dependent on each other. The\nalgal cell photosynthesizes with the help of\nchloroplast. Therefore lichens are autotrophic. A\npart of these manufactured carbohydrates are used\nby the alga in its nutrition, the rest is supplied to\nthe fungal partner. The fungus in turn provides\nwater and nutrients which it absorbs from the soil\nusing the rhizoidal hyphae. Thus both the partners\nget benefitted from each other. The algal partner\nis called phycobiont and the fungal partner is\ncalled mycobiont.', '1', NULL, NULL, 'Yes', '2018-09-19 17:43:14', '2018-09-19 17:43:14'),
(1084, 1, 5, 13, 93, 2, NULL, 'Which of the following statements is not true\nfor retroviruses? (2004)', 'DNA is not present at any stage in the life\ncycle of retroviruses.', 'Retroviruses carry gene for RNAdependent\nDNA polymerase', 'The genetic material in mature\nretroviruses is RNA.', 'Retroviruses are causative agents for\ncertain kinds of cancer in man. ', NULL, NULL, '4.00', '1.00', NULL, 'Retroviruses contain RNA as genetic\nmaterial and this RNA is converted to DNA using\nenzyme reverse transcriptase', '1', NULL, NULL, 'Yes', '2018-09-19 17:43:14', '2018-09-19 17:43:14'),
(1085, 1, 5, 13, 93, 2, NULL, 'Viruses that infect bacteria multiply and cause\ntheir lysis, are called (2004)', 'lysozymes', 'lipolytic', 'lytic', 'lysogenic.\n', NULL, NULL, '4.00', '1.00', NULL, 'Viruses like bacteriophage T4 undergo lytic\ncycle that involves lysis of bacteria. The replication\ncycle of bacteriophage T4 consists of following\nphases –\n(i) Adsorption of the phage to bacterial or host\ncell. Then the viral genetic material penetrates into\nthe host cell.\n(ii) Eclipse period involves the synthesis of new\nphage DNA and proteins.\n(iii) Maturation involves the assembly of phage\nDNA into the protein coat.\n(iv) Lysis of host cell occurs and releases infective\nprogeny phases', '3', NULL, NULL, 'Yes', '2018-09-19 17:43:14', '2018-09-19 17:43:14'),
(1086, 1, 5, 13, 93, 2, NULL, 'Phenetic classification of organisms is\nbased on (2004,2003)', 'observable characteristics of existing\norganisms', 'the ancestral lineage of existing organisms\n', 'dendrogram based on DNA\ncharacteristics', 'sexual characteristics. ', NULL, NULL, '4.00', '1.00', NULL, 'Phenetic classification is a type of\nnumerical taxonomy. In this type of classification\nthe organisms are arranged according to overall\nsimilarity of existing organisms based on available\ncharacters. It is also called adansonian taxonomy\nbecause the same was first attempted by Adanson\n(1763), of course on the basis of external traits only umerical taxonomy evolved around 1950. It has\nreceived impetus with the availability of calculating\nmachines and computers. In numerical taxonomy\nas many characters as possible are employed for\nevaluating degree of similarity and difference. All\ncharacteristics used in analysis are given equal\nweightage and importance. A proper selection of\ncharacters, their organisation and analysis in the\nlight of current knowledge is key to success of this\nmethod. A lot of subjectivity can creep in\ndepending upon the judgement of the\nbiosystematist. No weightage is given to the\nquantity of the character present.', '1', NULL, NULL, 'Yes', '2018-09-19 17:43:14', '2018-09-19 17:43:14'),
(1087, 1, 5, 13, 93, 2, NULL, 'A free living nitrogenfixing\ncyanobacterium\nwhich can also form symbiotic association\nwith the water fern Azolla is\n(2004)', 'Tolypothrix', 'Chlorella', 'Nostoc', 'Anabaena.', NULL, NULL, '4.00', '1.00', NULL, 'Anabaena is a free living nitrogen fixing\ncyanobacterium which can form symbiotic\nassociation with the water fern Azolla', '4', NULL, NULL, 'Yes', '2018-09-19 17:43:14', '2018-09-19 17:43:14'),
(1088, 1, 5, 13, 93, 2, NULL, 'During replication of a bacterial chromosome\nDNA synthesis starts from a replication origin\nsite and (2004)', 'RNA primers are involved', 'is facilitated by telomerase', 'moves in one direction of the site', 'moves in bidirectional\nway.', NULL, NULL, '4.00', '1.00', NULL, 'Prokaryotic DNA acts as a single\nreplicating unit called replicon. Each replicon has\na particular region where replication starts. It is\ncalled origin of replication or ori. In the region of\nori, there is a particular nucleotide sequence called\nautonomic replicating sequence or ARS. Replication\nproceeds bidirectionally from each ori. A replication\nfork is produced on each side of ori. Replication\nwill continue till a replication fork meets another\nreplication fork.', '4', NULL, NULL, 'Yes', '2018-09-19 17:43:14', '2018-09-19 17:43:14'),
(1089, 1, 5, 13, 93, 2, NULL, 'Lichens are well known combination of an\nalga and a fungus where fungus has (2004)', 'a saprophytic relationship with the alga', 'an epiphytic relationship with the alga', 'a parasitic relationship with alga', 'a symbiotic relationship with alga.', NULL, NULL, '4.00', '1.00', NULL, 'Refe to answer 72', '4', NULL, NULL, 'Yes', '2018-09-19 17:43:14', '2018-09-19 17:43:14'),
(1090, 1, 5, 13, 93, 2, NULL, 'Chromosomes in a bacterial cell can be 1 –\n3 in number and (2003)', 'are always circular', 'are always linear', 'can be either circular or linear, but never\nboth within the same cel', 'can be circular as well as linear within the\nsame cell.', NULL, NULL, '4.00', '1.00', NULL, 'Bacterial cells do not have nucleus,\ncharacteristic of eukaryotic cells. Nuclear material\nof bacteria lies free in the cell in the form of an\nirregular, thin, fibrillar and circular single molecule\nof DNA, called nucleoid or chromatin body. This\nDNA, sometimes attached at one or more points to\na mesosome, frequently runs parallel to the axis of\nthe cell. Bacterial DNA is not associated with\nhistone protein and does not coil to form welldefined\nchromosomes during the multiplication. In\naddition to circular DNA, a small amount of\nsubsidiary extrachromosomal DNA is also present\nas plasmids or episomes.', '1', NULL, NULL, 'Yes', '2018-09-19 17:43:14', '2018-09-19 17:43:14'),
(1091, 1, 5, 13, 93, 2, NULL, 'Which one of the following statements about\nviruses is correct ?\n(2003)', 'Viruses possess their own metabolic  system.', 'All viruses contain both RNA and DNA.', 'Viruses are obligate parasites.', 'Nucleic acid of viruses is known as capsid.', NULL, NULL, '4.00', '1.00', NULL, ' Viruses contain a protein coat known as\ncapsid which encloses a single type of nucleic acid,\neither RNA or DNA. They do not have enzymes for\nprotein synthesis. They multiply only inside the\nliving host cell and for multiplication they take over\nthe machinery of the host cell. Thus viruses are\nobligatory intercellular parasites. They lack cell\ndivision and enzymes for protein synthesis. They\ndo not have cell organelles like mitochondria, Golgi\ncomplex, lysosomes, ribosomes etc. so they cannot\nlive or reproduce separately', '3', NULL, NULL, 'Yes', '2018-09-19 17:43:14', '2018-09-19 17:43:14'),
(1092, 1, 5, 13, 93, 2, NULL, 'Tobacco mosaic virus is a tubular filament\nof size\n(2003)', ' 300 × 10 nm ', '300 × 5 nm\n', '300 × 20 nm  ', '700 × 30 nm', NULL, NULL, '4.00', '1.00', NULL, 'TMV is rod shaped measuring 300 × 20 nm.\nIt is made of RNA and proteins', '3', NULL, NULL, 'Yes', '2018-09-19 17:43:14', '2018-09-19 17:43:14'),
(1093, 1, 5, 13, 93, 2, NULL, 'Viruses are no more “alive” than isolated\nchromosomes because (2003)', 'they require both RNA and DNA', 'they both need food molecules', 'they both require oxygen for respiration', 'both require the environment of a cell to\nreplicate', NULL, NULL, '4.00', '1.00', NULL, 'Refer to answer 80.', '4', NULL, NULL, 'Yes', '2018-09-19 17:43:14', '2018-09-19 17:43:14'),
(1094, 1, 5, 13, 93, 2, NULL, 'In which kingdom would you classify the\narchaea and nitrogenfixing\norganisms, if the\nfivekingdom\nsystem of classification is used ?\n (2003)', ' Plantae ', ' Fungi\n ', 'Protista  ', 'Monera', NULL, NULL, '4.00', '1.00', NULL, 'The Kingdom Monera includes all\nprokaryotes. They are basically unicellular but can\nbe mycelial, colonial and filamentous. They contain\npeptidogycan in cell wall. Naked circular DNA coiled\nto form nucleoid without association with histones,\nribosomes 70S, thylakoids present in\nphotoautotrophs but other membrane bound\norganelles are absent. Nutrition is of various types\nparasitic,\nchemoautotrophic, photoautotrophic\nand saprobic.\nSome monerans have the ability to fix nitrogen. Due\nto presence of these characters in archaea and\nnitrogenfixing\norganisms they are placed under\nmonera.\nAll others fungi, plantae, protists and animalia are\neukaryotic.', '4', NULL, NULL, 'Yes', '2018-09-19 17:43:14', '2018-09-19 17:43:14'),
(1095, 1, 5, 13, 93, 2, NULL, 'In five kingdom system, the main basis of\nclassification is\n (2002)', ' structure of nucleus\n ', 'mode of nutrition\n', ' structure of cell wall\n ', 'asexual reproduction', NULL, NULL, '4.00', '1.00', NULL, 'Whittaker’s system is based on the\nfollowing three criteria –\n complexity of cell structure.\n complexity of the body organization.\n mode of nutrition.\nOn the basis of these criteria, Whittaker divided\norganisms into five kingdoms. These five kingdoms\nare monera, protista, algae, fungi and animalia. In\nthe five kingdom classification all, prokaryotes\nhave been placed in kingdom monera, all unicellular\neukaryotes in kingdom protista, fungi (except slime\nmoulds and water moulds) in their separate kingdom\nwhile kingdom plantae and kingdom animalia have\nbeen retained for multicellular, autotrophic and\nmulticellular holozoic organisms respectively.', '2', NULL, NULL, 'Yes', '2018-09-19 17:43:14', '2018-09-19 17:43:14'),
(1096, 1, 5, 13, 93, 2, NULL, 'Which statement is correct for bacterial\ntransduction? (2002)', 'Transfer of some genes from one bacteria\nto another bacteria through virus.', 'Transfer of genes from one bacteria to\nanother bacteria by conjugation.', 'Bacteria obtained its DNA directly from\nmother cell.', 'Bacteria obtained DNA from other external\nsource.', NULL, NULL, '4.00', '1.00', NULL, 'In transduction, genetic material of one\nbacterial cell goes to other bacterial cell by agency\nof bacteriophages Transduction was first of all reported in Salmonella\ntyphimurium by Zinder and Lederberg (1952).\nTransduction is used for gene mapping and analysis\nin bacteria and also for strain construction.', '1', NULL, NULL, 'Yes', '2018-09-19 17:43:14', '2018-09-19 17:43:14'),
(1097, 1, 5, 13, 93, 2, NULL, 'The growth curve of bacterial population in\nlab is plotted against time. What will be the\nshape of graph?\n  (2002)', 'Sigmoid ', 'Hyperbolic\n', 'Ascending straight line', 'Descending straight line', NULL, NULL, '4.00', '1.00', NULL, 'The growth curve for bacteria is hyperbolic. \nIt  shows  various  stages­lag  phase,  log  phase  or \nexponential  phase,  steady  or  stationary  phase  and \ndecline  phase.  During  lag  phase there  is  very  less \ngrowth  of  bacterial  cells. \nIn  log  phase,  once  the  metabolic  machinery  is \nrunning  they  start  multiplying  exponentially, \ndoubling in number every few minutes. In stationary \nphase,  booming  growth  stops  and  number  of \nbacteria  stabilises.  Last  is  death  phase  when  the \nbacteria  die  due  to  lack  of  nutrients.', '2', NULL, NULL, 'Yes', '2018-09-19 17:43:14', '2018-09-19 17:43:14'),
(1098, 1, 5, 13, 93, 2, NULL, 'Some bacteria are able to grow in streptomycin\ncontaining medium due to (2002)', 'natural selection\n ', 'induced mutation', 'eproductive isolation', 'genetic drift', NULL, NULL, '4.00', '1.00', NULL, '  Normally  bacteria  cannot  survive  in \nantibiotic  containing  medium  but  if  it  does  so  it \nmust  have  acquired  resistance  against  that \nantibiotic.  These  are  well  adapted  to  grow  in \nstreptomycin containing medium and thus are more \nevolved.  So  due to  natural  selection  only the more \nevolved  and  better  adapted  species  is  able  to \nsurvive', '1', NULL, NULL, 'Yes', '2018-09-19 17:43:14', '2018-09-19 17:43:14'),
(1099, 1, 5, 13, 93, 2, NULL, 'In bacteria, plasmid is\n (2002)', ' extra chromosomal material\n ', 'main DNA\n', 'non functional DNA\n', 'repetitive gene.', NULL, NULL, '4.00', '1.00', NULL, 'In  addition  to  the  nucleoid,  bacterial \ncytoplasm  normally  contains many  small,  separate \npieces of DNA, called plasmids. These circular DNA \nunits  are  1/100 the  size  of the main  nuclear  DNA \n(nucleoid) and are also not enclosed in a membrane \nstructure.  When  found  in  cytoplasm,  entirely \nindependent  of  the  bacterial  chromosome,  they \nreplicate  autonomously.  Sometimes  it  becomes \nintegrated into the  main  DNA  and  replicates  with \nit.  During  conjugation,  the  plasmids,  sometimes \ncalled  episomes,  help in the transfer  of the  genetic \nmaterial  between  different  bacteria.  It  may  carry \nsome genes  of resistance to a variety of antibiotics', '1', NULL, NULL, 'Yes', '2018-09-19 17:43:14', '2018-09-19 17:43:14'),
(1100, 1, 5, 13, 93, 2, NULL, 'Choose the correct sequence of stages of\ngrowth curve for bacteria. (2002)', 'Lag, log, stationary, decline phase', 'Lag, log, decline, stationary phase', 'Stationary, lag, log, decline phase', 'Decline, lag, log phase, stationary', NULL, NULL, '4.00', '1.00', NULL, 'Refer to  answer  86', '1', NULL, NULL, 'Yes', '2018-09-19 17:43:14', '2018-09-19 17:43:14'),
(1101, 1, 5, 13, 93, 2, NULL, 'Which fungal disease spreads by seed and\nflowers? (2002)', 'Loose smut of wheat', 'Corn smut', 'Covered smut of barley\n ', 'Soft rot of potato', NULL, NULL, '4.00', '1.00', NULL, 'Loose  smut  of wheat infects the  healthy \nwheat  plants  at  the  time  of  flowering.  Here \nchlamydospores,  from  smutted  heads  (blown  by \nthe  wind)  germinate  on the  stigmas  and  produce \ninfection threads, infecting the ovaries and stigma.Ultimately,  the  fungus  continues  to  grow  within \nthe  embryo,  as  the  seed  matures.  With  the \ngermination  of  these  infected  seeds,  internal \ndormant fungal mycelium resumes its activity again. \nIn  covered  smut  of  Barley,  fungal  spores  are \nliberated  out  only  by  rupturing  the  wall  of  the \ngrains, specially at the time of threshing. This type \nof infection takes place during the  young seedling \nstage.  Seedling  infection  occurs  in  covered  smut \nof  Barley.  Shoot  infection  occurs  in  corn  smut', '1', NULL, NULL, 'Yes', '2018-09-19 17:43:14', '2018-09-19 17:43:14'),
(1102, 1, 5, 13, 93, 2, NULL, 'Which of the following secretes toxins during\nstorage conditions of crop plants? (2002)', 'Aspergillus', 'Penicillium', 'Fusarium', 'Colletotrichum\n', NULL, NULL, '4.00', '1.00', NULL, 'Penicillium  and  Aspergillus  both \nproduce  toxins  in  stored  seeds  and  grains.\nAspergillus produces aflatoxin in fruits, vegetables, \nfood  grains  and  seeds  etc.  Penicillium  produces \nyellow  rice  toxins in  rice,  barley  and  corns.\n', '2', NULL, NULL, 'Yes', '2018-09-19 17:43:14', '2018-09-19 17:43:14'),
(1103, 1, 5, 13, 93, 2, NULL, '\nCauliflower mosaic virus contains (2001)', 'ss RNA ', ' ds RNA\n ', 'ds DNA ', 'ss DNA', NULL, NULL, '4.00', '1.00', NULL, 'Cauliflower mosaic virus contain dsDNA. \nIt  is  circular  and  shows  semidiscontinuous  type  of \nreplication.', '3', NULL, NULL, 'Yes', '2018-09-19 17:43:14', '2018-09-19 17:43:14'),
(1104, 1, 5, 13, 93, 2, NULL, 'What is true for cyanobacteria? (2001)', 'Oxygenic with nitrogenase', 'Oxygenic without nitrogenase', 'Non oxygenic with nitrogenase\n ', 'Non oxygenic without nitrogenase', NULL, NULL, '4.00', '1.00', NULL, ' Cyanobacteria  are  gram  negative \nprokaryotes which are popularly known as blue­green \nalgae. Although  cyanobacteria  are true  prokaryotes, \nbut  their  photosynthetic  system  closely  resembles \nwith  that  of  eukaryotes  because  they  have \nchlorophyll  a  and  photosystem  II and they carry  out \noxygenic  photosynthesis.  Like  the  red  algae, \ncyanobacteria  use  phycobiliproteins  as  accessory \npigments.  Photosynthetic  pigments  and  electron \ntransport  chain  components  are located in thylakoid \nmembranes  lined  with  particles  called \nphycobilisomes, which  contain phycobilin  pigments, \nparticularly  phycocyanin  and  transfer  energy  to \nphotosystem  II.  They  contain  nitrogenase  enzyme \nfor  nitrogen  fixation.  This  enzyme  becomes inactive \nin  the  presence  of  oxygen  but  the  thick  walled \nheterocysts  provide  suitable  anaerobic  enviornment \nfor  nitrogenase  activity  even  in  aerobic  conditions.', '1', NULL, NULL, 'Yes', '2018-09-19 17:43:14', '2018-09-19 17:43:14'),
(1105, 1, 5, 13, 93, 2, NULL, 'What is true for archaebacteria? (2001)', 'All halophiles', 'All photosynthetics', 'All fossils\n', ' Oldest living beings ', NULL, NULL, '4.00', '1.00', NULL, 'Archaebacteria  are  believed  to  have \noriginated  at  a  time  when  there  were  extreme \nconditions  in  the  biosphere.  Even  today  they  are \nfound in environments where other kinds of bacteria \ncannot  survive.  So  they  are  considered  to  be  the \noldest  of  the living  fossils.\nEg. Methanobacterium,  Methonococcus  etc. \nAll  of  them  are  not  halophiles.  Only  some  forms \nlike Halobacterium, Halococcus can  survive under \nextreme saline conditions. All of them are not fossils \nbecause  many  forms  are  still  surviving  and \nflourishing', '4', NULL, NULL, 'Yes', '2018-09-19 17:43:14', '2018-09-19 17:43:14'),
(1106, 1, 5, 13, 93, 2, NULL, 'Difference in gram positive and gram negative\nbacteria is due to (2001)', 'cell wall', 'cell membrane\n  ', 'ribosome', ' cytoplasm', NULL, NULL, '4.00', '1.00', NULL, 'Using  Gram  stain,  developed  by  Danish \nphysician,  Christian  Gram  in  1884,  two  kinds  ofbacteria  were  noted  ­ those  species  of  bacteria that \nare  decolorized  by alcohol  are  called  gram  negative \nand  those  that  retain  the  stain  are  called  gram \npositive.  This  property  of  bacteria  is  related  with \nthe  structure  and compositional  differences between \nthe walls of gram positive and gram negative forms. \nIn the cell wall of Gram +ve bacteria, both horizontal \nand  vertical  peptide  linkages  are  present,  due  to \nwhich mesh is  dense  and  hence the  stain  does  not \ncome  out.  Further  outer layer  of  cell  wall  of  Gram \n+ve  bacteria is made  of teichoic  acid. \nIn the cell wall of Gram –ve bacteria, either horizontal \nor vertical peptide linkage are present, due to which \nmesh  is loose  and  hence  stain  comes  out.  Further \noutermost layer of cell wall of Gram –ve bacteria is \nmade  of  lipopolysaccharides', '1', NULL, NULL, 'Yes', '2018-09-19 17:43:14', '2018-09-19 17:43:14'),
(1107, 1, 5, 13, 93, 2, NULL, 'Adhesive pad of fungi penetrate the host\nwith the help of (2001)', 'mechanical pressure and enzymes', 'hooks and suckers', 'softening by enzymes', 'only by mechanical pressure', NULL, NULL, '4.00', '1.00', NULL, 'The  adhesive  pad  of  fungi  penetrates  the \nhost  with  the  help  of  mechanical  pressure  and \nenzymes.  It  pushes  against the  cell wall  of the  host \nand then  releases  cellulase to  digest cellulose  of the \nhost  cell wall  so that the  hypha is able to  penetrate \nthe  host  cell wall.', '1', NULL, NULL, 'Yes', '2018-09-19 17:43:14', '2018-09-19 17:43:14'),
(1108, 1, 5, 13, 93, 2, NULL, 'Black rust of wheat is caused by (2001)', 'Puccinia', 'Ustilago', 'Albugo', 'Phytophthora.', NULL, NULL, '4.00', '1.00', NULL, 'Refer  to  answer  55', '1', NULL, NULL, 'Yes', '2018-09-19 17:43:14', '2018-09-19 17:43:14'),
(1109, 1, 5, 13, 93, 2, NULL, 'A system of classification, in which a large\nnumber of traits are considered, is (1999)', 'natural system', 'phylogenetic system', 'artificial system', 'synthetic system.', NULL, NULL, '4.00', '1.00', NULL, 'There  are three  systems  of  classification \n­ artificial, natural and phylogenetic.  In the  natural \nsystem of classification the  organisms are arranged \non  the  basis  of  all  known  taxonomic  characters \ninstead  of  one  or  first  few.  These  include \nmorphological,  anatomical,  cytological, \nphysiological  and  biochemical  characters  of  the \norganisms. \nThe  artificial  system  is  based  on  one  or  a  few \ncharacters  that  are  easily  observable.  The \nphylogenetic  system  tries  to  organize  organisms \non  the  basis  of  their  genetic  and  phylogenetic \nrelationships  besides  taxonomic  characters.\n', '1', NULL, NULL, 'Yes', '2018-09-19 17:43:14', '2018-09-19 17:43:14'),
(1110, 1, 5, 13, 93, 2, NULL, 'Photosynthetic bacteria have pigments in (1999)', 'chromoplasts', 'chromatophores', 'leucoplasts', 'chloroplasts', NULL, NULL, '4.00', '1.00', NULL, ' Photosynthetic  bacteria  have \nchromatophores  which  are  membrane  bound \nvesicular  structures  which  are  extensions  of \ncytoplasmic  membrane.  They  contain \nphotosynthetic  pigments  along  with  enzymes  and \nelectron  carriers  for  photosynthetic \nphosphorylation.  These  pigments  are \nbacteriochlorophyll  and  bacteriophaeophytin. \nLeucoplasts,  chloroplasts  and  chromoplasts  are \ndifferent  types  of  plasids  which  occur  in  plastids \nand  some  protistans', '2', NULL, NULL, 'Yes', '2018-09-19 17:43:14', '2018-09-19 17:43:14'),
(1111, 1, 5, 13, 93, 2, NULL, 'Columella is a specialized structure found in\nthe sporangium of (1999)', 'Spirogyra \n\n', 'Ulothrix', 'Rhizopus ', ' none of these.', NULL, NULL, '4.00', '1.00', NULL, 'Rhizopus  is  a  saprophytic  fungus  that \ngrows  on  dead  organic  matter.  The  mycelium  is \ndifferentiated into three  kinds  of  hyphae  rhizoidal, \nstolons  and  sporangiophores.    The  rhizoidal hyphae  are  for  anchorage  and  absorbing  food  by \nsecreting  enzymes.  Stolons  grow  horizontally  over \nthe  surface  of  the  substratum.  Sporangiophores \nare  specialized  hyphae  that  bear  a  sporangium  at \ntheir tip  (inside  columella  a  dome  shaped  sterile \nportion  the  sporangia).  It  helps  in  dispersal  of \nspores  and  usually  persists  even  after  bursting  of \nthe  sporangium.\n', '3', NULL, NULL, 'Yes', '2018-09-19 17:43:14', '2018-09-19 17:43:14'),
(1112, 1, 5, 13, 93, 2, NULL, 'In the five kingdom system of classification,\nwhich single kingdom out of the following\ncan include bluegreen\nalgae, nitrogen fixing\nbacteria and methanogenic archaebacteria? (1999)', 'Plantae ', 'Protista', 'Monera', 'Fungi', NULL, NULL, '4.00', '1.00', NULL, ' R.H.  Whittaker  had  proposed  a  five \nkingdom system of biological classification in 1969. \nIt  is  based  on  complexity  of  cell  structure,  body \norganization  and mode  of  nutrition.  The  kingdom \nmonera includes all prokaryotes. They are basically \nunicellular  with  peptidoglycan in  cell  wall.  Naked \ncircular  DNA  coiled  to  form  nucleoid  without \nassociation  with  histones,  ribosomes  70S, \nthylakoids  present  in  photoautotrophs  but  other \nmembrane  bound  organelles  are  absent.  These  are \nheterotrophic,  phototrophic  or  chemotrophic  in \ntheir  mode  of  nutrition.  The  blue­green  algae, \nnitrogen  fixing  bacteria  and  methanogenic \narchaebacteria  are  all  unicellular  prokaryotes  so \nthey  are  included  in the  kingdom monera', '3', NULL, NULL, 'Yes', '2018-09-19 17:43:14', '2018-09-19 17:43:14'),
(1113, 1, 5, 13, 93, 2, NULL, 'Transfer of genetic information from one\nbacterium to another in the transduction\nprocess is through (1998)', 'bacteriophages released from the donor\nbacterial strain', 'another bacterium having special organ\nfor conjugation', 'physical contact between donor and\nrecipient strains', 'conjugation between opposite strain\nbacterium. ', NULL, NULL, '4.00', '1.00', NULL, 'Transduction  is  the  phenomenon  of \ntransfer of genetic material from one bacterial cell to \nanother  through  the  agency  of  virus.  The  viruses \ncarry  a  segment  of  DNA  from  one  host  and  infect \nanother  host  which is  different  from the  first  one, \nthe latter may inherit  some  of the  properties  of the \nformer host due to transfer of DNA segment through \ninfecting  phage.\n', '1', NULL, NULL, 'Yes', '2018-09-19 17:43:14', '2018-09-19 17:43:14'),
(1114, 1, 5, 13, 93, 2, NULL, 'A bacterium divides every 35 minutes. If a\nculture containing 10 5 cells per ml is grown\nfor 175 minutes, what will be the cell\nconcentration per ml after 175 minutes? (1998)', '35 × 10 5 cells', '32 × 10 5 cells', '175 × 10 5 cells', '85 × 10 5 cells\n', NULL, NULL, '4.00', '1.00', NULL, '  A  bacterium  divides  every  35 minutes.\n\\  In  175  minutes  it  would  be  2 175/35  times \n= 2 5 times.\n\\  In  175  minutes  105  bacterium  cells  would \nbe = 2 5 ¥ 10 5 = 32 ¥ 10 5 /ml.', '2', NULL, NULL, 'Yes', '2018-09-19 17:43:14', '2018-09-19 17:43:14'),
(1115, 1, 5, 13, 93, 2, NULL, 'The DNA of E.coli is (1998)', 'double stranded and linear\n \n  ', 'double stranded and circular', 'single stranded and linear', 'single stranded and circular.', NULL, NULL, '4.00', '1.00', NULL, '  E.  coli  is  a  gram­negative,  rod  shaped, \nmotile or nonmotile bacteria. E. coli contains a double \nstranded  DNA  as its  genetic material.  The  DNA is \nnot  associated  with  any  histone  proteins  so  it  is \nreferred to as naked DNA. This DNA is circular with \nno  free  ends.\n', '2', NULL, NULL, 'Yes', '2018-09-19 17:43:14', '2018-09-19 17:43:14'),
(1116, 1, 5, 13, 93, 2, NULL, 'The main role of bacteria in the carbon cycle\ninvolves (1998)', 'chemosynthesis', 'digestion or breakdown of organic\ncompounds', 'photosynthesis', 'assimilation of nitrogenous compounds', NULL, NULL, '4.00', '1.00', NULL, ' Bacteria  are  responsible  for  maintaining \nthe conditions  of life  as the earth  by  virtue  of their \npowers  of  decomposition  of  plant  and  animal \nbodies by which the limited supply by CO 2 available \nfor  photosynthesis  is  replenished.  Thus,  they  act \nas decomposers in the carbon cycle. Bacteria mainly \nfunction  as  decomposers  in  the  carbon  cycle.', '2', NULL, NULL, 'Yes', '2018-09-19 17:43:14', '2018-09-19 17:43:14'),
(1117, 1, 5, 13, 93, 2, NULL, 'A few organisms are known to grow and\nmultiply at temperatures of 100105\no C. They\nbelong to (1998)', 'thermophilic sulphur bacteria', 'hot spring bluegreen\nalgae', 'methanogenic archaebacteria', 'marine archaebacteria', NULL, NULL, '4.00', '1.00', NULL, 'Thermoacidophiles (temperature and acid \nloving)  archaebacteria  are  found  in  hot  sulphur \nsprings.  Although  they  are  microscopic,  single­ \ncelled  organisms,  they  flourish  under  conditions \nwhich  would  kill  higher  organisms.  These  are \naerobic  bacteria  and  have  the  capacity  to  oxidize \nsulphur  to  H 2 SO 4  at  high  temperature  and  high \nacidity  (pH  =  2.0).  Some  of them  are  also  able  to \nreduce  sulphur to  H 2 S  under  anaerobic  conditions. \nAs  a  rule, they  grow  best  between  80º  and  100ºC \nand  several  species  do  not  grow  below  80ºC', '1', NULL, NULL, 'Yes', '2018-09-19 17:43:14', '2018-09-19 17:43:14'),
(1118, 1, 5, 13, 93, 2, NULL, 'Puccinia forms uredia and (1998)', ' telia on wheat leaves', ' aecia on barberry leaves', 'pycnia on barberry leaves', 'aecia on wheat leaves. ', NULL, NULL, '4.00', '1.00', NULL, 'Puccinia  is  a  macrocyclic  and \nheteroecious  rust  fungus.  It  produces  uredia  and \ntelia  stages  on  wheat  plant.  The  spores  produced \non  wheat  are  uredospores  (stage  II)  and \nteleutospores  (stage  III).  Uredospores  can  re­infect \nwheat  but  teleutospores  cannot  do  it.  Instead  they \ngive rise to basidia (stage IV). Basidiospores infect \nbarberry.  Pycnidia  (stage  I)  develop  on  the  upper \nsurface  of  barberry  leaves.  Dikaryotisation  occurs. \nIt  gives  rise  to  aecidial  stage  (stage  zero). Aecidia \ndevelop  on  the  lower  surface  of  barberry  leaves. \nThey  form aecidiospores  which infect Wheat. Thus \nbasidial stage is produced  on ground and pycnidial \nand aecidial stages are  produced on  barberry plant', '1', NULL, NULL, 'Yes', '2018-09-19 17:43:14', '2018-09-19 17:43:14'),
(1119, 1, 5, 13, 93, 2, NULL, 'Viruses possess (1997)', 'ribosomes to synthesize protein', 'organelle for its vital mechanism', 'either DNA or RNA\n ', 'none of these. ', NULL, NULL, '4.00', '1.00', NULL, ' Viruses always contain only a single kind \nof  nucleic acid. It can be either DNA or RNA. The \nnucleic acid may occur as single or  double strands. ', '3', NULL, NULL, 'Yes', '2018-09-19 17:43:14', '2018-09-19 17:43:14'),
(1120, 1, 5, 13, 93, 2, NULL, 'Which of the following is freeliving\naerobic\nnonphot osynthetic\nnitrogenfixing\nbacterium?(1997)', 'Nostoc', 'Azospirillum', 'Rhizobium', 'Azotobacter', NULL, NULL, '4.00', '1.00', NULL, '  All  plants  need  nitrogen  to  synthesize \nproteins,  but  for  this  purpose  they  are  unable  to \nutilize  atmospheric  nitrogen.  Nitrogen  fixation  is \nbrought  about  by  two  types  of  bacteria  which  are \nknown  as  nitrogen  fixing  bacteria.  One  type  is \nsymbiotic  nitrogen  fixers  that  are  associated  with \nplants  e.g.,  Rhizobium  and  Azospirillum.The  other  type  of  these  bacteria  are  free living in \nthe  soil  e.g.,  Azotobacter  and  Nostoc. Nostoc  is  photosynthetic  and  Azotobacter  is  non­ \nphotosynthetic. \nSo that,  the  free  living  aerobic  non­photosynthetic \nnitrogen  fixing  bacterium  is  Azotobacter.\n', '4', NULL, NULL, 'Yes', '2018-09-19 17:43:14', '2018-09-19 17:43:14'),
(1121, 1, 5, 13, 93, 2, NULL, 'The site of respiration in bacteria is\n(1997)', ' ribosome ', 'microsome', 'episome', 'mesosome', NULL, NULL, '4.00', '1.00', NULL, 'Mesosomes  are  complex,  intracellular, \nmembranous  structures  within the  cytoplasm,  that \nare  formed  by  the  infoldings  of  the  cytoplasmic \nmembrane.  Surface  of  mesosomes  have  many \nenzymes which take part in respiration e.g., oxidases \nand  dehydrogenases.  Mesosomes  are  also  known \nto  help in the  separation  of two  daughter molecules \nof  DNA  during  cell  division.  They  are  also  called \nmitochondria  of  bacterial  cell. \nRibosomes  are  cytoplasmic  organelles that  occur in \nboth  prokaryotes  and  eukaryotes. When  plasmids \nassociate temporarily with  nucleoid these  are  called \nas  episomes', '4', NULL, NULL, 'Yes', '2018-09-19 17:43:14', '2018-09-19 17:43:14'),
(1122, 1, 5, 13, 93, 2, NULL, 'The hereditary material present in the\nbacterium E.coli is\n (1997)', 'singlestranded', 'doublestranded', 'DNA.', 'RNA.', NULL, NULL, '4.00', '1.00', NULL, ' Refer to answer  104', '2', NULL, NULL, 'Yes', '2018-09-19 17:43:14', '2018-09-19 17:43:14'),
(1123, 1, 5, 13, 93, 2, NULL, 'Genes are packaged into a bacterial\nchromosome by\n(1997)', 'acidic protein', 'actin', 'histones', 'basic protein.', NULL, NULL, '4.00', '1.00', NULL, 'In  bacteria,  DNA  is  highly  charged \nmolecule.  The  adjacent  bases  are  linked  by \nphosphate  groups,  each  with  an  ionized  hydroxyl \ngroup.  It  results  in  negative  charges  which  are \ntherefore  balanced  by  an  equivalent  number  of \ncationic  groups. \nThese  charges  are  balanced  by  histones  which  are \nbasic  proteins  in  case  of  eukaryotes.  Histones  are \nabsent in bacterial cells. In bacteria the charges are \nneutralized  by  polyamines  such  as  spermine  and \nspermidine  and  by  Mg 2+  ions.\n', '4', NULL, NULL, 'Yes', '2018-09-19 17:43:14', '2018-09-19 17:43:14'),
(1124, 1, 5, 13, 93, 2, NULL, 'Most of the lichens consist of\n(1997)', ' green algae and ascomycetes', ' brown algae and higher plant', 'blue green algae and basidiomycetes', 'red algae and ascomycetes.', NULL, NULL, '4.00', '1.00', NULL, '  Lichens  are  peculiar  dual  organisms \nproduced  by  the  intimate  association  of  two \norganisms  –  a  fungus  and  an  alga.  The  association \nbetween the two  organisms is  called  symbiosis.  On \nthe  basis  of  fungal  partner, lichens  are  of  2 types : \n(i)  Ascolichens  :  In  which  ascomycetes member \nis the  fungal  partner.  Further in  ascolichens,  algal \npartner is mostly member of green algae and rarely \nblue­green  algae. \n(ii)  Basidiolichens  :  Where  basidiomycetes \nmember  is  fungal  partner.  In them  algal  partner is \ngenerally  blue­green  algae.  In  80%  cases  algal \npartner is member  of  green  algae  or chlorophyceae \nand in 20% cases, blue­green algae or myxophyceae. \nImportant members of green algae found in lichens \nare:  Trebauxia,  Pleurococcus,  Trentepohlia  and\nCladophora', '1', NULL, NULL, 'Yes', '2018-09-19 17:43:14', '2018-09-19 17:43:14'),
(1125, 1, 5, 13, 93, 2, NULL, 'What is the genetic material in influenza\nvirus?\n (1996)', 'Double helical DNA', 'RNA', 'Single helix DNA', 'None of these ', NULL, NULL, '4.00', '1.00', NULL, 'Influenza  viruses  are  spherical in  shape \nmeasuring  about  800­1200Å  in  diameter.  It  has  a \nprotein capsid that encloses a single stranded RNA. \nThe  single  stranded  RNA  is  generally  linear  and \nconstitutes  about  10%  of  the  virus  particle.  RNA \nis genetic material in other viruses like poliomyelitis, \nfoot  and mouth  disease  virus  and  tobacco  mosaic \nvirus  etc.', '2', NULL, NULL, 'Yes', '2018-09-19 17:43:14', '2018-09-19 17:43:14'),
(1126, 1, 5, 13, 93, 2, NULL, 'BGA (blue green algae) are included in which\nof the following groups?\n (1996)', 'Bryophytes', 'Prokaryotes', 'Protista ', 'Fungi', NULL, NULL, '4.00', '1.00', NULL, NULL, '2', NULL, NULL, 'Yes', '2018-09-19 17:43:14', '2018-09-19 17:43:14'),
(1127, 1, 5, 13, 93, 2, NULL, ' Azotobacter and Bacillus polymyxa are the\nexamples of (1996)', 'pathogenic bacteria\n\n\n', 'decomposers', 'symbiotic N 2 fixer', 'nonsymbiotic N 2 fixer.', NULL, NULL, '4.00', '1.00', NULL, 'Symbiosis  is  a  mutually  beneficial \nrelationship  or  interaction  between  individuals  of \ntwo  different  species  with  none  of the  two  capable \nof  living  separately.  e.g.,  Rhizobium  is  associated \nwith  root  nodules  of legumes.  It  fixes  nitrogen  for \nthe  plant  and  the  plant  provides  it  food  an d \nshelter. Azotobacter is a free­living bacteria which \noccurs  in  the  soil  and  fixes  nitrogen  directly.\nBacillus  is  also  a  free  living  bacteria  which  acts \nupon  nitrogenous  excretions  and  proteins  of  dead \nbodies  of  living  organisms.  These  are  therefore, \nnon­symbiotic  N 2  fixing  bacteria.', '4', NULL, NULL, 'Yes', '2018-09-19 17:43:14', '2018-09-19 17:43:14'),
(1128, 1, 5, 13, 93, 2, NULL, 'What are the sex organs provided in some\nbacteria?\n(1996)', 'Sex pili', 'Plasmid', 'Circular DNA', 'Gametes', NULL, NULL, '4.00', '1.00', NULL, 'Sex  pili  are  minute  and  non­flagellar \nhairlike structures projecting from the wall of many \ngram negative bacteria and few Gram +ve ones. They \nare entirely composed of a protein called pilin. They \nare  used  as  sex  organs  during  conjugation,  forms \nconjugation tube  during  conjugation.  They  confer \nthe  property  of  stickiness whereby  bacteria  tend to \nadhere  to  one  another  (clump  formation). They  are \nof  two  types­long  conjugating  pili  and  short \nattachment  pili. \nNaked circular  DNA is the  genetic material which \nis  not  enclosed  by  nuclear  membrane  non \ncomplexed  with  proteins.  It is  called  nucleoid  or \ngenophore.  Plasmids  (Hayes  and  Lederberg,  1952) \nare  additional  or  extrachromosomal  small  rings  of \nDNA  having  a  few  useful  but  nonvital genes, e.g., \nFor  fertility  factor, R­factors  or  resistance  factor.', '1', NULL, NULL, 'Yes', '2018-09-19 17:43:14', '2018-09-19 17:43:14'),
(1129, 1, 5, 13, 93, 2, NULL, 'Which type of DNA is found in bacteria?\n (1996)', 'Circular free DNA', 'Membrane bound DNA', 'Straight DNA', ' Helical DNA ', NULL, NULL, '4.00', '1.00', NULL, 'Bacterial  cells  do  not  have  nucleus. \nNuclear material  of  bacteria  lies  free in  the  cell in \nthe  form  of  an irregular, thin  fibrillar  and  circular \nsingle  molecule  of  DNA  called  nucleoid  or \nchromatin  body.  This  DNA is  sometimes  attached \nat one or more points to a mesosome. Bacterial DNA \nis  not  associated  with  histone  proteins  and  does \nnot  coil to  form  well  defined  chromosomes  during \nmultiplication. This is the  basic characteristic of all \nprokaryotes  and  bacteria  is  prokaryotic  organism.', '1', NULL, NULL, 'Yes', '2018-09-19 17:43:14', '2018-09-19 17:43:14'),
(1130, 1, 5, 13, 93, 2, NULL, 'Which one of the following statement about\nlichens is wrong ? \n (1996)', ' These grow very rapidly (2 cm per day).', 'They show fungal and algal symbiotic relationships.', 'Some of its species are eaten by reindeers.', 'These are pollution indicators. ', NULL, NULL, '4.00', '1.00', NULL, '  Lichens  grow  by  extending their thallus \noutwards from either tips or edges. They grow very \nslowly. Rates  of growth  can  vary  from 0.5 mm  per \nyear  to  500  mm  per  year.  This  slow  growth  rate \nequates  with their  long  life.', '1', NULL, NULL, 'Yes', '2018-09-19 17:43:14', '2018-09-19 17:43:14'),
(1131, 1, 5, 13, 93, 2, NULL, 'is correctly described as\n(1996)', ' parasitic association between roots and\nsome fungi', 'symbiotic relationship between fungi and\nroots of some higher plants', 'symbiosis of algae and fungi', 'relation of ants with the stem of some\ntrees. ', NULL, NULL, '4.00', '1.00', NULL, '  Association  between  roots  of  higher \nplants e.g.,  pine, birch and  fungal hyphae is  called \nmycorrhiza.  It  exhibits  the  phenomenon  of \nsymbiosis.  Here  both the  organisms  in  association \nare mutually benefitted. In this, fungal  hyphae take \nnutrition  from  the  plant  and  in  return  increase \nsurface  area  for  absorption  of  water  and  minerals \nfor the plant. Mycorrhizal roots  occur in superficial \nlayers of the soil. They are thick, irregular with wooly \ncovering  devoid  of  root  hairs  and  root  cap.  They \nare  of  two  types  ­  ectomycorrhiza  and \nendomycorrhiza.  In  the  roots  of  Pinus  is  seen \nectotrophic mycorrhiza  as the  root  hairs  are  poorly \ndeveloped.  In  ectomycorrhiza,  the  fungus  partner \nis commonly a basidiomycete. It lives in intercellular \nspaces  of cortex  and  forms  a thick  wooly  covering \non  the  outside.  In  endomycorrhiza,  the  fungus  is \ncommonly a zygomycete. The  tips of fungal hyphae \npass into  cortical  cells  producing  swollen  vesicles \nor  finely  branched  masses  called  arbuscules. \nEndomycorrhiza  is,  therefore,  also  called VAM  or \nvesicular­arbuscular mycorrhiza.  Outer  covering  is \nsmall.  Parasitism is  a  phenomenon that  involves  a \nparasite  which lives in  constant  association  of the \nhost and gets its  food  directly or indirectly  without \nkilling  the  host. Antagonism  is  the  inhibition  of \ngrowth  of  one  organism  by  another.    Endemism is \nthe  permanent  occurrence  of  an  organism  inside \nanother  organism.', '2', NULL, NULL, 'Yes', '2018-09-19 17:43:14', '2018-09-19 17:43:14'),
(1132, 1, 5, 13, 93, 2, NULL, 'The tailed bacteriophages are\n(1995)', 'motile on surface of bacteria', 'nonmotile', 'motile on surface of plant leaves', 'actively motile in water. ', NULL, NULL, '4.00', '1.00', NULL, ' The  tailed  bacteriophages  contain  a \nhollow  helical  tail  which  serves  both  as  cell \nattachment  organ  and  as  a  tube that  facilitates the \nentry  of  nucleic  acid  into  the  host  cell.  The  tail \nconsist  of  tail  plate  and  the  caudal  fibres.', '1', NULL, NULL, 'Yes', '2018-09-19 17:43:14', '2018-09-19 17:43:14'),
(1133, 1, 5, 13, 93, 2, NULL, 'A large number of organic compounds can\nbe decomposed by\n(1995)', 'Azotobacter', 'chemolithotrophs', 'Mycoplasma', 'Pseudomonas.', NULL, NULL, '4.00', '1.00', NULL, 'Chemolithotrophs  can  derive  the  energy \nrequired for growth from the oxidation of inorganic \ncomponents.\n', '2', NULL, NULL, 'Yes', '2018-09-19 17:43:14', '2018-09-19 17:43:14'),
(1134, 1, 5, 13, 93, 2, NULL, 'The black rust of wheat is a fungal disease\ncaused by \n(1995)', 'Albugo candida', 'Puccinia graminis tritici', 'Melampsora lini', 'Claviceps purpurea.', NULL, NULL, '4.00', '1.00', NULL, 'Puccinia  graminis  tritici  belongs  to \nbasidiomycotina and causes  black  rust of wheat.  It \nis internal obligate parasite. It is found everywhere, \nwhere  wheat  is  grown.  The  teleutospores  of  the \nfungus  causes  the  rust.  They  are  produced  inside \nteleutosori. These telia form elongated,  dark brown \nto black pustules on the surface of stems and leaves \nof the  wheat. Albugo candida  causes  white  rust  of crucifers.  Melampsora  lini  causes  linseed  rust.\nClaviceps  purpurea  causes  ergot  of  graminae.\n', '2', NULL, NULL, 'Yes', '2018-09-19 17:43:14', '2018-09-19 17:43:14'),
(1135, 1, 5, 13, 93, 2, NULL, 'Tobacco mosaic virus (TMV) genes are\n (1994)', 'single stranded RNA', 'double stranded DNA', 'proteinaceous', 'double stranded RNA. ', NULL, NULL, '4.00', '1.00', NULL, 'Tobacco Mosaic Virus is  a ribovirus  and \ncontains  single  stranded  RNA.  It  was  proved  by \nthe experiments of  Frankel Conart that RNA is the \ngenetic  material  in  this  virus.  It  does  not  contain \nany DNA and is composed of 6 % RNA surrounded \nby  a  hollow  cylinder  of  portion  subunits. \nDouble  stranded  RNA  is  found  in  Reovirus  and \nTumor  virus. \nRetroviruses  have  two  copies  of  single  stranded \nRNA.', '1', NULL, NULL, 'Yes', '2018-09-19 17:43:14', '2018-09-19 17:43:14'),
(1136, 1, 5, 13, 93, 2, NULL, 'Phylogenetic classification is one which is\nbased on (1994)', 'overall similarities', 'utilitarian system', 'habits of plants', 'common evolutionary descent.', NULL, NULL, '4.00', '1.00', NULL, ' Phylogenetic  systems  of  classification \nbring  out  evolutionary  relationships  of  organisms. \nPhylogenetic  systems  of  classification  came  into \nexistence  after  acceptance  of  doctrine  of  evolution \nand  natural  selection  propounded  by  Charles \nDarwin  in  his  book  “On the  origin  of  Species”  by \nmeans of Natural Selection. Darwin had put forward \nthe  view  that  the  present  day  plants/animals \noriginated  from  some  ancestral  ones  after \nundergoing  some  periodical  changes. \nSo  the  phylogenetic  classification is  based  on  the \nevolutionary  descent  of  a  group  of  organisms  and \nthe  relationships are depicted through  a  phylogram \nand  a  cladogram.', '4', NULL, NULL, 'Yes', '2018-09-19 17:43:14', '2018-09-19 17:43:14'),
(1137, 1, 5, 13, 93, 2, NULL, 'The protists have\n(1994)', 'only free nucleic acid aggregates', 'membrane bound nucleo proteins lying\nembedded in the cytoplasm', 'gene containing nucleoproteins\ncondensed together in loose mass', 'nucleoprotein in direct contact with the\nrest of the cell substance.', NULL, NULL, '4.00', '1.00', NULL, 'Protists include all unicellular and colonial \neukaryotes  except  those  of  green  and  red  algae. \nThey  are  broadly  divided  into  three  groups  ­ \nphotosynthetic,  slime moulds  and  protozoans.  The \nprotistan  cells  are  typically  eukaryotic  having \nmembrane  bound  organelles  like  mitochondria, \nchloroplasts,  golgi  bodies,  endoplasmic  reticulum, \nnucleus  etc.  Nucleus is  well  defined.  Protists  can \nbe  uninucleate,  binucleate  or  multinucleate.  The \ngenetic material is linear DNA, enclosed by nuclear \nenvelope,  complexed  with  proteins  and  organised \ninto  distinct  chromosomes.', '2', NULL, NULL, 'Yes', '2018-09-19 17:43:14', '2018-09-19 17:43:14'),
(1138, 1, 5, 13, 93, 2, NULL, 'Organisms, which fix atmospheric nitrogen\nin the soil, fall under the category of\n(1994)', 'bacteria', 'Green algae\n . ', 'soil fungi ', 'mosses', NULL, NULL, '4.00', '1.00', NULL, ' A few free living bacteria are able to pick \nup  dinitrogen from the soil atmosphere and convert \nit  into  organic  nitrogenous  materials  like  amino \nacids.  e.g.  Azotobacter.  Symbiotic  nitrogen  fixing \nbacteria  of the  genus  Rhizobium  occur  in the  root \nnodules  of  a  number  of  legumes.  Root  nodules \ncontaining  symbiotic  nitrogen  bacteria  also  occur \nin  Casuarina  and  Alnus.  Leaf  nodules  containing \nsuch  bacteria  are  found  in  Ardisia.  Many \ncyanobacteria  (blue­green  algae)  fix  atmospheric \nnitrogen  due  to  presence  of  heterocysts.', '1', NULL, NULL, 'Yes', '2018-09-19 17:43:14', '2018-09-19 17:43:14');
INSERT INTO `questions` (`id`, `qtype_id`, `subject_id`, `topic_id`, `stopic_id`, `diff_id`, `passage_id`, `question`, `option1`, `option2`, `option3`, `option4`, `option5`, `option6`, `marks`, `negative_marks`, `hint`, `explanation`, `answer`, `true_false`, `fill_blank`, `status`, `created`, `modified`) VALUES
(1139, 1, 5, 13, 93, 2, NULL, 'Transduction in bacteria is mediated by(1994)', 'plasmid vectors \n', 'phage vectors', 'cosmids', 'F-factors.', NULL, NULL, '4.00', '1.00', NULL, 'In transduction,  genetic  material  of  one \nbacterial cell goes to  other  bacterial cell by agency \nof  bacteriophages  or  phages  (viruses,  infecting \nbacteria). \nTransduction was first of all reported in Salmonella \ntyphimurium  by  Zinder  and  Lederberg  (1952). \nTransduction is used for gene mapping and analysis \nin  bacteria  and  also  for  strain  construction', '2', NULL, NULL, 'Yes', '2018-09-19 17:43:14', '2018-09-19 17:43:14'),
(1140, 1, 5, 13, 93, 2, NULL, 'A nonphotosynthetic\naerobic nitrogen fixing\nsoil bacterium is\n(1994, 1990)', 'Rhizobium', 'Clostridium', 'Azotobacter', 'Klebsiella.', NULL, NULL, '4.00', '1.00', NULL, 'A  non­photosynthetic  aerobic  nitrogen \nfixing soil bacterium is Azotobacter. Azotobacter is \nfree  living  soil  bacteria  that  are  able  to  pick  up \ndinitrogen  from  the  soil  and  fixes  it  into  organic \nnitrogenous material  like  amino  acid', '3', NULL, NULL, 'Yes', '2018-09-19 17:43:14', '2018-09-19 17:43:14'),
(1141, 1, 5, 13, 93, 2, NULL, 'Mycorrhiza exhibits the phenomenon of (1994)', ' parasitism', 'symbiosis', 'antagonism', 'endemism.', NULL, NULL, '4.00', '1.00', NULL, 'Refer to answer  120.\n', '2', NULL, NULL, 'Yes', '2018-09-19 17:43:14', '2018-09-19 17:43:14'),
(1142, 1, 5, 13, 93, 2, NULL, ' Schizont stage of Plasmodium occurs in human\ncells\n(1993)', ' erythrocytes ', 'liver cells', 'erythrocytes and liver cells', 'erythrocytes, liver cells and spleen cells.', NULL, NULL, '4.00', '1.00', NULL, '  Schizont  stage  of  Plasmodium  occurs  in \nhuman  erythrocytes  and  liver  cells. Within  the \nhuman  blood the  sporozoites,  circulates  about  half \nan  hour  and  enters into the  liver  cell.  The  kupffer \ncells of the liver clear the sporozoites from the blood \nstream  and  kill many  of the  organisms. A  fraction \nof  sporozoites  escape  destruction,  however,  and \npenetrate  the  hepatocytes  where  they  take  up  the \nresidence.  Here  they  multiply  by  schizogony.', '3', NULL, NULL, 'Yes', '2018-09-19 17:43:14', '2018-09-19 17:43:14'),
(1143, 1, 5, 13, 93, 2, NULL, 'If all ponds and puddles are destroyed, the\norganism likely to be destroyed is\n(1993)', ' Leishmania', 'Trypanosoma', 'Ascaris', 'Plasmodium.', NULL, NULL, '4.00', '1.00', NULL, ' Plasmodium is digenetic i.e., it completes \nits life cycle in two hosts, asexual cycle in man and \nsexual  cycle in  Anopheles mosquito. The  breeding \nplaces of this mosquito is ponds, marshes, swampy \nareas  etc.  So,  if  all  the  ponds  and  puddles  are \ndestroyed,  Anopheles  will  not  be  able  to  survive \nleading to  destruction  of its  parasite,  Plasmodium', '4', NULL, NULL, 'Yes', '2018-09-19 17:43:14', '2018-09-19 17:43:14'),
(1144, 1, 5, 13, 93, 2, NULL, 'Genophore/bacterial genome or nucleoid is\nmade of\n(1993)', 'histones and nonhistones', 'RNA and histones', 'a single double stranded DNA', 'a single stranded DNA. ', NULL, NULL, '4.00', '1.00', NULL, 'Bacteria has no nuclear membrane hence \nit  is  called  as  nucleoid.  The  genetic  material  is \nreferred to as genophore. Genophore is the bacterial \nchromosome.  It  has  a  double  stranded  circular \nsupercoiled DNA. DNA has about 10,000 genes in\nE.coli. Double stranded DNA in bacteria is without \nhistones.\n', '3', NULL, NULL, 'Yes', '2018-09-19 17:43:14', '2018-09-19 17:43:14'),
(1145, 1, 5, 13, 93, 2, NULL, 'Escherichia coli is used extensively in biological research as it is (1993)', 'easily culture', ' easily available', 'easy to handle', 'easily multiplied in host. ', NULL, NULL, '4.00', '1.00', NULL, 'E. coli bacteria acts as a human symbionts \nand  it  is  found  in  human  intestine,  synthesize \nvitamin K and B and also help in food fermentation. \nIt is  easily  cultured  in  any  nutrient medium  in the \nlaboratory', '1', NULL, NULL, 'Yes', '2018-09-19 17:43:14', '2018-09-19 17:43:14'),
(1146, 1, 5, 13, 93, 2, NULL, 'The part of life cycle of malarial parasite\nPlasmodium vivax, that is passed in female\nAnopheles is\n(1992)', 'sexual cycle', 'preerythrocytic\nschizogony', 'exoerythrocytic schizogony', 'posterythrocytic schizogony.', NULL, NULL, '4.00', '1.00', NULL, 'Plasmodium  has  two  hosts. \n(i)  Female Anopheles mosquito :  Here the  sexual \nphase  of  the  malarial  parasite  occurs  and  it  is \nconsidered the  definitive  host  of  malarial  parasite. \n(ii)  Human  beings  :  Here  the  asexual  phase  of \nmalarial  parasite  occurs.  It  is  considered  as  the \nintermediate  host.  Options  (b),  (c)  and  (d)  are the \nstages  of  the  asexual  phase  of  Plasmodium', '1', NULL, NULL, 'Yes', '2018-09-19 17:43:14', '2018-09-19 17:43:14'),
(1147, 1, 5, 13, 93, 2, NULL, 'Bacteria lack alternation of generation because\nthere is  \n(1992, 1991)', 'neither syngamy nor reduction division', 'distinct chromosomes are absent', 'no conjugation', 'no exchange of genetic material.', NULL, NULL, '4.00', '1.00', NULL, ' In  sexual  reproduction,  syngamy  and \nmeiotic  division takes  place  but in bacteria,  during \nsexual reproduction there is no formation of gametes \nhence  no  syngamy  and  reduction  division  occurs, \nbacteria lack alternation of generation. Conjugation \nand  exchange  of  genetic  material  takes  place  in \nbacteria.', '1', NULL, NULL, 'Yes', '2018-09-19 17:43:14', '2018-09-19 17:43:14'),
(1148, 1, 5, 13, 93, 2, NULL, 'Organisms which are indicator of SO 2 pollution\nof air \n(1992)', 'mosses ', 'lichens', 'mushrooms', 'puffballs.', NULL, NULL, '4.00', '1.00', NULL, ' Lichens are  found in Artic Tundra  region \nwhere  no  other  plant  can  grow.  Lichens  prefer to \ngrow in  pollution  free  environment.  They  are  often \nused  as  a  indicator  of  pollution  and  also  they  are \nvery sensitive to SO 2 . They are first to die in a polluted \nenvironment  (more  SO 2 ).', '2', NULL, NULL, 'Yes', '2018-09-19 17:43:14', '2018-09-19 17:43:14'),
(1149, 1, 5, 13, 93, 2, NULL, 'An important criterion for modern day\nclassification is\n(1991)', 'resemblances in morphology', 'anatomical and physiological traits', 'breeding habits', 'presence or absence of notochord.', NULL, NULL, '4.00', '1.00', NULL, 'Taxonomy and classification are a part of \nthe  broader  field  of  systematics  which is the  study \nof  diversity  of  organisms. Classification  of  a  part \nof  systematics  as it  lists  the  unique  characters  of \neach  taxon.\n', '2', NULL, NULL, 'Yes', '2018-09-19 17:43:14', '2018-09-19 17:43:14'),
(1150, 1, 5, 13, 93, 2, NULL, 'In Amoeba and Paramecium osmoregulation\noccurs through  (1991)', 'pseudopodia', 'nucleus', 'contractile vacuole', 'general surface.', NULL, NULL, '4.00', '1.00', NULL, 'In  Amoeba  and  Paramecium,\nosmoregulation  occurs through  contractile  vacoule. \nOsmoregulation  is  a  phenomenon  in  which \ncontractile  vacuole  plays  an  important  role  in \nmaintaining  the  water  balance  of  the  cell.\nParamecium  contains  two  contractile  vacuoles \nwhich  have  fixed  position.  One  contractile  vacuole \nis  present  near  the  anterior  end  while  another  is \npresent  towards  posterior  end  of  the  body.  Each \ncontractile  vacuole  is  surrounded  by  5­12  radial \ncanals.  Excess  of  water  is  transferred  from  the \ncytoplasm to the radial canals. The latter pour water \ninto the contractile vacuole. The contractile  vacuole \nexpels  water  outside the  body. Thus  the  contractile \nvacuoles  and  radial  canals  are  for  osmoregulation. \nIn  Amoeba  the  endoplasm,  at  its  posterior  end, \ncontains  a  single,  clear  rounded  and  pulsating \ncontractile  vacuole,  filled  with  a  watery  fluid  and \nenclosed  by  a  unit  membrane.  Surrounding  this \nmembrane is  a  region  containing many  tiny  feeder \nvacuoles  and  mitochondria.  It  helps  in  the \nosmoreg', '3', NULL, NULL, 'Yes', '2018-09-19 17:43:14', '2018-09-19 17:43:14'),
(1151, 1, 5, 13, 93, 2, NULL, 'African sleeping sickness is due to\n(1991)', 'Plasmodium vivax transmitted by tse-tse fly', 'Trypanosoma lewsii transmitted by bed\nbug', 'Trypanosoma gambiense transmitted by\nGlossina palpalis', 'Entamoeba gingivalis spread by\nhousefly.', NULL, NULL, '4.00', '1.00', NULL, 'Trypanosoma  gambiense is the  parasitic \nzooflagellate  which  causes  one  of  the  deadliest \nailments in  human  beings  called  sleeping  sickness \nor  trypanosomiasis.  The  disease  is  common  in \nhumid and subhumid zones of the African continent. \nThe  disease is  transmitted  by  shade loving tse­tse \nfly  (Glossina  palpalis)  which  acts  as  the  vehicle \nthat  carries  the  culprit  protozoan  parasite.', '3', NULL, NULL, 'Yes', '2018-09-19 17:43:14', '2018-09-19 17:43:14'),
(1152, 1, 5, 13, 93, 2, NULL, 'Malignant tertian malarial parasite, belongs\nto class\n(1991)', ' Plasmodium falciparum', 'P. vivax', ' P. ovale', 'P. malariae', NULL, NULL, '4.00', '1.00', NULL, '  Plasmodium falciparum  is the  greatest \nkiller  of  human  beings  over  most  parts  of Africa \nand  else  where  in tropics.  It  causes  malignant  (or \npernicious  or  cerebral  or tropical) tertian  malaria. \nThis malaria is most harmful.\nPlasmodium  vivax  causes  benign  tertian  malaria.\nPlasmodium  malariae  causes  quartan  malaria. \nPlasmodium  ovale is the  rarest  of the  four  species \nwhich infect man and it causes mild tertian malaria.', '1', NULL, NULL, 'Yes', '2018-09-19 17:43:14', '2018-09-19 17:43:14'),
(1153, 1, 5, 13, 93, 2, NULL, 'Who discovered Plasmodium in R.B.C. of\nhuman beings?\n(1991)', 'Ronald Ross ', 'Mendel', 'Laveran', 'Stephens', NULL, NULL, '4.00', '1.00', NULL, ' Laveran discovered that malaria is caused \nby  protozoan  parasite  (Plasmodium)  in  1880.  He \ndiscovered Plasmodium and got nobel prize in 1907. \nSir Ronald Ross in 1897, a  doctor in  Indian Army, \nestablished that malarial  parasite is transmitted  by \nthe  bite  of  a  female  Anopheles  mosquito  and  in \n1902,  he  got  Nobel  prize  for  this  discovery', '3', NULL, NULL, 'Yes', '2018-09-19 17:43:14', '2018-09-19 17:43:14'),
(1154, 1, 5, 13, 93, 2, NULL, 'Name the organisms which do not derive\nenergy directly or indirectly from sun.\n(1991)', 'Chemosynthetic bacteria', 'Pathogenic bacteria', 'Symbiotic bacteria', 'Mould', NULL, NULL, '4.00', '1.00', NULL, 'Chemosynthetic  bacteria  do  not  derive \nenergy  directly  or indirectly  from  sun.  The  source \nof  energy of these  bacteria is inorganic  substances. \nThey  utilise  the  energy  liberated  by  oxidation  of \ninorganic  compounds  and  synthesize  organic \ncompounds.', '1', NULL, NULL, 'Yes', '2018-09-19 17:43:14', '2018-09-19 17:43:14'),
(1155, 1, 5, 13, 93, 2, NULL, 'Plasmodium, the malarial parasite, belongs\nto class\n(1990)', 'sarcodina', 'ciliata', 'sporozoa', 'dinophyceae.', NULL, NULL, '4.00', '1.00', NULL, 'These  protozoans  are  adapted to  parasitic \nmode  of  life.  All  of  them  are  endoparasites. \nLocomotory  organelles  (cilia,  flagella,  pseudopodia, \netc.) are absent. Organelles connected with ingestion \nare absent. Nutrition is parasitic (absorptive). Sexual \nreproduction  takes  place  through  syngamy.  It  is \nfollowed by  spore formation, hence sporozoans. Life \ncycle  consists  of  two  distinct  asexual  and  sexual \nphases.  They may  be  passed in  one  (monogenetic) \nor two  different  hosts  (digenetic).', '3', NULL, NULL, 'Yes', '2018-09-19 17:43:14', '2018-09-19 17:43:14'),
(1156, 1, 5, 13, 93, 2, NULL, 'Amoebiasis is prevented by\n(1990)', 'eating balanced food', 'eating plenty of fruit', 'sdrinking boiled water', 'using mosquito nets. ', NULL, NULL, '4.00', '1.00', NULL, 'Amoebiasis can be prevented by drinking \nboiled  water  as  it  mainly  occurs  by  ingestion  of \ncysts  of  E.  histolytica  in  food  or  drinks.  The \ncontamination  of  food  or  drinks  occurs  by  (i) \nunhygienic  habits  of  food  handlers  who  by  habit \nscratch  the  anus  and  then  put  the  fingers  in  the \nfood  which  they  serve,  (ii)  habit  of  defecating  in \nopen  fields  causing  contamination  of  vegetables \nand then washing the  bottom in ponds  causing the \ncontamination  of  water,  (iii)  transmission  of  cysts \nfrom  stools  to  food  and  drinks  by  flies  and \ncockroaches.  So,  one  should  take  following \npreventive  measures  : \n(I)  Proper  sanitation  of  roads,  streets,  lanes  and \nopen  drains. \n(II)  Purification  of  drinking  water  (by  boiling). \n(III)  Proper  disposal  of  sewage. \n(IV)  Covering  of  the  food  articles  by  the  traders. (V)  Chemical treatment of huma faeces to  be used \nas  fertilizer', '3', NULL, NULL, 'Yes', '2018-09-19 17:43:14', '2018-09-19 17:43:14'),
(1157, 1, 5, 13, 93, 2, NULL, 'Which is true about Trypanosoma?\n(1990)', 'Polymorphic', 'Monogenetic', 'Facultative parasite', 'Nonpathogenic', NULL, NULL, '4.00', '1.00', NULL, ' Trypanosoma  is  polymorphic i.e. it  has \nmore than  one  form.  It  has  at least  four  forms that \nare  recognized  on  the  basis  of  the  positions  of \nkinetoplast and  blepharoplast and the  course taken \nby  the  flagellum.  Two  or  more  such  forms  occur \neither  in one  or  both the  hosts in the life cycles  of \nvarious  species  of  Trypanosoma. These  forms  are \n(i)  Leishmanial (amastigote) : Round or oval form \nwith  a  nucleus,  blepharoplast  and  kinetoplast. \nFlagellum  reduced  and  fibril­like,  embedded  in \ncytoplasm. \n(ii)  Leptomonad  (promastigote)  :  Body  elongate, \nnucleus large  and  anteriorly  located  blepharoplast \nand  kinetoplast.  Flagellum  short  and  unattached. \n(iii)  Crithidial  (epimastigote)  :  Body  elongate. \nBlepharoplast  and  kinetoplast  placed immediately \nanterior  to  nucleus.  Undulating  membrane \ninconspicuous. \n(iv)  Trypanosomid  (trypomastigote)  :  Body \nelongate and slender. Blepharoplast and kinetoplast \nsituated  at  or  near  posterior  end.  Undulating \nmembrane  conspicuous.\nTrypanosoma  is  digenetic i.e.  it  completes its life \ncycle in two  hosts.  It is an  obligate  parasite and is \npathogenic', '1', NULL, NULL, 'Yes', '2018-09-19 17:43:14', '2018-09-19 17:43:14'),
(1158, 1, 5, 13, 93, 2, NULL, 'Genetic information in Paramecium is contained\nin (1990)', 'micronucleus', 'macronucleus', ' both micronucleus and macronucleus', 'mitochondria.', NULL, NULL, '4.00', '1.00', NULL, 'Paramecium  contains  a  single  large \nmacronucleus  and  one  small  micronucleus.  The \nmacronucleus  controls metabolism  such as  feeding \nand maintaenance, whereas the micronucleus takes \nan important role in reproduction and stores genetic \ninformation, hence it is also termed as reproductive \nnucleus  whereas  macronucleus  is  termed  as \nvegetative  nucleus.', '1', NULL, NULL, 'Yes', '2018-09-19 17:43:14', '2018-09-19 17:43:14'),
(1159, 1, 5, 13, 93, 2, NULL, 'The infective stage of malarial parasite,\nPlasmodium that enters human body is \n(1990)', 'merozoite', 'sporozoite', 'trophozoite', 'minuta form.', NULL, NULL, '4.00', '1.00', NULL, ' The infective  stage  of  Plasmodium  is  a \nminute  organism  called  sporozoite.  When  the \nmosquito  bites  man,  sporozoites  present  in  the \nsalivary  gland  of  female  Anopheles  mosquito  are \ninjected  into  the  blood  of  the  man.  These \nsporozoites  are  spindle­shaped  or  sickle­shaped \nuninucleate organisms capable of  wrigging (worm­ \nlike) movements. Each sporozoite consists of elastic \npellicle,  cytoplasm  and  nucleus.', '2', NULL, NULL, 'Yes', '2018-09-19 17:43:14', '2018-09-19 17:43:14'),
(1160, 1, 5, 13, 93, 2, NULL, 'The main difference in Gram (+)ve and Gram\n(–)ve bacteria resides in their\n(1990)', 'cell wall ', ' cell membrane', 'cytoplasm', 'flagella.', NULL, NULL, '4.00', '1.00', NULL, ' Danish bacteriologists Christian Gram for \nthe  first time  classified  bacteria  on the  basis of the \ncell wall into two groups ­ Gram +ve and Gram –ve \nby  staining  with  crystal  violet  and  safranin.  Gram \n+ve cell walls are less complex with peptidoglycan \ncompounds  and  proteins  and  no lipids  in  the  cell \nwall. Whereas  in  Gram  –ve  cell  walls  are   complex  with  peptidoglycan  compounds, \nphospholipids  and  lipopolysaccharides  and \ncontains  20%  lipids.\n', '1', NULL, NULL, 'Yes', '2018-09-19 17:43:14', '2018-09-19 17:43:14'),
(1161, 1, 5, 13, 93, 2, NULL, 'Which one belongs to monera?\n(1990)', 'Amoeba', 'Escherichia', 'Gelidium', 'Spirogyra', NULL, NULL, '4.00', '1.00', NULL, 'All  prokaryotic  organisms  come  under \nKingdom Monera.  Escherichia  coli is  a  bacterium. \nMonera  includes  bacteria,  mycoplasmas, \ncyanobacteria  (blue  green  algae) and  actinomycetes.', '2', NULL, NULL, 'Yes', '2018-09-19 17:43:14', '2018-09-19 17:43:14'),
(1162, 1, 5, 13, 93, 2, NULL, 'Absorptive heterotrophic nutrition is exhibited\nby\n(1990)', 'algae', 'fungi', 'bryophytes', 'pteridophytes.', NULL, NULL, '4.00', '1.00', NULL, 'The true fungi or the eumycetes are special \ntypes  of  achlorophyllous  thallophytic  organisms \nliving  a  parasitic  or  a  saprophytic  mode  of \nexistence;  they  are  always  heterophytes  and  never \nautophytes.  They  depend  on  others  for  food,  but \nall  other  groups  as  algae,  bryophytes  and \npteridophytes  are  chlorophyll  containing  green \nplants  that  are  autotrophic.', '2', NULL, NULL, 'Yes', '2018-09-19 17:43:14', '2018-09-19 17:43:14'),
(1163, 1, 5, 13, 93, 2, NULL, 'System of classification used by Linnaeus\nwas\n(1989)', 'natural system', 'artificial system', 'phylogenetic system', 'asexual system.', NULL, NULL, '4.00', '1.00', NULL, 'Linnaeus  put  forward  an  “Artificial \nsystem”  of  plant  classification  which  was  based \non  sexual  characters  like  cryptogamia,  monoecia, \nmonandria, diandria, polyandria etc. It is commonly \nalso called as  sexual system  of plant classification.', '2', NULL, NULL, 'Yes', '2018-09-19 17:43:14', '2018-09-19 17:43:14'),
(1164, 1, 5, 13, 93, 2, NULL, 'Artificial system of classification was first used\nby\n(1989)', ' Linnaeus', 'De Candolle', 'Pliny the Edler', 'Bentham and Hooker.', NULL, NULL, '4.00', '1.00', NULL, 'Artificial system of classification was first \nused  by  Linnaeus.  The  cryptogams  were  included \nin  flowering  plants.  Linnaeus  system  is  known  as \nsexual  system  of  classification.  He  classified  on \nthe  basis  of  number,  size and  union  of  sex  organs.', '1', NULL, NULL, 'Yes', '2018-09-19 17:43:14', '2018-09-19 17:43:14'),
(1165, 1, 5, 13, 93, 2, NULL, 'A bite of tsetse\nfly may pass to humans\n(1989)', 'Leishmania donovani', 'Trypanosoma gambiense', 'Entamoeba histolytica', 'Plasmodium vivax. ', NULL, NULL, '4.00', '1.00', NULL, 'Refer to answer  140.\n', '2', NULL, NULL, 'Yes', '2018-09-19 17:43:14', '2018-09-19 17:43:14'),
(1166, 1, 5, 13, 93, 2, NULL, 'Malaria fever coincides with liberation of (1989)\n \n', 'cryptomerozoties', 'metacryptomerozoites', 'merozoites', 'trophozoites', NULL, NULL, '4.00', '1.00', NULL, ' Symptoms of malaria first appear several \ndays  after  the infection  of  the  malaria  parasite in \nman. This interval  of time  or the incubation  period \nis utilized by the parasites to increase their progeny. \nTo establish malarial symptoms, it is necessary that \na  large  number  of  organisms  must  continue \nerythrocytic  cycle  at  a  time. \nA  healthy  person acquires infection when a  female\nAnopheles  mosquito,  containing  infective  stages \nof parasite (sporozoites) in its salivary glands, bites \nhim  for sucking  his  blood. Once within the  numan \nblood, the  sporozoites  get into liver  to  invade  the \nhepatic  cells.  Here  they  multiply  asexually  by \nschizogony.  Liver  schizogony  has two  phases,  pre­ \nerythrocytic  and  exo­erythrocytic: \nPre­erythrocytic  phase : After  penetrating a  hepatic \ncell each sporozoite becomes a cryptozoite. It grows \nfor a  number of  days  and  becomes  a  spherical  and \nnon­pigmented  schizont.  It  divides  by  schizogony \n(multiple  fission)  and  forms  a  large  number  of \nuninucleate cells, the cryptomerozoites. During pre­ \nerythrocytic  schizogony,  blood  remains  sterile  and \nits  inoculation  does  not  produce  infection. Exo­erythrocyic  phase  :  Cryptomerozoites  enter \nfresh  liver  cells to  become  metacryptozoites.  They \nundergo  schizogony  similar  to  the  previous  one \nproducing  enormous  number  of  metacrypto­ \nmerozoites. \nMetacryptomerozoites,  after  escaping  into  blood \nstream,  invade  the  erythrocytes  or  red  blood \ncorpuscles.  This  starts  the  erythrocytic  schizogony. \nWith  erythrocytic  schizogony,  the  symptoms  of \nmalaria  starts  appearing', '2', NULL, NULL, 'Yes', '2018-09-19 17:43:14', '2018-09-19 17:43:14'),
(1167, 1, 5, 13, 93, 2, NULL, 'Trypanosoma belongs to class\n (1989)', 'sarcodina', 'zooflagellata', 'ciliata', 'sporozoa.', NULL, NULL, '4.00', '1.00', NULL, 'On the  basis  of  locomotory  organelles \nthe  protozoan  protists  are  divided into  four  groups \n: Mastigophora,  Sarcodina,  Sporozoa  and Ciliata.\nTrypanosoma  belongs  to  class  zooflagellata  which \ncomes  under  the  group  mastigophora.  The \ncharacteristics  are  : \n(i)  These zooflagellates are generally uninucleate, \noccasionally  multinucleate. \n(ii)  The  body  is  covered  by  a  firm  pellicle. \n(iii)  Nutrition is  holozoic,  parasitic  and  saprobic. \n(iv)  Reserve  food  is  glycogen', '2', NULL, NULL, 'Yes', '2018-09-19 17:43:14', '2018-09-19 17:43:14'),
(1168, 1, 5, 13, 93, 2, NULL, 'The vector for sleeping sickness is\n(1989)', 'housefly', 'tsetse\nfly', 'sandfly', ' fruit fly', NULL, NULL, '4.00', '1.00', NULL, 'Refer  to answer  140.\n', '2', NULL, NULL, 'Yes', '2018-09-19 17:43:14', '2018-09-19 17:43:14'),
(1169, 1, 5, 13, 93, 2, NULL, 'The causal organism for African sleeping\nsickness is\n(1989)', 'Trypanosoma cruzi', 'T. rhodesiense', 'T. tangela', 'T. gambiense.', NULL, NULL, '4.00', '1.00', NULL, ' Trypanosoma  gambiense  was  first \nobserved  by  Forde  in  1901.  It  causes  African \nsleeping  sickness.  The  disease,  also  called \ntrypanosomiasis,  is  found  in  western  and  central \nparts of Africa. The parasite is transmitted by blood \nsucking  tse­tse  fly,  Glossina  palpalis. Mouth  and \ncontractile  vacuole  are  absent.  Food  is  absorbed \nthrough  the  body  surface.  The  parasite  multiplies \nby fission. In human beings the parasite lives in the \nblood  plasma.  It  causes  trypanosoma  fever.  It  is \naccompanied  by  glandular  swelling.  Later  the \nparasite enters cerebrospinal  fluid and damages the \nbrain.  It  makes  the  patient  lethargic  and \nunconscious.  Because  of  it,  the  disease  is  called \nsleeping sickness.  If  untreated, the  disease leads to \ndeath', '4', NULL, NULL, 'Yes', '2018-09-19 17:43:14', '2018-09-19 17:43:14'),
(1170, 1, 5, 13, 93, 2, NULL, 'Lichens indicate SO 2 pollution because they \n(1989)', 'show association between algae and fungi', 'grow faster than others', 'are sensitive to SO 2', 'flourish in SO 2 rich environment.', NULL, NULL, '4.00', '1.00', NULL, 'Lichens  are  found in Artic Tundra  region \nwhere  no  other  plant  can  grow.  Lichens  prefer to \ngrow in  pollution  free  environment.  They  are  often \nused  as  a  indicator  of  pollution  and  also  they  are \nvery sensitive to SO 2 . They are first to die in a polluted \nenvironment  (more  SO 2 ).', '3', NULL, NULL, 'Yes', '2018-09-19 17:43:14', '2018-09-19 17:43:14'),
(1171, 1, 5, 13, 93, 2, NULL, 'Classification given by Bentham and Hooker\nis\n.(1988)', 'artificial', 'natural', 'phylogenetic', 'numerical', NULL, NULL, '4.00', '1.00', NULL, 'Classification  given  by  Bentham  and \nHooker  is  Natural  System.  Monocots  were  placed \nafter dicots; closely related families were seperated; \ngymnosperms  were  placed  between  dicots  and \nmonocots', '2', NULL, NULL, 'Yes', '2018-09-19 17:43:14', '2018-09-19 17:43:14'),
(1172, 1, 5, 13, 93, 2, NULL, '<p><span style=\"font-size: 14pt;\"><strong>Give below is the diagram of a bacteriophage. In which one of the options all the four parts A, B, C and D are correct?</strong></span></p>\r\n<p><span style=\"font-size: 14pt;\"><strong><img src=\"/img/Uploads/basic-concept-of-chemistry/Options/53.JPG\" alt=\"\" width=\"260\" height=\"176\" /></strong></span></p>', '<p><strong><span style=\"font-size: 14pt;\">Tail fibres Head Sheath Colla</span></strong></p>', '<p><strong><span style=\"font-size: 14pt;\">Sheath Collar Head Tail fibres</span></strong></p>', '<p><strong><span style=\"font-size: 14pt;\">Head Sheath Collar Tail fibres</span></strong></p>', '<p><span style=\"font-size: 14pt;\"><strong>Collar Tail fibres Head Sheath</strong></span></p>', '', '', '4.00', '1.00', '', '<p><span style=\"font-size: 14pt;\"><strong>A &ndash; Head B &ndash; Sheath C &ndash; Collar D &ndash; Tail fibre</strong></span></p>', '3', NULL, '', 'Yes', '2018-09-19 18:09:00', '2018-09-19 18:09:00');

-- --------------------------------------------------------

--
-- Table structure for table `questions_langs`
--

CREATE TABLE `questions_langs` (
  `id` int(11) NOT NULL,
  `question_id` int(11) NOT NULL,
  `language_id` int(11) DEFAULT NULL,
  `question` text,
  `option1` text,
  `option2` text,
  `option3` text,
  `option4` text,
  `option5` text,
  `option6` text,
  `hint` text,
  `explanation` text,
  `fill_blank` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `question_groups`
--

CREATE TABLE `question_groups` (
  `id` int(11) NOT NULL,
  `question_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `question_groups`
--

INSERT INTO `question_groups` (`id`, `question_id`, `group_id`) VALUES
(2508, 834, 3),
(2509, 834, 2),
(2510, 834, 4),
(2511, 834, 1),
(2512, 835, 3),
(2513, 835, 2),
(2514, 835, 4),
(2515, 835, 1),
(2516, 836, 3),
(2517, 836, 2),
(2518, 836, 4),
(2519, 836, 1),
(2520, 837, 3),
(2521, 837, 2),
(2522, 837, 4),
(2523, 837, 1),
(2524, 838, 3),
(2525, 838, 2),
(2526, 838, 4),
(2527, 838, 1),
(2528, 839, 3),
(2529, 839, 2),
(2530, 839, 4),
(2531, 839, 1),
(2532, 840, 3),
(2533, 840, 2),
(2534, 840, 4),
(2535, 840, 1),
(2536, 841, 3),
(2537, 841, 2),
(2538, 841, 4),
(2539, 841, 1),
(2540, 842, 3),
(2541, 842, 2),
(2542, 842, 4),
(2543, 842, 1),
(2544, 843, 3),
(2545, 843, 2),
(2546, 843, 4),
(2547, 843, 1),
(2548, 844, 3),
(2549, 844, 2),
(2550, 844, 4),
(2551, 844, 1),
(2552, 845, 3),
(2553, 845, 2),
(2554, 845, 4),
(2555, 845, 1),
(2556, 846, 3),
(2557, 846, 2),
(2558, 846, 4),
(2559, 846, 1),
(2560, 847, 3),
(2561, 847, 2),
(2562, 847, 4),
(2563, 847, 1),
(2564, 848, 3),
(2565, 848, 2),
(2566, 848, 4),
(2567, 848, 1),
(2568, 849, 3),
(2569, 849, 2),
(2570, 849, 4),
(2571, 849, 1),
(2572, 850, 3),
(2573, 850, 2),
(2574, 850, 4),
(2575, 850, 1),
(2576, 851, 3),
(2577, 851, 2),
(2578, 851, 4),
(2579, 851, 1),
(2580, 852, 3),
(2581, 852, 2),
(2582, 852, 4),
(2583, 852, 1),
(2584, 853, 3),
(2585, 853, 2),
(2586, 853, 4),
(2587, 853, 1),
(2588, 854, 3),
(2589, 854, 2),
(2590, 854, 4),
(2591, 854, 1),
(2592, 855, 3),
(2593, 855, 2),
(2594, 855, 4),
(2595, 855, 1),
(2596, 856, 3),
(2597, 856, 2),
(2598, 856, 4),
(2599, 856, 1),
(2600, 857, 3),
(2601, 857, 2),
(2602, 857, 4),
(2603, 857, 1),
(2604, 858, 3),
(2605, 858, 2),
(2606, 858, 4),
(2607, 858, 1),
(2608, 859, 3),
(2609, 859, 2),
(2610, 859, 4),
(2611, 859, 1),
(3892, 966, 3),
(3893, 966, 2),
(3894, 966, 4),
(3895, 966, 1),
(3896, 967, 3),
(3897, 967, 2),
(3898, 967, 4),
(3899, 967, 1),
(3900, 968, 3),
(3901, 968, 2),
(3902, 968, 4),
(3903, 968, 1),
(3904, 969, 3),
(3905, 969, 2),
(3906, 969, 4),
(3907, 969, 1),
(3908, 970, 3),
(3909, 970, 2),
(3910, 970, 4),
(3911, 970, 1),
(3912, 971, 3),
(3913, 971, 2),
(3914, 971, 4),
(3915, 971, 1),
(3916, 972, 3),
(3917, 972, 2),
(3918, 972, 4),
(3919, 972, 1),
(3920, 973, 3),
(3921, 973, 2),
(3922, 973, 4),
(3923, 973, 1),
(3924, 974, 3),
(3925, 974, 2),
(3926, 974, 4),
(3927, 974, 1),
(3928, 975, 3),
(3929, 975, 2),
(3930, 975, 4),
(3931, 975, 1),
(3932, 976, 3),
(3933, 976, 2),
(3934, 976, 4),
(3935, 976, 1),
(3936, 977, 3),
(3937, 977, 2),
(3938, 977, 4),
(3939, 977, 1),
(3940, 978, 3),
(3941, 978, 2),
(3942, 978, 4),
(3943, 978, 1),
(3944, 979, 3),
(3945, 979, 2),
(3946, 979, 4),
(3947, 979, 1),
(3948, 980, 3),
(3949, 980, 2),
(3950, 980, 4),
(3951, 980, 1),
(3952, 981, 3),
(3953, 981, 2),
(3954, 981, 4),
(3955, 981, 1),
(3956, 982, 3),
(3957, 982, 2),
(3958, 982, 4),
(3959, 982, 1),
(3960, 983, 3),
(3961, 983, 2),
(3962, 983, 4),
(3963, 983, 1),
(3964, 984, 3),
(3965, 984, 2),
(3966, 984, 4),
(3967, 984, 1),
(3968, 985, 3),
(3969, 985, 2),
(3970, 985, 4),
(3971, 985, 1),
(3972, 986, 3),
(3973, 986, 2),
(3974, 986, 4),
(3975, 986, 1),
(3976, 987, 3),
(3977, 987, 2),
(3978, 987, 4),
(3979, 987, 1),
(3980, 988, 3),
(3981, 988, 2),
(3982, 988, 4),
(3983, 988, 1),
(3984, 989, 3),
(3985, 989, 2),
(3986, 989, 4),
(3987, 989, 1),
(3988, 990, 3),
(3989, 990, 2),
(3990, 990, 4),
(3991, 990, 1),
(3992, 991, 3),
(3993, 991, 2),
(3994, 991, 4),
(3995, 991, 1),
(3996, 992, 3),
(3997, 992, 2),
(3998, 992, 4),
(3999, 992, 1),
(4000, 993, 3),
(4001, 993, 2),
(4002, 993, 4),
(4003, 993, 1),
(4004, 994, 3),
(4005, 994, 2),
(4006, 994, 4),
(4007, 994, 1),
(4008, 995, 3),
(4009, 995, 2),
(4010, 995, 4),
(4011, 995, 1),
(4012, 996, 3),
(4013, 996, 2),
(4014, 996, 4),
(4015, 996, 1),
(4016, 997, 3),
(4017, 997, 2),
(4018, 997, 4),
(4019, 997, 1),
(4020, 998, 3),
(4021, 998, 2),
(4022, 998, 4),
(4023, 998, 1),
(4024, 999, 3),
(4025, 999, 2),
(4026, 999, 4),
(4027, 999, 1),
(4028, 1000, 3),
(4029, 1000, 2),
(4030, 1000, 4),
(4031, 1000, 1),
(4032, 1001, 3),
(4033, 1001, 2),
(4034, 1001, 4),
(4035, 1001, 1),
(4036, 1002, 3),
(4037, 1002, 2),
(4038, 1002, 4),
(4039, 1002, 1),
(4040, 1003, 3),
(4041, 1003, 2),
(4042, 1003, 4),
(4043, 1003, 1),
(4044, 1004, 3),
(4045, 1004, 2),
(4046, 1004, 4),
(4047, 1004, 1),
(4048, 1005, 3),
(4049, 1005, 2),
(4050, 1005, 4),
(4051, 1005, 1),
(4052, 1006, 3),
(4053, 1006, 2),
(4054, 1006, 4),
(4055, 1006, 1),
(4056, 1007, 3),
(4057, 1007, 2),
(4058, 1007, 4),
(4059, 1007, 1),
(4060, 1008, 3),
(4061, 1008, 2),
(4062, 1008, 4),
(4063, 1008, 1),
(4064, 1009, 3),
(4065, 1009, 2),
(4066, 1009, 4),
(4067, 1009, 1),
(4068, 1010, 3),
(4069, 1010, 2),
(4070, 1010, 4),
(4071, 1010, 1),
(4072, 1011, 3),
(4073, 1011, 2),
(4074, 1011, 4),
(4075, 1011, 1),
(4076, 1012, 3),
(4077, 1012, 2),
(4078, 1012, 4),
(4079, 1012, 1),
(4080, 1013, 3),
(4081, 1013, 2),
(4082, 1013, 4),
(4083, 1013, 1),
(4084, 1014, 3),
(4085, 1014, 2),
(4086, 1014, 4),
(4087, 1014, 1),
(4088, 1015, 3),
(4089, 1015, 2),
(4090, 1015, 4),
(4091, 1015, 1),
(4092, 1016, 3),
(4093, 1016, 2),
(4094, 1016, 4),
(4095, 1016, 1),
(4096, 1017, 3),
(4097, 1017, 2),
(4098, 1017, 4),
(4099, 1017, 1),
(4100, 1018, 3),
(4101, 1018, 2),
(4102, 1018, 4),
(4103, 1018, 1),
(4104, 1019, 3),
(4105, 1019, 2),
(4106, 1019, 4),
(4107, 1019, 1),
(4108, 1020, 3),
(4109, 1020, 2),
(4110, 1020, 4),
(4111, 1020, 1),
(4112, 1021, 3),
(4113, 1021, 2),
(4114, 1021, 4),
(4115, 1021, 1),
(4116, 1022, 3),
(4117, 1022, 2),
(4118, 1022, 4),
(4119, 1022, 1),
(4120, 1023, 3),
(4121, 1023, 2),
(4122, 1023, 4),
(4123, 1023, 1),
(4124, 1024, 3),
(4125, 1024, 2),
(4126, 1024, 4),
(4127, 1024, 1),
(4128, 1025, 3),
(4129, 1025, 2),
(4130, 1025, 4),
(4131, 1025, 1),
(4132, 1026, 3),
(4133, 1026, 2),
(4134, 1026, 4),
(4135, 1026, 1),
(4136, 1027, 3),
(4137, 1027, 2),
(4138, 1027, 4),
(4139, 1027, 1),
(4140, 1028, 3),
(4141, 1028, 2),
(4142, 1028, 4),
(4143, 1028, 1),
(4144, 1029, 3),
(4145, 1029, 2),
(4146, 1029, 4),
(4147, 1029, 1),
(4148, 1030, 3),
(4149, 1030, 2),
(4150, 1030, 4),
(4151, 1030, 1),
(4152, 1031, 3),
(4153, 1031, 2),
(4154, 1031, 4),
(4155, 1031, 1),
(4156, 1032, 3),
(4157, 1032, 2),
(4158, 1032, 4),
(4159, 1032, 1),
(4160, 1033, 3),
(4161, 1033, 2),
(4162, 1033, 4),
(4163, 1033, 1),
(4164, 1034, 3),
(4165, 1034, 2),
(4166, 1034, 4),
(4167, 1034, 1),
(4168, 1035, 3),
(4169, 1035, 2),
(4170, 1035, 4),
(4171, 1035, 1),
(4172, 1036, 3),
(4173, 1036, 2),
(4174, 1036, 4),
(4175, 1036, 1),
(4176, 1037, 3),
(4177, 1037, 2),
(4178, 1037, 4),
(4179, 1037, 1),
(4180, 1038, 3),
(4181, 1038, 2),
(4182, 1038, 4),
(4183, 1038, 1),
(4184, 1039, 3),
(4185, 1039, 2),
(4186, 1039, 4),
(4187, 1039, 1),
(4188, 1040, 3),
(4189, 1040, 2),
(4190, 1040, 4),
(4191, 1040, 1),
(4192, 1041, 3),
(4193, 1041, 2),
(4194, 1041, 4),
(4195, 1041, 1),
(4196, 1042, 3),
(4197, 1042, 2),
(4198, 1042, 4),
(4199, 1042, 1),
(4200, 1043, 3),
(4201, 1043, 2),
(4202, 1043, 4),
(4203, 1043, 1),
(4204, 1044, 3),
(4205, 1044, 2),
(4206, 1044, 4),
(4207, 1044, 1),
(4208, 1045, 3),
(4209, 1045, 2),
(4210, 1045, 4),
(4211, 1045, 1),
(4212, 1046, 3),
(4213, 1046, 2),
(4214, 1046, 4),
(4215, 1046, 1),
(4216, 1047, 3),
(4217, 1047, 2),
(4218, 1047, 4),
(4219, 1047, 1),
(4220, 1048, 3),
(4221, 1048, 2),
(4222, 1048, 4),
(4223, 1048, 1),
(4224, 1049, 3),
(4225, 1049, 2),
(4226, 1049, 4),
(4227, 1049, 1),
(4228, 1050, 3),
(4229, 1050, 2),
(4230, 1050, 4),
(4231, 1050, 1),
(4232, 1051, 3),
(4233, 1051, 2),
(4234, 1051, 4),
(4235, 1051, 1),
(4236, 1052, 3),
(4237, 1052, 2),
(4238, 1052, 4),
(4239, 1052, 1),
(4240, 1053, 3),
(4241, 1053, 2),
(4242, 1053, 4),
(4243, 1053, 1),
(4244, 1054, 3),
(4245, 1054, 2),
(4246, 1054, 4),
(4247, 1054, 1),
(4248, 1055, 3),
(4249, 1055, 2),
(4250, 1055, 4),
(4251, 1055, 1),
(4252, 1056, 3),
(4253, 1056, 2),
(4254, 1056, 4),
(4255, 1056, 1),
(4256, 1057, 3),
(4257, 1057, 2),
(4258, 1057, 4),
(4259, 1057, 1),
(4260, 1058, 3),
(4261, 1058, 2),
(4262, 1058, 4),
(4263, 1058, 1),
(4264, 1059, 3),
(4265, 1059, 2),
(4266, 1059, 4),
(4267, 1059, 1),
(4268, 1060, 3),
(4269, 1060, 2),
(4270, 1060, 4),
(4271, 1060, 1),
(4272, 1061, 3),
(4273, 1061, 2),
(4274, 1061, 4),
(4275, 1061, 1),
(4276, 1062, 3),
(4277, 1062, 2),
(4278, 1062, 4),
(4279, 1062, 1),
(4280, 1063, 3),
(4281, 1063, 2),
(4282, 1063, 4),
(4283, 1063, 1),
(4284, 1064, 3),
(4285, 1064, 2),
(4286, 1064, 4),
(4287, 1064, 1),
(4288, 1065, 3),
(4289, 1065, 2),
(4290, 1065, 4),
(4291, 1065, 1),
(4292, 1066, 3),
(4293, 1066, 2),
(4294, 1066, 4),
(4295, 1066, 1),
(4296, 1067, 3),
(4297, 1067, 2),
(4298, 1067, 4),
(4299, 1067, 1),
(4300, 1068, 3),
(4301, 1068, 2),
(4302, 1068, 4),
(4303, 1068, 1),
(4304, 1069, 3),
(4305, 1069, 2),
(4306, 1069, 4),
(4307, 1069, 1),
(4308, 1070, 3),
(4309, 1070, 2),
(4310, 1070, 4),
(4311, 1070, 1),
(4312, 1071, 3),
(4313, 1071, 2),
(4314, 1071, 4),
(4315, 1071, 1),
(4316, 1072, 3),
(4317, 1072, 2),
(4318, 1072, 4),
(4319, 1072, 1),
(4320, 1073, 3),
(4321, 1073, 2),
(4322, 1073, 4),
(4323, 1073, 1),
(4324, 1074, 3),
(4325, 1074, 2),
(4326, 1074, 4),
(4327, 1074, 1),
(4328, 1075, 3),
(4329, 1075, 2),
(4330, 1075, 4),
(4331, 1075, 1),
(4332, 1076, 3),
(4333, 1076, 2),
(4334, 1076, 4),
(4335, 1076, 1),
(4336, 1077, 3),
(4337, 1077, 2),
(4338, 1077, 4),
(4339, 1077, 1),
(4340, 1078, 3),
(4341, 1078, 2),
(4342, 1078, 4),
(4343, 1078, 1),
(4344, 1079, 3),
(4345, 1079, 2),
(4346, 1079, 4),
(4347, 1079, 1),
(4348, 1080, 3),
(4349, 1080, 2),
(4350, 1080, 4),
(4351, 1080, 1),
(4352, 1081, 3),
(4353, 1081, 2),
(4354, 1081, 4),
(4355, 1081, 1),
(4356, 1082, 3),
(4357, 1082, 2),
(4358, 1082, 4),
(4359, 1082, 1),
(4360, 1083, 3),
(4361, 1083, 2),
(4362, 1083, 4),
(4363, 1083, 1),
(4364, 1084, 3),
(4365, 1084, 2),
(4366, 1084, 4),
(4367, 1084, 1),
(4368, 1085, 3),
(4369, 1085, 2),
(4370, 1085, 4),
(4371, 1085, 1),
(4372, 1086, 3),
(4373, 1086, 2),
(4374, 1086, 4),
(4375, 1086, 1),
(4376, 1087, 3),
(4377, 1087, 2),
(4378, 1087, 4),
(4379, 1087, 1),
(4380, 1088, 3),
(4381, 1088, 2),
(4382, 1088, 4),
(4383, 1088, 1),
(4384, 1089, 3),
(4385, 1089, 2),
(4386, 1089, 4),
(4387, 1089, 1),
(4388, 1090, 3),
(4389, 1090, 2),
(4390, 1090, 4),
(4391, 1090, 1),
(4392, 1091, 3),
(4393, 1091, 2),
(4394, 1091, 4),
(4395, 1091, 1),
(4396, 1092, 3),
(4397, 1092, 2),
(4398, 1092, 4),
(4399, 1092, 1),
(4400, 1093, 3),
(4401, 1093, 2),
(4402, 1093, 4),
(4403, 1093, 1),
(4404, 1094, 3),
(4405, 1094, 2),
(4406, 1094, 4),
(4407, 1094, 1),
(4408, 1095, 3),
(4409, 1095, 2),
(4410, 1095, 4),
(4411, 1095, 1),
(4412, 1096, 3),
(4413, 1096, 2),
(4414, 1096, 4),
(4415, 1096, 1),
(4416, 1097, 3),
(4417, 1097, 2),
(4418, 1097, 4),
(4419, 1097, 1),
(4420, 1098, 3),
(4421, 1098, 2),
(4422, 1098, 4),
(4423, 1098, 1),
(4424, 1099, 3),
(4425, 1099, 2),
(4426, 1099, 4),
(4427, 1099, 1),
(4428, 1100, 3),
(4429, 1100, 2),
(4430, 1100, 4),
(4431, 1100, 1),
(4432, 1101, 3),
(4433, 1101, 2),
(4434, 1101, 4),
(4435, 1101, 1),
(4436, 1102, 3),
(4437, 1102, 2),
(4438, 1102, 4),
(4439, 1102, 1),
(4440, 1103, 3),
(4441, 1103, 2),
(4442, 1103, 4),
(4443, 1103, 1),
(4444, 1104, 3),
(4445, 1104, 2),
(4446, 1104, 4),
(4447, 1104, 1),
(4448, 1105, 3),
(4449, 1105, 2),
(4450, 1105, 4),
(4451, 1105, 1),
(4452, 1106, 3),
(4453, 1106, 2),
(4454, 1106, 4),
(4455, 1106, 1),
(4456, 1107, 3),
(4457, 1107, 2),
(4458, 1107, 4),
(4459, 1107, 1),
(4460, 1108, 3),
(4461, 1108, 2),
(4462, 1108, 4),
(4463, 1108, 1),
(4464, 1109, 3),
(4465, 1109, 2),
(4466, 1109, 4),
(4467, 1109, 1),
(4468, 1110, 3),
(4469, 1110, 2),
(4470, 1110, 4),
(4471, 1110, 1),
(4472, 1111, 3),
(4473, 1111, 2),
(4474, 1111, 4),
(4475, 1111, 1),
(4476, 1112, 3),
(4477, 1112, 2),
(4478, 1112, 4),
(4479, 1112, 1),
(4480, 1113, 3),
(4481, 1113, 2),
(4482, 1113, 4),
(4483, 1113, 1),
(4484, 1114, 3),
(4485, 1114, 2),
(4486, 1114, 4),
(4487, 1114, 1),
(4488, 1115, 3),
(4489, 1115, 2),
(4490, 1115, 4),
(4491, 1115, 1),
(4492, 1116, 3),
(4493, 1116, 2),
(4494, 1116, 4),
(4495, 1116, 1),
(4496, 1117, 3),
(4497, 1117, 2),
(4498, 1117, 4),
(4499, 1117, 1),
(4500, 1118, 3),
(4501, 1118, 2),
(4502, 1118, 4),
(4503, 1118, 1),
(4504, 1119, 3),
(4505, 1119, 2),
(4506, 1119, 4),
(4507, 1119, 1),
(4508, 1120, 3),
(4509, 1120, 2),
(4510, 1120, 4),
(4511, 1120, 1),
(4512, 1121, 3),
(4513, 1121, 2),
(4514, 1121, 4),
(4515, 1121, 1),
(4516, 1122, 3),
(4517, 1122, 2),
(4518, 1122, 4),
(4519, 1122, 1),
(4520, 1123, 3),
(4521, 1123, 2),
(4522, 1123, 4),
(4523, 1123, 1),
(4524, 1124, 3),
(4525, 1124, 2),
(4526, 1124, 4),
(4527, 1124, 1),
(4528, 1125, 3),
(4529, 1125, 2),
(4530, 1125, 4),
(4531, 1125, 1),
(4532, 1126, 3),
(4533, 1126, 2),
(4534, 1126, 4),
(4535, 1126, 1),
(4536, 1127, 3),
(4537, 1127, 2),
(4538, 1127, 4),
(4539, 1127, 1),
(4540, 1128, 3),
(4541, 1128, 2),
(4542, 1128, 4),
(4543, 1128, 1),
(4544, 1129, 3),
(4545, 1129, 2),
(4546, 1129, 4),
(4547, 1129, 1),
(4548, 1130, 3),
(4549, 1130, 2),
(4550, 1130, 4),
(4551, 1130, 1),
(4552, 1131, 3),
(4553, 1131, 2),
(4554, 1131, 4),
(4555, 1131, 1),
(4556, 1132, 3),
(4557, 1132, 2),
(4558, 1132, 4),
(4559, 1132, 1),
(4560, 1133, 3),
(4561, 1133, 2),
(4562, 1133, 4),
(4563, 1133, 1),
(4564, 1134, 3),
(4565, 1134, 2),
(4566, 1134, 4),
(4567, 1134, 1),
(4568, 1135, 3),
(4569, 1135, 2),
(4570, 1135, 4),
(4571, 1135, 1),
(4572, 1136, 3),
(4573, 1136, 2),
(4574, 1136, 4),
(4575, 1136, 1),
(4576, 1137, 3),
(4577, 1137, 2),
(4578, 1137, 4),
(4579, 1137, 1),
(4580, 1138, 3),
(4581, 1138, 2),
(4582, 1138, 4),
(4583, 1138, 1),
(4584, 1139, 3),
(4585, 1139, 2),
(4586, 1139, 4),
(4587, 1139, 1),
(4588, 1140, 3),
(4589, 1140, 2),
(4590, 1140, 4),
(4591, 1140, 1),
(4592, 1141, 3),
(4593, 1141, 2),
(4594, 1141, 4),
(4595, 1141, 1),
(4596, 1142, 3),
(4597, 1142, 2),
(4598, 1142, 4),
(4599, 1142, 1),
(4600, 1143, 3),
(4601, 1143, 2),
(4602, 1143, 4),
(4603, 1143, 1),
(4604, 1144, 3),
(4605, 1144, 2),
(4606, 1144, 4),
(4607, 1144, 1),
(4608, 1145, 3),
(4609, 1145, 2),
(4610, 1145, 4),
(4611, 1145, 1),
(4612, 1146, 3),
(4613, 1146, 2),
(4614, 1146, 4),
(4615, 1146, 1),
(4616, 1147, 3),
(4617, 1147, 2),
(4618, 1147, 4),
(4619, 1147, 1),
(4620, 1148, 3),
(4621, 1148, 2),
(4622, 1148, 4),
(4623, 1148, 1),
(4624, 1149, 3),
(4625, 1149, 2),
(4626, 1149, 4),
(4627, 1149, 1),
(4628, 1150, 3),
(4629, 1150, 2),
(4630, 1150, 4),
(4631, 1150, 1),
(4632, 1151, 3),
(4633, 1151, 2),
(4634, 1151, 4),
(4635, 1151, 1),
(4636, 1152, 3),
(4637, 1152, 2),
(4638, 1152, 4),
(4639, 1152, 1),
(4640, 1153, 3),
(4641, 1153, 2),
(4642, 1153, 4),
(4643, 1153, 1),
(4644, 1154, 3),
(4645, 1154, 2),
(4646, 1154, 4),
(4647, 1154, 1),
(4648, 1155, 3),
(4649, 1155, 2),
(4650, 1155, 4),
(4651, 1155, 1),
(4652, 1156, 3),
(4653, 1156, 2),
(4654, 1156, 4),
(4655, 1156, 1),
(4656, 1157, 3),
(4657, 1157, 2),
(4658, 1157, 4),
(4659, 1157, 1),
(4660, 1158, 3),
(4661, 1158, 2),
(4662, 1158, 4),
(4663, 1158, 1),
(4664, 1159, 3),
(4665, 1159, 2),
(4666, 1159, 4),
(4667, 1159, 1),
(4668, 1160, 3),
(4669, 1160, 2),
(4670, 1160, 4),
(4671, 1160, 1),
(4672, 1161, 3),
(4673, 1161, 2),
(4674, 1161, 4),
(4675, 1161, 1),
(4676, 1162, 3),
(4677, 1162, 2),
(4678, 1162, 4),
(4679, 1162, 1),
(4680, 1163, 3),
(4681, 1163, 2),
(4682, 1163, 4),
(4683, 1163, 1),
(4684, 1164, 3),
(4685, 1164, 2),
(4686, 1164, 4),
(4687, 1164, 1),
(4688, 1165, 3),
(4689, 1165, 2),
(4690, 1165, 4),
(4691, 1165, 1),
(4692, 1166, 3),
(4693, 1166, 2),
(4694, 1166, 4),
(4695, 1166, 1),
(4696, 1167, 3),
(4697, 1167, 2),
(4698, 1167, 4),
(4699, 1167, 1),
(4700, 1168, 3),
(4701, 1168, 2),
(4702, 1168, 4),
(4703, 1168, 1),
(4704, 1169, 3),
(4705, 1169, 2),
(4706, 1169, 4),
(4707, 1169, 1),
(4708, 1170, 3),
(4709, 1170, 2),
(4710, 1170, 4),
(4711, 1170, 1),
(4712, 1171, 3),
(4713, 1171, 2),
(4714, 1171, 4),
(4715, 1171, 1),
(4716, 1172, 3),
(4717, 1172, 2),
(4718, 1172, 4),
(4719, 1172, 1);

-- --------------------------------------------------------

--
-- Table structure for table `seos`
--

CREATE TABLE `seos` (
  `id` int(11) NOT NULL,
  `controller` varchar(100) DEFAULT NULL,
  `action` varchar(100) DEFAULT NULL,
  `meta_title` text,
  `meta_keyword` text,
  `meta_content` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `seos`
--

INSERT INTO `seos` (`id`, `controller`, `action`, `meta_title`, `meta_keyword`, `meta_content`) VALUES
(1, 'Registers', 'index', 'New Student Register', '', ''),
(2, 'Users', 'login', 'Student Login Panel', '', ''),
(3, 'Forgots', 'password', 'Forgot Password', '', ''),
(4, 'Forgots', 'presetcode', 'Verification Code', '', ''),
(5, 'Forgots', 'reset', 'Reset Password', '', ''),
(6, 'Emailverifications', 'index', 'Email Verification', '', ''),
(7, 'Emailverifications', 'resend', 'Re-Send Email Verification', '', ''),
(8, 'Packages', 'index', 'Packages', '', ''),
(9, 'Checkouts', 'index', 'Checkout', '', ''),
(10, 'Carts', 'view', 'Shopping Cart', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `slides`
--

CREATE TABLE `slides` (
  `id` int(11) NOT NULL,
  `slide_name` varchar(255) DEFAULT NULL,
  `ordering` int(11) DEFAULT NULL,
  `photo` varchar(100) DEFAULT NULL,
  `dir` varchar(255) DEFAULT NULL,
  `status` varchar(7) DEFAULT 'Active',
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `heading` varchar(200) NOT NULL,
  `content` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `slides`
--

INSERT INTO `slides` (`id`, `slide_name`, `ordering`, `photo`, `dir`, `status`, `created`, `modified`, `heading`, `content`) VALUES
(1, 'Slide1', 1, '34408377c7d435de3f037c360279874c.PNG', '', 'Active', '2014-12-19 14:42:37', '2018-09-14 11:46:48', 'Flawless Exam Experience ', 'Clear Exam interface with Categories , Subject and Question Panel. Ability to switch from one Subject to another and one question to another. Color legends to track your progress. Essential features such as Browser switching features, language change option are also available.');

-- --------------------------------------------------------

--
-- Table structure for table `smssettings`
--

CREATE TABLE `smssettings` (
  `id` int(11) NOT NULL,
  `api` varchar(255) DEFAULT NULL,
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `senderid` varchar(10) DEFAULT NULL,
  `husername` varchar(100) DEFAULT NULL,
  `hpassword` varchar(100) DEFAULT NULL,
  `hsenderid` varchar(100) DEFAULT NULL,
  `hmobile` varchar(100) DEFAULT NULL,
  `hmessage` varchar(100) DEFAULT NULL,
  `others` varchar(255) DEFAULT NULL,
  `post_type` varchar(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `smssettings`
--

INSERT INTO `smssettings` (`id`, `api`, `username`, `password`, `senderid`, `husername`, `hpassword`, `hsenderid`, `hmobile`, `hmessage`, `others`, `post_type`) VALUES
(1, '', '', '', '', '', '', '', '', '', '', 'GET');

-- --------------------------------------------------------

--
-- Table structure for table `smstemplates`
--

CREATE TABLE `smstemplates` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `description` text,
  `status` varchar(11) DEFAULT 'Published',
  `type` varchar(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `smstemplates`
--

INSERT INTO `smstemplates` (`id`, `name`, `description`, `status`, `type`) VALUES
(1, 'Student Registration', 'Hi, $studentName Email: $email Password: $password Website: $url Verification Code: $code Sincerely, $siteName', 'Published', 'SRN'),
(2, 'Re-send Verification', 'Hi, $studentName Email: $email Website: $url Verification Code: $code Sincerely, $siteName', 'Published', 'RVN'),
(4, 'Student Forgot Password', 'Dear $studentName, Website: $url Verification Code: $code Sincerely, $siteName', 'Published', 'SFP'),
(5, 'Admin Forgot Password', 'Dear $name, Website: $url Verification Code: $code Sincerely, $siteName', 'Published', 'AFP'),
(6, 'Admin Forgot Username', 'Dear $name, You have forgot User Name. Your username is $userName Sincerely, $siteName', 'Published', 'AFU'),
(7, 'Student Login Credentials', 'Dear $studentName, Your $siteName account is now active. Email: $email Password: $password Website:$url Best Regards, $siteName', 'Published', 'SLC'),
(8, 'User Login Credentials', 'Dear $name, Your $siteName account is now active. Email: $email Uername: $userName Password: $password Website:$url Best Regards, $siteName', 'Published', 'ULC'),
(9, 'Exam Activation', 'Dear $studentName, Exam Name $examName Type $type is active and start on $startDate end on $endDate Sincerely, $siteName', 'Published', 'EAN'),
(10, 'Exam Finalized', 'Dear $studentName, Name: $examName Result: $result Rank: $rank Obtained Marks: $obtainedMarks Question Attempt: $questionAttempt Time Taken: $timeTaken Percentage: $percent % Sincerely, $siteName', 'Published', 'EFD'),
(11, 'Exam Result', 'Dear $studentName, Name: $examName Result: $result Obtained Marks: $obtainedMarks Question Attempt: $questionAttempt Time Taken: $timeTaken Percentage: $percent % Sincerely, $siteName', 'Published', 'ERT'),
(12, 'Package Purchased', 'Dear, $studentName Total Amount: $totalAmount Transaction Id: $transactionId $packageDetail,  Sincerely, $siteName', 'Published', 'PPD');

-- --------------------------------------------------------

--
-- Table structure for table `stopics`
--

CREATE TABLE `stopics` (
  `id` int(11) NOT NULL,
  `subject_id` int(11) DEFAULT NULL,
  `topic_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `stopics`
--

INSERT INTO `stopics` (`id`, `subject_id`, `topic_id`, `name`) VALUES
(39, 1, 3, 'Units and Measurement '),
(40, 1, 3, 'Motion in a Straight Line '),
(41, 1, 3, 'Motion in a Plane '),
(42, 1, 3, 'Laws of Motion'),
(43, 1, 3, 'Work, Energy and Power '),
(44, 1, 3, 'Gravitation'),
(45, 1, 3, 'Properties of Matter '),
(46, 1, 3, 'Thermodynamics and Kinetic Theory'),
(47, 1, 3, 'Oscillations'),
(48, 1, 3, 'Waves'),
(49, 1, 3, 'Electrostatics'),
(50, 1, 3, 'Current Electricity '),
(51, 1, 3, 'Moving Charges and Magnetism '),
(52, 1, 3, 'Magnetism and Matter '),
(53, 1, 3, 'Electromagnetic Induction and Alternating Current '),
(54, 1, 3, 'Electromagnetic Waves '),
(55, 1, 3, 'Optics'),
(56, 1, 3, 'Dual Nature of Radiation and Matter '),
(57, 1, 3, 'Atoms and Nuclei '),
(58, 1, 3, 'Semiconductor Electronics: Materials, Devices and Simple Circuits '),
(59, 1, 3, 'System of Particles and Rotational Motion '),
(60, 2, 1, 'Some Basic Concepts of Chemistry '),
(61, 2, 1, 'Structure of Atom'),
(62, 2, 1, 'Classification of Elements and Periodicity in Properties '),
(63, 2, 1, 'Chemical Bonding and Molecular Structure '),
(64, 2, 1, 'States of Matter: Gases and Liquids'),
(65, 2, 1, 'Thermodynamics '),
(66, 2, 1, 'Equilibrium'),
(67, 2, 1, 'Redox Reactions'),
(68, 2, 1, 'Hydrogen '),
(69, 2, 1, 's-Block Elements '),
(70, 2, 1, 'p-Block Elements (Group 13 and 14) '),
(71, 2, 1, 'Organic Chemistry – Some Basic Principles and Techniques '),
(72, 2, 1, 'Hydrocarbons'),
(73, 2, 1, 'Environmental Chemistry'),
(74, 2, 1, 'Solid State'),
(75, 2, 1, 'Solutions '),
(76, 2, 1, 'Electrochemistry '),
(77, 2, 1, 'Chemical Kinetics'),
(78, 2, 1, 'Surface Chemistry '),
(79, 2, 1, 'General Principles and Processes of Isolation of Elements '),
(80, 2, 1, 'p-Block Elements (Group 15 to 18)'),
(81, 2, 1, 'd-and f-Block Elements '),
(82, 2, 1, 'Coordination Compounds'),
(83, 2, 1, 'Haloalkanes and Haloarenes '),
(84, 2, 1, 'Alcohols, Phenols and Ethers'),
(85, 2, 1, 'Aldehydes, Ketones and Carboxylic Acids '),
(86, 2, 1, 'Organic Compounds Containing Nitrogen'),
(87, 2, 1, 'Biomolecules '),
(88, 2, 1, 'Polymers '),
(89, 2, 1, 'Chemistry in Everyday Life'),
(90, 2, 1, 'Nuclear Chemistry '),
(92, 5, 13, 'The Living World '),
(93, 5, 13, 'Biological Classification'),
(94, 5, 13, 'Plant Kingdom '),
(95, 5, 13, 'Animal Kingdom '),
(96, 5, 13, 'Morphology of Flowering Plants '),
(97, 5, 13, 'Anatomy of Flowering Plants '),
(98, 5, 13, 'Structural Organisation in Animals'),
(99, 5, 13, 'Cell-The Unit of Life'),
(100, 5, 13, 'Cell Cycle and Cell Division'),
(101, 5, 13, 'Transport in Plants'),
(102, 5, 13, 'Mineral Nutrition'),
(103, 5, 13, 'Photosynthesis in Higher Plants'),
(104, 5, 13, 'Respiration in Plants'),
(105, 5, 13, 'Plant Growth and Development'),
(106, 5, 13, 'Digestion and Absorption'),
(107, 5, 13, 'Breathing and Exchange of Gases'),
(108, 5, 13, 'Body Fluids and Circulation3'),
(109, 5, 13, 'Body Fluids and Circulation'),
(110, 5, 13, 'Excretory Products and Their Elimination'),
(111, 5, 13, 'Locomotion and Movement'),
(112, 5, 13, 'Neural Control and Coordination '),
(113, 5, 13, 'Chemical Coordination and Integration '),
(114, 5, 13, 'Reproduction in Organisms '),
(115, 5, 13, 'Sexual Reproduction in Flowering Plants'),
(116, 5, 13, 'Human Reproduction '),
(117, 5, 13, 'Reproductive Health'),
(118, 5, 13, 'Principles of Inheritance and Variation '),
(119, 5, 13, 'Molecular Basis of Inheritance'),
(120, 5, 13, 'Evolution '),
(121, 5, 13, 'Human Health and Diseases '),
(122, 5, 13, 'Strategies for Enhancement in Food Production '),
(123, 5, 13, 'Microbes in Human Welfare '),
(124, 5, 13, 'Biotechnology: Principles and Processes'),
(125, 5, 13, 'Biotechnology and Its Applications '),
(126, 5, 13, 'Organisms and Populations'),
(127, 5, 13, 'Ecosystem '),
(128, 5, 13, 'Biodiversity and Conservation'),
(129, 5, 13, 'Environmental Issues'),
(130, 5, 13, 'Biomolecules. ');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` int(11) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `phone` varchar(15) DEFAULT NULL,
  `guardian_phone` varchar(15) DEFAULT NULL,
  `enroll` varchar(50) DEFAULT NULL,
  `photo` varchar(100) DEFAULT NULL,
  `status` varchar(7) DEFAULT 'Pending',
  `reg_code` varchar(6) DEFAULT NULL,
  `reg_status` varchar(4) DEFAULT 'Live',
  `expiry_days` int(11) DEFAULT NULL,
  `renewal_date` date DEFAULT NULL,
  `presetcode` varchar(10) DEFAULT NULL,
  `public_key` varchar(100) DEFAULT NULL,
  `private_key` varchar(100) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `last_login` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `email`, `password`, `name`, `address`, `phone`, `guardian_phone`, `enroll`, `photo`, `status`, `reg_code`, `reg_status`, `expiry_days`, `renewal_date`, `presetcode`, `public_key`, `private_key`, `created`, `modified`, `last_login`) VALUES
(1, 'student@student.com', 'e41f2b7320732d52cbc55c70a7e96844259d512d9087dde5ff830723b2aa82dc', 'Demo Student', 'Demo Address', '000000000', '', 'D-123', NULL, 'Active', NULL, 'Done', 0, '2016-12-07', NULL, NULL, NULL, '2016-12-07 23:42:37', '2018-08-28 20:52:57', '2018-08-28 20:52:57'),
(8, 'imsathiya@gmail.com', '19d0ded48a4a30f4a8f36350761459ef3b121c7569a37e413e4780642a9fc397', 'Sathiyakeerthi Madasamy', '261-3, 4F, Section 2, Datong Road, Xizhi District', '926777900', '', '', NULL, 'Active', '', 'Done', NULL, '2018-08-29', NULL, NULL, NULL, '2018-08-29 21:32:51', '2018-09-19 18:14:47', '2018-09-19 18:14:47'),
(11, 'sathecit@gmail.com', 'ee1e00208bf8f57043056cdb95785f730123da193c1d720efa824d970752289e', 'sathessh', '14b,tristartrilok', '9943283743', '9943283743', '', '0f116b09832b7f4bf976fea3ac2f6250.jpg', 'Active', '', 'Done', NULL, '2018-09-06', NULL, NULL, NULL, '2018-09-06 20:21:33', '2018-09-18 18:45:26', '2018-09-18 18:45:26'),
(12, 'arundg2@yahoo.com', '916131e612ca027c683836d9373b848027f18b890d996702ab2033a082d1fcbd', 'Arun', 'Bangalore', '9686499730', '', '', NULL, 'Active', '', 'Done', NULL, '2018-09-12', NULL, NULL, NULL, '2018-09-12 11:36:59', '2018-09-14 12:51:36', '2018-09-14 12:51:36'),
(13, 'mail2pravi98@gmail.com', 'b57a96db8249b032841cbeadc4c93f3c58a82453e763bbf49be2361d739814d6', 'Praveen', 'address', '8144461886', 'Name', 'pr100', NULL, 'Active', '', 'Done', NULL, '2018-09-12', NULL, NULL, NULL, '2018-09-12 12:14:11', '2018-09-19 18:27:07', '2018-09-19 18:27:07'),
(15, 'dr.anithaarumugam@gmail.com', 'd3f15023e12f298e98f0e49d1f272ecebfff8f3452977a43ba14588e887c443d', 'Pavithra', '2/414D1Bhagavath Singh road', '9443809815', '8220478478', '1234', NULL, 'Active', '', 'Done', NULL, '2018-09-13', NULL, NULL, NULL, '2018-09-13 11:24:46', '2018-09-13 12:00:25', '2018-09-13 12:00:25'),
(16, 'eboominathan@gmail.com', '95828a248160cfe0160aebbb7f697c201b1eaa525e94097c89d2c81f1bcc6779', 'Boominathan', 'Coimbatore', '7339376390', '', '', NULL, 'Active', '', 'Done', NULL, '2018-09-16', NULL, NULL, NULL, '2018-09-16 21:42:41', '2018-09-16 21:43:36', '2018-09-16 21:43:36'),
(17, 'gpl.nanda22@gmail.com', '96491e4955c148f95e0b397d7c306319681d130d08dd5019c842636ad08ebdca', 'Nanda ', 'address', '8248778021', NULL, 'na1', NULL, 'Active', NULL, 'Done', 0, '2018-09-17', NULL, NULL, NULL, '2018-09-17 00:00:00', '2018-09-19 18:30:17', '2018-09-19 18:30:17'),
(20, 'kishorepraveen18@gmail.com', 'cc007b236823a667254aff50631f154b74fbf396dad5a5329a1101b4a751ba3a', 'Praveen', 'address', '8144461886', NULL, 'pr1', NULL, 'Active', NULL, 'Done', 0, '2018-09-17', NULL, NULL, NULL, '2018-09-17 00:00:00', '2018-09-17 10:14:59', NULL),
(21, 'neuurosacry@gmail.com', '6a5dd1d032e71cf823ce5dc9ec118fdeb230979ff20e9bd1d03ceb214a6c935c', 'neuuro sacry', 'morocco', '640237591', '0640237591', '12345677è', NULL, 'Pending', 'CF9972', 'Live', NULL, '2018-09-18', NULL, NULL, NULL, '2018-09-18 08:11:52', '2018-09-18 08:11:52', NULL),
(22, 'christelle.hupin@live.fr', '6a5dd1d032e71cf823ce5dc9ec118fdeb230979ff20e9bd1d03ceb214a6c935c', 'neuuro sacry', 'morocco', '640237591', '0640237591', '12345677è', NULL, 'Pending', 'C91D60', 'Live', NULL, '2018-09-18', NULL, NULL, NULL, '2018-09-18 08:14:13', '2018-09-18 08:14:13', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `student_groups`
--

CREATE TABLE `student_groups` (
  `id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `student_groups`
--

INSERT INTO `student_groups` (`id`, `student_id`, `group_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(12, 8, 1),
(11, 8, 2),
(22, 8, 3),
(23, 8, 4),
(18, 11, 1),
(17, 11, 2),
(16, 11, 3),
(19, 11, 4),
(26, 12, 1),
(25, 12, 2),
(24, 12, 3),
(27, 12, 4),
(30, 13, 1),
(29, 13, 2),
(31, 13, 3),
(28, 13, 4),
(39, 15, 1),
(37, 15, 2),
(36, 15, 3),
(38, 15, 4),
(40, 16, 1),
(44, 17, 1),
(42, 17, 2),
(41, 17, 3),
(43, 17, 4),
(48, 20, 1),
(46, 20, 2),
(45, 20, 3),
(47, 20, 4),
(49, 21, 2),
(50, 22, 2);

-- --------------------------------------------------------

--
-- Table structure for table `subjects`
--

CREATE TABLE `subjects` (
  `id` int(11) NOT NULL,
  `subject_name` varchar(255) DEFAULT NULL,
  `ordering` bigint(11) DEFAULT '1',
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `subjects`
--

INSERT INTO `subjects` (`id`, `subject_name`, `ordering`, `created`, `modified`) VALUES
(1, 'Physics', 1, '2015-11-09 18:20:46', '2015-11-09 18:20:46'),
(2, 'Chemistry', 2, '2015-11-09 18:20:58', '2015-11-30 17:20:20'),
(5, 'Biology', 954363257, '2018-09-06 11:57:22', '2018-09-06 11:57:22');

-- --------------------------------------------------------

--
-- Table structure for table `subject_groups`
--

CREATE TABLE `subject_groups` (
  `id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `subject_groups`
--

INSERT INTO `subject_groups` (`id`, `subject_id`, `group_id`) VALUES
(1, 1, 2),
(2, 1, 1),
(4, 2, 2),
(5, 2, 1),
(9, 1, 4),
(10, 5, 4),
(11, 2, 4);

-- --------------------------------------------------------

--
-- Table structure for table `testimonials`
--

CREATE TABLE `testimonials` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `photo` varchar(100) DEFAULT NULL,
  `status` varchar(7) DEFAULT 'Active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `testimonials`
--

INSERT INTO `testimonials` (`id`, `name`, `description`, `photo`, `status`) VALUES
(4, 'Rahul', 'The packages of the site offer more for less money. VALUE FOR MONEY AND TIME. ', '1e7f1b23228f74ca5b501894bfce0e2a.png', 'Active'),
(5, 'Shree', 'This site helps me to prepare well for my Exams..', 'e8292fc8138012b67945322d5b9856a5.jpg', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `topics`
--

CREATE TABLE `topics` (
  `id` int(11) NOT NULL,
  `subject_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `topics`
--

INSERT INTO `topics` (`id`, `subject_id`, `name`) VALUES
(1, 2, 'Chemistry'),
(3, 1, 'Physics'),
(13, 5, 'Biology');

-- --------------------------------------------------------

--
-- Table structure for table `ugroups`
--

CREATE TABLE `ugroups` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ugroups`
--

INSERT INTO `ugroups` (`id`, `name`, `created`, `modified`) VALUES
(1, 'Administrator', '2012-07-05 17:16:24', '2012-07-05 17:16:24'),
(2, 'Instructor', '2014-12-12 12:03:23', '2014-12-12 12:03:23'),
(3, 'Manager', '2016-12-07 15:17:25', '2016-12-07 15:17:25');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `email` varchar(150) DEFAULT NULL,
  `name` varchar(40) DEFAULT NULL,
  `mobile` varchar(10) DEFAULT NULL,
  `ugroup_id` int(11) NOT NULL DEFAULT '2',
  `status` enum('Active','Suspend') DEFAULT 'Active',
  `deleted` char(1) DEFAULT NULL,
  `presetcode` varchar(10) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `email`, `name`, `mobile`, `ugroup_id`, `status`, `deleted`, `presetcode`, `created`, `modified`) VALUES
(1, 'admin', 'dfb37faf99ffd691383e054541f1a3fd1966273d359d85aa419562fc26bf4427', 'root@localhost.com', 'Administrator', '0000000002', 1, 'Active', NULL, NULL, '2014-04-01 21:08:06', '2015-11-14 15:48:05'),
(3, 'praveen', '083870e34857b733f55d903e8c746765201ffc095040a0777bbc3dc7c043da1b', 'mail2pravi98@gmail.com', 'Praveen', '8144461886', 1, 'Active', NULL, NULL, '2018-09-15 14:11:54', '2018-09-15 14:14:10');

-- --------------------------------------------------------

--
-- Table structure for table `user_groups`
--

CREATE TABLE `user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_groups`
--

INSERT INTO `user_groups` (`id`, `user_id`, `group_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 3),
(4, 1, 4),
(5, 3, 3),
(6, 3, 2),
(7, 3, 4),
(8, 3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `wallets`
--

CREATE TABLE `wallets` (
  `id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `in_amount` decimal(18,2) DEFAULT NULL,
  `out_amount` decimal(18,2) DEFAULT NULL,
  `balance` decimal(18,2) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `type` varchar(2) DEFAULT NULL,
  `remarks` tinytext,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `advertisements`
--
ALTER TABLE `advertisements`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `configurations`
--
ALTER TABLE `configurations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contents`
--
ALTER TABLE `contents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coupons_students`
--
ALTER TABLE `coupons_students`
  ADD PRIMARY KEY (`id`),
  ADD KEY `student_id` (`student_id`),
  ADD KEY `coupon_id` (`coupon_id`);

--
-- Indexes for table `currencies`
--
ALTER TABLE `currencies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `diffs`
--
ALTER TABLE `diffs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `emailsettings`
--
ALTER TABLE `emailsettings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `emailtemplates`
--
ALTER TABLE `emailtemplates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `exams`
--
ALTER TABLE `exams`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `exams_packages`
--
ALTER TABLE `exams_packages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `package_id` (`package_id`),
  ADD KEY `exam_id` (`exam_id`);

--
-- Indexes for table `exam_feedbacks`
--
ALTER TABLE `exam_feedbacks`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `exam_result_id` (`exam_result_id`);

--
-- Indexes for table `exam_groups`
--
ALTER TABLE `exam_groups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `exam_id` (`exam_id`),
  ADD KEY `group_id` (`group_id`);

--
-- Indexes for table `exam_maxquestions`
--
ALTER TABLE `exam_maxquestions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `exam_id` (`exam_id`),
  ADD KEY `subject_id` (`subject_id`);

--
-- Indexes for table `exam_orders`
--
ALTER TABLE `exam_orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `exam_id` (`exam_id`),
  ADD KEY `student_id` (`student_id`),
  ADD KEY `payment_id` (`payment_id`);

--
-- Indexes for table `exam_preps`
--
ALTER TABLE `exam_preps`
  ADD PRIMARY KEY (`id`),
  ADD KEY `exam_id` (`exam_id`),
  ADD KEY `subject_id` (`subject_id`);

--
-- Indexes for table `exam_questions`
--
ALTER TABLE `exam_questions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `exam_id` (`exam_id`),
  ADD KEY `question_id` (`question_id`);

--
-- Indexes for table `exam_results`
--
ALTER TABLE `exam_results`
  ADD PRIMARY KEY (`id`),
  ADD KEY `exam_id` (`exam_id`),
  ADD KEY `student_id` (`student_id`);

--
-- Indexes for table `exam_stats`
--
ALTER TABLE `exam_stats`
  ADD PRIMARY KEY (`id`),
  ADD KEY `exam_id` (`exam_id`),
  ADD KEY `student_id` (`student_id`),
  ADD KEY `question_id` (`question_id`),
  ADD KEY `exam_result_id` (`exam_result_id`);

--
-- Indexes for table `exam_warns`
--
ALTER TABLE `exam_warns`
  ADD PRIMARY KEY (`id`),
  ADD KEY `exam_result_id` (`exam_result_id`);

--
-- Indexes for table `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `group_name` (`group_name`);

--
-- Indexes for table `helpcontents`
--
ALTER TABLE `helpcontents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `homesections`
--
ALTER TABLE `homesections`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mails`
--
ALTER TABLE `mails`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `packages`
--
ALTER TABLE `packages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `packages_payments`
--
ALTER TABLE `packages_payments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `payment_id` (`payment_id`),
  ADD KEY `package_id` (`package_id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `page_rights`
--
ALTER TABLE `page_rights`
  ADD PRIMARY KEY (`id`),
  ADD KEY `page_id` (`page_id`),
  ADD KEY `ugroup_id` (`ugroup_id`);

--
-- Indexes for table `passages`
--
ALTER TABLE `passages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `student_id` (`student_id`),
  ADD KEY `coupon_id` (`coupon_id`);

--
-- Indexes for table `payment_settings`
--
ALTER TABLE `payment_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `qtypes`
--
ALTER TABLE `qtypes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `qtype_id` (`qtype_id`),
  ADD KEY `subject_id` (`subject_id`),
  ADD KEY `diff_id` (`diff_id`),
  ADD KEY `topic_id` (`topic_id`),
  ADD KEY `stopic_id` (`stopic_id`);

--
-- Indexes for table `questions_langs`
--
ALTER TABLE `questions_langs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `question_id` (`question_id`),
  ADD KEY `language_id` (`language_id`);

--
-- Indexes for table `question_groups`
--
ALTER TABLE `question_groups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `question_id` (`question_id`),
  ADD KEY `group_id` (`group_id`);

--
-- Indexes for table `seos`
--
ALTER TABLE `seos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `slides`
--
ALTER TABLE `slides`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `smssettings`
--
ALTER TABLE `smssettings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `smstemplates`
--
ALTER TABLE `smstemplates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stopics`
--
ALTER TABLE `stopics`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subject_id` (`subject_id`),
  ADD KEY `topic_id` (`topic_id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `presetcode` (`presetcode`);

--
-- Indexes for table `student_groups`
--
ALTER TABLE `student_groups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `student_id` (`student_id`,`group_id`),
  ADD KEY `group_id` (`group_id`);

--
-- Indexes for table `subjects`
--
ALTER TABLE `subjects`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `subject_name` (`subject_name`);

--
-- Indexes for table `subject_groups`
--
ALTER TABLE `subject_groups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subject_id` (`subject_id`),
  ADD KEY `group_id` (`group_id`);

--
-- Indexes for table `testimonials`
--
ALTER TABLE `testimonials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `topics`
--
ALTER TABLE `topics`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subject_id` (`subject_id`);

--
-- Indexes for table `ugroups`
--
ALTER TABLE `ugroups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `presetcode` (`presetcode`),
  ADD KEY `ugroup_id` (`ugroup_id`);

--
-- Indexes for table `user_groups`
--
ALTER TABLE `user_groups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `group_id` (`group_id`);

--
-- Indexes for table `wallets`
--
ALTER TABLE `wallets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `student_id` (`student_id`),
  ADD KEY `student_id_2` (`student_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `advertisements`
--
ALTER TABLE `advertisements`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `configurations`
--
ALTER TABLE `configurations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `contents`
--
ALTER TABLE `contents`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `coupons_students`
--
ALTER TABLE `coupons_students`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `currencies`
--
ALTER TABLE `currencies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `diffs`
--
ALTER TABLE `diffs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `emailtemplates`
--
ALTER TABLE `emailtemplates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `exams`
--
ALTER TABLE `exams`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `exams_packages`
--
ALTER TABLE `exams_packages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=120;

--
-- AUTO_INCREMENT for table `exam_feedbacks`
--
ALTER TABLE `exam_feedbacks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `exam_groups`
--
ALTER TABLE `exam_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=124;

--
-- AUTO_INCREMENT for table `exam_maxquestions`
--
ALTER TABLE `exam_maxquestions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `exam_orders`
--
ALTER TABLE `exam_orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

--
-- AUTO_INCREMENT for table `exam_preps`
--
ALTER TABLE `exam_preps`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `exam_questions`
--
ALTER TABLE `exam_questions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1352;

--
-- AUTO_INCREMENT for table `exam_results`
--
ALTER TABLE `exam_results`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `exam_stats`
--
ALTER TABLE `exam_stats`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2592;

--
-- AUTO_INCREMENT for table `exam_warns`
--
ALTER TABLE `exam_warns`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `groups`
--
ALTER TABLE `groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `helpcontents`
--
ALTER TABLE `helpcontents`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `homesections`
--
ALTER TABLE `homesections`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `mails`
--
ALTER TABLE `mails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `packages`
--
ALTER TABLE `packages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `packages_payments`
--
ALTER TABLE `packages_payments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `page_rights`
--
ALTER TABLE `page_rights`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `passages`
--
ALTER TABLE `passages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `payment_settings`
--
ALTER TABLE `payment_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `qtypes`
--
ALTER TABLE `qtypes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1173;

--
-- AUTO_INCREMENT for table `questions_langs`
--
ALTER TABLE `questions_langs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `question_groups`
--
ALTER TABLE `question_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4720;

--
-- AUTO_INCREMENT for table `seos`
--
ALTER TABLE `seos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `slides`
--
ALTER TABLE `slides`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `smssettings`
--
ALTER TABLE `smssettings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `smstemplates`
--
ALTER TABLE `smstemplates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `stopics`
--
ALTER TABLE `stopics`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=131;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `student_groups`
--
ALTER TABLE `student_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `subjects`
--
ALTER TABLE `subjects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `subject_groups`
--
ALTER TABLE `subject_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `testimonials`
--
ALTER TABLE `testimonials`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `topics`
--
ALTER TABLE `topics`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `ugroups`
--
ALTER TABLE `ugroups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `user_groups`
--
ALTER TABLE `user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `wallets`
--
ALTER TABLE `wallets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `coupons_students`
--
ALTER TABLE `coupons_students`
  ADD CONSTRAINT `coupons_students_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `coupons_students_ibfk_2` FOREIGN KEY (`coupon_id`) REFERENCES `coupons` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `exams_packages`
--
ALTER TABLE `exams_packages`
  ADD CONSTRAINT `exams_packages_ibfk_1` FOREIGN KEY (`package_id`) REFERENCES `packages` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `exams_packages_ibfk_2` FOREIGN KEY (`exam_id`) REFERENCES `exams` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `exam_feedbacks`
--
ALTER TABLE `exam_feedbacks`
  ADD CONSTRAINT `exam_feedbacks_ibfk_1` FOREIGN KEY (`exam_result_id`) REFERENCES `exam_results` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `exam_groups`
--
ALTER TABLE `exam_groups`
  ADD CONSTRAINT `exam_groups_ibfk_1` FOREIGN KEY (`exam_id`) REFERENCES `exams` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `exam_groups_ibfk_2` FOREIGN KEY (`group_id`) REFERENCES `groups` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `exam_maxquestions`
--
ALTER TABLE `exam_maxquestions`
  ADD CONSTRAINT `exam_maxquestions_ibfk_1` FOREIGN KEY (`exam_id`) REFERENCES `exams` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `exam_maxquestions_ibfk_2` FOREIGN KEY (`subject_id`) REFERENCES `subjects` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `exam_orders`
--
ALTER TABLE `exam_orders`
  ADD CONSTRAINT `exam_orders_ibfk_2` FOREIGN KEY (`exam_id`) REFERENCES `exams` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `exam_orders_ibfk_3` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `exam_orders_ibfk_4` FOREIGN KEY (`payment_id`) REFERENCES `payments` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `exam_preps`
--
ALTER TABLE `exam_preps`
  ADD CONSTRAINT `exam_preps_ibfk_1` FOREIGN KEY (`exam_id`) REFERENCES `exams` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `exam_preps_ibfk_2` FOREIGN KEY (`subject_id`) REFERENCES `subjects` (`id`);

--
-- Constraints for table `exam_questions`
--
ALTER TABLE `exam_questions`
  ADD CONSTRAINT `exam_questions_ibfk_1` FOREIGN KEY (`exam_id`) REFERENCES `exams` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `exam_questions_ibfk_2` FOREIGN KEY (`question_id`) REFERENCES `questions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `exam_results`
--
ALTER TABLE `exam_results`
  ADD CONSTRAINT `exam_results_ibfk_1` FOREIGN KEY (`exam_id`) REFERENCES `exams` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `exam_results_ibfk_2` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `exam_stats`
--
ALTER TABLE `exam_stats`
  ADD CONSTRAINT `exam_stats_ibfk_1` FOREIGN KEY (`exam_id`) REFERENCES `exams` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `exam_stats_ibfk_2` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `exam_stats_ibfk_3` FOREIGN KEY (`question_id`) REFERENCES `questions` (`id`),
  ADD CONSTRAINT `exam_stats_ibfk_4` FOREIGN KEY (`exam_result_id`) REFERENCES `exam_results` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `exam_warns`
--
ALTER TABLE `exam_warns`
  ADD CONSTRAINT `exam_warns_ibfk_1` FOREIGN KEY (`exam_result_id`) REFERENCES `exam_results` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `packages_payments`
--
ALTER TABLE `packages_payments`
  ADD CONSTRAINT `packages_payments_ibfk_1` FOREIGN KEY (`payment_id`) REFERENCES `payments` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `packages_payments_ibfk_2` FOREIGN KEY (`package_id`) REFERENCES `packages` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `page_rights`
--
ALTER TABLE `page_rights`
  ADD CONSTRAINT `page_rights_ibfk_1` FOREIGN KEY (`page_id`) REFERENCES `pages` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `page_rights_ibfk_2` FOREIGN KEY (`ugroup_id`) REFERENCES `ugroups` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `payments`
--
ALTER TABLE `payments`
  ADD CONSTRAINT `payments_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `payments_ibfk_2` FOREIGN KEY (`coupon_id`) REFERENCES `coupons` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `questions`
--
ALTER TABLE `questions`
  ADD CONSTRAINT `questions_ibfk_2` FOREIGN KEY (`subject_id`) REFERENCES `subjects` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `questions_ibfk_3` FOREIGN KEY (`qtype_id`) REFERENCES `qtypes` (`id`),
  ADD CONSTRAINT `questions_ibfk_4` FOREIGN KEY (`diff_id`) REFERENCES `diffs` (`id`),
  ADD CONSTRAINT `questions_ibfk_5` FOREIGN KEY (`topic_id`) REFERENCES `topics` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `questions_ibfk_6` FOREIGN KEY (`stopic_id`) REFERENCES `stopics` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `questions_langs`
--
ALTER TABLE `questions_langs`
  ADD CONSTRAINT `questions_langs_ibfk_1` FOREIGN KEY (`question_id`) REFERENCES `questions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `questions_langs_ibfk_2` FOREIGN KEY (`language_id`) REFERENCES `languages` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `question_groups`
--
ALTER TABLE `question_groups`
  ADD CONSTRAINT `question_groups_ibfk_1` FOREIGN KEY (`question_id`) REFERENCES `questions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `question_groups_ibfk_2` FOREIGN KEY (`group_id`) REFERENCES `groups` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `stopics`
--
ALTER TABLE `stopics`
  ADD CONSTRAINT `stopics_ibfk_1` FOREIGN KEY (`subject_id`) REFERENCES `subjects` (`id`),
  ADD CONSTRAINT `stopics_ibfk_2` FOREIGN KEY (`topic_id`) REFERENCES `topics` (`id`);

--
-- Constraints for table `student_groups`
--
ALTER TABLE `student_groups`
  ADD CONSTRAINT `student_groups_ibfk_2` FOREIGN KEY (`group_id`) REFERENCES `groups` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `student_groups_ibfk_3` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `subject_groups`
--
ALTER TABLE `subject_groups`
  ADD CONSTRAINT `subject_groups_ibfk_1` FOREIGN KEY (`subject_id`) REFERENCES `subjects` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `subject_groups_ibfk_2` FOREIGN KEY (`group_id`) REFERENCES `groups` (`id`);

--
-- Constraints for table `topics`
--
ALTER TABLE `topics`
  ADD CONSTRAINT `topics_ibfk_1` FOREIGN KEY (`subject_id`) REFERENCES `subjects` (`id`);

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`ugroup_id`) REFERENCES `ugroups` (`id`);

--
-- Constraints for table `user_groups`
--
ALTER TABLE `user_groups`
  ADD CONSTRAINT `user_groups_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `user_groups_ibfk_2` FOREIGN KEY (`group_id`) REFERENCES `groups` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `wallets`
--
ALTER TABLE `wallets`
  ADD CONSTRAINT `wallets_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
