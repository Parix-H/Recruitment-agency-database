-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Jun 23, 2019 at 01:18 PM
-- Server version: 5.7.25
-- PHP Version: 7.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `technoWorldAgency`
--

-- --------------------------------------------------------

--
-- Table structure for table `areaOfQualification`
--

CREATE TABLE `areaOfQualification` (
  `topicId` int(11) NOT NULL,
  `areaOfQualification` varchar(60) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `areaOfQualification`
--

INSERT INTO `areaOfQualification` (`topicId`, `areaOfQualification`, `description`) VALUES
(1, 'computer science', 'computer science descriptions.'),
(2, 'web development', 'web development description'),
(3, 'software engineering', 'software engineering description'),
(4, 'Database Design', 'Database Design descriptions');

-- --------------------------------------------------------

--
-- Table structure for table `city`
--

CREATE TABLE `city` (
  `cityId` int(11) NOT NULL,
  `city` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `city`
--

INSERT INTO `city` (`cityId`, `city`) VALUES
(1, 'Brisbane'),
(2, 'Sydney'),
(3, 'Perth'),
(4, 'Melbourne'),
(5, 'Tehran'),
(6, 'New York'),
(7, 'Tokyo'),
(8, 'Berlin'),
(9, 'Aukland');

-- --------------------------------------------------------

--
-- Table structure for table `contract`
--

CREATE TABLE `contract` (
  `contractTypeId` int(11) NOT NULL,
  `contractType` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `contract`
--

INSERT INTO `contract` (`contractTypeId`, `contractType`) VALUES
(1, 'contract'),
(2, 'casual'),
(3, 'permanent');

-- --------------------------------------------------------

--
-- Table structure for table `country`
--

CREATE TABLE `country` (
  `countryId` int(11) NOT NULL,
  `country` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `country`
--

INSERT INTO `country` (`countryId`, `country`) VALUES
(1, 'Australia'),
(2, 'Iran'),
(3, 'Canada'),
(4, 'China'),
(5, 'India'),
(6, 'USA'),
(7, 'Japan'),
(8, 'Germany'),
(9, 'New Zealand');

-- --------------------------------------------------------

--
-- Table structure for table `employer`
--

CREATE TABLE `employer` (
  `employerId` int(11) NOT NULL,
  `employerName` varchar(20) NOT NULL,
  `email` varchar(60) NOT NULL,
  `address` text NOT NULL,
  `phone` int(12) NOT NULL,
  `dateJoined` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `loginId` int(11) NOT NULL,
  `ABN` int(11) NOT NULL,
  `contactPerson` varchar(20) NOT NULL,
  `country` int(11) NOT NULL,
  `state` int(11) NOT NULL,
  `city` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `employer`
--

INSERT INTO `employer` (`employerId`, `employerName`, `email`, `address`, `phone`, `dateJoined`, `loginId`, `ABN`, `contactPerson`, `country`, `state`, `city`) VALUES
(5, 'Atlassian', 'Atlassian@Atlassian.com', 'No1, Atlassian st.', 1212121212, '2019-06-22 12:14:25', 1, 111111111, 'Ryan', 1, 1, 1),
(6, 'Xero', 'Xero@Xero.com', 'no 2, Xero st', 1313131313, '2019-06-22 12:14:25', 4, 222222222, 'Anita', 1, 2, 2),
(7, 'Envato', 'Envato@Envato.com', 'no 1, Envato st', 1414141414, '2019-06-22 12:14:25', 6, 333333333, 'Tim', 1, 4, 4),
(8, 'Canva', 'Canva@Canva.com', 'no 1, Canva st', 1515151515, '2019-06-22 12:16:15', 7, 555555555, 'Tina', 1, 1, 1),
(9, 'Freelancer', 'Freelancer@Freelancer.com', 'no 1, Freelancer st', 1717171717, '2019-06-22 12:16:15', 8, 777777777, 'John', 1, 2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `employmentHistory`
--

CREATE TABLE `employmentHistory` (
  `empHistoryId` int(11) NOT NULL,
  `jobSeekerId` int(11) NOT NULL,
  `jobTitleId` int(11) NOT NULL,
  `yearsOfExperienceId` int(2) NOT NULL,
  `responsibilities` text NOT NULL,
  `company` varchar(50) NOT NULL,
  `contractTypeId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `employmentHistory`
--

INSERT INTO `employmentHistory` (`empHistoryId`, `jobSeekerId`, `jobTitleId`, `yearsOfExperienceId`, `responsibilities`, `company`, `contractTypeId`) VALUES
(4, 1, 7, 7, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'company12', 1),
(5, 2, 7, 9, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'company12', 1),
(6, 2, 3, 4, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'company7', 3),
(8, 4, 6, 8, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'company8', 1),
(9, 2, 2, 3, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'company6', 1),
(11, 3, 7, 5, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'company13', 3),
(12, 5, 1, 3, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'company 1', 1),
(13, 6, 1, 4, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'company2', 3),
(14, 7, 6, 4, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'company9', 3),
(15, 8, 1, 4, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'company3', 1),
(16, 9, 1, 7, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'company4', 1),
(17, 10, 1, 9, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'company5', 1),
(18, 11, 6, 6, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'company10', 3),
(19, 12, 6, 5, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'company11', 3);

-- --------------------------------------------------------

--
-- Table structure for table `jobSeeker`
--

CREATE TABLE `jobSeeker` (
  `jobSeekerId` int(11) NOT NULL,
  `firstName` varchar(20) NOT NULL,
  `middleName` varchar(20) DEFAULT NULL,
  `lastName` varchar(20) NOT NULL,
  `email` varchar(60) NOT NULL,
  `pIId` int(11) NOT NULL,
  `address` text,
  `mobile` int(20) NOT NULL,
  `homePhone` int(12) DEFAULT NULL,
  `cv` int(11) DEFAULT NULL,
  `dateJoined` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `visaStatusId` int(11) NOT NULL,
  `loginId` int(11) NOT NULL,
  `lastQualification` int(11) NOT NULL,
  `countryId` int(11) NOT NULL,
  `cityId` int(11) NOT NULL,
  `stateId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `jobSeeker`
--

INSERT INTO `jobSeeker` (`jobSeekerId`, `firstName`, `middleName`, `lastName`, `email`, `pIId`, `address`, `mobile`, `homePhone`, `cv`, `dateJoined`, `visaStatusId`, `loginId`, `lastQualification`, `countryId`, `cityId`, `stateId`) VALUES
(1, 'Sam', NULL, 'Johnson', 'sam@gmail.com', 1, NULL, 111111111, NULL, NULL, '2019-06-22 09:28:57', 4, 9, 2, 1, 1, 1),
(2, 'Anna', NULL, 'Mckenzy', 'anna@gmail.com', 2, NULL, 222222222, NULL, NULL, '2019-06-22 09:28:57', 1, 10, 3, 2, 1, 2),
(3, 'Tina', NULL, 'Gomez', 'tina@gmail.com', 3, NULL, 333333333, NULL, NULL, '2019-06-22 09:31:00', 3, 11, 4, 3, 1, 3),
(4, 'Jim', NULL, 'Smith', 'jim@gmail.com', 2, NULL, 444444444, NULL, NULL, '2019-06-22 09:31:00', 4, 12, 2, 1, 1, 1),
(5, 'Mani', NULL, 'R.', 'mani@gmail.com', 1, NULL, 1213141516, NULL, NULL, '2019-06-22 14:24:09', 4, 13, 4, 4, 1, 4),
(6, 'Adrian', NULL, 'N.', 'adrian@gmail.com', 2, NULL, 1981771661, NULL, NULL, '2019-06-22 14:24:09', 1, 14, 4, 3, 1, 3),
(7, 'Mel', NULL, 'Robins', 'mel@gmail.com', 1, NULL, 100100198, NULL, NULL, '2019-06-22 14:28:10', 4, 15, 3, 1, 1, 1),
(8, 'Aiden', NULL, 'Gole', 'aiden@gmail.com', 2, NULL, 198715678, NULL, NULL, '2019-06-22 14:28:10', 1, 16, 1, 4, 1, 4),
(9, 'Yaas', NULL, 'Lee', 'yaas@gmail.com', 3, NULL, 1122334455, NULL, NULL, '2019-06-22 14:28:10', 3, 17, 4, 2, 1, 2),
(10, 'Ella', NULL, 'Smith', 'ella@gmail.com', 2, NULL, 442266176, NULL, NULL, '2019-06-22 14:28:10', 4, 18, 3, 1, 1, 1),
(11, 'Ray', NULL, 'Nia', 'ray@gmail.com', 1, NULL, 1213122216, NULL, NULL, '2019-06-22 14:28:10', 4, 19, 3, 2, 1, 2),
(12, 'Paul', NULL, 'Cina', 'paul@gmail.com', 2, NULL, 1100771661, NULL, NULL, '2019-06-22 14:28:10', 1, 20, 1, 3, 1, 3);

-- --------------------------------------------------------

--
-- Table structure for table `jobSeekerQualification`
--

CREATE TABLE `jobSeekerQualification` (
  `jsQulificationId` int(11) NOT NULL,
  `jobSeekerId` int(11) NOT NULL,
  `qualificationId` int(11) NOT NULL,
  `topicId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `jobSeekerSkills`
--

CREATE TABLE `jobSeekerSkills` (
  `seekerSkillId` int(11) NOT NULL,
  `jobSeekerId` int(11) NOT NULL,
  `skillId` int(11) NOT NULL,
  `skillLevelId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `jobTitle`
--

CREATE TABLE `jobTitle` (
  `jobTitleId` int(11) NOT NULL,
  `jobTitle` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `jobTitle`
--

INSERT INTO `jobTitle` (`jobTitleId`, `jobTitle`) VALUES
(1, 'web designer'),
(2, 'database designer'),
(3, 'software developer'),
(4, 'database admin'),
(5, 'web developer'),
(6, 'database analyst'),
(7, 'software tester'),
(8, 'software architect');

-- --------------------------------------------------------

--
-- Table structure for table `loginInfo`
--

CREATE TABLE `loginInfo` (
  `loginId` int(11) NOT NULL,
  `username` varchar(60) NOT NULL,
  `password` varchar(256) NOT NULL,
  `role` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `loginInfo`
--

INSERT INTO `loginInfo` (`loginId`, `username`, `password`, `role`) VALUES
(1, 'Atlassian', '$2y$10$J7L6.UeX/KKw.1k.0mQgb.DPtBRdiPm6gGpyTTalGVe99cTpfa3/u', 'employer'),
(4, 'Xero', '$2y$10$vyTn9Liud3oXwzdy15MBIewUC/KWxnD4pmA1RQ5k86ku0tJrYXHtW', 'employer'),
(6, 'Envato', '$2y$10$ZyR0.ec3PvIdxiGEcfddL.l.ae3Svs0aelIGUfB35qxV2ScBr1s.C', 'employer'),
(7, 'Canva', '$2y$10$yB.2EeZ.79N4awYaFhFulOozCeFAeU30HxodULNYxnjoTasWVBeXu', 'employer'),
(8, 'Freelancer', '$2y$10$U9tHjkAwPag.guudaCs4TO2k606J32dqIxGY7Ff6PX5xSJlSch4O6', 'employer'),
(9, 'sam', '$2y$10$Ok4gERzzx19eodxgd07SHe1SW9IoUP4DIHXnVyEtDQLnnmc2Yh65i', 'job seeker'),
(10, 'anna', '$2y$10$YCbb8lJ/UKSofoRAafValuKKH5P.KPNS93iNTSpl4KEylcDDW9pPG', 'job seeker'),
(11, 'tina', '$2y$10$Fcvmx2mOAcDUvKgmkv8jPe.jUDzs8I37Dv9x0rpnaoOcLgQhF8ab2', 'job seeker'),
(12, 'jim', '$2y$10$UDPUTsq5lcsWrIqNCVWRVeJ6JbnWvtOGenzKPE0o2KALDHfoTyOLG', 'job seeker'),
(13, 'mani', '$2y$10$jLWyBs9Q.P3Tusf7J8iOXOdnAW/ZSj6m1MFmnq8v.DAem0DQ0A9tO', 'job seeker'),
(14, 'adrian', '$2y$10$agPvVj1xgnxym/9U8FaEfuESX2itUomNnvvbzqRJwxUR5xk.rgIaC', 'job seeker'),
(15, 'mel', '$2y$10$ghne5/ydAMWVq9eTfJGRNO7dA4F6AqMBSxJ5L5P76xSsRdDYq2jSa', 'job seeker'),
(16, 'aiden', '$2y$10$m3INL4RGn.vD8SKeSY4es.B3HIrQ//TR5P1vj8gEQs.Sbk3ZlXQpO', 'job seeker'),
(17, 'yaas', '$2y$10$TaEVBgcHxq9urb9jtCyP/O/mfSmxrf.2DknY41ySOFYcoCtEqw.PO', 'job seeker'),
(18, 'ella', '$2y$10$xHdk4kDyN58MdTqDfHJbm.P2dYqtdGBd3b2olh1DSJlPEfC4jlwfC', 'job seeker'),
(19, 'ray', '$2y$10$Rbrj5hPYVPR6lt6YVO8A1uq3kykn/2nCA8X1XRRf3NKlIbHW6b8Xq', 'job seeker'),
(20, 'paul', '$2y$10$ITFEzhM06UIrr95wESZuqOqQGszpWGcXKe13PZ0XkCTS6npk4MCkC', 'job seeker');

-- --------------------------------------------------------

--
-- Table structure for table `positions`
--

CREATE TABLE `positions` (
  `positionId` int(11) NOT NULL,
  `positionTitle` int(11) NOT NULL,
  `description` text,
  `responsibilities` text,
  `salaryRange` int(6) DEFAULT NULL,
  `contractTypeId` int(11) DEFAULT NULL,
  `visaStatusId` int(11) DEFAULT NULL,
  `visaPriority` int(1) DEFAULT NULL,
  `employerId` int(11) DEFAULT NULL,
  `positionQulification` int(11) NOT NULL,
  `qualificationPriority` int(1) DEFAULT NULL,
  `positionYearsOfExp` int(11) NOT NULL,
  `yearsPriority` int(1) DEFAULT NULL,
  `cityId` int(11) DEFAULT NULL,
  `countryId` int(11) DEFAULT NULL,
  `stateId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `positions`
--

INSERT INTO `positions` (`positionId`, `positionTitle`, `description`, `responsibilities`, `salaryRange`, `contractTypeId`, `visaStatusId`, `visaPriority`, `employerId`, `positionQulification`, `qualificationPriority`, `positionYearsOfExp`, `yearsPriority`, `cityId`, `countryId`, `stateId`) VALUES
(8, 3, 'Our company creates some of the world’s most cutting-edge software products, and we want you to be a part of our team. We are currently in search of an experienced Software Developer to create and maintain software, in-house hardware and network systems. The successful candidate will also help to develop critical products for our clients, and offer excellent technical support. This is a fantastic opportunity to engage in a positive and creative work environment that offers excellent benefits and flexible schedules.', 'Maintain and improve the performance of existing software\r\nClearly and regularly communicate with management and technical support colleagues\r\nDesign and update software database\r\nTest and maintain software products to ensure strong functionality and optimization\r\nRecommend improvements to existing software programs as necessary', 153000, 3, 4, 2, 5, 3, 1, 1, 1, 1, 1, 1),
(9, 3, 'Our company creates some of the world’s most cutting-edge software products, and we want you to be a part of our team. We are currently in search of an experienced Software Developer to create and maintain software, in-house hardware and network systems. The successful candidate will also help to develop critical products for our clients, and offer excellent technical support. This is a fantastic opportunity to engage in a positive and creative work environment that offers excellent benefits and flexible schedules.', 'Develop and implement new software programs\r\nClearly and regularly communicate with management and technical support colleagues\r\nDesign and update software database\r\nTest and maintain software products to ensure strong functionality and optimization\r\nRecommend improvements to existing software programs as necessary', 170000, 1, NULL, 4, 5, 4, 2, 4, 1, 4, 1, 4),
(10, 3, NULL, NULL, 100000, 1, NULL, 4, 6, 3, 2, 3, 3, 1, 1, 1),
(11, 3, NULL, NULL, 120000, 1, NULL, 5, 8, 4, 4, 7, 1, 2, 1, 2),
(12, 3, 'Our company creates some of the world’s most cutting-edge software products, and we want you to be a part of our team. We are currently in search of an experienced Software Developer to create and maintain software, in-house hardware and network systems. The successful candidate will also help to develop critical products for our clients, and offer excellent technical support. This is a fantastic opportunity to engage in a positive and creative work environment that offers excellent benefits and flexible schedules.', 'Develop and implement new software programs\r\nMaintain and improve the performance of existing software\r\nClearly and regularly communicate with management and technical support colleagues\r\nDesign and update software database\r\nRecommend improvements to existing software programs as necessary', 155000, 3, 4, 5, 8, 4, 2, 2, 2, 3, 1, 3),
(13, 3, NULL, NULL, 105000, 3, 3, 2, 8, 3, 2, 6, 3, 4, 1, 4),
(14, 3, NULL, NULL, 105000, 1, 2, 2, 8, 4, 1, 4, 4, 2, 1, 2),
(15, 3, 'Our company creates some of the world’s most cutting-edge software products, and we want you to be a part of our team. We are currently in search of an experienced Software Developer to create and maintain software, in-house hardware and network systems. The successful candidate will also help to develop critical products for our clients, and offer excellent technical support. This is a fantastic opportunity to engage in a positive and creative work environment that offers excellent benefits and flexible schedules.', 'Develop and implement new software programs\r\nMaintain and improve the performance of existing software\r\nClearly and regularly communicate with management and technical support colleagues\r\nDesign and update software database\r\nTest and maintain software products to ensure strong functionality and optimization', 160000, 3, 4, 1, 5, 5, 3, 10, 2, 2, 1, 2),
(16, 1, NULL, NULL, 70000, 3, 4, 5, 5, 3, 2, 1, 3, 1, 1, 1),
(17, 2, NULL, NULL, 130000, 1, NULL, 3, 5, 4, 1, 4, 2, 2, 1, 2),
(18, 4, 'Our consulting firm needs a reliable Database Administrator to join our team. We’re looking for a university graduate with journey-level skills and a desire to expand his or her skill set and experience. The ideal candidate will be able to function effectively with limited oversight and moderate on-site training. They should understand the importance of database integrity in terms of both efficiency and security. Our team includes some of the brightest minds in the industry and we hope to add you to our roster. We offer excellent benefits and a competitive salary as well as paid sick leave and annual leave.', 'Install server software\r\nConfigure database servers\r\nMonitor and maintain system health and security\r\nDesign backup processes for server and associated data\r\nCreate accounts for all users and assign security levels\r\nEstablish a disaster recovery protocol\r\nProvide end-to-end technical support and problem resolution\r\nSchedule and perform regular server maintenance\r\nCreate database management procedures\r\nEvaluate data analysis models and procedures\r\nParticipate in company’s cross-training program', 165000, 1, NULL, NULL, 6, 3, NULL, 3, NULL, 2, 1, 2),
(19, 5, NULL, NULL, 120000, 1, NULL, NULL, 8, 4, NULL, 7, NULL, 2, 1, 2),
(20, 6, NULL, NULL, 115000, 3, 4, 3, 8, 4, 2, 5, 1, 3, 1, 3),
(21, 7, NULL, NULL, 105000, 3, 3, NULL, 8, 3, NULL, 6, NULL, 4, 1, 4),
(22, 8, NULL, NULL, 105000, 1, 2, NULL, 8, 4, NULL, 4, NULL, 1, 1, 1),
(23, 5, '\r\nOur firm is seeking a creative Web Developer that can work with our software application team to achieve our business’ digital goals. The ideal candidate for this position is a hands-on professional with strong knowledge of content management platforms, and an ability to translate our business needs into client-friendly functions that will expand our website’s influence in our industry. The Web Developer will be responsible for updating our current online applications, as well as developing and implementing a usability testing process to insure that new website applications meet our company’s requirements.', 'Create applications that address the phases of SDLC (software development life cycle)\r\nDevelop comprehensive application testing procedures\r\nUpdate existing applications to meet the security and functionality standards as outlined in the company’s website policies\r\nImplement testing tools that monitor the ongoing performance of the company website\r\nAssist in updating application development policies to ensure that all future applications meet the latest technical requirements', 150000, 3, 4, NULL, 5, 5, NULL, 10, NULL, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `positionSkills`
--

CREATE TABLE `positionSkills` (
  `positionSkillId` int(11) NOT NULL,
  `positionId` int(11) NOT NULL,
  `skillId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `positionSkills`
--

INSERT INTO `positionSkills` (`positionSkillId`, `positionId`, `skillId`) VALUES
(1, 12, 1),
(2, 9, 2),
(3, 8, 1),
(4, 15, 1),
(5, 18, 2),
(6, 23, 1),
(7, 12, 5),
(8, 9, 3),
(9, 8, 2),
(10, 15, 4),
(11, 18, 5),
(12, 23, 3);

-- --------------------------------------------------------

--
-- Table structure for table `postalInfo`
--

CREATE TABLE `postalInfo` (
  `pIId` int(11) NOT NULL,
  `postcode` int(4) DEFAULT NULL,
  `suburb` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `postalInfo`
--

INSERT INTO `postalInfo` (`pIId`, `postcode`, `suburb`) VALUES
(1, 1234, 'wooloowin'),
(2, 2345, 'windsor'),
(3, 5678, 'newmarket');

-- --------------------------------------------------------

--
-- Table structure for table `priority`
--

CREATE TABLE `priority` (
  `valueId` int(1) NOT NULL,
  `value` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `priority`
--

INSERT INTO `priority` (`valueId`, `value`) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5);

-- --------------------------------------------------------

--
-- Table structure for table `qualifications`
--

CREATE TABLE `qualifications` (
  `qualificationId` int(11) NOT NULL,
  `type` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `qualifications`
--

INSERT INTO `qualifications` (`qualificationId`, `type`) VALUES
(1, 'certificate'),
(2, 'diploma'),
(3, 'bachelor'),
(4, 'master'),
(5, 'phd');

-- --------------------------------------------------------

--
-- Table structure for table `skillLevels`
--

CREATE TABLE `skillLevels` (
  `skillLevelId` int(11) NOT NULL,
  `skillLevel` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `skillLevels`
--

INSERT INTO `skillLevels` (`skillLevelId`, `skillLevel`) VALUES
(1, 'beginner'),
(2, 'Intermediated '),
(3, 'expert');

-- --------------------------------------------------------

--
-- Table structure for table `skills`
--

CREATE TABLE `skills` (
  `skillId` int(11) NOT NULL,
  `programmingLanguage` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `skills`
--

INSERT INTO `skills` (`skillId`, `programmingLanguage`) VALUES
(1, 'MYSQL'),
(2, 'PHP'),
(3, 'HTML'),
(4, 'CSS'),
(5, 'JS');

-- --------------------------------------------------------

--
-- Table structure for table `state`
--

CREATE TABLE `state` (
  `stateId` int(11) NOT NULL,
  `state` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `state`
--

INSERT INTO `state` (`stateId`, `state`) VALUES
(1, 'QLD'),
(2, 'NSW'),
(3, 'WA'),
(4, 'VIC'),
(5, 'Tehran'),
(6, 'New York');

-- --------------------------------------------------------

--
-- Table structure for table `visaStatus`
--

CREATE TABLE `visaStatus` (
  `visaStatusId` int(11) NOT NULL,
  `visaType` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `visaStatus`
--

INSERT INTO `visaStatus` (`visaStatusId`, `visaType`) VALUES
(1, 'student visa'),
(2, 'exchange visa'),
(3, 'work visa'),
(4, 'permanent visa');

-- --------------------------------------------------------

--
-- Table structure for table `yearOfExperience`
--

CREATE TABLE `yearOfExperience` (
  `yearsOfExperienceId` int(11) NOT NULL,
  `years` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `yearOfExperience`
--

INSERT INTO `yearOfExperience` (`yearsOfExperienceId`, `years`) VALUES
(1, 'graduate'),
(2, '1'),
(3, '2'),
(4, '3'),
(5, '4'),
(6, '5'),
(7, '6'),
(8, '7'),
(9, '8'),
(10, '9'),
(11, '10');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `areaOfQualification`
--
ALTER TABLE `areaOfQualification`
  ADD PRIMARY KEY (`topicId`);

--
-- Indexes for table `city`
--
ALTER TABLE `city`
  ADD PRIMARY KEY (`cityId`);

--
-- Indexes for table `contract`
--
ALTER TABLE `contract`
  ADD PRIMARY KEY (`contractTypeId`);

--
-- Indexes for table `country`
--
ALTER TABLE `country`
  ADD PRIMARY KEY (`countryId`);

--
-- Indexes for table `employer`
--
ALTER TABLE `employer`
  ADD PRIMARY KEY (`employerId`),
  ADD KEY `state` (`state`),
  ADD KEY `city` (`city`),
  ADD KEY `country` (`country`),
  ADD KEY `loginId` (`loginId`);

--
-- Indexes for table `employmentHistory`
--
ALTER TABLE `employmentHistory`
  ADD PRIMARY KEY (`empHistoryId`),
  ADD KEY `jobSeekerId` (`jobSeekerId`),
  ADD KEY `yearsOfExperienceId` (`yearsOfExperienceId`),
  ADD KEY `employmenthistory_ibfk_2` (`jobTitleId`),
  ADD KEY `contractTypeId` (`contractTypeId`);

--
-- Indexes for table `jobSeeker`
--
ALTER TABLE `jobSeeker`
  ADD PRIMARY KEY (`jobSeekerId`),
  ADD KEY `pIId` (`pIId`),
  ADD KEY `visaStatusId` (`visaStatusId`),
  ADD KEY `qualification` (`lastQualification`),
  ADD KEY `cityId` (`cityId`),
  ADD KEY `countryId` (`countryId`),
  ADD KEY `stateId` (`stateId`),
  ADD KEY `loginId` (`loginId`);

--
-- Indexes for table `jobSeekerQualification`
--
ALTER TABLE `jobSeekerQualification`
  ADD PRIMARY KEY (`jsQulificationId`),
  ADD KEY `jobSeekerId` (`jobSeekerId`),
  ADD KEY `qualificationId` (`qualificationId`),
  ADD KEY `topicId` (`topicId`);

--
-- Indexes for table `jobSeekerSkills`
--
ALTER TABLE `jobSeekerSkills`
  ADD PRIMARY KEY (`seekerSkillId`),
  ADD KEY `skillLevelId` (`skillLevelId`),
  ADD KEY `jobSeekerId` (`jobSeekerId`),
  ADD KEY `skillId` (`skillId`);

--
-- Indexes for table `jobTitle`
--
ALTER TABLE `jobTitle`
  ADD PRIMARY KEY (`jobTitleId`);

--
-- Indexes for table `loginInfo`
--
ALTER TABLE `loginInfo`
  ADD PRIMARY KEY (`loginId`);

--
-- Indexes for table `positions`
--
ALTER TABLE `positions`
  ADD PRIMARY KEY (`positionId`),
  ADD KEY `employerId` (`employerId`),
  ADD KEY `contractTypeId` (`contractTypeId`),
  ADD KEY `visaStatusId` (`visaStatusId`),
  ADD KEY `positionTitle` (`positionTitle`),
  ADD KEY `pqId` (`positionQulification`),
  ADD KEY `positionYearsOfExp` (`positionYearsOfExp`),
  ADD KEY `qualificationPriority` (`qualificationPriority`),
  ADD KEY `visaPriority` (`visaPriority`),
  ADD KEY `yearsPriority` (`yearsPriority`),
  ADD KEY `cityId` (`cityId`),
  ADD KEY `countryId` (`countryId`),
  ADD KEY `stateId` (`stateId`);

--
-- Indexes for table `positionSkills`
--
ALTER TABLE `positionSkills`
  ADD PRIMARY KEY (`positionSkillId`),
  ADD KEY `positionId` (`positionId`),
  ADD KEY `skillId` (`skillId`);

--
-- Indexes for table `postalInfo`
--
ALTER TABLE `postalInfo`
  ADD PRIMARY KEY (`pIId`);

--
-- Indexes for table `priority`
--
ALTER TABLE `priority`
  ADD PRIMARY KEY (`valueId`);

--
-- Indexes for table `qualifications`
--
ALTER TABLE `qualifications`
  ADD PRIMARY KEY (`qualificationId`);

--
-- Indexes for table `skillLevels`
--
ALTER TABLE `skillLevels`
  ADD PRIMARY KEY (`skillLevelId`);

--
-- Indexes for table `skills`
--
ALTER TABLE `skills`
  ADD PRIMARY KEY (`skillId`);

--
-- Indexes for table `state`
--
ALTER TABLE `state`
  ADD PRIMARY KEY (`stateId`);

--
-- Indexes for table `visaStatus`
--
ALTER TABLE `visaStatus`
  ADD PRIMARY KEY (`visaStatusId`);

--
-- Indexes for table `yearOfExperience`
--
ALTER TABLE `yearOfExperience`
  ADD PRIMARY KEY (`yearsOfExperienceId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `areaOfQualification`
--
ALTER TABLE `areaOfQualification`
  MODIFY `topicId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `city`
--
ALTER TABLE `city`
  MODIFY `cityId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `contract`
--
ALTER TABLE `contract`
  MODIFY `contractTypeId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `country`
--
ALTER TABLE `country`
  MODIFY `countryId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `employer`
--
ALTER TABLE `employer`
  MODIFY `employerId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `employmentHistory`
--
ALTER TABLE `employmentHistory`
  MODIFY `empHistoryId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `jobSeeker`
--
ALTER TABLE `jobSeeker`
  MODIFY `jobSeekerId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `jobSeekerQualification`
--
ALTER TABLE `jobSeekerQualification`
  MODIFY `jsQulificationId` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobSeekerSkills`
--
ALTER TABLE `jobSeekerSkills`
  MODIFY `seekerSkillId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `jobTitle`
--
ALTER TABLE `jobTitle`
  MODIFY `jobTitleId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `loginInfo`
--
ALTER TABLE `loginInfo`
  MODIFY `loginId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `positions`
--
ALTER TABLE `positions`
  MODIFY `positionId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `positionSkills`
--
ALTER TABLE `positionSkills`
  MODIFY `positionSkillId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `postalInfo`
--
ALTER TABLE `postalInfo`
  MODIFY `pIId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `priority`
--
ALTER TABLE `priority`
  MODIFY `valueId` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `qualifications`
--
ALTER TABLE `qualifications`
  MODIFY `qualificationId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `skillLevels`
--
ALTER TABLE `skillLevels`
  MODIFY `skillLevelId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `skills`
--
ALTER TABLE `skills`
  MODIFY `skillId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `state`
--
ALTER TABLE `state`
  MODIFY `stateId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `visaStatus`
--
ALTER TABLE `visaStatus`
  MODIFY `visaStatusId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `yearOfExperience`
--
ALTER TABLE `yearOfExperience`
  MODIFY `yearsOfExperienceId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `employer`
--
ALTER TABLE `employer`
  ADD CONSTRAINT `employer_ibfk_1` FOREIGN KEY (`state`) REFERENCES `state` (`stateId`),
  ADD CONSTRAINT `employer_ibfk_2` FOREIGN KEY (`city`) REFERENCES `city` (`cityId`),
  ADD CONSTRAINT `employer_ibfk_3` FOREIGN KEY (`country`) REFERENCES `country` (`countryId`),
  ADD CONSTRAINT `employer_ibfk_4` FOREIGN KEY (`loginId`) REFERENCES `loginInfo` (`loginId`);

--
-- Constraints for table `employmentHistory`
--
ALTER TABLE `employmentHistory`
  ADD CONSTRAINT `employmenthistory_ibfk_1` FOREIGN KEY (`jobSeekerId`) REFERENCES `jobSeeker` (`jobSeekerId`),
  ADD CONSTRAINT `employmenthistory_ibfk_2` FOREIGN KEY (`jobTitleId`) REFERENCES `jobTitle` (`jobTitleId`),
  ADD CONSTRAINT `employmenthistory_ibfk_3` FOREIGN KEY (`yearsOfExperienceId`) REFERENCES `yearOfExperience` (`yearsOfExperienceId`),
  ADD CONSTRAINT `employmenthistory_ibfk_4` FOREIGN KEY (`contractTypeId`) REFERENCES `contract` (`contractTypeId`);

--
-- Constraints for table `jobSeeker`
--
ALTER TABLE `jobSeeker`
  ADD CONSTRAINT `jobseeker_ibfk_10` FOREIGN KEY (`countryId`) REFERENCES `country` (`countryId`),
  ADD CONSTRAINT `jobseeker_ibfk_11` FOREIGN KEY (`stateId`) REFERENCES `state` (`stateId`),
  ADD CONSTRAINT `jobseeker_ibfk_12` FOREIGN KEY (`loginId`) REFERENCES `loginInfo` (`loginId`),
  ADD CONSTRAINT `jobseeker_ibfk_3` FOREIGN KEY (`pIId`) REFERENCES `postalInfo` (`pIId`),
  ADD CONSTRAINT `jobseeker_ibfk_7` FOREIGN KEY (`visaStatusId`) REFERENCES `visaStatus` (`visaStatusId`),
  ADD CONSTRAINT `jobseeker_ibfk_8` FOREIGN KEY (`lastQualification`) REFERENCES `qualifications` (`qualificationId`),
  ADD CONSTRAINT `jobseeker_ibfk_9` FOREIGN KEY (`cityId`) REFERENCES `city` (`cityId`);

--
-- Constraints for table `jobSeekerQualification`
--
ALTER TABLE `jobSeekerQualification`
  ADD CONSTRAINT `jobseekerqualification_ibfk_2` FOREIGN KEY (`qualificationId`) REFERENCES `qualifications` (`qualificationId`),
  ADD CONSTRAINT `jobseekerqualification_ibfk_3` FOREIGN KEY (`topicId`) REFERENCES `areaOfQualification` (`topicId`);

--
-- Constraints for table `jobSeekerSkills`
--
ALTER TABLE `jobSeekerSkills`
  ADD CONSTRAINT `jobseekerskills_ibfk_1` FOREIGN KEY (`skillLevelId`) REFERENCES `skillLevels` (`skillLevelId`),
  ADD CONSTRAINT `jobseekerskills_ibfk_2` FOREIGN KEY (`jobSeekerId`) REFERENCES `jobSeeker` (`jobSeekerId`),
  ADD CONSTRAINT `jobseekerskills_ibfk_3` FOREIGN KEY (`skillId`) REFERENCES `skills` (`skillId`);

--
-- Constraints for table `positions`
--
ALTER TABLE `positions`
  ADD CONSTRAINT `positions_ibfk_1` FOREIGN KEY (`employerId`) REFERENCES `employer` (`employerId`),
  ADD CONSTRAINT `positions_ibfk_10` FOREIGN KEY (`cityId`) REFERENCES `city` (`cityId`),
  ADD CONSTRAINT `positions_ibfk_11` FOREIGN KEY (`countryId`) REFERENCES `country` (`countryId`),
  ADD CONSTRAINT `positions_ibfk_12` FOREIGN KEY (`stateId`) REFERENCES `state` (`stateId`),
  ADD CONSTRAINT `positions_ibfk_2` FOREIGN KEY (`contractTypeId`) REFERENCES `contract` (`contractTypeId`),
  ADD CONSTRAINT `positions_ibfk_3` FOREIGN KEY (`visaStatusId`) REFERENCES `visaStatus` (`visaStatusId`),
  ADD CONSTRAINT `positions_ibfk_4` FOREIGN KEY (`positionTitle`) REFERENCES `jobTitle` (`jobTitleId`),
  ADD CONSTRAINT `positions_ibfk_5` FOREIGN KEY (`positionQulification`) REFERENCES `qualifications` (`qualificationId`),
  ADD CONSTRAINT `positions_ibfk_6` FOREIGN KEY (`positionYearsOfExp`) REFERENCES `yearOfExperience` (`yearsOfExperienceId`),
  ADD CONSTRAINT `positions_ibfk_7` FOREIGN KEY (`qualificationPriority`) REFERENCES `priority` (`valueId`),
  ADD CONSTRAINT `positions_ibfk_8` FOREIGN KEY (`visaPriority`) REFERENCES `priority` (`valueId`),
  ADD CONSTRAINT `positions_ibfk_9` FOREIGN KEY (`yearsPriority`) REFERENCES `priority` (`valueId`);

--
-- Constraints for table `positionSkills`
--
ALTER TABLE `positionSkills`
  ADD CONSTRAINT `positionskills_ibfk_1` FOREIGN KEY (`positionId`) REFERENCES `positions` (`positionId`),
  ADD CONSTRAINT `positionskills_ibfk_2` FOREIGN KEY (`skillId`) REFERENCES `skills` (`skillId`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
