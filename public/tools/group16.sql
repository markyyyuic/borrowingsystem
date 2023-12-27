-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 14, 2023 at 05:07 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- USE group16;
--

-- --------------------------------------------------------

--
-- Table structure for table `administrator`
--

CREATE TABLE `administrator` (
  `adminUser` varchar(30) NOT NULL,
  `adminPassword` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `equipments`
--

CREATE TABLE `equipments` (
  `itemID` int(11) NOT NULL,
  `itemName` varchar(30) NOT NULL,
  `itemStatus` varchar(10) NOT NULL,
  `itemQuantity` int(11) NOT NULL,
  `imageUrl` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personnel`
--

CREATE TABLE `personnel` (
  `PersonnelID` int(11) NOT NULL,
  `StudentName` varchar(30) NOT NULL,
  `BorrowDateTime` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personnelequipmentborrowing`
--

CREATE TABLE `personnelequipmentborrowing` (
  `PersonnelID` int(11) NOT NULL,
  `EquipmentID` int(11) NOT NULL,
  `BorrowDateTime` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `studentID` int(11) NOT NULL,
  `studentName` varchar(30) NOT NULL,
  `BorrowDateTime` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `studentenrollment`
--

CREATE TABLE `studentenrollment` (
  `StudentID` int(11) NOT NULL,
  `Course` varchar(30) NOT NULL,
  `Year` int(11) NOT NULL,
  `Section` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `studentteacherequipmentborrowing`
--

CREATE TABLE `studentteacherequipmentborrowing` (
  `StudentID` int(11) NOT NULL,
  `StudentName` varchar(30) NOT NULL,
  `BorrowDateTime` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `teacher`
--

CREATE TABLE `teacher` (
  `teacherID` int(11) NOT NULL,
  `teacherName` varchar(30) NOT NULL,
  `BorrowDateTime` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `teacherequipmentborrowing`
--

CREATE TABLE `teacherequipmentborrowing` (
  `TeacherID` int(11) NOT NULL,
  `EquipmentID` int(11) NOT NULL,
  `BorrowDateTime` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `administrator`
--
ALTER TABLE `administrator`
  ADD PRIMARY KEY (`adminUser`);

--
-- Indexes for table `equipments`
--
ALTER TABLE `equipments`
  ADD PRIMARY KEY (`itemID`);

--
-- Indexes for table `personnel`
--
ALTER TABLE `personnel`
  ADD PRIMARY KEY (`PersonnelID`);

--
-- Indexes for table `personnelequipmentborrowing`
--
ALTER TABLE `personnelequipmentborrowing`
  ADD UNIQUE KEY `PersonnelID` (`PersonnelID`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`studentID`);

--
-- Indexes for table `studentenrollment`
--
ALTER TABLE `studentenrollment`
  ADD PRIMARY KEY (`StudentID`);

--
-- Indexes for table `teacher`
--
ALTER TABLE `teacher`
  ADD PRIMARY KEY (`teacherID`);

--
-- Indexes for table `teacherequipmentborrowing`
--
ALTER TABLE `teacherequipmentborrowing`
  ADD UNIQUE KEY `TeacherID` (`TeacherID`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `personnelequipmentborrowing`
--
ALTER TABLE `personnelequipmentborrowing`
  ADD CONSTRAINT `fk_PersonnelID` FOREIGN KEY (`PersonnelID`) REFERENCES `personnel` (`PersonnelID`);

--
-- Constraints for table `studentenrollment`
--
ALTER TABLE `studentenrollment`
  ADD CONSTRAINT `fk_studentID` FOREIGN KEY (`StudentID`) REFERENCES `student` (`studentID`);

--
-- Constraints for table `teacherequipmentborrowing`
--
ALTER TABLE `teacherequipmentborrowing`
  ADD CONSTRAINT `fk_Teacher_ID` FOREIGN KEY (`TeacherID`) REFERENCES `teacher` (`teacherID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
