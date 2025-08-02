-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 02 أغسطس 2025 الساعة 16:22
-- إصدار الخادم: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hms`
--

-- --------------------------------------------------------

--
-- بنية الجدول `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `updationDate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- إرجاع أو استيراد بيانات الجدول `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `updationDate`) VALUES
(1, 'Ehsna', '100200300', '2025-08-01 11:42:05 AM');

-- --------------------------------------------------------

--
-- بنية الجدول `appointment`
--

CREATE TABLE `appointment` (
  `id` int(11) NOT NULL,
  `doctorSpecialization` varchar(255) DEFAULT NULL,
  `doctorId` int(11) DEFAULT NULL,
  `userId` int(11) DEFAULT NULL,
  `consultancyFees` int(11) DEFAULT NULL,
  `appointmentDate` varchar(255) DEFAULT NULL,
  `appointmentTime` varchar(255) DEFAULT NULL,
  `postingDate` timestamp NULL DEFAULT current_timestamp(),
  `userStatus` int(11) DEFAULT NULL,
  `doctorStatus` int(11) DEFAULT NULL,
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- إرجاع أو استيراد بيانات الجدول `appointment`
--

INSERT INTO `appointment` (`id`, `doctorSpecialization`, `doctorId`, `userId`, `consultancyFees`, `appointmentDate`, `appointmentTime`, `postingDate`, `userStatus`, `doctorStatus`, `updationDate`) VALUES
(1, 'ENT', 1, 1, 500, '2025-08-01', '12:45 PM', '2025-08-01 11:21:48', 1, 0, '2025-08-01 14:10:00'),
(2, 'ENT', 1, 2, 500, '2025-08-01', '7:00 PM', '2025-08-01 12:16:18', 1, 1, NULL);

-- --------------------------------------------------------

--
-- بنية الجدول `doctors`
--

CREATE TABLE `doctors` (
  `id` int(11) NOT NULL,
  `specilization` varchar(255) DEFAULT NULL,
  `doctorName` varchar(255) DEFAULT NULL,
  `address` longtext DEFAULT NULL,
  `docFees` varchar(255) DEFAULT NULL,
  `contactno` bigint(11) DEFAULT NULL,
  `docEmail` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- إرجاع أو استيراد بيانات الجدول `doctors`
--

INSERT INTO `doctors` (`id`, `specilization`, `doctorName`, `address`, `docFees`, `contactno`, `docEmail`, `password`, `creationDate`, `updationDate`) VALUES
(1, 'ENT', 'Anuj kumar', 'A 123 XYZ Apartment Raj Nagar Ext Ghaziabad', '500', 142536250, 'anujk123@test.com', '$2b$12$5xgWR5L/NCEZa5FL8bnQgOrYrN.gu9bR6WCz2gZLOWO.7yctvnyGS', '2025-07-30 17:16:52', '2025-08-02 14:15:27'),
(2, 'Endocrinologists', 'Charu Dua', 'X 1212 ABC Apartment Laxmi Nagar New Delhi ', '800', 1231231230, 'charudua12@test.com', '$2b$12$5xgWR5L/NCEZa5FL8bnQgOrYrN.gu9bR6WCz2gZLOWO.7yctvnyGS', '2025-07-30 00:06:41', '2025-08-02 14:15:27'),
(5, 'Orthopedics', 'ehsan', 'gaza', '1000', 0, 'ehsanehsan@gmail.com', 'f5bb0c8de146c67b44babbf4e6584cc0', '2025-07-30 11:03:41', NULL),
(6, 'Radiology', 'Indira Hicks', 'Vitae officia necess', 'Ratione cum dolorem ', 0, 'xicesu@mailinator.com', 'f5bb0c8de146c67b44babbf4e6584cc0', '2025-07-30 11:34:53', NULL);

-- --------------------------------------------------------

--
-- بنية الجدول `doctorslog`
--

CREATE TABLE `doctorslog` (
  `id` int(11) NOT NULL,
  `uid` int(11) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `userip` binary(16) DEFAULT NULL,
  `loginTime` timestamp NULL DEFAULT current_timestamp(),
  `logout` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- إرجاع أو استيراد بيانات الجدول `doctorslog`
--

INSERT INTO `doctorslog` (`id`, `uid`, `username`, `userip`, `loginTime`, `logout`, `status`) VALUES
(27, NULL, 'Ehsna', 0x3a3a3100000000000000000000000000, '2025-06-16 20:59:17', NULL, 0),
(28, NULL, 'Ehsna', 0x3a3a3100000000000000000000000000, '2025-07-08 20:28:16', NULL, 0),
(29, NULL, 'ahmad.dahdouh@gmail.com', 0x3a3a3100000000000000000000000000, '2025-07-30 10:53:23', NULL, 0),
(30, NULL, 'ahmad.dahdouh@gmail.com', 0x3a3a3100000000000000000000000000, '2025-07-30 10:53:30', NULL, 0),
(31, NULL, 'ahmad.dahdouh@gmail.com', 0x3a3a3100000000000000000000000000, '2025-07-30 10:54:37', NULL, 0),
(32, NULL, 'ahmad.dahdouh@gmail.com', 0x3a3a3100000000000000000000000000, '2025-07-30 10:54:42', NULL, 0),
(33, NULL, 'ahmad.dahdouh@gmail.com', 0x3a3a3100000000000000000000000000, '2025-07-30 10:54:52', NULL, 0),
(34, NULL, 'ahmad.dahdouh@gmail.com', 0x3a3a3100000000000000000000000000, '2025-07-30 10:58:59', NULL, 0),
(35, NULL, 'ahmad.dahdouh@gmail.com', 0x3a3a3100000000000000000000000000, '2025-07-30 10:59:29', NULL, 0),
(36, NULL, 'ahmad.dahdouh@gmail.com', 0x3a3a3100000000000000000000000000, '2025-07-30 10:59:30', NULL, 0),
(37, NULL, 'ahmad.dahdouh@gmail.com', 0x3a3a3100000000000000000000000000, '2025-07-30 10:59:30', NULL, 0),
(38, NULL, 'ahmad.dahdouh@gmail.com', 0x3a3a3100000000000000000000000000, '2025-07-30 10:59:35', NULL, 0),
(39, NULL, 'ahmad.dahdouh@gmail.com', 0x3a3a3100000000000000000000000000, '2025-07-30 11:00:13', NULL, 0),
(40, NULL, 'ahmad.dahdouh@gmail.com', 0x3a3a3100000000000000000000000000, '2025-07-30 11:00:13', NULL, 0),
(41, NULL, 'ahmad.dahdouh@gmail.com', 0x3a3a3100000000000000000000000000, '2025-07-30 11:00:13', NULL, 0),
(42, NULL, 'ahmad.dahdouh@gmail.com', 0x3a3a3100000000000000000000000000, '2025-07-30 11:00:13', NULL, 0),
(43, NULL, 'ahmad.dahdouh@gmail.com', 0x3a3a3100000000000000000000000000, '2025-07-30 11:00:14', NULL, 0),
(44, NULL, 'ahmad.dahdouh@gmail.com', 0x3a3a3100000000000000000000000000, '2025-07-30 11:00:14', NULL, 0),
(45, NULL, 'ahmad.dahdouh@gmail.com', 0x3a3a3100000000000000000000000000, '2025-07-30 11:00:14', NULL, 0),
(46, NULL, 'ahmad.dahdouh@gmail.com', 0x3a3a3100000000000000000000000000, '2025-07-30 11:00:14', NULL, 0),
(47, NULL, 'ahmad.dahdouh@gmail.com', 0x3a3a3100000000000000000000000000, '2025-07-30 11:00:14', NULL, 0),
(48, NULL, 'ahmad.dahdouh@gmail.com', 0x3a3a3100000000000000000000000000, '2025-07-30 11:00:15', NULL, 0),
(49, NULL, 'ahmad.dahdouh@gmail.com', 0x3a3a3100000000000000000000000000, '2025-07-30 11:00:15', NULL, 0),
(50, NULL, 'ahmad.dahdouh@gmail.com', 0x3a3a3100000000000000000000000000, '2025-07-30 11:00:15', NULL, 0),
(51, NULL, 'ahmad.dahdouh@gmail.com', 0x3a3a3100000000000000000000000000, '2025-07-30 11:00:15', NULL, 0),
(52, NULL, 'ahmad.dahdouh@gmail.com', 0x3a3a3100000000000000000000000000, '2025-07-30 11:00:15', NULL, 0),
(53, NULL, 'ahmad.dahdouh@gmail.com', 0x3a3a3100000000000000000000000000, '2025-07-30 11:01:15', NULL, 0),
(54, NULL, 'ehsanehsan@gmail.com', 0x3a3a3100000000000000000000000000, '2025-07-30 11:03:52', NULL, 0),
(55, NULL, 'mahufyn@mailinator.com', 0x3a3a3100000000000000000000000000, '2025-07-30 11:27:36', NULL, 0),
(56, NULL, 'mahufyn@mailinator.com', 0x3a3a3100000000000000000000000000, '2025-07-30 11:27:37', NULL, 0),
(57, 6, 'xicesu@mailinator.com', 0x3a3a3100000000000000000000000000, '2025-07-30 11:35:10', '30-07-2025 05:06:16 PM', 1),
(58, 6, 'xicesu@mailinator.com', 0x3a3a3100000000000000000000000000, '2025-07-30 11:38:15', NULL, 1),
(59, 6, 'xicesu@mailinator.com', 0x3a3a3100000000000000000000000000, '2025-07-30 11:43:17', '30-07-2025 05:15:19 PM', 1),
(60, NULL, 'susucez@mailinator.com', 0x3a3a3100000000000000000000000000, '2025-08-01 09:00:16', NULL, 0),
(61, NULL, 'susucez@mailinator.com', 0x3a3a3100000000000000000000000000, '2025-08-01 09:00:17', NULL, 0),
(62, 6, 'xicesu@mailinator.com', 0x3a3a3100000000000000000000000000, '2025-08-01 09:00:20', '01-08-2025 02:30:52 PM', 1);

-- --------------------------------------------------------

--
-- بنية الجدول `doctorspecilization`
--

CREATE TABLE `doctorspecilization` (
  `id` int(11) NOT NULL,
  `specilization` varchar(255) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- إرجاع أو استيراد بيانات الجدول `doctorspecilization`
--

INSERT INTO `doctorspecilization` (`id`, `specilization`, `creationDate`, `updationDate`) VALUES
(1, 'Orthopedics.', '2025-08-01 17:09:46', '2025-08-02 14:11:48'),
(2, 'Internal Medicine', '2025-08-01 17:09:57', NULL),
(3, 'Obstetrics and Gynecology', '2025-08-01 17:10:18', NULL),
(4, 'Dermatology', '2025-08-01 17:10:28', NULL),
(5, 'Pediatrics', '2025-08-01 17:10:37', NULL),
(6, 'Radiology', '2025-08-01 17:10:46', NULL),
(7, 'General Surgery', '2025-08-01 17:10:56', NULL),
(8, 'Ophthalmology', '2025-08-01 17:11:03', NULL),
(9, 'Anesthesia', '2025-08-01 17:11:15', NULL),
(10, 'Pathology', '2025-08-01 17:11:22', NULL),
(11, 'ENT', '2025-08-01 17:11:30', NULL),
(12, 'Dental Care', '2025-08-01 17:11:39', NULL),
(13, 'Dermatologists', '2025-08-01 17:12:02', NULL),
(14, 'Endocrinologists', '2025-08-01 17:12:10', NULL),
(15, 'Neurologists', '2025-08-01 17:12:30', NULL),
(18, '', '2025-08-01 13:55:37', NULL);

-- --------------------------------------------------------

--
-- بنية الجدول `tblcontactus`
--

CREATE TABLE `tblcontactus` (
  `id` int(11) NOT NULL,
  `fullname` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `contactno` bigint(12) DEFAULT NULL,
  `message` mediumtext DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp(),
  `AdminRemark` mediumtext DEFAULT NULL,
  `LastupdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `IsRead` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- إرجاع أو استيراد بيانات الجدول `tblcontactus`
--

INSERT INTO `tblcontactus` (`id`, `fullname`, `email`, `contactno`, `message`, `PostingDate`, `AdminRemark`, `LastupdationDate`, `IsRead`) VALUES
(1, 'Anuj kumar', 'anujk30@test.com', 1425362514, 'This is for testing purposes.   This is for testing purposes.This is for testing purposes.This is for testing purposes.This is for testing purposes.This is for testing purposes.This is for testing purposes.This is for testing purposes.This is for testing purposes.', '2022-10-30 16:52:03', '.', '2025-08-02 14:06:47', 1),
(2, 'Anuj kumar', 'ak@gmail.com', 1111122233, 'This is for testing', '2025-07-30 12:13:41', 'Contact the patient', '2025-07-30 12:13:57', 1);

-- --------------------------------------------------------

--
-- بنية الجدول `tblmedicalhistory`
--

CREATE TABLE `tblmedicalhistory` (
  `ID` int(10) NOT NULL,
  `PatientID` int(10) DEFAULT NULL,
  `BloodPressure` varchar(200) DEFAULT NULL,
  `BloodSugar` varchar(200) NOT NULL,
  `Weight` varchar(100) DEFAULT NULL,
  `Temperature` varchar(200) DEFAULT NULL,
  `MedicalPres` mediumtext DEFAULT NULL,
  `CreationDate` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- إرجاع أو استيراد بيانات الجدول `tblmedicalhistory`
--

INSERT INTO `tblmedicalhistory` (`ID`, `PatientID`, `BloodPressure`, `BloodSugar`, `Weight`, `Temperature`, `MedicalPres`, `CreationDate`) VALUES
(1, 1, '80/120', '120', '85', '98', 'Test', '2025-07-30 12:19:41');

-- --------------------------------------------------------

--
-- بنية الجدول `tblpage`
--

CREATE TABLE `tblpage` (
  `ID` int(10) NOT NULL,
  `PageType` varchar(200) DEFAULT NULL,
  `PageTitle` varchar(200) DEFAULT NULL,
  `PageDescription` mediumtext DEFAULT NULL,
  `Email` varchar(120) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `UpdationDate` timestamp NULL DEFAULT current_timestamp(),
  `OpenningTime` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- إرجاع أو استيراد بيانات الجدول `tblpage`
--

INSERT INTO `tblpage` (`ID`, `PageType`, `PageTitle`, `PageDescription`, `Email`, `MobileNumber`, `UpdationDate`, `OpenningTime`) VALUES
(1, 'aboutus', 'About Us', '<ul style=\"padding: 0px; margin-right: 0px; margin-bottom: 1.313em; margin-left: 1.655em;\" times=\"\" new=\"\" roman\";=\"\" font-size:=\"\" 14px;=\"\" text-align:=\"\" center;=\"\" background-color:=\"\" rgb(255,=\"\" 246,=\"\" 246);\"=\"\"><li style=\"text-align: left;\"><font color=\"#000000\">The Hospital Management System (HMS) is designed for Any Hospital to replace their existing manual, paper based system. The new system is to control the following information; patient information, room availability, staff and operating room schedules, and patient invoices. These services are to be provided in an efficient, cost effective manner, with the goal of reducing the time and resources currently required for such tasks.</font></li><li style=\"text-align: left;\"><font color=\"#000000\">A significant part of the operation of any hospital involves the acquisition, management and timely retrieval of great volumes of information. This information typically involves; patient personal information and medical history, staff information, room and ward scheduling, staff scheduling, operating theater scheduling and various facilities waiting lists. All of this information must be managed in an efficient and cost wise fashion so that an institution\'s resources may be effectively utilized HMS will automate the management of the hospital making it more efficient and error free. It aims at standardizing data, consolidating data ensuring data integrity and reducing inconsistencies.&nbsp;</font></li></ul>', NULL, NULL, '2020-05-20 07:21:52', NULL),
(2, 'contactus', 'Contact Details', 'Gaza, Beit lahia, El Manshia', 'info@gmail.com', 590001232, '2020-05-20 07:24:07', '9 am To 8 Pm');

-- --------------------------------------------------------

--
-- بنية الجدول `tblpatient`
--

CREATE TABLE `tblpatient` (
  `ID` int(10) NOT NULL,
  `Docid` int(10) DEFAULT NULL,
  `PatientName` varchar(200) DEFAULT NULL,
  `PatientContno` bigint(10) DEFAULT NULL,
  `PatientEmail` varchar(200) DEFAULT NULL,
  `PatientGender` varchar(50) DEFAULT NULL,
  `PatientAdd` mediumtext DEFAULT NULL,
  `PatientAge` int(10) DEFAULT NULL,
  `PatientMedhis` mediumtext DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- إرجاع أو استيراد بيانات الجدول `tblpatient`
--

INSERT INTO `tblpatient` (`ID`, `Docid`, `PatientName`, `PatientContno`, `PatientEmail`, `PatientGender`, `PatientAdd`, `PatientAge`, `PatientMedhis`, `CreationDate`, `UpdationDate`) VALUES
(1, 1, 'Amit Kumar', 1231231230, 'amitk@gmail.com', 'male', 'New Delhi india', 35, 'NA', '2025-07-30 12:18:31', NULL),
(2, 6, 'Neville Leonard', 590000001, 'bybo@mailinator.com', 'female', 'Ut illo facilis tene', 0, 'Ipsam ad minima volu', '2025-07-30 11:43:41', NULL);

-- --------------------------------------------------------

--
-- بنية الجدول `userlog`
--

CREATE TABLE `userlog` (
  `id` int(11) NOT NULL,
  `uid` int(11) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `userip` binary(16) DEFAULT NULL,
  `loginTime` timestamp NULL DEFAULT current_timestamp(),
  `logout` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- إرجاع أو استيراد بيانات الجدول `userlog`
--

INSERT INTO `userlog` (`id`, `uid`, `username`, `userip`, `loginTime`, `logout`, `status`) VALUES
(5, NULL, 'Ehsan', 0x3a3a3100000000000000000000000000, '2025-05-04 14:06:08', NULL, 0),
(6, 1, 'johndoe12@test.com', 0x3a3a3100000000000000000000000000, '2025-05-04 15:43:22', '04-05-2025 09:14:13 PM', 1),
(7, NULL, 'Ehsna@hmail.com', 0x3a3a3100000000000000000000000000, '2025-06-16 20:56:15', NULL, 0),
(8, NULL, 'Ehsna', 0x3a3a3100000000000000000000000000, '2025-06-16 20:59:09', NULL, 0),
(9, NULL, 'Ehsna', 0x3a3a3100000000000000000000000000, '2025-06-16 20:59:10', NULL, 0),
(10, NULL, 'Ehsna', 0x3a3a3100000000000000000000000000, '2025-06-16 20:59:10', NULL, 0),
(11, NULL, 'Ehsna', 0x3a3a3100000000000000000000000000, '2025-06-16 20:59:11', NULL, 0),
(12, NULL, 'Ehsna', 0x3a3a3100000000000000000000000000, '2025-06-16 20:59:11', NULL, 0),
(13, NULL, 'Ehsna', 0x3a3a3100000000000000000000000000, '2025-06-16 20:59:11', NULL, 0),
(14, NULL, 'Ehsna', 0x3a3a3100000000000000000000000000, '2025-07-08 20:26:33', NULL, 0),
(15, 4, 'qijutomir@mailinator.com', 0x3a3a3100000000000000000000000000, '2025-07-30 10:05:56', NULL, 1),
(16, 4, 'qijutomir@mailinator.com', 0x3a3a3100000000000000000000000000, '2025-07-30 10:20:04', '30-07-2025 03:52:40 PM', 1),
(17, 4, 'qijutomir@mailinator.com', 0x3a3a3100000000000000000000000000, '2025-07-30 10:22:50', '30-07-2025 03:54:28 PM', 1),
(18, 4, 'qijutomir@mailinator.com', 0x3a3a3100000000000000000000000000, '2025-07-30 10:24:32', NULL, 1),
(19, 4, 'qijutomir@mailinator.com', 0x3a3a3100000000000000000000000000, '2025-07-30 10:24:43', '30-07-2025 03:55:50 PM', 1),
(20, 4, 'qijutomir@mailinator.com', 0x3a3a3100000000000000000000000000, '2025-07-30 10:39:18', '30-07-2025 04:13:15 PM', 1),
(21, NULL, 'ahmad.dahdouh@gmail.com', 0x3a3a3100000000000000000000000000, '2025-07-30 10:59:42', NULL, 0),
(22, NULL, 'ahmad.dahdouh@gmail.com', 0x3a3a3100000000000000000000000000, '2025-07-30 10:59:47', NULL, 0),
(23, NULL, 'ahmad.dahdouh@gmail.com', 0x3a3a3100000000000000000000000000, '2025-07-30 11:00:06', NULL, 0),
(24, NULL, 'qijutomir@mailinator.com', 0x3a3a3100000000000000000000000000, '2025-07-30 11:08:44', NULL, 0),
(25, NULL, 'ehsanehsan@gmail.com', 0x3a3a3100000000000000000000000000, '2025-07-30 11:08:44', NULL, 0),
(26, NULL, 'qijutomir@mailinator.com', 0x3a3a3100000000000000000000000000, '2025-07-30 11:08:49', NULL, 0),
(27, NULL, 'qijutomir@mailinator.com', 0x3a3a3100000000000000000000000000, '2025-07-30 11:10:07', NULL, 0),
(28, NULL, 'qijutomir@mailinator.com', 0x3a3a3100000000000000000000000000, '2025-07-30 11:10:11', NULL, 0),
(29, 5, 'mahufyn@mailinator.com', 0x3a3a3100000000000000000000000000, '2025-07-30 11:11:54', NULL, 1),
(30, 5, 'mahufyn@mailinator.com', 0x3a3a3100000000000000000000000000, '2025-07-30 11:36:26', '30-07-2025 05:08:07 PM', 1),
(31, NULL, 'xicesu@mailinator.com', 0x3a3a3100000000000000000000000000, '2025-07-30 11:42:32', NULL, 0),
(32, 5, 'mahufyn@mailinator.com', 0x3a3a3100000000000000000000000000, '2025-07-30 11:42:38', '30-07-2025 05:13:05 PM', 1),
(33, NULL, 'Ehsna', 0x3a3a3100000000000000000000000000, '2025-07-30 13:40:52', NULL, 0),
(34, 6, 'susucez@mailinator.com', 0x3a3a3100000000000000000000000000, '2025-07-30 13:41:26', NULL, 1),
(35, NULL, 'admin@gmail.com', 0x3a3a3100000000000000000000000000, '2025-08-01 07:17:00', NULL, 0),
(36, NULL, 'admin', 0x3a3a3100000000000000000000000000, '2025-08-01 07:17:53', NULL, 0),
(37, NULL, 'johndoe12@test.com', 0x3a3a3100000000000000000000000000, '2025-08-01 07:18:28', NULL, 0),
(38, NULL, 'Ehsna', 0x3a3a3100000000000000000000000000, '2025-08-01 07:19:37', NULL, 0),
(39, NULL, 'xicesu@mailinator.com', 0x3a3a3100000000000000000000000000, '2025-08-01 09:00:56', NULL, 0),
(40, 6, 'susucez@mailinator.com', 0x3a3a3100000000000000000000000000, '2025-08-01 09:01:02', NULL, 1);

-- --------------------------------------------------------

--
-- بنية الجدول `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `fullName` varchar(255) DEFAULT NULL,
  `address` longtext DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `regDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- إرجاع أو استيراد بيانات الجدول `users`
--

INSERT INTO `users` (`id`, `fullName`, `address`, `city`, `gender`, `email`, `password`, `regDate`, `updationDate`) VALUES
(4, 'Selma Wyatt', 'Est voluptas delenit', 'Aut cum eos quidem e', 'Female', 'qijutomir@mailinator.com', '$2y$10$v1N7Q4mZdhrsKeA5rcPWo.q3kdJ9H8nDkZ0l6Xqd17BIcgBb98vHa', '2025-07-30 10:05:22', NULL),
(5, 'Cassandra Gates', 'Exercitationem rerum', 'Commodo incidunt cu', 'female', 'mahufyn@mailinator.com', 'f5bb0c8de146c67b44babbf4e6584cc0', '2025-07-30 11:11:42', NULL),
(6, 'Erich Oneill', 'Doloremque debitis h', 'Minus culpa nemo qui', 'female', 'susucez@mailinator.com', 'f5bb0c8de146c67b44babbf4e6584cc0', '2025-07-30 13:41:11', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `appointment`
--
ALTER TABLE `appointment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctors`
--
ALTER TABLE `doctors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctorslog`
--
ALTER TABLE `doctorslog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctorspecilization`
--
ALTER TABLE `doctorspecilization`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcontactus`
--
ALTER TABLE `tblcontactus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblmedicalhistory`
--
ALTER TABLE `tblmedicalhistory`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblpage`
--
ALTER TABLE `tblpage`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblpatient`
--
ALTER TABLE `tblpatient`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `userlog`
--
ALTER TABLE `userlog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `appointment`
--
ALTER TABLE `appointment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `doctors`
--
ALTER TABLE `doctors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `doctorslog`
--
ALTER TABLE `doctorslog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT for table `doctorspecilization`
--
ALTER TABLE `doctorspecilization`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `tblcontactus`
--
ALTER TABLE `tblcontactus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblmedicalhistory`
--
ALTER TABLE `tblmedicalhistory`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblpage`
--
ALTER TABLE `tblpage`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblpatient`
--
ALTER TABLE `tblpatient`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `userlog`
--
ALTER TABLE `userlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
