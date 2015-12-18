-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 18, 2015 at 06:57 PM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `cheapermail`
--

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `password` varchar(60) NOT NULL,
  `username` varchar(30) NOT NULL,
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL,
  `type` varchar(30) NOT NULL DEFAULT 'Regular',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=14 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `password`, `username`, `created_at`, `updated_at`, `type`) VALUES
(1, 'Leo', 'Grant', 'leo1993', 'leo', '2015-12-16 21:12:05', '2015-12-16 21:12:05', 'Admin'),
(2, 'Damion', 'Lowers', 'd', 'dam', '2015-12-17 16:47:29', '2015-12-17 16:47:29', 'Regular'),
(3, 'Bob', 'Smith', 'b', 'bob', '2015-12-17 16:47:29', '2015-12-17 16:47:29', 'Regular'),
(4, 'Joshua', 'Davis', 'sea94', 'jdavis3', '2015-02-13 20:38:53', '2015-04-04 09:15:44', 'Regular'),
(5, 'Gary', 'Mills', 'gas52', 'gmills4', '2014-12-24 09:05:07', '2015-06-07 21:21:02', 'Admin'),
(6, 'Adam', 'Allen', 'via02', 'aallen5', '2014-12-22 00:01:01', '2015-04-17 05:08:33', 'Regular'),
(7, 'Ronald', 'Morris', 'arc21', 'rmorris6', '2015-02-11 00:54:09', '2015-05-31 23:52:48', 'Regular'),
(8, 'Jerry', 'Turner', 'jet39', 'jturner7', '2015-02-10 23:12:08', '2015-05-31 22:48:20', 'Admin'),
(9, 'Norma', 'Hunt', 'who17', 'nhunt8', '2014-12-30 18:34:24', '2015-10-11 15:11:38', 'Regular'),
(10, 'Donald', 'Robertson', 'wry85', 'drobertson9', '2015-02-16 07:26:48', '2015-07-25 03:15:11', 'Regular'),
(11, 'Craig', 'Kelly', 'act48', 'ckelly0', '2014-12-27 23:33:44', '2015-07-30 10:30:36', 'Regular'),
(12, 'Cynthia', 'Ramos', 'new11', 'cramos1', '2015-01-30 07:53:31', '2015-08-03 11:59:45', 'Regular'),
(13, 'Karen', 'Hayes', 'mop57', 'khayes2', '2015-01-02 14:30:10', '2015-10-16 18:07:20', 'Admin');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
