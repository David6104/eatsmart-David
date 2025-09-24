-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : mer. 24 sep. 2025 à 23:39
-- Version du serveur :  5.7.31
-- Version de PHP : 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `eatsmart_bdd_david`
--

-- --------------------------------------------------------

--
-- Structure de la table `article`
--

DROP TABLE IF EXISTS `article`;
CREATE TABLE IF NOT EXISTS `article` (
  `idArticle` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `prix` decimal(15,2) DEFAULT NULL,
  `description` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `idCategorie` int(11) NOT NULL,
  PRIMARY KEY (`idArticle`),
  KEY `idCategorie` (`idCategorie`)
) ENGINE=MyISAM AUTO_INCREMENT=35 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `article`
--

INSERT INTO `article` (`idArticle`, `nom`, `prix`, `description`, `idCategorie`) VALUES
(1, 'Anchois 23cm', '7.90', 'sauce tomate premium, origan, huile d\'olive extra vierge, anchois, olive', 1),
(2, 'Anchois 33cm', '11.90', 'sauce tomate premium, origan, huile d\'olive extra vierge, anchois, olive', 1),
(3, 'Emmental 23cm', '7.90', 'sauce tomate premium, origan, huile d\'olive extra vierge, emmental, basilic, olive', 1),
(4, 'Emmental 33cm', '11.90', 'sauce tomate premium, origan, huile d\'olive extra vierge, emmental, basilic, olive', 1),
(5, 'Margherita 23cm', '7.90', 'sauce tomate premium, origan, huile d\'olive extra vierge, mozzarella', 1),
(6, 'Margherita 33cm', '11.90', 'sauce tomate premium, origan, huile d\'olive extra vierge, mozzarella', 1),
(7, '3 fromages 23cm', '8.40', 'sauce tomate premium, origan, huile d\'olive extra vierge, mozzarella, emmental, chevre', 1),
(8, '3 fromages 33cm', '12.90', 'sauce tomate premium, origan, huile d\'olive extra vierge, mozzarella, emmental, chevre', 1),
(9, '4 fromages 23cm', '8.90', 'sauce tomate premium, origan, huile d\'olive extra vierge, mozzarella, emmental, chevre, roquefort', 1),
(10, '4 fromages 33cm', '13.90', 'sauce tomate premium, origan, huile d\'olive extra vierge, mozzarella, emmental, chevre, roquefort', 1),
(11, 'Royale 23cm', '8.90', 'sauce tomate premium, origan, huile d\'olive extra vierge, mozzarella, jambon label rouge, champignon brun, olive', 2),
(12, 'Royale 33cm', '13.90', 'sauce tomate premium, origan, huile d\'olive extra vierge, mozzarella, jambon label rouge, champignon brun, olive', 2),
(13, 'Vegetarienne 23cm', '8.90', 'sauce tomate premium, origan, huile d\'olive extra vierge, mozzarella, roquette, oignon rouge, poivron, champignon brun, olive', 2),
(14, 'Vegetarienne 33cm', '13.90', 'sauce tomate premium, origan, huile d\'olive extra vierge, mozzarella, roquette, oignon rouge, poivron, champignon brun, olive', 2),
(15, 'Provencale 23cm', '8.90', 'sauce tomate premium, origan, huile d\'olive extra vierge, mozzarella, filets de poulet rôti, oignon rouge, poivron, olive', 2),
(16, 'Provencale 33cm', '13.90', 'sauce tomate premium, origan, huile d\'olive extra vierge, mozzarella, filets de poulet rôti, oignon rouge, poivron, olive', 2),
(17, 'Espagnol 23cm', '8.90', 'sauce tomate premium, origan, huile d\'olive extra vierge, mozzarella, chorizo de León, poivron, olive', 2),
(18, 'Espagnol 33cm', '13.90', 'sauce tomate premium, origan, huile d\'olive extra vierge, mozzarella, chorizo de León, poivron, olive', 2),
(19, 'Italienne 23cm', '10.40', 'sauce tomate premium, origan, huile d\'olive extra vierge, mozzarella, jambon cru IGP, roquette, parmigiano reggiano, olive', 2),
(20, 'Italienne 33cm', '16.90', 'sauce tomate premium, origan, huile d\'olive extra vierge, mozzarella, jambon cru IGP, roquette, parmigiano reggiano, olive', 2),
(21, 'Armenienne 23cm', '8.90', 'sauce crème fraîche premium, mozzarella, viande hachée 100% pur bœuf, oignon rouge, olive', 3),
(22, 'Armenienne 33cm', '13.90', 'sauce crème fraîche premium, mozzarella, viande hachée 100% pur bœuf, oignon rouge, olive', 3),
(23, 'White royale 23cm', '8.90', 'sauce crème fraîche premium, mozzarella, jambon label rouge, champignon brun, olive', 3),
(24, 'White royale 33cm', '13.90', 'sauce crème fraîche premium, mozzarella, jambon label rouge, champignon brun, olive', 3),
(25, 'Chevre miel 23cm', '8.90', 'sauce crème fraîche premium, mozzarella, chevre, miel, olive', 3),
(26, 'Chevre miel 33cm', '13.90', 'sauce crème fraîche premium, mozzarella, chevre, miel, olive', 3),
(27, 'Tiramisu', '3.90', 'boudoirs imbibés ou non de café, mascarpone, œufs, sucre, arôme vanille, cacao en poudre', 4),
(28, 'Gourmande', '6.90', 'nutella, avec une glace noix de coco râpé ou chocolat, supplément fruits frais possible', 4),
(29, 'Eaux', '1.90', 'eaux cristalline, san pellegrino, badoit', 5),
(30, 'Soda 33cl', '1.90', 'coca original, zero, cherry', 5),
(31, 'Soda 1L+', '3.00', 'coca, icetea, orangina, sprite, oasis', 5),
(32, 'Biere', '3.50', 'desperados, heineken', 5),
(33, 'Vin AOP 25cl', '4.90', 'rouge, rose', 5),
(34, 'Vin AOP 50cl', '7.50', 'rouge, rose', 5);

