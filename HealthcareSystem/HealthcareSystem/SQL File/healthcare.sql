
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `updationDate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `updationDate`) VALUES
(1, 'admin', 'adminpassword', '28-12-2016 11:42:05 AM');

-- --------------------------------------------------------

--
-- Table structure for table `appointment`
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `appointment`
--

INSERT INTO `appointment` (`id`, `doctorSpecialization`, `doctorId`, `userId`, `consultancyFees`, `appointmentDate`, `appointmentTime`, `postingDate`, `userStatus`, `doctorStatus`, `updationDate`) VALUES
(8, 'Barangay Health Worker (BHW)', 14, 8, 0, '2022-03-10', '11:45 AM', '2022-03-07 03:40:46', 0, 1, '2022-03-07 07:25:32'),
(9, 'Barangay Health Worker (BHW)', 12, 8, 0, '2022-03-10', '3:30 PM', '2022-03-07 07:25:22', 1, 0, '2022-03-07 07:27:06'),
(10, 'Barangay Health Worker (BHW)', 12, 8, 0, '2022-03-07', '3:52 PM', '2022-03-07 07:49:27', 1, 0, '2022-03-07 08:05:56'),
(11, 'Barangay Health Worker (BHW)', 12, 10, 0, '2022-03-07', '4:15 PM', '2022-03-07 08:10:53', 0, 1, '2022-03-07 08:11:05');

-- --------------------------------------------------------

--
-- Table structure for table `doctors`
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctors`
--

