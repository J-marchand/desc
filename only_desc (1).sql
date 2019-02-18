-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2.1
-- http://www.phpmyadmin.net
--
-- Client :  localhost
-- Généré le :  Lun 18 Février 2019 à 17:09
-- Version du serveur :  5.7.25-0ubuntu0.16.04.2
-- Version de PHP :  7.0.33-0ubuntu0.16.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `only_desc`
--

-- --------------------------------------------------------

--
-- Structure de la table `match`
--

CREATE TABLE `match` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `user_like` varchar(1) NOT NULL,
  `liked_id` int(11) NOT NULL,
  `licked_like` varchar(20) NOT NULL,
  `matched` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `match`
--

INSERT INTO `match` (`id`, `user_id`, `user_like`, `liked_id`, `licked_like`, `matched`) VALUES
(9, 5, 'L', 6, 'L', 'no match'),
(13, 6, 'L', 3, 'L', 'match'),
(14, 3, 'L', 7, 'waiting', 'waiting'),
(15, 7, 'L', 5, 'L', 'no match');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `first_name` varchar(20) NOT NULL,
  `last_name` varchar(20) NOT NULL,
  `age` int(2) NOT NULL,
  `img` text,
  `description` text NOT NULL,
  `gender` varchar(10) NOT NULL,
  `create_timestamp` date NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(120) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Contenu de la table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `age`, `img`, `description`, `gender`, `create_timestamp`, `email`, `password`) VALUES
(5, 'manon', 'Tonne', 25, NULL, 'je suis une petite fille', 'F', '2019-02-18', 'manon@test.fr', 'azerty'),
(3, 'Murielle', 'Ginette', 76, NULL, 'Je suis une femme mure et blonde', 'F', '2019-02-18', 'ginettelachaude@test.fr', 'Murielle'),
(4, 'Denis', 'azerty', 25, NULL, 'azertyuiop', 'H', '2019-02-18', 'danis@azerty.fr', 'denis'),
(6, 'quentin', 'bertrand', 11, NULL, 'bjr jcherche 1 fille pr mettre mon zizi dedans', 'H', '2019-02-18', 'quentin@test.fr', 'azerty'),
(7, 'patrice', 'soublos', 35, NULL, 'Bonjour, je suis intéressé pa rle véhicule que vous vendez, est il toujours disponible ?', 'H', '2019-02-18', 'patrice@test.fr', 'azerty'),
(8, 'pierre', 'giraud', 25, NULL, 'bonjour, je cherche des boobs', 'H', '2019-02-18', 'pierre@test.fr', 'azerty'),
(9, 'Marine', 'Morlaud', 32, NULL, 'Bonjour, je suis une femme qui cherche une relation sérieuse.', 'F', '2019-02-18', 'marine@test.fr', 'azerty'),
(10, 'Ramajganja', 'Gagan', 35, NULL, 'bonjour, moi cherche nan formage paprika', 'F', '2019-02-18', 'ramal@test.fr', 'azerty'),
(11, 'marina', 'zoubida', 7, NULL, 'bonjour, je cherche ma maman', 'F', '2019-02-18', 'marina@test.fr', 'azerty'),
(12, 'Mounia', 'Zaroiuia', 55, NULL, 'Bonjour, j\'ai perdu ma petite fille Marina', 'F', '2019-02-18', 'mounia@test.fr', 'azerty'),
(13, 'momo69', '69magueule', 25, NULL, 'bjr je vnd Iphone 8 sans facture, mp pr plus d1fo', 'H', '2019-02-18', 'momo@test.fr', 'azerty'),
(14, 'karim94', '94tupeupastest', 31, NULL, 'ya d\'la chatte ici ou quoi?', 'H', '2019-02-18', 'lacaille94@test.fr', 'azerty');

--
-- Index pour les tables exportées
--

--
-- Index pour la table `match`
--
ALTER TABLE `match`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `match`
--
ALTER TABLE `match`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
