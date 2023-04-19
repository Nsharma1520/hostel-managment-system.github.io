-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 19, 2023 at 07:37 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hmsnitkkr`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` text NOT NULL,
  `admin_password` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `admin_password`) VALUES
('Vijay@123', 'Vijay@123');

-- --------------------------------------------------------

--
-- Table structure for table `fhostels`
--

CREATE TABLE `fhostels` (
  `hostel_id` int(11) NOT NULL,
  `hostel_image` varchar(255) NOT NULL,
  `hostel_name` varchar(255) NOT NULL,
  `hostel_cap` int(11) NOT NULL,
  `hostel_trooms` int(11) NOT NULL,
  `hostel_contact` varchar(255) NOT NULL,
  `hostel_email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `fhostels`
--

INSERT INTO `fhostels` (`hostel_id`, `hostel_image`, `hostel_name`, `hostel_cap`, `hostel_trooms`, `hostel_contact`, `hostel_email`) VALUES
(1, 'FH1.png', 'Bhagirathi Bhawan', 198, 198, '01744-258', 'bhagrathibhawan@nitkkr.ac.in'),
(2, 'FH2.png', 'Kavery Bhawan', 285, 292, '01744-256', 'cauveryhostel19@nitkkr.ac.in'),
(3, 'FH3.jfif', 'Kalpana Chawla Bhawan', 600, 600, '01744-233254', 'kch@nitkkr.ac.in');

-- --------------------------------------------------------

--
-- Table structure for table `leaverequest`
--

CREATE TABLE `leaverequest` (
  `student_id` int(11) NOT NULL,
  `student_name` varchar(255) NOT NULL,
  `student_roll` int(11) NOT NULL,
  `hostel_no` varchar(255) NOT NULL,
  `room_no` varchar(255) NOT NULL,
  `from_date` date NOT NULL,
  `to_date` date NOT NULL,
  `reason` text NOT NULL,
  `student_gender` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `leaverequest`
--

INSERT INTO `leaverequest` (`student_id`, `student_name`, `student_roll`, `hostel_no`, `room_no`, `from_date`, `to_date`, `reason`, `student_gender`) VALUES
(5, 'ATUL', 12016026, 'H10', 'A235', '2023-04-13', '2023-04-22', 'Fever', 'Male'),
(6, 'Sikha', 12016027, 'H3', 'A236', '2023-04-21', '2023-04-26', 'Fever', 'Female');

-- --------------------------------------------------------

--
-- Table structure for table `mhostels`
--

CREATE TABLE `mhostels` (
  `hostel_id` int(11) NOT NULL,
  `hostel_image` varchar(255) NOT NULL,
  `hostel_name` varchar(255) NOT NULL,
  `hostel_cap` int(11) NOT NULL,
  `hostel_trooms` int(11) NOT NULL,
  `hostel_contact` varchar(255) NOT NULL,
  `hostel_email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `mhostels`
--

INSERT INTO `mhostels` (`hostel_id`, `hostel_image`, `hostel_name`, `hostel_cap`, `hostel_trooms`, `hostel_contact`, `hostel_email`) VALUES
(1, 'H1.jfif', 'Abhimanyu Bhawan', 228, 76, '74043-92231', 'abhimanyubhawan@gmail.com'),
(2, 'H2.jfif', 'Bhishma Bhawan', 246, 82, '98961-71966', 'hostel2nit@gmail.com'),
(3, 'H3.jpg', 'Chakradhar Bhawan', 248, 84, '99919-15145', 'nithostel3@gmail.com'),
(4, 'H4.jpg', 'Dronacharya Bhawan ', 240, 240, '99919-15145', 'dronacharyabhawan4nit@gmail.com'),
(5, 'H5.jpg', 'Eklavya Bhawan', 240, 240, '99919-15145', 'hostelno.05@gmail.com'),
(6, 'H6.jpg', 'Fanibhushan Bhawan', 162, 162, '7404719500', 'fanibhushanbhawanh6@gmail.com'),
(7, 'H7.jpeg', 'Girivar Bhawan', 351, 351, '7404719500', 'girivarbhawanh7@gmail.com'),
(8, 'H8.jpeg', 'Harihar Bhawan', 350, 350, '7404719500', 'h8hariharnitk@gmail.com'),
(9, 'H9.jpeg', 'Indivar Bhawan', 350, 350, '7404719500', 'h9indivarnitk@gmail.com'),
(10, 'H10.jpeg', 'Visvesvaraya Bhawan ', 1226, 1067, '8570905800', 'visvesvarayabhawan@gmail.com'),
(11, 'H11.jpg', 'Vivekananda Bhawan', 347, 204, '01744-233191', 'h11@nitkkr.ac.in');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `student_id` int(11) NOT NULL,
  `student_roll` int(11) NOT NULL,
  `student_name` varchar(255) NOT NULL,
  `student_email` varchar(255) NOT NULL,
  `student_phone` bigint(20) NOT NULL,
  `student_pass` varchar(255) NOT NULL,
  `hostel_no` varchar(255) NOT NULL,
  `room_no` varchar(255) NOT NULL,
  `course` varchar(255) NOT NULL,
  `room_seater` int(11) NOT NULL,
  `father_name` varchar(255) NOT NULL,
  `father_phoneno` bigint(20) NOT NULL,
  `your_photo` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `allot_date` date NOT NULL DEFAULT current_timestamp(),
  `fees` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`student_id`, `student_roll`, `student_name`, `student_email`, `student_phone`, `student_pass`, `hostel_no`, `room_no`, `course`, `room_seater`, `father_name`, `father_phoneno`, `your_photo`, `gender`, `allot_date`, `fees`) VALUES