-- --------------------------------------------------------

--
-- Structure de la table `categorie`
--

DROP TABLE IF EXISTS `categorie`;
CREATE TABLE IF NOT EXISTS `categorie` (
  `idCategorie` int(50) NOT NULL AUTO_INCREMENT,
  `nom` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`idCategorie`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `categorie`
--

INSERT INTO `categorie` (`idCategorie`, `nom`) VALUES
(1, 'classic'),
(2, 'tradition'),
(3, 'creme'),
(4, 'dessert maison'),
(5, 'boisson');

-- --------------------------------------------------------

--
-- Structure de la table `commande`
--

DROP TABLE IF EXISTS `commande`;
CREATE TABLE IF NOT EXISTS `commande` (
  `idCommande` int(11) NOT NULL AUTO_INCREMENT,
  `date_commande` datetime DEFAULT NULL,
  `prixTotal` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `etatCommande` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`idCommande`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `commande`
--

INSERT INTO `commande` (`idCommande`, `date_commande`, `prixTotal`, `etatCommande`) VALUES
(1, '2024-10-25 00:00:00', '7.90', 'en cours'),
(2, '2024-10-25 00:00:00', '23.20', 'en cours'),
(3, '2024-10-25 00:00:00', '23.70', 'en cours'),
(4, '2024-10-25 00:00:00', '34.20', 'en cours'),
(5, '2024-10-25 00:00:00', '17.70', 'en cours');

-- --------------------------------------------------------

--
-- Structure de la table `correspondre`
--

DROP TABLE IF EXISTS `correspondre`;
CREATE TABLE IF NOT EXISTS `correspondre` (
  `idArticle` int(11) NOT NULL,
  `idCommande` int(11) NOT NULL,
  `quantiteArticle` int(11) DEFAULT NULL,
  PRIMARY KEY (`idArticle`,`idCommande`),
  KEY `idCommande` (`idCommande`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `correspondre`
--

INSERT INTO `correspondre` (`idArticle`, `idCommande`, `quantiteArticle`) VALUES
(1, 1, 1),
(1, 2, 1),
(3, 2, 1),
(5, 2, 1),
(1, 3, 3),
(1, 4, 2),
(3, 4, 1),
(5, 4, 2),
(7, 5, 1),
(33, 5, 1),
(27, 5, 1);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
