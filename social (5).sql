-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 25, 2021 at 07:25 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.2.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `social`
--

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `post_body` text NOT NULL,
  `posted_by` varchar(60) NOT NULL,
  `posted_to` varchar(60) NOT NULL,
  `date_added` datetime NOT NULL,
  `removed` varchar(3) NOT NULL,
  `post_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `post_body`, `posted_by`, `posted_to`, `date_added`, `removed`, `post_id`) VALUES
(1, 'nice', 'captain_america', 'rushi_satani', '2021-03-16 20:09:09', 'no', 9),
(2, 'nice', 'captain_america', 'rushi_satani', '2021-03-16 20:29:13', 'no', 10),
(3, 'dreams are grt', 'captain_america', 'captain_america', '2021-03-16 20:48:29', 'no', 16),
(4, 'hahaha now its 4th', 'captain_america', 'rushi_satani', '2021-03-17 17:12:35', 'no', 6),
(5, 'nice one', 'sakshi_ankleshwariya', 'captain_america', '2021-03-24 13:39:51', 'no', 26),
(6, 'good one', 'sakshi_ankleshwariya', 'khushi_shah', '2021-03-24 14:55:31', 'no', 30),
(7, 'nice thought', 'captain_america', 'rushi_satani', '2021-03-26 09:00:21', 'no', 56),
(8, 'very good ', 'sakshi_ankleshwariya', 'captain_america', '2021-04-14 19:39:34', 'no', 73),
(10, 'heeey good one', 'khushi_shah', 'sakshi_ankleshwariya', '2021-04-24 18:25:12', 'no', 86),
(11, 'good vieo', 'rushi_satani', 'sakshi_ankleshwariya', '2021-04-24 19:17:39', 'no', 92),
(12, 'good morning', 'rushi_satani', 'sakshi_ankleshwariya', '2021-04-25 05:38:08', 'no', 93);

-- --------------------------------------------------------

--
-- Table structure for table `friend_requests`
--

CREATE TABLE `friend_requests` (
  `id` int(11) NOT NULL,
  `user_to` varchar(50) NOT NULL,
  `user_from` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `friend_requests`
--

INSERT INTO `friend_requests` (`id`, `user_to`, `user_from`) VALUES
(2, 'darshee_mehta', 'khushi_shah'),
(4, 'darshee_mehta', 'captain_america'),
(8, 'darshee_mehta', 'jeel_shah'),
(10, 'darshee_mehta', 'rushi_satani'),
(12, 'manit_ankleshwariya', 'captain_america'),
(16, 'darshee_mehta', 'sakshi_ankleshwariya'),
(19, 'sakshi_ankleshwariya', 'rushi_satani');

-- --------------------------------------------------------

--
-- Table structure for table `likes`
--

CREATE TABLE `likes` (
  `id` int(11) NOT NULL,
  `username` varchar(60) NOT NULL,
  `post_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `likes`
--

INSERT INTO `likes` (`id`, `username`, `post_id`) VALUES
(2, 'rushi_satani', 10),
(3, 'rushi_satani', 9),
(4, 'captain_america', 16),
(5, 'rushi_satani', 24),
(7, 'captain_america', 22),
(8, 'sakshi_ankleshwariya', 10),
(9, 'khushi_shah', 30),
(10, 'khushi_shah', 29),
(11, 'khushi_shah', 28),
(13, 'sakshi_ankleshwariya', 3),
(14, 'sakshi_ankleshwariya', 30),
(15, 'jeel_shah', 20),
(16, 'jeel_shah', 22),
(17, 'jeel_shah', 24),
(19, 'jeel_shah', 73),
(20, 'jeel_shah', 72),
(28, 'sakshi_ankleshwariya', 74),
(29, 'sakshi_ankleshwariya', 73),
(30, 'khushi_shah', 56),
(31, 'sakshi_ankleshwariya', 81),
(32, 'khushi_shah', 85),
(33, 'khushi_shah', 84),
(34, 'sakshi_ankleshwariya', 89),
(35, 'sakshi_ankleshwariya', 90),
(36, 'rushi_satani', 92),
(37, 'rushi_satani', 93),
(38, 'rushi_satani', 71);

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(11) NOT NULL,
  `user_to` varchar(50) NOT NULL,
  `user_from` varchar(50) NOT NULL,
  `body` text NOT NULL,
  `date` datetime NOT NULL,
  `opened` varchar(3) NOT NULL,
  `viewed` varchar(3) NOT NULL,
  `deleted` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `user_to`, `user_from`, `body`, `date`, `opened`, `viewed`, `deleted`) VALUES
