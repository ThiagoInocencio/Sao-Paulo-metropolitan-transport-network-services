-- --------------------------------------------------------
-- Servidor:                     127.0.0.1
-- Versão do servidor:           10.1.25-MariaDB - mariadb.org binary distribution
-- OS do Servidor:               Win32
-- HeidiSQL Versão:              10.1.0.5464
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Copiando estrutura do banco de dados para spmtns
DROP DATABASE IF EXISTS `spmtns`;
CREATE DATABASE IF NOT EXISTS `spmtns` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `spmtns`;

-- Copiando estrutura para tabela spmtns.company
DROP TABLE IF EXISTS `company`;
CREATE TABLE IF NOT EXISTS `company` (
  `id_company` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  `short_name` varchar(15) NOT NULL,
  `phone_number` varchar(15) NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_company`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- Copiando estrutura para tabela spmtns.line
DROP TABLE IF EXISTS `line`;
CREATE TABLE IF NOT EXISTS `line` (
  `line_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `number` smallint(5) unsigned NOT NULL,
  `color` varchar(7) DEFAULT NULL,
  `id_company` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`line_id`,`id_company`),
  UNIQUE KEY `number_UNIQUE` (`number`),
  KEY `fk_line_company1_idx` (`id_company`),
  CONSTRAINT `fk_line_company1` FOREIGN KEY (`id_company`) REFERENCES `company` (`id_company`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- Copiando estrutura para tabela spmtns.line_station
DROP TABLE IF EXISTS `line_station`;
CREATE TABLE IF NOT EXISTS `line_station` (
  `station_id` int(11) NOT NULL,
  `line_id` int(11) NOT NULL,
  `latitude` double NOT NULL,
  `longitude` double NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`station_id`,`line_id`),
  KEY `fk_line_station_line1_idx` (`line_id`),
  CONSTRAINT `fk_line_station_line1` FOREIGN KEY (`line_id`) REFERENCES `line` (`line_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_line_station_station` FOREIGN KEY (`station_id`) REFERENCES `station` (`station_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Copiando estrutura para tabela spmtns.station
DROP TABLE IF EXISTS `station`;
CREATE TABLE IF NOT EXISTS `station` (
  `station_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`station_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
