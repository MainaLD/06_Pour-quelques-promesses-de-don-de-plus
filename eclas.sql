-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8081
-- Generation Time: Jan 20, 2022 at 09:24 AM
-- Server version: 5.7.24
-- PHP Version: 7.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `eclas`
--

-- --------------------------------------------------------

--
-- Table structure for table `droits`
--

CREATE TABLE `droits` (
  `id_droit` int(11) NOT NULL,
  `libelle` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `droits`
--

INSERT INTO `droits` (`id_droit`, `libelle`) VALUES
(1, 'visiteur'),
(2, 'administrateur');

-- --------------------------------------------------------

--
-- Table structure for table `promesse_dons`
--

CREATE TABLE `promesse_dons` (
  `id_promesse` int(11) NOT NULL,
  `nom` varchar(40) DEFAULT NULL,
  `prenom` varchar(40) DEFAULT NULL,
  `adresse` varchar(200) DEFAULT NULL,
  `mail` varchar(100) DEFAULT NULL,
  `somme_promise` int(11) DEFAULT NULL,
  `droit` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `promesse_dons`
--

INSERT INTO `promesse_dons` (`id_promesse`, `nom`, `prenom`, `adresse`, `mail`, `somme_promise`, `droit`) VALUES
(1, 'Einstein', 'Albert', '22 loi de la relativité, 29200 BREST', 'aeinstein@gmail.com', 20, 2),
(2, 'Hitchcock', 'Alfred', '3 sueurs froides, 29000 Psychose', 'ahitchcock@gmail.com', 1000, 1),
(3, 'Daniels', 'Melanie', 'des centaines 29000 Les Oiseaux', 'mdaniels@gmail.com', 1, 1),
(4, 'Mercury', 'Freddie', '33 Bohemian Rhapsody 29000 Queen', 'radiogogo@gmail.com', 1991, 2),
(5, 'Clooney', 'Georges ', 'Quai 55, 29200 BREST', 'stephane...@isen.fr', 6000, 1),
(6, 'Jean', 'Martin', '4 rue de la place, 95000 Paris', 'jean.dupont@gmail.com', 20, 1),
(7, 'Magax', 'Gérard', '56 Bohemian Rhapsody 29000 Queen', 'gmagax@gmail.com', 30, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `droits`
--
ALTER TABLE `droits`
  ADD PRIMARY KEY (`id_droit`);

--
-- Indexes for table `promesse_dons`
--
ALTER TABLE `promesse_dons`
  ADD PRIMARY KEY (`id_promesse`),
  ADD KEY `droit` (`droit`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `droits`
--
ALTER TABLE `droits`
  MODIFY `id_droit` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `promesse_dons`
--
ALTER TABLE `promesse_dons`
  MODIFY `id_promesse` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `promesse_dons`
--
ALTER TABLE `promesse_dons`
  ADD CONSTRAINT `promesse_dons_ibfk_1` FOREIGN KEY (`droit`) REFERENCES `droits` (`id_droit`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