(1, 'captain_america', 'captain_america', 'hiii how are u', '2021-03-23 03:46:38', 'yes', 'yes', 'no'),
(2, 'captain_america', 'captain_america', 'text me whenever u are free\r\n', '2021-03-23 03:46:59', 'yes', 'yes', 'no'),
(3, 'captain_america', 'captain_america', 'are u fine', '2021-03-23 03:53:17', 'yes', 'yes', 'no'),
(4, 'captain_america', 'captain_america', 'are u fine', '2021-03-23 03:53:31', 'yes', 'yes', 'no'),
(5, 'captain_america', 'captain_america', 'are u fine', '2021-03-23 03:53:43', 'yes', 'yes', 'no'),
(6, 'rushi_satani', 'captain_america', 'hi rushi', '2021-03-23 03:54:45', 'no', 'yes', 'no'),
(7, 'rushi_satani', 'captain_america', 'heelo there\r\n', '2021-03-23 03:55:30', 'no', 'yes', 'no'),
(8, 'rushi_satani', 'captain_america', 'heelo there\r\n', '2021-03-23 04:02:01', 'no', 'yes', 'no'),
(9, 'rushi_satani', 'captain_america', 'heelo there\r\n', '2021-03-23 04:02:37', 'no', 'yes', 'no'),
(10, 'rushi_satani', 'captain_america', 'heelo there\r\n', '2021-03-23 04:02:54', 'no', 'yes', 'no'),
(11, 'rushi_satani', 'captain_america', 'good morning \r\n', '2021-03-24 04:32:42', 'no', 'yes', 'no'),
(12, 'rushi_satani', 'captain_america', 'good morning \r\n', '2021-03-24 04:33:20', 'no', 'yes', 'no'),
(13, 'captain_america', 'sakshi_ankleshwariya', 'hi\r\n', '2021-03-24 04:38:15', 'yes', 'yes', 'no'),
(14, 'captain_america', 'sakshi_ankleshwariya', 'how are u', '2021-03-24 04:38:21', 'yes', 'yes', 'no'),
(15, 'captain_america', 'sakshi_ankleshwariya', 'hi\r\n', '2021-03-24 04:38:41', 'yes', 'yes', 'no'),
(16, 'rushi_satani', 'sakshi_ankleshwariya', 'hey\r\n', '2021-03-24 04:39:48', 'yes', 'yes', 'no'),
(17, 'sakshi_ankleshwariya', 'khushi_shah', 'hi sakshi\r\nhow are u', '2021-03-24 09:12:20', 'yes', 'yes', 'no'),
(18, 'sakshi_ankleshwariya', 'khushi_shah', 'hiii', '2021-03-24 09:12:32', 'yes', 'yes', 'no'),
(19, 'darshee_mehta', 'sakshi_ankleshwariya', 'hiii how are u', '2021-03-24 13:36:34', 'no', 'no', 'no'),
(20, 'darshee_mehta', 'sakshi_ankleshwariya', 'how are u ', '2021-03-24 13:36:55', 'no', 'no', 'no'),
(21, 'jeel_shah', 'captain_america', 'hey\r\n', '2021-03-26 03:52:38', 'yes', 'yes', 'no'),
(22, 'jeel_shah', 'captain_america', 'how are u', '2021-03-26 03:52:47', 'yes', 'yes', 'no'),
(23, 'captain_america', 'jeel_shah', 'hi i am fine', '2021-03-26 03:53:43', 'yes', 'yes', 'no'),
(24, 'captain_america', 'jeel_shah', 'how are u?', '2021-03-26 03:53:52', 'yes', 'yes', 'no'),
(25, 'rushi_satani', 'sakshi_ankleshwariya', 'hi', '2021-03-26 09:09:31', 'yes', 'yes', 'no'),
(26, 'sakshi_ankleshwariya', 'captain_america', 'hi\r\n', '2021-03-29 14:25:26', 'yes', 'yes', 'no'),
(27, 'sakshi_ankleshwariya', 'captain_america', 'how are u', '2021-03-29 14:25:31', 'yes', 'yes', 'no'),
(33, 'captain_america', 'sakshi_ankleshwariya', 'hi\r\n', '2021-04-14 18:42:03', 'no', 'yes', 'no'),
(34, 'captain_america', 'sakshi_ankleshwariya', 'hello', '2021-04-14 18:42:07', 'no', 'yes', 'no'),
(35, 'captain_america', 'sakshi_ankleshwariya', 'hello', '2021-04-14 18:42:36', 'no', 'yes', 'no'),
(36, 'captain_america', 'sakshi_ankleshwariya', 'hello', '2021-04-14 18:43:17', 'no', 'yes', 'no'),
(37, 'captain_america', 'sakshi_ankleshwariya', 'hello', '2021-04-14 18:44:37', 'no', 'yes', 'no'),
(38, 'captain_america', 'sakshi_ankleshwariya', 'hello', '2021-04-14 18:50:17', 'no', 'yes', 'no'),
(39, 'captain_america', 'sakshi_ankleshwariya', 'hi', '2021-04-14 18:50:22', 'no', 'yes', 'no'),
(40, 'manit_ankleshwariya', 'captain_america', 'hro', '2021-04-14 18:52:11', 'no', 'no', 'no'),
(41, 'manit_ankleshwariya', 'captain_america', 'hi', '2021-04-14 18:52:14', 'no', 'no', 'no'),
(42, 'jeel_shah', 'captain_america', 'hey therr', '2021-04-14 19:41:51', 'no', 'yes', 'no'),
(43, 'rushi_satani', 'sakshi_ankleshwariya', 'hiii\r\n', '2021-04-15 17:28:02', 'yes', 'yes', 'no'),
(46, 'sakshi_ankleshwariya', 'khushi_shah', 'hey how are u', '2021-04-24 18:26:25', 'yes', 'yes', 'no'),
(51, 'sakshi_ankleshwariya', 'rushi_satani', 'hiiiii sakshi', '2021-04-25 05:37:36', 'no', 'no', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` int(11) NOT NULL,
  `user_to` varchar(50) NOT NULL,
  `user_from` varchar(50) NOT NULL,
  `message` text NOT NULL,
  `link` varchar(100) NOT NULL,
  `datetime` datetime NOT NULL,
  `opened` varchar(3) NOT NULL,
  `viewed` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `user_to`, `user_from`, `message`, `link`, `datetime`, `opened`, `viewed`) VALUES
(1, 'rushi_satani', 'captain_america', 'Captain America liked your post', 'post.php?id=27', '2021-03-24 04:29:52', 'no', 'yes'),
(2, 'rushi_satani', 'sakshi_ankleshwariya', 'Sakshi Ankleshwariya liked your post', 'post.php?id=10', '2021-03-24 04:39:29', 'no', 'yes'),
(3, 'sakshi_ankleshwariya', 'khushi_shah', 'Khushi Shah liked your post', 'post.php?id=29', '2021-03-24 09:11:38', 'yes', 'yes'),
(4, 'sakshi_ankleshwariya', 'khushi_shah', 'Khushi Shah liked your post', 'post.php?id=28', '2021-03-24 09:11:40', 'yes', 'yes'),
(5, 'darshee_mehta', 'sakshi_ankleshwariya', 'Sakshi Ankleshwariya liked your post', 'post.php?id=4', '2021-03-24 13:38:02', 'no', 'no'),
(6, 'darshee_mehta', 'sakshi_ankleshwariya', 'Sakshi Ankleshwariya liked your post', 'post.php?id=3', '2021-03-24 13:38:06', 'no', 'no'),
(7, 'captain_america', 'sakshi_ankleshwariya', 'Sakshi Ankleshwariya commented on your post', 'post.php?id=26', '2021-03-24 13:39:51', 'yes', 'yes'),
(8, 'khushi_shah', 'sakshi_ankleshwariya', 'Sakshi Ankleshwariya liked your post', 'post.php?id=30', '2021-03-24 14:55:24', 'yes', 'yes'),
(9, 'khushi_shah', 'sakshi_ankleshwariya', 'Sakshi Ankleshwariya commented on your post', 'post.php?id=30', '2021-03-24 14:55:31', 'yes', 'yes'),
(10, 'captain_america', 'jeel_shah', 'Jeel Shah liked your post', 'post.php?id=20', '2021-03-26 03:54:18', 'no', 'yes'),
(11, 'captain_america', 'jeel_shah', 'Jeel Shah liked your post', 'post.php?id=22', '2021-03-26 03:54:19', 'no', 'yes'),
(12, 'captain_america', 'jeel_shah', 'Jeel Shah liked your post', 'post.php?id=24', '2021-03-26 03:54:20', 'no', 'yes'),
(13, 'rushi_satani', 'captain_america', 'Captain America commented on your post', 'post.php?id=56', '2021-03-26 09:00:21', 'yes', 'yes'),
(14, 'captain_america', 'jeel_shah', 'Jeel Shah liked your post', 'post.php?id=73', '2021-03-29 14:27:41', 'yes', 'yes'),
(15, 'captain_america', 'jeel_shah', 'Jeel Shah liked your post', 'post.php?id=73', '2021-03-29 15:27:44', 'yes', 'yes'),
(16, 'captain_america', 'jeel_shah', 'Jeel Shah liked your post', 'post.php?id=72', '2021-03-29 15:27:46', 'no', 'yes'),
(17, 'captain_america', 'sakshi_ankleshwariya', 'Sakshi Ankleshwariya liked your post', 'post.php?id=73', '2021-04-14 10:37:38', 'yes', 'yes'),
(18, 'captain_america', 'sakshi_ankleshwariya', 'Sakshi Ankleshwariya liked your post', 'post.php?id=73', '2021-04-14 10:41:02', 'yes', 'yes'),
(19, 'captain_america', 'sakshi_ankleshwariya', 'Sakshi Ankleshwariya liked your post', 'post.php?id=73', '2021-04-14 10:47:54', 'yes', 'yes'),
(20, 'captain_america', 'sakshi_ankleshwariya', 'Sakshi Ankleshwariya liked your post', 'post.php?id=72', '2021-04-14 10:47:56', 'no', 'yes'),
(21, 'captain_america', 'sakshi_ankleshwariya', 'Sakshi Ankleshwariya liked your post', 'post.php?id=73', '2021-04-14 10:49:02', 'yes', 'yes'),
(22, 'captain_america', 'sakshi_ankleshwariya', 'Sakshi Ankleshwariya liked your post', 'post.php?id=72', '2021-04-14 10:49:43', 'no', 'yes'),
(23, 'captain_america', 'sakshi_ankleshwariya', 'Sakshi Ankleshwariya liked your post', 'post.php?id=72', '2021-04-14 10:49:45', 'no', 'yes'),
(24, 'captain_america', 'sakshi_ankleshwariya', 'Sakshi Ankleshwariya liked your post', 'post.php?id=73', '2021-04-14 19:39:20', 'yes', 'yes'),
(25, 'captain_america', 'sakshi_ankleshwariya', 'Sakshi Ankleshwariya commented on your post', 'post.php?id=73', '2021-04-14 19:39:34', 'yes', 'yes'),
(26, 'rushi_satani', 'khushi_shah', 'Khushi Shah liked your post', 'post.php?id=56', '2021-04-15 09:29:23', 'no', 'yes'),
(27, 'captain_america', 'sakshi_ankleshwariya', 'Sakshi Ankleshwariya commented on your post', 'post.php?id=73', '2021-04-15 16:39:21', 'no', 'no'),
(28, 'sakshi_ankleshwariya', 'khushi_shah', 'Khushi Shah commented on your post', 'post.php?id=86', '2021-04-24 18:25:12', 'no', 'yes'),
(29, 'sakshi_ankleshwariya', 'khushi_shah', 'Khushi Shah liked your post', 'post.php?id=85', '2021-04-24 18:25:23', 'no', 'yes'),
(30, 'sakshi_ankleshwariya', 'khushi_shah', 'Khushi Shah liked your post', 'post.php?id=84', '2021-04-24 18:25:24', 'yes', 'yes'),
(31, 'sakshi_ankleshwariya', 'rushi_satani', 'Rushi Satani liked your post', 'post.php?id=92', '2021-04-24 19:17:28', 'no', 'yes'),
(32, 'sakshi_ankleshwariya', 'rushi_satani', 'Rushi Satani commented on your post', 'post.php?id=92', '2021-04-24 19:17:39', 'no', 'yes'),
(33, 'sakshi_ankleshwariya', 'rushi_satani', 'Rushi Satani liked your post', 'post.php?id=93', '2021-04-25 05:37:56', 'no', 'no'),
(34, 'sakshi_ankleshwariya', 'rushi_satani', 'Rushi Satani liked your post', 'post.php?id=71', '2021-04-25 05:37:58', 'no', 'no'),
(35, 'sakshi_ankleshwariya', 'rushi_satani', 'Rushi Satani commented on your post', 'post.php?id=93', '2021-04-25 05:38:08', 'no', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `body` text NOT NULL,
  `added_by` varchar(60) NOT NULL,
  `user_to` varchar(60) NOT NULL,
  `date_added` datetime NOT NULL,
  `user_closed` varchar(3) NOT NULL,
  `deleted` varchar(3) NOT NULL,
  `likes` int(11) NOT NULL,
  `image` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `body`, `added_by`, `user_to`, `date_added`, `user_closed`, `deleted`, `likes`, `image`) VALUES
(54, 'Positive thinking is the notion that if you think good thoughts, things will work out well. Optimism is the feeling of thinking things will be well and be hopeful. Martin Seligman. Positive Work Good.', 'rushi_satani', 'none', '2021-03-26 08:45:16', 'no', 'yes', 0, ''),
(55, 'Positive thinking is the notion that if you think good thoughts, things will work out well. Optimism is the feeling of thinking things will be well and be hopeful. Martin Seligman. Positive Work Good.', 'rushi_satani', 'none', '2021-03-26 08:49:25', 'no', 'yes', 0, ''),
(56, 'Positive thinking is the notion that if you think good thoughts, things will work out well. Optimism is the feeling of thinking things will be well and be hopeful. Martin Seligman. Positive Work Good.', 'rushi_satani', 'none', '2021-03-26 08:49:31', 'no', 'no', 1, ''),
(57, 'hello good afternooon', 'sakshi_ankleshwariya', 'none', '2021-03-26 09:08:52', 'no', 'yes', 0, ''),
(58, 'hey there', 'sakshi_ankleshwariya', 'none', '2021-03-26 09:09:07', 'no', 'yes', 0, ''),
(59, 'my fav', 'sakshi_ankleshwariya', 'none', '2021-03-29 13:26:57', 'no', 'no', 0, 'assets/images/posts/6061c791ab58freece_kenney_122c9660b9d1eedcaf99c04ab974cab44n.jpeg'),
(60, 'my fav', 'sakshi_ankleshwariya', 'none', '2021-03-29 13:28:25', 'no', 'yes', 0, 'assets/images/posts/6061c7e928fa0reece_kenney_122c9660b9d1eedcaf99c04ab974cab44n.jpeg'),
(61, 'hahha', 'sakshi_ankleshwariya', 'none', '2021-03-29 13:29:57', 'no', 'no', 0, 'assets/images/posts/6061c8455741clittle_mac9cfacd93b608dce648d5f43013e3c975n.jpeg'),
(62, 'hahha', 'sakshi_ankleshwariya', 'none', '2021-03-29 13:30:05', 'no', 'yes', 0, 'assets/images/posts/6061c84d4ee50little_mac9cfacd93b608dce648d5f43013e3c975n.jpeg'),
(63, 'hhh', 'sakshi_ankleshwariya', 'none', '2021-03-29 13:32:15', 'no', 'no', 0, 'assets/images/posts/6061c8cf1642egoofy_mousef23548fb257c3489bd35e362e71203c8n.jpeg'),
(64, 'hello', 'sakshi_ankleshwariya', 'none', '2021-03-29 13:33:09', 'no', 'yes', 0, ''),
(65, 'lk', 'sakshi_ankleshwariya', 'none', '2021-03-29 13:34:12', 'no', 'yes', 0, ''),
(66, '<br><iframe width=\'420\' height=\'315\' src=\'https://www.youtube.com/embed/LzZlEGQdY8Y\'></iframe><br>', 'sakshi_ankleshwariya', 'none', '2021-03-29 13:56:42', 'no', 'no', 0, ''),
(67, 'hi', 'sakshi_ankleshwariya', 'none', '2021-03-29 13:56:53', 'no', 'no', 0, ''),
(68, 'heeeeyyyyyyyy', 'sakshi_ankleshwariya', 'none', '2021-03-29 14:00:28', 'no', 'yes', 0, ''),
(69, 'heeeeyyyyyyyy', 'sakshi_ankleshwariya', 'none', '2021-03-29 14:00:43', 'no', 'yes', 0, ''),
(70, '<br><iframe width=\'420\' height=\'315\' src=\'https://www.youtube.com/embed/LzZlEGQdY8Y\'></iframe><br>', 'sakshi_ankleshwariya', 'none', '2021-03-29 14:22:25', 'no', 'no', 0, ''),
(71, 'hi', 'sakshi_ankleshwariya', 'none', '2021-03-29 14:22:32', 'no', 'no', 1, ''),
(72, 'hii good evening', 'captain_america', 'none', '2021-03-29 14:24:50', 'no', 'no', 1, ''),
(73, '<br><iframe width=\'420\' height=\'315\' src=\'https://www.youtube.com/embed/EF09zxzpVbk\'></iframe><br>', 'captain_america', 'none', '2021-03-29 14:26:21', 'no', 'no', 2, ''),
(74, 'gi', 'sakshi_ankleshwariya', 'none', '2021-04-14 16:44:14', 'no', 'yes', 1, ''),
(75, 'hey there ', 'sakshi_ankleshwariya', 'none', '2021-04-14 19:39:09', 'no', 'yes', 0, ''),
(76, '<br><iframe width=\'420\' height=\'315\' src=\'https://www.youtube.com/embed/zI9wlhwMZpk\'></iframe><br>', 'khushi_shah', 'none', '2021-04-14 19:44:01', 'no', 'yes', 0, ''),
(77, 'hui', 'sakshi_ankleshwariya', 'none', '2021-04-15 16:54:02', 'no', 'yes', 0, ''),
(78, 'hui', 'sakshi_ankleshwariya', 'none', '2021-04-15 16:54:09', 'no', 'yes', 0, ''),
(79, 'hi', 'sakshi_ankleshwariya', 'none', '2021-04-15 16:54:17', 'no', 'yes', 0, ''),
(80, 'hi', 'sakshi_ankleshwariya', 'none', '2021-04-15 16:54:32', 'no', 'yes', 0, ''),
(81, 'hi', 'sakshi_ankleshwariya', 'none', '2021-04-15 16:54:37', 'no', 'yes', 1, ''),
(82, 'jhi', 'sakshi_ankleshwariya', 'none', '2021-04-15 18:09:14', 'no', 'yes', 0, 'assets/images/posts/6078733ab0cf3bart_simpson37e241c20f54539e5304221e3cdb301an.jpeg'),
(83, 'hello', 'sakshi_ankleshwariya', 'none', '2021-04-15 18:09:22', 'no', 'yes', 0, ''),
(84, 'hello', 'sakshi_ankleshwariya', 'none', '2021-04-15 18:09:28', 'no', 'yes', 1, ''),
(85, 'https://youtu.be/AT_GjUjNFpo', 'sakshi_ankleshwariya', 'none', '2021-04-24 18:23:25', 'no', 'yes', 1, ''),
(86, '<br><iframe width=\'420\' height=\'315\' src=\'https://www.youtube.com/embed/AT_GjUjNFpo\'></iframe><br>', 'sakshi_ankleshwariya', 'none', '2021-04-24 18:23:38', 'no', 'yes', 0, ''),
(87, 'helllo everyone ', 'sakshi_ankleshwariya', 'none', '2021-04-24 18:28:59', 'no', 'yes', 0, ''),
(88, '<br><iframe width=\'420\' height=\'315\' src=\'https://www.youtube.com/embed/AT_GjUjNFpo\'></iframe><br>', 'sakshi_ankleshwariya', 'none', '2021-04-24 18:29:10', 'no', 'yes', 0, ''),
(89, 'beautiful', 'sakshi_ankleshwariya', 'none', '2021-04-24 18:29:39', 'no', 'yes', 1, 'assets/images/posts/608455836072bBottleFairylight.jpg'),
(90, 'hello world ', 'sakshi_ankleshwariya', 'none', '2021-04-24 19:13:35', 'no', 'yes', 1, ''),
(91, 'beautiful', 'sakshi_ankleshwariya', 'none', '2021-04-24 19:14:11', 'no', 'yes', 0, 'assets/images/posts/60845ff3681d8BottleFairylight.jpg'),
(92, '<br><iframe width=\'420\' height=\'315\' src=\'https://www.youtube.com/embed/AT_GjUjNFpo\'></iframe><br>', 'sakshi_ankleshwariya', 'none', '2021-04-24 19:14:26', 'no', 'yes', 1, ''),
(93, 'Good morning', 'sakshi_ankleshwariya', 'none', '2021-04-25 04:56:37', 'no', 'no', 1, '');

-- --------------------------------------------------------

--
-- Table structure for table `trends`
--

CREATE TABLE `trends` (
  `title` varchar(50) NOT NULL,
  `hits` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `trends`
--

INSERT INTO `trends` (`title`, `hits`) VALUES
('Hello', 6),
('Guys', 2),
('Looking', 2),
('Forwar', 2),
('For', 2),
('Superbowl', 2),
('My', 2),
('Fav', 2),
('Hahha', 2),
('Hhh', 1),
('Lk', 1),
('Hi', 5),
('Heeeeyyyyyyyy', 2),
('Hii', 1),
('Evening', 1),
('Gi', 1),
('Hui', 2),
('Jhi', 1),
('Helllo', 1),
('Beautiful', 2),
('World', 1),
('Morning', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `first_name` varchar(25) NOT NULL,
  `last_name` varchar(25) NOT NULL,
  `username` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `signup_date` date NOT NULL,
  `profile_pic` varchar(255) NOT NULL,
  `num_posts` int(11) NOT NULL,
  `num_likes` int(11) NOT NULL,
  `user_closed` varchar(3) NOT NULL,
  `friend_array` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `username`, `email`, `password`, `signup_date`, `profile_pic`, `num_posts`, `num_likes`, `user_closed`, `friend_array`) VALUES
(2, 'Rita', 'Shah', 'rita_shah', 'Rita123@gamil.com', 'password', '2021-02-27', 'C:\nmpphtdocssocial network projectDemoassetsimagesprofile_picsdefaultshead_belize_hole.png', 0, 0, 'no', ','),
(6, 'Atul', 'Barot', 'atul_barot', 'Atul123@gmail.com', '8e82a1040429639446dabc3b54ec9a2d', '2021-02-27', 'C:\nmpphtdocssocial network projectDemoassetsimagesprofile_picsdefaultshead_carrot.png', 0, 0, 'no', ','),
(7, 'Heer', 'Shah', 'heer_shah', 'Heer123@gmail.com', '566b3e727e7509912a9c1c18409e9ee3', '2021-03-02', 'C:\nmpphtdocssocial network projectDemoassetsimagesprofile_picsdefaultshead_carrot.png', 0, 0, 'no', ','),
(9, 'Tirth', 'Satani', 'tirth_satani', 'Tirth@gmail.com', 'a3e7205df169f4920ea319ec280e4135', '2021-03-03', 'C:\nmpphtdocssocial network projectassetsimagesprofile_picsdefaultshead_belize_hole.png', 0, 0, 'no', ','),
(10, 'Kritika', 'Ankleshwariya', 'kritika_ankleshwariya', 'Kritika123@gmail.com', '4870aaee76ef4f83077671d285c45f7b', '2021-03-07', 'C:\nmpphtdocssocial network projectassetsimagesprofile_picsdefaultshead_carrot.png', 0, 0, 'no', ','),
(11, 'Captain', 'America', 'captain_america', 'Captain123@gmail.com', '24d45a21e53ef853b56620fa189c0d43', '2021-03-11', 'assets/images/profile_pics/captain_america44ff34c665d10ade845dc40bab57018cn.jpeg', 26, 9, 'no', ',jeel_shah,sakshi_ankleshwariya,'),
(13, 'Darshee', 'Mehta', 'darshee_mehta', 'Darshee123@gamil.com', '4329b1757c9eeba7fdd8efadd11d37c5', '2021-03-11', 'assets/images/profile_pics/defaults/head_deep_blue.png', 2, 1, 'no', ','),
(14, 'Rushi', 'Satani', 'rushi_satani', 'Rushi123@gmail.com', '0f0dcc8a14693bbbc0c76db1fd2e9e2e', '2021-03-11', 'assets/images/profile_pics/defaults/head_emerald.png', 10, 4, 'no', ','),
(16, 'Manit', 'Ankleshwariya', 'manit_ankleshwariya', 'Manit123@gmail.com', '74c13b703d181ad8ef712e3ba39d6a89', '2021-03-11', 'assets/images/profile_pics/defaults/head_deep_blue.png', 2, 0, 'no', ',sakshi_ankleshwariya,'),
(17, 'Sakshi', 'Ankleshwariya', 'sakshi_ankleshwariya', 'Sakshibarot123@gmail.com', 'b73a3203047396075ccac51f92358f6e', '2021-03-24', 'assets/images/profile_pics/sakshi_ankleshwariyab2f8e449dd4da9c252bef8a858db1821n.jpeg', 62, 11, 'no', ',captain_america,captain_america,khushi_shah,jeel_shah,'),
(18, 'Khushi', 'Shah', 'khushi_shah', 'Khushi123@gmail.com', 'cae5161fc8156ab2de412ec4007a76e2', '2021-03-24', 'assets/images/profile_pics/defaults/head_deep_blue.png', 2, 2, 'no', ',darshee_mehta,jeel_shah,sakshi_ankleshwariya,'),
(19, 'Jeel', 'Shah', 'jeel_shah', 'Jeel123@gmail.com', 'ff3621e8b8bed5d7157fae0f4c9a8688', '2021-03-24', 'assets/images/profile_pics/jeel_shahf507c4f3e433e79f0100fee049d60b93n.jpeg', 0, 0, 'no', ',captain_america,khushi_shah,sakshi_ankleshwariya,'),
(20, 'Atul', 'Ankleshwariya', 'atul_ankleshwariya', 'Atul1309@gmail.com', '8e82a1040429639446dabc3b54ec9a2d', '2021-04-14', 'assets/images/profile_pics/defaults/head_emerald.png', 0, 0, 'no', ','),
(21, 'Sakshi', 'Ankleshwariya', 'sakshi_ankleshwariya_1', '19bce502@nirmauni.ac.in', '33ab7e78bbdf7b49d612c3220725575f', '2021-04-24', 'assets/images/profile_pics/defaults/head_deep_blue.png', 0, 0, 'no', ',');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `friend_requests`
--
ALTER TABLE `friend_requests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `likes`
--
ALTER TABLE `likes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `friend_requests`
--
ALTER TABLE `friend_requests`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `likes`
--
ALTER TABLE `likes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=94;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
