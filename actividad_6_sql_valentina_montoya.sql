-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versión del servidor:         10.4.24-MariaDB - mariadb.org binary distribution
-- SO del servidor:              Win64
-- HeidiSQL Versión:             12.0.0.6468
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Volcando estructura de base de datos para los_animales
DROP DATABASE IF EXISTS `los_animales`;
CREATE DATABASE IF NOT EXISTS `los_animales` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE `los_animales`;

-- Volcando estructura para tabla los_animales.animal_species
DROP TABLE IF EXISTS `animal_species`;
CREATE TABLE IF NOT EXISTS `animal_species` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `population` int(11) NOT NULL DEFAULT 0,
  `conservation_status_id` smallint(6) NOT NULL,
  `displacement_shape_id` smallint(6) NOT NULL,
  `embryonic_development_id` smallint(6) NOT NULL,
  `feed_type_id` smallint(6) unsigned NOT NULL,
  `species_type_id` smallint(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4;

-- Volcando datos para la tabla los_animales.animal_species: ~10 rows (aproximadamente)
DELETE FROM `animal_species`;
INSERT INTO `animal_species` (`id`, `name`, `population`, `conservation_status_id`, `displacement_shape_id`, `embryonic_development_id`, `feed_type_id`, `species_type_id`) VALUES
	(1, 'leon', 32000, 5, 2, 2, 1, 1),
	(2, 'velociraptor', 0, 1, 2, 1, 1, 2),
	(3, 'conejo', 40000000, 2, 2, 1, 2, 1),
	(4, 'gato', 7000000, 5, 2, 2, 1, 1),
	(5, 'perro', 7000000, 5, 2, 2, 1, 1),
	(6, 'elefante', 50000, 4, 2, 2, 1, 1),
	(7, 'nutria', 500000, 5, 2, 2, 1, 1),
	(8, 'oso', 2000, 5, 2, 2, 1, 1),
	(9, 'iguana', 40000000, 5, 2, 2, 1, 1),
	(10, 'leopardo', 10000, 1, 2, 2, 1, 1);

-- Volcando estructura para tabla los_animales.displacement_shapes
DROP TABLE IF EXISTS `displacement_shapes`;
CREATE TABLE IF NOT EXISTS `displacement_shapes` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

-- Volcando datos para la tabla los_animales.displacement_shapes: ~3 rows (aproximadamente)
DELETE FROM `displacement_shapes`;
INSERT INTO `displacement_shapes` (`id`, `name`) VALUES
	(1, 'bipedo'),
	(2, 'cuadrupedo'),
	(3, 'apodo');

-- Volcando estructura para tabla los_animales.growth_embryonic
DROP TABLE IF EXISTS `growth_embryonic`;
CREATE TABLE IF NOT EXISTS `growth_embryonic` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

-- Volcando datos para la tabla los_animales.growth_embryonic: ~2 rows (aproximadamente)
DELETE FROM `growth_embryonic`;
INSERT INTO `growth_embryonic` (`id`, `name`) VALUES
	(1, 'oviparo'),
	(2, 'viviparo');

-- Volcando estructura para tabla los_animales.habitats
DROP TABLE IF EXISTS `habitats`;
CREATE TABLE IF NOT EXISTS `habitats` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;

-- Volcando datos para la tabla los_animales.habitats: ~3 rows (aproximadamente)
DELETE FROM `habitats`;
INSERT INTO `habitats` (`id`, `name`) VALUES
	(1, 'aereo'),
	(2, 'terrestre'),
	(3, 'acuatico');

-- Volcando estructura para tabla los_animales.habitats_especies_animal
DROP TABLE IF EXISTS `habitats_especies_animal`;
CREATE TABLE IF NOT EXISTS `habitats_especies_animal` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `especies_animal_id` smallint(5) unsigned NOT NULL,
  `habitats_id` smallint(5) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4;

-- Volcando datos para la tabla los_animales.habitats_especies_animal: ~10 rows (aproximadamente)
DELETE FROM `habitats_especies_animal`;
INSERT INTO `habitats_especies_animal` (`id`, `especies_animal_id`, `habitats_id`) VALUES
	(1, 1, 2),
	(2, 2, 2),
	(3, 3, 2),
	(4, 4, 2),
	(5, 5, 2),
	(6, 6, 2),
	(7, 7, 2),
	(8, 8, 2),
	(9, 9, 2),
	(10, 10, 2);

-- Volcando estructura para tabla los_animales.species_types
DROP TABLE IF EXISTS `species_types`;
CREATE TABLE IF NOT EXISTS `species_types` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

-- Volcando datos para la tabla los_animales.species_types: ~3 rows (aproximadamente)
DELETE FROM `species_types`;
INSERT INTO `species_types` (`id`, `name`) VALUES
	(1, 'mamifero'),
	(2, 'reptil'),
	(3, 'anfibio');

-- Volcando estructura para tabla los_animales.state_preservation
DROP TABLE IF EXISTS `state_preservation`;
CREATE TABLE IF NOT EXISTS `state_preservation` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;

-- Volcando datos para la tabla los_animales.state_preservation: ~5 rows (aproximadamente)
DELETE FROM `state_preservation`;
INSERT INTO `state_preservation` (`id`, `name`) VALUES
	(1, 'extinto'),
	(2, 'sobrepoblacion'),
	(3, 'bajo_riesgo'),
	(4, 'amenazado'),
	(5, 'sin_riesgo');

-- Volcando estructura para tabla los_animales.types_feedings
DROP TABLE IF EXISTS `types_feedings`;
CREATE TABLE IF NOT EXISTS `types_feedings` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

-- Volcando datos para la tabla los_animales.types_feedings: ~3 rows (aproximadamente)
DELETE FROM `types_feedings`;
INSERT INTO `types_feedings` (`id`, `name`) VALUES
	(1, 'carnivoro'),
	(2, 'hervivoro'),
	(3, 'omnivoro');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
