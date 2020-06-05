-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- 생성 시간: 20-05-14 11:07
-- 서버 버전: 10.3.15-MariaDB
-- PHP 버전: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 데이터베이스: `lshpf`
--

-- --------------------------------------------------------

--
-- 테이블 구조 `contact`
--

CREATE TABLE `contact` (
  `num` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `subject` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `contents` tinytext NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 테이블의 덤프 데이터 `contact`
--

INSERT INTO `contact` (`num`, `name`, `subject`, `email`, `contents`, `date`) VALUES
(2, 'sadasd', 'sadasd', 'asdas@sdaas', 'sdada', '0000-00-00 00:00:00'),
(3, 'ㄴㅁㅇㅁㄴㅇ', 'ㄴㅁㅇㅁㄴㅇ', 'asdas@sdaas', 'ㄴㅁㅇㅁㅇㄴㅁㅇㄴㅁㅇㅁㅇㄴㅁㅇㄴㅁㅇㅁㅇㄴㅁㅇㄴㅁㅇㅁㅇㄴㅁㅇㄴㅁㅇㅁㅇㄴㅁㅇㄴㅁㅇㅁㅇㄴㅁㅇㄴㅁㅇㅁㅇㄴㅁㅇㄴㅁㅇㅁㅇㄴㅁㅇㄴㅁㅇㅁㅇㄴㅁㅇㄴㅁㅇㅁㅇㄴㅁㅇㄴㅁㅇㅁㅇ', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- 테이블 구조 `project`
--

CREATE TABLE `project` (
  `num` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `url` varchar(200) NOT NULL,
  `date` varchar(50) NOT NULL,
  `upload` varchar(200) NOT NULL,
  `contents` text NOT NULL,
  `state` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 테이블의 덤프 데이터 `project`
--

INSERT INTO `project` (`num`, `title`, `url`, `date`, `upload`, `contents`, `state`) VALUES
(23, '', '', '', '/admin/upload/thum/p01.jpg', 'ㅁㄴㅇ', 'on'),
(24, '', '', '', '/admin/upload/thum/p01.jpg', 'ㅁㄴㅇ', 'on'),
(25, '', '', '', '/admin/upload/thum/p01.jpg', 'ㅁㄴㅇ', 'on'),
(26, '', '', '', '/admin/upload/thum/p01.jpg', 'ㅁㄴㅇ', 'on'),
(27, '', '', '', '/admin/upload/thum/p01.jpg', 'ㅁㄴㅇ', 'on'),
(28, '', '', '', '/admin/upload/thum/p01.jpg', 'ㅁㄴㅇ', 'on'),
(29, '', '', '', '/admin/upload/thum/p01.jpg', 'ㅁㄴㅇ', 'on'),
(30, '', '', '', '/admin/upload/thum/p01.jpg', 'ㅁㄴㅇ', 'on'),
(31, '', '', '', '/admin/upload/thum/p01.jpg', 'ㅁㄴㅇ', 'on'),
(32, '', '', '', '/admin/upload/thum/p01.jpg', 'ㅁㄴㅇ', 'on'),
(33, '', '', '', '/admin/upload/thum/p01.jpg', 'ㅁㄴㅇ', 'on'),
(34, '', '', '', '/admin/upload/thum/p01.jpg', 'ㅁㄴㅇ', 'on'),
(35, '', '', '', '/admin/upload/thum/p01.jpg', 'ㅁㄴㅇ', 'on'),
(36, '', '', '', '/admin/upload/thum/p01.jpg', 'ㅁㄴㅇ', 'on'),
(37, '', '', '', '/admin/upload/thum/p01.jpg', 'ㅁㄴㅇ', 'on'),
(38, '', '', '', '/admin/upload/thum/p01.jpg', 'ㅁㄴㅇ', 'on'),
(39, '', '', '', '/admin/upload/thum/p01.jpg', 'ㅁㄴㅇ', 'on'),
(40, '', '', '', '/admin/upload/thum/p01.jpg', 'ㅁㄴㅇ', 'on'),
(41, '', '', '', '/admin/upload/thum/p01.jpg', 'ㅁㄴㅇ', 'on'),
(42, '', '', '', '/admin/upload/thum/p01.jpg', 'ㅁㄴㅇ', 'on'),
(43, '', '', '', '/admin/upload/thum/p01.jpg', 'ㅁㄴㅇ', 'on'),
(44, '', '', '', '/admin/upload/thum/p01.jpg', 'ㅁㄴㅇ', 'on'),
(45, '', '', '', '/admin/upload/thum/p01.jpg', 'ㅁㄴㅇ', 'on'),
(46, '', '', '', '/admin/upload/thum/p01.jpg', 'ㅁㄴㅇ', 'on'),
(47, '', '', '', '/admin/upload/thum/p01.jpg', 'ㅁㄴㅇ', 'on'),
(48, '', '', '', '/admin/upload/thum/p01.jpg', 'ㅁㄴㅇ', 'on'),
(49, '', '', '', '/admin/upload/thum/p01.jpg', 'ㅁㄴㅇ', 'on');

--
-- 덤프된 테이블의 인덱스
--

--
-- 테이블의 인덱스 `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`num`);

--
-- 테이블의 인덱스 `project`
--
ALTER TABLE `project`
  ADD PRIMARY KEY (`num`);

--
-- 덤프된 테이블의 AUTO_INCREMENT
--

--
-- 테이블의 AUTO_INCREMENT `contact`
--
ALTER TABLE `contact`
  MODIFY `num` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- 테이블의 AUTO_INCREMENT `project`
--
ALTER TABLE `project`
  MODIFY `num` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
