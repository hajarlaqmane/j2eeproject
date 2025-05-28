-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Feb 15, 2025 at 06:48 PM
-- Server version: 9.1.0
-- PHP Version: 8.3.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gestion_notes`
--

-- --------------------------------------------------------

--
-- Table structure for table `cadreadministrateur`
--

DROP TABLE IF EXISTS `cadreadministrateur`;
CREATE TABLE IF NOT EXISTS `cadreadministrateur` (
  `grade` varchar(255) DEFAULT NULL,
  `idCardreAdmin` bigint NOT NULL,
  PRIMARY KEY (`idCardreAdmin`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `cadreadministrateur`
--

INSERT INTO `cadreadministrateur` (`grade`, `idCardreAdmin`) VALUES
('test', 9);

-- --------------------------------------------------------

--
-- Table structure for table `compte`
--

DROP TABLE IF EXISTS `compte`;
CREATE TABLE IF NOT EXISTS `compte` (
  `idCompte` bigint NOT NULL AUTO_INCREMENT,
  `accepteDemandeAutorisationAbsence` bit(1) NOT NULL,
  `accountNonExpired` bit(1) NOT NULL,
  `accountNonLocked` bit(1) NOT NULL,
  `afficheEmail` bit(1) NOT NULL,
  `affichePhoto` bit(1) NOT NULL,
  `credentialsNonExpired` bit(1) NOT NULL,
  `disconnectAccount` bit(1) NOT NULL,
  `enabled` bit(1) NOT NULL,
  `login` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `idUtilisateur` bigint DEFAULT NULL,
  `idRole` bigint DEFAULT NULL,
  PRIMARY KEY (`idCompte`),
  KEY `FK4me3b7yms83bsk757qlkk5icm` (`idUtilisateur`),
  KEY `FK6rqvo0g5sv97xlbrragf5rwn3` (`idRole`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `compte`
--

INSERT INTO `compte` (`idCompte`, `accepteDemandeAutorisationAbsence`, `accountNonExpired`, `accountNonLocked`, `afficheEmail`, `affichePhoto`, `credentialsNonExpired`, `disconnectAccount`, `enabled`, `login`, `password`, `idUtilisateur`, `idRole`) VALUES
(8, b'0', b'1', b'1', b'0', b'0', b'1', b'0', b'1', 'admin', '$2a$10$f8JD2gC/aTag.TLHUDIUceELgs5yjsVX3VIntTUMasjzV5mon6/he', 8, 1),
(19, b'0', b'1', b'1', b'0', b'0', b'1', b'0', b'1', 'testtest', '$2a$10$a/lbdXwo8bKddzBZNb65w.e2JwSdQuu5fGv/X33SVPX/syRRsq7pa', 9, 3),
(21, b'0', b'1', b'1', b'0', b'0', b'1', b'0', b'1', 'testtest_0', '$2a$10$qsr4Of4eo0pUNkpO3GVqP.BeVaOrqiQGWvXFeojtW5O4Ys/FD5hOG', 9, 3),
(22, b'0', b'1', b'1', b'0', b'0', b'1', b'0', b'1', 'adminadmin', '$2a$10$hikIe9yhA3RqZMwcPDsJEuebBfXiQ2bctqz3rA/v1qDmtH1ea2UL2', 8, 3);

-- --------------------------------------------------------

--
-- Table structure for table `element`
--

DROP TABLE IF EXISTS `element`;
CREATE TABLE IF NOT EXISTS `element` (
  `idMatiere` bigint NOT NULL AUTO_INCREMENT,
  `code` varchar(255) DEFAULT NULL,
  `currentCoefficient` double NOT NULL,
  `nom` varchar(255) DEFAULT NULL,
  `idModule` bigint DEFAULT NULL,
  `idProfesseur` bigint DEFAULT NULL,
  PRIMARY KEY (`idMatiere`),
  KEY `FKpy7uud3qt1x365dnkff4f41l8` (`idModule`),
  KEY `FKg40wdofquqffsiev32k9d0law` (`idProfesseur`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `element`
--

INSERT INTO `element` (`idMatiere`, `code`, `currentCoefficient`, `nom`, `idModule`, `idProfesseur`) VALUES
(5, 'asda', 45, 'asd', 12, 20);

-- --------------------------------------------------------

--
-- Table structure for table `enseignant`
--

DROP TABLE IF EXISTS `enseignant`;
CREATE TABLE IF NOT EXISTS `enseignant` (
  `specialite` varchar(255) DEFAULT NULL,
  `idEnseighant` bigint NOT NULL,
  PRIMARY KEY (`idEnseighant`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `enseignant`
--

INSERT INTO `enseignant` (`specialite`, `idEnseighant`) VALUES
('prof', 20);

-- --------------------------------------------------------

--
-- Table structure for table `etudiant`
--

DROP TABLE IF EXISTS `etudiant`;
CREATE TABLE IF NOT EXISTS `etudiant` (
  `cne` varchar(255) DEFAULT NULL,
  `dateNaissance` datetime(6) DEFAULT NULL,
  `idEtudiant` bigint NOT NULL,
  PRIMARY KEY (`idEtudiant`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `etudiant`
--

INSERT INTO `etudiant` (`cne`, `dateNaissance`, `idEtudiant`) VALUES
('sadasdasdas', NULL, 25);

-- --------------------------------------------------------

--
-- Table structure for table `filiere`
--

DROP TABLE IF EXISTS `filiere`;
CREATE TABLE IF NOT EXISTS `filiere` (
  `idFiliere` bigint NOT NULL AUTO_INCREMENT,
  `anneeFinaccreditation` int NOT NULL,
  `anneeaccreditation` int NOT NULL,
  `codeFiliere` varchar(255) DEFAULT NULL,
  `titreFiliere` varchar(255) DEFAULT NULL,
  `alias` varchar(255) DEFAULT NULL,
  `coordonnateur_id` bigint DEFAULT NULL,
  PRIMARY KEY (`idFiliere`),
  KEY `FKn9ilxovjj7vymahcuwh6ydfko` (`coordonnateur_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `filiere`
