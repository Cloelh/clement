-- phpMyAdmin SQL Dump
-- version 4.9.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Nov 27, 2020 at 01:24 PM
-- Server version: 5.7.26
-- PHP Version: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `klaus`
--

-- --------------------------------------------------------

--
-- Table structure for table `aime`
--

CREATE TABLE `aime` (
  `id` int(11) NOT NULL,
  `idEcrit` int(11) NOT NULL,
  `idUtilisateur` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ecrit`
--

CREATE TABLE `ecrit` (
  `id` int(11) NOT NULL,
  `titre` varchar(255) NOT NULL,
  `contenu` text,
  `dateEcrit` datetime NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `idAuteur` int(11) NOT NULL,
  `idAmi` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ecrit`
--

INSERT INTO `ecrit` (`id`, `titre`, `contenu`, `dateEcrit`, `image`, `idAuteur`, `idAmi`) VALUES
(1, 'test', 'alors comment ca va', '2017-10-10 16:57:14', '', 1, 1),
(4, 'test', 'test', '2020-11-12 17:00:14', 'test.jpg', 4, 5),
(5, 'test 2 ', 'Avant d’essayer de supprimer des lignes, il est recommandé d’effectuer une sauvegarde de la base de données, ou tout du moins de la table concernée par la suppression. Ainsi, s’il y a une mauvaise manipulation il est toujours possible de restaurer les données.', '2020-11-12 17:28:54', 'test.jpg', 4, 5),
(6, 'test', 'Je m\'appelle Boris, j\'ai 20 ans et je suis passionné d\'informatique et de technologie. Diplômé d\'une Licence Informatique de l\'Université de Strasbourg, j\'ai co-fondé en 2019 l\'entreprise Single Quote et je profite de mon t', '2020-11-12 17:36:50', 'test.jpg', 7, 5),
(7, 'cc', 'salut comment ça va ? ', '2020-11-12 22:15:14', 'test.jpg', 7, 5),
(8, 'test 3', 'atique de l\'Université de Strasbourg, j\'ai co-fondé en 2019 l\'entreprise Single Quote et je profite de mon ', '2020-11-12 22:20:45', 'test.jpg', 7, 5),
(9, 'test', 'giorengorengreg', '2020-11-15 16:42:02', 'test.jpg', 5, 4),
(10, 'test pour aimer', 'gnezrjngzenpgfeznfnefngnngomezg,mez', '2020-11-16 07:39:57', 'test.jpg', 4, 5),
(11, 'titre du post', 'nfjengnerlnglrke', '2020-11-21 16:06:07', 'test.jpg', 4, 5);

-- --------------------------------------------------------

--
-- Table structure for table `lien`
--

CREATE TABLE `lien` (
  `id` int(11) NOT NULL,
  `idUtilisateur1` int(11) NOT NULL,
  `idUtilisateur2` int(11) NOT NULL,
  `etat` varchar(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lien`
--

INSERT INTO `lien` (`id`, `idUtilisateur1`, `idUtilisateur2`, `etat`) VALUES
(6, 5, 4, 'ami'),
(12, 6, 4, 'bann'),
(16, 7, 5, 'ami');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `pseudo` varchar(100) NOT NULL,
  `mdp` varchar(255) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `remember` varchar(255) DEFAULT NULL,
  `avatar` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `pseudo`, `mdp`, `email`, `remember`, `avatar`) VALUES
(1, 'gilles', '*A4B6157319038724E3560894F7F932C8886EBFCF', 'gilles@toto.fr', '', ''),
(4, 'cloelh', '00d70c561892a94980befd12a400e26aeb4b8599', 'cloelh@outlook.fr', NULL, NULL),
(5, 'user', '00d70c561892a94980befd12a400e26aeb4b8599', 'user@gmail.com', NULL, NULL),
(6, 'bann', '00d70c561892a94980befd12a400e26aeb4b8599', 'bann@gmail.com', NULL, NULL),
(7, 'attente', '00d70c561892a94980befd12a400e26aeb4b8599', 'attente@gmail.com', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `aime`
--
ALTER TABLE `aime`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ecrit`
--
ALTER TABLE `ecrit`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `lien`
--
ALTER TABLE `lien`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `login` (`pseudo`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `aime`
--
ALTER TABLE `aime`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ecrit`
--
ALTER TABLE `ecrit`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `lien`
--
ALTER TABLE `lien`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
