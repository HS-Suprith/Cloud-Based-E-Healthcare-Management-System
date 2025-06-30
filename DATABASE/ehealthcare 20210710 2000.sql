-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.0.22-community-nt


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema ehealthcare
--

CREATE DATABASE IF NOT EXISTS ehealthcare;
USE ehealthcare;

--
-- Definition of table `data_files`
--

DROP TABLE IF EXISTS `data_files`;
CREATE TABLE `data_files` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `pid` varchar(45) NOT NULL,
  `pname` varchar(45) NOT NULL,
  `enc_data` longblob NOT NULL,
  `dkey` longtext NOT NULL,
  `time` varchar(45) NOT NULL,
  `filename` longtext NOT NULL,
  `data` longblob NOT NULL,
  `enc_time` varchar(85) NOT NULL,
  `age` varchar(45) NOT NULL,
  `blood_group` varchar(45) NOT NULL,
  `occupation` varchar(45) NOT NULL,
  `height` varchar(45) NOT NULL,
  `weight` varchar(45) NOT NULL,
  `blood_pressure` varchar(45) NOT NULL,
  `blood_sugar` varchar(45) NOT NULL,
  `department` varchar(45) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `data_files`
--

/*!40000 ALTER TABLE `data_files` DISABLE KEYS */;
INSERT INTO `data_files` (`id`,`pid`,`pname`,`enc_data`,`dkey`,`time`,`filename`,`data`,`enc_time`,`age`,`blood_group`,`occupation`,`height`,`weight`,`blood_pressure`,`blood_sugar`,`department`) VALUES 
 (1,'1','abdul',0x6C354B625941535733554D3371642B694A3856364B37724575387131455441383653507A67365A4575527657664E696D76414171386E6762732B2B45444F4B7233527679365255326D3352580D0A3148444F4748736A41414E77307A54775A49485663525A6261564F5A782F6E3549566858644A7A73506B4C774D476F44564E6B6F4B4C6A7752567776314D446863354752374C34327A3534490D0A2B6C49596A477670432B6474713574632F742F6C787642677A6E46532B72672F704A4F4E5037622F447A2B34336A4B463259574C6E663457456B5737674939764B48774859646C4554386C4A0D0A644242567538764A5375483473355677736B5350596F447468494A47665A45654F59437853685A6F446B484E6556565841513D3D,'X3iJx0ABqN5gEZSKJqWgtA==','2021/07/09 17:06:40','test.txt',0x4F6E65206F6620746865206D6F737420776964656C7920757365642070726F6772616D6D696E67206C616E6775616765732C0A4A617661206973207573656420617320746865207365727665722D73696465206C616E677561676520666F72206D6F7374206261636B2D656E640A646576656C6F706D656E742070726F6A656374732C20696E636C7564696E672074686F736520696E766F6C76696E672062696720646174610A616E6420416E64726F696420646576656C6F706D656E742E0A,'1074.0','22','B+ve','72','176 cm','58 kg','120 mg/dl','132 mg','Cardiology'),
 (2,'2','Hadhi',0x3566506F5167504571465163314A36554A6C696953356C416B373775445837766642523273505245644D646557366930374C7A6E376844746E566849434A2B724C6F414C575937654D4255300D0A4D2B616430616D4D4957544A53506F662F7579722B69426835465164674D65484676464E4A347169596A612B4A32696172435A565459464B6E53317873774844363142532F576B71346472330D0A78626A57576350526D2F62534C47392B76786B7467496B4575526B5951576E374D5434412F3863736A65514934544F533651634A4A504773535636383278613230626A42646C4D464D4941320D0A4874796D3775496C614F744C2B6E474E2B356D39306750526A726F7456364555526C637678715A4D796D2B6A786B542F47673D3D,'yEYHd+de46L3pv8A7iER2A==','2021/07/10 17:05:20','laptop.txt',0x54686520323032302044656C6C205850532031352069732061206E6561722D696465616C2031352E362D696E6368206465736B746F702D7265706C6163656D656E74206C6170746F702E0A49747320736C65656B2064657369676E2C206661737420706572666F726D616E63652C20616E6420726F62757374206665617475726520736574206D616B65206974206F757220746F700A7069636B20616D6F6E67207072656D69756D2057696E646F7773206F7074696F6E73206174206974732073697A652E0A,'9342.0','22','B+ve','72','176 cm','58 kg','120 mg/dl','132 mg','Dermatology');
