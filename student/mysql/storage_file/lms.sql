-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Oct 13, 2017 at 05:43 AM
-- Server version: 5.7.19
-- PHP Version: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lms`
--

-- --------------------------------------------------------

--
-- Table structure for table `add_books`
--

DROP TABLE IF EXISTS `add_books`;
CREATE TABLE IF NOT EXISTS `add_books` (
  `ID` int(20) NOT NULL AUTO_INCREMENT,
  `books_name` varchar(50) NOT NULL,
  `books_img` varchar(500) NOT NULL,
  `books_author_name` varchar(50) NOT NULL,
  `books_publication_name` varchar(50) NOT NULL,
  `books_purchase_date` varchar(50) NOT NULL,
  `books_price` varchar(50) NOT NULL,
  `books_qty` varchar(50) NOT NULL,
  `avilablity_qty` varchar(50) NOT NULL,
  `librarian_username` varchar(50) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `add_books`
--

INSERT INTO `add_books` (`ID`, `books_name`, `books_img`, `books_author_name`, `books_publication_name`, `books_purchase_date`, `books_price`, `books_qty`, `avilablity_qty`, `librarian_username`) VALUES
(1, 'php', './books_image/8d170dc23e98c09a13c5a9a38141ddb0', 'manoj', 'manoj', '20 dec 2003', '23', '3', '2', 'admin'),
(4, 'rubu', './books_image/8ab3ea8f734becffc0cfd4d1528b54f6', 'manoj', 'manoj', '20 dec 2003', '23', '6', '2', 'admin'),
(5, 'php', './books_image/c7734732b8e6d1e95206d98072e62122', 'manoj', 'manoj', '20 dec 2003', '23', '437', '2', 'admin'),
(6, 'php', './books_image/af9e1da792fe0c0b6b49ad5f22f6b044', 'manoj', 'manoj', '20 dec 2003', '23', '437', '2', 'admin'),
(7, 'php', './books_image/3b28b151aa3ef36afacfa87eaa1cabd0', 'manoj', 'manoj', '20 dec 2003', '23', '437', '2', 'admin'),
(8, 'c', 'books_image/c3131194de6281c7e3f7ec9df161b093', 'x', 'x', 'c', 'd', 'd', '0', 'admin'),
(9, 'php2', 'books_image/e94986684802032274c49c1f0a95d1a3', '2', 'w', '20 dec 2003', '23', '437', 's', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `issue_books`
--

DROP TABLE IF EXISTS `issue_books`;
CREATE TABLE IF NOT EXISTS `issue_books` (
  `ID` int(20) NOT NULL AUTO_INCREMENT,
  `student_enrollment` varchar(50) NOT NULL,
  `student_name` varchar(50) NOT NULL,
  `student_sem` varchar(50) NOT NULL,
  `student_contact` varchar(50) NOT NULL,
  `student_email` varchar(50) NOT NULL,
  `books_name` varchar(50) NOT NULL,
  `books_issued_date` varchar(50) NOT NULL,
  `books_return_date` varchar(50) NOT NULL,
  `student_username` varchar(50) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `issue_books`
--

INSERT INTO `issue_books` (`ID`, `student_enrollment`, `student_name`, `student_sem`, `student_contact`, `student_email`, `books_name`, `books_issued_date`, `books_return_date`, `student_username`) VALUES
(1, '', '', '', 'studentcontact', '', '', '', '', ''),
(2, '', 'Manoj Lavu', '2 ', '1234567', 'manojlavu@gmail.com', 'php', '11-Oct-2017', '', ''),
(3, '123456', 'Manoj Lavu', '2 ', '1234567', 'manojlavu@gmail.com', 'php', '11-Oct-2017', '12-Oct-2017', ''),
(4, '123456', 'Manoj Lavu', '2 ', '1234567', 'manojlavu@gmail.com', 'php', '12-Oct-2017', '', ''),
(5, '123456', 'Manoj Lavu', '2', '123456', 'manojlavu@gmail.com', 'rubu', '12-Oct-2017', '12-Oct-2017', ''),
(6, '123456', 'Manoj Lavu', '2 ', '1234567', 'manojlavu@gmail.com', 'rubu', '12-Oct-2017', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `librarian_reg`
--

DROP TABLE IF EXISTS `librarian_reg`;
CREATE TABLE IF NOT EXISTS `librarian_reg` (
  `ID` int(50) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(50) NOT NULL,
  `lastename` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `contact` varchar(50) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `librarian_reg`
--

INSERT INTO `librarian_reg` (`ID`, `firstname`, `lastename`, `username`, `password`, `email`, `contact`) VALUES
(1, 'admin', 'admin', 'admin', 'admin', 'admin@gmail.com', '123456');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

DROP TABLE IF EXISTS `messages`;
CREATE TABLE IF NOT EXISTS `messages` (
  `ID` int(50) NOT NULL AUTO_INCREMENT,
  `susername` varchar(50) NOT NULL,
  `dusername` varchar(50) NOT NULL,
  `tittle` varchar(50) NOT NULL,
  `msg` varchar(50) NOT NULL,
  `read1` varchar(50) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `ID` int(20) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `contact` varchar(50) NOT NULL,
  `sem` varchar(50) NOT NULL,
  `enrollment` varchar(50) NOT NULL,
  `status` varchar(20) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`ID`, `first_name`, `last_name`, `username`, `password`, `email`, `contact`, `sem`, `enrollment`, `status`) VALUES
(1, 'manoj', 'lavu', 'manojlavu', '123456', 'manojlavu@gmail.com', '1234567', '2', '123456', ''),
(2, 'raju', 'ravi', 'rajuravi', '1234', 'raju@gmail.com', '1234567', '2', '123456', ''),
(3, 'ravi', 'ravi', 'ravi', '123', 'ravi@gmail.com', '1234567', '2', '123456', 'yes'),
(4, 'ram', 'ram', 'ram', '123', 'ram@gmail.com', '1234567', '2', '123456', ''),
(5, 'mehual', 'chi', 'mehul', '123456', 'mehul@gmail.com', '1234567', '2', '123456', ''),
(6, 'Manoj', 'Lavu', 'admin', 'asd', 'manojlavu@gmail.com', '1234567', '2', '123456', 'no');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
