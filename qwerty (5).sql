-- phpMyAdmin SQL Dump
-- version 6.0.0-dev
-- https://www.phpmyadmin.net/
--
-- Host: 192.168.30.22
-- Generation Time: Dec 01, 2023 at 10:21 AM
-- Server version: 10.4.8-MariaDB-1:10.4.8+maria~stretch-log
-- PHP Version: 8.2.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `qwerty`
--

-- --------------------------------------------------------

--
-- Table structure for table `olympiada`
--

CREATE TABLE `olympiada` (
  `ФИО` varchar(255) NOT NULL,
  `Класс` enum('7','8','9','10','11','12') NOT NULL,
  `ФИО Учителя` varchar(255) NOT NULL,
  `Баллы` int(3) NOT NULL,
  `Сезон` enum('Осень','Зима','Весна') NOT NULL,
  `Предмет` enum('Физика','Математика','Биология','Химия','Казахский язык','Русский язык','Английский язык','География') NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `project work`
--

CREATE TABLE `project work` (
  `ИИН` int(14) NOT NULL,
  `ФИО` varchar(255) NOT NULL,
  `Предметное направление` enum('Техника','Физика','Химия','Биология','Астрофизика','Казахский язык','Русский язык','Английский язык','История Казахстана','Математика') NOT NULL,
  `Тема проекта` varchar(255) NOT NULL,
  `Электронная почта` char(50) NOT NULL,
  `Номер телефона` int(13) NOT NULL,
  `Фамилия и имя на латинице` char(50) NOT NULL,
  `Проект ввиде файла` blob NOT NULL,
  `Место` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
