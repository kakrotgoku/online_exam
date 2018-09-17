-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Sep 17, 2018 at 02:09 PM
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

-- --------------------------------------------------------

--
-- Table structure for table `exam_groups`
--

CREATE TABLE `exam_groups` (
  `id` int(11) NOT NULL,
  `exam_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
(3, 'Low', 'Low Test', '1000.00', '1200.00', 'P', 'fc256b48a756e5be4296f653897476e4.jpg', 30, 'Active', '2018-08-28 15:56:30', '2018-09-15 13:54:13'),
(4, 'Medium', 'Medium Level', '1500.00', '1700.00', 'P', 'a69169786849ca44b4b6b22c2796c88a.jpg', 30, 'Active', '2018-08-28 15:56:57', '2018-09-15 13:53:55'),
(5, 'High', 'High Level', '0.00', '0.00', 'P', '9f9f2a88fe6e2754198ae179b95d325a.jpg', 30, 'Active', '2018-08-28 15:57:19', '2018-09-15 13:53:31'),
(9, 'NEET Mock', '', '0.00', '0.00', 'P', 'b746ae39232cd4cdde7599139adbf284.jpg', 0, 'Active', '2018-09-13 11:22:45', '2018-09-15 13:53:10');

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
(36, 33, 9, '0.00', 1, '0.00', '2018-09-17', NULL, '2018-09-17 17:26:57', '2018-09-17 17:26:57');

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
(33, 13, '1537185417186175160', '0.00', NULL, NULL, 'Package Purchase', '1537185417767708367', NULL, NULL, 'Approved', '2018-09-17 17:26:57', 'Free', 'FRE', 'web', '2018-09-17 17:26:57', '2018-09-17 17:26:57');

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
(8, 'imsathiya@gmail.com', '19d0ded48a4a30f4a8f36350761459ef3b121c7569a37e413e4780642a9fc397', 'Sathiyakeerthi Madasamy', '261-3, 4F, Section 2, Datong Road, Xizhi District', '926777900', '', '', NULL, 'Active', '', 'Done', NULL, '2018-08-29', NULL, NULL, NULL, '2018-08-29 21:32:51', '2018-09-13 14:50:40', '2018-09-13 14:50:40'),
(11, 'sathecit@gmail.com', 'ee1e00208bf8f57043056cdb95785f730123da193c1d720efa824d970752289e', 'sathessh', '14b,tristartrilok', '9943283743', '9943283743', '', '0f116b09832b7f4bf976fea3ac2f6250.jpg', 'Active', '', 'Done', NULL, '2018-09-06', NULL, NULL, NULL, '2018-09-06 20:21:33', '2018-09-16 14:30:14', '2018-09-16 14:30:14'),
(12, 'arundg2@yahoo.com', '916131e612ca027c683836d9373b848027f18b890d996702ab2033a082d1fcbd', 'Arun', 'Bangalore', '9686499730', '', '', NULL, 'Active', '', 'Done', NULL, '2018-09-12', NULL, NULL, NULL, '2018-09-12 11:36:59', '2018-09-14 12:51:36', '2018-09-14 12:51:36'),
(13, 'mail2pravi98@gmail.com', 'b57a96db8249b032841cbeadc4c93f3c58a82453e763bbf49be2361d739814d6', 'Praveen', 'address', '8144461886', 'Name', 'pr100', NULL, 'Active', '', 'Done', NULL, '2018-09-12', NULL, NULL, NULL, '2018-09-12 12:14:11', '2018-09-17 17:26:31', '2018-09-17 17:26:31'),
(15, 'dr.anithaarumugam@gmail.com', 'd3f15023e12f298e98f0e49d1f272ecebfff8f3452977a43ba14588e887c443d', 'Pavithra', '2/414D1Bhagavath Singh road', '9443809815', '8220478478', '1234', NULL, 'Active', '', 'Done', NULL, '2018-09-13', NULL, NULL, NULL, '2018-09-13 11:24:46', '2018-09-13 12:00:25', '2018-09-13 12:00:25'),
(16, 'eboominathan@gmail.com', '95828a248160cfe0160aebbb7f697c201b1eaa525e94097c89d2c81f1bcc6779', 'Boominathan', 'Coimbatore', '7339376390', '', '', NULL, 'Active', '', 'Done', NULL, '2018-09-16', NULL, NULL, NULL, '2018-09-16 21:42:41', '2018-09-16 21:43:36', '2018-09-16 21:43:36'),
(17, 'gpl.nanda22@gmail.com', '96491e4955c148f95e0b397d7c306319681d130d08dd5019c842636ad08ebdca', 'Nanda ', 'address', '8248778021', NULL, 'na1', NULL, 'Active', NULL, 'Done', 0, '2018-09-17', NULL, NULL, NULL, '2018-09-17 00:00:00', '2018-09-17 10:16:03', '2018-09-17 10:16:03'),
(20, 'kishorepraveen18@gmail.com', 'cc007b236823a667254aff50631f154b74fbf396dad5a5329a1101b4a751ba3a', 'Praveen', 'address', '8144461886', NULL, 'pr1', NULL, 'Active', NULL, 'Done', 0, '2018-09-17', NULL, NULL, NULL, '2018-09-17 00:00:00', '2018-09-17 10:14:59', NULL);

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
(47, 20, 4);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `exams_packages`
--
ALTER TABLE `exams_packages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;

--
-- AUTO_INCREMENT for table `exam_feedbacks`
--
ALTER TABLE `exam_feedbacks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `exam_groups`
--
ALTER TABLE `exam_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;

--
-- AUTO_INCREMENT for table `exam_maxquestions`
--
ALTER TABLE `exam_maxquestions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `exam_orders`
--
ALTER TABLE `exam_orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT for table `exam_preps`
--
ALTER TABLE `exam_preps`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `exam_questions`
--
ALTER TABLE `exam_questions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1252;

--
-- AUTO_INCREMENT for table `exam_results`
--
ALTER TABLE `exam_results`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `exam_stats`
--
ALTER TABLE `exam_stats`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2391;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `packages_payments`
--
ALTER TABLE `packages_payments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=756;

--
-- AUTO_INCREMENT for table `questions_langs`
--
ALTER TABLE `questions_langs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `question_groups`
--
ALTER TABLE `question_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2196;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `student_groups`
--
ALTER TABLE `student_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

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
