-- phpMyAdmin SQL Dump
-- version 4.5.5.1
-- http://www.phpmyadmin.net
--
-- Client :  127.0.0.1
-- Généré le :  Lun 21 Novembre 2016 à 12:52
-- Version du serveur :  5.7.11
-- Version de PHP :  7.0.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `my_db`
--

-- --------------------------------------------------------

--
-- Structure de la table `table1`
--

CREATE TABLE `table1` (
  `numero` int(11) NOT NULL,
  `Username` char(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Password` char(60) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Role` char(30) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `table1`
--

INSERT INTO `table1` (`numero`, `Username`, `Password`, `Role`) VALUES
(1, 'admin', 'admin', 'administrator'),
(2, 'Charle', '49321', 'administrator'),
(3, 'JeanFlamme', 'Ragout', 'User');

--
-- Index pour les tables exportées
--

--
-- Index pour la table `table1`
--
ALTER TABLE `table1`
  ADD PRIMARY KEY (`numero`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `table1`
--
ALTER TABLE `table1`
  MODIFY `numero` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