INSERT INTO `data_files` (`id`,`pid`,`pname`,`enc_data`,`dkey`,`time`,`filename`,`data`,`enc_time`,`age`,`blood_group`,`occupation`,`height`,`weight`,`blood_pressure`,`blood_sugar`,`department`) VALUES 
 (3,'1','abdul',0x473132654C49792F6F563236324544474B7934477139674A76724E697566674B593137784130396A5379647071486E36444B79484A4477345058594C587371455845376731785A38642F52690D0A497A3133354772585961774E706475755A525734417977332F5666567945766E44576F51323065724C2F705067655A6F595A566C7375705949786E666F776F6C5374476D437354566B6A35310D0A76686169497A316252322F3838653461474C333135774C33472B45797471556D7648546A745764687556486B6C68657038516D6B75376578622F2B686A4B36712F2B65326C675635627A364F0D0A324D7255333946794B6E39732B66522F614761354F2B676A69352B743154366632387561487A4F7459415466324D5964484A456A7450596E49464869307A5533683765386372446849624A420D0A4748363962436D4C744265426672473532594C5A4B4967794B396F4B76717143396B445A70413D3D,'3BJmzs9opbfHxnTKmBFMTg==','2021/07/10 19:44:37','mobile.txt',0x47616C617879204D33317320283647422052414D290A0A534D5F4D333137465A42440A0A576973686C6973740A0A4E6F20436F737420454D49207374617274732066726F6D2052732E20313934342E3333206D6F6E74682E0A5374616E6461726420454D49207374617274732066726F6D2052732E203834382E3433206D6F6E74682E0A36344D5020517561642043616D65726120776974682053696E676C652054616B650A537570657220414D4F4C454420496E66696E6974795F4F20446973706C61790A36303030206D416820426174746572792C2032355720696E2D626F78204661737420436861726765720A,'1434.0','22','B+ve','72','176 cm','58 kg','120 mg/dl','132 mg','Dermatology');
/*!40000 ALTER TABLE `data_files` ENABLE KEYS */;


--
-- Definition of table `doctor_reg`
--

