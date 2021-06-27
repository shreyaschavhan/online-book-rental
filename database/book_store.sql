-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 19, 2021 at 07:50 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `book_store`
--

-- --------------------------------------------------------

--
-- Table structure for table `book`
--

CREATE TABLE `book` (
  `b_id` int(4) NOT NULL,
  `b_own` varchar(50) NOT NULL,
  `b_nm` varchar(60) NOT NULL,
  `b_subcat` varchar(25) NOT NULL,
  `b_desc` longtext NOT NULL,
  `b_publisher` varchar(40) NOT NULL,
  `b_edition` varchar(20) NOT NULL,
  `b_isbn` varchar(50) NOT NULL,
  `b_page` int(5) NOT NULL,
  `b_price` int(5) NOT NULL,
  `b_rent` int(5) DEFAULT NULL,
  `b_img` longtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `book`
--

INSERT INTO `book` (`b_id`, `b_own`, `b_nm`, `b_subcat`, `b_desc`, `b_publisher`, `b_edition`, `b_isbn`, `b_page`, `b_price`, `b_rent`, `b_img`) VALUES
(1, '0', 'Discrete Mathematics', '7', 'Discrete Mathematics by Dr. Latha K. Iyer, Dr. Neeta D. Kankane', 'Nirali Prakashan', 'First Edition', '9789390225', 305, 200, 100, 'upload_image/DM.jpeg'),
(2, '0', 'Object Oriented Programming', '7', 'Object Oriented Programming by Mrs. Priti P. Jorvekar Kumbhar, Mrs. Shilpa N. Bhosale\r\n\r\n', 'Nirali Prakashan', 'First Edition', '9789390225262', 207, 153, 70, 'upload_image/oop.jpeg'),
(3, '0', 'Engineering Mathematics-III', '10', 'Engineering Mathematics-III by Dr. M. Y. Gokhale, Dr. N. S. Mujumdar, S. S. Kulkarni, A. N. Singh, K. R. Atal', 'Nirali Prakashan', 'First Edition', '	9789354510076', 545, 392, 150, 'upload_image/M3.jpeg'),
(4, '0', 'Principles Of Programming Languages', '10', 'Principles Of Programming Languages by Mrs. Priti P. Jorvekar - Kumbhar, Mrs. Shilpa N. Bhosale, Sachin P. Godse', 'Nirali Prakashan', 'First Edition', '9789354510298', 145, 114, 50, 'upload_image/ppl.jpeg'),
(5, '0', 'Basic Electrical Engineering', '3', 'This book is an exclusive material for Engineering Degree Subject. The book is written by eminent authors of TechKnowledge Publications with more than 20 years experience in the field of book writing.', 'Techknowledge Publications', 'First', '978-93-89424-60-7', 348, 285, 120, 'upload_image/BEE.jpg'),
(6, '0', 'Basic Electronics Engineering', '6', 'This book is an exclusive material for Engineering Degree Subject. The book is written by eminent authors of TechKnowledge Publications with more than 20 years experience in the field of book writing.', 'Techknowledge Publications', 'First', '978-93-89424-61-4', 320, 265, 100, 'upload_image/electronics.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `cat_id` int(4) NOT NULL,
  `cat_nm` varchar(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`cat_id`, `cat_nm`) VALUES
(2, 'FE- Information Technology'),
(3, 'FE- Electronics and Telecommun'),
(4, 'SE- Computer Engineering'),
(5, 'SE- Information Technology'),
(6, 'SE- Electronics and Telecommun'),
(7, 'TE- Computer engineering'),
(8, 'TE- Information Technology'),
(9, 'TE- Electronics and Telecommun'),
(10, 'BE- Computer Engineering'),
(11, 'BE- Information Technology'),
(12, 'BE- Electronics and Telecommun'),
(1, 'FE- Computer Engineering');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `con_id` int(4) NOT NULL,
  `con_nm` varchar(25) NOT NULL,
  `con_email` varchar(35) NOT NULL,
  `con_query` longtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`con_id`, `con_nm`, `con_email`, `con_query`) VALUES
(1, 'Hiren', 'hiru@gmail.com', 'English Novels...'),
(2, 'Shital', 'shital@yahoo.com', 'Are you send me medical books?'),
(3, 'Manali', 'manali@yahoo.com', 'Java Complete Reference is available?'),
(4, 'Rina', 'rina@gmail.com', 'Artificial Intelligence');

-- --------------------------------------------------------

--
-- Table structure for table `shipping_details`
--

CREATE TABLE `shipping_details` (
  `id` int(11) NOT NULL,
  `name` char(50) NOT NULL,
  `address` text NOT NULL,
  `postal_code` bigint(20) NOT NULL,
  `city` varchar(50) NOT NULL,
  `state` varchar(50) NOT NULL,
  `phone` bigint(20) NOT NULL,
  `f_id` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `shipping_details`
--

INSERT INTO `shipping_details` (`id`, `name`, `address`, `postal_code`, `city`, `state`, `phone`, `f_id`) VALUES
(1, 'sanjeev kumar', ' 141 delhi', 110009, 'delhi', 'delhi', 9015501897, 'sanjeev'),
(2, 'sanjeev kumar', ' 141 delhi', 110009, 'delhi', 'delhi', 9015501897, 'sanjeev'),
(3, 'sanjeev kumar', ' 141 delhi', 110009, 'delhi', 'delhi', 9015501897, ''),
(4, 'sanjeev kumar', ' 141 delhi', 110009, 'delhi', 'delhi', 9015501897, ''),
(5, 'Rutuja Jangle', ' 121 Pune', 411003, 'pune', 'maharashtra', 8605118354, '123456'),
(6, 'Rutuja Jangle', '121 Pune', 411003, 'pune', 'maharashtra', 8605118354, ''),
(7, 'Rutuja Jangle', '121 Pune', 411003, 'pune', 'maharashtra', 8605118354, ''),
(8, 'Rutuja Jangle', '121 Pune', 411003, 'pune', 'maharashtra', 8605118354, ''),
(9, 'Rutuja Jangle', '121 Pune', 411003, 'pune', 'maharashtra', 8605118354, '123456'),
(10, 'sonal shitole', ' 345 pune', 411004, 'pune', 'maharashtra', 8605118354, '12345'),
(11, 'shreyas chavan', ' 567 pune', 411005, 'pune', 'maharashtra', 123456788, '12345'),
(12, 'Rutuja Jangle', '121 Pune', 411003, 'pune', 'maharashtra', 8605118354, '123456');

-- --------------------------------------------------------

--
-- Table structure for table `subcat`
--

CREATE TABLE `subcat` (
  `subcat_id` int(4) NOT NULL,
  `parent_id` int(4) NOT NULL,
  `subcat_nm` varchar(35) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subcat`
--

INSERT INTO `subcat` (`subcat_id`, `parent_id`, `subcat_nm`) VALUES
(1, 1, 'Sem 1'),
(2, 2, 'Sem 1'),
(3, 3, 'Sem 1'),
(4, 1, 'Sem 2'),
(5, 2, 'Sem 2'),
(6, 3, 'Sem 2'),
(7, 4, 'Sem 3'),
(8, 5, 'Sem 3'),
(9, 6, 'Sem 3'),
(10, 4, 'Sem 4'),
(11, 5, 'Sem 4'),
(12, 6, 'Sem 4'),
(13, 7, 'Sem 5'),
(14, 8, 'Sem 5'),
(15, 9, 'Sem 5'),
(16, 7, 'Sem 6'),
(17, 8, 'Sem 6'),
(18, 9, 'Sem 6'),
(19, 10, 'Sem 7'),
(20, 11, 'Sem 7'),
(22, 12, 'Sem 7'),
(23, 10, 'Sem 8'),
(24, 11, 'Sem 8'),
(25, 12, 'Sem 8'),
(27, 19, 'Biology'),
(28, 19, 'Medical'),
(29, 17, 'O.S.'),
(33, 20, 'CAT'),
(31, 20, 'GMAT'),
(32, 20, 'MBA'),
(34, 20, 'BBA'),
(35, 21, 'test1');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `u_id` int(4) NOT NULL,
  `u_fnm` varchar(35) NOT NULL,
  `u_unm` varchar(25) NOT NULL,
  `u_pwd` varchar(20) NOT NULL,
  `u_gender` varchar(7) NOT NULL,
  `u_email` varchar(35) NOT NULL,
  `u_contact` varchar(12) NOT NULL,
  `u_city` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`u_id`, `u_fnm`, `u_unm`, `u_pwd`, `u_gender`, `u_email`, `u_contact`, `u_city`) VALUES
(1, 'Hiren Bhaliya', 'Hiren', 'hiru', 'Male', 'hiru@gmail.com', '9925136522', 'Rajkot'),
(2, 'Shital', 'shital', 'shital', 'Female', 'shital@yahoo.com', '9985689856', 'Rajkot'),
(3, 'Lina', 'Lina123', '123', 'Female', 'lina123@gmail.com', '9456325663', 'Amreli'),
(4, 'admin', 'admin', 'admin123', 'Female', 'admin@gmail.com', '9859632561', 'Rajkot'),
(5, 'Kaushik', 'Darcy', '160160160', 'Male', 'darcy@gmail.com', '9016388880', 'Rajkot'),
(6, 'sanjeev', 'kumar', 'sanjeev', 'Male', 'sanjeevtech2@gmail.com', '9015501897', 'Ahmedabad'),
(7, 'Rutuja Jangle', 'rutuja13', '123456', 'Female', 'rutujarjangle@gmail.com', '8605118354', 'Ahmedabad'),
(8, 'sonal shitole', 'sonal', '12345', 'Female', 'sonal@gmail.com', '982234556', 'Pune'),
(9, 'shreyas chavan', 'shreyas', '12345', 'Male', 'shreyas@gmail.com', '123456788', 'Pune');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `book`
--
ALTER TABLE `book`
  ADD PRIMARY KEY (`b_id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`con_id`);

--
-- Indexes for table `shipping_details`
--
ALTER TABLE `shipping_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subcat`
--
ALTER TABLE `subcat`
  ADD PRIMARY KEY (`subcat_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`u_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `book`
--
ALTER TABLE `book`
  MODIFY `b_id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `cat_id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `con_id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `shipping_details`
--
ALTER TABLE `shipping_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `subcat`
--
ALTER TABLE `subcat`
  MODIFY `subcat_id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `u_id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