--

INSERT INTO `filiere` (`idFiliere`, `anneeFinaccreditation`, `anneeaccreditation`, `codeFiliere`, `titreFiliere`, `alias`, `coordonnateur_id`) VALUES
(6, 56, 2, NULL, 'sss', 'TEST1', 20);

-- --------------------------------------------------------

--
-- Table structure for table `inscriptionannuelle`
--

DROP TABLE IF EXISTS `inscriptionannuelle`;
CREATE TABLE IF NOT EXISTS `inscriptionannuelle` (
  `idInscription` bigint NOT NULL AUTO_INCREMENT,
  `annee` int NOT NULL,
  `etat` int NOT NULL,
  `mention` varchar(255) DEFAULT NULL,
  `plusInfos` varchar(255) DEFAULT NULL,
  `rang` int NOT NULL,
  `type` varchar(255) DEFAULT NULL,
  `validation` varchar(255) DEFAULT NULL,
  `idEtudiant` bigint DEFAULT NULL,
  `idNiveau` bigint DEFAULT NULL,
  PRIMARY KEY (`idInscription`),
  KEY `FKge2xwqtfeqnojw9no8og6vbqn` (`idEtudiant`),
  KEY `FK9lrdmhkam481adiwotdpqo8w` (`idNiveau`)
) ENGINE=InnoDB AUTO_INCREMENT=96 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `inscriptionannuelle`
--

INSERT INTO `inscriptionannuelle` (`idInscription`, `annee`, `etat`, `mention`, `plusInfos`, `rang`, `type`, `validation`, `idEtudiant`, `idNiveau`) VALUES
(94, 2024, 1, NULL, NULL, 0, NULL, NULL, 25, 8);

