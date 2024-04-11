-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 04, 2023 at 11:13 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `filemanagement_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_login`
--

CREATE TABLE `admin_login` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `admin_user` text NOT NULL,
  `admin_password` text NOT NULL,
  `admin_status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin_login`
--

INSERT INTO `admin_login` (`id`, `name`, `admin_user`, `admin_password`, `admin_status`) VALUES
(13, 'AlphaCodeCamp', 'admin@mail.com', '$2y$12$yjn.g4FtUoXrOqqNMka/Mu/4tq7Brp7Q.aAILGCrjpw.iHKas/uC.', '');

-- --------------------------------------------------------

--
-- Table structure for table `history_log`
--

CREATE TABLE `history_log` (
  `log_id` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  `email_address` text NOT NULL,
  `action` varchar(100) NOT NULL,
  `actions` varchar(200) NOT NULL DEFAULT 'Has LoggedOut the system at',
  `ip` text NOT NULL,
  `host` text NOT NULL,
  `login_time` varchar(200) NOT NULL,
  `logout_time` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `history_log`
--

INSERT INTO `history_log` (`log_id`, `id`, `email_address`, `action`, `actions`, `ip`, `host`, `login_time`, `logout_time`) VALUES
(0, 2, 'victor@mail.com', 'Has LoggedIn the system at', 'Has LoggedOut the system at', '127.0.0.1', 'support.wondershare.net', 'Jul-03-2023 07:16 PM', 'Jul-04-2023 05:02 PM'),
(0, 2, 'victor@mail.com', 'Has LoggedIn the system at', 'Has LoggedOut the system at', '127.0.0.1', 'support.wondershare.net', 'Jul-04-2023 03:57 AM', 'Jul-04-2023 05:02 PM'),
(0, 2, 'victor@mail.com', 'Has LoggedIn the system at', 'Has LoggedOut the system at', '127.0.0.1', 'support.wondershare.net', 'Jul-04-2023 03:58 AM', 'Jul-04-2023 05:02 PM'),
(0, 2, 'victor@mail.com', 'Has LoggedIn the system at', 'Has LoggedOut the system at', '127.0.0.1', 'support.wondershare.net', 'Jul-04-2023 04:00 AM', 'Jul-04-2023 05:02 PM'),
(0, 2, 'victor@mail.com', 'Has LoggedIn the system at', 'Has LoggedOut the system at', '127.0.0.1', 'support.wondershare.net', 'Jul-04-2023 05:02 PM', 'Jul-04-2023 05:02 PM'),
(0, 2, 'victor@mail.com', 'Has LoggedIn the system at', 'Has LoggedOut the system at', '127.0.0.1', 'support.wondershare.net', 'Jul-04-2023 05:03 PM', '');

-- --------------------------------------------------------

--
-- Table structure for table `history_log1`
--

CREATE TABLE `history_log1` (
  `log_id` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  `admin_user` text NOT NULL,
  `action` varchar(100) NOT NULL,
  `actions` varchar(200) NOT NULL DEFAULT 'Has LoggedOut the system at',
  `ip` text NOT NULL,
  `host` text NOT NULL,
  `login_time` varchar(200) NOT NULL,
  `logout_time` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `history_log1`
--

INSERT INTO `history_log1` (`log_id`, `id`, `admin_user`, `action`, `actions`, `ip`, `host`, `login_time`, `logout_time`) VALUES
(0, 13, 'admin@mail.com', 'Has LoggedIn the system at', 'Has LoggedOut the system at', '127.0.0.1', 'support.wondershare.net', 'Jul-03-2023 07:12 PM', 'Jul-04-2023 05:01 PM'),
(0, 13, 'admin@mail.com', 'Has LoggedIn the system at', 'Has LoggedOut the system at', '127.0.0.1', 'support.wondershare.net', 'Jul-04-2023 04:04 AM', 'Jul-04-2023 05:01 PM'),
(0, 13, 'admin@mail.com', 'Has LoggedIn the system at', 'Has LoggedOut the system at', '127.0.0.1', 'support.wondershare.net', 'Jul-04-2023 03:25 PM', 'Jul-04-2023 05:01 PM'),
(0, 13, 'admin@mail.com', 'Has LoggedIn the system at', 'Has LoggedOut the system at', '127.0.0.1', 'support.wondershare.net', 'Jul-04-2023 04:13 PM', 'Jul-04-2023 05:01 PM'),
(0, 13, 'admin@mail.com', 'Has LoggedIn the system at', 'Has LoggedOut the system at', '127.0.0.1', 'support.wondershare.net', 'Jul-04-2023 05:09 PM', '');

-- --------------------------------------------------------

--
-- Table structure for table `login_user`
--

CREATE TABLE `login_user` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `email_address` text NOT NULL,
  `user_password` text NOT NULL,
  `user_status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login_user`
--

INSERT INTO `login_user` (`id`, `name`, `email_address`, `user_password`, `user_status`) VALUES
(2, 'victor', 'victor@mail.com', '$2y$12$fqxYESQr2aFY9omc4oK9nO5z1M0naNdNgxqkNujOKptUynADr1Ssm', '');

-- --------------------------------------------------------

--
-- Table structure for table `upload_files`
--

CREATE TABLE `upload_files` (
  `ID` int(11) NOT NULL,
  `NAME` varchar(200) NOT NULL,
  `SIZE` varchar(200) NOT NULL,
  `DOWNLOAD` varchar(200) NOT NULL,
  `TIMERS` varchar(200) NOT NULL,
  `ADMIN_STATUS` varchar(300) NOT NULL,
  `EMAIL` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `upload_files`
--

INSERT INTO `upload_files` (`ID`, `NAME`, `SIZE`, `DOWNLOAD`, `TIMERS`, `ADMIN_STATUS`, `EMAIL`) VALUES
(1, 'ajax_tutorial.pdf', '618379', '0', 'May-29-2019 02:36 PM', 'Employee', 'Email Luis Nario'),
(2, 'css_tutorial.pdf', '910221', '0', 'May-29-2019 02:36 PM', 'Employee', 'Email Luis Nario'),
(4, 'das.pdf', '0', '0', 'Jul-04-2023 03:26 PM', 'Admin', 'AlphaCodeCamp');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_login`
--
ALTER TABLE `admin_login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login_user`
--
ALTER TABLE `login_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `upload_files`
--
ALTER TABLE `upload_files`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_login`
--
ALTER TABLE `admin_login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `login_user`
--
ALTER TABLE `login_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `upload_files`
--
ALTER TABLE `upload_files`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
