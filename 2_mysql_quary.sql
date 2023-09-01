-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.4.25-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win64
-- HeidiSQL Version:             12.0.0.6468
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for 2_mysql_query
CREATE DATABASE IF NOT EXISTS `2_mysql_query` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE `2_mysql_query`;

-- Dumping structure for table 2_mysql_query.tb_mahasiswa
CREATE TABLE IF NOT EXISTS `tb_mahasiswa` (
  `mhs_id` int(11) NOT NULL AUTO_INCREMENT,
  `mhs_nim` varchar(50) DEFAULT NULL,
  `mhs_name` varchar(150) DEFAULT NULL,
  `mhs_angkatan` year(4) DEFAULT NULL,
  PRIMARY KEY (`mhs_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table 2_mysql_query.tb_mahasiswa: ~5 rows (approximately)
DELETE FROM `tb_mahasiswa`;
INSERT INTO `tb_mahasiswa` (`mhs_id`, `mhs_nim`, `mhs_name`, `mhs_angkatan`) VALUES
	(1, '20180001', 'Jono', '2018'),
	(2, '20180002', 'Taufik', '2018'),
	(3, '20180003', 'Maria', '2018'),
	(4, '20190001', 'Sari', '2019'),
	(5, '20190002', 'Bambag', '2019');

-- Dumping structure for table 2_mysql_query.tb_mahasiswa_nilai
CREATE TABLE IF NOT EXISTS `tb_mahasiswa_nilai` (
  `mhs_nilai_id` int(11) NOT NULL AUTO_INCREMENT,
  `mhs_id` int(11) NOT NULL DEFAULT 0,
  `mk_id` int(11) NOT NULL DEFAULT 0,
  `nilai` float NOT NULL DEFAULT 0,
  PRIMARY KEY (`mhs_nilai_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table 2_mysql_query.tb_mahasiswa_nilai: ~7 rows (approximately)
DELETE FROM `tb_mahasiswa_nilai`;
INSERT INTO `tb_mahasiswa_nilai` (`mhs_nilai_id`, `mhs_id`, `mk_id`, `nilai`) VALUES
	(1, 1, 1, 70),
	(2, 1, 1, 80),
	(3, 2, 1, 82),
	(4, 2, 2, 74),
	(5, 4, 1, 76),
	(6, 4, 2, 80),
	(7, 5, 1, 60);

-- Dumping structure for table 2_mysql_query.tb_matakuliah
CREATE TABLE IF NOT EXISTS `tb_matakuliah` (
  `mk_id` int(11) NOT NULL AUTO_INCREMENT,
  `mk_kode` varchar(10) DEFAULT NULL,
  `mk_sks` varchar(10) DEFAULT NULL,
  `mk_name` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`mk_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table 2_mysql_query.tb_matakuliah: ~0 rows (approximately)
DELETE FROM `tb_matakuliah`;
INSERT INTO `tb_matakuliah` (`mk_id`, `mk_kode`, `mk_sks`, `mk_name`) VALUES
	(1, 'MK202', '3', 'OPP'),
	(2, 'MK303', '2', 'Basis Data');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
