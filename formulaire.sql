-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost
-- Généré le : ven. 31 mai 2024 à 04:04
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
-- Base de données : `commandes`
--

-- --------------------------------------------------------

--
-- Structure de la table `formulaire`
--

CREATE TABLE `formulaire` (
  `nom` text CHARACTER SET armscii8 COLLATE armscii8_bin DEFAULT NULL,
  `telephone` int(150) DEFAULT NULL,
  `adresse` varchar(150) DEFAULT NULL,
  `plat` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `formulaire`
--

INSERT INTO `formulaire` (`nom`, `telephone`, `adresse`, `plat`) VALUES
('dfghj', 4565, 'qsdfg', 'Tacos'),
('BIAOU', 54055443, 'Gahnon', 'Pizza'),
('Marius', 57888284, 'Gahnon', 'Tacos'),
('Marius', 57888284, 'Gahnon', 'Tacos'),
('ATTOH', 12345678, 'Bannikanni', 'Pizza');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