INSERT INTO `doctors` (`id`, `specilization`, `doctorName`, `address`, `docFees`, `contactno`, `docEmail`, `password`, `creationDate`, `updationDate`) VALUES
(12, 'Barangay Health Worker (BHW)', 'Florida Angeles', 'Brgy. Sta. Maria, Calauag, Quezon', '0', 9897675648, 'floridaangeles@gmail.com', '19d45f6d00955b83b6afc2599f792474', '2022-03-07 02:09:22', '2022-03-07 02:14:04'),
(13, 'Midwife', 'Gloria Pensica', 'Brgy. Sta. Maria, Calauag, Quezon', '0', 9123214564, 'gloriapensica@gmail.com', 'd4f0c85c907de00d051ec20beb64e24b', '2022-03-07 02:10:52', NULL),
(14, 'Barangay Health Worker (BHW)', 'Marlon Medez', 'Brgy. Sta. Maria, Calauag, Quezon', '0', 9876759087, 'marlonmedez@gmail.com', '0a63413f38077510c4f1cfca66e792b7', '2022-03-07 02:12:12', NULL),
(15, 'Barangay Health Worker (BHW)', 'Luisita Mapula', 'Brgy. Sta. Maria, Calauag, Quezon', '0', 9876123245, 'luisitamapula@gmail.com', 'f3e74c5eecf9ab428e0b36caceac0248', '2022-03-07 02:13:32', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `doctorslog`
--

CREATE TABLE `doctorslog` (
  `id` int(11) NOT NULL,
  `uid` int(11) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `userip` binary(16) DEFAULT NULL,
  `loginTime` timestamp NULL DEFAULT current_timestamp(),
  `logout` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctorslog`
--

INSERT INTO `doctorslog` (`id`, `uid`, `username`, `userip`, `loginTime`, `logout`, `status`) VALUES
(29, 12, 'floridaangeles@gmail.com', 0x3a3a3100000000000000000000000000, '2022-03-07 02:16:01', '07-03-2022 07:46:25 AM', 1),
(30, 12, 'floridaangeles@gmail.com', 0x3a3a3100000000000000000000000000, '2022-03-07 06:52:36', '07-03-2022 12:52:22 PM', 1),
(31, 12, 'floridaangeles@gmail.com', 0x3a3a3100000000000000000000000000, '2022-03-07 07:26:07', '07-03-2022 12:57:12 PM', 1),
(32, 12, 'floridaangeles@gmail.com', 0x3a3a3100000000000000000000000000, '2022-03-07 07:47:40', '07-03-2022 01:18:11 PM', 1),
(33, 12, 'floridaangeles@gmail.com', 0x3a3a3100000000000000000000000000, '2022-03-07 07:50:13', '07-03-2022 01:27:42 PM', 1),
(34, 12, 'floridaangeles@gmail.com', 0x3a3a3100000000000000000000000000, '2022-03-07 08:05:42', '07-03-2022 01:37:47 PM', 1);

-- --------------------------------------------------------

--
-- Table structure for table `doctorspecilization`
--

CREATE TABLE `doctorspecilization` (
  `id` int(11) NOT NULL,
  `specilization` varchar(255) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctorspecilization`
--

INSERT INTO `doctorspecilization` (`id`, `specilization`, `creationDate`, `updationDate`) VALUES
(14, 'Midwife', '2022-03-07 01:57:55', '2022-03-07 02:00:06'),
(15, 'Barangay Health Worker (BHW)', '2022-03-07 01:58:20', '2022-03-07 02:04:50');

-- --------------------------------------------------------

--
-- Table structure for table `tblcontactus`
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcontactus`
--

INSERT INTO `tblcontactus` (`id`, `fullname`, `email`, `contactno`, `message`, `PostingDate`, `AdminRemark`, `LastupdationDate`, `IsRead`) VALUES
(5, 'CK', 'ck@gmail.com', 9123456789, ' This is sample text.  This is sample text.  This is sample text.  This is sample text.  This is sample text.  This is sample text.  This is sample text.  This is sa This is sample text.  This is sample text.  This is sample text.  This is sample text.  This is sample text.  This is sample text.  This is sample text.  This is sample text.  This is sample text.  This is sample text.  This is sample text.  This is sample text.  This is sample text. mple text.  This is sample text.  This is sample text.  This is sample text. ', '2022-03-07 07:38:59', 'Done', '2022-03-07 07:42:58', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblmedicalhistory`
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblmedicalhistory`
--

INSERT INTO `tblmedicalhistory` (`ID`, `PatientID`, `BloodPressure`, `BloodSugar`, `Weight`, `Temperature`, `MedicalPres`, `CreationDate`) VALUES
(8, 7, '140/100', '130', '65kg', '36.5', 'High blood pressure', '2022-03-07 07:01:09'),
(10, 8, '120/90', '120', '53kg', '36.8', 'Pneumonia', '2022-03-07 07:14:55');

-- --------------------------------------------------------

--
-- Table structure for table `tblpatient`
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblpatient`
--

INSERT INTO `tblpatient` (`ID`, `Docid`, `PatientName`, `PatientContno`, `PatientEmail`, `PatientGender`, `PatientAdd`, `PatientAge`, `PatientMedhis`, `CreationDate`, `UpdationDate`) VALUES
(7, 12, 'Helen V. Nunez', 967875456, 'helennunez@gmail.com', 'Female', 'Brgy. Sta. Maria, Calauag, Quezon', 52, 'High blood Pressure', '2022-03-07 06:55:50', '2022-03-07 07:14:22'),
(8, 12, 'Roberto Garcia', 912673548, 'roberto32@gmail.com', 'Male', 'Brgy. Sta. Maria, Calauag, Quezon', 43, 'Pneumonia', '2022-03-07 07:13:58', '2022-03-07 07:14:11');

-- --------------------------------------------------------

--
-- Table structure for table `userlog`
--

CREATE TABLE `userlog` (
  `id` int(11) NOT NULL,
  `uid` int(11) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `userip` binary(16) DEFAULT NULL,
  `loginTime` timestamp NULL DEFAULT current_timestamp(),
  `logout` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userlog`
--

INSERT INTO `userlog` (`id`, `uid`, `username`, `userip`, `loginTime`, `logout`, `status`) VALUES
(30, 8, 'bnunez@gmail.com', 0x3a3a3100000000000000000000000000, '2022-03-07 02:18:53', '07-03-2022 07:49:16 AM', 1),
(31, 9, 'ck@gmail.com', 0x3a3a3100000000000000000000000000, '2022-03-07 02:21:52', '07-03-2022 07:51:55 AM', 1),
(32, NULL, 'ck@gmail.com', 0x3a3a3100000000000000000000000000, '2022-03-07 02:22:49', NULL, 0),
(33, 9, 'ck@gmail.com', 0x3a3a3100000000000000000000000000, '2022-03-07 02:23:06', '07-03-2022 07:53:54 AM', 1),
(34, 8, 'bnunez@gmail.com', 0x3a3a3100000000000000000000000000, '2022-03-07 03:40:28', '07-03-2022 09:11:02 AM', 1),
(35, 8, 'bnunez@gmail.com', 0x3a3a3100000000000000000000000000, '2022-03-07 07:24:54', '07-03-2022 12:55:49 PM', 1),
(36, NULL, 'bnunez@gmail.com', 0x3a3a3100000000000000000000000000, '2022-03-07 07:27:29', NULL, 0),
(37, 8, 'bnunez@gmail.com', 0x3a3a3100000000000000000000000000, '2022-03-07 07:27:51', '07-03-2022 01:06:19 PM', 1),
(38, NULL, 'bnunez@gmail.com', 0x3a3a3100000000000000000000000000, '2022-03-07 07:48:29', NULL, 0),
(39, NULL, 'admin', 0x3a3a3100000000000000000000000000, '2022-03-07 07:48:33', NULL, 0),
(40, 8, 'bnunez@gmail.com', 0x3a3a3100000000000000000000000000, '2022-03-07 07:48:46', '07-03-2022 01:19:52 PM', 1),
(41, 10, 'ck@gmail.com', 0x3a3a3100000000000000000000000000, '2022-03-07 08:10:34', '07-03-2022 01:41:45 PM', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `fullName`, `address`, `city`, `gender`, `email`, `password`, `regDate`, `updationDate`) VALUES
(8, 'Bernadette V. Nunez', 'Brgy. Sta. Maria', 'Calauag', 'Female', 'bnunez@gmail.com', 'ea861b886becbb42ed23e430f14cb392', '2022-03-07 02:18:31', NULL),
(10, 'CK', 'Calauag', 'Quezon', 'Female', 'ck@gmail.com', 'eab34989079969bf1b59022f3cdc1b8b', '2022-03-07 08:10:16', NULL);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `doctors`
--
ALTER TABLE `doctors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `doctorslog`
--
ALTER TABLE `doctorslog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `doctorspecilization`
--
ALTER TABLE `doctorspecilization`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `tblcontactus`
--
ALTER TABLE `tblcontactus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tblmedicalhistory`
--
ALTER TABLE `tblmedicalhistory`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tblpatient`
--
ALTER TABLE `tblpatient`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `userlog`
--
ALTER TABLE `userlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