(24, 12016026, 'ATUL', 'bansalatul813@gmail.com', 9306501854, '$2y$10$NxIkG3eYkZbi2ztsRIRW2e62ox2arWQKKzpU5QVrA5iAsbs5mkfDC', 'H10', 'A235', 'B.tech', 1, 'Rajesh kumar', 9306501854, 'bansalatul813@gmail.com', 'Male', '2023-04-16', 7400),
(25, 12016022, 'Nitin', 'bansalatul813@gmail.com', 9306501854, '$2y$10$yGCsQp1xKcbLmAC/8cCVNOKZLJ3ZudZfrxDUn9JTvOVjTWA6wIi3O', 'H7', 'A236', 'B.tech', 1, 'Rajesh kumar', 8950405110, '', 'Male', '2023-04-17', 5800),
(26, 12016027, 'Mandeep', 'bansalatul813@gmail.com', 9306501854, '$2y$10$u.hRqc7ArNf0bUHAg12dyukNp633A/6f.Gopi1mRDDUKWWS5wmrS6', 'H5', 'A236', 'B.tech', 1, 'Rajesh kumar', 8950405110, '', 'Male', '2023-04-17', 7400),
(28, 12016029, 'Sikha', 'bansalatul813@gmail.com', 9306501854, '$2y$10$3Jr8LaH13DxWb.3Miepp8uxsNY.v7VzjO7YggB26UiUn4HoPB5x6a', 'H3', 'A236', 'B.tech', 1, 'Rajesh kumar', 8950405110, 'menu-pizza.jpg', 'Female', '2023-04-18', 7400),
(29, 12016078, 'ATUL', 'bansalatul813@gmail.com', 9306501854, '$2y$10$H5u.wx1p3eMM6p9Uz1gyOOxwxTXtPHRLUjvb/02Yzo5xJ81eimwye', 'H10', 'A236', 'B.tech', 1, 'Rajesh kumar', 9306501854, 'menu-momo.jpg', 'Male', '2023-04-18', 7400),
(30, 12332145, 'shivam', 'bansalatul813@gmail.com', 9306501854, '$2y$10$9LRfW18rpEAAItrmoBTACeQGpQz3wSNayBPs9nOviJ/RkWPm5qgly', 'H10', 'A236', 'Select', 1, 'Rajesh kumar', 9306501854, 'menu-momo.jpg', 'Male', '2023-04-18', 7400),
(31, 12016035, 'sahil', 'bansalatul813@gmail.com', 9306501854, '$2y$10$GtoX3IWsB5EKKfKptgiTNuK5Z4XFFDRGUU9HaoPPurzftlkmDMW8.', 'H10', 'A236', 'B.tech', 1, 'Rajesh kumar', 9306501854, 'menu-momo.jpg', 'Male', '2023-04-18', 7400);

-- --------------------------------------------------------

--
-- Table structure for table `student_complains`
--

CREATE TABLE `student_complains` (
  `com_id` int(11) NOT NULL,
  `student_roll` int(11) NOT NULL,
  `com_subject` text NOT NULL,
  `com_desc` text NOT NULL,
  `response` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `student_complains`
--

INSERT INTO `student_complains` (`com_id`, `student_roll`, `com_subject`, `com_desc`, `response`) VALUES
(1, 12016020, 'Quesry iii', 'ghjkl;fghjkl', 'ghjkl;'),
(2, 12016020, 'Quesry', 'ghjklhjkl', 'ioioioooxcvbnm,./'),
(3, 12016020, 'Quesry', 'dfghjkl', 'dfghjkl;'),
(4, 12016035, 'mess', 'food', 'hidasjcls');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD UNIQUE KEY `admin_id` (`admin_id`) USING HASH;

--
-- Indexes for table `fhostels`
--
ALTER TABLE `fhostels`
  ADD PRIMARY KEY (`hostel_id`),
  ADD UNIQUE KEY `hostel_id` (`hostel_id`);

--
-- Indexes for table `leaverequest`
--
ALTER TABLE `leaverequest`
  ADD PRIMARY KEY (`student_id`);

--
-- Indexes for table `mhostels`
--
ALTER TABLE `mhostels`
  ADD PRIMARY KEY (`hostel_id`),
  ADD UNIQUE KEY `hostel_id` (`hostel_id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`student_id`),
  ADD UNIQUE KEY `student_roll` (`student_roll`,`student_email`,`student_phone`);

--
-- Indexes for table `student_complains`
--
ALTER TABLE `student_complains`
  ADD PRIMARY KEY (`com_id`),
  ADD UNIQUE KEY `com_id` (`com_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `fhostels`
--
ALTER TABLE `fhostels`
  MODIFY `hostel_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `leaverequest`
--
ALTER TABLE `leaverequest`
  MODIFY `student_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `mhostels`
--
ALTER TABLE `mhostels`
  MODIFY `hostel_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `student_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `student_complains`
--
ALTER TABLE `student_complains`
  MODIFY `com_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
