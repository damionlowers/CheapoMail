-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 18, 2015 at 06:55 PM
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
-- Table structure for table `messages`
--

CREATE TABLE IF NOT EXISTS `messages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `message_body` longtext NOT NULL,
  `subject` varchar(50) NOT NULL,
  `user_id` int(11) NOT NULL,
  `flag` int(11) NOT NULL DEFAULT '0',
  `recipent_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `recipent_id` (`recipent_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=830 ;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `message_body`, `subject`, `user_id`, `flag`, `recipent_id`, `created_at`, `updated_at`) VALUES
(1, 'In congue. Etiam justo.', 'non', 11, 0, 7, '2015-12-09 04:09:10', '2015-12-07 14:48:29'),
(2, 'Sed sagittis.', 'ut', 12, 0, 9, '2015-10-20 09:50:27', '2015-02-24 13:12:41'),
(3, 'Donec ut mauris eget massa tempor convallis.', 'phasellus in', 8, 0, 13, '2015-10-26 19:15:20', '2015-09-08 03:37:48'),
(4, 'Mauris ullamcorper purus sit amet nulla.', 'faucibus accumsan', 9, 0, 13, '2015-12-16 17:47:48', '2015-08-11 08:27:27'),
(5, 'Proin eu mi.', 'cras non velit', 4, 0, 10, '2015-04-16 11:32:47', '2015-11-23 21:29:28'),
(6, 'Aliquam erat volutpat. In congue.', 'primis in', 7, 0, 9, '2015-08-01 06:44:29', '2015-04-08 06:29:36'),
(7, 'Donec ut dolor.', 'justo lacinia eget', 10, 0, 8, '2015-08-01 11:53:34', '2015-05-19 12:18:34'),
(8, 'In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.', 'elit sodales scelerisque', 9, 0, 4, '2015-10-11 19:17:20', '2015-03-26 11:18:18'),
(9, 'Suspendisse accumsan tortor quis turpis.', 'praesent blandit nam', 5, 0, 7, '2015-10-26 01:14:44', '2015-04-07 01:54:58'),
(10, 'Suspendisse potenti. Nullam porttitor lacus at turpis.', 'non', 2, 0, 7, '2015-08-27 18:33:23', '2015-09-26 08:10:59'),
(11, 'Nunc nisl. Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa.', 'vel augue', 1, 0, 6, '2015-05-11 10:28:56', '2015-05-08 15:48:47'),
(12, 'Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.', 'nisl', 6, 0, 13, '2015-10-26 14:42:22', '2015-06-22 02:04:00'),
(13, 'Donec quis orci eget orci vehicula condimentum. Curabitur in libero ut massa volutpat convallis.', 'turpis elementum ligula', 12, 0, 4, '2015-07-21 13:20:44', '2015-11-22 18:43:05'),
(14, 'Sed accumsan felis. Ut at dolor quis odio consequat varius.', 'luctus nec', 5, 0, 4, '2015-10-12 02:31:43', '2015-05-11 19:01:04'),
(15, 'Nulla ut erat id mauris vulputate elementum. Nullam varius.', 'pretium', 1, 0, 10, '2015-11-10 05:45:59', '2015-07-09 12:42:57'),
(16, 'Proin at turpis a pede posuere nonummy.', 'porttitor', 10, 0, 9, '2015-08-02 11:17:49', '2015-12-07 20:11:07'),
(17, 'Quisque ut erat.', 'felis ut at', 8, 0, 5, '2015-12-06 21:58:32', '2015-08-23 06:38:40'),
(18, 'Nullam varius. Nulla facilisi.', 'cubilia curae', 7, 0, 13, '2015-03-08 11:07:32', '2015-05-05 00:18:54'),
(19, 'Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui.', 'tincidunt', 4, 0, 13, '2015-04-05 17:58:47', '2015-11-04 06:48:12'),
(20, 'Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.', 'in', 8, 0, 12, '2015-07-20 17:31:47', '2015-03-22 18:19:19'),
(21, 'Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui.', 'duis consequat dui', 3, 0, 6, '2015-05-07 09:13:04', '2015-06-21 23:37:19'),
(22, 'Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus.', 'sapien a', 12, 0, 13, '2015-05-31 06:07:20', '2015-03-08 20:40:03'),
(23, 'Maecenas tincidunt lacus at velit.', 'non pretium', 8, 0, 1, '2015-10-03 11:18:11', '2015-03-21 19:58:46'),
(24, 'Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam.', 'hendrerit at', 4, 0, 13, '2015-07-15 19:37:55', '2015-07-31 04:50:40'),
(25, 'Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo.', 'interdum venenatis', 4, 0, 10, '2015-04-24 23:44:59', '2015-10-21 21:09:30'),
(26, 'Aliquam erat volutpat.', 'tempus', 1, 0, 13, '2015-09-26 13:49:21', '2015-09-27 16:28:58'),
(27, 'Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet.', 'justo', 6, 0, 1, '2015-03-08 15:41:57', '2015-12-04 17:17:04'),
(28, 'Nullam varius. Nulla facilisi.', 'sit', 4, 0, 2, '2015-06-15 21:08:54', '2015-02-24 13:05:59'),
(29, 'Nullam varius. Nulla facilisi.', 'natoque penatibus et', 5, 0, 13, '2015-12-17 05:46:27', '2015-08-30 19:35:56'),
(30, 'Praesent lectus.', 'et eros vestibulum', 7, 0, 5, '2015-03-07 21:26:48', '2015-11-25 02:24:14'),
(31, 'Phasellus sit amet erat. Nulla tempus.', 'sit amet', 4, 0, 3, '2015-06-04 09:09:06', '2015-08-03 21:43:06'),
(32, 'Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est.', 'phasellus', 3, 0, 1, '2015-10-27 23:33:34', '2015-12-10 17:09:31'),
(33, 'Aenean lectus.', 'at', 7, 0, 5, '2015-06-02 23:28:21', '2015-06-20 07:10:16'),
(34, 'Nulla justo.', 'pretium', 4, 0, 9, '2015-03-04 08:14:31', '2015-08-23 22:25:44'),
(35, 'Fusce consequat. Nulla nisl.', 'lorem', 1, 0, 4, '2015-03-13 20:04:19', '2015-05-01 08:34:11'),
(36, 'Nulla facilisi. Cras non velit nec nisi vulputate nonummy.', 'turpis enim blandit', 3, 0, 3, '2015-07-08 22:40:26', '2015-12-11 22:56:01'),
(37, 'Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci.', 'orci eget', 5, 0, 13, '2015-06-24 04:40:37', '2015-08-17 18:06:24'),
(38, 'Morbi a ipsum.', 'eget', 3, 0, 1, '2015-05-17 08:20:00', '2015-02-21 13:45:24'),
(39, 'Sed accumsan felis.', 'sed', 1, 0, 9, '2015-12-07 18:17:25', '2015-07-30 10:17:54'),
(40, 'Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio. Curabitur convallis.', 'aliquam', 9, 0, 4, '2015-05-02 00:22:24', '2015-12-01 03:52:01'),
(41, 'Mauris ullamcorper purus sit amet nulla. Quisque arcu libero, rutrum ac, lobortis vel, dapibus at, diam.', 'vestibulum', 8, 0, 12, '2015-06-06 20:42:35', '2015-11-23 02:12:01'),
(42, 'Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit.', 'eu', 2, 0, 2, '2015-10-12 11:41:46', '2015-09-10 01:19:41'),
(43, 'Morbi vel lectus in quam fringilla rhoncus. Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis.', 'rhoncus mauris', 11, 0, 11, '2015-04-26 18:24:21', '2015-11-07 08:46:49'),
(44, 'Phasellus id sapien in sapien iaculis congue.', 'ultrices', 8, 0, 11, '2015-12-06 11:52:36', '2015-07-03 10:04:30'),
(45, 'In eleifend quam a odio. In hac habitasse platea dictumst.', 'aliquam augue', 8, 0, 4, '2015-08-30 05:43:18', '2015-06-10 05:16:49'),
(46, 'Duis mattis egestas metus.', 'pellentesque quisque', 10, 0, 13, '2015-07-15 02:32:27', '2015-12-09 10:46:30'),
(47, 'In hac habitasse platea dictumst.', 'faucibus', 13, 0, 6, '2015-06-03 12:46:07', '2015-10-04 07:10:48'),
(48, 'Vestibulum sed magna at nunc commodo placerat.', 'ut', 1, 0, 3, '2015-07-14 00:14:47', '2015-11-17 02:35:08'),
(49, 'Curabitur convallis. Duis consequat dui nec nisi volutpat eleifend.', 'eu', 1, 0, 1, '2015-06-14 23:52:11', '2015-08-31 01:41:06'),
(50, 'In blandit ultrices enim.', 'posuere felis sed', 5, 0, 2, '2015-07-18 18:29:16', '2015-11-14 09:24:17'),
(51, 'Proin eu mi.', 'id', 6, 0, 8, '2015-09-21 22:51:00', '2015-08-17 04:47:42'),
(52, 'Proin risus. Praesent lectus.', 'in', 12, 0, 8, '2015-11-30 13:16:14', '2015-09-30 21:03:34'),
(53, 'Nullam molestie nibh in lectus. Pellentesque at nulla.', 'nunc', 12, 0, 7, '2015-08-02 14:09:34', '2015-05-15 08:32:13'),
(54, 'Morbi non lectus.', 'tortor', 5, 0, 5, '2015-08-18 04:26:37', '2015-09-28 12:50:11'),
(55, 'Integer ac neque. Duis bibendum.', 'platea dictumst', 3, 0, 10, '2015-08-10 10:17:09', '2015-11-13 11:16:34'),
(56, 'Nulla tellus. In sagittis dui vel nisl.', 'fusce lacus', 12, 0, 4, '2015-06-21 21:24:49', '2015-04-28 02:28:15'),
(57, 'Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla.', 'in', 13, 0, 11, '2015-06-07 06:00:15', '2015-05-04 08:40:39'),
(58, 'Aenean auctor gravida sem. Praesent id massa id nisl venenatis lacinia.', 'aliquet maecenas', 7, 0, 7, '2015-07-23 18:54:34', '2015-10-09 07:34:46'),
(59, 'In eleifend quam a odio.', 'a pede posuere', 4, 0, 13, '2015-09-25 13:42:45', '2015-03-01 22:02:07'),
(60, 'Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue.', 'tortor', 12, 0, 3, '2015-08-05 23:58:44', '2015-10-25 13:56:31'),
(61, 'Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam.', 'nam tristique', 8, 0, 8, '2015-03-17 06:30:37', '2015-06-19 06:04:52'),
(62, 'Nunc purus.', 'venenatis', 5, 0, 13, '2015-03-10 12:19:47', '2015-05-30 12:45:01'),
(63, 'Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat.', 'nisl duis bibendum', 3, 0, 8, '2015-08-19 08:50:19', '2015-03-06 10:21:22'),
(64, 'Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem.', 'convallis duis consequat', 3, 0, 1, '2015-12-13 17:38:08', '2015-03-23 17:34:17'),
(65, 'Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.', 'ut suscipit a', 4, 0, 13, '2015-03-11 16:58:40', '2015-10-31 09:13:02'),
(66, 'Nulla mollis molestie lorem.', 'odio porttitor id', 6, 0, 3, '2015-10-14 05:48:03', '2015-03-20 02:22:02'),
(67, 'Etiam vel augue. Vestibulum rutrum rutrum neque.', 'metus sapien ut', 13, 0, 3, '2015-02-27 15:01:01', '2015-08-25 19:17:19'),
(68, 'Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.', 'dapibus dolor', 11, 0, 7, '2015-04-30 00:05:38', '2015-03-25 04:17:14'),
(69, 'Nulla ut erat id mauris vulputate elementum.', 'pede ullamcorper', 12, 0, 1, '2015-12-07 19:10:28', '2015-10-17 07:52:59'),
(70, 'Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit.', 'id', 2, 0, 10, '2015-08-01 05:39:10', '2015-09-26 08:12:10'),
(71, 'Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.', 'sollicitudin ut', 3, 0, 5, '2015-12-13 01:06:10', '2015-03-24 07:43:46'),
(72, 'In eleifend quam a odio. In hac habitasse platea dictumst.', 'massa quis augue', 7, 0, 12, '2015-08-20 04:08:45', '2015-12-13 16:15:36'),
(73, 'In hac habitasse platea dictumst.', 'semper', 11, 0, 13, '2015-09-10 16:34:22', '2015-06-06 16:20:52'),
(74, 'Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante.', 'parturient montes nascetur', 8, 0, 8, '2015-07-07 19:34:50', '2015-10-10 21:55:39'),
(75, 'Morbi porttitor lorem id ligula.', 'convallis', 8, 0, 13, '2015-05-02 04:15:53', '2015-10-15 21:30:06'),
(76, 'Quisque arcu libero, rutrum ac, lobortis vel, dapibus at, diam. Nam tristique tortor eu pede.', 'est lacinia', 9, 0, 13, '2015-06-01 01:34:31', '2015-07-04 19:35:43'),
(77, 'Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci.', 'ut', 4, 0, 7, '2015-08-28 14:33:36', '2015-05-16 02:49:56'),
(78, 'Proin at turpis a pede posuere nonummy.', 'cras pellentesque volutpat', 13, 0, 4, '2015-06-18 07:05:35', '2015-06-20 02:57:39'),
(79, 'Praesent lectus.', 'cras mi pede', 6, 0, 8, '2015-06-07 14:02:32', '2015-09-26 20:23:13'),
(80, 'Sed ante.', 'eu', 6, 0, 4, '2015-05-05 11:27:20', '2015-09-16 16:10:20'),
(81, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit.', 'in blandit', 1, 0, 11, '2015-07-01 02:58:35', '2015-12-12 18:32:56'),
(82, 'Aliquam quis turpis eget elit sodales scelerisque.', 'eu', 11, 0, 12, '2015-03-19 20:13:35', '2015-06-27 18:52:57'),
(83, 'Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy.', 'nisi venenatis tristique', 11, 0, 8, '2015-07-16 09:47:07', '2015-04-24 11:13:21'),
(84, 'Quisque arcu libero, rutrum ac, lobortis vel, dapibus at, diam. Nam tristique tortor eu pede.', 'nunc nisl duis', 13, 0, 5, '2015-11-05 12:57:42', '2015-09-05 10:56:40'),
(85, 'Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros. Vestibulum ac est lacinia nisi venenatis tristique.', 'sapien', 4, 0, 5, '2015-11-21 22:07:02', '2015-11-23 15:12:20'),
(86, 'In hac habitasse platea dictumst. Maecenas ut massa quis augue luctus tincidunt.', 'suspendisse', 7, 0, 9, '2015-05-06 19:19:48', '2015-08-04 07:56:25'),
(87, 'Donec vitae nisi.', 'quis', 10, 0, 13, '2015-07-13 15:26:41', '2015-03-24 15:08:19'),
(88, 'Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.', 'quis lectus', 11, 0, 2, '2015-03-19 18:18:07', '2015-10-24 11:46:25'),
(89, 'Fusce consequat.', 'quam', 8, 0, 3, '2015-03-27 06:37:54', '2015-08-27 14:34:52'),
(90, 'Ut at dolor quis odio consequat varius.', 'sapien urna', 4, 0, 1, '2015-03-31 18:22:11', '2015-03-06 19:29:37'),
(91, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit.', 'est', 4, 0, 1, '2015-08-02 13:31:32', '2015-05-16 06:00:54'),
(92, 'Duis consequat dui nec nisi volutpat eleifend.', 'ut', 10, 0, 1, '2015-06-09 21:51:21', '2015-09-20 15:12:05'),
(93, 'Nam nulla.', 'semper sapien a', 12, 0, 11, '2015-04-08 23:26:19', '2015-06-21 09:04:18'),
(94, 'Quisque arcu libero, rutrum ac, lobortis vel, dapibus at, diam.', 'lacinia erat', 10, 0, 8, '2015-12-01 12:22:46', '2015-04-01 19:33:27'),
(95, 'Sed vel enim sit amet nunc viverra dapibus.', 'luctus nec', 13, 0, 7, '2015-12-09 21:13:54', '2015-11-30 10:34:59'),
(96, 'Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit.', 'ut tellus nulla', 8, 0, 2, '2015-04-09 02:21:43', '2015-09-11 22:27:13'),
(97, 'In est risus, auctor sed, tristique in, tempus sit amet, sem.', 'condimentum', 7, 0, 3, '2015-08-02 04:02:55', '2015-04-13 16:45:01'),
(98, 'Praesent blandit. Nam nulla.', 'in ante vestibulum', 1, 0, 1, '2015-08-17 10:24:17', '2015-07-20 22:50:35'),
(99, 'Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero.', 'blandit mi', 6, 0, 8, '2015-08-24 03:27:11', '2015-06-29 13:34:58'),
(100, 'In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.', 'at nibh in', 3, 0, 1, '2015-09-27 08:24:51', '2015-09-01 16:47:46');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `messages`
--
ALTER TABLE `messages`
  ADD CONSTRAINT `messages_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `messages_ibfk_2` FOREIGN KEY (`recipent_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
