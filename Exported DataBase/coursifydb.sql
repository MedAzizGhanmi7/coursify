-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 03, 2023 at 11:01 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `coursifydb`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `firstName` varchar(255) NOT NULL,
  `lastName` varchar(255) NOT NULL,
  `dateOfBirth` date NOT NULL,
  `gender` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `phoneNumber` int(11) NOT NULL,
  `profilePicture` varchar(255) NOT NULL,
  `userType` varchar(255) NOT NULL,
  `registrationDate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `email`, `firstName`, `lastName`, `dateOfBirth`, `gender`, `address`, `phoneNumber`, `profilePicture`, `userType`, `registrationDate`) VALUES
(8, 'editedAdmin', '222222', 'admin22@esprit.tn', 'xxxx', 'yyyy', '2023-10-03', 'male', 'Tunis', 222222, 'adminpic2', 'admin', '2023-10-03'),
(9, 'admin', '222222', 'admin22@esprit.tn', 'admin22', 'admin2', '2023-10-03', 'male', 'Tunis', 222222, 'adminpic2', 'admin', '2023-10-03');

-- --------------------------------------------------------

--
-- Table structure for table `instructor`
--

CREATE TABLE `instructor` (
  `id` int(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `firstName` varchar(255) NOT NULL,
  `lastName` varchar(255) NOT NULL,
  `dateOfBirth` date NOT NULL,
  `gender` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `phoneNumber` int(11) NOT NULL,
  `profilePicture` varchar(255) NOT NULL,
  `userType` varchar(255) NOT NULL,
  `registrationDate` date NOT NULL,
  `yearsOfExperience` int(11) DEFAULT NULL,
  `bio` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `instructor`
--

INSERT INTO `instructor` (`id`, `username`, `password`, `email`, `firstName`, `lastName`, `dateOfBirth`, `gender`, `address`, `phoneNumber`, `profilePicture`, `userType`, `registrationDate`, `yearsOfExperience`, `bio`) VALUES
(3, 'prof', '11234455', 'mailprof@esprit.tn', 'prenomprof', 'nomprof', '2023-10-03', 'male', 'Tunis', 558887444, 'profpic', 'instructor', '2023-10-03', 4, 'bioooooo'),
(4, 'prof22', '22222', 'mail222@esprit.tn', 'prenomprof22', 'nomprof22', '2023-10-03', 'male', 'Tunis', 22222, 'pro22', 'instructor', '2023-10-03', 2, 'bioo222');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `id` int(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `firstName` varchar(255) NOT NULL,
  `lastName` varchar(255) NOT NULL,
  `dateOfBirth` date NOT NULL,
  `gender` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `phoneNumber` int(11) NOT NULL,
  `profilePicture` varchar(255) NOT NULL,
  `userType` varchar(255) NOT NULL,
  `registrationDate` date NOT NULL,
  `currentGradeLevel` varchar(255) DEFAULT NULL,
  `major` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`id`, `username`, `password`, `email`, `firstName`, `lastName`, `dateOfBirth`, `gender`, `address`, `phoneNumber`, `profilePicture`, `userType`, `registrationDate`, `currentGradeLevel`, `major`) VALUES
(3, 'aziz', '1123', 'mohamedaziz.ghanmi@esprit.tn', 'Med Aziz', 'Ghanmi', '2023-10-03', 'male', 'Tunis', 27277690, 'azizpic', 'student', '2023-10-03', '4th', 'CS'),
(4, 'yyyyy', '4444', 'mxxxi@esprit.tn', 'Med xx', 'yyyyy', '2023-10-03', 'male', 'Tunis', 1111110, 'yyypic', 'student', '2023-10-03', '4th', 'CS');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `instructor`
--
ALTER TABLE `instructor`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `instructor`
--
ALTER TABLE `instructor`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
