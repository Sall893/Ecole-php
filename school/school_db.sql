-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : jeu. 18 juil. 2024 à 18:50
-- Version du serveur : 10.4.32-MariaDB
-- Version de PHP : 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `school_db`
--

-- --------------------------------------------------------

--
-- Structure de la table `answered_tests`
--

CREATE TABLE `answered_tests` (
  `id` bigint(20) NOT NULL,
  `user_id` varchar(60) NOT NULL,
  `test_id` varchar(60) NOT NULL,
  `submitted` tinyint(1) NOT NULL DEFAULT 0,
  `submitted_date` datetime DEFAULT NULL,
  `marked` tinyint(1) NOT NULL DEFAULT 0,
  `marked_by` varchar(60) DEFAULT NULL,
  `marked_date` datetime DEFAULT NULL,
  `score` tinyint(3) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `answered_tests`
--

INSERT INTO `answered_tests` (`id`, `user_id`, `test_id`, `submitted`, `submitted_date`, `marked`, `marked_by`, `marked_date`, `score`, `date`) VALUES
(1, 'abdou.lo', 'V7CYsLnUdFHihrKfu7l3BFp0Un0KqJ5tWGeBtqyVZoFotTAWallpUABQXSow', 1, '2024-09-25 22:13:04', 1, 'cherif.tine', '2024-09-20 20:26:01', 50, '2024-09-09 11:02:49'),
(2, 'malal.dia', '04lUA76aT5mQwP89hZ7ER7TeiEUFfWFH6JPVZNzgMDTkPowUudnv0O1gaIi2', 1, '2024-07-18 18:44:01', 0, NULL, NULL, 0, '2024-07-18 18:43:53'),
(3, 'moumi.mbaye', '7P00yuQL8IHiGRiA20B7l5hzssAQMhYms6Ti9IVjlABUCt9FiBYNWqy5rbfr', 1, '2024-07-18 18:45:18', 0, NULL, NULL, 0, '2024-07-18 18:44:52'),
(4, 'anta.diagne', '04lUA76aT5mQwP89hZ7ER7TeiEUFfWFH6JPVZNzgMDTkPowUudnv0O1gaIi2', 1, '2024-07-18 18:45:55', 0, NULL, NULL, 0, '2024-07-18 18:45:51');

-- --------------------------------------------------------

--
-- Structure de la table `answers`
--

CREATE TABLE `answers` (
  `id` bigint(20) NOT NULL,
  `user_id` varchar(60) NOT NULL,
  `test_id` varchar(60) NOT NULL,
  `question_id` int(11) NOT NULL,
  `answer` text DEFAULT NULL,
  `date` datetime NOT NULL,
  `answer_mark` tinyint(1) NOT NULL DEFAULT 0,
  `answer_comment` varchar(1024) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `answers`
--

INSERT INTO `answers` (`id`, `user_id`, `test_id`, `question_id`, `answer`, `date`, `answer_mark`, `answer_comment`) VALUES
(1, 'abdou.lo', 'V7CYsLnUdFHihrKfu7l3BFp0Un0KqJ5tWGeBtqyVZoFotTAWallpUABQXSow', 1, 'photothynthesis', '2024-09-03 18:15:53', 1, ''),
(2, 'malal.dia', '04lUA76aT5mQwP89hZ7ER7TeiEUFfWFH6JPVZNzgMDTkPowUudnv0O1gaIi2', 22, 'A', '2024-07-18 18:43:53', 0, ''),
(3, 'malal.dia', '04lUA76aT5mQwP89hZ7ER7TeiEUFfWFH6JPVZNzgMDTkPowUudnv0O1gaIi2', 23, 'Senghor', '2024-07-18 18:43:53', 0, ''),
(4, 'malal.dia', '04lUA76aT5mQwP89hZ7ER7TeiEUFfWFH6JPVZNzgMDTkPowUudnv0O1gaIi2', 24, 'c\'est le futur', '2024-07-18 18:43:53', 0, ''),
(5, 'moumi.mbaye', '7P00yuQL8IHiGRiA20B7l5hzssAQMhYms6Ti9IVjlABUCt9FiBYNWqy5rbfr', 25, 'B', '2024-07-18 18:44:52', 0, ''),
(6, 'moumi.mbaye', '7P00yuQL8IHiGRiA20B7l5hzssAQMhYms6Ti9IVjlABUCt9FiBYNWqy5rbfr', 26, 'A', '2024-07-18 18:44:52', 0, ''),
(7, 'moumi.mbaye', '7P00yuQL8IHiGRiA20B7l5hzssAQMhYms6Ti9IVjlABUCt9FiBYNWqy5rbfr', 27, 'Argentine', '2024-07-18 18:44:52', 0, ''),
(8, 'anta.diagne', '04lUA76aT5mQwP89hZ7ER7TeiEUFfWFH6JPVZNzgMDTkPowUudnv0O1gaIi2', 22, 'A', '2024-07-18 18:45:51', 0, ''),
(9, 'anta.diagne', '04lUA76aT5mQwP89hZ7ER7TeiEUFfWFH6JPVZNzgMDTkPowUudnv0O1gaIi2', 23, 'Senghor', '2024-07-18 18:45:51', 0, ''),
(10, 'anta.diagne', '04lUA76aT5mQwP89hZ7ER7TeiEUFfWFH6JPVZNzgMDTkPowUudnv0O1gaIi2', 24, 'C\'est super', '2024-07-18 18:45:51', 0, '');

-- --------------------------------------------------------

--
-- Structure de la table `classes`
--

CREATE TABLE `classes` (
  `id` int(11) NOT NULL,
  `class` varchar(30) NOT NULL,
  `user_id` varchar(60) NOT NULL,
  `school_id` varchar(60) NOT NULL,
  `class_id` varchar(60) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `classes`
--

INSERT INTO `classes` (`id`, `class`, `user_id`, `school_id`, `class_id`, `date`) VALUES
(1, 'BIG2', 'cherif.tine', 'WbVIhzRoWBz37FYjHeac4vuqrIfknM8yNW1m8ujWmcWZkBR2XCl7JhSDp6s2', '8NtGx7qhFmtRPTc3hzqj8lbpRP4ljO0pUwppX2tzrd1OQmLnJVgehwwVc45g', '2024-07-13 22:13:08'),
(2, 'BIG1', 'cherif.tine', 'WbVIhzRoWBz37FYjHeac4vuqrIfknM8yNW1m8ujWmcWZkBR2XCl7JhSDp6s2', 'P1A9zvQq683WU1BQDAUsHAtaf6vrb1IVNgigNdzgnDwONPdInHZql2Zz6pmu', '2024-07-13 22:13:28'),
(3, 'BIG2', 'abdou.lo', 'fOSajPRUvctvF1lqBXEkVfGtX3FKdjGS5DEoRRThJQc5XcM51u4TZV3Eo2br', 'EStEx3RV6Zq41dfGj81qfSQF94u0UTAhIjTjhpdlVV36xi8nZw6cOhyjDRji', '2024-07-13 22:26:12'),
(4, 'BIG1', 'abdou.lo', 'fOSajPRUvctvF1lqBXEkVfGtX3FKdjGS5DEoRRThJQc5XcM51u4TZV3Eo2br', 'SlHjrnMmcgC3qb7g2XSyKjJtDRs3bGhIwxtyEUje8lRG6L8wAA52e06QRcml', '2024-07-13 22:26:25'),
(5, 'BIG2', 'cherif.tine', 'WbVIhzRoWBz37FYjHeac4vuqrIfknM8yNW1m8ujWmcWZkBR2XCl7JhSDp6s2', 'eyaWEDgA0lb8qWuyVl46pIgRdHjtyfkabOLvPH3XPNe6OjBv4fZqqoozmZUR', '2024-07-13 22:54:10'),
(6, 'BIG1', 'cherif.tine', 'droJiLaE1Od3GikP7Mj9pSKCjZASmnZjQmG95HMErKOw88Z3Es0npHuKPm8e', '9Qz8mlVzuSsob00j7voCA6GbxX2Yq0c2jJbsz55W83MBvfzh0OCPHW5kYGJ0', '2024-07-13 22:54:32'),
(7, 'BIG2', 'cherif.tine', 'droJiLaE1Od3GikP7Mj9pSKCjZASmnZjQmG95HMErKOw88Z3Es0npHuKPm8e', 'goTjZLR4yzJLjXZwLs4v8JOQQ1IkzKV66mTU5acifYfgElX6CCVDUkIYETIP', '2024-07-13 23:01:01');

-- --------------------------------------------------------

--
-- Structure de la table `class_lecturers`
--

CREATE TABLE `class_lecturers` (
  `id` int(11) NOT NULL,
  `user_id` varchar(60) NOT NULL,
  `class_id` varchar(60) NOT NULL,
  `disabled` tinyint(1) NOT NULL,
  `date` datetime NOT NULL,
  `school_id` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `class_lecturers`
--

INSERT INTO `class_lecturers` (`id`, `user_id`, `class_id`, `disabled`, `date`, `school_id`) VALUES
(1, 'pathe.ciss', 'goTjZLR4yzJLjXZwLs4v8JOQQ1IkzKV66mTU5acifYfgElX6CCVDUkIYETIP', 0, '2024-07-18 18:32:29', 'droJiLaE1Od3GikP7Mj9pSKCjZASmnZjQmG95HMErKOw88Z3Es0npHuKPm8e');

-- --------------------------------------------------------

--
-- Structure de la table `class_students`
--

CREATE TABLE `class_students` (
  `id` int(11) NOT NULL,
  `user_id` varchar(60) NOT NULL,
  `class_id` varchar(60) NOT NULL,
  `disabled` tinyint(1) NOT NULL,
  `date` datetime NOT NULL,
  `school_id` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `class_students`
--

INSERT INTO `class_students` (`id`, `user_id`, `class_id`, `disabled`, `date`, `school_id`) VALUES
(1, 'nabou.ndiaye', 'goTjZLR4yzJLjXZwLs4v8JOQQ1IkzKV66mTU5acifYfgElX6CCVDUkIYETIP', 0, '2024-07-18 18:01:32', 'droJiLaE1Od3GikP7Mj9pSKCjZASmnZjQmG95HMErKOw88Z3Es0npHuKPm8e'),
(2, 'souleyman.sall', 'goTjZLR4yzJLjXZwLs4v8JOQQ1IkzKV66mTU5acifYfgElX6CCVDUkIYETIP', 0, '2024-07-18 18:01:47', 'droJiLaE1Od3GikP7Mj9pSKCjZASmnZjQmG95HMErKOw88Z3Es0npHuKPm8e'),
(3, 'malal.dia', 'goTjZLR4yzJLjXZwLs4v8JOQQ1IkzKV66mTU5acifYfgElX6CCVDUkIYETIP', 0, '2024-07-18 18:01:58', 'droJiLaE1Od3GikP7Mj9pSKCjZASmnZjQmG95HMErKOw88Z3Es0npHuKPm8e'),
(4, 'fatima.niang', 'goTjZLR4yzJLjXZwLs4v8JOQQ1IkzKV66mTU5acifYfgElX6CCVDUkIYETIP', 0, '2024-07-18 18:02:09', 'droJiLaE1Od3GikP7Mj9pSKCjZASmnZjQmG95HMErKOw88Z3Es0npHuKPm8e'),
(5, 'moumi.mbaye', '9Qz8mlVzuSsob00j7voCA6GbxX2Yq0c2jJbsz55W83MBvfzh0OCPHW5kYGJ0', 0, '2024-07-18 18:02:58', 'droJiLaE1Od3GikP7Mj9pSKCjZASmnZjQmG95HMErKOw88Z3Es0npHuKPm8e'),
(6, 'anta.diagne', '9Qz8mlVzuSsob00j7voCA6GbxX2Yq0c2jJbsz55W83MBvfzh0OCPHW5kYGJ0', 0, '2024-07-18 18:03:08', 'droJiLaE1Od3GikP7Mj9pSKCjZASmnZjQmG95HMErKOw88Z3Es0npHuKPm8e'),
(7, 'assane.ndiaye', '9Qz8mlVzuSsob00j7voCA6GbxX2Yq0c2jJbsz55W83MBvfzh0OCPHW5kYGJ0', 0, '2024-07-18 18:03:16', 'droJiLaE1Od3GikP7Mj9pSKCjZASmnZjQmG95HMErKOw88Z3Es0npHuKPm8e'),
(8, 'matar.ba', '9Qz8mlVzuSsob00j7voCA6GbxX2Yq0c2jJbsz55W83MBvfzh0OCPHW5kYGJ0', 0, '2024-07-18 18:03:27', 'droJiLaE1Od3GikP7Mj9pSKCjZASmnZjQmG95HMErKOw88Z3Es0npHuKPm8e'),
(18, 'aziz.toure', 'goTjZLR4yzJLjXZwLs4v8JOQQ1IkzKV66mTU5acifYfgElX6CCVDUkIYETIP', 0, '2024-07-18 18:41:51', 'droJiLaE1Od3GikP7Mj9pSKCjZASmnZjQmG95HMErKOw88Z3Es0npHuKPm8e'),
(19, 'assane.ndiaye', 'goTjZLR4yzJLjXZwLs4v8JOQQ1IkzKV66mTU5acifYfgElX6CCVDUkIYETIP', 0, '2024-07-18 18:42:23', 'droJiLaE1Od3GikP7Mj9pSKCjZASmnZjQmG95HMErKOw88Z3Es0npHuKPm8e'),
(20, 'anta.diagne', 'goTjZLR4yzJLjXZwLs4v8JOQQ1IkzKV66mTU5acifYfgElX6CCVDUkIYETIP', 0, '2024-07-18 18:42:31', 'droJiLaE1Od3GikP7Mj9pSKCjZASmnZjQmG95HMErKOw88Z3Es0npHuKPm8e'),
(21, 'moumi.mbaye', 'goTjZLR4yzJLjXZwLs4v8JOQQ1IkzKV66mTU5acifYfgElX6CCVDUkIYETIP', 0, '2024-07-18 18:42:51', 'droJiLaE1Od3GikP7Mj9pSKCjZASmnZjQmG95HMErKOw88Z3Es0npHuKPm8e');

-- --------------------------------------------------------

--
-- Structure de la table `class_tests`
--

CREATE TABLE `class_tests` (
  `id` int(11) NOT NULL,
  `user_id` varchar(60) NOT NULL,
  `class_id` varchar(60) NOT NULL,
  `disabled` tinyint(1) NOT NULL,
  `test` varchar(100) NOT NULL,
  `test_id` varchar(60) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `schools`
--

CREATE TABLE `schools` (
  `id` int(11) NOT NULL,
  `school` varchar(30) NOT NULL,
  `school_id` varchar(60) NOT NULL,
  `date` datetime NOT NULL,
  `user_id` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `schools`
--

INSERT INTO `schools` (`id`, `school`, `school_id`, `date`, `user_id`) VALUES
(5, 'IAM', 'droJiLaE1Od3GikP7Mj9pSKCjZASmnZjQmG95HMErKOw88Z3Es0npHuKPm8e', '2024-07-13 21:35:34', 'cherif.tine'),
(6, 'David Diop', 'WbVIhzRoWBz37FYjHeac4vuqrIfknM8yNW1m8ujWmcWZkBR2XCl7JhSDp6s2', '2024-07-13 21:35:53', 'cherif.tine'),
(7, 'esp', '2jguJ6HKktEdHUHGYLLNn5Zok1BK4Kn0cIHOwqqtrLCXeJ4YjvduG8scWdLK', '2024-07-13 23:00:12', 'cherif.tine'),
(8, 'isi', 'goGtTKF2FtjIhq184IyoEqHKlALgmAHVr20zfnzYrmNjxoezbKEf0ZNpIJQy', '2024-07-13 23:00:17', 'cherif.tine'),
(9, 'ism', 'rwCLMv7He2Jyd7hY4UixYVMzC7fcinf0Wf935Jtsur3lmetYBH8lwvIvTGQF', '2024-07-13 23:00:21', 'cherif.tine');

-- --------------------------------------------------------

--
-- Structure de la table `tests`
--

CREATE TABLE `tests` (
  `id` int(11) NOT NULL,
  `test_id` varchar(60) NOT NULL,
  `class_id` varchar(60) NOT NULL,
  `school_id` varchar(60) NOT NULL,
  `user_id` varchar(60) NOT NULL,
  `test` varchar(100) NOT NULL,
  `description` varchar(2048) NOT NULL,
  `date` datetime NOT NULL,
  `disabled` tinyint(1) NOT NULL DEFAULT 1,
  `editable` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `tests`
--

INSERT INTO `tests` (`id`, `test_id`, `class_id`, `school_id`, `user_id`, `test`, `description`, `date`, `disabled`, `editable`) VALUES
(1, 'V7CYsLnUdFHihrKfu7l3BFp0Un0KqJ5tWGeBtqyVZoFotTAWallpUABQXSow', 'xrP2mcCVRukT3OsZaSQBddZB0D3xstpAoN0EznlTbJgTcLGBoLRRxjM7usEo', 'droJiLaE1Od3GikP7Mj9pSKCjZASmnZjQmG95HMErKOw88Z3Es0npHuKPm8e', 'abdou.lo', 'my first test', 'a description for my first test', '2021-09-11 20:59:35', 1, 0),
(2, 'Xa7onu8jPGMnBJHu7dTYnYKIqIHx5UWMHnGZskxsDTbYRMOHf76Lgi8dvx68', 'wOkGTBbzBDEnswCI7jpzoWf7alU2bNPHmVXRSXCZwcjBTDHa1QnAMIFxjxjV', 'droJiLaE1Od3GikP7Mj9pSKCjZASmnZjQmG95HMErKOw88Z3Es0npHuKPm8e', 'cherif.tine', 'end of 2021 test', 'some test description', '2021-11-22 11:25:14', 0, 0),
(3, 'YqefYnR10YlweFAYcDZ3kentWIBAKvRXbToSwXaRKWV4vt3k8eJsz9xxWURT', 'SlHjrnMmcgC3qb7g2XSyKjJtDRs3bGhIwxtyEUje8lRG6L8wAA52e06QRcml', 'fOSajPRUvctvF1lqBXEkVfGtX3FKdjGS5DEoRRThJQc5XcM51u4TZV3Eo2br', 'abdou.lo', 'Devoir ', 'Ce devoir jauge le niveau des etudiants', '2024-07-18 18:07:13', 0, 1),
(4, '7P00yuQL8IHiGRiA20B7l5hzssAQMhYms6Ti9IVjlABUCt9FiBYNWqy5rbfr', 'goTjZLR4yzJLjXZwLs4v8JOQQ1IkzKV66mTU5acifYfgElX6CCVDUkIYETIP', 'droJiLaE1Od3GikP7Mj9pSKCjZASmnZjQmG95HMErKOw88Z3Es0npHuKPm8e', 'cherif.tine', 'Devoir Debut Trimestre', 'Ce devoir doit jauger le niveau des etudiants', '2024-07-18 18:09:43', 0, 0),
(10, '04lUA76aT5mQwP89hZ7ER7TeiEUFfWFH6JPVZNzgMDTkPowUudnv0O1gaIi2', 'goTjZLR4yzJLjXZwLs4v8JOQQ1IkzKV66mTU5acifYfgElX6CCVDUkIYETIP', 'droJiLaE1Od3GikP7Mj9pSKCjZASmnZjQmG95HMErKOw88Z3Es0npHuKPm8e', 'cherif.tine', 'Devoir Numero 2', 'ce devoir est un devoir de fin de trimestre', '2024-07-18 18:33:23', 0, 0);

-- --------------------------------------------------------

--
-- Structure de la table `test_questions`
--

CREATE TABLE `test_questions` (
  `id` int(11) NOT NULL,
  `test_id` varchar(60) NOT NULL,
  `question` text NOT NULL,
  `comment` varchar(1024) NOT NULL,
  `image` varchar(500) DEFAULT NULL,
  `question_type` varchar(10) NOT NULL,
  `correct_answer` text DEFAULT NULL,
  `choices` text DEFAULT NULL,
  `date` datetime NOT NULL,
  `user_id` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `test_questions`
--

INSERT INTO `test_questions` (`id`, `test_id`, `question`, `comment`, `image`, `question_type`, `correct_answer`, `choices`, `date`, `user_id`) VALUES
(22, '04lUA76aT5mQwP89hZ7ER7TeiEUFfWFH6JPVZNzgMDTkPowUudnv0O1gaIi2', 'Qui est le directeur de IAM', '', NULL, 'multiple', 'A', '{\"A\":\"Guirassi\",\"B\":\"Diomaye\"}', '2024-07-18 18:34:32', 'cherif.tine'),
(23, '04lUA76aT5mQwP89hZ7ER7TeiEUFfWFH6JPVZNzgMDTkPowUudnv0O1gaIi2', 'Qui est le premier president du senegal', '', NULL, 'objective', 'Senghor', NULL, '2024-07-18 18:35:42', 'cherif.tine'),
(24, '04lUA76aT5mQwP89hZ7ER7TeiEUFfWFH6JPVZNzgMDTkPowUudnv0O1gaIi2', 'pourquoi l\'informatique ?', '', NULL, 'subjective', NULL, NULL, '2024-07-18 18:36:11', 'cherif.tine'),
(25, '7P00yuQL8IHiGRiA20B7l5hzssAQMhYms6Ti9IVjlABUCt9FiBYNWqy5rbfr', 'quelle est la capitale du senegal ?', '', NULL, 'multiple', 'B', '{\"A\":\"Thies\",\"B\":\"Dakar\"}', '2024-07-18 18:37:15', 'cherif.tine'),
(26, '7P00yuQL8IHiGRiA20B7l5hzssAQMhYms6Ti9IVjlABUCt9FiBYNWqy5rbfr', 'qui est le premier ministre du senegal', '', NULL, 'multiple', 'A', '{\"A\":\"sonko\",\"B\":\"macky\"}', '2024-07-18 18:37:53', 'cherif.tine'),
(27, '7P00yuQL8IHiGRiA20B7l5hzssAQMhYms6Ti9IVjlABUCt9FiBYNWqy5rbfr', 'qui a gagner la copa ?', '', NULL, 'objective', 'Argentine', NULL, '2024-07-18 18:38:37', 'cherif.tine'),
(28, '7P00yuQL8IHiGRiA20B7l5hzssAQMhYms6Ti9IVjlABUCt9FiBYNWqy5rbfr', 'Qui est le meillleur joueur du monde ?', 'Lionel Messi ', NULL, 'subjective', NULL, NULL, '2024-07-18 18:39:15', 'cherif.tine');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `firstname` varchar(20) NOT NULL,
  `lastname` varchar(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  `date` datetime NOT NULL,
  `user_id` varchar(60) NOT NULL,
  `gender` varchar(6) NOT NULL,
  `school_id` varchar(60) NOT NULL,
  `rank` varchar(20) NOT NULL,
  `password` varchar(255) NOT NULL,
  `image` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `date`, `user_id`, `gender`, `school_id`, `rank`, `password`, `image`) VALUES
(1, 'cherif', 'tine', 'cheriftine@gmail.com', '2024-07-13 21:17:58', 'cherif.tine', 'male', 'droJiLaE1Od3GikP7Mj9pSKCjZASmnZjQmG95HMErKOw88Z3Es0npHuKPm8e', 'super_admin', '$2y$10$dTw6hYqfh2qAFCGRqE72G.pvARN8f1eyPYuiJLT6zlNGIQGPMxxXa', ''),
(2, 'abdou', 'lo', 'paps@gmail.com', '2024-07-13 21:18:37', 'abdou.lo', 'male', 'fOSajPRUvctvF1lqBXEkVfGtX3FKdjGS5DEoRRThJQc5XcM51u4TZV3Eo2br', 'admin', '$2y$10$20LeByQH0DcDSNbdfTBiku2WBXfudbjKxQrkgYa/o554caLqcUxDW', ''),
(3, 'nabou', 'ndiaye', 'zeina@gmail.com', '2024-07-13 21:19:44', 'nabou.ndiaye', 'female', 'fOSajPRUvctvF1lqBXEkVfGtX3FKdjGS5DEoRRThJQc5XcM51u4TZV3Eo2br', 'student', '$2y$10$.Ob1p8VMVvPNxG375f3NueGLj1Q/mnxKmmnRYn1WSUaCs.sdG/pvO', ''),
(4, 'abdoul', 'mbaye', 'abdoul@gmail.com', '2024-07-13 21:20:24', 'abdoul.mbaye', 'male', 'fOSajPRUvctvF1lqBXEkVfGtX3FKdjGS5DEoRRThJQc5XcM51u4TZV3Eo2br', 'lecturer', '$2y$10$GA0P6m3UBr5qHKSWZmu4JuE6XTf1NjUQO20e6vsogN2QefWnisFt2', ''),
(5, 'astou', 'fall', 'astou@gmail.com', '2024-07-13 21:21:11', 'astou.fall', 'female', 'fOSajPRUvctvF1lqBXEkVfGtX3FKdjGS5DEoRRThJQc5XcM51u4TZV3Eo2br', 'reception', '$2y$10$6jR0M73Ele5iGy8V.gspVulFIgB.uAFb0k87/dxzHUT11AusU20oi', ''),
(20, 'souleyman', 'sall', 'jule@gmail.com', '2024-07-13 22:27:46', 'souleyman.sall', 'male', 'fOSajPRUvctvF1lqBXEkVfGtX3FKdjGS5DEoRRThJQc5XcM51u4TZV3Eo2br', 'student', '$2y$10$ziwu5MPwhWoLI2tMfVKgCuVd5P8ul7F9jNOVKF.U.qWwPCLQGbD5S', ''),
(21, 'malal', 'dia', 'malal@gmail.com', '2024-07-13 22:31:19', 'malal.dia', 'male', 'fOSajPRUvctvF1lqBXEkVfGtX3FKdjGS5DEoRRThJQc5XcM51u4TZV3Eo2br', 'student', '$2y$10$XZbh09VIkoXTVbLMGOFh/.qS27DpugsxpbfUzJZK8s/zD/Ck0NhvC', ''),
(22, 'fatima', 'niang', 'tima@gmail.com', '2024-07-13 22:32:11', 'fatima.niang', 'female', 'fOSajPRUvctvF1lqBXEkVfGtX3FKdjGS5DEoRRThJQc5XcM51u4TZV3Eo2br', 'student', '$2y$10$SSwAR.DV6GvtGQk3W7Ujeu3DINuEnatUNSjNjz2VOBrTx4S/o2I9q', ''),
(23, 'matar', 'ba', 'matar@gmail.com', '2024-07-13 22:55:57', 'matar.ba', 'male', 'droJiLaE1Od3GikP7Mj9pSKCjZASmnZjQmG95HMErKOw88Z3Es0npHuKPm8e', 'student', '$2y$10$jHG8CotPckWxQIiD.Jt65eswM/REAbtOtu6NfueK/7cM4NlAA1j3O', ''),
(24, 'assane', 'ndiaye', 'assane@gmail.com', '2024-07-13 22:57:11', 'assane.ndiaye', 'male', 'droJiLaE1Od3GikP7Mj9pSKCjZASmnZjQmG95HMErKOw88Z3Es0npHuKPm8e', 'student', '$2y$10$sth7/cWS7oY2Pcq8Vx0Q/.NSvb48rhQGPKFsHdTxOdm7Yj8zoEq26', ''),
(25, 'anta', 'diagne', 'anta@gmail.com', '2024-07-13 22:57:50', 'anta.diagne', 'female', 'droJiLaE1Od3GikP7Mj9pSKCjZASmnZjQmG95HMErKOw88Z3Es0npHuKPm8e', 'student', '$2y$10$EiV.LUWg.jvrmElQrwCyHOKK420IXqg1r7H.MjNkxCSylbtIWPgmu', ''),
(26, 'aziz', 'toure', 'aziz@gmail.com', '2024-07-13 22:58:26', 'aziz.toure', 'male', 'droJiLaE1Od3GikP7Mj9pSKCjZASmnZjQmG95HMErKOw88Z3Es0npHuKPm8e', 'student', '$2y$10$t.yOu6J6HSehDVG0Y5re8elzyXVks6j3UF8ETRf1x8/n6wkNtwzBy', ''),
(27, 'moumi', 'mbaye', 'moumi@gmail.com', '2024-07-13 22:59:12', 'moumi.mbaye', 'female', 'droJiLaE1Od3GikP7Mj9pSKCjZASmnZjQmG95HMErKOw88Z3Es0npHuKPm8e', 'student', '$2y$10$k3LKKXsp/8UfY1Mv1hKy5eMs3syuFjZxUfMOlTaNeP2BnLo1GjByG', ''),
(28, 'makilou', 'tine', 'makilou@gmail.com', '2024-07-13 23:00:00', 'makilou.tine', 'male', 'droJiLaE1Od3GikP7Mj9pSKCjZASmnZjQmG95HMErKOw88Z3Es0npHuKPm8e', 'super_admin', '$2y$10$ZyadzE1AXKizVC2xG4gAo.LiPUSGfUiWo5fDvQMMPB5TACoKQVp.m', ''),
(29, 'paps', 'paps', 'abdoulo@gmail.com', '2024-07-13 23:02:44', 'paps.paps', 'male', 'droJiLaE1Od3GikP7Mj9pSKCjZASmnZjQmG95HMErKOw88Z3Es0npHuKPm8e', 'admin', '$2y$10$msRLHuJNZ8J3I/prQyN1Z.2m9SiFZvLUapsIzMNnb.fJcniQThCgm', ''),
(30, 'fary', 'mata', 'fary@gmail.com', '2024-07-13 23:03:29', 'fary.mata', 'female', 'droJiLaE1Od3GikP7Mj9pSKCjZASmnZjQmG95HMErKOw88Z3Es0npHuKPm8e', 'reception', '$2y$10$1.NZDWIRM0731TS4O/RS2.XxZ.0i0foOpb7fhMp2xrrZrLn8ZuQsa', ''),
(31, 'pathe', 'ciss', 'pathe@gmail.com', '2024-07-18 18:31:58', 'pathe.ciss', 'male', 'droJiLaE1Od3GikP7Mj9pSKCjZASmnZjQmG95HMErKOw88Z3Es0npHuKPm8e', 'lecturer', '$2y$10$BsL6lPQgFAD1yunpAjCSx.Ha3mSSi1FdCrEx4hWy4G9vbX7SgUuWi', '');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `answered_tests`
--
ALTER TABLE `answered_tests`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `test_id` (`test_id`),
  ADD KEY `submitted` (`submitted`),
  ADD KEY `marked` (`marked`),
  ADD KEY `marked_by` (`marked_by`),
  ADD KEY `date` (`date`),
  ADD KEY `score` (`score`);

--
-- Index pour la table `answers`
--
ALTER TABLE `answers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `question_id` (`question_id`),
  ADD KEY `test_id` (`test_id`),
  ADD KEY `date` (`date`),
  ADD KEY `answer_mark` (`answer_mark`);

--
-- Index pour la table `classes`
--
ALTER TABLE `classes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `class` (`class`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `school_id` (`school_id`),
  ADD KEY `date` (`date`),
  ADD KEY `class_id` (`class_id`);

--
-- Index pour la table `class_lecturers`
--
ALTER TABLE `class_lecturers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `disabled` (`disabled`),
  ADD KEY `date` (`date`),
  ADD KEY `class_id` (`class_id`),
  ADD KEY `school_id` (`school_id`);

--
-- Index pour la table `class_students`
--
ALTER TABLE `class_students`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `disabled` (`disabled`),
  ADD KEY `date` (`date`),
  ADD KEY `class_id` (`class_id`),
  ADD KEY `school_id` (`school_id`);

--
-- Index pour la table `class_tests`
--
ALTER TABLE `class_tests`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `test_id` (`test_id`),
  ADD KEY `date` (`date`),
  ADD KEY `disabled` (`disabled`),
  ADD KEY `test` (`test`),
  ADD KEY `class_id` (`class_id`);

--
-- Index pour la table `schools`
--
ALTER TABLE `schools`
  ADD PRIMARY KEY (`id`),
  ADD KEY `school` (`school`),
  ADD KEY `school_id` (`school_id`),
  ADD KEY `date` (`date`),
  ADD KEY `user_url` (`user_id`);

--
-- Index pour la table `tests`
--
ALTER TABLE `tests`
  ADD PRIMARY KEY (`id`),
  ADD KEY `test_id` (`test_id`),
  ADD KEY `school_id` (`school_id`),
  ADD KEY `class_id` (`class_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `test` (`test`),
  ADD KEY `date` (`date`),
  ADD KEY `disabled` (`disabled`),
  ADD KEY `editable` (`editable`);

--
-- Index pour la table `test_questions`
--
ALTER TABLE `test_questions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `test_id` (`test_id`),
  ADD KEY `test_type` (`question_type`),
  ADD KEY `date` (`date`),
  ADD KEY `user_id` (`user_id`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `firstname` (`firstname`),
  ADD KEY `lastname` (`lastname`),
  ADD KEY `date` (`date`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `school_id` (`school_id`),
  ADD KEY `gender` (`gender`),
  ADD KEY `rank` (`rank`),
  ADD KEY `email` (`email`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `answered_tests`
--
ALTER TABLE `answered_tests`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pour la table `answers`
--
ALTER TABLE `answers`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT pour la table `classes`
--
ALTER TABLE `classes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT pour la table `class_lecturers`
--
ALTER TABLE `class_lecturers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `class_students`
--
ALTER TABLE `class_students`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT pour la table `class_tests`
--
ALTER TABLE `class_tests`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `schools`
--
ALTER TABLE `schools`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT pour la table `tests`
--
ALTER TABLE `tests`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pour la table `test_questions`
--
ALTER TABLE `test_questions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
