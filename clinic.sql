-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 24, 2021 at 12:34 PM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `clinic`
--

-- --------------------------------------------------------

--
-- Table structure for table `excelfiles`
--

CREATE TABLE `excelfiles` (
  `id` int(11) NOT NULL,
  `ids` varchar(30) NOT NULL,
  `PaymentP` varchar(30) NOT NULL,
  `name` varchar(1000) NOT NULL,
  `type` varchar(30) NOT NULL,
  `Size` decimal(10,0) NOT NULL,
  `content` longblob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `excelfiles`
--

INSERT INTO `excelfiles` (`id`, `ids`, `PaymentP`, `name`, `type`, `Size`, `content`) VALUES
(1, '1', 'Administrator.php', 'teachers.csv', 'application/vnd.ms-excel', '76', ''),
(2, '1', 'Administrator.php', 'students.csv', 'application/vnd.ms-excel', '76', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_drugs`
--

CREATE TABLE `tbl_drugs` (
  `id` int(11) NOT NULL,
  `Name` varchar(300) NOT NULL,
  `DOE` varchar(300) NOT NULL,
  `Quantity` varchar(300) NOT NULL,
  `PurchasedPrice` varchar(300) NOT NULL,
  `RetailPrice` varchar(300) NOT NULL,
  `Strength` varchar(300) NOT NULL,
  `Medstype` varchar(300) NOT NULL,
  `Drugsremain` varchar(300) NOT NULL,
  `Marker` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_icd10`
--

CREATE TABLE `tbl_icd10` (
  `id` int(11) NOT NULL,
  `Diagnosisname` varchar(3000) NOT NULL,
  `Diagnosiscode` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_laboratory`
--

CREATE TABLE `tbl_laboratory` (
  `id` int(11) NOT NULL,
  `Patientid` varchar(30) NOT NULL,
  `Diseased` varchar(3000) NOT NULL,
  `Test_RBS` varchar(3000) NOT NULL,
  `Test_FBS` varchar(3000) NOT NULL,
  `Test_PBS` varchar(3000) NOT NULL,
  `Test_UCT` varchar(3000) NOT NULL,
  `Test_MRDT` varchar(3000) NOT NULL,
  `Test_FBC` varchar(3000) NOT NULL,
  `Test_TFT` varchar(3000) NOT NULL,
  `Test_LFT` varchar(3000) NOT NULL,
  `Patient_Complaint` varchar(3000) NOT NULL,
  `Patient_Story` varchar(3000) NOT NULL,
  `Test_comment` varchar(3000) NOT NULL,
  `Results` varchar(3000) NOT NULL,
  `Officer` varchar(300) NOT NULL,
  `Date` varchar(30) NOT NULL,
  `Status` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_labresults`
--

CREATE TABLE `tbl_labresults` (
  `id` int(11) NOT NULL,
  `Patientid` varchar(30) NOT NULL,
  `Testid` varchar(30) NOT NULL,
  `Status` varchar(30) NOT NULL,
  `Test_FBS` varchar(3000) NOT NULL,
  `FBS_Comment` varchar(3000) NOT NULL,
  `Test_RBS` varchar(3000) NOT NULL,
  `RBS_Comment` varchar(3000) NOT NULL,
  `Test_UCT` varchar(3000) NOT NULL,
  `UCT_Comment` varchar(3000) NOT NULL,
  `Test_PBS` varchar(3000) NOT NULL,
  `PBS_Comment` varchar(3000) NOT NULL,
  `Test_MRDT` varchar(3000) NOT NULL,
  `MRDT_Comment` varchar(3000) NOT NULL,
  `Test_FBC` varchar(3000) NOT NULL,
  `FBC_Comment` varchar(3000) NOT NULL,
  `Test_TFT` varchar(3000) NOT NULL,
  `TFT_Comment` varchar(3000) NOT NULL,
  `Test_LFT` varchar(3000) NOT NULL,
  `LFT_Comment` varchar(3000) NOT NULL,
  `Officer` varchar(300) NOT NULL,
  `Date` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_managementplan`
--

CREATE TABLE `tbl_managementplan` (
  `id` int(11) NOT NULL,
  `Resultsid` varchar(3000) NOT NULL,
  `Patientid` varchar(30) NOT NULL,
  `Management_plan` varchar(3000) NOT NULL,
  `Date` varchar(30) NOT NULL,
  `Status` varchar(3000) NOT NULL,
  `Plan` varchar(3000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_petients`
--

CREATE TABLE `tbl_petients` (
  `id` int(11) NOT NULL,
  `Mtitle` varchar(30) NOT NULL,
  `Firstname` varchar(300) NOT NULL,
  `Middlename` varchar(300) NOT NULL,
  `Sirname` varchar(300) NOT NULL,
  `Gender` varchar(30) NOT NULL,
  `Phone` varchar(30) NOT NULL,
  `NextKphone` varchar(300) NOT NULL,
  `DOB` varchar(300) NOT NULL,
  `Location` varchar(300) NOT NULL,
  `Relation` varchar(300) NOT NULL,
  `Guardian` varchar(300) NOT NULL,
  `Status` varchar(300) NOT NULL,
  `Status2` varchar(300) NOT NULL,
  `Date` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_readings`
--

CREATE TABLE `tbl_readings` (
  `id` int(11) NOT NULL,
  `Patientid` varchar(30) NOT NULL,
  `Date` varchar(300) NOT NULL,
  `Time` varchar(300) NOT NULL,
  `BodyT` varchar(3000) NOT NULL,
  `PulseRate` varchar(3000) NOT NULL,
  `RespirationRate` varchar(3000) NOT NULL,
  `SystolicBP` varchar(3000) NOT NULL,
  `DiastolicBP` varchar(3000) NOT NULL,
  `Oxygensaturation` varchar(3000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_transactions`
--

CREATE TABLE `tbl_transactions` (
  `id` int(11) NOT NULL,
  `Patientid` varchar(30) NOT NULL,
  `Drugname` varchar(3000) NOT NULL,
  `Quantity` varchar(3000) NOT NULL,
  `Unitprice` varchar(3000) NOT NULL,
  `Days` varchar(3000) NOT NULL,
  `Amount` varchar(3000) NOT NULL,
  `Totalcost` varchar(3000) NOT NULL,
  `Consultation_fee` varchar(3000) NOT NULL,
  `Lab_fee` varchar(3000) NOT NULL,
  `Payment` varchar(300) NOT NULL,
  `Scheme_id` varchar(3000) NOT NULL,
  `Date` varchar(300) NOT NULL,
  `Time` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_treatment`
--

CREATE TABLE `tbl_treatment` (
  `id` int(11) NOT NULL,
  `Resultsid` varchar(3000) NOT NULL,
  `Patientid` varchar(30) NOT NULL,
  `Drugid` varchar(3000) NOT NULL,
  `Quantity` varchar(3000) NOT NULL,
  `Timesperday` varchar(3000) NOT NULL,
  `Days` varchar(3000) NOT NULL,
  `Amount` varchar(3000) NOT NULL,
  `Prescribe_Comment` varchar(300) NOT NULL,
  `Date` varchar(30) NOT NULL,
  `Officer` varchar(3000) NOT NULL,
  `Status` varchar(3000) NOT NULL,
  `Progress` varchar(3000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_userlogs`
--

CREATE TABLE `tbl_userlogs` (
  `id` int(11) NOT NULL,
  `Userid` varchar(300) NOT NULL,
  `Machineip` varchar(300) NOT NULL,
  `Login` varchar(300) NOT NULL,
  `Logout` varchar(300) NOT NULL,
  `Activities` varchar(3000) NOT NULL,
  `Count` varchar(3000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_userlogs`
--

INSERT INTO `tbl_userlogs` (`id`, `Userid`, `Machineip`, `Login`, `Logout`, `Activities`, `Count`) VALUES
(1, '1', 'Q3-L4-W7-K1-I4-Z8', '24-04-2021 11:29:11 AM', '', '', '0'),
(2, '1', 'W0-H4-S9-W4-B9-C8', '24-04-2021 11:29:14 AM', '24-04-2021 11:31:03 AM', '', '0'),
(3, '2', 'V5-E0-B2-X3-T2-M9', '24-04-2021 11:31:15 AM', '24-04-2021 11:31:22 AM', '', '0'),
(4, '1', 'E6-T2-C5-U7-E1-U1', '24-04-2021 11:32:07 AM', '', '', '0'),
(5, '1', 'E3-X5-Z3-C7-Z8-B9', '24-04-2021 12:33:30 PM', '', '', '0');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_userprivilages`
--

CREATE TABLE `tbl_userprivilages` (
  `id` int(11) NOT NULL,
  `Userid` varchar(30) NOT NULL,
  `Adduser` varchar(3000) NOT NULL,
  `Manageuser` varchar(3000) NOT NULL,
  `Logactivities` varchar(3000) NOT NULL,
  `Addpatient` varchar(3000) NOT NULL,
  `Editpatient` varchar(3000) NOT NULL,
  `Managepatient` varchar(3000) NOT NULL,
  `Consultation` varchar(3000) NOT NULL,
  `Labaccess` varchar(3000) NOT NULL,
  `Accountaccess` varchar(3000) NOT NULL,
  `Givedrugs` varchar(3000) NOT NULL,
  `Adddrugs` varchar(300) NOT NULL,
  `Managedrugs` varchar(30) NOT NULL,
  `Todayssales` varchar(3000) NOT NULL,
  `Todaystreat` varchar(300) NOT NULL,
  `Monthlyreport` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_users`
--

CREATE TABLE `tbl_users` (
  `id` int(11) NOT NULL,
  `Firstname` varchar(300) NOT NULL,
  `Sirname` varchar(300) NOT NULL,
  `Mtitle` varchar(30) NOT NULL,
  `Pic_name` varchar(30) NOT NULL,
  `Phone` varchar(30) NOT NULL,
  `Email` varchar(300) NOT NULL,
  `Password` varchar(300) NOT NULL,
  `Role` varchar(30) NOT NULL,
  `State` varchar(30) NOT NULL,
  `Online` varchar(300) NOT NULL,
  `Time` bigint(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_users`
--

INSERT INTO `tbl_users` (`id`, `Firstname`, `Sirname`, `Mtitle`, `Pic_name`, `Phone`, `Email`, `Password`, `Role`, `State`, `Online`, `Time`) VALUES
(1, 'Patrick', 'Mvuma', 'Mr', '', '0999107724', 'admin@campcodes.com', 'admin', 'Medical Doctor', 'Super', 'Online', 1619260410),
(2, 'Hendry', 'Manganda', 'Dr', '', '0888876600', 'hmanganda@gmail.com', '12345', 'Clinician', '', 'Offline', 1619256675);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_vendors`
--

CREATE TABLE `tbl_vendors` (
  `id` int(11) NOT NULL,
  `Fullname` varchar(300) NOT NULL,
  `Drugid` varchar(300) NOT NULL,
  `Location` varchar(300) NOT NULL,
  `Phone` varchar(300) NOT NULL,
  `Email` varchar(300) NOT NULL,
  `DOP` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `excelfiles`
--
ALTER TABLE `excelfiles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_drugs`
--
ALTER TABLE `tbl_drugs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_icd10`
--
ALTER TABLE `tbl_icd10`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_laboratory`
--
ALTER TABLE `tbl_laboratory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_labresults`
--
ALTER TABLE `tbl_labresults`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_managementplan`
--
ALTER TABLE `tbl_managementplan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_petients`
--
ALTER TABLE `tbl_petients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_readings`
--
ALTER TABLE `tbl_readings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_transactions`
--
ALTER TABLE `tbl_transactions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_treatment`
--
ALTER TABLE `tbl_treatment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_userlogs`
--
ALTER TABLE `tbl_userlogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_userprivilages`
--
ALTER TABLE `tbl_userprivilages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_users`
--
ALTER TABLE `tbl_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_vendors`
--
ALTER TABLE `tbl_vendors`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `excelfiles`
--
ALTER TABLE `excelfiles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_drugs`
--
ALTER TABLE `tbl_drugs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_icd10`
--
ALTER TABLE `tbl_icd10`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_laboratory`
--
ALTER TABLE `tbl_laboratory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_labresults`
--
ALTER TABLE `tbl_labresults`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_managementplan`
--
ALTER TABLE `tbl_managementplan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_petients`
--
ALTER TABLE `tbl_petients`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_readings`
--
ALTER TABLE `tbl_readings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_transactions`
--
ALTER TABLE `tbl_transactions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_treatment`
--
ALTER TABLE `tbl_treatment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_userlogs`
--
ALTER TABLE `tbl_userlogs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_userprivilages`
--
ALTER TABLE `tbl_userprivilages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_users`
--
ALTER TABLE `tbl_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_vendors`
--
ALTER TABLE `tbl_vendors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
