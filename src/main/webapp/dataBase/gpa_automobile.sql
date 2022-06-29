-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3307
-- Généré le : mer. 29 juin 2022 à 10:18
-- Version du serveur :  10.4.13-MariaDB
-- Version de PHP : 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `gpa_automobile`
--

-- --------------------------------------------------------

--
-- Structure de la table `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE IF NOT EXISTS `admin` (
  `id_Admin` bigint(20) NOT NULL AUTO_INCREMENT,
  `img` blob NOT NULL DEFAULT 'D:\\ICT L3 S2\\ICT308\\TP\\img_tmp\\avatar.png',
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL DEFAULT 'undefined',
  `tel_Admin` varchar(50) NOT NULL,
  `cni_Admin` varchar(50) DEFAULT NULL,
  `password` varchar(30) NOT NULL,
  `userName` varchar(20) NOT NULL,
  PRIMARY KEY (`id_Admin`),
  UNIQUE KEY `tel_Admin` (`tel_Admin`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `admin`
--

INSERT INTO `admin` (`id_Admin`, `img`, `first_name`, `last_name`, `email`, `tel_Admin`, `cni_Admin`, `password`, `userName`) VALUES
(1, 0x22453a5c65636c697073655c4750415f4175746f6d6f62696c655c7372635c6d61696e5c7765626170705c726573736f75726365735c646973745c696d675c6176617461722e706e6722, 'Noe ', 'Kenfack', 'kenfaclnoe@gmail.com', '697606274', '1012504785', '123456789', 'NoeKen'),
(2, 0x22453a5c65636c697073655c4750415f4175746f6d6f62696c655c7372635c6d61696e5c7765626170705c726573736f75726365735c646973745c696d675c6176617461722e706e6722, 'Oben', 'Dorcas', '', '65478543', '2121245', '123542', ''),
(3, 0x22453a5c65636c697073655c4750415f4175746f6d6f62696c655c7372635c6d61696e5c7765626170705c726573736f75726365735c646973745c696d675c6176617461722e706e6722, 'Noe', 'Kenfack', '', '12324', NULL, '123456', ''),
(6, 0x22453a5c65636c697073655c4750415f4175746f6d6f62696c655c7372635c6d61696e5c7765626170705c726573736f75726365735c646973745c696d675c6176617461722e706e6722, 'Oben', 'Dorcas', '', '541665', NULL, '123456', ''),
(8, 0x22453a5c65636c697073655c4750415f4175746f6d6f62696c655c7372635c6d61696e5c7765626170705c726573736f75726365735c646973745c696d675c6176617461722e706e6722, 'Elton', 'Johns', '', '1115121', '5451315', '12345', '');

-- --------------------------------------------------------

--
-- Structure de la table `chauffeur`
--

DROP TABLE IF EXISTS `chauffeur`;
CREATE TABLE IF NOT EXISTS `chauffeur` (
  `id_Chauffeur` bigint(20) NOT NULL AUTO_INCREMENT,
  `cni_Chauffeur` varchar(50) DEFAULT NULL,
  `tel_Chauffeur` bigint(20) DEFAULT NULL,
  `nom_Chauffeur` varchar(50) DEFAULT NULL,
  `voiture_id_voiture` bigint(20) DEFAULT NULL,
  `connexion_Id` varchar(20) NOT NULL COMMENT 'credential/password de connexion ',
  PRIMARY KEY (`id_Chauffeur`),
  KEY `FK_Chauffeur_voiture_id_voiture` (`voiture_id_voiture`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `employe`
--

DROP TABLE IF EXISTS `employe`;
CREATE TABLE IF NOT EXISTS `employe` (
  `id_Admin` bigint(20) NOT NULL AUTO_INCREMENT,
  `id_Message` bigint(20) NOT NULL,
  PRIMARY KEY (`id_Admin`,`id_Message`),
  KEY `FK_employe_id_Message` (`id_Message`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `facture`
--

DROP TABLE IF EXISTS `facture`;
CREATE TABLE IF NOT EXISTS `facture` (
  `id_Facture` bigint(20) NOT NULL AUTO_INCREMENT,
  `montant_Facture` double DEFAULT NULL,
  `id_Voiture` bigint(20) DEFAULT NULL,
  `id_Chauffeur` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id_Facture`),
  KEY `FK_Facture_id_Voiture` (`id_Voiture`),
  KEY `FK_Facture_id_Chauffeur` (`id_Chauffeur`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `message`
--

DROP TABLE IF EXISTS `message`;
CREATE TABLE IF NOT EXISTS `message` (
  `id_Message` bigint(20) NOT NULL AUTO_INCREMENT,
  `libele_Message` varchar(255) DEFAULT NULL,
  `date_Message` date DEFAULT NULL,
  `telchauffeur_Message` bigint(20) DEFAULT NULL,
  `teladmin_Message` bigint(20) DEFAULT NULL,
  `id_Chauffeur` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id_Message`),
  KEY `FK_Message_id_Chauffeur` (`id_Chauffeur`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `parking`
--

DROP TABLE IF EXISTS `parking`;
CREATE TABLE IF NOT EXISTS `parking` (
  `id_Parking` bigint(20) NOT NULL AUTO_INCREMENT,
  `niveau` varchar(50) DEFAULT NULL,
  `capacite` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id_Parking`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `parking`
--

INSERT INTO `parking` (`id_Parking`, `niveau`, `capacite`) VALUES
(1, 'psrking B', 100);

-- --------------------------------------------------------

--
-- Structure de la table `voiture`
--

DROP TABLE IF EXISTS `voiture`;
CREATE TABLE IF NOT EXISTS `voiture` (
  `id_Voiture` bigint(20) NOT NULL AUTO_INCREMENT,
  `marque_Voiture` varchar(50) DEFAULT NULL,
  `modele_Voiture` varchar(50) DEFAULT NULL,
  `immatriculation_Voiture` varchar(50) DEFAULT NULL,
  `couleur_Voiture` varchar(50) DEFAULT NULL,
  `statut_Voiture` bigint(20) DEFAULT NULL,
  `time_Voiture` time DEFAULT NULL,
  `id_chauffeur` bigint(20) DEFAULT NULL,
  `id_Parking` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id_Voiture`),
  KEY `FK_Voiture_id_chauffeur` (`id_chauffeur`) USING BTREE,
  KEY `FK_Voiture_id_Parking` (`id_Parking`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `chauffeur`
--
ALTER TABLE `chauffeur`
  ADD CONSTRAINT `FK_Chauffeur_voiture_id_voiture` FOREIGN KEY (`voiture_id_voiture`) REFERENCES `voiture` (`id_Voiture`);

--
-- Contraintes pour la table `employe`
--
ALTER TABLE `employe`
  ADD CONSTRAINT `FK_employe_id_Admin` FOREIGN KEY (`id_Admin`) REFERENCES `admin` (`id_Admin`),
  ADD CONSTRAINT `FK_employe_id_Message` FOREIGN KEY (`id_Message`) REFERENCES `message` (`id_Message`);

--
-- Contraintes pour la table `facture`
--
ALTER TABLE `facture`
  ADD CONSTRAINT `FK_Facture_id_Chauffeur` FOREIGN KEY (`id_Chauffeur`) REFERENCES `chauffeur` (`id_Chauffeur`),
  ADD CONSTRAINT `FK_Facture_id_Voiture` FOREIGN KEY (`id_Voiture`) REFERENCES `voiture` (`id_Voiture`);

--
-- Contraintes pour la table `message`
--
ALTER TABLE `message`
  ADD CONSTRAINT `FK_Message_id_Chauffeur` FOREIGN KEY (`id_Chauffeur`) REFERENCES `chauffeur` (`id_Chauffeur`);

--
-- Contraintes pour la table `voiture`
--
ALTER TABLE `voiture`
  ADD CONSTRAINT `FK_Voiture_chauffeur_id_chauffeur` FOREIGN KEY (`id_chauffeur`) REFERENCES `chauffeur` (`id_Chauffeur`),
  ADD CONSTRAINT `FK_Voiture_id_Parkin` FOREIGN KEY (`id_Parking`) REFERENCES `parking` (`id_Parking`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
