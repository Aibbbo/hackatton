-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Дек 02 2023 г., 12:37
-- Версия сервера: 8.0.30
-- Версия PHP: 8.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `qwerty`
--

-- --------------------------------------------------------

--
-- Структура таблицы `olympiada`
--

CREATE TABLE `olympiada` (
  `full name` varchar(255) NOT NULL,
  `class` enum('7','8','9','10','11','12') NOT NULL,
  `full name of teacher` varchar(255) NOT NULL,
  `points` int DEFAULT NULL,
  `season` enum('Осень','Зима','Весна') NOT NULL,
  `subject` enum('Физика','Математика','Биология','Химия','Казахский язык','Русский язык','Английский язык','География') NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `olympiada`
--

INSERT INTO `olympiada` (`full name`, `class`, `full name of teacher`, `points`, `season`, `subject`) VALUES
('Омарова Амина', '10', 'Жанар Туякова ', NULL, 'Зима', 'Физика'),
('Камал Куаныш', '10', 'Серик Ахметов', NULL, 'Весна', 'Биология');

-- --------------------------------------------------------

--
-- Структура таблицы `project work`
--

CREATE TABLE `project work` (
  `uin` int NOT NULL,
  `full name` varchar(255) NOT NULL,
  `subject` enum('Техника','Физика','Химия','Биология','Астрофизика','Казахский язык','Русский язык','Английский язык','История Казахстана','Математика') NOT NULL,
  `theme` varchar(255) NOT NULL,
  `email` char(50) NOT NULL,
  `phone number` int NOT NULL,
  `full name in english` char(50) NOT NULL,
  `project` blob NOT NULL,
  `place` int DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
