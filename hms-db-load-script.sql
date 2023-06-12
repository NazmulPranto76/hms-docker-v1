USE hms;
CREATE TABLE IF NOT EXISTS `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `updationDate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE IF NOT EXISTS `appointment` (
  `id` int(11) NOT NULL,
  `doctorSpecialization` varchar(255) DEFAULT NULL,
  `doctorId` int(11) DEFAULT NULL,
  `userId` int(11) DEFAULT NULL,
  `consultancyFees` int(11) DEFAULT NULL,
  `appointmentDate` varchar(255) DEFAULT NULL,
  `appointmentTime` varchar(255) DEFAULT NULL,
  `userStatus` int(11) DEFAULT NULL,
  `doctorStatus` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE IF NOT EXISTS `doctors` (
  `id` int(11) NOT NULL,
  `specilization` varchar(255) DEFAULT NULL,
  `doctorName` varchar(255) DEFAULT NULL,
  `address` longtext DEFAULT NULL,
  `docFees` varchar(255) DEFAULT NULL,
  `contactno` bigint(11) DEFAULT NULL,
  `docEmail` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


CREATE TABLE IF NOT EXISTS `doctorslog` (
  `id` int(11) NOT NULL,
  `uid` int(11) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `userip` binary(16) DEFAULT NULL,
  `logout` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


CREATE TABLE IF NOT EXISTS `doctorspecilization` (
  `id` int(11) NOT NULL,
  `specilization` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE IF NOT EXISTS `tblcontactus` (
  `id` int(11) NOT NULL,
  `fullname` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `contactno` bigint(12) DEFAULT NULL,
  `message` mediumtext DEFAULT NULL,
  `AdminRemark` mediumtext DEFAULT NULL,
  `IsRead` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE IF NOT EXISTS `tblmedicalhistory` (
  `ID` int(10) NOT NULL,
  `PatientID` int(10) DEFAULT NULL,
  `BloodPressure` varchar(200) DEFAULT NULL,
  `BloodSugar` varchar(200) NOT NULL,
  `Weight` varchar(100) DEFAULT NULL,
  `Temperature` varchar(200) DEFAULT NULL,
  `MedicalPres` mediumtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE IF NOT EXISTS `tblpage` (
  `ID` int(10) NOT NULL,
  `PageType` varchar(200) DEFAULT NULL,
  `PageTitle` varchar(200) DEFAULT NULL,
  `PageDescription` mediumtext DEFAULT NULL,
  `Email` varchar(120) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `OpenningTime` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


CREATE TABLE IF NOT EXISTS `tblpatient` (
  `ID` int(10) NOT NULL,
  `Docid` int(10) DEFAULT NULL,
  `PatientName` varchar(200) DEFAULT NULL,
  `PatientContno` bigint(10) DEFAULT NULL,
  `PatientEmail` varchar(200) DEFAULT NULL,
  `PatientGender` varchar(50) DEFAULT NULL,
  `PatientAdd` mediumtext DEFAULT NULL,
  `PatientAge` int(10) DEFAULT NULL,
  `PatientMedhis` mediumtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE IF NOT EXISTS `userlog` (
  `id` int(11) NOT NULL,
  `uid` int(11) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `userip` binary(16) DEFAULT NULL,
  `logout` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL,
  `fullName` varchar(255) DEFAULT NULL,
  `address` longtext DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `appointment`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `doctors`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `doctorslog`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `doctorspecilization`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `tblcontactus`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `tblmedicalhistory`
  ADD PRIMARY KEY (`ID`);

ALTER TABLE `tblpage`
  ADD PRIMARY KEY (`ID`);

ALTER TABLE `tblpatient`
  ADD PRIMARY KEY (`ID`);

ALTER TABLE `userlog`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `email` (`email`);

ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

ALTER TABLE `appointment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

ALTER TABLE `doctors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

ALTER TABLE `doctorslog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

ALTER TABLE `doctorspecilization`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

ALTER TABLE `tblcontactus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

ALTER TABLE `tblmedicalhistory`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

ALTER TABLE `tblpage`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

ALTER TABLE `tblpatient`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

ALTER TABLE `userlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;
