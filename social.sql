-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 02, 2017 at 11:10 AM
-- Server version: 10.1.26-MariaDB
-- PHP Version: 7.1.8

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
(3, 'Never mind\r\n', 'archit_shetye', 'saipavan_nunna', '2017-10-17 10:08:43', 'no', 10),
(4, 'hi there', 'archit_shetye', 'saipavan_nunna', '2017-10-17 10:10:34', 'no', 10),
(5, 'hiii\r\n', 'archit_shetye', 'saipavan_nunna', '2017-10-17 11:44:35', 'no', 10),
(6, 'get home\r\n', 'saipavan_nunna', 'saipavan_nunna', '2017-10-26 18:58:10', 'no', 9),
(7, 'hhii mark', 'saipavan_nunna', 'mark_zuker', '2017-10-27 13:34:32', 'no', 16),
(8, 'hiii', 'archit_shetye', 'saipavan_nunna', '2017-10-31 00:23:37', 'no', 14),
(9, 'hi', 'archit_shetye', 'saipavan_nunna', '2017-10-31 00:30:08', 'no', 15);

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
(2, 'gnana_sivasai', 'archit_shetye');

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
(13, 'archit_shetye', 10),
(15, 'archit_shetye', 9),
(16, 'saipavan_nunna', 14),
(17, 'saipavan_nunna', 10),
(21, 'saipavan_nunna', 15),
(22, 'saipavan_nunna', 16),
(23, 'archit_shetye', 14),
(24, 'saipavan_nunna', 18),
(27, 'anand_babu', 18),
(28, 'anand_babu', 15);

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
(1, 'archit_shetye', 'saipavan_nunna', 'Hi  Archit', '2017-10-29 18:54:06', 'yes', 'yes', 'no'),
(2, 'archit_shetye', 'saipavan_nunna', 'What are you doing?\r\n', '2017-10-29 18:57:10', 'yes', 'yes', 'no'),
(3, 'saipavan_nunna', 'saipavan_nunna', 'DDAFDS', '2017-10-29 19:26:01', 'yes', 'yes', 'no'),
(4, 'saipavan_nunna', 'archit_shetye', 'I am fine\r\n', '2017-10-29 19:51:33', 'yes', 'yes', 'no'),
(5, 'shubham_saraff', 'archit_shetye', 'Hii', '2017-10-29 19:52:21', 'yes', 'yes', 'no'),
(6, 'shubham_saraff', 'archit_shetye', 'Hii', '2017-10-29 19:53:18', 'yes', 'yes', 'no'),
(7, 'anand_babu', 'archit_shetye', 'Hi\r\n', '2017-10-29 19:53:42', 'no', 'yes', 'no'),
(8, 'anand_babu', 'archit_shetye', 'Hi\r\n', '2017-10-29 19:58:00', 'no', 'yes', 'no'),
(9, 'saipavan_nunna', 'archit_shetye', 'what about you??\r\n', '2017-10-29 22:05:55', 'yes', 'yes', 'no'),
(10, 'archit_shetye', 'saipavan_nunna', 'Hi \r\n', '2017-10-30 23:26:33', 'yes', 'yes', 'no'),
(11, 'archit_shetye', 'saipavan_nunna', 'Where are you??', '2017-10-30 23:26:41', 'yes', 'yes', 'no'),
(12, 'archit_shetye', 'saipavan_nunna', 'Come home\r\n', '2017-10-30 23:26:51', 'yes', 'yes', 'no'),
(13, 'saipavan_nunna', 'saipavan_nunna', 'heyy', '2017-10-30 23:44:17', 'yes', 'yes', 'no'),
(14, 'archit_shetye', 'saipavan_nunna', 'go home', '2017-10-30 23:50:27', 'no', 'no', 'no'),
(15, 'shubham_saraff', 'shubham_saraff', 'Hi', '2017-10-31 22:03:51', 'yes', 'no', 'no'),
(16, 'anand_babu', 'saipavan_nunna', 'Hiii', '2017-11-01 01:08:35', 'yes', 'yes', 'no');

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
(1, 'saipavan_nunna', 'archit_shetye', 'Archit Shetye liked your post', 'post.php?id=14', '2017-10-26 23:49:12', 'yes', 'yes'),
(2, '', 'archit_shetye', 'Archit Shetye liked your post', 'post.php?id=14', '2017-10-31 00:23:26', 'no', 'no'),
(3, 'saipavan_nunna', 'archit_shetye', 'Archit Shetye commented on your post', 'post.php?id=14', '2017-10-31 00:23:37', 'yes', 'yes'),
(4, 'archit_shetye', 'archit_shetye', 'Archit Shetye commented on a post you commented on', 'post.php?id=14', '2017-10-31 00:23:37', 'no', 'no'),
(5, 'saipavan_nunna', 'archit_shetye', 'Archit Shetye commented on your post', 'post.php?id=15', '2017-10-31 00:30:08', 'yes', 'yes'),
(6, 'saipavan_nunna', 'anand_babu', 'Anand Babu liked your post', 'post.php?id=18', '2017-11-01 01:09:19', 'no', 'yes'),
(7, 'saipavan_nunna', 'anand_babu', 'Anand Babu liked your post', 'post.php?id=15', '2017-11-01 01:09:21', 'yes', 'yes'),
(8, 'saipavan_nunna', 'anand_babu', 'Anand Babu liked your post', 'post.php?id=18', '2017-11-01 01:11:37', 'no', 'yes'),
(9, 'saipavan_nunna', 'anand_babu', 'Anand Babu liked your post', 'post.php?id=15', '2017-11-01 01:11:39', 'yes', 'yes');

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
(9, 'Hi Friends!!! Welcome to VITalk', 'saipavan_nunna', 'none', '2017-10-16 11:57:04', 'no', 'no', 1, ''),
(10, 'Hello', 'saipavan_nunna', 'none', '2017-10-16 11:58:28', 'no', 'no', 2, ''),
(11, 'Join my Website IndieBullHorn for the latest music reviews \r\n', 'archit_shetye', 'none', '2017-10-20 11:03:57', 'no', 'no', 0, ''),
(12, 'Hello', 'archit_shetye', 'none', '2017-10-24 12:19:56', 'no', 'no', 0, ''),
(13, 'Hiii\r\n', 'archit_shetye', 'saipavan_nunna', '2017-10-24 12:25:54', 'no', 'yes', 0, ''),
(14, 'Hi Shubham', 'saipavan_nunna', 'none', '2017-10-26 23:40:04', 'no', 'no', 2, ''),
(15, 'Hi Archit', 'saipavan_nunna', 'none', '2017-10-26 23:48:08', 'no', 'no', 2, ''),
(16, 'Hi! I am the founder of facebook. But I like VITalk more.<br /> HIRE ME.', 'mark_zuker', 'none', '2017-10-27 12:10:08', 'no', 'no', 1, ''),
(17, 'Hello World. <br /> IWP Project.', 'shubham_saraff', 'none', '2017-10-27 13:31:29', 'no', 'no', 0, ''),
(18, 'Hiii', 'saipavan_nunna', 'none', '2017-10-31 13:44:44', 'no', 'no', 2, '');

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
('Cricket', 1),
('Match', 1),
('IndVsPak', 1),
('Hi', 1),
('Founder', 1),
('Facebook', 1),
('VITalk', 1),
('Morebr', 1),
('HIRE', 1),
('Hello', 1),
('World', 1),
('Br', 1),
('IWP', 1),
('Project', 1),
('Hiii', 1);

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
  `friends_array` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `username`, `email`, `password`, `signup_date`, `profile_pic`, `num_posts`, `num_likes`, `user_closed`, `friends_array`) VALUES
