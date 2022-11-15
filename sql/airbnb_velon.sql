-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: May 31, 2022 at 07:01 AM
-- Server version: 5.7.34
-- PHP Version: 8.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `airbnb_velon`
--

-- --------------------------------------------------------

--
-- Table structure for table `hote`
--

CREATE TABLE `hote` (
  `id` int(11) NOT NULL,
  `nom_hote` varchar(50) NOT NULL,
  `superhote` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `hote`
--

INSERT INTO `hote` (`id`, `nom_hote`, `superhote`) VALUES
(1, 'Pierre', 1),
(2, 'William', 0),
(3, 'Sandra', 0),
(4, 'Max', 1),
(5, 'Antony', 1),
(6, 'Antony le testeur', 1);

-- --------------------------------------------------------

--
-- Table structure for table `image`
--

CREATE TABLE `image` (
  `id` int(11) NOT NULL,
  `nom_image` varchar(50) NOT NULL,
  `url` varchar(250) NOT NULL,
  `id_logement` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `image`
--

INSERT INTO `image` (`id`, `nom_image`, `url`, `id_logement`) VALUES
(1, 'villa_magnifique', 'https://magazine.elitehavens.com/wp-content/uploads/2021/05/Header.jpg', 1),
(2, 'appartement_sympa', 'https://www.quelconstructeurchoisir.com/app/uploads/2020/06/maison-neuve-budget-couv.jpg', 3),
(3, 'maison_neuve', 'https://www.quelconstructeurchoisir.com/app/uploads/2020/06/maison-neuve-budget-couv.jpg', 2),
(4, 'petit_appartement', 'https://media.istockphoto.com/photos/europe-modern-complex-of-residential-buildings-picture-id1165384568?s=170667a', 4),
(5, 'petit_appartement', 'https://media.istockphoto.com/photos/europe-modern-complex-of-residential-buildings-picture-id1165384568?s=170667a', 5),
(6, 'petit_appartement', 'https://media.istockphoto.com/photos/europe-modern-complex-of-residential-buildings-picture-id1165384568?s=170667a', 6),
(7, 'Maison_avec_son_charme', 'https://www.rocketmortgage.com/resources-cmsassets/RocketMortgage.com/Article_Images/Large_Images/TypesOfHomes/types-of-homes-hero.jpg', 7),
(8, 'petit_appart_paris', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRBX6wpsjvq_QCEULworD5dEs9wYS6gsRf2dEerAqPl1CN50VeUARAIkIsyeivBiHXXT04&usqp=CAU', 8);

-- --------------------------------------------------------

--
-- Table structure for table `logement`
--

CREATE TABLE `logement` (
  `id` int(11) NOT NULL,
  `nom_logement` varchar(50) NOT NULL,
  `description_logement` text NOT NULL,
  `date_post` date NOT NULL,
  `prix` int(11) NOT NULL,
  `id_type_logement` int(11) NOT NULL,
  `id_ville` int(11) NOT NULL,
  `id_hote` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `logement`
--

INSERT INTO `logement` (`id`, `nom_logement`, `description_logement`, `date_post`, `prix`, `id_type_logement`, `id_ville`, `id_hote`) VALUES
(1, 'Villa à côté du parc', 'Magnifique villa collée au parc afin de profiter du cui-cui des oiseaux', '2022-05-10', 230, 1, 4, 1),
(2, 'Grande maison neuve', 'Toute nouvelle propriété, tout est neuf, l\'endroit est idéal pour passer des vacances', '2022-05-01', 550, 2, 1, 2),
(3, 'Appartement très sympa', 'L\'essentiel pour profiter de son séjour à bas prix, vous ne serez pas déçu !', '2022-05-16', 120, 3, 3, 4),
(4, 'Appartement cosy', 'Appartement avec un très bon charme, petit déjeuner offert', '2022-05-10', 120, 3, 3, 2),
(5, 'Appartement cosy', 'Appartement avec un très bon charme, petit déjeuner offert', '2022-05-10', 120, 3, 3, 2),
(6, 'Appartement très sympa', 'L\'essentiel pour profiter de son séjour à bas prix, vous ne serez pas déçu !', '2022-05-16', 120, 3, 3, 4),
(7, 'Maison charmante', 'Petite maison qui à son charme', '2022-05-31', 200, 3, 3, 5),
(8, 'Appartement au coeur de Paris', 'Appartement au coeur de Paris dans le 2ème, vous serez vraiment heureux là-bas', '2022-05-31', 340, 3, 1, 6);

-- --------------------------------------------------------

--
-- Table structure for table `note`
--

CREATE TABLE `note` (
  `id` int(11) NOT NULL,
  `note` int(11) NOT NULL,
  `id_logement` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `note`
--

INSERT INTO `note` (`id`, `note`, `id_logement`) VALUES
(1, 4, 3),
(2, 3, 3),
(3, 2, 1),
(4, 5, 1),
(5, 1, 2),
(6, 2, 2),
(7, 4, 2),
(8, 5, 1),
(9, 3, 1),
(10, 3, 1),
(11, 5, 1),
(12, 3, 1),
(13, 3, 1),
(14, 5, 1),
(15, 5, 1),
(16, 0, 1),
(17, 5, 7),
(18, 2, 8),
(19, 4, 8),
(20, 1, 8),
(21, 5, 8),
(22, 4, 8),
(23, 3, 8);

-- --------------------------------------------------------

--
-- Table structure for table `type_logement`
--

CREATE TABLE `type_logement` (
  `id` int(11) NOT NULL,
  `nom_type` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `type_logement`
--

INSERT INTO `type_logement` (`id`, `nom_type`) VALUES
(1, 'villa'),
(2, 'maison'),
(3, 'appartement');

-- --------------------------------------------------------

--
-- Table structure for table `ville`
--

CREATE TABLE `ville` (
  `id` int(11) NOT NULL,
  `nom` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ville`
--

INSERT INTO `ville` (`id`, `nom`) VALUES
(1, 'Paris'),
(2, 'Reims'),
(3, 'Lyon'),
(4, 'Toulouse');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `hote`
--
ALTER TABLE `hote`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `image`
--
ALTER TABLE `image`
  ADD PRIMARY KEY (`id`),
  ADD KEY `image_logement_FK` (`id_logement`);

--
-- Indexes for table `logement`
--
ALTER TABLE `logement`
  ADD PRIMARY KEY (`id`),
  ADD KEY `logement_type_logement_FK` (`id_type_logement`),
  ADD KEY `logement_ville0_FK` (`id_ville`),
  ADD KEY `logement_hote1_FK` (`id_hote`);

--
-- Indexes for table `note`
--
ALTER TABLE `note`
  ADD PRIMARY KEY (`id`),
  ADD KEY `note_logement_FK` (`id_logement`);

--
-- Indexes for table `type_logement`
--
ALTER TABLE `type_logement`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ville`
--
ALTER TABLE `ville`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `hote`
--
ALTER TABLE `hote`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `image`
--
ALTER TABLE `image`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `logement`
--
ALTER TABLE `logement`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `note`
--
ALTER TABLE `note`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `type_logement`
--
ALTER TABLE `type_logement`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `ville`
--
ALTER TABLE `ville`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `image`
--
ALTER TABLE `image`
  ADD CONSTRAINT `image_logement_FK` FOREIGN KEY (`id_logement`) REFERENCES `logement` (`id`);

--
-- Constraints for table `logement`
--
ALTER TABLE `logement`
  ADD CONSTRAINT `logement_hote1_FK` FOREIGN KEY (`id_hote`) REFERENCES `hote` (`id`),
  ADD CONSTRAINT `logement_type_logement_FK` FOREIGN KEY (`id_type_logement`) REFERENCES `type_logement` (`id`),
  ADD CONSTRAINT `logement_ville0_FK` FOREIGN KEY (`id_ville`) REFERENCES `ville` (`id`);

--
-- Constraints for table `note`
--
ALTER TABLE `note`
  ADD CONSTRAINT `note_logement_FK` FOREIGN KEY (`id_logement`) REFERENCES `logement` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