-- --------------------------------------------------------

--
-- Table structure for table `inscriptionmatiere`
--

DROP TABLE IF EXISTS `inscriptionmatiere`;
CREATE TABLE IF NOT EXISTS `inscriptionmatiere` (
  `idInscriptionMatiere` bigint NOT NULL AUTO_INCREMENT,
  `coefficient` double NOT NULL,
  `noteFinale` double NOT NULL,
  `noteSN` double NOT NULL,
  `noteSR` double NOT NULL,
  `plusInfos` varchar(255) DEFAULT NULL,
  `validation` varchar(255) DEFAULT NULL,
  `idInscription` bigint DEFAULT NULL,
  `idMatiere` bigint DEFAULT NULL,
  PRIMARY KEY (`idInscriptionMatiere`),
  KEY `FKdrefbosgrrf561bghbosk681q` (`idInscription`),
  KEY `FK6om7ooil7qy2ipbtocv7hqrwo` (`idMatiere`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `inscriptionmodule`
--

DROP TABLE IF EXISTS `inscriptionmodule`;
CREATE TABLE IF NOT EXISTS `inscriptionmodule` (
  `idInscriptionModule` bigint NOT NULL AUTO_INCREMENT,
  `noteFinale` double NOT NULL,
  `noteSN` double NOT NULL,
  `noteSR` double NOT NULL,
  `plusInfos` varchar(255) DEFAULT NULL,
  `validation` varchar(255) DEFAULT NULL,
  `idInscription` bigint DEFAULT NULL,
  `idModule` bigint DEFAULT NULL,
  PRIMARY KEY (`idInscriptionModule`),
  KEY `FK2rp4wu9gg4s1yvbannj858m3c` (`idInscription`),
  KEY `FKsfog581rh033dgomu0u7xywgd` (`idModule`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `module`
--

DROP TABLE IF EXISTS `module`;
CREATE TABLE IF NOT EXISTS `module` (
  `idModule` bigint NOT NULL AUTO_INCREMENT,
  `code` varchar(255) DEFAULT NULL,
  `titre` varchar(255) DEFAULT NULL,
  `idNiveau` bigint DEFAULT NULL,
  `enseignant_id` bigint DEFAULT NULL,
  `niveau_id` bigint DEFAULT NULL,
  `filiere_id` bigint DEFAULT NULL,
  PRIMARY KEY (`idModule`),
  KEY `FK2kgd6okkiatvq3do7akj1cm2k` (`idNiveau`),
  KEY `FK698b24my99ppm2csud93lx5ln` (`enseignant_id`),
  KEY `FKun7g4dyoj47w5eq4ird3opyx` (`niveau_id`),
  KEY `FK6l2polau5j6ek355twlodh85y` (`filiere_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `module`
--

INSERT INTO `module` (`idModule`, `code`, `titre`, `idNiveau`, `enseignant_id`, `niveau_id`, `filiere_id`) VALUES
(12, 'sad', 'asd', NULL, 20, 8, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `niveau`
--

DROP TABLE IF EXISTS `niveau`;
CREATE TABLE IF NOT EXISTS `niveau` (
  `idNiveau` bigint NOT NULL AUTO_INCREMENT,
  `alias` varchar(255) DEFAULT NULL,
  `titre` varchar(255) DEFAULT NULL,
  `idFiliere` bigint DEFAULT NULL,
  `niveauSuivant` bigint DEFAULT NULL,
  `filiere_id` bigint DEFAULT NULL,
  PRIMARY KEY (`idNiveau`),
  KEY `FK9qvkxk4ayqkjopclmlgoel8d9` (`idFiliere`),
  KEY `FKfrb2mq89h77nivboif8tdqwtn` (`niveauSuivant`),
  KEY `FK134cdfsuimyuc1gt9368oyq8` (`filiere_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `niveau`
--

INSERT INTO `niveau` (`idNiveau`, `alias`, `titre`, `idFiliere`, `niveauSuivant`, `filiere_id`) VALUES
(8, 'Nivea1', 'ss', NULL, NULL, 6),
(9, 'sdas', 'dsad', NULL, NULL, 6);

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

DROP TABLE IF EXISTS `role`;
CREATE TABLE IF NOT EXISTS `role` (
  `idRole` bigint NOT NULL AUTO_INCREMENT,
  `nomRole` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`idRole`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`idRole`, `nomRole`) VALUES
(1, 'ROLE_ADMIN'),
(2, 'ROLE_PROF'),
(3, 'ROLE_CADRE_ADMIN'),
(4, 'ROLE_STUDENT');

-- --------------------------------------------------------

--
-- Table structure for table `utilisateur`
--

DROP TABLE IF EXISTS `utilisateur`;
CREATE TABLE IF NOT EXISTS `utilisateur` (
  `idUtilisateur` bigint NOT NULL,
  `cin` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `nom` varchar(255) DEFAULT NULL,
  `nomArabe` varchar(255) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `prenom` varchar(255) DEFAULT NULL,
  `prenomArabe` varchar(255) DEFAULT NULL,
  `telephone` varchar(255) DEFAULT NULL,
  `compte_id` bigint DEFAULT NULL,
  PRIMARY KEY (`idUtilisateur`),
  UNIQUE KEY `UK_s4m395xkorrxtrdbuk1upglup` (`cin`),
  UNIQUE KEY `UK_35ysk0sh9ruwixrld3nc0weut` (`email`),
  KEY `FKmqex2tfn03j1dxy7g84m97k7j` (`compte_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `utilisateur`
--

INSERT INTO `utilisateur` (`idUtilisateur`, `cin`, `email`, `nom`, `nomArabe`, `photo`, `prenom`, `prenomArabe`, `telephone`, `compte_id`) VALUES
(8, 'AE548542', 'admin@admin.com', 'admin', 'admin', NULL, 'admin', '', '0655451541541', NULL),
(9, 'AE268326', 'cadre@cadre.com', 'test', '', NULL, 'test', '', '0645145', NULL),
(20, 'ASDS', 'prof@gmail.com', 'prof', NULL, NULL, 'prof', NULL, '51515', NULL),
(25, 'AEDF', 'sds2@gmail.com', 'ALAMI', NULL, NULL, 'Mohammed', NULL, '0630317838', NULL);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cadreadministrateur`
--
ALTER TABLE `cadreadministrateur`
  ADD CONSTRAINT `FKq2jdlid8esk1jlagny4qhrh2k` FOREIGN KEY (`idCardreAdmin`) REFERENCES `utilisateur` (`idUtilisateur`);

--
-- Constraints for table `compte`
--
ALTER TABLE `compte`
  ADD CONSTRAINT `FK4me3b7yms83bsk757qlkk5icm` FOREIGN KEY (`idUtilisateur`) REFERENCES `utilisateur` (`idUtilisateur`),
  ADD CONSTRAINT `FK6rqvo0g5sv97xlbrragf5rwn3` FOREIGN KEY (`idRole`) REFERENCES `role` (`idRole`);

--
-- Constraints for table `element`
--
ALTER TABLE `element`
  ADD CONSTRAINT `FKg40wdofquqffsiev32k9d0law` FOREIGN KEY (`idProfesseur`) REFERENCES `enseignant` (`idEnseighant`),
  ADD CONSTRAINT `FKpy7uud3qt1x365dnkff4f41l8` FOREIGN KEY (`idModule`) REFERENCES `module` (`idModule`);

--
-- Constraints for table `enseignant`
--
ALTER TABLE `enseignant`
  ADD CONSTRAINT `FKk26kuxt8qhs6nqv41b2hiyqwb` FOREIGN KEY (`idEnseighant`) REFERENCES `utilisateur` (`idUtilisateur`);

--
-- Constraints for table `etudiant`
--
ALTER TABLE `etudiant`
  ADD CONSTRAINT `FKkku0boly4both705vo0fri81c` FOREIGN KEY (`idEtudiant`) REFERENCES `utilisateur` (`idUtilisateur`);

--
-- Constraints for table `filiere`
--
ALTER TABLE `filiere`
  ADD CONSTRAINT `FKn9ilxovjj7vymahcuwh6ydfko` FOREIGN KEY (`coordonnateur_id`) REFERENCES `enseignant` (`idEnseighant`);

--
-- Constraints for table `inscriptionannuelle`
--
ALTER TABLE `inscriptionannuelle`
  ADD CONSTRAINT `FK9lrdmhkam481adiwotdpqo8w` FOREIGN KEY (`idNiveau`) REFERENCES `niveau` (`idNiveau`),
  ADD CONSTRAINT `FKge2xwqtfeqnojw9no8og6vbqn` FOREIGN KEY (`idEtudiant`) REFERENCES `etudiant` (`idEtudiant`);

--
-- Constraints for table `inscriptionmatiere`
--
ALTER TABLE `inscriptionmatiere`
  ADD CONSTRAINT `FK6om7ooil7qy2ipbtocv7hqrwo` FOREIGN KEY (`idMatiere`) REFERENCES `element` (`idMatiere`),
  ADD CONSTRAINT `FKdrefbosgrrf561bghbosk681q` FOREIGN KEY (`idInscription`) REFERENCES `inscriptionannuelle` (`idInscription`);

--
-- Constraints for table `inscriptionmodule`
--
ALTER TABLE `inscriptionmodule`
  ADD CONSTRAINT `FK2rp4wu9gg4s1yvbannj858m3c` FOREIGN KEY (`idInscription`) REFERENCES `inscriptionannuelle` (`idInscription`),
  ADD CONSTRAINT `FKsfog581rh033dgomu0u7xywgd` FOREIGN KEY (`idModule`) REFERENCES `module` (`idModule`);

--
-- Constraints for table `module`
--
ALTER TABLE `module`
  ADD CONSTRAINT `FK2kgd6okkiatvq3do7akj1cm2k` FOREIGN KEY (`idNiveau`) REFERENCES `niveau` (`idNiveau`),
  ADD CONSTRAINT `FK698b24my99ppm2csud93lx5ln` FOREIGN KEY (`enseignant_id`) REFERENCES `enseignant` (`idEnseighant`),
  ADD CONSTRAINT `FK6l2polau5j6ek355twlodh85y` FOREIGN KEY (`filiere_id`) REFERENCES `filiere` (`idFiliere`),
  ADD CONSTRAINT `FKun7g4dyoj47w5eq4ird3opyx` FOREIGN KEY (`niveau_id`) REFERENCES `niveau` (`idNiveau`);

--
-- Constraints for table `niveau`
--
ALTER TABLE `niveau`
  ADD CONSTRAINT `FK134cdfsuimyuc1gt9368oyq8` FOREIGN KEY (`filiere_id`) REFERENCES `filiere` (`idFiliere`),
  ADD CONSTRAINT `FK9qvkxk4ayqkjopclmlgoel8d9` FOREIGN KEY (`idFiliere`) REFERENCES `filiere` (`idFiliere`),
  ADD CONSTRAINT `FKfrb2mq89h77nivboif8tdqwtn` FOREIGN KEY (`niveauSuivant`) REFERENCES `niveau` (`idNiveau`);

--
-- Constraints for table `utilisateur`
--
ALTER TABLE `utilisateur`
  ADD CONSTRAINT `FKmqex2tfn03j1dxy7g84m97k7j` FOREIGN KEY (`compte_id`) REFERENCES `compte` (`idCompte`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