DROP TABLE IF EXISTS `doctor_reg`;
CREATE TABLE `doctor_reg` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `name` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `dob` varchar(45) NOT NULL,
  `gender` varchar(45) NOT NULL,
  `phone` varchar(45) NOT NULL,
  `address` varchar(500) NOT NULL,
  `password` varchar(45) NOT NULL,
  `department` varchar(45) NOT NULL,
  `status` varchar(45) NOT NULL default 'waiting',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctor_reg`
--

/*!40000 ALTER TABLE `doctor_reg` DISABLE KEYS */;
INSERT INTO `doctor_reg` (`id`,`name`,`email`,`dob`,`gender`,`phone`,`address`,`password`,`department`,`status`) VALUES 
 (1,'abdul','abdulhathi.jpinfotech@gmail.com','1999-03-22','Male','6383527549','Pondicherry','abd','Cardiology','Approved'),
 (2,'Hadhi','abdulhadhi223@gmail.com','1999-03-22','Male','6383527549','Pondicherry','abd','Dermatology','Approved');
/*!40000 ALTER TABLE `doctor_reg` ENABLE KEYS */;


--
-- Definition of table `download`
--

DROP TABLE IF EXISTS `download`;
CREATE TABLE `download` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `did` varchar(45) NOT NULL,
  `dname` varchar(45) NOT NULL,
  `filename` varchar(45) NOT NULL,
  `time` datetime NOT NULL,
  `fileid` varchar(45) NOT NULL,
  `pname` varchar(45) NOT NULL,
  `pid` varchar(45) NOT NULL,
  `decrypt_time` varchar(45) NOT NULL,
  `department` varchar(45) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `download`
--

/*!40000 ALTER TABLE `download` DISABLE KEYS */;
INSERT INTO `download` (`id`,`did`,`dname`,`filename`,`time`,`fileid`,`pname`,`pid`,`decrypt_time`,`department`) VALUES 
 (1,'1','abdul','test.txt','2021-07-10 16:52:17','1','abdul','1','16938.0','Cardiology'),
 (2,'2','Hadhi','laptop.txt','2021-07-10 17:07:03','2','Hadhi','2','352.0','Dermatology');
/*!40000 ALTER TABLE `download` ENABLE KEYS */;


--
-- Definition of table `encrypted_details`
--

DROP TABLE IF EXISTS `encrypted_details`;
CREATE TABLE `encrypted_details` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `pid` varchar(45) NOT NULL,
  `pname` varchar(45) NOT NULL,
  `age` varchar(45) NOT NULL,
  `blood_group` varchar(45) NOT NULL,
  `heart_rate` varchar(45) NOT NULL,
  `height` varchar(45) NOT NULL,
  `weight` varchar(45) NOT NULL,
  `blood_pressure` varchar(45) NOT NULL,
  `blood_sugar` varchar(45) NOT NULL,
  `department` varchar(45) NOT NULL,
  `dkey` varchar(85) NOT NULL,
  `filename` varchar(85) NOT NULL,
  `time` varchar(45) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `encrypted_details`
--

/*!40000 ALTER TABLE `encrypted_details` DISABLE KEYS */;
INSERT INTO `encrypted_details` (`id`,`pid`,`pname`,`age`,`blood_group`,`heart_rate`,`height`,`weight`,`blood_pressure`,`blood_sugar`,`department`,`dkey`,`filename`,`time`) VALUES 
 (1,'1','abdul','+kZeoR5bdKQ=','XXUs1+cf0+A=','xVYq+at9d6A=','mmz4oVhaau8=','S7R2Zn4SEKU=','QWAhcHE6dEPQs8x66sD/FQ==','pHeBE2EUw6c=','Cardiology','X3iJx0ABqN5gEZSKJqWgtA==','test.txt','2021/07/09 17:06:40'),
 (2,'2','Hadhi','+kZeoR5bdKQ=','XXUs1+cf0+A=','xVYq+at9d6A=','mmz4oVhaau8=','S7R2Zn4SEKU=','QWAhcHE6dEPQs8x66sD/FQ==','pHeBE2EUw6c=','Dermatology','yEYHd+de46L3pv8A7iER2A==','laptop.txt','2021/07/10 17:05:20'),
 (3,'1','abdul','+kZeoR5bdKQ=','XXUs1+cf0+A=','xVYq+at9d6A=','mmz4oVhaau8=','S7R2Zn4SEKU=','QWAhcHE6dEPQs8x66sD/FQ==','pHeBE2EUw6c=','Dermatology','3BJmzs9opbfHxnTKmBFMTg==','mobile.txt','2021/07/10 19:44:37');
/*!40000 ALTER TABLE `encrypted_details` ENABLE KEYS */;


--
-- Definition of table `patient_reg`
--

DROP TABLE IF EXISTS `patient_reg`;
CREATE TABLE `patient_reg` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `name` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `dob` varchar(45) NOT NULL,
  `gender` varchar(45) NOT NULL,
  `phone` varchar(45) NOT NULL,
  `address` varchar(500) NOT NULL,
  `password` varchar(45) NOT NULL,
  `age` varchar(45) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `patient_reg`
--

/*!40000 ALTER TABLE `patient_reg` DISABLE KEYS */;
INSERT INTO `patient_reg` (`id`,`name`,`email`,`dob`,`gender`,`phone`,`address`,`password`,`age`) VALUES 
 (1,'abdul','abdulhathi.jpinfotech@gmail.com','1999-03-22','Male','6383527549','Pondicherry','abd','22'),
 (2,'Hadhi','abdulhadhi223@gmail.com','1999-03-22','Male','6383527549','Pondicherry','abd','22');
/*!40000 ALTER TABLE `patient_reg` ENABLE KEYS */;


--
-- Definition of table `request`
--

DROP TABLE IF EXISTS `request`;
CREATE TABLE `request` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `filename` varchar(45) NOT NULL,
  `time` varchar(45) NOT NULL,
  `did` varchar(45) NOT NULL,
  `dname` varchar(45) NOT NULL,
  `dmail` varchar(45) NOT NULL,
  `department` varchar(45) NOT NULL,
  `status` varchar(45) NOT NULL,
  `pid` varchar(45) NOT NULL,
  `pname` varchar(45) NOT NULL,
  `dkey` varchar(45) NOT NULL,
  `fid` varchar(45) NOT NULL,
  `utime` varchar(45) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `request`
--

/*!40000 ALTER TABLE `request` DISABLE KEYS */;
INSERT INTO `request` (`id`,`filename`,`time`,`did`,`dname`,`dmail`,`department`,`status`,`pid`,`pname`,`dkey`,`fid`,`utime`) VALUES 
 (1,'test.txt','2021/07/10 16:40:28','1','abdul','abdulhathi.jpinfotech@gmail.com','Cardiology','Approved','1','abdul','X3iJx0ABqN5gEZSKJqWgtA==','1','2021/07/09 17:06:40'),
 (2,'laptop.txt','2021/07/10 17:06:02','2','Hadhi','abdulhadhi223@gmail.com','Dermatology','Approved','2','Hadhi','yEYHd+de46L3pv8A7iER2A==','2','2021/07/10 17:05:20'),
 (3,'mobile.txt','2021/07/10 19:46:15','2','Hadhi','abdulhadhi223@gmail.com','Dermatology','Approved','1','abdul','3BJmzs9opbfHxnTKmBFMTg==','3','2021/07/10 19:44:37');
/*!40000 ALTER TABLE `request` ENABLE KEYS */;


--
-- Definition of table `search_token`
--

DROP TABLE IF EXISTS `search_token`;
CREATE TABLE `search_token` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `did` varchar(45) NOT NULL,
  `dname` varchar(45) NOT NULL,
  `time` varchar(45) NOT NULL,
  `status` varchar(45) NOT NULL,
  `search_token` varchar(45) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `search_token`
--

/*!40000 ALTER TABLE `search_token` DISABLE KEYS */;
INSERT INTO `search_token` (`id`,`did`,`dname`,`time`,`status`,`search_token`) VALUES 
 (1,'1','abdul','2021/07/10 16:36:34','Approved','F90535'),
 (2,'2','Hadhi','2021/07/10 17:03:56','Approved','F98866');
/*!40000 ALTER TABLE `search_token` ENABLE KEYS */;




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;