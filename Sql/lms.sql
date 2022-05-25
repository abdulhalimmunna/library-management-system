-- phpMyAdmin SQL Dump
-- version 4.6.6
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Oct 27, 2017 at 12:46 PM
-- Server version: 10.1.20-MariaDB
-- PHP Version: 7.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `id2914322_lms`
--

-- --------------------------------------------------------

--
-- Table structure for table `add_books`
--

CREATE TABLE `add_books` (
  `id` int(5) NOT NULL,
  `books_name` varchar(50) NOT NULL,
  `books_image` varchar(500) NOT NULL,
  `books_author_name` varchar(50) NOT NULL,
  `books_publication_name` varchar(50) NOT NULL,
  `books_purchase_date` varchar(20) NOT NULL,
  `books_price` varchar(20) NOT NULL,
  `books_qty` varchar(20) NOT NULL,
  `available_qty` varchar(20) NOT NULL,
  `librarian_username` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `issue_books`
--

CREATE TABLE `issue_books` (
  `id` int(5) NOT NULL,
  `student_enrollment` varchar(50) NOT NULL,
  `student_name` varchar(50) NOT NULL,
  `student_sem` varchar(50) NOT NULL,
  `student_contact` varchar(50) NOT NULL,
  `student_email` varchar(50) NOT NULL,
  `books_name` varchar(50) NOT NULL,
  `books_issue_date` varchar(50) NOT NULL,
  `books_return_date` varchar(50) NOT NULL,
  `student_username` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `issue_books`
--

INSERT INTO `issue_books` (`id`, `student_enrollment`, `student_name`, `student_sem`, `student_contact`, `student_email`, `books_name`, `books_issue_date`, `books_return_date`, `student_username`) VALUES
(2, '1', 'Abdul Halim Munna', '7th', '12345678', 'www.munna344@gmail.com', 'PHP Storm', '25-08-2017', '11-09-2017', 'munna'),
(4, '2', 'Monisha Haque', '7th', '12345678', 'monisha@gmail.com', 'PHP Storm', '25-08-2017', '01-09-2017', 'monisha'),
(5, '3', 'Mahmuda Begun', '7th', '012345452', 'mah@gmail.com', 'PHP Storm', '25-08-2017', '26-08-2017', 'mahmuda'),
(6, '4', 'Sala Uddin', '7th', '012345452', 'salauddin@gmail.com', 'PHP Storm', '25-08-2017', '25-08-2017', 'salauddin'),
(7, '5', 'Jesmin Akter', '7th', '121321321', 'jesmin@gmail.com', 'PHP Storm', '25-08-2017', '26-08-2017', 'jesmin'),
(9, '6', 'Tamanna  Akter', '7th', '12345678', 'tamanna@gmail.com', 'PHP Storm', '25-08-2017', '26-08-2017', 'tamanna'),
(12, '2', 'Monisha Haque', '7th', '12345678', 'monisha@gmail.com', 'Team Work', '26-08-2017', '26-08-2017', 'monisha'),
(13, '1', 'Abdul Halim Munna', '7th', '12345678', 'www.munna344@gmail.com', 'DUET Coaching Guide', '26-08-2017', '11-09-2017', 'munna'),
(14, '1', 'Abdul Halim Munna', '7th', '12345678', 'www.munna344@gmail.com', 'PHP Storm', '26-08-2017', '01-09-2017', 'munna'),
(16, '2', 'Monisha Haque', '7th', '12345678', 'monisha@gmail.com', 'PHP Storm', '26-08-2017', '', 'monisha'),
(17, '3', 'Mahmuda Begun', '7th', '012345452', 'mah@gmail.com', 'PHP Storm', '26-08-2017', '', 'mahmuda'),
(18, '4', 'Sala Uddin', '7th', '012345452', 'salauddin@gmail.com', 'PHP Storm', '26-08-2017', '', 'salauddin'),
(19, '5', 'Jesmin Akter', '7th', '121321321', 'jesmin@gmail.com', 'PHP Storm', '26-08-2017', '', 'jesmin'),
(21, '4', 'Sala Uddin', '7th', '012345452', 'salauddin@gmail.com', 'DUET Coaching Guide', '28-08-2017', '', 'salauddin'),
(22, '4', 'Sala Uddin', '7th', '012345452', 'salauddin@gmail.com', 'Web Development', '28-08-2017', '', 'salauddin'),
(23, '7', 'Saiful Islam', '7th', '121321321', 'dinar@gmail.com', 'PHP Storm', '29-08-2017', '', 'dinar'),
(24, '7', 'Saiful Islam', '7th', '121321321', 'dinar@gmail.com', 'Team Work', '29-08-2017', '', 'dinar'),
(25, '7', 'Saiful Islam', '7th', '121321321', 'dinar@gmail.com', 'Web Development', '29-08-2017', '', 'dinar'),
(26, '2', 'Monisha Haque', '7th', '12345678', 'monisha@gmail.com', 'Java Learning', '01-09-2017', '', 'monisha'),
(27, '2', 'Monisha Haque', '7th', '12345678', 'monisha@gmail.com', 'Web Development', '01-09-2017', '', 'monisha'),
(28, '7', 'Saiful Islam', '7th', '121321321', 'dinar@gmail.com', 'Java Learning', '08-09-2017', '', 'dinar'),
(29, '7', 'Saiful Islam', '7th', '121321321', 'dinar@gmail.com', 'Team Work', '08-09-2017', '', 'dinar'),
(30, '7', 'Saiful Islam', '7th', '121321321', 'dinar@gmail.com', 'Web Development', '08-09-2017', '', 'dinar'),
(31, '6', 'Tamanna  Akter', '7th', '12345678', 'tamanna@gmail.com', 'Web Development', '08-09-2017', '11-09-2017', 'tamanna'),
(32, '5', 'Jesmin Akter', '7th', '121321321', 'jesmin@gmail.com', 'Web Development', '08-09-2017', '', 'jesmin'),
(33, '5', 'Jesmin Akter', '7th', '121321321', 'jesmin@gmail.com', 'Java Learning', '08-09-2017', '', 'jesmin'),
(34, '8', 'Taposhi gush', '7th', '12345678', 'tap@gmail.com', 'Android', '11-09-2017', '11-09-2017', 'taposhi'),
(35, '8', 'Taposhi gush', '7th', '12345678', 'tap@gmail.com', 'PHP Storm', '11-09-2017', '', 'taposhi'),
(36, '10', 'test test', '7th', '12345678', 'test@gmail.com', 'Java Learning', '16-09-2017', '', 'test'),
(37, '11', 'asdf asdf', '7th', '12345678', 'asdf@gmail.com', 'Android', '16-09-2017', '', 'asdf'),
(38, '12', 'Masud Parvez', '8th', '01354541545', 'masud@gmail,com', 'Laili & Mojnu', '17-09-2017', '', 'masud'),
(39, '10', 'lms lms', '7th', '12345678', 'lms@gmail.com', 'Android', '29-09-2017', '', 'lms'),
(40, '1', 'Abdul Halim Munna', '7th', '12345678', 'www.munna344@gmail.com', 'Web Development', '13-10-2017', '', 'munna');

-- --------------------------------------------------------

--
-- Table structure for table `librarian_registration`
--

CREATE TABLE `librarian_registration` (
  `id` int(5) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `contact` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `librarian_registration`
--

INSERT INTO `librarian_registration` (`id`, `firstname`, `lastname`, `username`, `password`, `email`, `contact`) VALUES
(1, 'Abdul', 'Halim', 'munna', 'munna', 'munna@gmail.com', '123456789');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(5) NOT NULL,
  `susername` varchar(50) NOT NULL,
  `dusername` varchar(50) NOT NULL,
  `title` varchar(100) NOT NULL,
  `msg` varchar(500) NOT NULL,
  `read1` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `susername`, `dusername`, `title`, `msg`, `read1`) VALUES
(1, 'munna', 'munna', 'Hello', 'Please! Submit your Books.                                        \r\n                                    ', 'y'),
(2, 'munna', 'munna', 'Hello', 'Please! Submit your Books.                                        \r\n                                    ', 'y'),
(3, 'munna', 'munna', 'Hello', 'Please! Submit your books in return date.                                        \r\n                                    ', 'y'),
(5, 'munna', 'monisha', 'Hello', 'Please! Return your Books.                                        \r\n                                    ', 'y'),
(6, 'munna', 'salauddin', 'Hello', 'Please! Return books as soon as possible.                                         \r\n                                    ', 'n'),
(7, 'munna', 'dinar', 'Hello', 'Please! Return books in time.                                        \r\n                                    ', 'n'),
(8, 'munna', 'monisha', 'Hello', 'Please! Return Your Books. :)                                        \r\n                                    ', 'y'),
(9, 'munna', 'monisha', 'Hello', 'Please! Return Your Books. :)                                        \r\n                                    ', 'y'),
(10, 'munna', 'monisha', 'Hello', 'Tomorrow! Our library arrange a seminar. You can join with us. : )                                        \r\n                                    ', 'y'),
(11, 'munna', 'mahmuda', 'Hello', 'Please, Return books in time!                                        \r\n                                    ', 'n'),
(12, 'munna', 'salauddin', 'Hello', 'Please, Return books in time!                   \r\n                                    ', 'n'),
(13, 'munna', 'jesmin', 'Hello', 'Please, Return books in time!                                             \r\n                                    ', 'n'),
(14, 'munna', 'tamanna', 'Hello', 'Please, Return books in time!                                             \r\n                                    ', 'n'),
(15, 'munna', 'dinar', 'Hello', 'Please, Return books in time!                                             \r\n                                    ', 'n'),
(16, 'munna', 'taposhi', 'Hello', 'Please! Return book in time.                                    \r\n                                    ', 'n'),
(17, 'munna', 'test', 'test', 'test\r\n                                    ', 'n'),
(18, 'munna', 'asdf', 'asdf', 'asdf                                        \r\n                                    ', 'n'),
(19, 'munna', 'masud', 'Hello', 'please read this book cordially because its for special purpose!                                          \r\n                                    ', 'n'),
(20, 'munna', 'munna', 'test', 'Test....                                   \r\n                                    ', 'y'),
(21, 'munna', 'munna', 'Attention Please!', 'Our library arrange a seminar for \"Protect Our Country From Terrorism\" you can join with us.                                        \r\n                                    ', 'y'),
(22, 'munna', 'munna', 'test', 'test                                  \r\n                                    ', 'y');

-- --------------------------------------------------------

--
-- Table structure for table `student_registration`
--

CREATE TABLE `student_registration` (
  `id` int(5) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `contact` varchar(50) NOT NULL,
  `sem` varchar(50) NOT NULL,
  `enrollment` varchar(50) NOT NULL,
  `status` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student_registration`
--

INSERT INTO `student_registration` (`id`, `firstname`, `lastname`, `username`, `password`, `email`, `contact`, `sem`, `enrollment`, `status`) VALUES
(1, 'Abdul', 'Halim Munna', 'munna', 'munna', 'www.munna344@gmail.com', '12345678', '7th', '1', 'no'),
(2, 'Monisha', 'Haque', 'monisha', 'monisha', 'monisha@gmail.com', '12345678', '7th', '2', 'no'),
(3, 'Mahmuda', 'Begum', 'mahmuda', 'mahmuda', 'mah@gmail.com', '012345452', '7th', '3', 'no'),
(4, 'Salah', 'Uddin', 'salauddin', 'salauddin', 'salauddin@gmail.com', '012345452', '7th', '4', 'yes'),
(5, 'Jesmin', 'Akter', 'jesmin', 'jesmin', 'jesmin@gmail.com', '121321321', '7th', '5', 'no'),
(6, 'Tamanna ', 'Akter', 'tamanna', 'tamanna', 'tamanna@gmail.com', '12345678', '7th', '6', 'no'),
(7, 'Saiful', 'Islam', 'dinar', 'dinar', 'dinar@gmail.com', '121321321', '7th', '7', 'no'),
(11, 'Masud', 'Parvez', 'masud', 'masud', 'masud@gmail,com', '01354541545', '8th', '12', 'yes');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `add_books`
--
ALTER TABLE `add_books`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `issue_books`
--
ALTER TABLE `issue_books`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `librarian_registration`
--
ALTER TABLE `librarian_registration`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_registration`
--
ALTER TABLE `student_registration`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `add_books`
--
ALTER TABLE `add_books`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `issue_books`
--
ALTER TABLE `issue_books`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;
--
-- AUTO_INCREMENT for table `librarian_registration`
--
ALTER TABLE `librarian_registration`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `student_registration`
--
ALTER TABLE `student_registration`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