(6, 'Anand', 'Babu', 'anand_babu', 'Anandbabul@gmail.com', '819b0643d6b89dc9b579fdfc9094f28e', '2017-10-16', 'assets/images/profile_pics/defaults/head_emerald.png', 0, 0, 'no', ',anand_babu,'),
(8, 'Mark', 'Zuker', 'mark_zuker', 'Mark@facebook.com', '6eea9b7ef19179a06954edd0f6c05ceb', '2017-10-27', 'assets/images/profile_pics/defaults/head_emerald.png', 1, 1, 'no', ','),
(9, 'Shubham', 'Saraff', 'shubham_saraff', 'Saraffshubham@gmail.com', '5f4dcc3b5aa765d61d8327deb882cf99', '2017-10-27', 'assets/images/profile_pics/defaults/head_emerald.png', 1, 0, 'no', ','),
(10, 'Nunna', 'Sai Pavan', 'saipavan_nunna', 'Saipavan9999@yahoo.com', '5f4dcc3b5aa765d61d8327deb882cf99', '2017-10-31', 'assets/images/profile_pics/defaults/head_emerald.png', 5, 6, 'no', ',anand_babu,'),
(11, 'Archit', 'Shetye', 'archit_shetye', 'Architshetye.uday2015@vit.ac.in', '5f4dcc3b5aa765d61d8327deb882cf99', '2017-10-31', 'assets/images/profile_pics/defaults/head_emerald.png', 2, 0, 'no', ','),
(12, 'Gnana', 'Sivasai', 'gnana_sivasai', 'Gnana097@gmail.com', '5f4dcc3b5aa765d61d8327deb882cf99', '2017-10-31', 'assets/images/profile_pics/defaults/head_deep_blue.png', 0, 0, 'no', ',');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `friend_requests`
--
ALTER TABLE `friend_requests`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `likes`
--
ALTER TABLE `likes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
