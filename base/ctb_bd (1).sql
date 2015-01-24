-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 24-Jan-2015 às 18:38
-- Versão do servidor: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `ctb_bd`
--
CREATE DATABASE IF NOT EXISTS `ctb_bd` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `ctb_bd`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `iwk5c_assets`
--

CREATE TABLE IF NOT EXISTS `iwk5c_assets` (
`id` int(10) unsigned NOT NULL COMMENT 'Primary Key',
  `parent_id` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set parent.',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `level` int(10) unsigned NOT NULL COMMENT 'The cached level in the nested tree.',
  `name` varchar(50) NOT NULL COMMENT 'The unique name for the asset.\n',
  `title` varchar(100) NOT NULL COMMENT 'The descriptive title for the asset.',
  `rules` varchar(5120) NOT NULL COMMENT 'JSON encoded access control.'
) ENGINE=InnoDB AUTO_INCREMENT=189 DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `iwk5c_assets`
--

INSERT INTO `iwk5c_assets` (`id`, `parent_id`, `lft`, `rgt`, `level`, `name`, `title`, `rules`) VALUES
(1, 0, 0, 375, 0, 'root.1', 'Root Asset', '{"core.login.site":{"6":1,"2":1},"core.login.admin":{"6":1},"core.login.offline":{"6":1},"core.admin":{"8":1},"core.manage":{"7":1},"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"6":1,"3":1}}'),
(2, 1, 1, 2, 1, 'com_admin', 'com_admin', '{}'),
(3, 1, 3, 6, 1, 'com_banners', 'com_banners', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(4, 1, 7, 8, 1, 'com_cache', 'com_cache', '{"core.admin":{"7":1},"core.manage":{"7":1}}'),
(5, 1, 9, 10, 1, 'com_checkin', 'com_checkin', '{"core.admin":{"7":1},"core.manage":{"7":1}}'),
(6, 1, 11, 12, 1, 'com_config', 'com_config', '{}'),
(7, 1, 13, 18, 1, 'com_contact', 'com_contact', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(8, 1, 19, 112, 1, 'com_content', 'com_content', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.delete":[],"core.edit":{"4":1},"core.edit.state":{"5":1},"core.edit.own":[]}'),
(9, 1, 113, 114, 1, 'com_cpanel', 'com_cpanel', '{}'),
(10, 1, 115, 116, 1, 'com_installer', 'com_installer', '{"core.admin":[],"core.manage":{"7":0},"core.delete":{"7":0},"core.edit.state":{"7":0}}'),
(11, 1, 117, 118, 1, 'com_languages', 'com_languages', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(12, 1, 119, 120, 1, 'com_login', 'com_login', '{}'),
(13, 1, 121, 122, 1, 'com_mailto', 'com_mailto', '{}'),
(14, 1, 123, 124, 1, 'com_massmail', 'com_massmail', '{}'),
(15, 1, 125, 126, 1, 'com_media', 'com_media', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.delete":{"5":1}}'),
(16, 1, 127, 128, 1, 'com_menus', 'com_menus', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(17, 1, 129, 130, 1, 'com_messages', 'com_messages', '{"core.admin":{"7":1},"core.manage":{"7":1}}'),
(18, 1, 131, 328, 1, 'com_modules', 'com_modules', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(19, 1, 329, 332, 1, 'com_newsfeeds', 'com_newsfeeds', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(20, 1, 333, 334, 1, 'com_plugins', 'com_plugins', '{"core.admin":{"7":1},"core.manage":[],"core.edit":[],"core.edit.state":[]}'),
(21, 1, 335, 336, 1, 'com_redirect', 'com_redirect', '{"core.admin":{"7":1},"core.manage":[]}'),
(22, 1, 337, 338, 1, 'com_search', 'com_search', '{"core.admin":{"7":1},"core.manage":{"6":1}}'),
(23, 1, 339, 340, 1, 'com_templates', 'com_templates', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(24, 1, 341, 344, 1, 'com_users', 'com_users', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(25, 1, 345, 348, 1, 'com_weblinks', 'com_weblinks', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.delete":[],"core.edit":{"4":1},"core.edit.state":{"5":1},"core.edit.own":[]}'),
(26, 1, 349, 350, 1, 'com_wrapper', 'com_wrapper', '{}'),
(27, 8, 20, 37, 2, 'com_content.category.2', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(28, 3, 4, 5, 2, 'com_banners.category.3', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(29, 7, 14, 15, 2, 'com_contact.category.4', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(30, 19, 330, 331, 2, 'com_newsfeeds.category.5', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(31, 25, 346, 347, 2, 'com_weblinks.category.6', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(32, 24, 342, 343, 1, 'com_users.category.7', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(33, 1, 351, 352, 1, 'com_finder', 'com_finder', '{"core.admin":{"7":1},"core.manage":{"6":1}}'),
(34, 1, 353, 354, 1, 'com_joomlaupdate', 'com_joomlaupdate', '{"core.admin":[],"core.manage":[],"core.delete":[],"core.edit.state":[]}'),
(35, 1, 355, 356, 1, 'com_tags', 'com_tags', '{"core.admin":[],"core.manage":[],"core.manage":[],"core.delete":[],"core.edit.state":[]}'),
(36, 1, 357, 358, 1, 'com_contenthistory', 'com_contenthistory', '{}'),
(37, 1, 359, 360, 1, 'com_ajax', 'com_ajax', '{}'),
(38, 1, 361, 362, 1, 'com_postinstall', 'com_postinstall', '{}'),
(39, 18, 132, 133, 2, 'com_modules.module.1', 'Main Menu', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(40, 18, 134, 135, 2, 'com_modules.module.2', 'Login', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(41, 18, 136, 137, 2, 'com_modules.module.3', 'Popular Articles', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(42, 18, 138, 139, 2, 'com_modules.module.4', 'Recently Added Articles', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(43, 18, 140, 141, 2, 'com_modules.module.8', 'Toolbar', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(44, 18, 142, 143, 2, 'com_modules.module.9', 'Quick Icons', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(45, 18, 144, 145, 2, 'com_modules.module.10', 'Logged-in Users', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(46, 18, 146, 147, 2, 'com_modules.module.12', 'Admin Menu', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(47, 18, 148, 149, 2, 'com_modules.module.13', 'Admin Submenu', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(48, 18, 150, 151, 2, 'com_modules.module.14', 'User Status', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(49, 18, 152, 153, 2, 'com_modules.module.15', 'Title', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(50, 18, 154, 155, 2, 'com_modules.module.16', 'Login Form', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(51, 18, 156, 157, 2, 'com_modules.module.17', 'Breadcrumbs', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(52, 18, 158, 159, 2, 'com_modules.module.79', 'Multilanguage status', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(53, 18, 160, 161, 2, 'com_modules.module.86', 'Joomla Version', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(54, 18, 162, 163, 2, 'com_modules.module.87', 'testando123', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(55, 27, 21, 22, 3, 'com_content.article.1', 'bkablabla', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(56, 18, 164, 165, 2, 'com_modules.module.88', 'Menu TOPO', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(57, 18, 166, 167, 2, 'com_modules.module.89', 'footerCTB', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(58, 18, 168, 169, 2, 'com_modules.module.90', 'Menu Informativo', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(59, 1, 363, 364, 1, 'com_imageshow', 'imageshow', '{}'),
(60, 18, 170, 171, 2, 'com_modules.module.91', 'JSN ImageShow', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(61, 18, 172, 173, 2, 'com_modules.module.92', 'JSN imageshow Quick Icons', ''),
(62, 1, 365, 366, 1, 'com_phocagallery', 'com_phocagallery', '{}'),
(63, 27, 23, 24, 3, 'com_content.article.2', 'Sobre a Companhia de Transporte do Estado da Bahia ', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(64, 27, 25, 26, 3, 'com_content.article.3', 'Nossa História', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(65, 27, 27, 28, 3, 'com_content.article.4', 'Missão e Visão', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(66, 27, 29, 30, 3, 'com_content.article.5', 'Linha do Tempo', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(67, 18, 174, 175, 2, 'com_modules.module.93', 'Sobre a Companhia de Transporte do Estado da Bahia', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(68, 8, 38, 43, 2, 'com_content.category.8', 'Home', '{"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"6":1,"3":1}}'),
(69, 8, 44, 59, 2, 'com_content.category.9', 'Sobre a Empresa', '{"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"6":1,"3":1}}'),
(70, 18, 176, 177, 2, 'com_modules.module.94', 'Sobre a Companhia de Transporte do Estado da Bahia ', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(71, 27, 33, 34, 3, 'com_content.article.6', 'Sobre a Empresa', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(72, 27, 31, 32, 3, 'com_content.article.7', 'Nossa História', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(73, 18, 178, 179, 2, 'com_modules.module.95', 'Sobre a empresa', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(74, 8, 60, 61, 2, 'com_content.category.10', 'Nossa História', '{"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"6":1,"3":1}}'),
(75, 8, 62, 63, 2, 'com_content.category.11', 'Missão e Visão', '{"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"6":1,"3":1}}'),
(76, 8, 64, 65, 2, 'com_content.category.12', 'Linha do tempo', '{"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"6":1,"3":1}}'),
(77, 8, 66, 67, 2, 'com_content.category.13', 'Projetos', '{"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"6":1,"3":1}}'),
(78, 8, 68, 69, 2, 'com_content.category.14', 'Portal de governança', '{"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"6":1,"3":1}}'),
(79, 69, 45, 58, 3, 'com_content.category.15', 'Organograma', '{"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"6":1,"3":1}}'),
(80, 18, 180, 181, 2, 'com_modules.module.96', 'Nossa História', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(81, 18, 182, 183, 2, 'com_modules.module.97', 'Linha do tempo', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(82, 18, 184, 185, 2, 'com_modules.module.98', 'Organograma', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(83, 18, 186, 187, 2, 'com_modules.module.99', 'Organograma', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(84, 79, 46, 47, 4, 'com_content.category.16', 'Presidencia e Assessoria', '{"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"6":1,"3":1}}'),
(85, 79, 48, 49, 4, 'com_content.category.17', 'Diretoria de Operação e Manutenção', '{"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"6":1,"3":1}}'),
(86, 79, 50, 51, 4, 'com_content.category.18', 'Diretoria do Administrativo e Financeiro', '{"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"6":1,"3":1}}'),
(87, 79, 52, 53, 4, 'com_content.category.19', 'Diretoria de Estações', '{"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"6":1,"3":1}}'),
(88, 79, 54, 55, 4, 'com_content.category.20', 'Diretoria de Obras', '{"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"6":1,"3":1}}'),
(89, 79, 56, 57, 4, 'com_content.category.21', 'Diretoria de Planejamento', '{"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"6":1,"3":1}}'),
(90, 8, 70, 77, 2, 'com_content.category.22', 'Metrô', '{"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"6":1,"3":1}}'),
(91, 8, 78, 79, 2, 'com_content.category.23', 'VLT', '{"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"6":1,"3":1}}'),
(92, 90, 71, 72, 3, 'com_content.category.24', 'Mapas', '{"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"6":1,"3":1}}'),
(93, 90, 73, 74, 3, 'com_content.category.25', 'Preços e Horários', '{"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"6":1,"3":1}}'),
(94, 90, 75, 76, 3, 'com_content.category.26', 'Obras', '{"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"6":1,"3":1}}'),
(95, 18, 188, 189, 2, 'com_modules.module.100', 'Estações de trem do Subúrbio', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(96, 18, 190, 191, 2, 'com_modules.module.101', 'Trem do Subúrbio', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(97, 18, 192, 193, 2, 'com_modules.module.102', 'Mapa das Estações ', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(98, 18, 194, 195, 2, 'com_modules.module.103', 'Pesquise aqui', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(99, 18, 196, 197, 2, 'com_modules.module.104', 'Preços e Horários', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(100, 18, 198, 199, 2, 'com_modules.module.105', 'Metrô', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(101, 18, 200, 201, 2, 'com_modules.module.106', 'Metrô', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(102, 18, 202, 203, 2, 'com_modules.module.107', 'Phoca Gallery Image Module', ''),
(103, 18, 204, 205, 2, 'com_modules.module.108', 'Fotos das Estações', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(104, 18, 206, 207, 2, 'com_modules.module.109', 'Fotos do Metrô', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(105, 18, 208, 209, 2, 'com_modules.module.110', 'Fotos do Metrô', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(106, 27, 35, 36, 3, 'com_content.article.8', 'Inauguração do Metrô de Salvador', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(107, 18, 210, 211, 2, 'com_modules.module.111', 'Home > Notícias', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(108, 18, 212, 213, 2, 'com_modules.module.112', 'Slideshow Metro', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(109, 18, 214, 215, 2, 'com_modules.module.113', 'Metro Html', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(110, 18, 216, 217, 2, 'com_modules.module.114', 'Apoio', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(111, 18, 218, 219, 2, 'com_modules.module.115', 'Trem do Subúrbio', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(112, 18, 220, 221, 2, 'com_modules.module.116', 'Missão e Visão', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(113, 8, 80, 81, 2, 'com_content.category.27', 'Acionistas', '{"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"6":1,"3":1}}'),
(114, 8, 82, 83, 2, 'com_content.category.28', 'Conselho Administrativo', '{"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"6":1,"3":1}}'),
(115, 8, 84, 85, 2, 'com_content.category.29', 'Diretoria', '{"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"6":1,"3":1}}'),
(116, 8, 86, 87, 2, 'com_content.category.30', 'Conselho Fiscal', '{"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"6":1,"3":1}}'),
(117, 8, 88, 89, 2, 'com_content.category.31', 'Estatuto Social', '{"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"6":1,"3":1}}'),
(118, 8, 90, 91, 2, 'com_content.category.32', 'Licitações', '{"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"6":1,"3":1}}'),
(119, 8, 92, 93, 2, 'com_content.category.33', 'Ouvidoria', '{"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"6":1,"3":1}}'),
(120, 8, 94, 95, 2, 'com_content.category.34', 'Galeria', '{"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"6":1,"3":1}}'),
(121, 18, 222, 223, 2, 'com_modules.module.117', 'Diretoria de Estações', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(122, 18, 224, 225, 2, 'com_modules.module.118', 'Diretoria de Operação e Manutenção', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(123, 18, 226, 227, 2, 'com_modules.module.119', 'Presidência e Assessoria', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(124, 18, 228, 229, 2, 'com_modules.module.120', 'Diretoria do Administrativo e Financeiro', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(125, 18, 230, 231, 2, 'com_modules.module.121', 'Diretoria de Obras', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(126, 18, 232, 233, 2, 'com_modules.module.122', 'Diretoria de Planejamento', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(127, 18, 234, 235, 2, 'com_modules.module.123', 'VLT', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(128, 18, 236, 237, 2, 'com_modules.module.124', 'Licitações', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(129, 8, 96, 97, 2, 'com_content.category.35', 'Contatos', '{"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"6":1,"3":1}}'),
(130, 8, 98, 99, 2, 'com_content.category.36', 'Intranet', '{"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"6":1,"3":1}}'),
(131, 8, 100, 101, 2, 'com_content.category.37', 'Eventos', '{"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"6":1,"3":1}}'),
(132, 8, 102, 103, 2, 'com_content.category.38', 'Mapa do Site', '{"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"6":1,"3":1}}'),
(133, 18, 238, 239, 2, 'com_modules.module.125', 'Acionistas', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(134, 18, 240, 241, 2, 'com_modules.module.126', 'Conselho de Administração', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(135, 18, 242, 243, 2, 'com_modules.module.127', 'Diretoria', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(136, 18, 244, 245, 2, 'com_modules.module.128', 'Conselho Fiscal', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(137, 18, 246, 247, 2, 'com_modules.module.129', 'Estatuto Social', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(138, 18, 248, 249, 2, 'com_modules.module.130', 'Projetos', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(139, 18, 250, 251, 2, 'com_modules.module.131', 'Portal Governança', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(140, 18, 252, 253, 2, 'com_modules.module.132', 'Obras', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(141, 18, 254, 255, 2, 'com_modules.module.133', 'Contatos', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(142, 18, 256, 257, 2, 'com_modules.module.134', 'Intranet', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(143, 18, 258, 259, 2, 'com_modules.module.135', 'Eventos', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(144, 18, 260, 261, 2, 'com_modules.module.136', 'Mapa do Site', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(145, 7, 16, 17, 2, 'com_contact.category.39', 'Ouvidoria', '{"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"6":1,"3":1}}'),
(146, 1, 367, 368, 1, 'com_chronoforms5', 'com_chronoforms5', '{}'),
(147, 18, 262, 263, 2, 'com_modules.module.137', 'ChronoForms5', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(148, 1, 369, 372, 1, 'com_visforms', 'visforms', '{}'),
(149, 18, 264, 265, 2, 'com_modules.module.138', 'Visforms', ''),
(150, 18, 266, 267, 2, 'com_modules.module.139', 'Ouvidoria', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(151, 18, 268, 269, 2, 'com_modules.module.140', 'Ouvidoria', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(152, 18, 270, 271, 2, 'com_modules.module.141', 'Galeria', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(153, 148, 370, 371, 2, 'com_visforms.visform.1', 'Ouvidoria', '{"core.delete":{"6":1},"core.create":{"6":1,"3":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"6":1,"3":1},"core.delete.data":[],"core.export.data":[]}'),
(154, 18, 272, 273, 2, 'com_modules.module.142', 'Ouvidoria', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(155, 68, 39, 40, 3, 'com_content.article.9', 'Inauguração do Metrô de Salvador', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(156, 18, 274, 275, 2, 'com_modules.module.143', 'Home', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(157, 8, 104, 111, 2, 'com_content.category.40', 'Ultimas Notícias', '{"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"6":1,"3":1}}'),
(158, 157, 107, 108, 3, 'com_content.article.10', 'Isso é um teste 2', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(159, 157, 105, 106, 3, 'com_content.article.11', 'Isso é um teste 3', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(160, 18, 276, 277, 2, 'com_modules.module.144', 'Ultimas Notícias', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(161, 18, 278, 279, 2, 'com_modules.module.145', 'Ultimas Noticias', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(162, 18, 280, 281, 2, 'com_modules.module.146', 'Ultimas Notícias', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(163, 18, 282, 283, 2, 'com_modules.module.147', 'Últimas Noticias', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(164, 68, 41, 42, 3, 'com_content.article.12', 'Inauguração Metrô', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(165, 157, 109, 110, 3, 'com_content.article.13', 'Blablalba', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(166, 18, 284, 285, 2, 'com_modules.module.148', 'Intranet', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(167, 18, 286, 287, 2, 'com_modules.module.149', 'Banner topo', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(168, 18, 288, 289, 2, 'com_modules.module.150', 'Ouvidoria', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(169, 18, 290, 291, 2, 'com_modules.module.151', 'Governo do Estado da Bahia', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(170, 18, 292, 293, 2, 'com_modules.module.152', 'Links Cabeçalho', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(171, 18, 294, 295, 2, 'com_modules.module.153', 'Logo1', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(172, 18, 296, 297, 2, 'com_modules.module.154', 'Logo2', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(173, 18, 298, 299, 2, 'com_modules.module.155', 'Logo3', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(174, 18, 300, 301, 2, 'com_modules.module.156', 'Logo4', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(175, 18, 302, 303, 2, 'com_modules.module.157', 'Blank Module', ''),
(176, 18, 304, 305, 2, 'com_modules.module.158', 'Banners', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(177, 18, 306, 307, 2, 'com_modules.module.159', 'Icone 1', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(178, 18, 308, 309, 2, 'com_modules.module.160', 'Icone 2', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(179, 18, 310, 311, 2, 'com_modules.module.161', 'Icone 3', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(180, 18, 312, 313, 2, 'com_modules.module.162', 'Icone 4', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(181, 18, 314, 315, 2, 'com_modules.module.163', 'Icone 5', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(182, 1, 373, 374, 1, 'com_mijopolls', 'com_mijopolls', '{}'),
(183, 18, 316, 317, 2, 'com_modules.module.164', 'MijoPolls', ''),
(184, 18, 318, 319, 2, 'com_modules.module.165', 'Poll 1', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(185, 18, 320, 321, 2, 'com_modules.module.166', 'Icone 1', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(186, 18, 322, 323, 2, 'com_modules.module.167', 'Icone 2', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(187, 18, 324, 325, 2, 'com_modules.module.168', 'Icone 3', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(188, 18, 326, 327, 2, 'com_modules.module.169', 'Icone 4', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}');

-- --------------------------------------------------------

--
-- Estrutura da tabela `iwk5c_associations`
--

CREATE TABLE IF NOT EXISTS `iwk5c_associations` (
  `id` int(11) NOT NULL COMMENT 'A reference to the associated item.',
  `context` varchar(50) NOT NULL COMMENT 'The context of the associated item.',
  `key` char(32) NOT NULL COMMENT 'The key for the association computed from an md5 on associated ids.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `iwk5c_banners`
--

CREATE TABLE IF NOT EXISTS `iwk5c_banners` (
`id` int(11) NOT NULL,
  `cid` int(11) NOT NULL DEFAULT '0',
  `type` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `imptotal` int(11) NOT NULL DEFAULT '0',
  `impmade` int(11) NOT NULL DEFAULT '0',
  `clicks` int(11) NOT NULL DEFAULT '0',
  `clickurl` varchar(200) NOT NULL DEFAULT '',
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `description` text NOT NULL,
  `custombannercode` varchar(2048) NOT NULL,
  `sticky` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `params` text NOT NULL,
  `own_prefix` tinyint(1) NOT NULL DEFAULT '0',
  `metakey_prefix` varchar(255) NOT NULL DEFAULT '',
  `purchase_type` tinyint(4) NOT NULL DEFAULT '-1',
  `track_clicks` tinyint(4) NOT NULL DEFAULT '-1',
  `track_impressions` tinyint(4) NOT NULL DEFAULT '-1',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `reset` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `language` char(7) NOT NULL DEFAULT '',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `version` int(10) unsigned NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `iwk5c_banner_clients`
--

CREATE TABLE IF NOT EXISTS `iwk5c_banner_clients` (
`id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL DEFAULT '',
  `contact` varchar(255) NOT NULL DEFAULT '',
  `email` varchar(255) NOT NULL DEFAULT '',
  `extrainfo` text NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `metakey` text NOT NULL,
  `own_prefix` tinyint(4) NOT NULL DEFAULT '0',
  `metakey_prefix` varchar(255) NOT NULL DEFAULT '',
  `purchase_type` tinyint(4) NOT NULL DEFAULT '-1',
  `track_clicks` tinyint(4) NOT NULL DEFAULT '-1',
  `track_impressions` tinyint(4) NOT NULL DEFAULT '-1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `iwk5c_banner_tracks`
--

CREATE TABLE IF NOT EXISTS `iwk5c_banner_tracks` (
  `track_date` datetime NOT NULL,
  `track_type` int(10) unsigned NOT NULL,
  `banner_id` int(10) unsigned NOT NULL,
  `count` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `iwk5c_categories`
--

CREATE TABLE IF NOT EXISTS `iwk5c_categories` (
`id` int(11) NOT NULL,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `lft` int(11) NOT NULL DEFAULT '0',
  `rgt` int(11) NOT NULL DEFAULT '0',
  `level` int(10) unsigned NOT NULL DEFAULT '0',
  `path` varchar(255) NOT NULL DEFAULT '',
  `extension` varchar(50) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `note` varchar(255) NOT NULL DEFAULT '',
  `description` mediumtext NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `metadesc` varchar(1024) NOT NULL COMMENT 'The meta description for the page.',
  `metakey` varchar(1024) NOT NULL COMMENT 'The meta keywords for the page.',
  `metadata` varchar(2048) NOT NULL COMMENT 'JSON encoded metadata properties.',
  `created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `language` char(7) NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT '1'
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `iwk5c_categories`
--

INSERT INTO `iwk5c_categories` (`id`, `asset_id`, `parent_id`, `lft`, `rgt`, `level`, `path`, `extension`, `title`, `alias`, `note`, `description`, `published`, `checked_out`, `checked_out_time`, `access`, `params`, `metadesc`, `metakey`, `metadata`, `created_user_id`, `created_time`, `modified_user_id`, `modified_time`, `hits`, `language`, `version`) VALUES
(1, 0, 0, 0, 79, 0, '', 'system', 'ROOT', 'root', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{}', '', '', '{}', 42, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(2, 27, 1, 1, 2, 1, 'uncategorised', 'com_content', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(3, 28, 1, 3, 4, 1, 'uncategorised', 'com_banners', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(4, 29, 1, 5, 6, 1, 'uncategorised', 'com_contact', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(5, 30, 1, 7, 8, 1, 'uncategorised', 'com_newsfeeds', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(6, 31, 1, 9, 10, 1, 'uncategorised', 'com_weblinks', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(7, 32, 1, 11, 12, 1, 'uncategorised', 'com_users', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(8, 68, 1, 13, 14, 1, 'home', 'com_content', 'Home', 'home', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 303, '2014-06-29 22:59:40', 303, '2014-06-29 23:00:29', 0, '*', 1),
(9, 69, 1, 15, 30, 1, 'sobre-a-empresa', 'com_content', 'Sobre a Empresa', 'sobre-a-empresa', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 303, '2014-06-29 23:00:47', 0, '0000-00-00 00:00:00', 0, '*', 1),
(10, 74, 1, 31, 32, 1, 'nossa-historia', 'com_content', 'Nossa História', 'nossa-historia', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 303, '2014-06-30 00:25:23', 0, '0000-00-00 00:00:00', 0, '*', 1),
(11, 75, 1, 33, 34, 1, 'missao-e-visao', 'com_content', 'Missão e Visão', 'missao-e-visao', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 303, '2014-06-30 00:26:49', 0, '0000-00-00 00:00:00', 0, '*', 1),
(12, 76, 1, 35, 36, 1, 'linha-do-tempo', 'com_content', 'Linha do tempo', 'linha-do-tempo', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 303, '2014-06-30 00:27:10', 0, '0000-00-00 00:00:00', 0, '*', 1),
(13, 77, 1, 37, 38, 1, 'projetos', 'com_content', 'Projetos', 'projetos', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 303, '2014-06-30 00:27:32', 0, '0000-00-00 00:00:00', 0, '*', 1),
(14, 78, 1, 39, 40, 1, 'portal-de-governanca', 'com_content', 'Portal de governança', 'portal-de-governanca', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 303, '2014-06-30 00:27:42', 0, '0000-00-00 00:00:00', 0, '*', 1),
(15, 79, 9, 16, 29, 2, 'sobre-a-empresa/organograma', 'com_content', 'Organograma', 'organograma', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 303, '2014-06-30 00:27:57', 303, '2014-06-30 01:55:29', 0, '*', 1),
(16, 84, 15, 17, 18, 3, 'sobre-a-empresa/organograma/presidencia-e-assessoria', 'com_content', 'Presidencia e Assessoria', 'presidencia-e-assessoria', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 303, '2014-06-30 01:44:34', 303, '2014-06-30 01:53:12', 0, '*', 1),
(17, 85, 15, 19, 20, 3, 'sobre-a-empresa/organograma/diretoria-de-operacao-e-manutencao', 'com_content', 'Diretoria de Operação e Manutenção', 'diretoria-de-operacao-e-manutencao', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 303, '2014-06-30 01:44:50', 303, '2014-06-30 01:53:32', 0, '*', 1),
(18, 86, 15, 21, 22, 3, 'sobre-a-empresa/organograma/diretoria-do-administrativo-e-financeiro', 'com_content', 'Diretoria do Administrativo e Financeiro', 'diretoria-do-administrativo-e-financeiro', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 303, '2014-06-30 01:45:11', 303, '2014-06-30 01:53:53', 0, '*', 1),
(19, 87, 15, 23, 24, 3, 'sobre-a-empresa/organograma/diretoria-de-estacoes', 'com_content', 'Diretoria de Estações', 'diretoria-de-estacoes', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 303, '2014-06-30 01:45:25', 303, '2014-06-30 01:54:16', 0, '*', 1),
(20, 88, 15, 25, 26, 3, 'sobre-a-empresa/organograma/diretoria-de-obras', 'com_content', 'Diretoria de Obras', 'diretoria-de-obras', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 303, '2014-06-30 01:45:38', 303, '2014-06-30 01:54:38', 0, '*', 1),
(21, 89, 15, 27, 28, 3, 'sobre-a-empresa/organograma/diretoria-de-planejamento', 'com_content', 'Diretoria de Planejamento', 'diretoria-de-planejamento', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 303, '2014-06-30 01:45:50', 303, '2014-06-30 01:54:56', 0, '*', 1),
(22, 90, 1, 41, 48, 1, 'metro', 'com_content', 'Metrô', 'metro', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 303, '2014-06-30 02:15:55', 0, '0000-00-00 00:00:00', 0, '*', 1),
(23, 91, 1, 49, 50, 1, 'vlt', 'com_content', 'VLT', 'vlt', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 303, '2014-06-30 02:16:06', 0, '0000-00-00 00:00:00', 0, '*', 1),
(24, 92, 22, 42, 43, 2, 'metro/trem-do-suburbio', 'com_content', 'Mapas', 'trem-do-suburbio', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 303, '2014-06-30 02:16:21', 303, '2014-06-30 02:18:01', 0, '*', 1),
(25, 93, 22, 44, 45, 2, 'metro/precos-e-horarios', 'com_content', 'Preços e Horários', 'precos-e-horarios', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 303, '2014-06-30 02:18:24', 0, '0000-00-00 00:00:00', 0, '*', 1),
(26, 94, 22, 46, 47, 2, 'metro/obras', 'com_content', 'Obras', 'obras', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 303, '2014-06-30 02:19:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(27, 113, 1, 51, 52, 1, 'acionistas', 'com_content', 'Acionistas', 'acionistas', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 303, '2014-06-30 22:07:06', 0, '0000-00-00 00:00:00', 0, '*', 1),
(28, 114, 1, 53, 54, 1, 'conselho-administrativo', 'com_content', 'Conselho Administrativo', 'conselho-administrativo', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 303, '2014-06-30 22:07:20', 0, '0000-00-00 00:00:00', 0, '*', 1),
(29, 115, 1, 55, 56, 1, 'diretoria', 'com_content', 'Diretoria', 'diretoria', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 303, '2014-06-30 22:07:35', 0, '0000-00-00 00:00:00', 0, '*', 1),
(30, 116, 1, 57, 58, 1, 'conselho-fiscal', 'com_content', 'Conselho Fiscal', 'conselho-fiscal', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 303, '2014-06-30 22:07:47', 0, '0000-00-00 00:00:00', 0, '*', 1),
(31, 117, 1, 59, 60, 1, 'estatuto-social', 'com_content', 'Estatuto Social', 'estatuto-social', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 303, '2014-06-30 22:07:59', 0, '0000-00-00 00:00:00', 0, '*', 1),
(32, 118, 1, 61, 62, 1, 'licitacoes', 'com_content', 'Licitações', 'licitacoes', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 303, '2014-06-30 22:08:36', 0, '0000-00-00 00:00:00', 0, '*', 1),
(33, 119, 1, 63, 64, 1, 'ouvidoria', 'com_content', 'Ouvidoria', 'ouvidoria', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 303, '2014-06-30 22:08:45', 0, '0000-00-00 00:00:00', 0, '*', 1),
(34, 120, 1, 65, 66, 1, 'galeria', 'com_content', 'Galeria', 'galeria', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 303, '2014-06-30 22:08:59', 0, '0000-00-00 00:00:00', 0, '*', 1),
(35, 129, 1, 67, 68, 1, 'contatos', 'com_content', 'Contatos', 'contatos', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 303, '2014-06-30 23:02:49', 0, '0000-00-00 00:00:00', 0, '*', 1),
(36, 130, 1, 69, 70, 1, 'intranet', 'com_content', 'Intranet', 'intranet', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 303, '2014-06-30 23:03:03', 0, '0000-00-00 00:00:00', 0, '*', 1),
(37, 131, 1, 71, 72, 1, 'eventos', 'com_content', 'Eventos', 'eventos', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 303, '2014-06-30 23:03:12', 0, '0000-00-00 00:00:00', 0, '*', 1),
(38, 132, 1, 73, 74, 1, 'mapa-do-site', 'com_content', 'Mapa do Site', 'mapa-do-site', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 303, '2014-06-30 23:03:24', 0, '0000-00-00 00:00:00', 0, '*', 1),
(39, 145, 1, 75, 76, 1, 'ouvidoria', 'com_contact', 'Ouvidoria', 'ouvidoria', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 303, '2014-07-01 11:02:54', 0, '0000-00-00 00:00:00', 0, '*', 1),
(40, 157, 1, 77, 78, 1, 'slideshow', 'com_content', 'Ultimas Notícias', 'slideshow', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 303, '2014-07-21 14:43:45', 303, '2014-07-21 17:25:47', 0, '*', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `iwk5c_chronoengine_chronoforms`
--

CREATE TABLE IF NOT EXISTS `iwk5c_chronoengine_chronoforms` (
`id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL DEFAULT '',
  `params` text NOT NULL,
  `extras` longtext NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `app` varchar(255) NOT NULL DEFAULT '',
  `form_type` int(1) NOT NULL DEFAULT '1',
  `content` longtext NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `iwk5c_chronoengine_chronoforms`
--

INSERT INTO `iwk5c_chronoengine_chronoforms` (`id`, `title`, `params`, `extras`, `published`, `app`, `form_type`, `content`) VALUES
(1, 'ouvidoria', '{"description":"Formul\\u00e1rio para a ouvidoria do site","setup":"1","theme":"bootstrap3","tight_layout":"0"}', 'YTozOntzOjY6ImZpZWxkcyI7YToxMjp7czozOiJ7Tn0iO2E6NDQ6e3M6NToibGFiZWwiO3M6MTI6ImxpZGRlbiBMYWJlbCI7czo2OiJpbnB1dHMiO2E6Mjp7czo1OiJmaWVsZCI7YToxMTp7czo4OiJzdWJsYWJlbCI7czowOiIiO3M6MTE6InBsYWNlaG9sZGVyIjtzOjA6IiI7czo5OiJtYXhsZW5ndGgiO3M6MDoiIjtzOjQ6InNpemUiO3M6MDoiIjtzOjU6ImNsYXNzIjtzOjA6IiI7czo1OiJ0aXRsZSI7czowOiIiO3M6NToic3R5bGUiO3M6MDoiIjtzOjY6InBhcmFtcyI7czowOiIiO3M6NDoidHlwZSI7czo0OiJ0ZXh0IjtzOjQ6Im5hbWUiO3M6NzoiY2FwdGNoYSI7czoxMDoidmFsaWRhdGlvbiI7YToxOntzOjg6InJlcXVpcmVkIjtzOjA6IiI7fX1zOjU6ImltYWdlIjthOjM6e3M6NDoidHlwZSI7czo2OiJjdXN0b20iO3M6NDoibmFtZSI7czo3OiJjYXB0Y2hhIjtzOjQ6ImNvZGUiO3M6MTM6IntjYXB0Y2hhX2ltZ30iO319czo2OiJsYXlvdXQiO3M6NDoid2lkZSI7czo0OiJuYW1lIjtzOjExOiJ0ZXh0YXJlYXtOfSI7czoxMToicmVuZGVyX3R5cGUiO3M6Njoic3VibWl0IjtzOjQ6InR5cGUiO3M6ODoidGV4dGFyZWEiO3M6MTI6ImNvbnRhaW5lcl9pZCI7czoxOiIwIjtzOjI6ImlkIjtzOjExOiJ0ZXh0YXJlYXtOfSI7czo1OiJ2YWx1ZSI7czowOiIiO3M6ODoic3VibGFiZWwiO3M6MDoiIjtzOjE1OiJzZWNvbmRhcnlfbGFiZWwiO3M6MDoiIjtzOjc6ImNoZWNrZWQiO3M6MToiMCI7czo1OiJjbGFzcyI7czowOiIiO3M6NToidGl0bGUiO3M6MDoiIjtzOjU6InN0eWxlIjtzOjA6IiI7czo2OiJwYXJhbXMiO3M6MDoiIjtzOjE2OiI6ZGF0YS1sb2FkLXN0YXRlIjtzOjA6IiI7czoxMzoiOmRhdGEtdG9vbHRpcCI7czowOiIiO3M6NToiZ2hvc3QiO3M6MToiMCI7czoxMToiZ2hvc3RfdmFsdWUiO3M6MDoiIjtzOjEwOiJ2YWxpZGF0aW9uIjthOjE0OntzOjg6InJlcXVpcmVkIjtzOjA6IiI7czo5OiJncm91cDp7Tn0iO3M6MDoiIjtzOjc6ImNvbmZpcm0iO3M6MDoiIjtzOjY6ImN1c3RvbSI7czowOiIiO3M6NToiaW1hZ2UiO3M6MDoiIjtzOjU6ImFscGhhIjtzOjA6IiI7czo4OiJhbHBoYW51bSI7czowOiIiO3M6NToiZGlnaXQiO3M6MDoiIjtzOjc6Im5vZGlnaXQiO3M6MDoiIjtzOjY6Im51bWJlciI7czowOiIiO3M6NToiZW1haWwiO3M6MDoiIjtzOjU6InBob25lIjtzOjA6IiI7czoxMToicGhvbmVfaW50ZXIiO3M6MDoiIjtzOjM6InVybCI7czowOiIiO31zOjY6ImV2ZW50cyI7YToxOntpOjA7YTo1OntzOjU6InN0YXRlIjtzOjA6IiI7czo2OiJhY3Rpb24iO3M6MDoiIjtzOjY6InRhcmdldCI7czowOiIiO3M6ODoib3BlcmF0b3IiO3M6MToiPSI7czo3OiJvcHRpb25zIjtzOjA6IiI7fX1zOjc6Im9wdGlvbnMiO3M6MTE6IjA9Tm8NCjE9WWVzIjtzOjY6InZhbHVlcyI7czowOiIiO3M6MTA6Imhvcml6b250YWwiO3M6MToiMCI7czo4OiJicmFja2V0cyI7czoxOiIwIjtzOjEyOiJkeW5hbWljX2RhdGEiO2E6NDp7czo3OiJlbmFibGVkIjtzOjA6IiI7czo5OiJkYXRhX3BhdGgiO3M6MDoiIjtzOjk6InZhbHVlX2tleSI7czowOiIiO3M6ODoidGV4dF9rZXkiO3M6MDoiIjt9czoyODoiOmRhdGEtZ2RhdGV0aW1lcGlja2VyLWZvcm1hdCI7czo1OiJkLW0tWSI7czoxMToicGxhY2Vob2xkZXIiO3M6MDoiIjtzOjQ6InNpemUiO3M6MDoiIjtzOjIxOiI6ZGF0YS1nZGF0ZXRpbWVwaWNrZXIiO3M6MToiMSI7czo1OiJlbXB0eSI7czowOiIiO3M6ODoibXVsdGlwbGUiO3M6MToiMCI7czo5OiJtYXhsZW5ndGgiO3M6MDoiIjtzOjE1OiI6ZGF0YS1pbnB1dG1hc2siO3M6MDoiIjtzOjQ6InJvd3MiO3M6MToiMyI7czo0OiJjb2xzIjtzOjI6IjQwIjtzOjEzOiI6ZGF0YS13eXNpd3lnIjtzOjE6IjAiO3M6MTQ6ImNvbnRhaW5lcl90eXBlIjtzOjA6IiI7czoxMDoic3RhcnRfY29kZSI7czowOiIiO3M6ODoiZW5kX2NvZGUiO3M6MDoiIjtzOjk6ImNvbGxhcHNlZCI7czoxOiIwIjtzOjEwOiJtdWx0aXBsaWVyIjthOjI6e3M6ODoicmVwbGFjZXIiO3M6MToiMCI7czo1OiJjb3VudCI7czoxOiIxIjt9czo0OiJjb2RlIjtzOjExOiJ7UmVDYXB0Y2hhfSI7fWk6MjthOjE4OntzOjQ6Im5hbWUiO3M6NDoiTm9tZSI7czoyOiJpZCI7czoxOiIxIjtzOjU6InZhbHVlIjtzOjA6IiI7czo1OiJsYWJlbCI7YToyOntzOjQ6InRleHQiO3M6NToiTm9tZToiO3M6ODoicG9zaXRpb24iO3M6NDoibGVmdCI7fXM6ODoic3VibGFiZWwiO3M6MDoiIjtzOjExOiJwbGFjZWhvbGRlciI7czowOiIiO3M6OToibWF4bGVuZ3RoIjtzOjA6IiI7czo0OiJzaXplIjtzOjA6IiI7czo1OiJjbGFzcyI7czowOiIiO3M6NToidGl0bGUiO3M6MDoiIjtzOjU6InN0eWxlIjtzOjA6IiI7czoxNToiOmRhdGEtaW5wdXRtYXNrIjtzOjA6IiI7czo2OiJwYXJhbXMiO3M6MDoiIjtzOjE2OiI6ZGF0YS1sb2FkLXN0YXRlIjtzOjA6IiI7czoxMzoiOmRhdGEtdG9vbHRpcCI7czowOiIiO3M6NDoidHlwZSI7czo0OiJ0ZXh0IjtzOjEyOiJjb250YWluZXJfaWQiO3M6MToiMCI7czoxMDoidmFsaWRhdGlvbiI7YToxMjp7czo4OiJyZXF1aXJlZCI7czowOiIiO3M6NToiYWxwaGEiO3M6MDoiIjtzOjg6ImFscGhhbnVtIjtzOjA6IiI7czo1OiJkaWdpdCI7czowOiIiO3M6Nzoibm9kaWdpdCI7czowOiIiO3M6NjoibnVtYmVyIjtzOjA6IiI7czo1OiJlbWFpbCI7czowOiIiO3M6NToicGhvbmUiO3M6MDoiIjtzOjExOiJwaG9uZV9pbnRlciI7czowOiIiO3M6MzoidXJsIjtzOjA6IiI7czo3OiJjb25maXJtIjtzOjA6IiI7czo2OiJjdXN0b20iO3M6MDoiIjt9fWk6MzthOjE4OntzOjQ6Im5hbWUiO3M6ODoiQ1BGL0NOUEoiO3M6MjoiaWQiO3M6ODoiQ1BGL0NOUEoiO3M6NToidmFsdWUiO3M6MDoiIjtzOjU6ImxhYmVsIjthOjI6e3M6NDoidGV4dCI7czo5OiJDUEYvQ05QSjoiO3M6ODoicG9zaXRpb24iO3M6NDoibGVmdCI7fXM6ODoic3VibGFiZWwiO3M6MDoiIjtzOjExOiJwbGFjZWhvbGRlciI7czowOiIiO3M6OToibWF4bGVuZ3RoIjtzOjA6IiI7czo0OiJzaXplIjtzOjA6IiI7czo1OiJjbGFzcyI7czowOiIiO3M6NToidGl0bGUiO3M6MDoiIjtzOjU6InN0eWxlIjtzOjA6IiI7czoxNToiOmRhdGEtaW5wdXRtYXNrIjtzOjA6IiI7czo2OiJwYXJhbXMiO3M6MDoiIjtzOjE2OiI6ZGF0YS1sb2FkLXN0YXRlIjtzOjA6IiI7czoxMzoiOmRhdGEtdG9vbHRpcCI7czowOiIiO3M6NDoidHlwZSI7czo0OiJ0ZXh0IjtzOjEyOiJjb250YWluZXJfaWQiO3M6MToiMCI7czoxMDoidmFsaWRhdGlvbiI7YToxMjp7czo4OiJyZXF1aXJlZCI7czowOiIiO3M6NToiYWxwaGEiO3M6MDoiIjtzOjg6ImFscGhhbnVtIjtzOjA6IiI7czo1OiJkaWdpdCI7czowOiIiO3M6Nzoibm9kaWdpdCI7czowOiIiO3M6NjoibnVtYmVyIjtzOjA6IiI7czo1OiJlbWFpbCI7czowOiIiO3M6NToicGhvbmUiO3M6MDoiIjtzOjExOiJwaG9uZV9pbnRlciI7czowOiIiO3M6MzoidXJsIjtzOjA6IiI7czo3OiJjb25maXJtIjtzOjA6IiI7czo2OiJjdXN0b20iO3M6MDoiIjt9fWk6NDthOjE4OntzOjQ6Im5hbWUiO3M6MzoiQ0VQIjtzOjI6ImlkIjtzOjM6IkNFUCI7czo1OiJ2YWx1ZSI7czowOiIiO3M6NToibGFiZWwiO2E6Mjp7czo0OiJ0ZXh0IjtzOjQ6IkNFUDoiO3M6ODoicG9zaXRpb24iO3M6NDoibGVmdCI7fXM6ODoic3VibGFiZWwiO3M6MDoiIjtzOjExOiJwbGFjZWhvbGRlciI7czowOiIiO3M6OToibWF4bGVuZ3RoIjtzOjA6IiI7czo0OiJzaXplIjtzOjA6IiI7czo1OiJjbGFzcyI7czowOiIiO3M6NToidGl0bGUiO3M6MDoiIjtzOjU6InN0eWxlIjtzOjA6IiI7czoxNToiOmRhdGEtaW5wdXRtYXNrIjtzOjA6IiI7czo2OiJwYXJhbXMiO3M6MDoiIjtzOjE2OiI6ZGF0YS1sb2FkLXN0YXRlIjtzOjA6IiI7czoxMzoiOmRhdGEtdG9vbHRpcCI7czowOiIiO3M6NDoidHlwZSI7czo0OiJ0ZXh0IjtzOjEyOiJjb250YWluZXJfaWQiO3M6MToiMCI7czoxMDoidmFsaWRhdGlvbiI7YToxMjp7czo4OiJyZXF1aXJlZCI7czowOiIiO3M6NToiYWxwaGEiO3M6MDoiIjtzOjg6ImFscGhhbnVtIjtzOjA6IiI7czo1OiJkaWdpdCI7czowOiIiO3M6Nzoibm9kaWdpdCI7czowOiIiO3M6NjoibnVtYmVyIjtzOjA6IiI7czo1OiJlbWFpbCI7czowOiIiO3M6NToicGhvbmUiO3M6MDoiIjtzOjExOiJwaG9uZV9pbnRlciI7czowOiIiO3M6MzoidXJsIjtzOjA6IiI7czo3OiJjb25maXJtIjtzOjA6IiI7czo2OiJjdXN0b20iO3M6MDoiIjt9fWk6NTthOjE4OntzOjQ6Im5hbWUiO3M6NzoiTsO6bWVybyI7czoyOiJpZCI7czo3OiJOw7ptZXJvIjtzOjU6InZhbHVlIjtzOjA6IiI7czo1OiJsYWJlbCI7YToyOntzOjQ6InRleHQiO3M6ODoiTsO6bWVybzoiO3M6ODoicG9zaXRpb24iO3M6NDoibGVmdCI7fXM6ODoic3VibGFiZWwiO3M6MDoiIjtzOjExOiJwbGFjZWhvbGRlciI7czowOiIiO3M6OToibWF4bGVuZ3RoIjtzOjA6IiI7czo0OiJzaXplIjtzOjA6IiI7czo1OiJjbGFzcyI7czowOiIiO3M6NToidGl0bGUiO3M6MDoiIjtzOjU6InN0eWxlIjtzOjA6IiI7czoxNToiOmRhdGEtaW5wdXRtYXNrIjtzOjA6IiI7czo2OiJwYXJhbXMiO3M6MDoiIjtzOjE2OiI6ZGF0YS1sb2FkLXN0YXRlIjtzOjA6IiI7czoxMzoiOmRhdGEtdG9vbHRpcCI7czowOiIiO3M6NDoidHlwZSI7czo0OiJ0ZXh0IjtzOjEyOiJjb250YWluZXJfaWQiO3M6MToiMCI7czoxMDoidmFsaWRhdGlvbiI7YToxMjp7czo4OiJyZXF1aXJlZCI7czowOiIiO3M6NToiYWxwaGEiO3M6MDoiIjtzOjg6ImFscGhhbnVtIjtzOjA6IiI7czo1OiJkaWdpdCI7czowOiIiO3M6Nzoibm9kaWdpdCI7czowOiIiO3M6NjoibnVtYmVyIjtzOjA6IiI7czo1OiJlbWFpbCI7czowOiIiO3M6NToicGhvbmUiO3M6MDoiIjtzOjExOiJwaG9uZV9pbnRlciI7czowOiIiO3M6MzoidXJsIjtzOjA6IiI7czo3OiJjb25maXJtIjtzOjA6IiI7czo2OiJjdXN0b20iO3M6MDoiIjt9fWk6NzthOjE4OntzOjQ6Im5hbWUiO3M6MTA6IkVuZGVyZcOnbzoiO3M6MjoiaWQiO3M6MTA6IkVuZGVyZcOnbzoiO3M6NToidmFsdWUiO3M6MDoiIjtzOjU6ImxhYmVsIjthOjI6e3M6NDoidGV4dCI7czoxMDoiRW5kZXJlw6dvOiI7czo4OiJwb3NpdGlvbiI7czo0OiJsZWZ0Ijt9czo4OiJzdWJsYWJlbCI7czowOiIiO3M6MTE6InBsYWNlaG9sZGVyIjtzOjA6IiI7czo5OiJtYXhsZW5ndGgiO3M6MDoiIjtzOjQ6InNpemUiO3M6MDoiIjtzOjU6ImNsYXNzIjtzOjA6IiI7czo1OiJ0aXRsZSI7czowOiIiO3M6NToic3R5bGUiO3M6MDoiIjtzOjE1OiI6ZGF0YS1pbnB1dG1hc2siO3M6MDoiIjtzOjY6InBhcmFtcyI7czowOiIiO3M6MTY6IjpkYXRhLWxvYWQtc3RhdGUiO3M6MDoiIjtzOjEzOiI6ZGF0YS10b29sdGlwIjtzOjA6IiI7czo0OiJ0eXBlIjtzOjQ6InRleHQiO3M6MTI6ImNvbnRhaW5lcl9pZCI7czoxOiIwIjtzOjEwOiJ2YWxpZGF0aW9uIjthOjEyOntzOjg6InJlcXVpcmVkIjtzOjA6IiI7czo1OiJhbHBoYSI7czowOiIiO3M6ODoiYWxwaGFudW0iO3M6MDoiIjtzOjU6ImRpZ2l0IjtzOjA6IiI7czo3OiJub2RpZ2l0IjtzOjA6IiI7czo2OiJudW1iZXIiO3M6MDoiIjtzOjU6ImVtYWlsIjtzOjA6IiI7czo1OiJwaG9uZSI7czowOiIiO3M6MTE6InBob25lX2ludGVyIjtzOjA6IiI7czozOiJ1cmwiO3M6MDoiIjtzOjc6ImNvbmZpcm0iO3M6MDoiIjtzOjY6ImN1c3RvbSI7czowOiIiO319aTo2O2E6MTg6e3M6NDoibmFtZSI7czoxMjoiQ29tcGxlbWVudG86IjtzOjI6ImlkIjtzOjEyOiJDb21wbGVtZW50bzoiO3M6NToidmFsdWUiO3M6MDoiIjtzOjU6ImxhYmVsIjthOjI6e3M6NDoidGV4dCI7czoxMjoiQ29tcGxlbWVudG86IjtzOjg6InBvc2l0aW9uIjtzOjQ6ImxlZnQiO31zOjg6InN1YmxhYmVsIjtzOjA6IiI7czoxMToicGxhY2Vob2xkZXIiO3M6MDoiIjtzOjk6Im1heGxlbmd0aCI7czowOiIiO3M6NDoic2l6ZSI7czowOiIiO3M6NToiY2xhc3MiO3M6MDoiIjtzOjU6InRpdGxlIjtzOjA6IiI7czo1OiJzdHlsZSI7czowOiIiO3M6MTU6IjpkYXRhLWlucHV0bWFzayI7czowOiIiO3M6NjoicGFyYW1zIjtzOjA6IiI7czoxNjoiOmRhdGEtbG9hZC1zdGF0ZSI7czowOiIiO3M6MTM6IjpkYXRhLXRvb2x0aXAiO3M6MDoiIjtzOjQ6InR5cGUiO3M6NDoidGV4dCI7czoxMjoiY29udGFpbmVyX2lkIjtzOjE6IjAiO3M6MTA6InZhbGlkYXRpb24iO2E6MTI6e3M6ODoicmVxdWlyZWQiO3M6MDoiIjtzOjU6ImFscGhhIjtzOjA6IiI7czo4OiJhbHBoYW51bSI7czowOiIiO3M6NToiZGlnaXQiO3M6MDoiIjtzOjc6Im5vZGlnaXQiO3M6MDoiIjtzOjY6Im51bWJlciI7czowOiIiO3M6NToiZW1haWwiO3M6MDoiIjtzOjU6InBob25lIjtzOjA6IiI7czoxMToicGhvbmVfaW50ZXIiO3M6MDoiIjtzOjM6InVybCI7czowOiIiO3M6NzoiY29uZmlybSI7czowOiIiO3M6NjoiY3VzdG9tIjtzOjA6IiI7fX1pOjg7YToyMDp7czo0OiJuYW1lIjtzOjY6IkVzdGFkbyI7czoyOiJpZCI7czo2OiJFc3RhZG8iO3M6Nzoib3B0aW9ucyI7czozNDk6IjA9QmFoaWENCjE9QWNyZQ0KMj1BbGFnb2FzDQozPUFtYXpvbmFzDQo0PUFtYXDDoQ0KNT1CYWhpYQ0KNj1DZWFyw6ENCjc9R29pw6FzDQo4PU1hcmFuaMOjbw0KOT1NaW5hcyBHZXJhaXMNCjEwPU1hdG8gR3Jvc3NvIGRvIFN1bA0KMTE9TWF0byBHcm9zc28NCjEyPVBhcmHDrWJhDQoxMz1QZXJuYW1idWNvDQoxND1QaWF1w60NCjE1PVBhcmFuw6ENCjE2PVJpbyBkZSBKYW5laXJvDQoxNz1SaW8gR3JhbmRlIGRvIE5vcnRlDQoxOD1Sb25kw7RuaWENCjE5PVJvcmFpbWENCjIwPVNhbnRhIENhdGFyaW5hDQoyMT1SaW8gR3JhbmRlIGRvIFN1bA0KMjI9U2VyZ2lwZQ0KMjM9U8OjbyBQYXVsbw0KMjQ9VG9jYW50aW5zDQoiO3M6NToiZW1wdHkiO3M6MDoiIjtzOjY6InZhbHVlcyI7czowOiIiO3M6NToibGFiZWwiO2E6Mjp7czo0OiJ0ZXh0IjtzOjc6IkVzdGFkbzoiO3M6ODoicG9zaXRpb24iO3M6NDoibGVmdCI7fXM6ODoic3VibGFiZWwiO3M6MDoiIjtzOjg6Im11bHRpcGxlIjtzOjE6IjAiO3M6NDoic2l6ZSI7czowOiIiO3M6NToiY2xhc3MiO3M6MDoiIjtzOjU6InRpdGxlIjtzOjA6IiI7czo1OiJzdHlsZSI7czowOiIiO3M6NjoicGFyYW1zIjtzOjA6IiI7czoxNjoiOmRhdGEtbG9hZC1zdGF0ZSI7czowOiIiO3M6MTM6IjpkYXRhLXRvb2x0aXAiO3M6MDoiIjtzOjQ6InR5cGUiO3M6ODoiZHJvcGRvd24iO3M6MTI6ImNvbnRhaW5lcl9pZCI7czoxOiIwIjtzOjEwOiJ2YWxpZGF0aW9uIjthOjM6e3M6ODoicmVxdWlyZWQiO3M6MDoiIjtzOjc6ImNvbmZpcm0iO3M6MDoiIjtzOjY6ImN1c3RvbSI7czowOiIiO31zOjEyOiJkeW5hbWljX2RhdGEiO2E6NDp7czo3OiJlbmFibGVkIjtzOjA6IiI7czo5OiJkYXRhX3BhdGgiO3M6MDoiIjtzOjk6InZhbHVlX2tleSI7czowOiIiO3M6ODoidGV4dF9rZXkiO3M6MDoiIjt9czo2OiJldmVudHMiO2E6MTp7aTowO2E6NTp7czo4OiJvcGVyYXRvciI7czoxOiI9IjtzOjU6InN0YXRlIjtzOjA6IiI7czo2OiJhY3Rpb24iO3M6MDoiIjtzOjY6InRhcmdldCI7czowOiIiO3M6Nzoib3B0aW9ucyI7czowOiIiO319fWk6OTthOjE4OntzOjQ6Im5hbWUiO3M6NzoiQ2lkYWRlOiI7czoyOiJpZCI7czo3OiJDaWRhZGU6IjtzOjU6InZhbHVlIjtzOjA6IiI7czo1OiJsYWJlbCI7YToyOntzOjQ6InRleHQiO3M6NzoiQ2lkYWRlOiI7czo4OiJwb3NpdGlvbiI7czo0OiJsZWZ0Ijt9czo4OiJzdWJsYWJlbCI7czowOiIiO3M6MTE6InBsYWNlaG9sZGVyIjtzOjA6IiI7czo5OiJtYXhsZW5ndGgiO3M6MDoiIjtzOjQ6InNpemUiO3M6MDoiIjtzOjU6ImNsYXNzIjtzOjA6IiI7czo1OiJ0aXRsZSI7czowOiIiO3M6NToic3R5bGUiO3M6MDoiIjtzOjE1OiI6ZGF0YS1pbnB1dG1hc2siO3M6MDoiIjtzOjY6InBhcmFtcyI7czowOiIiO3M6MTY6IjpkYXRhLWxvYWQtc3RhdGUiO3M6MDoiIjtzOjEzOiI6ZGF0YS10b29sdGlwIjtzOjA6IiI7czo0OiJ0eXBlIjtzOjQ6InRleHQiO3M6MTI6ImNvbnRhaW5lcl9pZCI7czoxOiIwIjtzOjEwOiJ2YWxpZGF0aW9uIjthOjEyOntzOjg6InJlcXVpcmVkIjtzOjA6IiI7czo1OiJhbHBoYSI7czowOiIiO3M6ODoiYWxwaGFudW0iO3M6MDoiIjtzOjU6ImRpZ2l0IjtzOjA6IiI7czo3OiJub2RpZ2l0IjtzOjA6IiI7czo2OiJudW1iZXIiO3M6MDoiIjtzOjU6ImVtYWlsIjtzOjA6IiI7czo1OiJwaG9uZSI7czowOiIiO3M6MTE6InBob25lX2ludGVyIjtzOjA6IiI7czozOiJ1cmwiO3M6MDoiIjtzOjc6ImNvbmZpcm0iO3M6MDoiIjtzOjY6ImN1c3RvbSI7czowOiIiO319aToxMDthOjE4OntzOjQ6Im5hbWUiO3M6OToiVGVsZWZvbmU6IjtzOjI6ImlkIjtzOjk6IlRlbGVmb25lOiI7czo1OiJ2YWx1ZSI7czowOiIiO3M6NToibGFiZWwiO2E6Mjp7czo0OiJ0ZXh0IjtzOjg6IlRlbGVmb25lIjtzOjg6InBvc2l0aW9uIjtzOjQ6ImxlZnQiO31zOjg6InN1YmxhYmVsIjtzOjA6IiI7czoxMToicGxhY2Vob2xkZXIiO3M6MDoiIjtzOjk6Im1heGxlbmd0aCI7czowOiIiO3M6NDoic2l6ZSI7czowOiIiO3M6NToiY2xhc3MiO3M6MDoiIjtzOjU6InRpdGxlIjtzOjA6IiI7czo1OiJzdHlsZSI7czowOiIiO3M6MTU6IjpkYXRhLWlucHV0bWFzayI7czowOiIiO3M6NjoicGFyYW1zIjtzOjA6IiI7czoxNjoiOmRhdGEtbG9hZC1zdGF0ZSI7czowOiIiO3M6MTM6IjpkYXRhLXRvb2x0aXAiO3M6MDoiIjtzOjQ6InR5cGUiO3M6NDoidGV4dCI7czoxMjoiY29udGFpbmVyX2lkIjtzOjE6IjAiO3M6MTA6InZhbGlkYXRpb24iO2E6MTI6e3M6ODoicmVxdWlyZWQiO3M6MDoiIjtzOjU6ImFscGhhIjtzOjA6IiI7czo4OiJhbHBoYW51bSI7czowOiIiO3M6NToiZGlnaXQiO3M6MDoiIjtzOjc6Im5vZGlnaXQiO3M6MDoiIjtzOjY6Im51bWJlciI7czowOiIiO3M6NToiZW1haWwiO3M6MDoiIjtzOjU6InBob25lIjtzOjA6IiI7czoxMToicGhvbmVfaW50ZXIiO3M6MDoiIjtzOjM6InVybCI7czowOiIiO3M6NzoiY29uZmlybSI7czowOiIiO3M6NjoiY3VzdG9tIjtzOjA6IiI7fX1pOjExO2E6MTg6e3M6NDoibmFtZSI7czo1OiJFbWFpbCI7czoyOiJpZCI7czo1OiJFbWFpbCI7czo1OiJ2YWx1ZSI7czowOiIiO3M6NToibGFiZWwiO2E6Mjp7czo0OiJ0ZXh0IjtzOjY6IkVtYWlsOiI7czo4OiJwb3NpdGlvbiI7czo0OiJsZWZ0Ijt9czo4OiJzdWJsYWJlbCI7czowOiIiO3M6MTE6InBsYWNlaG9sZGVyIjtzOjA6IiI7czo5OiJtYXhsZW5ndGgiO3M6MDoiIjtzOjQ6InNpemUiO3M6MDoiIjtzOjU6ImNsYXNzIjtzOjA6IiI7czo1OiJ0aXRsZSI7czowOiIiO3M6NToic3R5bGUiO3M6MDoiIjtzOjE1OiI6ZGF0YS1pbnB1dG1hc2siO3M6MDoiIjtzOjY6InBhcmFtcyI7czowOiIiO3M6MTY6IjpkYXRhLWxvYWQtc3RhdGUiO3M6MDoiIjtzOjEzOiI6ZGF0YS10b29sdGlwIjtzOjA6IiI7czo0OiJ0eXBlIjtzOjQ6InRleHQiO3M6MTI6ImNvbnRhaW5lcl9pZCI7czoxOiIwIjtzOjEwOiJ2YWxpZGF0aW9uIjthOjEyOntzOjg6InJlcXVpcmVkIjtzOjA6IiI7czo1OiJhbHBoYSI7czowOiIiO3M6ODoiYWxwaGFudW0iO3M6MDoiIjtzOjU6ImRpZ2l0IjtzOjA6IiI7czo3OiJub2RpZ2l0IjtzOjA6IiI7czo2OiJudW1iZXIiO3M6MDoiIjtzOjU6ImVtYWlsIjtzOjA6IiI7czo1OiJwaG9uZSI7czowOiIiO3M6MTE6InBob25lX2ludGVyIjtzOjA6IiI7czozOiJ1cmwiO3M6MDoiIjtzOjc6ImNvbmZpcm0iO3M6MDoiIjtzOjY6ImN1c3RvbSI7czowOiIiO319aToxMjthOjE4OntzOjQ6Im5hbWUiO3M6ODoiTWVuc2FnZW0iO3M6MjoiaWQiO3M6ODoiTWVuc2FnZW0iO3M6NToidmFsdWUiO3M6MDoiIjtzOjU6ImxhYmVsIjthOjI6e3M6NDoidGV4dCI7czoxNDoiVGV4dGFyZWEgTGFiZWwiO3M6ODoicG9zaXRpb24iO3M6NDoibGVmdCI7fXM6ODoic3VibGFiZWwiO3M6MDoiIjtzOjExOiJwbGFjZWhvbGRlciI7czowOiIiO3M6NDoicm93cyI7czoxOiIzIjtzOjQ6ImNvbHMiO3M6MjoiNDAiO3M6NToiY2xhc3MiO3M6MDoiIjtzOjU6InRpdGxlIjtzOjA6IiI7czo1OiJzdHlsZSI7czowOiIiO3M6MTM6IjpkYXRhLXd5c2l3eWciO3M6MToiMCI7czo2OiJwYXJhbXMiO3M6MDoiIjtzOjE2OiI6ZGF0YS1sb2FkLXN0YXRlIjtzOjA6IiI7czoxMzoiOmRhdGEtdG9vbHRpcCI7czowOiIiO3M6NDoidHlwZSI7czo4OiJ0ZXh0YXJlYSI7czoxMjoiY29udGFpbmVyX2lkIjtzOjE6IjAiO3M6MTA6InZhbGlkYXRpb24iO2E6ODp7czo4OiJyZXF1aXJlZCI7czowOiIiO3M6NToiYWxwaGEiO3M6MDoiIjtzOjg6ImFscGhhbnVtIjtzOjA6IiI7czo1OiJkaWdpdCI7czowOiIiO3M6Nzoibm9kaWdpdCI7czowOiIiO3M6NjoibnVtYmVyIjtzOjA6IiI7czo3OiJjb25maXJtIjtzOjA6IiI7czo2OiJjdXN0b20iO3M6MDoiIjt9fX1zOjE0OiJhY3Rpb25zX2NvbmZpZyI7YTowOnt9czozOiJETkEiO2E6Mjp7czo0OiJsb2FkIjtzOjA6IiI7czo2OiJzdWJtaXQiO3M6MDoiIjt9fQ==', 1, '', 0, '<div class="gcore-line-tr gcore-form-row" id="ftr-1"><div class="gcore-line-td" id="ftd-1"><label for="1" class="gcore-label-left">Nome:</label>\r\n<div class="gcore-display-table gcore-input" id="fin-1"><input name="Nome" id="1" value="" placeholder="" maxlength="" size="" class="" title="" style="" data-inputmask="" data-load-state="" data-tooltip="" type="text" /></div></div></div><div class="gcore-line-tr gcore-form-row" id="ftr-CPF/CNPJ"><div class="gcore-line-td" id="ftd-CPF/CNPJ"><label for="CPF/CNPJ" class="gcore-label-left">CPF/CNPJ:</label>\r\n<div class="gcore-display-table gcore-input" id="fin-CPF/CNPJ"><input name="CPF/CNPJ" id="CPF/CNPJ" value="" placeholder="" maxlength="" size="" class="" title="" style="" data-inputmask="" data-load-state="" data-tooltip="" type="text" /></div></div></div><div class="gcore-line-tr gcore-form-row" id="ftr-CEP"><div class="gcore-line-td" id="ftd-CEP"><label for="CEP" class="gcore-label-left">CEP:</label>\r\n<div class="gcore-display-table gcore-input" id="fin-CEP"><input name="CEP" id="CEP" value="" placeholder="" maxlength="" size="" class="" title="" style="" data-inputmask="" data-load-state="" data-tooltip="" type="text" /></div></div></div><div class="gcore-line-tr gcore-form-row" id="ftr-Número"><div class="gcore-line-td" id="ftd-Número"><label for="Número" class="gcore-label-left">Número:</label>\r\n<div class="gcore-display-table gcore-input" id="fin-Número"><input name="Número" id="Número" value="" placeholder="" maxlength="" size="" class="" title="" style="" data-inputmask="" data-load-state="" data-tooltip="" type="text" /></div></div></div><div class="gcore-line-tr gcore-form-row" id="ftr-Endereço:"><div class="gcore-line-td" id="ftd-Endereço:"><label for="Endereço:" class="gcore-label-left">Endereço:</label>\r\n<div class="gcore-display-table gcore-input" id="fin-Endereço:"><input name="Endereço:" id="Endereço:" value="" placeholder="" maxlength="" size="" class="" title="" style="" data-inputmask="" data-load-state="" data-tooltip="" type="text" /></div></div></div><div class="gcore-line-tr gcore-form-row" id="ftr-Complemento:"><div class="gcore-line-td" id="ftd-Complemento:"><label for="Complemento:" class="gcore-label-left">Complemento:</label>\r\n<div class="gcore-display-table gcore-input" id="fin-Complemento:"><input name="Complemento:" id="Complemento:" value="" placeholder="" maxlength="" size="" class="" title="" style="" data-inputmask="" data-load-state="" data-tooltip="" type="text" /></div></div></div><div class="gcore-line-tr gcore-form-row" id="ftr-Estado"><div class="gcore-line-td" id="ftd-Estado"><label for="Estado" class="gcore-label-left">Estado:</label>\r\n<div class="gcore-display-table gcore-input" id="fin-Estado"><select name="Estado" id="Estado" size="" class="" title="" style="" data-load-state="" data-tooltip="">\r\n<option value="0">Bahia</option>\r\n<option value="1">Acre</option>\r\n<option value="2">Alagoas</option>\r\n<option value="3">Amazonas</option>\r\n<option value="4">Amapá</option>\r\n<option value="5">Bahia</option>\r\n<option value="6">Ceará</option>\r\n<option value="7">Goiás</option>\r\n<option value="8">Maranhão</option>\r\n<option value="9">Minas Gerais</option>\r\n<option value="10">Mato Grosso do Sul</option>\r\n<option value="11">Mato Grosso</option>\r\n<option value="12">Paraíba</option>\r\n<option value="13">Pernambuco</option>\r\n<option value="14">Piauí</option>\r\n<option value="15">Paraná</option>\r\n<option value="16">Rio de Janeiro</option>\r\n<option value="17">Rio Grande do Norte</option>\r\n<option value="18">Rondônia</option>\r\n<option value="19">Roraima</option>\r\n<option value="20">Santa Catarina</option>\r\n<option value="21">Rio Grande do Sul</option>\r\n<option value="22">Sergipe</option>\r\n<option value="23">São Paulo</option>\r\n<option value="24">Tocantins</option>\r\n<option value=""></option>\r\n</select></div></div></div><div class="gcore-line-tr gcore-form-row" id="ftr-Cidade:"><div class="gcore-line-td" id="ftd-Cidade:"><label for="Cidade:" class="gcore-label-left">Cidade:</label>\r\n<div class="gcore-display-table gcore-input" id="fin-Cidade:"><input name="Cidade:" id="Cidade:" value="" placeholder="" maxlength="" size="" class="" title="" style="" data-inputmask="" data-load-state="" data-tooltip="" type="text" /></div></div></div><div class="gcore-line-tr gcore-form-row" id="ftr-Telefone:"><div class="gcore-line-td" id="ftd-Telefone:"><label for="Telefone:" class="gcore-label-left">Telefone</label>\r\n<div class="gcore-display-table gcore-input" id="fin-Telefone:"><input name="Telefone:" id="Telefone:" value="" placeholder="" maxlength="" size="" class="" title="" style="" data-inputmask="" data-load-state="" data-tooltip="" type="text" /></div></div></div><div class="gcore-line-tr gcore-form-row" id="ftr-Email"><div class="gcore-line-td" id="ftd-Email"><label for="Email" class="gcore-label-left">Email:</label>\r\n<div class="gcore-display-table gcore-input" id="fin-Email"><input name="Email" id="Email" value="" placeholder="" maxlength="" size="" class="" title="" style="" data-inputmask="" data-load-state="" data-tooltip="" type="text" /></div></div></div><div class="gcore-line-tr gcore-form-row" id="ftr-Mensagem"><div class="gcore-line-td" id="ftd-Mensagem"><label for="Mensagem" class="gcore-label-left">Textarea Label</label>\r\n<div class="gcore-display-table gcore-input" id="fin-Mensagem"><textarea name="Mensagem" id="Mensagem" placeholder="" rows="3" cols="40" class="" title="" style="" data-wysiwyg="0" data-load-state="" data-tooltip=""></textarea></div></div></div>'),
(2, 'demo-multipage', '{"description":"Basic multi page form","setup":"0","theme":"bootstrap3"}', 'YTozOntzOjY6ImZpZWxkcyI7YTo5OntpOjI7YToxMjp7czo1OiJsYWJlbCI7czoxMjoiQ29udGFpbmVyICMyIjtzOjE0OiJjb250YWluZXJfdHlwZSI7czo0OiJwYWdlIjtzOjU6InRpdGxlIjtzOjEyOiJDb250YWluZXIgIzIiO3M6MjoiaWQiO3M6MjI6ImNocm9ub2Zvcm0tY29udGFpbmVyLTIiO3M6NToiY2xhc3MiO3M6MjA6ImNocm9ub2Zvcm0tY29udGFpbmVyIjtzOjc6ImNvbnRlbnQiO3M6MDoiIjtzOjQ6Im5hbWUiO3M6OToiY29udGFpbmVyIjtzOjExOiJyZW5kZXJfdHlwZSI7czo5OiJjb250YWluZXIiO3M6NDoidHlwZSI7czo5OiJjb250YWluZXIiO3M6NDoic2l6ZSI7YToxOntzOjU6IndpZHRoIjtzOjI6Ijk5Ijt9czo5OiJjb2xsYXBzZWQiO3M6MToiMCI7czoxMjoiY29udGFpbmVyX2lkIjtzOjE6IjAiO31pOjU7YToxNjp7czo0OiJuYW1lIjtzOjU6InRleHQ1IjtzOjI6ImlkIjtzOjU6InRleHQ1IjtzOjU6InZhbHVlIjtzOjA6IiI7czo1OiJsYWJlbCI7YToyOntzOjQ6InRleHQiO3M6MTA6IlRleHQgTGFiZWwiO3M6ODoicG9zaXRpb24iO3M6NDoibGVmdCI7fXM6ODoic3VibGFiZWwiO3M6MDoiIjtzOjExOiJwbGFjZWhvbGRlciI7czowOiIiO3M6OToibWF4bGVuZ3RoIjtzOjA6IiI7czo0OiJzaXplIjtzOjA6IiI7czo1OiJjbGFzcyI7czowOiIiO3M6NToidGl0bGUiO3M6MDoiIjtzOjU6InN0eWxlIjtzOjA6IiI7czoxNToiOmRhdGEtaW5wdXRtYXNrIjtzOjA6IiI7czo2OiJwYXJhbXMiO3M6MDoiIjtzOjQ6InR5cGUiO3M6NDoidGV4dCI7czoxMjoiY29udGFpbmVyX2lkIjtzOjE6IjIiO3M6MTA6InZhbGlkYXRpb24iO2E6MTA6e3M6ODoicmVxdWlyZWQiO3M6MDoiIjtzOjU6ImFscGhhIjtzOjA6IiI7czo4OiJhbHBoYW51bSI7czowOiIiO3M6NToiZGlnaXQiO3M6MDoiIjtzOjc6Im5vZGlnaXQiO3M6MDoiIjtzOjY6Im51bWJlciI7czowOiIiO3M6NToiZW1haWwiO3M6MDoiIjtzOjU6InBob25lIjtzOjA6IiI7czoxMToicGhvbmVfaW50ZXIiO3M6MDoiIjtzOjM6InVybCI7czowOiIiO319aTo2O2E6OTp7czoxMToicmVuZGVyX3R5cGUiO3M6Njoic3VibWl0IjtzOjQ6Im5hbWUiO3M6NzoiYnV0dG9uNiI7czoyOiJpZCI7czo3OiJidXR0b242IjtzOjQ6InR5cGUiO3M6Njoic3VibWl0IjtzOjU6InZhbHVlIjtzOjY6IlN1Ym1pdCI7czo1OiJjbGFzcyI7czowOiIiO3M6NToic3R5bGUiO3M6MDoiIjtzOjY6InBhcmFtcyI7czowOiIiO3M6MTI6ImNvbnRhaW5lcl9pZCI7czoxOiIyIjt9aTozO2E6MTI6e3M6NToibGFiZWwiO3M6MTI6IkNvbnRhaW5lciAjMyI7czoxNDoiY29udGFpbmVyX3R5cGUiO3M6NDoicGFnZSI7czo1OiJ0aXRsZSI7czoxMjoiQ29udGFpbmVyICMzIjtzOjI6ImlkIjtzOjIyOiJjaHJvbm9mb3JtLWNvbnRhaW5lci0zIjtzOjU6ImNsYXNzIjtzOjIwOiJjaHJvbm9mb3JtLWNvbnRhaW5lciI7czo3OiJjb250ZW50IjtzOjA6IiI7czo0OiJuYW1lIjtzOjk6ImNvbnRhaW5lciI7czoxMToicmVuZGVyX3R5cGUiO3M6OToiY29udGFpbmVyIjtzOjQ6InR5cGUiO3M6OToiY29udGFpbmVyIjtzOjQ6InNpemUiO2E6MTp7czo1OiJ3aWR0aCI7czoyOiI5OSI7fXM6OToiY29sbGFwc2VkIjtzOjE6IjAiO3M6MTI6ImNvbnRhaW5lcl9pZCI7czoxOiIwIjt9aTo3O2E6MTg6e3M6NDoibmFtZSI7czo5OiJkcm9wZG93bjciO3M6MjoiaWQiO3M6OToiZHJvcGRvd243IjtzOjc6Im9wdGlvbnMiO3M6MTE6IjA9Tm8NCjE9WWVzIjtzOjU6ImVtcHR5IjtzOjA6IiI7czo2OiJ2YWx1ZXMiO3M6MDoiIjtzOjU6ImxhYmVsIjthOjI6e3M6NDoidGV4dCI7czoxNDoiRHJvcGRvd24gTGFiZWwiO3M6ODoicG9zaXRpb24iO3M6NDoibGVmdCI7fXM6ODoic3VibGFiZWwiO3M6MDoiIjtzOjg6Im11bHRpcGxlIjtzOjE6IjAiO3M6NDoic2l6ZSI7czowOiIiO3M6NToiY2xhc3MiO3M6MDoiIjtzOjU6InRpdGxlIjtzOjA6IiI7czo1OiJzdHlsZSI7czowOiIiO3M6NjoicGFyYW1zIjtzOjA6IiI7czo0OiJ0eXBlIjtzOjg6ImRyb3Bkb3duIjtzOjEyOiJjb250YWluZXJfaWQiO3M6MToiMyI7czoxMDoidmFsaWRhdGlvbiI7YToxOntzOjg6InJlcXVpcmVkIjtzOjA6IiI7fXM6MTI6ImR5bmFtaWNfZGF0YSI7YTo0OntzOjc6ImVuYWJsZWQiO3M6MDoiIjtzOjk6ImRhdGFfcGF0aCI7czowOiIiO3M6OToidmFsdWVfa2V5IjtzOjA6IiI7czo4OiJ0ZXh0X2tleSI7czowOiIiO31zOjY6ImV2ZW50cyI7YToxOntpOjA7YTo0OntzOjU6InN0YXRlIjtzOjA6IiI7czo2OiJhY3Rpb24iO3M6MDoiIjtzOjY6InRhcmdldCI7czowOiIiO3M6Nzoib3B0aW9ucyI7czowOiIiO319fWk6ODthOjk6e3M6MTE6InJlbmRlcl90eXBlIjtzOjY6InN1Ym1pdCI7czo0OiJuYW1lIjtzOjc6ImJ1dHRvbjgiO3M6MjoiaWQiO3M6NzoiYnV0dG9uOCI7czo0OiJ0eXBlIjtzOjY6InN1Ym1pdCI7czo1OiJ2YWx1ZSI7czo2OiJTdWJtaXQiO3M6NToiY2xhc3MiO3M6MDoiIjtzOjU6InN0eWxlIjtzOjA6IiI7czo2OiJwYXJhbXMiO3M6MDoiIjtzOjEyOiJjb250YWluZXJfaWQiO3M6MToiMyI7fWk6NDthOjEyOntzOjU6ImxhYmVsIjtzOjEyOiJDb250YWluZXIgIzQiO3M6MTQ6ImNvbnRhaW5lcl90eXBlIjtzOjQ6InBhZ2UiO3M6NToidGl0bGUiO3M6MTI6IkNvbnRhaW5lciAjNCI7czoyOiJpZCI7czoyMjoiY2hyb25vZm9ybS1jb250YWluZXItNCI7czo1OiJjbGFzcyI7czoyMDoiY2hyb25vZm9ybS1jb250YWluZXIiO3M6NzoiY29udGVudCI7czowOiIiO3M6NDoibmFtZSI7czo5OiJjb250YWluZXIiO3M6MTE6InJlbmRlcl90eXBlIjtzOjk6ImNvbnRhaW5lciI7czo0OiJ0eXBlIjtzOjk6ImNvbnRhaW5lciI7czo0OiJzaXplIjthOjE6e3M6NToid2lkdGgiO3M6MjoiOTkiO31zOjk6ImNvbGxhcHNlZCI7czoxOiIwIjtzOjEyOiJjb250YWluZXJfaWQiO3M6MToiMCI7fWk6OTthOjE2OntzOjQ6Im5hbWUiO3M6MTc6ImNoZWNrYm94X2dyb3VwOVtdIjtzOjI6ImlkIjtzOjE1OiJjaGVja2JveF9ncm91cDkiO3M6Nzoib3B0aW9ucyI7czoxNDoiTm89Tm8NClllcz1ZZXMiO3M6NjoidmFsdWVzIjtzOjA6IiI7czo1OiJsYWJlbCI7YToyOntzOjQ6InRleHQiO3M6MTQ6IkNoZWNrYm94IEdyb3VwIjtzOjg6InBvc2l0aW9uIjtzOjQ6ImxlZnQiO31zOjg6InN1YmxhYmVsIjtzOjA6IiI7czoxMDoiaG9yaXpvbnRhbCI7czoxOiIwIjtzOjU6ImNsYXNzIjtzOjA6IiI7czo1OiJ0aXRsZSI7czowOiIiO3M6NToic3R5bGUiO3M6MDoiIjtzOjY6InBhcmFtcyI7czowOiIiO3M6ODoiYnJhY2tldHMiO3M6MToiMCI7czo0OiJ0eXBlIjtzOjE0OiJjaGVja2JveF9ncm91cCI7czoxMjoiY29udGFpbmVyX2lkIjtzOjE6IjQiO3M6MTA6InZhbGlkYXRpb24iO2E6MTp7czo3OiJncm91cDo5IjtzOjA6IiI7fXM6NjoiZXZlbnRzIjthOjE6e2k6MDthOjM6e3M6NToic3RhdGUiO3M6MDoiIjtzOjY6ImFjdGlvbiI7czowOiIiO3M6NjoidGFyZ2V0IjtzOjA6IiI7fX19aToxMDthOjk6e3M6MTE6InJlbmRlcl90eXBlIjtzOjY6InN1Ym1pdCI7czo0OiJuYW1lIjtzOjg6ImJ1dHRvbjEwIjtzOjI6ImlkIjtzOjg6ImJ1dHRvbjEwIjtzOjQ6InR5cGUiO3M6Njoic3VibWl0IjtzOjU6InZhbHVlIjtzOjY6IlN1Ym1pdCI7czo1OiJjbGFzcyI7czowOiIiO3M6NToic3R5bGUiO3M6MDoiIjtzOjY6InBhcmFtcyI7czowOiIiO3M6MTI6ImNvbnRhaW5lcl9pZCI7czoxOiI0Ijt9fXM6MTQ6ImFjdGlvbnNfY29uZmlnIjthOjg6e2k6NDthOjE6e3M6NToicmVzZXQiO3M6MToiMSI7fWk6MDthOjg6e3M6NDoicGFnZSI7czoxOiIxIjtzOjEyOiJzdWJtaXRfZXZlbnQiO3M6NToicGFnZTIiO3M6MTE6ImZvcm1fbWV0aG9kIjtzOjQ6ImZpbGUiO3M6MTA6ImFjdGlvbl91cmwiO3M6MDoiIjtzOjEwOiJmb3JtX2NsYXNzIjtzOjEwOiJjaHJvbm9mb3JtIjtzOjE1OiJmb3JtX3RhZ19hdHRhY2giO3M6MDoiIjtzOjEyOiJyZWxhdGl2ZV91cmwiO3M6MToiMSI7czoxMToiYWpheF9zdWJtaXQiO3M6MToiMCI7fWk6NTthOjE6e3M6NToicmVzZXQiO3M6MToiMCI7fWk6MzthOjE6e3M6NzoiZW5hYmxlZCI7czoxOiIxIjt9aTo2O2E6MTp7czo1OiJyZXNldCI7czoxOiIwIjt9aToxO2E6ODp7czo0OiJwYWdlIjtzOjE6IjIiO3M6MTI6InN1Ym1pdF9ldmVudCI7czo1OiJwYWdlMyI7czoxMToiZm9ybV9tZXRob2QiO3M6NDoiZmlsZSI7czoxMDoiYWN0aW9uX3VybCI7czowOiIiO3M6MTA6ImZvcm1fY2xhc3MiO3M6MTA6ImNocm9ub2Zvcm0iO3M6MTU6ImZvcm1fdGFnX2F0dGFjaCI7czowOiIiO3M6MTI6InJlbGF0aXZlX3VybCI7czoxOiIxIjtzOjExOiJhamF4X3N1Ym1pdCI7czoxOiIwIjt9aTo3O2E6MTp7czo1OiJyZXNldCI7czoxOiIwIjt9aToyO2E6ODp7czo0OiJwYWdlIjtzOjE6IjMiO3M6MTI6InN1Ym1pdF9ldmVudCI7czo2OiJzdWJtaXQiO3M6MTE6ImZvcm1fbWV0aG9kIjtzOjQ6ImZpbGUiO3M6MTA6ImFjdGlvbl91cmwiO3M6MDoiIjtzOjEwOiJmb3JtX2NsYXNzIjtzOjEwOiJjaHJvbm9mb3JtIjtzOjE1OiJmb3JtX3RhZ19hdHRhY2giO3M6MDoiIjtzOjEyOiJyZWxhdGl2ZV91cmwiO3M6MToiMSI7czoxMToiYWpheF9zdWJtaXQiO3M6MToiMCI7fX1zOjM6IkROQSI7YTo0OntzOjQ6ImxvYWQiO2E6Mjp7czoxMjoibXVsdGlfcGFnZV80IjtzOjA6IiI7czo2OiJodG1sXzAiO3M6MDoiIjt9czo2OiJzdWJtaXQiO2E6Mjp7czoxMjoibXVsdGlfcGFnZV81IjtzOjA6IiI7czoxMDoiZGVidWdnZXJfMyI7czowOiIiO31zOjU6InBhZ2UyIjthOjI6e3M6MTI6Im11bHRpX3BhZ2VfNiI7czowOiIiO3M6NjoiaHRtbF8xIjtzOjA6IiI7fXM6NToicGFnZTMiO2E6Mjp7czoxMjoibXVsdGlfcGFnZV83IjtzOjA6IiI7czo2OiJodG1sXzIiO3M6MDoiIjt9fX0=', 1, '', 1, '<div class="form-group gcore-form-row" id="form-row-2"><label for="text5" class="control-label gcore-label-left">Text Label</label>\n<div class="gcore-input gcore-display-table" id="fin-text5"><input name="text5" id="text5" value="" placeholder="" maxlength="" size="" class="form-control A" title="" style="" data-inputmask="" type="text" /></div></div><div class="form-group gcore-form-row" id="form-row-3"><div class="gcore-input gcore-display-table" id="fin-button6"><input name="button6" id="button6" type="submit" value="Submit" class="form-control A" style="" /></div></div><!--_CHRONOFORMS_PAGE_BREAK_--><div class="form-group gcore-form-row" id="form-row-4"><label for="dropdown7" class="control-label gcore-label-left">Dropdown Label</label>\n<div class="gcore-input gcore-display-table" id="fin-dropdown7"><select name="dropdown7" id="dropdown7" size="" class="form-control A" title="" style="">\n<option value="0">No</option>\n<option value="1">Yes</option>\n</select></div></div><div class="form-group gcore-form-row" id="form-row-5"><div class="gcore-input gcore-display-table" id="fin-button8"><input name="button8" id="button8" type="submit" value="Submit" class="form-control A" style="" /></div></div><!--_CHRONOFORMS_PAGE_BREAK_--><div class="form-group gcore-form-row" id="form-row-11"><label for="checkbox_group9" class="control-label gcore-label-left gcore-label-checkbox">Checkbox Group</label>\n<div class="gcore-input gcore-display-table" id="fin-checkbox_group9"><div class="gcore-single-column" id="fclmn10"><div class="gcore-checkbox-item" id="fitem7"><input name="checkbox_group9[]" id="checkbox_group96" class="A" title="" style="" type="checkbox" value="No" />\n<label class="control-label gcore-label-checkbox" for="checkbox_group96">No</label></div>\n<div class="gcore-checkbox-item" id="fitem9"><input name="checkbox_group9[]" id="checkbox_group98" class="A" title="" style="" type="checkbox" value="Yes" />\n<label class="control-label gcore-label-checkbox" for="checkbox_group98">Yes</label></div></div></div></div><div class="form-group gcore-form-row" id="form-row-12"><div class="gcore-input gcore-display-table" id="fin-button10"><input name="button10" id="button10" type="submit" value="Submit" class="form-control A" style="" /></div></div><!--_CHRONOFORMS_PAGE_BREAK_-->'),
(3, 'demo-basic-contact', '{"description":"Basic contact form with fields validation","setup":"0","theme":"bootstrap3"}', 'YTozOntzOjY6ImZpZWxkcyI7YTo1OntpOjE7YToxNjp7czo0OiJuYW1lIjtzOjQ6Im5hbWUiO3M6MjoiaWQiO3M6NDoibmFtZSI7czo1OiJ2YWx1ZSI7czowOiIiO3M6NToibGFiZWwiO2E6Mjp7czo0OiJ0ZXh0IjtzOjQ6Ik5hbWUiO3M6ODoicG9zaXRpb24iO3M6NDoibGVmdCI7fXM6ODoic3VibGFiZWwiO3M6MDoiIjtzOjExOiJwbGFjZWhvbGRlciI7czowOiIiO3M6OToibWF4bGVuZ3RoIjtzOjA6IiI7czo0OiJzaXplIjtzOjA6IiI7czo1OiJjbGFzcyI7czowOiIiO3M6NToidGl0bGUiO3M6MDoiIjtzOjU6InN0eWxlIjtzOjA6IiI7czoxNToiOmRhdGEtaW5wdXRtYXNrIjtzOjA6IiI7czo2OiJwYXJhbXMiO3M6MDoiIjtzOjQ6InR5cGUiO3M6NDoidGV4dCI7czoxMjoiY29udGFpbmVyX2lkIjtzOjE6IjAiO3M6MTA6InZhbGlkYXRpb24iO2E6MTA6e3M6ODoicmVxdWlyZWQiO3M6MToiMSI7czo1OiJhbHBoYSI7czowOiIiO3M6ODoiYWxwaGFudW0iO3M6MDoiIjtzOjU6ImRpZ2l0IjtzOjA6IiI7czo3OiJub2RpZ2l0IjtzOjA6IiI7czo2OiJudW1iZXIiO3M6MDoiIjtzOjU6ImVtYWlsIjtzOjA6IiI7czo1OiJwaG9uZSI7czowOiIiO3M6MTE6InBob25lX2ludGVyIjtzOjA6IiI7czozOiJ1cmwiO3M6MDoiIjt9fWk6MjthOjE2OntzOjQ6Im5hbWUiO3M6NToiZW1haWwiO3M6MjoiaWQiO3M6NToiZW1haWwiO3M6NToidmFsdWUiO3M6MDoiIjtzOjU6ImxhYmVsIjthOjI6e3M6NDoidGV4dCI7czo1OiJFbWFpbCI7czo4OiJwb3NpdGlvbiI7czo0OiJsZWZ0Ijt9czo4OiJzdWJsYWJlbCI7czowOiIiO3M6MTE6InBsYWNlaG9sZGVyIjtzOjA6IiI7czo5OiJtYXhsZW5ndGgiO3M6MDoiIjtzOjQ6InNpemUiO3M6MDoiIjtzOjU6ImNsYXNzIjtzOjA6IiI7czo1OiJ0aXRsZSI7czowOiIiO3M6NToic3R5bGUiO3M6MDoiIjtzOjE1OiI6ZGF0YS1pbnB1dG1hc2siO3M6MDoiIjtzOjY6InBhcmFtcyI7czowOiIiO3M6NDoidHlwZSI7czo0OiJ0ZXh0IjtzOjEyOiJjb250YWluZXJfaWQiO3M6MToiMCI7czoxMDoidmFsaWRhdGlvbiI7YToxMDp7czo4OiJyZXF1aXJlZCI7czoxOiIxIjtzOjU6ImFscGhhIjtzOjA6IiI7czo4OiJhbHBoYW51bSI7czowOiIiO3M6NToiZGlnaXQiO3M6MDoiIjtzOjc6Im5vZGlnaXQiO3M6MDoiIjtzOjY6Im51bWJlciI7czowOiIiO3M6NToiZW1haWwiO3M6MToiMSI7czo1OiJwaG9uZSI7czowOiIiO3M6MTE6InBob25lX2ludGVyIjtzOjA6IiI7czozOiJ1cmwiO3M6MDoiIjt9fWk6MzthOjE2OntzOjQ6Im5hbWUiO3M6Nzoic3ViamVjdCI7czoyOiJpZCI7czo3OiJzdWJqZWN0IjtzOjU6InZhbHVlIjtzOjA6IiI7czo1OiJsYWJlbCI7YToyOntzOjQ6InRleHQiO3M6NzoiU3ViamVjdCI7czo4OiJwb3NpdGlvbiI7czo0OiJsZWZ0Ijt9czo4OiJzdWJsYWJlbCI7czowOiIiO3M6MTE6InBsYWNlaG9sZGVyIjtzOjA6IiI7czo5OiJtYXhsZW5ndGgiO3M6MDoiIjtzOjQ6InNpemUiO3M6MDoiIjtzOjU6ImNsYXNzIjtzOjI6IlhMIjtzOjU6InRpdGxlIjtzOjA6IiI7czo1OiJzdHlsZSI7czowOiIiO3M6MTU6IjpkYXRhLWlucHV0bWFzayI7czowOiIiO3M6NjoicGFyYW1zIjtzOjA6IiI7czo0OiJ0eXBlIjtzOjQ6InRleHQiO3M6MTI6ImNvbnRhaW5lcl9pZCI7czoxOiIwIjtzOjEwOiJ2YWxpZGF0aW9uIjthOjEwOntzOjg6InJlcXVpcmVkIjtzOjE6IjEiO3M6NToiYWxwaGEiO3M6MDoiIjtzOjg6ImFscGhhbnVtIjtzOjA6IiI7czo1OiJkaWdpdCI7czowOiIiO3M6Nzoibm9kaWdpdCI7czowOiIiO3M6NjoibnVtYmVyIjtzOjA6IiI7czo1OiJlbWFpbCI7czowOiIiO3M6NToicGhvbmUiO3M6MDoiIjtzOjExOiJwaG9uZV9pbnRlciI7czowOiIiO3M6MzoidXJsIjtzOjA6IiI7fX1pOjQ7YToxNTp7czo0OiJuYW1lIjtzOjc6Im1lc3NhZ2UiO3M6MjoiaWQiO3M6NzoibWVzc2FnZSI7czo1OiJ2YWx1ZSI7czowOiIiO3M6NToibGFiZWwiO2E6Mjp7czo0OiJ0ZXh0IjtzOjc6Ik1lc3NhZ2UiO3M6ODoicG9zaXRpb24iO3M6NDoibGVmdCI7fXM6ODoic3VibGFiZWwiO3M6MDoiIjtzOjExOiJwbGFjZWhvbGRlciI7czowOiIiO3M6NDoicm93cyI7czoxOiI4IjtzOjQ6ImNvbHMiO3M6MjoiNjAiO3M6NToiY2xhc3MiO3M6MDoiIjtzOjU6InRpdGxlIjtzOjA6IiI7czo1OiJzdHlsZSI7czowOiIiO3M6NjoicGFyYW1zIjtzOjA6IiI7czo0OiJ0eXBlIjtzOjg6InRleHRhcmVhIjtzOjEyOiJjb250YWluZXJfaWQiO3M6MToiMCI7czoxMDoidmFsaWRhdGlvbiI7YTo2OntzOjg6InJlcXVpcmVkIjtzOjE6IjEiO3M6NToiYWxwaGEiO3M6MDoiIjtzOjg6ImFscGhhbnVtIjtzOjA6IiI7czo1OiJkaWdpdCI7czowOiIiO3M6Nzoibm9kaWdpdCI7czowOiIiO3M6NjoibnVtYmVyIjtzOjA6IiI7fX1pOjU7YTo5OntzOjExOiJyZW5kZXJfdHlwZSI7czo2OiJzdWJtaXQiO3M6NDoibmFtZSI7czo3OiJzdWJtaXQ1IjtzOjI6ImlkIjtzOjc6InN1Ym1pdDUiO3M6NDoidHlwZSI7czo2OiJzdWJtaXQiO3M6NToidmFsdWUiO3M6NjoiU3VibWl0IjtzOjU6ImNsYXNzIjtzOjA6IiI7czo1OiJzdHlsZSI7czowOiIiO3M6NjoicGFyYW1zIjtzOjA6IiI7czoxMjoiY29udGFpbmVyX2lkIjtzOjE6IjAiO319czoxNDoiYWN0aW9uc19jb25maWciO2E6Mzp7aTowO2E6ODp7czo0OiJwYWdlIjtzOjE6IjEiO3M6MTI6InN1Ym1pdF9ldmVudCI7czo2OiJzdWJtaXQiO3M6MTE6ImZvcm1fbWV0aG9kIjtzOjQ6ImZpbGUiO3M6MTA6ImFjdGlvbl91cmwiO3M6MDoiIjtzOjEwOiJmb3JtX2NsYXNzIjtzOjEwOiJjaHJvbm9mb3JtIjtzOjE1OiJmb3JtX3RhZ19hdHRhY2giO3M6MDoiIjtzOjEyOiJyZWxhdGl2ZV91cmwiO3M6MToiMSI7czoxMToiYWpheF9zdWJtaXQiO3M6MToiMCI7fWk6MTthOjE4OntzOjEyOiJhY3Rpb25fbGFiZWwiO3M6NToiQWRtaW4iO3M6NzoiZW5hYmxlZCI7czoxOiIxIjtzOjI6InRvIjtzOjI2OiJ5b3VyX2VtYWlsX2hlcmVAZG9tYWluLmNvbSI7czo3OiJzdWJqZWN0IjtzOjIyOiJZb3VyIFN1YmplY3QgR29lcyBIZXJlIjtzOjk6ImZyb21fbmFtZSI7czo1OiJBZG1pbiI7czoxMDoiZnJvbV9lbWFpbCI7czoxNjoiYWRtaW5AZG9tYWluLmNvbSI7czoxMDoiZW1haWxfdHlwZSI7czo0OiJodG1sIjtzOjg6InRlbXBsYXRlIjtzOjExNzI6IjxkaXYgY2xhc3M9Imdmb3JtLWFsbCI+PGRpdiBjbGFzcz0iZ2Zvcm0tc2VjdGlvbiI+PGRpdiBjbGFzcz0iZ2Zvcm0tbGluZS10ciIgaWQ9ImZ0ci1uYW1lIj48ZGl2IGNsYXNzPSJnZm9ybS1saW5lLXRkIiBpZD0iZnRkLW5hbWUiPjxsYWJlbCBmb3I9Im5hbWUiIGNsYXNzPSJnZm9ybS1sYWJlbC1sZWZ0Ij5OYW1lPC9sYWJlbD4NCjxkaXYgY2xhc3M9Imdmb3JtLWlucHV0LWNvbnRhaW5lciBnZm9ybS1pbnB1dCIgaWQ9ImZpbi1uYW1lIj57bmFtZX08L2Rpdj48L2Rpdj48L2Rpdj48ZGl2IGNsYXNzPSJnZm9ybS1saW5lLXRyIiBpZD0iZnRyLWVtYWlsIj48ZGl2IGNsYXNzPSJnZm9ybS1saW5lLXRkIiBpZD0iZnRkLWVtYWlsIj48bGFiZWwgZm9yPSJlbWFpbCIgY2xhc3M9Imdmb3JtLWxhYmVsLWxlZnQiPkVtYWlsPC9sYWJlbD4NCjxkaXYgY2xhc3M9Imdmb3JtLWlucHV0LWNvbnRhaW5lciBnZm9ybS1pbnB1dCIgaWQ9ImZpbi1lbWFpbCI+e2VtYWlsfTwvZGl2PjwvZGl2PjwvZGl2PjxkaXYgY2xhc3M9Imdmb3JtLWxpbmUtdHIiIGlkPSJmdHItc3ViamVjdCI+PGRpdiBjbGFzcz0iZ2Zvcm0tbGluZS10ZCIgaWQ9ImZ0ZC1zdWJqZWN0Ij48bGFiZWwgZm9yPSJzdWJqZWN0IiBjbGFzcz0iZ2Zvcm0tbGFiZWwtbGVmdCI+U3ViamVjdDwvbGFiZWw+DQo8ZGl2IGNsYXNzPSJnZm9ybS1pbnB1dC1jb250YWluZXIgZ2Zvcm0taW5wdXQiIGlkPSJmaW4tc3ViamVjdCI+e3N1YmplY3R9PC9kaXY+PC9kaXY+PC9kaXY+PGRpdiBjbGFzcz0iZ2Zvcm0tbGluZS10ciIgaWQ9ImZ0ci1tZXNzYWdlIj48ZGl2IGNsYXNzPSJnZm9ybS1saW5lLXRkIiBpZD0iZnRkLW1lc3NhZ2UiPjxsYWJlbCBmb3I9Im1lc3NhZ2UiIGNsYXNzPSJnZm9ybS1sYWJlbC1sZWZ0Ij5NZXNzYWdlPC9sYWJlbD4NCjxkaXYgY2xhc3M9Imdmb3JtLWlucHV0LWNvbnRhaW5lciBnZm9ybS1pbnB1dCIgaWQ9ImZpbi1tZXNzYWdlIj57bWVzc2FnZX08L2Rpdj48L2Rpdj48L2Rpdj48ZGl2IGNsYXNzPSJnZm9ybS1saW5lLXRyIiBpZD0iZnRyLXN1Ym1pdDUiPjxkaXYgY2xhc3M9Imdmb3JtLWxpbmUtdGQiIGlkPSJmdGQtc3VibWl0NSI+DQo8ZGl2IGNsYXNzPSJnZm9ybS1pbnB1dC1jb250YWluZXIgZ2Zvcm0taW5wdXQiIGlkPSJmaW4tc3VibWl0NSI+PC9kaXY+PC9kaXY+PC9kaXY+PC9kaXY+PC9kaXY+IjtzOjY6ImF0dGFjaCI7czowOiIiO3M6MzoiZHRvIjtzOjA6IiI7czo4OiJkc3ViamVjdCI7czowOiIiO3M6MTA6InJlcGx5X25hbWUiO3M6MDoiIjtzOjExOiJyZXBseV9lbWFpbCI7czowOiIiO3M6MTE6ImRyZXBseV9uYW1lIjtzOjA6IiI7czoxMjoiZHJlcGx5X2VtYWlsIjtzOjA6IiI7czoxMDoiZGZyb21fbmFtZSI7czowOiIiO3M6MTE6ImRmcm9tX2VtYWlsIjtzOjA6IiI7czoxNjoiX19hY3Rpb25fdGl0bGVfXyI7czo1OiJlbWFpbCI7fWk6MjthOjE6e3M6NzoibWVzc2FnZSI7czoxMDoiVGhhbmsgeW91ISI7fX1zOjM6IkROQSI7YToyOntzOjQ6ImxvYWQiO2E6MTp7czo2OiJodG1sXzAiO3M6MDoiIjt9czo2OiJzdWJtaXQiO2E6Mjp7czo3OiJlbWFpbF8xIjtzOjA6IiI7czoxNjoidGhhbmtzX21lc3NhZ2VfMiI7czowOiIiO319fQ==', 1, '', 1, '<div class="form-group gcore-form-row" id="form-row-14"><label for="name" class="control-label gcore-label-left">Name</label>\n<div class="gcore-input gcore-display-table" id="fin-name"><input name="name" id="name" value="" placeholder="" maxlength="" size="" class="validate[&#039;required&#039;] form-control A" title="" style="" data-inputmask="" type="text" /></div></div><div class="form-group gcore-form-row" id="form-row-16"><label for="email" class="control-label gcore-label-left">Email</label>\n<div class="gcore-input gcore-display-table" id="fin-email"><input name="email" id="email" value="" placeholder="" maxlength="" size="" class="validate[&#039;required&#039;,&#039;email&#039;] form-control A" title="" style="" data-inputmask="" type="text" /></div></div><div class="form-group gcore-form-row" id="form-row-18"><label for="subject" class="control-label gcore-label-left">Subject</label>\n<div class="gcore-input gcore-display-table" id="fin-subject"><input name="subject" id="subject" value="" placeholder="" maxlength="" size="" class="XL validate[&#039;required&#039;] form-control" title="" style="" data-inputmask="" type="text" /></div></div><div class="form-group gcore-form-row" id="form-row-19"><label for="message" class="control-label gcore-label-left">Message</label>\n<div class="gcore-input gcore-display-table" id="fin-message"><textarea name="message" id="message" placeholder="" rows="8" cols="60" class="validate[&#039;required&#039;] form-control A" title="" style=""></textarea></div></div><div class="form-group gcore-form-row" id="form-row-20"><div class="gcore-input gcore-display-table" id="fin-submit5"><input name="submit5" id="submit5" type="submit" value="Submit" class="form-control A" style="" /></div></div>');
INSERT INTO `iwk5c_chronoengine_chronoforms` (`id`, `title`, `params`, `extras`, `published`, `app`, `form_type`, `content`) VALUES
(4, 'demo-basic-contact-captcha', '{"description":"Basic contact form secured with captcha, using the GCoreUI simple theme","setup":"0","theme":"gcoreui","tight_layout":"0"}', 'YTozOntzOjY6ImZpZWxkcyI7YTo2OntpOjE7YToxODp7czo0OiJuYW1lIjtzOjQ6Im5hbWUiO3M6MjoiaWQiO3M6NDoibmFtZSI7czo1OiJ2YWx1ZSI7czowOiIiO3M6NToibGFiZWwiO2E6Mjp7czo0OiJ0ZXh0IjtzOjQ6Ik5hbWUiO3M6ODoicG9zaXRpb24iO3M6NDoibGVmdCI7fXM6ODoic3VibGFiZWwiO3M6MDoiIjtzOjExOiJwbGFjZWhvbGRlciI7czowOiIiO3M6OToibWF4bGVuZ3RoIjtzOjA6IiI7czo0OiJzaXplIjtzOjA6IiI7czo1OiJjbGFzcyI7czowOiIiO3M6NToidGl0bGUiO3M6MDoiIjtzOjU6InN0eWxlIjtzOjA6IiI7czoxNToiOmRhdGEtaW5wdXRtYXNrIjtzOjA6IiI7czo2OiJwYXJhbXMiO3M6MDoiIjtzOjE2OiI6ZGF0YS1sb2FkLXN0YXRlIjtzOjA6IiI7czoxMzoiOmRhdGEtdG9vbHRpcCI7czowOiIiO3M6NDoidHlwZSI7czo0OiJ0ZXh0IjtzOjEyOiJjb250YWluZXJfaWQiO3M6MToiMCI7czoxMDoidmFsaWRhdGlvbiI7YToxMjp7czo4OiJyZXF1aXJlZCI7czoxOiIxIjtzOjU6ImFscGhhIjtzOjA6IiI7czo4OiJhbHBoYW51bSI7czowOiIiO3M6NToiZGlnaXQiO3M6MDoiIjtzOjc6Im5vZGlnaXQiO3M6MDoiIjtzOjY6Im51bWJlciI7czowOiIiO3M6NToiZW1haWwiO3M6MDoiIjtzOjU6InBob25lIjtzOjA6IiI7czoxMToicGhvbmVfaW50ZXIiO3M6MDoiIjtzOjM6InVybCI7czowOiIiO3M6NzoiY29uZmlybSI7czowOiIiO3M6NjoiY3VzdG9tIjtzOjA6IiI7fX1pOjI7YToxODp7czo0OiJuYW1lIjtzOjU6ImVtYWlsIjtzOjI6ImlkIjtzOjU6ImVtYWlsIjtzOjU6InZhbHVlIjtzOjA6IiI7czo1OiJsYWJlbCI7YToyOntzOjQ6InRleHQiO3M6NToiRW1haWwiO3M6ODoicG9zaXRpb24iO3M6NDoibGVmdCI7fXM6ODoic3VibGFiZWwiO3M6MDoiIjtzOjExOiJwbGFjZWhvbGRlciI7czowOiIiO3M6OToibWF4bGVuZ3RoIjtzOjA6IiI7czo0OiJzaXplIjtzOjA6IiI7czo1OiJjbGFzcyI7czowOiIiO3M6NToidGl0bGUiO3M6MDoiIjtzOjU6InN0eWxlIjtzOjA6IiI7czoxNToiOmRhdGEtaW5wdXRtYXNrIjtzOjA6IiI7czo2OiJwYXJhbXMiO3M6MDoiIjtzOjE2OiI6ZGF0YS1sb2FkLXN0YXRlIjtzOjA6IiI7czoxMzoiOmRhdGEtdG9vbHRpcCI7czowOiIiO3M6NDoidHlwZSI7czo0OiJ0ZXh0IjtzOjEyOiJjb250YWluZXJfaWQiO3M6MToiMCI7czoxMDoidmFsaWRhdGlvbiI7YToxMjp7czo4OiJyZXF1aXJlZCI7czoxOiIxIjtzOjU6ImFscGhhIjtzOjA6IiI7czo4OiJhbHBoYW51bSI7czowOiIiO3M6NToiZGlnaXQiO3M6MDoiIjtzOjc6Im5vZGlnaXQiO3M6MDoiIjtzOjY6Im51bWJlciI7czowOiIiO3M6NToiZW1haWwiO3M6MToiMSI7czo1OiJwaG9uZSI7czowOiIiO3M6MTE6InBob25lX2ludGVyIjtzOjA6IiI7czozOiJ1cmwiO3M6MDoiIjtzOjc6ImNvbmZpcm0iO3M6MDoiIjtzOjY6ImN1c3RvbSI7czowOiIiO319aTo0O2E6MTg6e3M6NDoibmFtZSI7czo3OiJtZXNzYWdlIjtzOjI6ImlkIjtzOjc6Im1lc3NhZ2UiO3M6NToidmFsdWUiO3M6MDoiIjtzOjU6ImxhYmVsIjthOjI6e3M6NDoidGV4dCI7czo3OiJNZXNzYWdlIjtzOjg6InBvc2l0aW9uIjtzOjQ6ImxlZnQiO31zOjg6InN1YmxhYmVsIjtzOjA6IiI7czoxMToicGxhY2Vob2xkZXIiO3M6MDoiIjtzOjQ6InJvd3MiO3M6MToiOCI7czo0OiJjb2xzIjtzOjI6IjYwIjtzOjU6ImNsYXNzIjtzOjA6IiI7czo1OiJ0aXRsZSI7czowOiIiO3M6NToic3R5bGUiO3M6MDoiIjtzOjEzOiI6ZGF0YS13eXNpd3lnIjtzOjE6IjAiO3M6NjoicGFyYW1zIjtzOjA6IiI7czoxNjoiOmRhdGEtbG9hZC1zdGF0ZSI7czowOiIiO3M6MTM6IjpkYXRhLXRvb2x0aXAiO3M6MDoiIjtzOjQ6InR5cGUiO3M6ODoidGV4dGFyZWEiO3M6MTI6ImNvbnRhaW5lcl9pZCI7czoxOiIwIjtzOjEwOiJ2YWxpZGF0aW9uIjthOjg6e3M6ODoicmVxdWlyZWQiO3M6MToiMSI7czo1OiJhbHBoYSI7czowOiIiO3M6ODoiYWxwaGFudW0iO3M6MDoiIjtzOjU6ImRpZ2l0IjtzOjA6IiI7czo3OiJub2RpZ2l0IjtzOjA6IiI7czo2OiJudW1iZXIiO3M6MDoiIjtzOjc6ImNvbmZpcm0iO3M6MDoiIjtzOjY6ImN1c3RvbSI7czowOiIiO319aTozO2E6MTg6e3M6NDoibmFtZSI7czo1OiJwaG9uZSI7czoyOiJpZCI7czo1OiJwaG9uZSI7czo1OiJ2YWx1ZSI7czowOiIiO3M6NToibGFiZWwiO2E6Mjp7czo0OiJ0ZXh0IjtzOjU6IlBob25lIjtzOjg6InBvc2l0aW9uIjtzOjQ6ImxlZnQiO31zOjg6InN1YmxhYmVsIjtzOjA6IiI7czoxMToicGxhY2Vob2xkZXIiO3M6MDoiIjtzOjk6Im1heGxlbmd0aCI7czowOiIiO3M6NDoic2l6ZSI7czowOiIiO3M6NToiY2xhc3MiO3M6MDoiIjtzOjU6InRpdGxlIjtzOjA6IiI7czo1OiJzdHlsZSI7czowOiIiO3M6MTU6IjpkYXRhLWlucHV0bWFzayI7czowOiIiO3M6NjoicGFyYW1zIjtzOjA6IiI7czoxNjoiOmRhdGEtbG9hZC1zdGF0ZSI7czowOiIiO3M6MTM6IjpkYXRhLXRvb2x0aXAiO3M6MDoiIjtzOjQ6InR5cGUiO3M6NDoidGV4dCI7czoxMjoiY29udGFpbmVyX2lkIjtzOjE6IjAiO3M6MTA6InZhbGlkYXRpb24iO2E6MTI6e3M6ODoicmVxdWlyZWQiO3M6MToiMSI7czo1OiJhbHBoYSI7czowOiIiO3M6ODoiYWxwaGFudW0iO3M6MDoiIjtzOjU6ImRpZ2l0IjtzOjA6IiI7czo3OiJub2RpZ2l0IjtzOjA6IiI7czo2OiJudW1iZXIiO3M6MDoiIjtzOjU6ImVtYWlsIjtzOjA6IiI7czo1OiJwaG9uZSI7czoxOiIxIjtzOjExOiJwaG9uZV9pbnRlciI7czowOiIiO3M6MzoidXJsIjtzOjA6IiI7czo3OiJjb25maXJtIjtzOjA6IiI7czo2OiJjdXN0b20iO3M6MDoiIjt9fWk6NTthOjc6e3M6NToibGFiZWwiO2E6Mjp7czo0OiJ0ZXh0IjtzOjc6IkNhcHRjaGEiO3M6ODoicG9zaXRpb24iO3M6NDoibGVmdCI7fXM6NjoiaW5wdXRzIjthOjI6e3M6NToiZmllbGQiO2E6MTE6e3M6ODoic3VibGFiZWwiO3M6MzQ6IlBsZWFzZSBlbnRlciB0aGUgY29kZSBpbiB0aGUgaW1hZ2UiO3M6MTE6InBsYWNlaG9sZGVyIjtzOjA6IiI7czo5OiJtYXhsZW5ndGgiO3M6MDoiIjtzOjQ6InNpemUiO3M6MToiNSI7czo1OiJjbGFzcyI7czowOiIiO3M6NToidGl0bGUiO3M6MDoiIjtzOjU6InN0eWxlIjtzOjA6IiI7czo2OiJwYXJhbXMiO3M6MDoiIjtzOjQ6InR5cGUiO3M6NDoidGV4dCI7czo0OiJuYW1lIjtzOjc6ImNhcHRjaGEiO3M6MTA6InZhbGlkYXRpb24iO2E6MTp7czo4OiJyZXF1aXJlZCI7czoxOiIxIjt9fXM6NToiaW1hZ2UiO2E6Mzp7czo0OiJ0eXBlIjtzOjY6ImN1c3RvbSI7czo0OiJuYW1lIjtzOjc6ImNhcHRjaGEiO3M6NDoiY29kZSI7czoxMzoie2NhcHRjaGFfaW1nfSI7fX1zOjY6ImxheW91dCI7czo0OiJ3aWRlIjtzOjQ6Im5hbWUiO3M6NzoiY2FwdGNoYSI7czoxMToicmVuZGVyX3R5cGUiO3M6NzoiY2FwdGNoYSI7czo0OiJ0eXBlIjtzOjU6Im11bHRpIjtzOjEyOiJjb250YWluZXJfaWQiO3M6MToiMCI7fWk6NjthOjEwOntzOjExOiJyZW5kZXJfdHlwZSI7czo2OiJzdWJtaXQiO3M6NDoibmFtZSI7czo3OiJzdWJtaXQ2IjtzOjI6ImlkIjtzOjc6InN1Ym1pdDYiO3M6NDoidHlwZSI7czo2OiJzdWJtaXQiO3M6NToidmFsdWUiO3M6NjoiU3VibWl0IjtzOjU6ImNsYXNzIjtzOjA6IiI7czo1OiJzdHlsZSI7czowOiIiO3M6NjoicGFyYW1zIjtzOjA6IiI7czoxNjoiOmRhdGEtbG9hZC1zdGF0ZSI7czowOiIiO3M6MTI6ImNvbnRhaW5lcl9pZCI7czoxOiIwIjt9fXM6MTQ6ImFjdGlvbnNfY29uZmlnIjthOjc6e2k6NDthOjI6e3M6NToiZm9udHMiO3M6MToiMSI7czoxNDoicmVmcmVzaF9idXR0b24iO3M6MToiMCI7fWk6MDthOjk6e3M6NDoicGFnZSI7czoxOiIxIjtzOjEyOiJzdWJtaXRfZXZlbnQiO3M6Njoic3VibWl0IjtzOjExOiJmb3JtX21ldGhvZCI7czo0OiJmaWxlIjtzOjEwOiJhY3Rpb25fdXJsIjtzOjA6IiI7czoxMDoiZm9ybV9jbGFzcyI7czoxMDoiY2hyb25vZm9ybSI7czoxNToiZm9ybV90YWdfYXR0YWNoIjtzOjA6IiI7czoyNDoicmVxdWlyZWRfbGFiZWxzX2lkZW50aWZ5IjtzOjE6IjEiO3M6MTI6InJlbGF0aXZlX3VybCI7czoxOiIxIjtzOjExOiJhamF4X3N1Ym1pdCI7czoxOiIwIjt9aTo3O2E6MTp7czo1OiJldmVudCI7czo0OiJsb2FkIjt9aTo1O2E6Mjp7czo3OiJlbmFibGVkIjtzOjE6IjEiO3M6NToiZXJyb3IiO3M6NDM6IllvdSBoYXZlIGVudGVyZWQgYSB3cm9uZyB2ZXJpZmljYXRpb24gY29kZSEiO31pOjE7YToyMzp7czoxMjoiYWN0aW9uX2xhYmVsIjtzOjU6IkFkbWluIjtzOjc6ImVuYWJsZWQiO3M6MToiMSI7czoyOiJ0byI7czoyNjoieW91cl9lbWFpbF9oZXJlQGRvbWFpbi5jb20iO3M6Nzoic3ViamVjdCI7czoyMjoiWW91ciBTdWJqZWN0IEdvZXMgSGVyZSI7czo5OiJmcm9tX25hbWUiO3M6NToiQWRtaW4iO3M6MTA6ImZyb21fZW1haWwiO3M6MTY6ImFkbWluQGRvbWFpbi5jb20iO3M6MTA6ImVtYWlsX3R5cGUiO3M6NDoiaHRtbCI7czo4OiJ0ZW1wbGF0ZSI7czoxNTU2OiI8ZGl2IGNsYXNzPSJnZm9ybS1hbGwiPjx0YWJsZSBjbGFzcz0iZ2Zvcm0tc2VjdGlvbiI+PHRyIGNsYXNzPSJnZm9ybS1saW5lLXRyIiBpZD0iZnRyLW5hbWUiPjx0ZCBjbGFzcz0iZ2Zvcm0tbGluZS10ZCIgaWQ9ImZ0ZC1uYW1lIj48bGFiZWwgZm9yPSJuYW1lIiBjbGFzcz0iZ2Zvcm0tbGFiZWwtbGVmdCI+TmFtZTwvbGFiZWw+DQo8ZGl2IGNsYXNzPSJnZm9ybS1pbnB1dC1jb250YWluZXIgZ2Zvcm0taW5wdXQiIGlkPSJmaW4tbmFtZSI+e25hbWV9PC9kaXY+PC90ZD48L3RyPjx0ciBjbGFzcz0iZ2Zvcm0tbGluZS10ciIgaWQ9ImZ0ci1lbWFpbCI+PHRkIGNsYXNzPSJnZm9ybS1saW5lLXRkIiBpZD0iZnRkLWVtYWlsIj48bGFiZWwgZm9yPSJlbWFpbCIgY2xhc3M9Imdmb3JtLWxhYmVsLWxlZnQiPkVtYWlsPC9sYWJlbD4NCjxkaXYgY2xhc3M9Imdmb3JtLWlucHV0LWNvbnRhaW5lciBnZm9ybS1pbnB1dCIgaWQ9ImZpbi1lbWFpbCI+e2VtYWlsfTwvZGl2PjwvdGQ+PC90cj48dHIgY2xhc3M9Imdmb3JtLWxpbmUtdHIiIGlkPSJmdHItcGhvbmUiPjx0ZCBjbGFzcz0iZ2Zvcm0tbGluZS10ZCIgaWQ9ImZ0ZC1waG9uZSI+PGxhYmVsIGZvcj0icGhvbmUiIGNsYXNzPSJnZm9ybS1sYWJlbC1sZWZ0Ij5QaG9uZTwvbGFiZWw+DQo8ZGl2IGNsYXNzPSJnZm9ybS1pbnB1dC1jb250YWluZXIgZ2Zvcm0taW5wdXQiIGlkPSJmaW4tcGhvbmUiPntwaG9uZX08L2Rpdj48L3RkPjwvdHI+PHRyIGNsYXNzPSJnZm9ybS1saW5lLXRyIiBpZD0iZnRyLW1lc3NhZ2UiPjx0ZCBjbGFzcz0iZ2Zvcm0tbGluZS10ZCIgaWQ9ImZ0ZC1tZXNzYWdlIj48bGFiZWwgZm9yPSJtZXNzYWdlIiBjbGFzcz0iZ2Zvcm0tbGFiZWwtbGVmdCI+TWVzc2FnZTwvbGFiZWw+DQo8ZGl2IGNsYXNzPSJnZm9ybS1pbnB1dC1jb250YWluZXIgZ2Zvcm0taW5wdXQiIGlkPSJmaW4tbWVzc2FnZSI+e21lc3NhZ2V9PC9kaXY+PC90ZD48L3RyPjx0ciBjbGFzcz0iZ2Zvcm0tbGluZS10ciIgaWQ9ImZ0cjIzIj48dGQgY2xhc3M9Imdmb3JtLWxpbmUtdGQiIGlkPSJmdGQyMiI+PGxhYmVsIGZvcj0iZmxkMTYiIGNsYXNzPSJnZm9ybS1sYWJlbC1sZWZ0Ij5FbnRlciB0aGUgY29kZTwvbGFiZWw+DQo8ZGl2IGNsYXNzPSJnZm9ybS1pbnB1dC1jb250YWluZXIgZ2Zvcm0taW5wdXQiIGlkPSJmaW4yMSI+DQo8ZGl2IGNsYXNzPSJnZm9ybS1pbnB1dC1jb250YWluZXIgZ2Zvcm0tc3ViaW5wdXQtY29udGFpbmVyLXdpZGUiIGlkPSJmaXRlbTE4Ij57Y2FwdGNoYX08L2Rpdj4NCg0KPGRpdiBjbGFzcz0iZ2Zvcm0taW5wdXQtY29udGFpbmVyIGdmb3JtLXN1YmlucHV0LWNvbnRhaW5lci13aWRlIiBpZD0iZml0ZW0yMCI+e2NhcHRjaGFfaW1nfTwvZGl2PjwvZGl2PjwvdGQ+PC90cj48dHIgY2xhc3M9Imdmb3JtLWxpbmUtdHIiIGlkPSJmdHItc3VibWl0NiI+PHRkIGNsYXNzPSJnZm9ybS1saW5lLXRkIiBpZD0iZnRkLXN1Ym1pdDYiPg0KPGRpdiBjbGFzcz0iZ2Zvcm0taW5wdXQtY29udGFpbmVyIGdmb3JtLWlucHV0IiBpZD0iZmluLXN1Ym1pdDYiPjwvZGl2PjwvdGQ+PC90cj48L3RhYmxlPjwvZGl2PiI7czo2OiJhdHRhY2giO3M6MDoiIjtzOjM6ImR0byI7czowOiIiO3M6ODoiZHN1YmplY3QiO3M6MDoiIjtzOjEwOiJyZXBseV9uYW1lIjtzOjA6IiI7czoxMToicmVwbHlfZW1haWwiO3M6MDoiIjtzOjExOiJkcmVwbHlfbmFtZSI7czowOiIiO3M6MTI6ImRyZXBseV9lbWFpbCI7czowOiIiO3M6MTA6ImRmcm9tX25hbWUiO3M6MDoiIjtzOjExOiJkZnJvbV9lbWFpbCI7czowOiIiO3M6MjoiY2MiO3M6MDoiIjtzOjM6ImJjYyI7czowOiIiO3M6MzoiZGNjIjtzOjA6IiI7czo0OiJkYmNjIjtzOjA6IiI7czoxNzoiYXBwZW5kX2lwX2FkZHJlc3MiO3M6MToiMSI7czoxNjoiX19hY3Rpb25fdGl0bGVfXyI7czo1OiJlbWFpbCI7fWk6MzthOjIzOntzOjEyOiJhY3Rpb25fbGFiZWwiO3M6MzU6IlRvIENsaWVudCAoU2VuZGVyKSB1c2luZyBEeW5hbWljIFRvIjtzOjc6ImVuYWJsZWQiO3M6MToiMSI7czoyOiJ0byI7czowOiIiO3M6Nzoic3ViamVjdCI7czoyNzoiVGhhbmsgeW91IGZvciBjb250YWN0aW5nIHVzIjtzOjk6ImZyb21fbmFtZSI7czo1OiJBZG1pbiI7czoxMDoiZnJvbV9lbWFpbCI7czoxNjoiYWRtaW5AZG9tYWluLmNvbSI7czoxMDoiZW1haWxfdHlwZSI7czo0OiJodG1sIjtzOjg6InRlbXBsYXRlIjtzOjE1NTY6IjxkaXYgY2xhc3M9Imdmb3JtLWFsbCI+PHRhYmxlIGNsYXNzPSJnZm9ybS1zZWN0aW9uIj48dHIgY2xhc3M9Imdmb3JtLWxpbmUtdHIiIGlkPSJmdHItbmFtZSI+PHRkIGNsYXNzPSJnZm9ybS1saW5lLXRkIiBpZD0iZnRkLW5hbWUiPjxsYWJlbCBmb3I9Im5hbWUiIGNsYXNzPSJnZm9ybS1sYWJlbC1sZWZ0Ij5OYW1lPC9sYWJlbD4NCjxkaXYgY2xhc3M9Imdmb3JtLWlucHV0LWNvbnRhaW5lciBnZm9ybS1pbnB1dCIgaWQ9ImZpbi1uYW1lIj57bmFtZX08L2Rpdj48L3RkPjwvdHI+PHRyIGNsYXNzPSJnZm9ybS1saW5lLXRyIiBpZD0iZnRyLWVtYWlsIj48dGQgY2xhc3M9Imdmb3JtLWxpbmUtdGQiIGlkPSJmdGQtZW1haWwiPjxsYWJlbCBmb3I9ImVtYWlsIiBjbGFzcz0iZ2Zvcm0tbGFiZWwtbGVmdCI+RW1haWw8L2xhYmVsPg0KPGRpdiBjbGFzcz0iZ2Zvcm0taW5wdXQtY29udGFpbmVyIGdmb3JtLWlucHV0IiBpZD0iZmluLWVtYWlsIj57ZW1haWx9PC9kaXY+PC90ZD48L3RyPjx0ciBjbGFzcz0iZ2Zvcm0tbGluZS10ciIgaWQ9ImZ0ci1waG9uZSI+PHRkIGNsYXNzPSJnZm9ybS1saW5lLXRkIiBpZD0iZnRkLXBob25lIj48bGFiZWwgZm9yPSJwaG9uZSIgY2xhc3M9Imdmb3JtLWxhYmVsLWxlZnQiPlBob25lPC9sYWJlbD4NCjxkaXYgY2xhc3M9Imdmb3JtLWlucHV0LWNvbnRhaW5lciBnZm9ybS1pbnB1dCIgaWQ9ImZpbi1waG9uZSI+e3Bob25lfTwvZGl2PjwvdGQ+PC90cj48dHIgY2xhc3M9Imdmb3JtLWxpbmUtdHIiIGlkPSJmdHItbWVzc2FnZSI+PHRkIGNsYXNzPSJnZm9ybS1saW5lLXRkIiBpZD0iZnRkLW1lc3NhZ2UiPjxsYWJlbCBmb3I9Im1lc3NhZ2UiIGNsYXNzPSJnZm9ybS1sYWJlbC1sZWZ0Ij5NZXNzYWdlPC9sYWJlbD4NCjxkaXYgY2xhc3M9Imdmb3JtLWlucHV0LWNvbnRhaW5lciBnZm9ybS1pbnB1dCIgaWQ9ImZpbi1tZXNzYWdlIj57bWVzc2FnZX08L2Rpdj48L3RkPjwvdHI+PHRyIGNsYXNzPSJnZm9ybS1saW5lLXRyIiBpZD0iZnRyMjMiPjx0ZCBjbGFzcz0iZ2Zvcm0tbGluZS10ZCIgaWQ9ImZ0ZDIyIj48bGFiZWwgZm9yPSJmbGQxNiIgY2xhc3M9Imdmb3JtLWxhYmVsLWxlZnQiPkVudGVyIHRoZSBjb2RlPC9sYWJlbD4NCjxkaXYgY2xhc3M9Imdmb3JtLWlucHV0LWNvbnRhaW5lciBnZm9ybS1pbnB1dCIgaWQ9ImZpbjIxIj4NCjxkaXYgY2xhc3M9Imdmb3JtLWlucHV0LWNvbnRhaW5lciBnZm9ybS1zdWJpbnB1dC1jb250YWluZXItd2lkZSIgaWQ9ImZpdGVtMTgiPntjYXB0Y2hhfTwvZGl2Pg0KDQo8ZGl2IGNsYXNzPSJnZm9ybS1pbnB1dC1jb250YWluZXIgZ2Zvcm0tc3ViaW5wdXQtY29udGFpbmVyLXdpZGUiIGlkPSJmaXRlbTIwIj57Y2FwdGNoYV9pbWd9PC9kaXY+PC9kaXY+PC90ZD48L3RyPjx0ciBjbGFzcz0iZ2Zvcm0tbGluZS10ciIgaWQ9ImZ0ci1zdWJtaXQ2Ij48dGQgY2xhc3M9Imdmb3JtLWxpbmUtdGQiIGlkPSJmdGQtc3VibWl0NiI+DQo8ZGl2IGNsYXNzPSJnZm9ybS1pbnB1dC1jb250YWluZXIgZ2Zvcm0taW5wdXQiIGlkPSJmaW4tc3VibWl0NiI+PC9kaXY+PC90ZD48L3RyPjwvdGFibGU+PC9kaXY+IjtzOjY6ImF0dGFjaCI7czowOiIiO3M6MzoiZHRvIjtzOjU6ImVtYWlsIjtzOjg6ImRzdWJqZWN0IjtzOjA6IiI7czoxMDoicmVwbHlfbmFtZSI7czowOiIiO3M6MTE6InJlcGx5X2VtYWlsIjtzOjA6IiI7czoxMToiZHJlcGx5X25hbWUiO3M6MDoiIjtzOjEyOiJkcmVwbHlfZW1haWwiO3M6MDoiIjtzOjEwOiJkZnJvbV9uYW1lIjtzOjA6IiI7czoxMToiZGZyb21fZW1haWwiO3M6MDoiIjtzOjI6ImNjIjtzOjA6IiI7czozOiJiY2MiO3M6MDoiIjtzOjM6ImRjYyI7czowOiIiO3M6NDoiZGJjYyI7czowOiIiO3M6MTc6ImFwcGVuZF9pcF9hZGRyZXNzIjtzOjE6IjEiO3M6MTY6Il9fYWN0aW9uX3RpdGxlX18iO3M6NToiZW1haWwiO31pOjI7YToxOntzOjc6Im1lc3NhZ2UiO3M6MTc6IjxwPlRoYW5rIHlvdSE8L3A+Ijt9fXM6MzoiRE5BIjthOjI6e3M6NDoibG9hZCI7YToyOntzOjE0OiJsb2FkX2NhcHRjaGFfNCI7czowOiIiO3M6NjoiaHRtbF8wIjtzOjA6IiI7fXM6Njoic3VibWl0IjthOjQ6e3M6MTU6ImNoZWNrX2NhcHRjaGFfNSI7YToyOntzOjc6InN1Y2Nlc3MiO3M6MDoiIjtzOjQ6ImZhaWwiO2E6MTp7czoxMjoiZXZlbnRfbG9vcF83IjtzOjA6IiI7fX1zOjc6ImVtYWlsXzEiO3M6MDoiIjtzOjc6ImVtYWlsXzMiO3M6MDoiIjtzOjE2OiJ0aGFua3NfbWVzc2FnZV8yIjtzOjA6IiI7fX19', 1, '', 1, '<div class="gcore-line-tr gcore-form-row" id="ftr-name"><div class="gcore-line-td" id="ftd-name"><label for="name" class="gcore-label-left">Name</label>\n<div class="gcore-display-table gcore-input" id="fin-name"><input name="name" id="name" value="" placeholder="" maxlength="" size="" class=" validate[&#039;required&#039;]" title="" style="" data-inputmask="" data-load-state="" data-tooltip="" type="text" /></div></div></div><div class="gcore-line-tr gcore-form-row" id="ftr-email"><div class="gcore-line-td" id="ftd-email"><label for="email" class="gcore-label-left">Email</label>\n<div class="gcore-display-table gcore-input" id="fin-email"><input name="email" id="email" value="" placeholder="" maxlength="" size="" class=" validate[&#039;required&#039;,&#039;email&#039;]" title="" style="" data-inputmask="" data-load-state="" data-tooltip="" type="text" /></div></div></div><div class="gcore-line-tr gcore-form-row" id="ftr-message"><div class="gcore-line-td" id="ftd-message"><label for="message" class="gcore-label-left">Message</label>\n<div class="gcore-display-table gcore-input" id="fin-message"><textarea name="message" id="message" placeholder="" rows="8" cols="60" class=" validate[&#039;required&#039;]" title="" style="" data-wysiwyg="0" data-load-state="" data-tooltip=""></textarea></div></div></div><div class="gcore-line-tr gcore-form-row" id="ftr-phone"><div class="gcore-line-td" id="ftd-phone"><label for="phone" class="gcore-label-left">Phone</label>\n<div class="gcore-display-table gcore-input" id="fin-phone"><input name="phone" id="phone" value="" placeholder="" maxlength="" size="" class=" validate[&#039;required&#039;,&#039;phone&#039;]" title="" style="" data-inputmask="" data-load-state="" data-tooltip="" type="text" /></div></div></div><div class="gcore-line-tr gcore-form-row" id="ftr-fld22"><div class="gcore-line-td" id="ftd-fld22"><label for="fld22" class="gcore-label-left">Captcha</label>\n<div class="gcore-subinput-container-wide" id="fitem24"><div class="gcore-input-container gcore-display-table gcore-input" id="fin-fld23"><input placeholder="" maxlength="" size="5" class=" validate[&#039;required&#039;]" title="" style="" type="text" name="captcha" id="fld23" /><label class="gcore-sub-label">Please enter the code in the image</label></div></div>\n<div class="gcore-subinput-container-wide" id="fitem26"><div class="gcore-input-container gcore-display-table gcore-input" id="fin-fld25">{captcha_img}</div></div></div></div><div class="gcore-line-tr gcore-form-row" id="ftr-submit6"><div class="gcore-line-td" id="ftd-submit6"><div class="gcore-display-table gcore-input" id="fin-submit6"><input name="submit6" id="submit6" type="submit" value="Submit" class="" style="" data-load-state="" /></div></div></div>'),
(5, 'demo-multi-field-contact-secured', '{"description":"Basic contact form with multi fields for name & address","setup":"0","theme":"bootstrap3","tight_layout":"0"}', 'YTozOntzOjY6ImZpZWxkcyI7YTo3OntpOjExO2E6NTp7czo2OiJpbnB1dHMiO2E6Mjp7czo2OiJ0ZXh0MTEiO2E6MTg6e3M6NDoibmFtZSI7czoxMDoiZmlyc3RfbmFtZSI7czoyOiJpZCI7czoxMDoiZmlyc3RfbmFtZSI7czo1OiJ2YWx1ZSI7czowOiIiO3M6NToibGFiZWwiO2E6Mjp7czo0OiJ0ZXh0IjtzOjQ6Ik5hbWUiO3M6ODoicG9zaXRpb24iO3M6NDoibGVmdCI7fXM6ODoic3VibGFiZWwiO3M6NToiRmlyc3QiO3M6MTE6InBsYWNlaG9sZGVyIjtzOjA6IiI7czo5OiJtYXhsZW5ndGgiO3M6MDoiIjtzOjQ6InNpemUiO3M6MDoiIjtzOjU6ImNsYXNzIjtzOjA6IiI7czo1OiJ0aXRsZSI7czowOiIiO3M6NToic3R5bGUiO3M6MDoiIjtzOjE1OiI6ZGF0YS1pbnB1dG1hc2siO3M6MDoiIjtzOjY6InBhcmFtcyI7czowOiIiO3M6MTY6IjpkYXRhLWxvYWQtc3RhdGUiO3M6MDoiIjtzOjEzOiI6ZGF0YS10b29sdGlwIjtzOjA6IiI7czo0OiJ0eXBlIjtzOjQ6InRleHQiO3M6MTI6ImNvbnRhaW5lcl9pZCI7czoxOiIwIjtzOjEwOiJ2YWxpZGF0aW9uIjthOjEyOntzOjg6InJlcXVpcmVkIjtzOjE6IjEiO3M6NToiYWxwaGEiO3M6MDoiIjtzOjg6ImFscGhhbnVtIjtzOjA6IiI7czo1OiJkaWdpdCI7czowOiIiO3M6Nzoibm9kaWdpdCI7czowOiIiO3M6NjoibnVtYmVyIjtzOjA6IiI7czo1OiJlbWFpbCI7czowOiIiO3M6NToicGhvbmUiO3M6MDoiIjtzOjExOiJwaG9uZV9pbnRlciI7czowOiIiO3M6MzoidXJsIjtzOjA6IiI7czo3OiJjb25maXJtIjtzOjA6IiI7czo2OiJjdXN0b20iO3M6MDoiIjt9fXM6NjoidGV4dDEyIjthOjE4OntzOjQ6Im5hbWUiO3M6OToibGFzdF9uYW1lIjtzOjI6ImlkIjtzOjk6Imxhc3RfbmFtZSI7czo1OiJ2YWx1ZSI7czowOiIiO3M6NToibGFiZWwiO2E6Mjp7czo0OiJ0ZXh0IjtzOjA6IiI7czo4OiJwb3NpdGlvbiI7czozOiJ0b3AiO31zOjg6InN1YmxhYmVsIjtzOjQ6Ikxhc3QiO3M6MTE6InBsYWNlaG9sZGVyIjtzOjA6IiI7czo5OiJtYXhsZW5ndGgiO3M6MDoiIjtzOjQ6InNpemUiO3M6MDoiIjtzOjU6ImNsYXNzIjtzOjA6IiI7czo1OiJ0aXRsZSI7czowOiIiO3M6NToic3R5bGUiO3M6MDoiIjtzOjE1OiI6ZGF0YS1pbnB1dG1hc2siO3M6MDoiIjtzOjY6InBhcmFtcyI7czowOiIiO3M6MTY6IjpkYXRhLWxvYWQtc3RhdGUiO3M6MDoiIjtzOjEzOiI6ZGF0YS10b29sdGlwIjtzOjA6IiI7czo0OiJ0eXBlIjtzOjQ6InRleHQiO3M6MTI6ImNvbnRhaW5lcl9pZCI7czoxOiIwIjtzOjEwOiJ2YWxpZGF0aW9uIjthOjEyOntzOjg6InJlcXVpcmVkIjtzOjE6IjEiO3M6NToiYWxwaGEiO3M6MDoiIjtzOjg6ImFscGhhbnVtIjtzOjA6IiI7czo1OiJkaWdpdCI7czowOiIiO3M6Nzoibm9kaWdpdCI7czowOiIiO3M6NjoibnVtYmVyIjtzOjA6IiI7czo1OiJlbWFpbCI7czowOiIiO3M6NToicGhvbmUiO3M6MDoiIjtzOjExOiJwaG9uZV9pbnRlciI7czowOiIiO3M6MzoidXJsIjtzOjA6IiI7czo3OiJjb25maXJtIjtzOjA6IiI7czo2OiJjdXN0b20iO3M6MDoiIjt9fX1zOjQ6InR5cGUiO3M6NToibXVsdGkiO3M6MjoiaWQiO3M6ODoibXVsdGktMTEiO3M6NDoibmFtZSI7czo1OiJtdWx0aSI7czoxMjoiY29udGFpbmVyX2lkIjtzOjE6IjAiO31pOjI7YToxODp7czo0OiJuYW1lIjtzOjU6ImVtYWlsIjtzOjI6ImlkIjtzOjU6ImVtYWlsIjtzOjU6InZhbHVlIjtzOjA6IiI7czo1OiJsYWJlbCI7YToyOntzOjQ6InRleHQiO3M6NToiRW1haWwiO3M6ODoicG9zaXRpb24iO3M6NDoibGVmdCI7fXM6ODoic3VibGFiZWwiO3M6MDoiIjtzOjExOiJwbGFjZWhvbGRlciI7czowOiIiO3M6OToibWF4bGVuZ3RoIjtzOjA6IiI7czo0OiJzaXplIjtzOjA6IiI7czo1OiJjbGFzcyI7czowOiIiO3M6NToidGl0bGUiO3M6MDoiIjtzOjU6InN0eWxlIjtzOjA6IiI7czoxNToiOmRhdGEtaW5wdXRtYXNrIjtzOjA6IiI7czo2OiJwYXJhbXMiO3M6MDoiIjtzOjE2OiI6ZGF0YS1sb2FkLXN0YXRlIjtzOjA6IiI7czoxMzoiOmRhdGEtdG9vbHRpcCI7czowOiIiO3M6NDoidHlwZSI7czo0OiJ0ZXh0IjtzOjEyOiJjb250YWluZXJfaWQiO3M6MToiMCI7czoxMDoidmFsaWRhdGlvbiI7YToxMjp7czo4OiJyZXF1aXJlZCI7czoxOiIxIjtzOjU6ImFscGhhIjtzOjA6IiI7czo4OiJhbHBoYW51bSI7czowOiIiO3M6NToiZGlnaXQiO3M6MDoiIjtzOjc6Im5vZGlnaXQiO3M6MDoiIjtzOjY6Im51bWJlciI7czowOiIiO3M6NToiZW1haWwiO3M6MToiMSI7czo1OiJwaG9uZSI7czowOiIiO3M6MTE6InBob25lX2ludGVyIjtzOjA6IiI7czozOiJ1cmwiO3M6MDoiIjtzOjc6ImNvbmZpcm0iO3M6MDoiIjtzOjY6ImN1c3RvbSI7czowOiIiO319aTozO2E6MTg6e3M6NDoibmFtZSI7czo1OiJwaG9uZSI7czoyOiJpZCI7czo1OiJwaG9uZSI7czo1OiJ2YWx1ZSI7czowOiIiO3M6NToibGFiZWwiO2E6Mjp7czo0OiJ0ZXh0IjtzOjU6IlBob25lIjtzOjg6InBvc2l0aW9uIjtzOjQ6ImxlZnQiO31zOjg6InN1YmxhYmVsIjtzOjA6IiI7czoxMToicGxhY2Vob2xkZXIiO3M6MDoiIjtzOjk6Im1heGxlbmd0aCI7czowOiIiO3M6NDoic2l6ZSI7czowOiIiO3M6NToiY2xhc3MiO3M6MDoiIjtzOjU6InRpdGxlIjtzOjA6IiI7czo1OiJzdHlsZSI7czowOiIiO3M6MTU6IjpkYXRhLWlucHV0bWFzayI7czowOiIiO3M6NjoicGFyYW1zIjtzOjA6IiI7czoxNjoiOmRhdGEtbG9hZC1zdGF0ZSI7czowOiIiO3M6MTM6IjpkYXRhLXRvb2x0aXAiO3M6MDoiIjtzOjQ6InR5cGUiO3M6NDoidGV4dCI7czoxMjoiY29udGFpbmVyX2lkIjtzOjE6IjAiO3M6MTA6InZhbGlkYXRpb24iO2E6MTI6e3M6ODoicmVxdWlyZWQiO3M6MDoiIjtzOjU6ImFscGhhIjtzOjA6IiI7czo4OiJhbHBoYW51bSI7czowOiIiO3M6NToiZGlnaXQiO3M6MDoiIjtzOjc6Im5vZGlnaXQiO3M6MDoiIjtzOjY6Im51bWJlciI7czowOiIiO3M6NToiZW1haWwiO3M6MDoiIjtzOjU6InBob25lIjtzOjA6IiI7czoxMToicGhvbmVfaW50ZXIiO3M6MDoiIjtzOjM6InVybCI7czowOiIiO3M6NzoiY29uZmlybSI7czowOiIiO3M6NjoiY3VzdG9tIjtzOjA6IiI7fX1pOjc7YTo1OntzOjY6ImlucHV0cyI7YTo0OntzOjU6InRleHQ3IjthOjE4OntzOjQ6Im5hbWUiO3M6NzoiYWRkcmVzcyI7czoyOiJpZCI7czo3OiJhZGRyZXNzIjtzOjU6InZhbHVlIjtzOjA6IiI7czo1OiJsYWJlbCI7YToyOntzOjQ6InRleHQiO3M6NzoiQWRkcmVzcyI7czo4OiJwb3NpdGlvbiI7czo0OiJsZWZ0Ijt9czo4OiJzdWJsYWJlbCI7czo2OiJTdHJlZXQiO3M6MTE6InBsYWNlaG9sZGVyIjtzOjA6IiI7czo5OiJtYXhsZW5ndGgiO3M6MDoiIjtzOjQ6InNpemUiO3M6MDoiIjtzOjU6ImNsYXNzIjtzOjE6IkwiO3M6NToidGl0bGUiO3M6MDoiIjtzOjU6InN0eWxlIjtzOjA6IiI7czoxNToiOmRhdGEtaW5wdXRtYXNrIjtzOjA6IiI7czo2OiJwYXJhbXMiO3M6MDoiIjtzOjE2OiI6ZGF0YS1sb2FkLXN0YXRlIjtzOjA6IiI7czoxMzoiOmRhdGEtdG9vbHRpcCI7czowOiIiO3M6NDoidHlwZSI7czo0OiJ0ZXh0IjtzOjEyOiJjb250YWluZXJfaWQiO3M6MToiMCI7czoxMDoidmFsaWRhdGlvbiI7YToxMjp7czo4OiJyZXF1aXJlZCI7czowOiIiO3M6NToiYWxwaGEiO3M6MDoiIjtzOjg6ImFscGhhbnVtIjtzOjA6IiI7czo1OiJkaWdpdCI7czowOiIiO3M6Nzoibm9kaWdpdCI7czowOiIiO3M6NjoibnVtYmVyIjtzOjA6IiI7czo1OiJlbWFpbCI7czowOiIiO3M6NToicGhvbmUiO3M6MDoiIjtzOjExOiJwaG9uZV9pbnRlciI7czowOiIiO3M6MzoidXJsIjtzOjA6IiI7czo3OiJjb25maXJtIjtzOjA6IiI7czo2OiJjdXN0b20iO3M6MDoiIjt9fXM6NToidGV4dDgiO2E6MTg6e3M6NDoibmFtZSI7czo0OiJjaXR5IjtzOjI6ImlkIjtzOjQ6ImNpdHkiO3M6NToidmFsdWUiO3M6MDoiIjtzOjU6ImxhYmVsIjthOjI6e3M6NDoidGV4dCI7czowOiIiO3M6ODoicG9zaXRpb24iO3M6NDoibGVmdCI7fXM6ODoic3VibGFiZWwiO3M6NDoiQ2l0eSI7czoxMToicGxhY2Vob2xkZXIiO3M6MDoiIjtzOjk6Im1heGxlbmd0aCI7czowOiIiO3M6NDoic2l6ZSI7czowOiIiO3M6NToiY2xhc3MiO3M6MToiUyI7czo1OiJ0aXRsZSI7czowOiIiO3M6NToic3R5bGUiO3M6MDoiIjtzOjE1OiI6ZGF0YS1pbnB1dG1hc2siO3M6MDoiIjtzOjY6InBhcmFtcyI7czowOiIiO3M6MTY6IjpkYXRhLWxvYWQtc3RhdGUiO3M6MDoiIjtzOjEzOiI6ZGF0YS10b29sdGlwIjtzOjA6IiI7czo0OiJ0eXBlIjtzOjQ6InRleHQiO3M6MTI6ImNvbnRhaW5lcl9pZCI7czoxOiIwIjtzOjEwOiJ2YWxpZGF0aW9uIjthOjEyOntzOjg6InJlcXVpcmVkIjtzOjA6IiI7czo1OiJhbHBoYSI7czowOiIiO3M6ODoiYWxwaGFudW0iO3M6MDoiIjtzOjU6ImRpZ2l0IjtzOjA6IiI7czo3OiJub2RpZ2l0IjtzOjA6IiI7czo2OiJudW1iZXIiO3M6MDoiIjtzOjU6ImVtYWlsIjtzOjA6IiI7czo1OiJwaG9uZSI7czowOiIiO3M6MTE6InBob25lX2ludGVyIjtzOjA6IiI7czozOiJ1cmwiO3M6MDoiIjtzOjc6ImNvbmZpcm0iO3M6MDoiIjtzOjY6ImN1c3RvbSI7czowOiIiO319czo1OiJ0ZXh0OSI7YToxODp7czo0OiJuYW1lIjtzOjU6InN0YXRlIjtzOjI6ImlkIjtzOjU6InN0YXRlIjtzOjU6InZhbHVlIjtzOjA6IiI7czo1OiJsYWJlbCI7YToyOntzOjQ6InRleHQiO3M6MDoiIjtzOjg6InBvc2l0aW9uIjtzOjQ6ImxlZnQiO31zOjg6InN1YmxhYmVsIjtzOjU6IlN0YXRlIjtzOjExOiJwbGFjZWhvbGRlciI7czowOiIiO3M6OToibWF4bGVuZ3RoIjtzOjA6IiI7czo0OiJzaXplIjtzOjA6IiI7czo1OiJjbGFzcyI7czoxOiJTIjtzOjU6InRpdGxlIjtzOjA6IiI7czo1OiJzdHlsZSI7czowOiIiO3M6MTU6IjpkYXRhLWlucHV0bWFzayI7czowOiIiO3M6NjoicGFyYW1zIjtzOjA6IiI7czoxNjoiOmRhdGEtbG9hZC1zdGF0ZSI7czowOiIiO3M6MTM6IjpkYXRhLXRvb2x0aXAiO3M6MDoiIjtzOjQ6InR5cGUiO3M6NDoidGV4dCI7czoxMjoiY29udGFpbmVyX2lkIjtzOjE6IjAiO3M6MTA6InZhbGlkYXRpb24iO2E6MTI6e3M6ODoicmVxdWlyZWQiO3M6MDoiIjtzOjU6ImFscGhhIjtzOjA6IiI7czo4OiJhbHBoYW51bSI7czowOiIiO3M6NToiZGlnaXQiO3M6MDoiIjtzOjc6Im5vZGlnaXQiO3M6MDoiIjtzOjY6Im51bWJlciI7czowOiIiO3M6NToiZW1haWwiO3M6MDoiIjtzOjU6InBob25lIjtzOjA6IiI7czoxMToicGhvbmVfaW50ZXIiO3M6MDoiIjtzOjM6InVybCI7czowOiIiO3M6NzoiY29uZmlybSI7czowOiIiO3M6NjoiY3VzdG9tIjtzOjA6IiI7fX1zOjY6InRleHQxMCI7YToxODp7czo0OiJuYW1lIjtzOjM6InppcCI7czoyOiJpZCI7czozOiJ6aXAiO3M6NToidmFsdWUiO3M6MDoiIjtzOjU6ImxhYmVsIjthOjI6e3M6NDoidGV4dCI7czowOiIiO3M6ODoicG9zaXRpb24iO3M6NDoibGVmdCI7fXM6ODoic3VibGFiZWwiO3M6MzoiWmlwIjtzOjExOiJwbGFjZWhvbGRlciI7czowOiIiO3M6OToibWF4bGVuZ3RoIjtzOjA6IiI7czo0OiJzaXplIjtzOjA6IiI7czo1OiJjbGFzcyI7czoyOiJTUyI7czo1OiJ0aXRsZSI7czowOiIiO3M6NToic3R5bGUiO3M6MDoiIjtzOjE1OiI6ZGF0YS1pbnB1dG1hc2siO3M6MDoiIjtzOjY6InBhcmFtcyI7czowOiIiO3M6MTY6IjpkYXRhLWxvYWQtc3RhdGUiO3M6MDoiIjtzOjEzOiI6ZGF0YS10b29sdGlwIjtzOjA6IiI7czo0OiJ0eXBlIjtzOjQ6InRleHQiO3M6MTI6ImNvbnRhaW5lcl9pZCI7czoxOiIwIjtzOjEwOiJ2YWxpZGF0aW9uIjthOjEyOntzOjg6InJlcXVpcmVkIjtzOjA6IiI7czo1OiJhbHBoYSI7czowOiIiO3M6ODoiYWxwaGFudW0iO3M6MDoiIjtzOjU6ImRpZ2l0IjtzOjA6IiI7czo3OiJub2RpZ2l0IjtzOjA6IiI7czo2OiJudW1iZXIiO3M6MDoiIjtzOjU6ImVtYWlsIjtzOjA6IiI7czo1OiJwaG9uZSI7czowOiIiO3M6MTE6InBob25lX2ludGVyIjtzOjA6IiI7czozOiJ1cmwiO3M6MDoiIjtzOjc6ImNvbmZpcm0iO3M6MDoiIjtzOjY6ImN1c3RvbSI7czowOiIiO319fXM6NDoidHlwZSI7czo1OiJtdWx0aSI7czoyOiJpZCI7czo3OiJtdWx0aS03IjtzOjQ6Im5hbWUiO3M6NToibXVsdGkiO3M6MTI6ImNvbnRhaW5lcl9pZCI7czoxOiIwIjt9aTo0O2E6MTg6e3M6NDoibmFtZSI7czo3OiJtZXNzYWdlIjtzOjI6ImlkIjtzOjc6Im1lc3NhZ2UiO3M6NToidmFsdWUiO3M6MDoiIjtzOjU6ImxhYmVsIjthOjI6e3M6NDoidGV4dCI7czo3OiJNZXNzYWdlIjtzOjg6InBvc2l0aW9uIjtzOjQ6ImxlZnQiO31zOjg6InN1YmxhYmVsIjtzOjA6IiI7czoxMToicGxhY2Vob2xkZXIiO3M6MDoiIjtzOjQ6InJvd3MiO3M6MToiOCI7czo0OiJjb2xzIjtzOjI6IjYwIjtzOjU6ImNsYXNzIjtzOjA6IiI7czo1OiJ0aXRsZSI7czowOiIiO3M6NToic3R5bGUiO3M6MDoiIjtzOjEzOiI6ZGF0YS13eXNpd3lnIjtzOjE6IjAiO3M6NjoicGFyYW1zIjtzOjA6IiI7czoxNjoiOmRhdGEtbG9hZC1zdGF0ZSI7czowOiIiO3M6MTM6IjpkYXRhLXRvb2x0aXAiO3M6MDoiIjtzOjQ6InR5cGUiO3M6ODoidGV4dGFyZWEiO3M6MTI6ImNvbnRhaW5lcl9pZCI7czoxOiIwIjtzOjEwOiJ2YWxpZGF0aW9uIjthOjg6e3M6ODoicmVxdWlyZWQiO3M6MToiMSI7czo1OiJhbHBoYSI7czowOiIiO3M6ODoiYWxwaGFudW0iO3M6MDoiIjtzOjU6ImRpZ2l0IjtzOjA6IiI7czo3OiJub2RpZ2l0IjtzOjA6IiI7czo2OiJudW1iZXIiO3M6MDoiIjtzOjc6ImNvbmZpcm0iO3M6MDoiIjtzOjY6ImN1c3RvbSI7czowOiIiO319aTo1O2E6Nzp7czo1OiJsYWJlbCI7YToyOntzOjQ6InRleHQiO3M6NzoiQ2FwdGNoYSI7czo4OiJwb3NpdGlvbiI7czo0OiJsZWZ0Ijt9czo2OiJpbnB1dHMiO2E6Mjp7czo1OiJmaWVsZCI7YToxMTp7czo4OiJzdWJsYWJlbCI7czowOiIiO3M6MTE6InBsYWNlaG9sZGVyIjtzOjA6IiI7czo5OiJtYXhsZW5ndGgiO3M6MDoiIjtzOjQ6InNpemUiO3M6MDoiIjtzOjU6ImNsYXNzIjtzOjA6IiI7czo1OiJ0aXRsZSI7czowOiIiO3M6NToic3R5bGUiO3M6MDoiIjtzOjY6InBhcmFtcyI7czowOiIiO3M6NDoidHlwZSI7czo0OiJ0ZXh0IjtzOjQ6Im5hbWUiO3M6NzoiY2FwdGNoYSI7czoxMDoidmFsaWRhdGlvbiI7YToxOntzOjg6InJlcXVpcmVkIjtzOjE6IjEiO319czo1OiJpbWFnZSI7YTozOntzOjQ6InR5cGUiO3M6NjoiY3VzdG9tIjtzOjQ6Im5hbWUiO3M6NzoiY2FwdGNoYSI7czo0OiJjb2RlIjtzOjEzOiJ7Y2FwdGNoYV9pbWd9Ijt9fXM6NjoibGF5b3V0IjtzOjQ6IndpZGUiO3M6NDoibmFtZSI7czo3OiJjYXB0Y2hhIjtzOjExOiJyZW5kZXJfdHlwZSI7czo3OiJjYXB0Y2hhIjtzOjQ6InR5cGUiO3M6NToibXVsdGkiO3M6MTI6ImNvbnRhaW5lcl9pZCI7czoxOiIwIjt9aTo2O2E6MTA6e3M6MTE6InJlbmRlcl90eXBlIjtzOjY6InN1Ym1pdCI7czo0OiJuYW1lIjtzOjc6InN1Ym1pdDYiO3M6MjoiaWQiO3M6Nzoic3VibWl0NiI7czo0OiJ0eXBlIjtzOjY6InN1Ym1pdCI7czo1OiJ2YWx1ZSI7czo2OiJTdWJtaXQiO3M6NToiY2xhc3MiO3M6MDoiIjtzOjU6InN0eWxlIjtzOjA6IiI7czo2OiJwYXJhbXMiO3M6MDoiIjtzOjE2OiI6ZGF0YS1sb2FkLXN0YXRlIjtzOjA6IiI7czoxMjoiY29udGFpbmVyX2lkIjtzOjE6IjAiO319czoxNDoiYWN0aW9uc19jb25maWciO2E6Nzp7aTo0O2E6Mjp7czo1OiJmb250cyI7czoxOiIxIjtzOjE0OiJyZWZyZXNoX2J1dHRvbiI7czoxOiIwIjt9aTowO2E6OTp7czo0OiJwYWdlIjtzOjE6IjEiO3M6MTI6InN1Ym1pdF9ldmVudCI7czo2OiJzdWJtaXQiO3M6MTE6ImZvcm1fbWV0aG9kIjtzOjQ6ImZpbGUiO3M6MTA6ImFjdGlvbl91cmwiO3M6MDoiIjtzOjEwOiJmb3JtX2NsYXNzIjtzOjEwOiJjaHJvbm9mb3JtIjtzOjE1OiJmb3JtX3RhZ19hdHRhY2giO3M6MDoiIjtzOjI0OiJyZXF1aXJlZF9sYWJlbHNfaWRlbnRpZnkiO3M6MToiMSI7czoxMjoicmVsYXRpdmVfdXJsIjtzOjE6IjEiO3M6MTE6ImFqYXhfc3VibWl0IjtzOjE6IjAiO31pOjc7YToxOntzOjU6ImV2ZW50IjtzOjQ6ImxvYWQiO31pOjU7YToyOntzOjc6ImVuYWJsZWQiO3M6MToiMSI7czo1OiJlcnJvciI7czo0MzoiWW91IGhhdmUgZW50ZXJlZCBhIHdyb25nIHZlcmlmaWNhdGlvbiBjb2RlISI7fWk6MTthOjIzOntzOjEyOiJhY3Rpb25fbGFiZWwiO3M6NToiQWRtaW4iO3M6NzoiZW5hYmxlZCI7czoxOiIxIjtzOjI6InRvIjtzOjI2OiJ5b3VyX2VtYWlsX2hlcmVAZG9tYWluLmNvbSI7czo3OiJzdWJqZWN0IjtzOjIyOiJZb3VyIFN1YmplY3QgR29lcyBIZXJlIjtzOjk6ImZyb21fbmFtZSI7czo1OiJBZG1pbiI7czoxMDoiZnJvbV9lbWFpbCI7czoxNjoiYWRtaW5AZG9tYWluLmNvbSI7czoxMDoiZW1haWxfdHlwZSI7czo0OiJodG1sIjtzOjg6InRlbXBsYXRlIjtzOjI2Njg6IjxkaXYgY2xhc3M9Imdmb3JtLWFsbCI+PHRhYmxlIGNsYXNzPSJnZm9ybS1zZWN0aW9uIj48dHIgY2xhc3M9Imdmb3JtLWxpbmUtdHIiIGlkPSJmdHI4Ij48dGQgY2xhc3M9Imdmb3JtLWxpbmUtdGQiIGlkPSJmdGQ3Ij4NCjxkaXYgY2xhc3M9Imdmb3JtLWlucHV0LWNvbnRhaW5lciBnZm9ybS1pbnB1dCIgaWQ9ImZpbjYiPjxsYWJlbCBmb3I9ImZpcnN0X25hbWUiIGNsYXNzPSJnZm9ybS1sYWJlbC1sZWZ0Ij5OYW1lPC9sYWJlbD4NCjxkaXYgY2xhc3M9Imdmb3JtLWlucHV0LWNvbnRhaW5lciBnZm9ybS1zdWJpbnB1dC1jb250YWluZXItd2lkZSIgaWQ9ImZpdGVtMyI+e2ZpcnN0X25hbWV9PGxhYmVsIGZvcj0iZmlyc3RfbmFtZSIgY2xhc3M9Imdmb3JtLXN1Yi1sYWJlbCI+Rmlyc3Q8L2xhYmVsPjwvZGl2Pg0KDQo8ZGl2IGNsYXNzPSJnZm9ybS1pbnB1dC1jb250YWluZXIgZ2Zvcm0tc3ViaW5wdXQtY29udGFpbmVyLXdpZGUiIGlkPSJmaXRlbTUiPntsYXN0X25hbWV9PGxhYmVsIGZvcj0ibGFzdF9uYW1lIiBjbGFzcz0iZ2Zvcm0tc3ViLWxhYmVsIj5MYXN0PC9sYWJlbD48L2Rpdj48L2Rpdj48L3RkPjwvdHI+PHRyIGNsYXNzPSJnZm9ybS1saW5lLXRyIiBpZD0iZnRyLWVtYWlsIj48dGQgY2xhc3M9Imdmb3JtLWxpbmUtdGQiIGlkPSJmdGQtZW1haWwiPjxsYWJlbCBmb3I9ImVtYWlsIiBjbGFzcz0iZ2Zvcm0tbGFiZWwtbGVmdCI+RW1haWw8L2xhYmVsPg0KPGRpdiBjbGFzcz0iZ2Zvcm0taW5wdXQtY29udGFpbmVyIGdmb3JtLWlucHV0IiBpZD0iZmluLWVtYWlsIj57ZW1haWx9PC9kaXY+PC90ZD48L3RyPjx0ciBjbGFzcz0iZ2Zvcm0tbGluZS10ciIgaWQ9ImZ0ci1waG9uZSI+PHRkIGNsYXNzPSJnZm9ybS1saW5lLXRkIiBpZD0iZnRkLXBob25lIj48bGFiZWwgZm9yPSJwaG9uZSIgY2xhc3M9Imdmb3JtLWxhYmVsLWxlZnQiPlBob25lPC9sYWJlbD4NCjxkaXYgY2xhc3M9Imdmb3JtLWlucHV0LWNvbnRhaW5lciBnZm9ybS1pbnB1dCIgaWQ9ImZpbi1waG9uZSI+e3Bob25lfTwvZGl2PjwvdGQ+PC90cj48dHIgY2xhc3M9Imdmb3JtLWxpbmUtdHIiIGlkPSJmdHIyOCI+PHRkIGNsYXNzPSJnZm9ybS1saW5lLXRkIiBpZD0iZnRkMjciPg0KPGRpdiBjbGFzcz0iZ2Zvcm0taW5wdXQtY29udGFpbmVyIGdmb3JtLWlucHV0IiBpZD0iZmluMjYiPjxsYWJlbCBmb3I9ImFkZHJlc3MiIGNsYXNzPSJnZm9ybS1sYWJlbC1sZWZ0Ij5BZGRyZXNzPC9sYWJlbD4NCjxkaXYgY2xhc3M9Imdmb3JtLWlucHV0LWNvbnRhaW5lciBnZm9ybS1zdWJpbnB1dC1jb250YWluZXItd2lkZSIgaWQ9ImZpdGVtMTkiPnthZGRyZXNzfTxsYWJlbCBmb3I9ImFkZHJlc3MiIGNsYXNzPSJnZm9ybS1zdWItbGFiZWwiPlN0cmVldDwvbGFiZWw+PC9kaXY+DQoNCjxkaXYgY2xhc3M9Imdmb3JtLWlucHV0LWNvbnRhaW5lciBnZm9ybS1zdWJpbnB1dC1jb250YWluZXItd2lkZSIgaWQ9ImZpdGVtMjEiPntjaXR5fTxsYWJlbCBmb3I9ImNpdHkiIGNsYXNzPSJnZm9ybS1zdWItbGFiZWwiPkNpdHk8L2xhYmVsPjwvZGl2Pg0KDQo8ZGl2IGNsYXNzPSJnZm9ybS1pbnB1dC1jb250YWluZXIgZ2Zvcm0tc3ViaW5wdXQtY29udGFpbmVyLXdpZGUiIGlkPSJmaXRlbTIzIj57c3RhdGV9PGxhYmVsIGZvcj0ic3RhdGUiIGNsYXNzPSJnZm9ybS1zdWItbGFiZWwiPlN0YXRlPC9sYWJlbD48L2Rpdj4NCg0KPGRpdiBjbGFzcz0iZ2Zvcm0taW5wdXQtY29udGFpbmVyIGdmb3JtLXN1YmlucHV0LWNvbnRhaW5lci13aWRlIiBpZD0iZml0ZW0yNSI+e3ppcH08bGFiZWwgZm9yPSJ6aXAiIGNsYXNzPSJnZm9ybS1zdWItbGFiZWwiPlppcDwvbGFiZWw+PC9kaXY+PC9kaXY+PC90ZD48L3RyPjx0ciBjbGFzcz0iZ2Zvcm0tbGluZS10ciIgaWQ9ImZ0ci1tZXNzYWdlIj48dGQgY2xhc3M9Imdmb3JtLWxpbmUtdGQiIGlkPSJmdGQtbWVzc2FnZSI+PGxhYmVsIGZvcj0ibWVzc2FnZSIgY2xhc3M9Imdmb3JtLWxhYmVsLWxlZnQiPk1lc3NhZ2U8L2xhYmVsPg0KPGRpdiBjbGFzcz0iZ2Zvcm0taW5wdXQtY29udGFpbmVyIGdmb3JtLWlucHV0IiBpZD0iZmluLW1lc3NhZ2UiPnttZXNzYWdlfTwvZGl2PjwvdGQ+PC90cj48dHIgY2xhc3M9Imdmb3JtLWxpbmUtdHIiIGlkPSJmdHIzOSI+PHRkIGNsYXNzPSJnZm9ybS1saW5lLXRkIiBpZD0iZnRkMzgiPjxsYWJlbCBmb3I9ImZsZDMyIiBjbGFzcz0iZ2Zvcm0tbGFiZWwtbGVmdCI+RW50ZXIgdGhlIGNvZGU8L2xhYmVsPg0KPGRpdiBjbGFzcz0iZ2Zvcm0taW5wdXQtY29udGFpbmVyIGdmb3JtLWlucHV0IiBpZD0iZmluMzciPg0KPGRpdiBjbGFzcz0iZ2Zvcm0taW5wdXQtY29udGFpbmVyIGdmb3JtLXN1YmlucHV0LWNvbnRhaW5lci13aWRlIiBpZD0iZml0ZW0zNCI+e2NhcHRjaGF9PC9kaXY+DQoNCjxkaXYgY2xhc3M9Imdmb3JtLWlucHV0LWNvbnRhaW5lciBnZm9ybS1zdWJpbnB1dC1jb250YWluZXItd2lkZSIgaWQ9ImZpdGVtMzYiPntjYXB0Y2hhX2ltZ308L2Rpdj48L2Rpdj48L3RkPjwvdHI+PHRyIGNsYXNzPSJnZm9ybS1saW5lLXRyIiBpZD0iZnRyLXN1Ym1pdDYiPjx0ZCBjbGFzcz0iZ2Zvcm0tbGluZS10ZCIgaWQ9ImZ0ZC1zdWJtaXQ2Ij4NCjxkaXYgY2xhc3M9Imdmb3JtLWlucHV0LWNvbnRhaW5lciBnZm9ybS1pbnB1dCIgaWQ9ImZpbi1zdWJtaXQ2Ij48L2Rpdj48L3RkPjwvdHI+PC90YWJsZT48L2Rpdj4iO3M6NjoiYXR0YWNoIjtzOjA6IiI7czozOiJkdG8iO3M6MDoiIjtzOjg6ImRzdWJqZWN0IjtzOjA6IiI7czoxMDoicmVwbHlfbmFtZSI7czowOiIiO3M6MTE6InJlcGx5X2VtYWlsIjtzOjA6IiI7czoxMToiZHJlcGx5X25hbWUiO3M6MDoiIjtzOjEyOiJkcmVwbHlfZW1haWwiO3M6MDoiIjtzOjEwOiJkZnJvbV9uYW1lIjtzOjA6IiI7czoxMToiZGZyb21fZW1haWwiO3M6MDoiIjtzOjI6ImNjIjtzOjA6IiI7czozOiJiY2MiO3M6MDoiIjtzOjM6ImRjYyI7czowOiIiO3M6NDoiZGJjYyI7czowOiIiO3M6MTc6ImFwcGVuZF9pcF9hZGRyZXNzIjtzOjE6IjEiO3M6MTY6Il9fYWN0aW9uX3RpdGxlX18iO3M6NToiZW1haWwiO31pOjM7YToyMzp7czoxMjoiYWN0aW9uX2xhYmVsIjtzOjM1OiJUbyBDbGllbnQgKFNlbmRlcikgdXNpbmcgRHluYW1pYyBUbyI7czo3OiJlbmFibGVkIjtzOjE6IjEiO3M6MjoidG8iO3M6MDoiIjtzOjc6InN1YmplY3QiO3M6Mjc6IlRoYW5rIHlvdSBmb3IgY29udGFjdGluZyB1cyI7czo5OiJmcm9tX25hbWUiO3M6NToiQWRtaW4iO3M6MTA6ImZyb21fZW1haWwiO3M6MTY6ImFkbWluQGRvbWFpbi5jb20iO3M6MTA6ImVtYWlsX3R5cGUiO3M6NDoiaHRtbCI7czo4OiJ0ZW1wbGF0ZSI7czoyNjY4OiI8ZGl2IGNsYXNzPSJnZm9ybS1hbGwiPjx0YWJsZSBjbGFzcz0iZ2Zvcm0tc2VjdGlvbiI+PHRyIGNsYXNzPSJnZm9ybS1saW5lLXRyIiBpZD0iZnRyOCI+PHRkIGNsYXNzPSJnZm9ybS1saW5lLXRkIiBpZD0iZnRkNyI+DQo8ZGl2IGNsYXNzPSJnZm9ybS1pbnB1dC1jb250YWluZXIgZ2Zvcm0taW5wdXQiIGlkPSJmaW42Ij48bGFiZWwgZm9yPSJmaXJzdF9uYW1lIiBjbGFzcz0iZ2Zvcm0tbGFiZWwtbGVmdCI+TmFtZTwvbGFiZWw+DQo8ZGl2IGNsYXNzPSJnZm9ybS1pbnB1dC1jb250YWluZXIgZ2Zvcm0tc3ViaW5wdXQtY29udGFpbmVyLXdpZGUiIGlkPSJmaXRlbTMiPntmaXJzdF9uYW1lfTxsYWJlbCBmb3I9ImZpcnN0X25hbWUiIGNsYXNzPSJnZm9ybS1zdWItbGFiZWwiPkZpcnN0PC9sYWJlbD48L2Rpdj4NCg0KPGRpdiBjbGFzcz0iZ2Zvcm0taW5wdXQtY29udGFpbmVyIGdmb3JtLXN1YmlucHV0LWNvbnRhaW5lci13aWRlIiBpZD0iZml0ZW01Ij57bGFzdF9uYW1lfTxsYWJlbCBmb3I9Imxhc3RfbmFtZSIgY2xhc3M9Imdmb3JtLXN1Yi1sYWJlbCI+TGFzdDwvbGFiZWw+PC9kaXY+PC9kaXY+PC90ZD48L3RyPjx0ciBjbGFzcz0iZ2Zvcm0tbGluZS10ciIgaWQ9ImZ0ci1lbWFpbCI+PHRkIGNsYXNzPSJnZm9ybS1saW5lLXRkIiBpZD0iZnRkLWVtYWlsIj48bGFiZWwgZm9yPSJlbWFpbCIgY2xhc3M9Imdmb3JtLWxhYmVsLWxlZnQiPkVtYWlsPC9sYWJlbD4NCjxkaXYgY2xhc3M9Imdmb3JtLWlucHV0LWNvbnRhaW5lciBnZm9ybS1pbnB1dCIgaWQ9ImZpbi1lbWFpbCI+e2VtYWlsfTwvZGl2PjwvdGQ+PC90cj48dHIgY2xhc3M9Imdmb3JtLWxpbmUtdHIiIGlkPSJmdHItcGhvbmUiPjx0ZCBjbGFzcz0iZ2Zvcm0tbGluZS10ZCIgaWQ9ImZ0ZC1waG9uZSI+PGxhYmVsIGZvcj0icGhvbmUiIGNsYXNzPSJnZm9ybS1sYWJlbC1sZWZ0Ij5QaG9uZTwvbGFiZWw+DQo8ZGl2IGNsYXNzPSJnZm9ybS1pbnB1dC1jb250YWluZXIgZ2Zvcm0taW5wdXQiIGlkPSJmaW4tcGhvbmUiPntwaG9uZX08L2Rpdj48L3RkPjwvdHI+PHRyIGNsYXNzPSJnZm9ybS1saW5lLXRyIiBpZD0iZnRyMjgiPjx0ZCBjbGFzcz0iZ2Zvcm0tbGluZS10ZCIgaWQ9ImZ0ZDI3Ij4NCjxkaXYgY2xhc3M9Imdmb3JtLWlucHV0LWNvbnRhaW5lciBnZm9ybS1pbnB1dCIgaWQ9ImZpbjI2Ij48bGFiZWwgZm9yPSJhZGRyZXNzIiBjbGFzcz0iZ2Zvcm0tbGFiZWwtbGVmdCI+QWRkcmVzczwvbGFiZWw+DQo8ZGl2IGNsYXNzPSJnZm9ybS1pbnB1dC1jb250YWluZXIgZ2Zvcm0tc3ViaW5wdXQtY29udGFpbmVyLXdpZGUiIGlkPSJmaXRlbTE5Ij57YWRkcmVzc308bGFiZWwgZm9yPSJhZGRyZXNzIiBjbGFzcz0iZ2Zvcm0tc3ViLWxhYmVsIj5TdHJlZXQ8L2xhYmVsPjwvZGl2Pg0KDQo8ZGl2IGNsYXNzPSJnZm9ybS1pbnB1dC1jb250YWluZXIgZ2Zvcm0tc3ViaW5wdXQtY29udGFpbmVyLXdpZGUiIGlkPSJmaXRlbTIxIj57Y2l0eX08bGFiZWwgZm9yPSJjaXR5IiBjbGFzcz0iZ2Zvcm0tc3ViLWxhYmVsIj5DaXR5PC9sYWJlbD48L2Rpdj4NCg0KPGRpdiBjbGFzcz0iZ2Zvcm0taW5wdXQtY29udGFpbmVyIGdmb3JtLXN1YmlucHV0LWNvbnRhaW5lci13aWRlIiBpZD0iZml0ZW0yMyI+e3N0YXRlfTxsYWJlbCBmb3I9InN0YXRlIiBjbGFzcz0iZ2Zvcm0tc3ViLWxhYmVsIj5TdGF0ZTwvbGFiZWw+PC9kaXY+DQoNCjxkaXYgY2xhc3M9Imdmb3JtLWlucHV0LWNvbnRhaW5lciBnZm9ybS1zdWJpbnB1dC1jb250YWluZXItd2lkZSIgaWQ9ImZpdGVtMjUiPnt6aXB9PGxhYmVsIGZvcj0iemlwIiBjbGFzcz0iZ2Zvcm0tc3ViLWxhYmVsIj5aaXA8L2xhYmVsPjwvZGl2PjwvZGl2PjwvdGQ+PC90cj48dHIgY2xhc3M9Imdmb3JtLWxpbmUtdHIiIGlkPSJmdHItbWVzc2FnZSI+PHRkIGNsYXNzPSJnZm9ybS1saW5lLXRkIiBpZD0iZnRkLW1lc3NhZ2UiPjxsYWJlbCBmb3I9Im1lc3NhZ2UiIGNsYXNzPSJnZm9ybS1sYWJlbC1sZWZ0Ij5NZXNzYWdlPC9sYWJlbD4NCjxkaXYgY2xhc3M9Imdmb3JtLWlucHV0LWNvbnRhaW5lciBnZm9ybS1pbnB1dCIgaWQ9ImZpbi1tZXNzYWdlIj57bWVzc2FnZX08L2Rpdj48L3RkPjwvdHI+PHRyIGNsYXNzPSJnZm9ybS1saW5lLXRyIiBpZD0iZnRyMzkiPjx0ZCBjbGFzcz0iZ2Zvcm0tbGluZS10ZCIgaWQ9ImZ0ZDM4Ij48bGFiZWwgZm9yPSJmbGQzMiIgY2xhc3M9Imdmb3JtLWxhYmVsLWxlZnQiPkVudGVyIHRoZSBjb2RlPC9sYWJlbD4NCjxkaXYgY2xhc3M9Imdmb3JtLWlucHV0LWNvbnRhaW5lciBnZm9ybS1pbnB1dCIgaWQ9ImZpbjM3Ij4NCjxkaXYgY2xhc3M9Imdmb3JtLWlucHV0LWNvbnRhaW5lciBnZm9ybS1zdWJpbnB1dC1jb250YWluZXItd2lkZSIgaWQ9ImZpdGVtMzQiPntjYXB0Y2hhfTwvZGl2Pg0KDQo8ZGl2IGNsYXNzPSJnZm9ybS1pbnB1dC1jb250YWluZXIgZ2Zvcm0tc3ViaW5wdXQtY29udGFpbmVyLXdpZGUiIGlkPSJmaXRlbTM2Ij57Y2FwdGNoYV9pbWd9PC9kaXY+PC9kaXY+PC90ZD48L3RyPjx0ciBjbGFzcz0iZ2Zvcm0tbGluZS10ciIgaWQ9ImZ0ci1zdWJtaXQ2Ij48dGQgY2xhc3M9Imdmb3JtLWxpbmUtdGQiIGlkPSJmdGQtc3VibWl0NiI+DQo8ZGl2IGNsYXNzPSJnZm9ybS1pbnB1dC1jb250YWluZXIgZ2Zvcm0taW5wdXQiIGlkPSJmaW4tc3VibWl0NiI+PC9kaXY+PC90ZD48L3RyPjwvdGFibGU+PC9kaXY+IjtzOjY6ImF0dGFjaCI7czowOiIiO3M6MzoiZHRvIjtzOjU6ImVtYWlsIjtzOjg6ImRzdWJqZWN0IjtzOjA6IiI7czoxMDoicmVwbHlfbmFtZSI7czowOiIiO3M6MTE6InJlcGx5X2VtYWlsIjtzOjA6IiI7czoxMToiZHJlcGx5X25hbWUiO3M6MDoiIjtzOjEyOiJkcmVwbHlfZW1haWwiO3M6MDoiIjtzOjEwOiJkZnJvbV9uYW1lIjtzOjA6IiI7czoxMToiZGZyb21fZW1haWwiO3M6MDoiIjtzOjI6ImNjIjtzOjA6IiI7czozOiJiY2MiO3M6MDoiIjtzOjM6ImRjYyI7czowOiIiO3M6NDoiZGJjYyI7czowOiIiO3M6MTc6ImFwcGVuZF9pcF9hZGRyZXNzIjtzOjE6IjEiO3M6MTY6Il9fYWN0aW9uX3RpdGxlX18iO3M6NToiZW1haWwiO31pOjI7YToxOntzOjc6Im1lc3NhZ2UiO3M6MTA6IlRoYW5rIHlvdSEiO319czozOiJETkEiO2E6Mjp7czo0OiJsb2FkIjthOjI6e3M6MTQ6ImxvYWRfY2FwdGNoYV80IjtzOjA6IiI7czo2OiJodG1sXzAiO3M6MDoiIjt9czo2OiJzdWJtaXQiO2E6NDp7czoxNToiY2hlY2tfY2FwdGNoYV81IjthOjI6e3M6Nzoic3VjY2VzcyI7czowOiIiO3M6NDoiZmFpbCI7YToxOntzOjEyOiJldmVudF9sb29wXzciO3M6MDoiIjt9fXM6NzoiZW1haWxfMSI7czowOiIiO3M6NzoiZW1haWxfMyI7czowOiIiO3M6MTY6InRoYW5rc19tZXNzYWdlXzIiO3M6MDoiIjt9fX0=', 1, '', 1, '<div class="form-group gcore-form-row" id="form-row-29"><div class="gcore-subinput-container" id="fitem-first_name"><label for="first_name" class="control-label gcore-label-left">Name</label>\n<div class="gcore-input pull-left gcore-sub-input gcore-display-table" id="fin-first_name"><input name="first_name" id="first_name" value="" placeholder="" maxlength="" size="" class="validate[&#039;required&#039;] form-control A" title="" style="" data-inputmask="" data-load-state="" data-tooltip="" type="text" /><span class="help-block">First</span></div></div>\n<div class="gcore-subinput-container" id="fitem-last_name"><div class="gcore-input pull-left gcore-sub-input gcore-display-table" id="fin-last_name"><input name="last_name" id="last_name" value="" placeholder="" maxlength="" size="" class="validate[&#039;required&#039;] form-control A" title="" style="" data-inputmask="" data-load-state="" data-tooltip="" type="text" /><span class="help-block">Last</span></div></div></div><div class="form-group gcore-form-row" id="form-row-30"><label for="email" class="control-label gcore-label-left">Email</label>\n<div class="gcore-input gcore-display-table" id="fin-email"><input name="email" id="email" value="" placeholder="" maxlength="" size="" class="validate[&#039;required&#039;,&#039;email&#039;] form-control A" title="" style="" data-inputmask="" data-load-state="" data-tooltip="" type="text" /></div></div><div class="form-group gcore-form-row" id="form-row-31"><label for="phone" class="control-label gcore-label-left">Phone</label>\n<div class="gcore-input gcore-display-table" id="fin-phone"><input name="phone" id="phone" value="" placeholder="" maxlength="" size="" class="form-control A" title="" style="" data-inputmask="" data-load-state="" data-tooltip="" type="text" /></div></div><div class="form-group gcore-form-row" id="form-row-36"><div class="gcore-subinput-container" id="fitem-address"><label for="address" class="control-label gcore-label-left">Address</label>\n<div class="gcore-input pull-left gcore-sub-input gcore-display-table" id="fin-address"><input name="address" id="address" value="" placeholder="" maxlength="" size="" class="L form-control" title="" style="" data-inputmask="" data-load-state="" data-tooltip="" type="text" /><span class="help-block">Street</span></div></div>\n<div class="gcore-subinput-container" id="fitem-city"><div class="gcore-input pull-left gcore-sub-input gcore-display-table" id="fin-city"><input name="city" id="city" value="" placeholder="" maxlength="" size="" class="S form-control" title="" style="" data-inputmask="" data-load-state="" data-tooltip="" type="text" /><span class="help-block">City</span></div></div>\n<div class="gcore-subinput-container" id="fitem-state"><div class="gcore-input pull-left gcore-sub-input gcore-display-table" id="fin-state"><input name="state" id="state" value="" placeholder="" maxlength="" size="" class="S form-control" title="" style="" data-inputmask="" data-load-state="" data-tooltip="" type="text" /><span class="help-block">State</span></div></div>\n<div class="gcore-subinput-container" id="fitem-zip"><div class="gcore-input pull-left gcore-sub-input gcore-display-table" id="fin-zip"><input name="zip" id="zip" value="" placeholder="" maxlength="" size="" class="SS form-control" title="" style="" data-inputmask="" data-load-state="" data-tooltip="" type="text" /><span class="help-block">Zip</span></div></div></div><div class="form-group gcore-form-row" id="form-row-37"><label for="message" class="control-label gcore-label-left">Message</label>\n<div class="gcore-input gcore-display-table" id="fin-message"><textarea name="message" id="message" placeholder="" rows="8" cols="60" class="validate[&#039;required&#039;] form-control A" title="" style="" data-wysiwyg="0" data-load-state="" data-tooltip=""></textarea></div></div><div class="form-group gcore-form-row" id="form-row-43"><label for="fld38" class="control-label gcore-label-left">Captcha</label>\n<div class="gcore-subinput-container-wide" id="fitem40"><div class="gcore-input pull-left gcore-sub-input gcore-display-table" id="fin-fld39"><input placeholder="" maxlength="" size="" class="validate[&#039;required&#039;] form-control A" title="" style="" type="text" name="captcha" id="fld39" /></div></div>\n<div class="gcore-subinput-container-wide" id="fitem42"><div class="gcore-input pull-left gcore-sub-input gcore-display-table" id="fin-fld41">{captcha_img}</div></div></div><div class="form-group gcore-form-row" id="form-row-44"><div class="gcore-input gcore-display-table" id="fin-submit6"><input name="submit6" id="submit6" type="submit" value="Submit" class="form-control A" style="" data-load-state="" /></div></div>'),
(6, 'demo-tabbed-form', '{"description":"Basic form with tabs","setup":"0","theme":"bootstrap3"}', 'YTozOntzOjY6ImZpZWxkcyI7YTo4OntpOjE7YToxMjp7czo1OiJsYWJlbCI7czoxMjoiQ29udGFpbmVyICMxIjtzOjE0OiJjb250YWluZXJfdHlwZSI7czo5OiJ0YWJzX2FyZWEiO3M6NToidGl0bGUiO3M6MTI6IkNvbnRhaW5lciAjMSI7czoyOiJpZCI7czoyMjoiY2hyb25vZm9ybS1jb250YWluZXItMSI7czo1OiJjbGFzcyI7czoyMDoiY2hyb25vZm9ybS1jb250YWluZXIiO3M6NzoiY29udGVudCI7czowOiIiO3M6NDoibmFtZSI7czo5OiJjb250YWluZXIiO3M6MTE6InJlbmRlcl90eXBlIjtzOjk6ImNvbnRhaW5lciI7czo0OiJ0eXBlIjtzOjk6ImNvbnRhaW5lciI7czo0OiJzaXplIjthOjE6e3M6NToid2lkdGgiO3M6MjoiOTkiO31zOjk6ImNvbGxhcHNlZCI7czoxOiIwIjtzOjEyOiJjb250YWluZXJfaWQiO3M6MToiMCI7fWk6MjthOjEyOntzOjU6ImxhYmVsIjtzOjU6IkZpcnN0IjtzOjE0OiJjb250YWluZXJfdHlwZSI7czozOiJ0YWIiO3M6NToidGl0bGUiO3M6NToiRmlyc3QiO3M6MjoiaWQiO3M6MjI6ImNocm9ub2Zvcm0tY29udGFpbmVyLTIiO3M6NToiY2xhc3MiO3M6MjA6ImNocm9ub2Zvcm0tY29udGFpbmVyIjtzOjc6ImNvbnRlbnQiO3M6MDoiIjtzOjQ6Im5hbWUiO3M6OToiY29udGFpbmVyIjtzOjExOiJyZW5kZXJfdHlwZSI7czo5OiJjb250YWluZXIiO3M6NDoidHlwZSI7czo5OiJjb250YWluZXIiO3M6NDoic2l6ZSI7YToxOntzOjU6IndpZHRoIjtzOjI6Ijk5Ijt9czo5OiJjb2xsYXBzZWQiO3M6MToiMCI7czoxMjoiY29udGFpbmVyX2lkIjtzOjE6IjEiO31pOjY7YToxNjp7czo0OiJuYW1lIjtzOjU6InRleHQ2IjtzOjI6ImlkIjtzOjU6InRleHQ2IjtzOjU6InZhbHVlIjtzOjA6IiI7czo1OiJsYWJlbCI7YToyOntzOjQ6InRleHQiO3M6MTA6IkZpcnN0IG5hbWUiO3M6ODoicG9zaXRpb24iO3M6NDoibGVmdCI7fXM6ODoic3VibGFiZWwiO3M6MDoiIjtzOjExOiJwbGFjZWhvbGRlciI7czowOiIiO3M6OToibWF4bGVuZ3RoIjtzOjA6IiI7czo0OiJzaXplIjtzOjA6IiI7czo1OiJjbGFzcyI7czowOiIiO3M6NToidGl0bGUiO3M6MDoiIjtzOjU6InN0eWxlIjtzOjA6IiI7czoxNToiOmRhdGEtaW5wdXRtYXNrIjtzOjA6IiI7czo2OiJwYXJhbXMiO3M6MDoiIjtzOjQ6InR5cGUiO3M6NDoidGV4dCI7czoxMjoiY29udGFpbmVyX2lkIjtzOjE6IjIiO3M6MTA6InZhbGlkYXRpb24iO2E6MTA6e3M6ODoicmVxdWlyZWQiO3M6MToiMSI7czo1OiJhbHBoYSI7czowOiIiO3M6ODoiYWxwaGFudW0iO3M6MDoiIjtzOjU6ImRpZ2l0IjtzOjA6IiI7czo3OiJub2RpZ2l0IjtzOjA6IiI7czo2OiJudW1iZXIiO3M6MDoiIjtzOjU6ImVtYWlsIjtzOjA6IiI7czo1OiJwaG9uZSI7czowOiIiO3M6MTE6InBob25lX2ludGVyIjtzOjA6IiI7czozOiJ1cmwiO3M6MDoiIjt9fWk6MzthOjEyOntzOjU6ImxhYmVsIjtzOjY6Ik1pZGRsZSI7czoxNDoiY29udGFpbmVyX3R5cGUiO3M6MzoidGFiIjtzOjU6InRpdGxlIjtzOjY6Ik1pZGRsZSI7czoyOiJpZCI7czoyMjoiY2hyb25vZm9ybS1jb250YWluZXItMyI7czo1OiJjbGFzcyI7czoyMDoiY2hyb25vZm9ybS1jb250YWluZXIiO3M6NzoiY29udGVudCI7czowOiIiO3M6NDoibmFtZSI7czo5OiJjb250YWluZXIiO3M6MTE6InJlbmRlcl90eXBlIjtzOjk6ImNvbnRhaW5lciI7czo0OiJ0eXBlIjtzOjk6ImNvbnRhaW5lciI7czo0OiJzaXplIjthOjE6e3M6NToid2lkdGgiO3M6MjoiOTkiO31zOjk6ImNvbGxhcHNlZCI7czoxOiIwIjtzOjEyOiJjb250YWluZXJfaWQiO3M6MToiMSI7fWk6NzthOjE2OntzOjQ6Im5hbWUiO3M6NToidGV4dDciO3M6MjoiaWQiO3M6NToidGV4dDciO3M6NToidmFsdWUiO3M6MDoiIjtzOjU6ImxhYmVsIjthOjI6e3M6NDoidGV4dCI7czoxMToiTWlkZGxlIG5hbWUiO3M6ODoicG9zaXRpb24iO3M6NDoibGVmdCI7fXM6ODoic3VibGFiZWwiO3M6MDoiIjtzOjExOiJwbGFjZWhvbGRlciI7czowOiIiO3M6OToibWF4bGVuZ3RoIjtzOjA6IiI7czo0OiJzaXplIjtzOjA6IiI7czo1OiJjbGFzcyI7czowOiIiO3M6NToidGl0bGUiO3M6MDoiIjtzOjU6InN0eWxlIjtzOjA6IiI7czoxNToiOmRhdGEtaW5wdXRtYXNrIjtzOjA6IiI7czo2OiJwYXJhbXMiO3M6MDoiIjtzOjQ6InR5cGUiO3M6NDoidGV4dCI7czoxMjoiY29udGFpbmVyX2lkIjtzOjE6IjMiO3M6MTA6InZhbGlkYXRpb24iO2E6MTA6e3M6ODoicmVxdWlyZWQiO3M6MToiMSI7czo1OiJhbHBoYSI7czowOiIiO3M6ODoiYWxwaGFudW0iO3M6MDoiIjtzOjU6ImRpZ2l0IjtzOjA6IiI7czo3OiJub2RpZ2l0IjtzOjA6IiI7czo2OiJudW1iZXIiO3M6MDoiIjtzOjU6ImVtYWlsIjtzOjA6IiI7czo1OiJwaG9uZSI7czowOiIiO3M6MTE6InBob25lX2ludGVyIjtzOjA6IiI7czozOiJ1cmwiO3M6MDoiIjt9fWk6NDthOjEyOntzOjU6ImxhYmVsIjtzOjQ6Ikxhc3QiO3M6MTQ6ImNvbnRhaW5lcl90eXBlIjtzOjM6InRhYiI7czo1OiJ0aXRsZSI7czo0OiJMYXN0IjtzOjI6ImlkIjtzOjIyOiJjaHJvbm9mb3JtLWNvbnRhaW5lci00IjtzOjU6ImNsYXNzIjtzOjIwOiJjaHJvbm9mb3JtLWNvbnRhaW5lciI7czo3OiJjb250ZW50IjtzOjA6IiI7czo0OiJuYW1lIjtzOjk6ImNvbnRhaW5lciI7czoxMToicmVuZGVyX3R5cGUiO3M6OToiY29udGFpbmVyIjtzOjQ6InR5cGUiO3M6OToiY29udGFpbmVyIjtzOjQ6InNpemUiO2E6MTp7czo1OiJ3aWR0aCI7czoyOiI5OSI7fXM6OToiY29sbGFwc2VkIjtzOjE6IjAiO3M6MTI6ImNvbnRhaW5lcl9pZCI7czoxOiIxIjt9aTo4O2E6MTY6e3M6NDoibmFtZSI7czo1OiJ0ZXh0OCI7czoyOiJpZCI7czo1OiJ0ZXh0OCI7czo1OiJ2YWx1ZSI7czowOiIiO3M6NToibGFiZWwiO2E6Mjp7czo0OiJ0ZXh0IjtzOjk6Ikxhc3QgbmFtZSI7czo4OiJwb3NpdGlvbiI7czo0OiJsZWZ0Ijt9czo4OiJzdWJsYWJlbCI7czowOiIiO3M6MTE6InBsYWNlaG9sZGVyIjtzOjA6IiI7czo5OiJtYXhsZW5ndGgiO3M6MDoiIjtzOjQ6InNpemUiO3M6MDoiIjtzOjU6ImNsYXNzIjtzOjA6IiI7czo1OiJ0aXRsZSI7czowOiIiO3M6NToic3R5bGUiO3M6MDoiIjtzOjE1OiI6ZGF0YS1pbnB1dG1hc2siO3M6MDoiIjtzOjY6InBhcmFtcyI7czowOiIiO3M6NDoidHlwZSI7czo0OiJ0ZXh0IjtzOjEyOiJjb250YWluZXJfaWQiO3M6MToiNCI7czoxMDoidmFsaWRhdGlvbiI7YToxMDp7czo4OiJyZXF1aXJlZCI7czoxOiIxIjtzOjU6ImFscGhhIjtzOjA6IiI7czo4OiJhbHBoYW51bSI7czowOiIiO3M6NToiZGlnaXQiO3M6MDoiIjtzOjc6Im5vZGlnaXQiO3M6MDoiIjtzOjY6Im51bWJlciI7czowOiIiO3M6NToiZW1haWwiO3M6MDoiIjtzOjU6InBob25lIjtzOjA6IiI7czoxMToicGhvbmVfaW50ZXIiO3M6MDoiIjtzOjM6InVybCI7czowOiIiO319aTo1O2E6OTp7czoxMToicmVuZGVyX3R5cGUiO3M6Njoic3VibWl0IjtzOjQ6Im5hbWUiO3M6NzoiYnV0dG9uNSI7czoyOiJpZCI7czo3OiJidXR0b241IjtzOjQ6InR5cGUiO3M6Njoic3VibWl0IjtzOjU6InZhbHVlIjtzOjY6IlN1Ym1pdCI7czo1OiJjbGFzcyI7czowOiIiO3M6NToic3R5bGUiO3M6MDoiIjtzOjY6InBhcmFtcyI7czowOiIiO3M6MTI6ImNvbnRhaW5lcl9pZCI7czoxOiIwIjt9fXM6MTQ6ImFjdGlvbnNfY29uZmlnIjthOjI6e2k6MDthOjg6e3M6NDoicGFnZSI7czoxOiIxIjtzOjEyOiJzdWJtaXRfZXZlbnQiO3M6Njoic3VibWl0IjtzOjExOiJmb3JtX21ldGhvZCI7czo0OiJmaWxlIjtzOjEwOiJhY3Rpb25fdXJsIjtzOjA6IiI7czoxMDoiZm9ybV9jbGFzcyI7czoxMDoiY2hyb25vZm9ybSI7czoxNToiZm9ybV90YWdfYXR0YWNoIjtzOjA6IiI7czoxMjoicmVsYXRpdmVfdXJsIjtzOjE6IjEiO3M6MTE6ImFqYXhfc3VibWl0IjtzOjE6IjAiO31pOjE7YToxOntzOjc6Im1lc3NhZ2UiO3M6NzoiVGhhbmtzISI7fX1zOjM6IkROQSI7YToyOntzOjQ6ImxvYWQiO2E6MTp7czo2OiJodG1sXzAiO3M6MDoiIjt9czo2OiJzdWJtaXQiO2E6MTp7czoxNjoidGhhbmtzX21lc3NhZ2VfMSI7czowOiIiO319fQ==', 1, '', 1, '<div class="chronoform-container" id="chronoform-container-1">\n					<ul class="nav nav-tabs"><li class="active"><a href="#chronoform-container-2" data-g-toggle="tab">First</a></li><li><a href="#chronoform-container-3" data-g-toggle="tab">Middle</a></li><li><a href="#chronoform-container-4" data-g-toggle="tab">Last</a></li></ul>\n					<div class="tab-content"><div id="chronoform-container-2" class="tab-pane active"><div class="form-group gcore-form-row" id="form-row-46"><label for="text6" class="control-label gcore-label-left">First name</label>\n<div class="gcore-input gcore-display-table" id="fin-text6"><input name="text6" id="text6" value="" placeholder="" maxlength="" size="" class="validate[&#039;required&#039;] form-control A" title="" style="" data-inputmask="" type="text" /></div></div></div><div id="chronoform-container-3" class="tab-pane"><div class="form-group gcore-form-row" id="form-row-48"><label for="text7" class="control-label gcore-label-left">Middle name</label>\n<div class="gcore-input gcore-display-table" id="fin-text7"><input name="text7" id="text7" value="" placeholder="" maxlength="" size="" class="validate[&#039;required&#039;] form-control A" title="" style="" data-inputmask="" type="text" /></div></div></div><div id="chronoform-container-4" class="tab-pane"><div class="form-group gcore-form-row" id="form-row-50"><label for="text8" class="control-label gcore-label-left">Last name</label>\n<div class="gcore-input gcore-display-table" id="fin-text8"><input name="text8" id="text8" value="" placeholder="" maxlength="" size="" class="validate[&#039;required&#039;] form-control A" title="" style="" data-inputmask="" type="text" /></div></div></div></div></div><div class="form-group gcore-form-row" id="form-row-51"><div class="gcore-input gcore-display-table" id="fin-button5"><input name="button5" id="button5" type="submit" value="Submit" class="form-control A" style="" /></div></div>');
INSERT INTO `iwk5c_chronoengine_chronoforms` (`id`, `title`, `params`, `extras`, `published`, `app`, `form_type`, `content`) VALUES
(7, 'demo-multi-column', '{"description":"Basic two columns form","setup":"0","theme":"gcoreui"}', 'YTozOntzOjY6ImZpZWxkcyI7YTo4OntpOjE7YToxMjp7czo1OiJsYWJlbCI7czoxMjoiQ29udGFpbmVyICMxIjtzOjE0OiJjb250YWluZXJfdHlwZSI7czoxMjoibXVsdGlfY29sdW1uIjtzOjU6InRpdGxlIjtzOjEyOiJDb250YWluZXIgIzEiO3M6MjoiaWQiO3M6MjI6ImNocm9ub2Zvcm0tY29udGFpbmVyLTEiO3M6NToiY2xhc3MiO3M6MjA6ImNocm9ub2Zvcm0tY29udGFpbmVyIjtzOjc6ImNvbnRlbnQiO3M6MDoiIjtzOjQ6Im5hbWUiO3M6OToiY29udGFpbmVyIjtzOjExOiJyZW5kZXJfdHlwZSI7czo5OiJjb250YWluZXIiO3M6NDoidHlwZSI7czo5OiJjb250YWluZXIiO3M6NDoic2l6ZSI7YToxOntzOjU6IndpZHRoIjtzOjI6Ijk5Ijt9czo5OiJjb2xsYXBzZWQiO3M6MToiMCI7czoxMjoiY29udGFpbmVyX2lkIjtzOjE6IjAiO31pOjI7YToxMjp7czo1OiJsYWJlbCI7czoxMjoiQ29udGFpbmVyICMyIjtzOjE0OiJjb250YWluZXJfdHlwZSI7czo2OiJjb2x1bW4iO3M6NToidGl0bGUiO3M6MTI6IkNvbnRhaW5lciAjMiI7czoyOiJpZCI7czoyMjoiY2hyb25vZm9ybS1jb250YWluZXItMiI7czo1OiJjbGFzcyI7czoyMDoiY2hyb25vZm9ybS1jb250YWluZXIiO3M6NzoiY29udGVudCI7czowOiIiO3M6NDoibmFtZSI7czo5OiJjb250YWluZXIiO3M6MTE6InJlbmRlcl90eXBlIjtzOjk6ImNvbnRhaW5lciI7czo0OiJ0eXBlIjtzOjk6ImNvbnRhaW5lciI7czo0OiJzaXplIjthOjE6e3M6NToid2lkdGgiO3M6MjoiMzIiO31zOjk6ImNvbGxhcHNlZCI7czoxOiIwIjtzOjEyOiJjb250YWluZXJfaWQiO3M6MToiMSI7fWk6NTthOjE2OntzOjQ6Im5hbWUiO3M6NToidGV4dDUiO3M6MjoiaWQiO3M6NToidGV4dDUiO3M6NToidmFsdWUiO3M6MDoiIjtzOjU6ImxhYmVsIjthOjI6e3M6NDoidGV4dCI7czoxMDoiVGV4dCBMYWJlbCI7czo4OiJwb3NpdGlvbiI7czo0OiJsZWZ0Ijt9czo4OiJzdWJsYWJlbCI7czowOiIiO3M6MTE6InBsYWNlaG9sZGVyIjtzOjA6IiI7czo5OiJtYXhsZW5ndGgiO3M6MDoiIjtzOjQ6InNpemUiO3M6MDoiIjtzOjU6ImNsYXNzIjtzOjA6IiI7czo1OiJ0aXRsZSI7czowOiIiO3M6NToic3R5bGUiO3M6MDoiIjtzOjE1OiI6ZGF0YS1pbnB1dG1hc2siO3M6MDoiIjtzOjY6InBhcmFtcyI7czowOiIiO3M6NDoidHlwZSI7czo0OiJ0ZXh0IjtzOjEyOiJjb250YWluZXJfaWQiO3M6MToiMiI7czoxMDoidmFsaWRhdGlvbiI7YToxMDp7czo4OiJyZXF1aXJlZCI7czowOiIiO3M6NToiYWxwaGEiO3M6MDoiIjtzOjg6ImFscGhhbnVtIjtzOjA6IiI7czo1OiJkaWdpdCI7czowOiIiO3M6Nzoibm9kaWdpdCI7czowOiIiO3M6NjoibnVtYmVyIjtzOjA6IiI7czo1OiJlbWFpbCI7czowOiIiO3M6NToicGhvbmUiO3M6MDoiIjtzOjExOiJwaG9uZV9pbnRlciI7czowOiIiO3M6MzoidXJsIjtzOjA6IiI7fX1pOjY7YToxNjp7czo0OiJuYW1lIjtzOjU6InRleHQ2IjtzOjI6ImlkIjtzOjU6InRleHQ2IjtzOjU6InZhbHVlIjtzOjA6IiI7czo1OiJsYWJlbCI7YToyOntzOjQ6InRleHQiO3M6MTA6IlRleHQgTGFiZWwiO3M6ODoicG9zaXRpb24iO3M6NDoibGVmdCI7fXM6ODoic3VibGFiZWwiO3M6MDoiIjtzOjExOiJwbGFjZWhvbGRlciI7czowOiIiO3M6OToibWF4bGVuZ3RoIjtzOjA6IiI7czo0OiJzaXplIjtzOjA6IiI7czo1OiJjbGFzcyI7czowOiIiO3M6NToidGl0bGUiO3M6MDoiIjtzOjU6InN0eWxlIjtzOjA6IiI7czoxNToiOmRhdGEtaW5wdXRtYXNrIjtzOjA6IiI7czo2OiJwYXJhbXMiO3M6MDoiIjtzOjQ6InR5cGUiO3M6NDoidGV4dCI7czoxMjoiY29udGFpbmVyX2lkIjtzOjE6IjIiO3M6MTA6InZhbGlkYXRpb24iO2E6MTA6e3M6ODoicmVxdWlyZWQiO3M6MDoiIjtzOjU6ImFscGhhIjtzOjA6IiI7czo4OiJhbHBoYW51bSI7czowOiIiO3M6NToiZGlnaXQiO3M6MDoiIjtzOjc6Im5vZGlnaXQiO3M6MDoiIjtzOjY6Im51bWJlciI7czowOiIiO3M6NToiZW1haWwiO3M6MDoiIjtzOjU6InBob25lIjtzOjA6IiI7czoxMToicGhvbmVfaW50ZXIiO3M6MDoiIjtzOjM6InVybCI7czowOiIiO319aToxMDthOjE2OntzOjQ6Im5hbWUiO3M6NjoidGV4dDEwIjtzOjI6ImlkIjtzOjY6InRleHQxMCI7czo1OiJ2YWx1ZSI7czowOiIiO3M6NToibGFiZWwiO2E6Mjp7czo0OiJ0ZXh0IjtzOjEwOiJUZXh0IExhYmVsIjtzOjg6InBvc2l0aW9uIjtzOjQ6ImxlZnQiO31zOjg6InN1YmxhYmVsIjtzOjA6IiI7czoxMToicGxhY2Vob2xkZXIiO3M6MDoiIjtzOjk6Im1heGxlbmd0aCI7czowOiIiO3M6NDoic2l6ZSI7czowOiIiO3M6NToiY2xhc3MiO3M6MDoiIjtzOjU6InRpdGxlIjtzOjA6IiI7czo1OiJzdHlsZSI7czowOiIiO3M6MTU6IjpkYXRhLWlucHV0bWFzayI7czowOiIiO3M6NjoicGFyYW1zIjtzOjA6IiI7czo0OiJ0eXBlIjtzOjQ6InRleHQiO3M6MTI6ImNvbnRhaW5lcl9pZCI7czoxOiIyIjtzOjEwOiJ2YWxpZGF0aW9uIjthOjEwOntzOjg6InJlcXVpcmVkIjtzOjA6IiI7czo1OiJhbHBoYSI7czowOiIiO3M6ODoiYWxwaGFudW0iO3M6MDoiIjtzOjU6ImRpZ2l0IjtzOjA6IiI7czo3OiJub2RpZ2l0IjtzOjA6IiI7czo2OiJudW1iZXIiO3M6MDoiIjtzOjU6ImVtYWlsIjtzOjA6IiI7czo1OiJwaG9uZSI7czowOiIiO3M6MTE6InBob25lX2ludGVyIjtzOjA6IiI7czozOiJ1cmwiO3M6MDoiIjt9fWk6MzthOjEyOntzOjU6ImxhYmVsIjtzOjEyOiJDb250YWluZXIgIzMiO3M6MTQ6ImNvbnRhaW5lcl90eXBlIjtzOjY6ImNvbHVtbiI7czo1OiJ0aXRsZSI7czoxMjoiQ29udGFpbmVyICMzIjtzOjI6ImlkIjtzOjIyOiJjaHJvbm9mb3JtLWNvbnRhaW5lci0zIjtzOjU6ImNsYXNzIjtzOjIwOiJjaHJvbm9mb3JtLWNvbnRhaW5lciI7czo3OiJjb250ZW50IjtzOjA6IiI7czo0OiJuYW1lIjtzOjk6ImNvbnRhaW5lciI7czoxMToicmVuZGVyX3R5cGUiO3M6OToiY29udGFpbmVyIjtzOjQ6InR5cGUiO3M6OToiY29udGFpbmVyIjtzOjQ6InNpemUiO2E6MTp7czo1OiJ3aWR0aCI7czoyOiI0NCI7fXM6OToiY29sbGFwc2VkIjtzOjE6IjAiO3M6MTI6ImNvbnRhaW5lcl9pZCI7czoxOiIxIjt9aTo3O2E6MTU6e3M6NDoibmFtZSI7czo5OiJ0ZXh0YXJlYTciO3M6MjoiaWQiO3M6OToidGV4dGFyZWE3IjtzOjU6InZhbHVlIjtzOjA6IiI7czo1OiJsYWJlbCI7YToyOntzOjQ6InRleHQiO3M6MTQ6IlRleHRhcmVhIExhYmVsIjtzOjg6InBvc2l0aW9uIjtzOjQ6ImxlZnQiO31zOjg6InN1YmxhYmVsIjtzOjA6IiI7czoxMToicGxhY2Vob2xkZXIiO3M6MDoiIjtzOjQ6InJvd3MiO3M6MToiNyI7czo0OiJjb2xzIjtzOjI6IjQwIjtzOjU6ImNsYXNzIjtzOjA6IiI7czo1OiJ0aXRsZSI7czowOiIiO3M6NToic3R5bGUiO3M6MDoiIjtzOjY6InBhcmFtcyI7czowOiIiO3M6NDoidHlwZSI7czo4OiJ0ZXh0YXJlYSI7czoxMjoiY29udGFpbmVyX2lkIjtzOjE6IjMiO3M6MTA6InZhbGlkYXRpb24iO2E6Njp7czo4OiJyZXF1aXJlZCI7czoxOiIxIjtzOjU6ImFscGhhIjtzOjA6IiI7czo4OiJhbHBoYW51bSI7czowOiIiO3M6NToiZGlnaXQiO3M6MDoiIjtzOjc6Im5vZGlnaXQiO3M6MDoiIjtzOjY6Im51bWJlciI7czowOiIiO319aTo0O2E6OTp7czoxMToicmVuZGVyX3R5cGUiO3M6Njoic3VibWl0IjtzOjQ6Im5hbWUiO3M6NzoiYnV0dG9uNCI7czoyOiJpZCI7czo3OiJidXR0b240IjtzOjQ6InR5cGUiO3M6Njoic3VibWl0IjtzOjU6InZhbHVlIjtzOjY6IlN1Ym1pdCI7czo1OiJjbGFzcyI7czowOiIiO3M6NToic3R5bGUiO3M6MDoiIjtzOjY6InBhcmFtcyI7czowOiIiO3M6MTI6ImNvbnRhaW5lcl9pZCI7czoxOiIwIjt9fXM6MTQ6ImFjdGlvbnNfY29uZmlnIjthOjE6e2k6MDthOjg6e3M6NDoicGFnZSI7czoxOiIxIjtzOjEyOiJzdWJtaXRfZXZlbnQiO3M6Njoic3VibWl0IjtzOjExOiJmb3JtX21ldGhvZCI7czo0OiJmaWxlIjtzOjEwOiJhY3Rpb25fdXJsIjtzOjA6IiI7czoxMDoiZm9ybV9jbGFzcyI7czoxMDoiY2hyb25vZm9ybSI7czoxNToiZm9ybV90YWdfYXR0YWNoIjtzOjA6IiI7czoxMjoicmVsYXRpdmVfdXJsIjtzOjE6IjEiO3M6MTE6ImFqYXhfc3VibWl0IjtzOjE6IjAiO319czozOiJETkEiO2E6Mjp7czo0OiJsb2FkIjthOjE6e3M6NjoiaHRtbF8wIjtzOjA6IiI7fXM6Njoic3VibWl0IjtzOjA6IiI7fX0=', 1, '', 1, '<div class="chronoform-container" id="chronoform-container-1" style="overflow:auto;"><div class="chronoform-container" id="chronoform-container-2" style="float:left; width:32%"><div class="gcore-line-tr gcore-form-row" id="ftr-text5"><div class="gcore-line-td" id="ftd-text5"><label for="text5" class="gcore-label-left">Text Label</label>\n<div class="gcore-display-table gcore-input" id="fin-text5"><input name="text5" id="text5" value="" placeholder="" maxlength="" size="" class="" title="" style="" data-inputmask="" type="text" /></div></div></div><div class="gcore-line-tr gcore-form-row" id="ftr-text6"><div class="gcore-line-td" id="ftd-text6"><label for="text6" class="gcore-label-left">Text Label</label>\n<div class="gcore-display-table gcore-input" id="fin-text6"><input name="text6" id="text6" value="" placeholder="" maxlength="" size="" class="" title="" style="" data-inputmask="" type="text" /></div></div></div><div class="gcore-line-tr gcore-form-row" id="ftr-text10"><div class="gcore-line-td" id="ftd-text10"><label for="text10" class="gcore-label-left">Text Label</label>\n<div class="gcore-display-table gcore-input" id="fin-text10"><input name="text10" id="text10" value="" placeholder="" maxlength="" size="" class="" title="" style="" data-inputmask="" type="text" /></div></div></div></div><div class="chronoform-container" id="chronoform-container-3" style="float:left; width:44%"><div class="gcore-line-tr gcore-form-row" id="ftr-textarea7"><div class="gcore-line-td" id="ftd-textarea7"><label for="textarea7" class="gcore-label-left">Textarea Label</label>\n<div class="gcore-display-table gcore-input" id="fin-textarea7"><textarea name="textarea7" id="textarea7" placeholder="" rows="7" cols="40" class=" validate[&#039;required&#039;]" title="" style=""></textarea></div></div></div></div></div><div style="clear:both;"></div><div class="gcore-line-tr gcore-form-row" id="ftr-button4"><div class="gcore-line-td" id="ftd-button4"><div class="gcore-display-table gcore-input" id="fin-button4"><input name="button4" id="button4" type="submit" value="Submit" class="" style="" /></div></div></div>'),
(8, 'demo-joomla-registration', '{"description":"A basic Joomla registration form.","setup":"0","theme":"bootstrap3","tight_layout":"1"}', 'YTozOntzOjY6ImZpZWxkcyI7YTo2OntpOjE7YToxODp7czo0OiJuYW1lIjtzOjQ6Im5hbWUiO3M6MjoiaWQiO3M6NDoibmFtZSI7czo1OiJ2YWx1ZSI7czowOiIiO3M6NToibGFiZWwiO2E6Mjp7czo0OiJ0ZXh0IjtzOjQ6Ik5hbWUiO3M6ODoicG9zaXRpb24iO3M6NDoibGVmdCI7fXM6ODoic3VibGFiZWwiO3M6MDoiIjtzOjExOiJwbGFjZWhvbGRlciI7czowOiIiO3M6OToibWF4bGVuZ3RoIjtzOjA6IiI7czo0OiJzaXplIjtzOjA6IiI7czo1OiJjbGFzcyI7czowOiIiO3M6NToidGl0bGUiO3M6MDoiIjtzOjU6InN0eWxlIjtzOjA6IiI7czoxNToiOmRhdGEtaW5wdXRtYXNrIjtzOjA6IiI7czo2OiJwYXJhbXMiO3M6MDoiIjtzOjE2OiI6ZGF0YS1sb2FkLXN0YXRlIjtzOjA6IiI7czoxMzoiOmRhdGEtdG9vbHRpcCI7czowOiIiO3M6NDoidHlwZSI7czo0OiJ0ZXh0IjtzOjEyOiJjb250YWluZXJfaWQiO3M6MToiMCI7czoxMDoidmFsaWRhdGlvbiI7YToxMjp7czo4OiJyZXF1aXJlZCI7czoxOiIxIjtzOjU6ImFscGhhIjtzOjA6IiI7czo4OiJhbHBoYW51bSI7czowOiIiO3M6NToiZGlnaXQiO3M6MDoiIjtzOjc6Im5vZGlnaXQiO3M6MDoiIjtzOjY6Im51bWJlciI7czowOiIiO3M6NToiZW1haWwiO3M6MDoiIjtzOjU6InBob25lIjtzOjA6IiI7czoxMToicGhvbmVfaW50ZXIiO3M6MDoiIjtzOjM6InVybCI7czowOiIiO3M6NzoiY29uZmlybSI7czowOiIiO3M6NjoiY3VzdG9tIjtzOjA6IiI7fX1pOjI7YToxODp7czo0OiJuYW1lIjtzOjg6InVzZXJuYW1lIjtzOjI6ImlkIjtzOjg6InVzZXJuYW1lIjtzOjU6InZhbHVlIjtzOjA6IiI7czo1OiJsYWJlbCI7YToyOntzOjQ6InRleHQiO3M6ODoiVXNlcm5hbWUiO3M6ODoicG9zaXRpb24iO3M6NDoibGVmdCI7fXM6ODoic3VibGFiZWwiO3M6MDoiIjtzOjExOiJwbGFjZWhvbGRlciI7czowOiIiO3M6OToibWF4bGVuZ3RoIjtzOjA6IiI7czo0OiJzaXplIjtzOjA6IiI7czo1OiJjbGFzcyI7czowOiIiO3M6NToidGl0bGUiO3M6MDoiIjtzOjU6InN0eWxlIjtzOjA6IiI7czoxNToiOmRhdGEtaW5wdXRtYXNrIjtzOjA6IiI7czo2OiJwYXJhbXMiO3M6MDoiIjtzOjE2OiI6ZGF0YS1sb2FkLXN0YXRlIjtzOjA6IiI7czoxMzoiOmRhdGEtdG9vbHRpcCI7czowOiIiO3M6NDoidHlwZSI7czo0OiJ0ZXh0IjtzOjEyOiJjb250YWluZXJfaWQiO3M6MToiMCI7czoxMDoidmFsaWRhdGlvbiI7YToxMjp7czo4OiJyZXF1aXJlZCI7czoxOiIxIjtzOjU6ImFscGhhIjtzOjA6IiI7czo4OiJhbHBoYW51bSI7czowOiIiO3M6NToiZGlnaXQiO3M6MDoiIjtzOjc6Im5vZGlnaXQiO3M6MDoiIjtzOjY6Im51bWJlciI7czowOiIiO3M6NToiZW1haWwiO3M6MDoiIjtzOjU6InBob25lIjtzOjA6IiI7czoxMToicGhvbmVfaW50ZXIiO3M6MDoiIjtzOjM6InVybCI7czowOiIiO3M6NzoiY29uZmlybSI7czowOiIiO3M6NjoiY3VzdG9tIjtzOjA6IiI7fX1pOjM7YToxODp7czo0OiJuYW1lIjtzOjU6ImVtYWlsIjtzOjI6ImlkIjtzOjU6ImVtYWlsIjtzOjU6InZhbHVlIjtzOjA6IiI7czo1OiJsYWJlbCI7YToyOntzOjQ6InRleHQiO3M6NToiRW1haWwiO3M6ODoicG9zaXRpb24iO3M6NDoibGVmdCI7fXM6ODoic3VibGFiZWwiO3M6MDoiIjtzOjExOiJwbGFjZWhvbGRlciI7czowOiIiO3M6OToibWF4bGVuZ3RoIjtzOjA6IiI7czo0OiJzaXplIjtzOjA6IiI7czo1OiJjbGFzcyI7czowOiIiO3M6NToidGl0bGUiO3M6MDoiIjtzOjU6InN0eWxlIjtzOjA6IiI7czoxNToiOmRhdGEtaW5wdXRtYXNrIjtzOjA6IiI7czo2OiJwYXJhbXMiO3M6MDoiIjtzOjE2OiI6ZGF0YS1sb2FkLXN0YXRlIjtzOjA6IiI7czoxMzoiOmRhdGEtdG9vbHRpcCI7czowOiIiO3M6NDoidHlwZSI7czo0OiJ0ZXh0IjtzOjEyOiJjb250YWluZXJfaWQiO3M6MToiMCI7czoxMDoidmFsaWRhdGlvbiI7YToxMjp7czo4OiJyZXF1aXJlZCI7czoxOiIxIjtzOjU6ImFscGhhIjtzOjA6IiI7czo4OiJhbHBoYW51bSI7czowOiIiO3M6NToiZGlnaXQiO3M6MDoiIjtzOjc6Im5vZGlnaXQiO3M6MDoiIjtzOjY6Im51bWJlciI7czowOiIiO3M6NToiZW1haWwiO3M6MToiMSI7czo1OiJwaG9uZSI7czowOiIiO3M6MTE6InBob25lX2ludGVyIjtzOjA6IiI7czozOiJ1cmwiO3M6MDoiIjtzOjc6ImNvbmZpcm0iO3M6MDoiIjtzOjY6ImN1c3RvbSI7czowOiIiO319aTo3O2E6MTc6e3M6NDoibmFtZSI7czo4OiJwYXNzd29yZCI7czoyOiJpZCI7czo4OiJwYXNzd29yZCI7czo1OiJ2YWx1ZSI7czowOiIiO3M6NToibGFiZWwiO2E6Mjp7czo0OiJ0ZXh0IjtzOjg6IlBhc3N3b3JkIjtzOjg6InBvc2l0aW9uIjtzOjQ6ImxlZnQiO31zOjg6InN1YmxhYmVsIjtzOjA6IiI7czoxMToicGxhY2Vob2xkZXIiO3M6MDoiIjtzOjk6Im1heGxlbmd0aCI7czowOiIiO3M6NDoic2l6ZSI7czowOiIiO3M6NToiY2xhc3MiO3M6MDoiIjtzOjU6InRpdGxlIjtzOjA6IiI7czo1OiJzdHlsZSI7czowOiIiO3M6NjoicGFyYW1zIjtzOjA6IiI7czoxNjoiOmRhdGEtbG9hZC1zdGF0ZSI7czowOiIiO3M6MTM6IjpkYXRhLXRvb2x0aXAiO3M6MDoiIjtzOjQ6InR5cGUiO3M6ODoicGFzc3dvcmQiO3M6MTI6ImNvbnRhaW5lcl9pZCI7czoxOiIwIjtzOjEwOiJ2YWxpZGF0aW9uIjthOjg6e3M6ODoicmVxdWlyZWQiO3M6MToiMSI7czo1OiJhbHBoYSI7czowOiIiO3M6ODoiYWxwaGFudW0iO3M6MDoiIjtzOjU6ImRpZ2l0IjtzOjA6IiI7czo3OiJub2RpZ2l0IjtzOjA6IiI7czo2OiJudW1iZXIiO3M6MDoiIjtzOjc6ImNvbmZpcm0iO3M6MDoiIjtzOjY6ImN1c3RvbSI7czowOiIiO319aTo4O2E6MTc6e3M6NDoibmFtZSI7czo5OiJ2cGFzc3dvcmQiO3M6MjoiaWQiO3M6OToidnBhc3N3b3JkIjtzOjU6InZhbHVlIjtzOjA6IiI7czo1OiJsYWJlbCI7YToyOntzOjQ6InRleHQiO3M6MTY6IkNvbmZpcm0gcGFzc3dvcmQiO3M6ODoicG9zaXRpb24iO3M6NDoibGVmdCI7fXM6ODoic3VibGFiZWwiO3M6MDoiIjtzOjExOiJwbGFjZWhvbGRlciI7czowOiIiO3M6OToibWF4bGVuZ3RoIjtzOjA6IiI7czo0OiJzaXplIjtzOjA6IiI7czo1OiJjbGFzcyI7czowOiIiO3M6NToidGl0bGUiO3M6MDoiIjtzOjU6InN0eWxlIjtzOjA6IiI7czo2OiJwYXJhbXMiO3M6MDoiIjtzOjE2OiI6ZGF0YS1sb2FkLXN0YXRlIjtzOjA6IiI7czoxMzoiOmRhdGEtdG9vbHRpcCI7czowOiIiO3M6NDoidHlwZSI7czo4OiJwYXNzd29yZCI7czoxMjoiY29udGFpbmVyX2lkIjtzOjE6IjAiO3M6MTA6InZhbGlkYXRpb24iO2E6ODp7czo4OiJyZXF1aXJlZCI7czoxOiIxIjtzOjU6ImFscGhhIjtzOjA6IiI7czo4OiJhbHBoYW51bSI7czowOiIiO3M6NToiZGlnaXQiO3M6MDoiIjtzOjc6Im5vZGlnaXQiO3M6MDoiIjtzOjY6Im51bWJlciI7czowOiIiO3M6NzoiY29uZmlybSI7czo4OiJwYXNzd29yZCI7czo2OiJjdXN0b20iO3M6MDoiIjt9fWk6NjthOjEwOntzOjExOiJyZW5kZXJfdHlwZSI7czo2OiJzdWJtaXQiO3M6NDoibmFtZSI7czo3OiJidXR0b242IjtzOjI6ImlkIjtzOjc6ImJ1dHRvbjYiO3M6NDoidHlwZSI7czo2OiJzdWJtaXQiO3M6NToidmFsdWUiO3M6NjoiU3VibWl0IjtzOjU6ImNsYXNzIjtzOjA6IiI7czo1OiJzdHlsZSI7czowOiIiO3M6NjoicGFyYW1zIjtzOjA6IiI7czoxNjoiOmRhdGEtbG9hZC1zdGF0ZSI7czowOiIiO3M6MTI6ImNvbnRhaW5lcl9pZCI7czoxOiIwIjt9fXM6MTQ6ImFjdGlvbnNfY29uZmlnIjthOjQ6e2k6MDthOjk6e3M6NDoicGFnZSI7czoxOiIxIjtzOjEyOiJzdWJtaXRfZXZlbnQiO3M6Njoic3VibWl0IjtzOjExOiJmb3JtX21ldGhvZCI7czo0OiJmaWxlIjtzOjEwOiJhY3Rpb25fdXJsIjtzOjA6IiI7czoxMDoiZm9ybV9jbGFzcyI7czoxMDoiY2hyb25vZm9ybSI7czoxNToiZm9ybV90YWdfYXR0YWNoIjtzOjA6IiI7czoyNDoicmVxdWlyZWRfbGFiZWxzX2lkZW50aWZ5IjtzOjE6IjEiO3M6MTI6InJlbGF0aXZlX3VybCI7czoxOiIxIjtzOjExOiJhamF4X3N1Ym1pdCI7czoxOiIwIjt9aToyO2E6MTp7czo1OiJldmVudCI7czo0OiJsb2FkIjt9aToxO2E6MTE6e3M6NDoibmFtZSI7czo0OiJuYW1lIjtzOjg6InVzZXJuYW1lIjtzOjg6InVzZXJuYW1lIjtzOjU6ImVtYWlsIjtzOjU6ImVtYWlsIjtzOjg6InBhc3N3b3JkIjtzOjg6InBhc3N3b3JkIjtzOjk6InBhc3N3b3JkMiI7czo5OiJ2cGFzc3dvcmQiO3M6MTI6Im5ld191c2VydHlwZSI7YToxOntpOjA7czoxOiIyIjt9czoxNDoidXNlcmFjdGl2YXRpb24iO3M6MToiMSI7czoxNToicmFuZG9tX3Bhc3N3b3JkIjtzOjE6IjAiO3M6MTA6ImF1dG9fbG9naW4iO3M6MToiMCI7czoxOToic2VuZF9qb29fYWN0aXZhdGlvbiI7czoxOiIxIjtzOjE3OiJlbmFibGVfY2Jfc3VwcG9ydCI7czoxOiIwIjt9aTozO2E6MTp7czo3OiJtZXNzYWdlIjtzOjgzOiJUaGFuayB5b3UhIHlvdXIgYWNjb3VudCBoYXMgYmVlbiBjcmVhdGVkIGFuZCBhbiBlbWFpbCBoYXMgYmVlbiBzZW50IGZvciBhY3RpdmF0aW9uISI7fX1zOjM6IkROQSI7YToyOntzOjQ6ImxvYWQiO2E6MTp7czo2OiJodG1sXzAiO3M6MDoiIjt9czo2OiJzdWJtaXQiO2E6Mjp7czoyMToiam9vbWxhX3JlZ2lzdHJhdGlvbl8xIjthOjI6e3M6Nzoic3VjY2VzcyI7czowOiIiO3M6NDoiZmFpbCI7YToxOntzOjEyOiJldmVudF9sb29wXzIiO3M6MDoiIjt9fXM6MTY6InRoYW5rc19tZXNzYWdlXzMiO3M6MDoiIjt9fX0=', 1, '', 1, '<div class="form-group gcore-form-row" id="form-row-53"><label for="name" class="control-label gcore-label-left">Name</label>\n<div class="gcore-input gcore-display-table" id="fin-name"><input name="name" id="name" value="" placeholder="" maxlength="" size="" class="validate[&#039;required&#039;] form-control A" title="" style="" data-inputmask="" data-load-state="" data-tooltip="" type="text" /></div></div><div class="form-group gcore-form-row" id="form-row-55"><label for="username" class="control-label gcore-label-left">Username</label>\n<div class="gcore-input gcore-display-table" id="fin-username"><input name="username" id="username" value="" placeholder="" maxlength="" size="" class="validate[&#039;required&#039;] form-control A" title="" style="" data-inputmask="" data-load-state="" data-tooltip="" type="text" /></div></div><div class="form-group gcore-form-row" id="form-row-56"><label for="email" class="control-label gcore-label-left">Email</label>\n<div class="gcore-input gcore-display-table" id="fin-email"><input name="email" id="email" value="" placeholder="" maxlength="" size="" class="validate[&#039;required&#039;,&#039;email&#039;] form-control A" title="" style="" data-inputmask="" data-load-state="" data-tooltip="" type="text" /></div></div><div class="form-group gcore-form-row" id="form-row-58"><label for="password" class="control-label gcore-label-left">Password</label>\n<div class="gcore-input gcore-display-table" id="fin-password"><input name="password" id="password" value="" placeholder="" maxlength="" size="" class="validate[&#039;required&#039;] form-control A" title="" style="" data-load-state="" data-tooltip="" type="password" /></div></div><div class="form-group gcore-form-row" id="form-row-60"><label for="vpassword" class="control-label gcore-label-left">Confirm password</label>\n<div class="gcore-input gcore-display-table" id="fin-vpassword"><input name="vpassword" id="vpassword" value="" placeholder="" maxlength="" size="" class="validate[&#039;required&#039;,&#039;confirm:password&#039;] form-control A" title="" style="" data-load-state="" data-tooltip="" type="password" /></div></div><div class="form-group gcore-form-row" id="form-row-61"><div class="gcore-input gcore-display-table" id="fin-button6"><input name="button6" id="button6" type="submit" value="Submit" class="form-control A" style="" data-load-state="" /></div></div>'),
(9, 'demo-fields-events', '{"description":"Basic form with conditional fields, disable\\/enable fields based on user''s choices.","setup":"0","theme":"bootstrap3","tight_layout":"0"}', 'YTozOntzOjY6ImZpZWxkcyI7YTo0OntpOjM7YToxODp7czo0OiJuYW1lIjtzOjY6InJhZGlvMyI7czoyOiJpZCI7czo2OiJyYWRpbzMiO3M6Nzoib3B0aW9ucyI7czozNzoid29yaz13b3JrDQp0cmF2ZWw9dHJhdmVsDQpvdGhlcj1vdGhlciI7czo1OiJ2YWx1ZSI7czowOiIiO3M6NToibGFiZWwiO2E6Mjp7czo0OiJ0ZXh0IjtzOjU6IldoeSA/IjtzOjg6InBvc2l0aW9uIjtzOjQ6ImxlZnQiO31zOjg6InN1YmxhYmVsIjtzOjIxOiJQbGVhc2Ugc2VsZWN0ICJvdGhlciIiO3M6MTA6Imhvcml6b250YWwiO3M6MToiMCI7czo1OiJjbGFzcyI7czowOiIiO3M6NToidGl0bGUiO3M6MDoiIjtzOjU6InN0eWxlIjtzOjA6IiI7czo2OiJwYXJhbXMiO3M6MDoiIjtzOjE2OiI6ZGF0YS1sb2FkLXN0YXRlIjtzOjA6IiI7czoxMzoiOmRhdGEtdG9vbHRpcCI7czowOiIiO3M6NDoidHlwZSI7czo1OiJyYWRpbyI7czoxMjoiY29udGFpbmVyX2lkIjtzOjE6IjAiO3M6MTA6InZhbGlkYXRpb24iO2E6MTp7czo3OiJncm91cDozIjtzOjA6IiI7fXM6MTI6ImR5bmFtaWNfZGF0YSI7YTo0OntzOjc6ImVuYWJsZWQiO3M6MDoiIjtzOjk6ImRhdGFfcGF0aCI7czowOiIiO3M6OToidmFsdWVfa2V5IjtzOjA6IiI7czo4OiJ0ZXh0X2tleSI7czowOiIiO31zOjY6ImV2ZW50cyI7YToyOntpOjA7YTo0OntzOjg6Im9wZXJhdG9yIjtzOjE6Ij0iO3M6NToic3RhdGUiO3M6NToib3RoZXIiO3M6NjoiYWN0aW9uIjtzOjExOiJzaG93X3BhcmVudCI7czo2OiJ0YXJnZXQiO3M6NToidGV4dDQiO31pOjE7YTo0OntzOjg6Im9wZXJhdG9yIjtzOjI6IiE9IjtzOjU6InN0YXRlIjtzOjU6Im90aGVyIjtzOjY6ImFjdGlvbiI7czoxMToiaGlkZV9wYXJlbnQiO3M6NjoidGFyZ2V0IjtzOjU6InRleHQ0Ijt9fX1pOjQ7YToxODp7czo0OiJuYW1lIjtzOjU6InRleHQ0IjtzOjI6ImlkIjtzOjU6InRleHQ0IjtzOjU6InZhbHVlIjtzOjA6IiI7czo1OiJsYWJlbCI7YToyOntzOjQ6InRleHQiO3M6MTA6Ik90aGVyIGluZm8iO3M6ODoicG9zaXRpb24iO3M6NDoibGVmdCI7fXM6ODoic3VibGFiZWwiO3M6MDoiIjtzOjExOiJwbGFjZWhvbGRlciI7czowOiIiO3M6OToibWF4bGVuZ3RoIjtzOjA6IiI7czo0OiJzaXplIjtzOjA6IiI7czo1OiJjbGFzcyI7czowOiIiO3M6NToidGl0bGUiO3M6MDoiIjtzOjU6InN0eWxlIjtzOjA6IiI7czoxNToiOmRhdGEtaW5wdXRtYXNrIjtzOjA6IiI7czo2OiJwYXJhbXMiO3M6MDoiIjtzOjE2OiI6ZGF0YS1sb2FkLXN0YXRlIjtzOjEzOiJoaWRkZW5fcGFyZW50IjtzOjEzOiI6ZGF0YS10b29sdGlwIjtzOjA6IiI7czo0OiJ0eXBlIjtzOjQ6InRleHQiO3M6MTI6ImNvbnRhaW5lcl9pZCI7czoxOiIwIjtzOjEwOiJ2YWxpZGF0aW9uIjthOjEyOntzOjg6InJlcXVpcmVkIjtzOjA6IiI7czo1OiJhbHBoYSI7czowOiIiO3M6ODoiYWxwaGFudW0iO3M6MDoiIjtzOjU6ImRpZ2l0IjtzOjA6IiI7czo3OiJub2RpZ2l0IjtzOjA6IiI7czo2OiJudW1iZXIiO3M6MDoiIjtzOjU6ImVtYWlsIjtzOjA6IiI7czo1OiJwaG9uZSI7czowOiIiO3M6MTE6InBob25lX2ludGVyIjtzOjA6IiI7czozOiJ1cmwiO3M6MDoiIjtzOjc6ImNvbmZpcm0iO3M6MDoiIjtzOjY6ImN1c3RvbSI7czowOiIiO319aToxO2E6MTc6e3M6NDoibmFtZSI7czo5OiJjaGVja2JveDEiO3M6MjoiaWQiO3M6OToiY2hlY2tib3gxIjtzOjU6InZhbHVlIjtzOjE6IjEiO3M6NToibGFiZWwiO2E6Mjp7czo0OiJ0ZXh0IjtzOjE6IiAiO3M6ODoicG9zaXRpb24iO3M6NDoibGVmdCI7fXM6ODoic3VibGFiZWwiO3M6MDoiIjtzOjE1OiJzZWNvbmRhcnlfbGFiZWwiO3M6MzM6IkkgYWNjZXB0IHlvdXIgdGVybXMgJiBjb25kaXRpb25zISI7czo3OiJjaGVja2VkIjtzOjE6IjAiO3M6NToiY2xhc3MiO3M6MDoiIjtzOjU6InRpdGxlIjtzOjA6IiI7czo1OiJzdHlsZSI7czowOiIiO3M6NjoicGFyYW1zIjtzOjA6IiI7czoxNjoiOmRhdGEtbG9hZC1zdGF0ZSI7czowOiIiO3M6MTM6IjpkYXRhLXRvb2x0aXAiO3M6MDoiIjtzOjQ6InR5cGUiO3M6ODoiY2hlY2tib3giO3M6MTI6ImNvbnRhaW5lcl9pZCI7czoxOiIwIjtzOjEwOiJ2YWxpZGF0aW9uIjthOjE6e3M6ODoicmVxdWlyZWQiO3M6MDoiIjt9czo2OiJldmVudHMiO2E6Mjp7aTowO2E6Mzp7czo1OiJzdGF0ZSI7czo1OiJjaGVjayI7czo2OiJhY3Rpb24iO3M6NjoiZW5hYmxlIjtzOjY6InRhcmdldCI7czo3OiJidXR0b24yIjt9aToxO2E6Mzp7czo1OiJzdGF0ZSI7czo3OiJ1bmNoZWNrIjtzOjY6ImFjdGlvbiI7czo3OiJkaXNhYmxlIjtzOjY6InRhcmdldCI7czo3OiJidXR0b24yIjt9fX1pOjI7YToxMDp7czoxMToicmVuZGVyX3R5cGUiO3M6Njoic3VibWl0IjtzOjQ6Im5hbWUiO3M6NzoiYnV0dG9uMiI7czoyOiJpZCI7czo3OiJidXR0b24yIjtzOjQ6InR5cGUiO3M6Njoic3VibWl0IjtzOjU6InZhbHVlIjtzOjY6IlN1Ym1pdCI7czo1OiJjbGFzcyI7czowOiIiO3M6NToic3R5bGUiO3M6MDoiIjtzOjY6InBhcmFtcyI7czowOiIiO3M6MTY6IjpkYXRhLWxvYWQtc3RhdGUiO3M6ODoiZGlzYWJsZWQiO3M6MTI6ImNvbnRhaW5lcl9pZCI7czoxOiIwIjt9fXM6MTQ6ImFjdGlvbnNfY29uZmlnIjthOjI6e2k6MTthOjk6e3M6NDoicGFnZSI7czoxOiIxIjtzOjEyOiJzdWJtaXRfZXZlbnQiO3M6Njoic3VibWl0IjtzOjExOiJmb3JtX21ldGhvZCI7czo0OiJmaWxlIjtzOjEwOiJhY3Rpb25fdXJsIjtzOjA6IiI7czoxMDoiZm9ybV9jbGFzcyI7czoxMDoiY2hyb25vZm9ybSI7czoxNToiZm9ybV90YWdfYXR0YWNoIjtzOjA6IiI7czoyNDoicmVxdWlyZWRfbGFiZWxzX2lkZW50aWZ5IjtzOjE6IjEiO3M6MTI6InJlbGF0aXZlX3VybCI7czoxOiIxIjtzOjExOiJhamF4X3N1Ym1pdCI7czoxOiIwIjt9aTowO2E6MTp7czo3OiJlbmFibGVkIjtzOjE6IjEiO319czozOiJETkEiO2E6Mjp7czo0OiJsb2FkIjthOjE6e3M6NjoiaHRtbF8xIjtzOjA6IiI7fXM6Njoic3VibWl0IjthOjE6e3M6MTA6ImRlYnVnZ2VyXzAiO3M6MDoiIjt9fX0=', 1, '', 1, '<div class="form-group gcore-form-row" id="form-row-69"><label for="radio3" class="control-label gcore-label-left gcore-label-checkbox">Why ?</label>\n<div class="gcore-input gcore-display-table" id="fin-radio3"><div class="gcore-single-column" id="fclmn68"><div class="gcore-radio-item" id="fitem63"><input name="radio3" id="radio362" value="work" class="A" title="" style="" data-load-state="" data-tooltip="" type="radio" />\n<label class="control-label gcore-label-checkbox" for="radio362">work</label></div>\n<div class="gcore-radio-item" id="fitem65"><input name="radio3" id="radio364" value="travel" class="A" title="" style="" data-load-state="" data-tooltip="" type="radio" />\n<label class="control-label gcore-label-checkbox" for="radio364">travel</label></div>\n<div class="gcore-radio-item" id="fitem67"><input name="radio3" id="radio366" value="other" class="A" title="" style="" data-load-state="" data-tooltip="" type="radio" />\n<label class="control-label gcore-label-checkbox" for="radio366">other</label></div></div><span class="help-block">Please select "other"</span></div></div><div class="form-group gcore-form-row" id="form-row-71"><label for="text4" class="control-label gcore-label-left">Other info</label>\n<div class="gcore-input gcore-display-table" id="fin-text4"><input name="text4" id="text4" value="" placeholder="" maxlength="" size="" class="form-control A" title="" style="" data-inputmask="" data-load-state="hidden_parent" data-tooltip="" type="text" /></div></div><div class="form-group gcore-form-row" id="form-row-73"><label for="checkbox1" class="control-label gcore-label-left gcore-label-checkbox"> </label>\n<div class="gcore-input gcore-display-table" id="fin-checkbox1"><div class="gcore-checkbox-item" id="fitem72"><input name="checkbox1" id="checkbox1" value="1" class="A" title="" style="" data-load-state="" data-tooltip="" type="checkbox" />\n<label class="control-label gcore-label-checkbox" for="checkbox1">I accept your terms & conditions!</label></div></div></div><div class="form-group gcore-form-row" id="form-row-74"><div class="gcore-input gcore-display-table" id="fin-button2"><input name="button2" id="button2" type="submit" value="Submit" class="form-control A" style="" data-load-state="disabled" /></div></div>'),
(10, 'demo-multi-language', '{"description":"A basic form with multi language support, English\\/Francais\\/Deutsch\\/Italiano\\/Espanol\\/Nederlands\\/Portugese","setup":"0","theme":"bootstrap3","tight_layout":"0"}', 'YTo0OntzOjY6ImZpZWxkcyI7YToyOntpOjE7YToxODp7czo0OiJuYW1lIjtzOjc6Im1lc3NhZ2UiO3M6MjoiaWQiO3M6NzoibWVzc2FnZSI7czo1OiJ2YWx1ZSI7czowOiIiO3M6NToibGFiZWwiO2E6Mjp7czo0OiJ0ZXh0IjtzOjk6Il9NRVNTQUdFXyI7czo4OiJwb3NpdGlvbiI7czo0OiJsZWZ0Ijt9czo4OiJzdWJsYWJlbCI7czowOiIiO3M6MTE6InBsYWNlaG9sZGVyIjtzOjA6IiI7czo0OiJyb3dzIjtzOjE6IjMiO3M6NDoiY29scyI7czoyOiI0MCI7czo1OiJjbGFzcyI7czowOiIiO3M6NToidGl0bGUiO3M6MjA6Il9NRVNTQUdFX1ZBTElEVEFJT05fIjtzOjU6InN0eWxlIjtzOjA6IiI7czoxMzoiOmRhdGEtd3lzaXd5ZyI7czoxOiIwIjtzOjY6InBhcmFtcyI7czowOiIiO3M6MTY6IjpkYXRhLWxvYWQtc3RhdGUiO3M6MDoiIjtzOjEzOiI6ZGF0YS10b29sdGlwIjtzOjA6IiI7czo0OiJ0eXBlIjtzOjg6InRleHRhcmVhIjtzOjEyOiJjb250YWluZXJfaWQiO3M6MToiMCI7czoxMDoidmFsaWRhdGlvbiI7YTo4OntzOjg6InJlcXVpcmVkIjtzOjE6IjEiO3M6NToiYWxwaGEiO3M6MDoiIjtzOjg6ImFscGhhbnVtIjtzOjA6IiI7czo1OiJkaWdpdCI7czowOiIiO3M6Nzoibm9kaWdpdCI7czowOiIiO3M6NjoibnVtYmVyIjtzOjA6IiI7czo3OiJjb25maXJtIjtzOjA6IiI7czo2OiJjdXN0b20iO3M6MDoiIjt9fWk6MjthOjEwOntzOjExOiJyZW5kZXJfdHlwZSI7czo2OiJzdWJtaXQiO3M6NDoibmFtZSI7czo3OiJidXR0b24yIjtzOjI6ImlkIjtzOjc6ImJ1dHRvbjIiO3M6NDoidHlwZSI7czo2OiJzdWJtaXQiO3M6NToidmFsdWUiO3M6NjoiX1NFTkRfIjtzOjU6ImNsYXNzIjtzOjA6IiI7czo1OiJzdHlsZSI7czowOiIiO3M6NjoicGFyYW1zIjtzOjA6IiI7czoxNjoiOmRhdGEtbG9hZC1zdGF0ZSI7czowOiIiO3M6MTI6ImNvbnRhaW5lcl9pZCI7czoxOiIwIjt9fXM6MTQ6ImFjdGlvbnNfY29uZmlnIjthOjI6e2k6MDthOjk6e3M6NDoicGFnZSI7czoxOiIxIjtzOjEyOiJzdWJtaXRfZXZlbnQiO3M6Njoic3VibWl0IjtzOjExOiJmb3JtX21ldGhvZCI7czo0OiJmaWxlIjtzOjEwOiJhY3Rpb25fdXJsIjtzOjA6IiI7czoxMDoiZm9ybV9jbGFzcyI7czoxMDoiY2hyb25vZm9ybSI7czoxNToiZm9ybV90YWdfYXR0YWNoIjtzOjA6IiI7czoyNDoicmVxdWlyZWRfbGFiZWxzX2lkZW50aWZ5IjtzOjE6IjEiO3M6MTI6InJlbGF0aXZlX3VybCI7czoxOiIxIjtzOjExOiJhamF4X3N1Ym1pdCI7czoxOiIwIjt9aToxO2E6MTp7czo3OiJlbmFibGVkIjtzOjE6IjEiO319czozOiJETkEiO2E6Mjp7czo0OiJsb2FkIjthOjE6e3M6NjoiaHRtbF8wIjtzOjA6IiI7fXM6Njoic3VibWl0IjthOjE6e3M6MTA6ImRlYnVnZ2VyXzEiO3M6MDoiIjt9fXM6NzoibG9jYWxlcyI7YTo3OntzOjc6IkVuZ2xpc2giO2E6Mzp7czo4OiJsYW5nX3RhZyI7czo1OiJlbl9nYiI7czo2OiJzdHJpY3QiO3M6MToiMCI7czo3OiJzdHJpbmdzIjtzOjc4OiJfTUVTU0FHRV9WQUxJRFRBSU9OXz1QbGVhc2Ugd3JpdGUgeW91ciBtZXNzYWdlDQpfTUVTU0FHRV89TWVzc2FnZQ0KX1NFTkRfPVNlbmQiO31zOjg6IkZyYW5jYWlzIjthOjM6e3M6ODoibGFuZ190YWciO3M6NToiZnJfZnIiO3M6Njoic3RyaWN0IjtzOjE6IjAiO3M6Nzoic3RyaW5ncyI7czo5NToiX01FU1NBR0VfVkFMSURUQUlPTl89UydpbCB2b3VzIHBsYcOudCDDqWNyaXZleiB2b3RyZSBtZXNzYWdlDQpfTUVTU0FHRV89bWVzc2FnZQ0KX1NFTkRfPWVudm95ZXIiO31zOjc6IkRldXRzY2giO2E6Mzp7czo4OiJsYW5nX3RhZyI7czo1OiJkZV9kZSI7czo2OiJzdHJpY3QiO3M6MToiMCI7czo3OiJzdHJpbmdzIjtzOjkxOiJfTUVTU0FHRV9WQUxJRFRBSU9OXz1CaXR0ZSBzY2hyZWliZW4gU2llIElocmUgTmFjaHJpY2h0DQpfTUVTU0FHRV89TmFjaHJpY2h0DQpfU0VORF89c2VuZGVuIjt9czo4OiJJdGFsaWFubyI7YTozOntzOjg6ImxhbmdfdGFnIjtzOjU6Iml0X2l0IjtzOjY6InN0cmljdCI7czoxOiIwIjtzOjc6InN0cmluZ3MiO3M6ODE6Il9NRVNTQUdFX1ZBTElEVEFJT05fPVNjcml2aSBpbCB0dW8gbWVzc2FnZ2lvDQpfTUVTU0FHRV89bWVzc2FnZ2lvDQpfU0VORF89aW52aWFyZSI7fXM6NzoiRXNwYW5vbCI7YTozOntzOjg6ImxhbmdfdGFnIjtzOjU6ImVzX2VzIjtzOjY6InN0cmljdCI7czoxOiIwIjtzOjc6InN0cmluZ3MiO3M6ODM6Il9NRVNTQUdFX1ZBTElEVEFJT05fPVBvciBmYXZvciBlc2NyaWJhIHN1IG1lbnNhamUNCl9NRVNTQUdFXz1tZW5zYWplDQpfU0VORF89ZW52aWFyIjt9czoxMDoiTmVkZXJsYW5kcyI7YTozOntzOjg6ImxhbmdfdGFnIjtzOjU6Im5sX25sIjtzOjY6InN0cmljdCI7czoxOiIwIjtzOjc6InN0cmluZ3MiO3M6NzM6Il9NRVNTQUdFX1ZBTElEVEFJT05fPVNjaHJpamYgdXcgYmVyaWNodA0KX01FU1NBR0VfPWJlcmljaHQNCl9TRU5EXz1zdHVyZW4iO31zOjk6IlBvcnR1Z2VzZSI7YTozOntzOjg6ImxhbmdfdGFnIjtzOjU6InB0X3B0IjtzOjY6InN0cmljdCI7czoxOiIwIjtzOjc6InN0cmluZ3MiO3M6ODk6Il9NRVNTQUdFX1ZBTElEVEFJT05fPVBvciBmYXZvciwgZXNjcmV2YSBhIHN1YSBtZW5zYWdlbQ0KX01FU1NBR0VfPW1lbnNhZ2VtDQpfU0VORF89ZW52aWFyIjt9fX0=', 1, '', 1, '<div class="form-group gcore-form-row" id="form-row-75"><label for="message" class="control-label gcore-label-left">_MESSAGE_</label>\n<div class="gcore-input gcore-display-table" id="fin-message"><textarea name="message" id="message" placeholder="" rows="3" cols="40" class="validate[&#039;required&#039;] form-control A" title="_MESSAGE_VALIDTAION_" style="" data-wysiwyg="0" data-load-state="" data-tooltip=""></textarea></div></div><div class="form-group gcore-form-row" id="form-row-76"><div class="gcore-input gcore-display-table" id="fin-button2"><input name="button2" id="button2" type="submit" value="_SEND_" class="form-control A" style="" data-load-state="" /></div></div>'),
(11, 'demo-dynamic-dropdown', '{"description":"Basic form to demonstrate how you can load the dropdown options dynamically","setup":"0","theme":"bootstrap3","tight_layout":"0"}', 'YTozOntzOjY6ImZpZWxkcyI7YTozOntpOjE7YToyMDp7czo0OiJuYW1lIjtzOjY6ImxlYWd1ZSI7czoyOiJpZCI7czo2OiJsZWFndWUiO3M6Nzoib3B0aW9ucyI7czo2ODoiRU5HPUVuZ2xpc2ggUHJlbWllciBMZWFndWUNCkdFUj1CdW5kZXNsaWdhDQpJVEE9U2VyaWEgMQ0KRVNQPUxhIExpZ2EiO3M6NToiZW1wdHkiO3M6MzQ6IlNlbGV0YyB5b3VyIHRlYW0ncyBsZWFndWUvZGV2aXNpb24iO3M6NjoidmFsdWVzIjtzOjA6IiI7czo1OiJsYWJlbCI7YToyOntzOjQ6InRleHQiO3M6MTQ6IkRyb3Bkb3duIExhYmVsIjtzOjg6InBvc2l0aW9uIjtzOjQ6ImxlZnQiO31zOjg6InN1YmxhYmVsIjtzOjA6IiI7czo4OiJtdWx0aXBsZSI7czoxOiIwIjtzOjQ6InNpemUiO3M6MDoiIjtzOjU6ImNsYXNzIjtzOjA6IiI7czo1OiJ0aXRsZSI7czowOiIiO3M6NToic3R5bGUiO3M6MDoiIjtzOjY6InBhcmFtcyI7czowOiIiO3M6MTY6IjpkYXRhLWxvYWQtc3RhdGUiO3M6MDoiIjtzOjEzOiI6ZGF0YS10b29sdGlwIjtzOjA6IiI7czo0OiJ0eXBlIjtzOjg6ImRyb3Bkb3duIjtzOjEyOiJjb250YWluZXJfaWQiO3M6MToiMCI7czoxMDoidmFsaWRhdGlvbiI7YTozOntzOjg6InJlcXVpcmVkIjtzOjE6IjEiO3M6NzoiY29uZmlybSI7czowOiIiO3M6NjoiY3VzdG9tIjtzOjA6IiI7fXM6MTI6ImR5bmFtaWNfZGF0YSI7YTo0OntzOjc6ImVuYWJsZWQiO3M6MDoiIjtzOjk6ImRhdGFfcGF0aCI7czowOiIiO3M6OToidmFsdWVfa2V5IjtzOjA6IiI7czo4OiJ0ZXh0X2tleSI7czowOiIiO31zOjY6ImV2ZW50cyI7YToxOntpOjA7YTo1OntzOjg6Im9wZXJhdG9yIjtzOjI6IiE9IjtzOjU6InN0YXRlIjtzOjA6IiI7czo2OiJhY3Rpb24iO3M6MTk6InNldF9keW5hbWljX29wdGlvbnMiO3M6NjoidGFyZ2V0IjtzOjQ6ImNsdWIiO3M6Nzoib3B0aW9ucyI7czoxMDoibG9hZF9jbHVicyI7fX19aToyO2E6MjA6e3M6NDoibmFtZSI7czo0OiJjbHViIjtzOjI6ImlkIjtzOjQ6ImNsdWIiO3M6Nzoib3B0aW9ucyI7czowOiIiO3M6NToiZW1wdHkiO3M6MTY6IlNlbGVjdCB5b3VyIGNsdWIiO3M6NjoidmFsdWVzIjtzOjA6IiI7czo1OiJsYWJlbCI7YToyOntzOjQ6InRleHQiO3M6MTQ6IkRyb3Bkb3duIExhYmVsIjtzOjg6InBvc2l0aW9uIjtzOjQ6ImxlZnQiO31zOjg6InN1YmxhYmVsIjtzOjA6IiI7czo4OiJtdWx0aXBsZSI7czoxOiIwIjtzOjQ6InNpemUiO3M6MDoiIjtzOjU6ImNsYXNzIjtzOjA6IiI7czo1OiJ0aXRsZSI7czowOiIiO3M6NToic3R5bGUiO3M6MDoiIjtzOjY6InBhcmFtcyI7czowOiIiO3M6MTY6IjpkYXRhLWxvYWQtc3RhdGUiO3M6MDoiIjtzOjEzOiI6ZGF0YS10b29sdGlwIjtzOjA6IiI7czo0OiJ0eXBlIjtzOjg6ImRyb3Bkb3duIjtzOjEyOiJjb250YWluZXJfaWQiO3M6MToiMCI7czoxMDoidmFsaWRhdGlvbiI7YTozOntzOjg6InJlcXVpcmVkIjtzOjA6IiI7czo3OiJjb25maXJtIjtzOjA6IiI7czo2OiJjdXN0b20iO3M6MDoiIjt9czoxMjoiZHluYW1pY19kYXRhIjthOjQ6e3M6NzoiZW5hYmxlZCI7czowOiIiO3M6OToiZGF0YV9wYXRoIjtzOjA6IiI7czo5OiJ2YWx1ZV9rZXkiO3M6MDoiIjtzOjg6InRleHRfa2V5IjtzOjA6IiI7fXM6NjoiZXZlbnRzIjthOjE6e2k6MDthOjU6e3M6ODoib3BlcmF0b3IiO3M6MToiPSI7czo1OiJzdGF0ZSI7czowOiIiO3M6NjoiYWN0aW9uIjtzOjA6IiI7czo2OiJ0YXJnZXQiO3M6MDoiIjtzOjc6Im9wdGlvbnMiO3M6MDoiIjt9fX1pOjM7YToxMDp7czoxMToicmVuZGVyX3R5cGUiO3M6Njoic3VibWl0IjtzOjQ6Im5hbWUiO3M6NzoiYnV0dG9uMyI7czoyOiJpZCI7czo3OiJidXR0b24zIjtzOjQ6InR5cGUiO3M6Njoic3VibWl0IjtzOjU6InZhbHVlIjtzOjY6IlN1Ym1pdCI7czo1OiJjbGFzcyI7czowOiIiO3M6NToic3R5bGUiO3M6MDoiIjtzOjY6InBhcmFtcyI7czowOiIiO3M6MTY6IjpkYXRhLWxvYWQtc3RhdGUiO3M6MDoiIjtzOjEyOiJjb250YWluZXJfaWQiO3M6MToiMCI7fX1zOjE0OiJhY3Rpb25zX2NvbmZpZyI7YTozOntpOjA7YTo5OntzOjQ6InBhZ2UiO3M6MToiMSI7czoxMjoic3VibWl0X2V2ZW50IjtzOjY6InN1Ym1pdCI7czoxMToiZm9ybV9tZXRob2QiO3M6NDoiZmlsZSI7czoxMDoiYWN0aW9uX3VybCI7czowOiIiO3M6MTA6ImZvcm1fY2xhc3MiO3M6MTA6ImNocm9ub2Zvcm0iO3M6MTU6ImZvcm1fdGFnX2F0dGFjaCI7czowOiIiO3M6MjQ6InJlcXVpcmVkX2xhYmVsc19pZGVudGlmeSI7czoxOiIxIjtzOjEyOiJyZWxhdGl2ZV91cmwiO3M6MToiMSI7czoxMToiYWpheF9zdWJtaXQiO3M6MToiMCI7fWk6MjthOjE6e3M6NzoiZW5hYmxlZCI7czoxOiIxIjt9aToxO2E6MTp7czo3OiJjb250ZW50IjtzOjU0MjoiPD9waHANCiRjbHVicyA9IGFycmF5KA0KCSJFTkciID0+IGFycmF5KCJBcnNlbmFsIiA9PiAiQXJzZW5hbCIsICJDaGVsc2VhIiA9PiAiQ2hlbHNlYSIsICJMaXZlcnBvb2wiID0+ICJMaXZlcnBvb2wiLCAiTWFuY2hlc3RlciIgPT4gIk1hbmNoZXN0ZXIiKSwNCgkiR0VSIiA9PiBhcnJheSgiQmF5ZXJuIE11bmNoZW4iID0+ICJCYXllcm4gTXVuY2hlbiIsICJEb3J0dW11bmQiID0+ICJEb3J0dW11bmQiLCAiU2hhbGNrZSIgPT4gIlNoYWxja2UiKSwNCgkiSVRBIiA9PiBhcnJheSgiSnV2ZW50dXMiID0+ICJKdXZlbnR1cyIsICJBQyBNaWxhbiIgPT4gIkFDIE1pbGFuIiwgIkludGVyIiA9PiAiSW50ZXIiLCAiUm9tYSIgPT4gIlJvbWEiLCAiTmFwb2xpIiA9PiAiTmFwb2xpIiksDQoJIkVTUCIgPT4gYXJyYXkoIlJlYWwgTWFkcmlkIiA9PiAiUmVhbCBNYWRyaWQiLCAiQmFyY2Vsb25hIiA9PiAiQmFyY2Vsb25hIiwgIlZhbGVuY2lhIiA9PiAiVmFsZW5jaWEiKSwNCik7DQplY2hvIGpzb25fZW5jb2RlKCRjbHVic1skZm9ybS0+ZGF0YVsibGVhZ3VlIl1dKTsiO319czozOiJETkEiO2E6Mzp7czo0OiJsb2FkIjthOjE6e3M6NjoiaHRtbF8wIjtzOjA6IiI7fXM6Njoic3VibWl0IjthOjE6e3M6MTA6ImRlYnVnZ2VyXzIiO3M6MDoiIjt9czoxMDoibG9hZF9jbHVicyI7YToxOntzOjEzOiJjdXN0b21fY29kZV8xIjtzOjA6IiI7fX19', 1, '', 1, '<div class="form-group gcore-form-row" id="form-row-77"><label for="league" class="control-label gcore-label-left">Dropdown Label</label>\n<div class="gcore-input gcore-display-table" id="fin-league"><select name="league" id="league" size="" class="validate[&#039;required&#039;] form-control A" title="" style="" data-load-state="" data-tooltip="">\n<option value="">Seletc your team''s league/devision</option>\n<option value="ENG">English Premier League</option>\n<option value="GER">Bundesliga</option>\n<option value="ITA">Seria 1</option>\n<option value="ESP">La Liga</option>\n</select></div></div><div class="form-group gcore-form-row" id="form-row-78"><label for="club" class="control-label gcore-label-left">Dropdown Label</label>\n<div class="gcore-input gcore-display-table" id="fin-club"><select name="club" id="club" size="" class="form-control A" title="" style="" data-load-state="" data-tooltip="">\n</select></div></div><div class="form-group gcore-form-row" id="form-row-79"><div class="gcore-input gcore-display-table" id="fin-button3"><input name="button3" id="button3" type="submit" value="Submit" class="form-control A" style="" data-load-state="" /></div></div>');

-- --------------------------------------------------------

--
-- Estrutura da tabela `iwk5c_chronoengine_chronoforms_datatable_ouvidoria`
--

CREATE TABLE IF NOT EXISTS `iwk5c_chronoengine_chronoforms_datatable_ouvidoria` (
`id` int(11) NOT NULL,
  `uniq_id` varchar(50) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified` datetime DEFAULT NULL,
  `Nome` varchar(255) NOT NULL,
  `CPF/CNPJ` varchar(255) NOT NULL,
  `CEP` varchar(255) NOT NULL,
  `Número` varchar(255) NOT NULL,
  `Endereço:` varchar(255) NOT NULL,
  `Complemento:` varchar(255) NOT NULL,
  `Estado` varchar(255) NOT NULL,
  `Cidade:` varchar(255) NOT NULL,
  `Telefone:` varchar(255) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `Mensagem` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `iwk5c_chronoengine_extensions`
--

CREATE TABLE IF NOT EXISTS `iwk5c_chronoengine_extensions` (
`id` int(11) NOT NULL,
  `addon_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `enabled` tinyint(1) NOT NULL,
  `ordering` int(4) NOT NULL,
  `settings` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `iwk5c_contact_details`
--

CREATE TABLE IF NOT EXISTS `iwk5c_contact_details` (
`id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `con_position` varchar(255) DEFAULT NULL,
  `address` text,
  `suburb` varchar(100) DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `postcode` varchar(100) DEFAULT NULL,
  `telephone` varchar(255) DEFAULT NULL,
  `fax` varchar(255) DEFAULT NULL,
  `misc` mediumtext,
  `image` varchar(255) DEFAULT NULL,
  `email_to` varchar(255) DEFAULT NULL,
  `default_con` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `catid` int(11) NOT NULL DEFAULT '0',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `mobile` varchar(255) NOT NULL DEFAULT '',
  `webpage` varchar(255) NOT NULL DEFAULT '',
  `sortname1` varchar(255) NOT NULL,
  `sortname2` varchar(255) NOT NULL,
  `sortname3` varchar(255) NOT NULL,
  `language` char(7) NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `metadata` text NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Set if article is featured.',
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `hits` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `iwk5c_content`
--

CREATE TABLE IF NOT EXISTS `iwk5c_content` (
`id` int(10) unsigned NOT NULL,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `title` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `introtext` mediumtext NOT NULL,
  `fulltext` mediumtext NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `images` text NOT NULL,
  `urls` text NOT NULL,
  `attribs` varchar(5120) NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `metadata` text NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Set if article is featured.',
  `language` char(7) NOT NULL COMMENT 'The language code for the article.',
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.'
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `iwk5c_content`
--

INSERT INTO `iwk5c_content` (`id`, `asset_id`, `title`, `alias`, `introtext`, `fulltext`, `state`, `catid`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `images`, `urls`, `attribs`, `version`, `ordering`, `metakey`, `metadesc`, `access`, `hits`, `metadata`, `featured`, `language`, `xreference`) VALUES
(1, 55, 'bkablabla', 'bkablabla', '<p>gdyuasgduhasgdai</p>\r\n<p>sdbashdgsaudguas</p>', '', -2, 2, '2014-06-28 19:06:55', 303, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2014-06-28 19:06:55', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 4, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(2, 63, 'Sobre a Companhia de Transporte do Estado da Bahia ', 'sobre-a-companhia-de-transporte-do-estado-da-bahia', '<p>A Companhia de Transportes do Estado da Bahia(CTB) é uma empresa estatal do Estado da Bahia e está subordinada à Secretaria de Desenvolvimento Urbano(SEDUR). O Serviço de transportes de passageiros sobre os trilhos de competência estadual é o foco do objetivo da CTB. Fundada em 1999, a sua sede situa-se no bairro da Calçada na cidade de Salvador e é presidido atualmente por Carlos Martins.</p>', '', -2, 2, '2014-06-29 16:09:33', 303, '', '2014-06-29 19:54:49', 303, 0, '0000-00-00 00:00:00', '2014-06-29 16:09:33', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"0","show_intro":"0","show_category":"0","link_category":"0","show_parent_category":"0","link_parent_category":"0","show_author":"0","link_author":"0","show_create_date":"0","show_modify_date":"0","show_publish_date":"0","show_item_navigation":"0","show_icons":"0","show_print_icon":"0","show_email_icon":"0","show_vote":"0","show_hits":"0","show_noauth":"0","alternative_readmore":"","article_layout":"","show_publishing_options":"0","show_article_options":"0","show_urls_images_backend":"0","show_urls_images_frontend":"0"}', 7, 3, '', '', 1, 10, '{"robots":"","author":"","rights":"","xreference":""}', 1, '*', ''),
(3, 64, 'Nossa História', 'nossa-historia', '<p style="text-align: justify;"><span style="text-align: justify; line-height: 1.5;">O Sistema de Trens Urbanos de Salvador está em operação desde junho de 1860, sendo o quinto mais antigo do Brasil. De 1860 a 1911 foi operado por concessionário inglês, de 1911 a 1935 foi operado por concessionário francês. A partir de 1935 foi operada por empresa pública nacional e encampada pela RFFSA em 1957. Em 1988 passou para gestão e operação da CBTU. </span><span style="line-height: 1.5;">Através da assinatura de um convênio de municipalização firmado em 30 de novembro de 2005, o município sob a gestão do Prefeito João Henrique Carneiro (2004-2012), assume o Sistema de Trens Urbanos da cidade, surgindo então a Companhia de Transportes de Salvador. A CTS então deu início a um processo de revitalização e modernização, proporcionando, dessa maneira, conforto, segurança e bem estar ao usuário. </span><span style="text-align: justify; line-height: 1.5;">No ano de 2013, a CTS saiu do responsabilidade da prefeitura para pertencer ao estado, se tornando a CTB(Companhia de Transportes do Estado da Bahia)</span></p>', '', -2, 2, '2014-06-29 16:10:18', 303, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2014-06-29 16:10:18', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 2, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 1, '*', ''),
(4, 65, 'Missão e Visão', 'missao-e-visao', '<p style="text-align: justify;"><span style="color: #006699;"><strong><span style="font-size: 12pt;">1. Nossa principal missão é:</span></strong></span></p>\r\n<p style="text-align: justify;"><br />Desenvolver ações de planejamento e construção do sitema metroferroviário da cidade de Salvador e regiõoes metropolitana com vistas a prover um transporte público que atenda aos anseios e demandas da população por melhorias na mobilidade urbana, nos aspectos de pontualidade, rapidez, conforto, economia, confiabilidade, segurança e sustentabilidade ambiental. </p>\r\n<div style="text-align: justify;"> </div>\r\n<div style="text-align: justify;"> </div>\r\n<div style="text-align: justify;"> </div>\r\n<p style="text-align: justify;"> </p>\r\n<p style="text-align: justify;"><span style="color: #006699;"><strong><span style="font-size: 12pt;">2. A nossa visão:</span></strong></span></p>\r\n<div style="text-align: justify;"> </div>\r\n<p style="text-align: justify;">A CTB tem como finalidade ser uma das 5 melhores do setor Metroferroviário do Brasil em qualidade de serviços, operação e gestão.</p>\r\n<div style="text-align: justify;"> </div>\r\n<div style="text-align: justify;"> </div>\r\n<div style="text-align: justify;"> </div>\r\n<p style="text-align: justify;"> </p>\r\n<p style="text-align: justify;"><span style="color: #006699;"><strong><span style="font-size: 12pt;">3. Nossos principais valores: </span></strong></span></p>\r\n<ul style="list-style-type: square; text-align: justify;">\r\n<li><span style="line-height: 1.5;">Respeito à diversidade</span></li>\r\n<li><span style="line-height: 1.5;">Uso eficiente dos recursos</span></li>\r\n<li><span style="line-height: 1.5;">Integração com a Comunidade</span></li>\r\n<li><span style="line-height: 1.5;">Ética e transparência</span></li>\r\n</ul>\r\n<p style="text-align: justify;"> </p>\r\n<p style="text-align: justify;"> </p>\r\n<p style="text-align: justify;"> </p>\r\n<p style="text-align: justify;"> </p>\r\n<p style="text-align: justify;"> </p>\r\n<p style="text-align: justify;"> </p>\r\n<p style="text-align: justify;"> </p>\r\n<p style="text-align: justify;"> </p>\r\n<p style="text-align: justify;"> </p>\r\n<p style="text-align: justify;"> </p>\r\n<p style="text-align: justify;"> </p>\r\n<p style="text-align: justify;"> </p>\r\n<p style="text-align: justify;"> </p>\r\n<p style="text-align: justify;"> </p>\r\n<p style="text-align: justify;"> </p>\r\n<p style="text-align: justify;"> </p>\r\n<p style="text-align: justify;"> </p>\r\n<p style="text-align: justify;"> </p>\r\n<p style="text-align: justify;"> </p>\r\n<p style="text-align: justify;"> </p>\r\n<p style="text-align: justify;"> </p>\r\n<p style="text-align: justify;"> </p>\r\n<p> </p>\r\n<p> </p>\r\n<p> </p>\r\n<p> </p>\r\n<p><span style="color: #333333; font-family: Verdana, Geneva, Arial, Helvetica, sans-serif; line-height: normal;"> </span></p>', '', -2, 2, '2014-06-29 16:14:18', 303, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2014-06-29 16:14:18', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 1, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(5, 66, 'Linha do Tempo', 'linha-do-tempo', '<p class="blogcalendar" style="text-align: justify;">A Estação da Calçada é a principal edificação da Estrada de Ferro Bahia and San Francisco Railway, por estar localizada na Capital, e por ser a mais importante estação de quase todas as ferrovias que viriam a ser construídas na Bahia. É um exemplar monumental da arquitetura eclética, toda construída originalmente de ferro desde a sua infraestrutura, como as vigas baldrames, até a superestrutura, tais como pilares, vigamento da superestrutura, escadas e estruturas de cobertura com clarabóias de ferro. A iluminação dos espaços internos é uma característica marcante da arquitetura eclética, fazendo um contraponto com os ambientes sombrios da arquitetura portuguesa tradicional. As paredes de vedação dos espaços, em painéis pré-moldados e as peças sanitárias, gradis, telhas e até os ornatos em ferro forjado ou fundido.</p>\r\n<p class="blogcalendar"> </p>\r\n<p class="blogcalendar"><img style="display: block; margin-left: auto; margin-right: auto;" src="http://homologa.ctb.ba.gov.br/images/stories/calcada_old2.jpg" alt="calcada_old2" width="400" height="303" /></p>\r\n<p class="blogcalendar"> </p>\r\n<p class="blogcalendar" style="text-align: justify;">A cobertura, calhas, cornijas gradis das varandas, mísulas e ornatos reproduzem os símbolos do progresso das ferrovias, como a roda alada, tudo em ferro forjado ou fundido. O assoalho e o forro eram de madeira. O frontão neoclássico do coroamento da fachada é um detalhe construtivo muito utilizado nos edifícios públicos do período eclético. Nesta estação, reflete-se o diálogo entre a arte apresentada no tratamento artístico do corpo principal da edificação, a plasticidade dos ornatos reproduzidos em escala, apresentados em catálogos das fábricas inglesas e a tecnologia apresentada na capacidade da estrutura metálica em vencer o vão avantajado da estação de passageiros. <br /> A tecnologia moderna, traduzida na estrutura metálica da cobertura, permite um vão livre de aproximadamente trinta metros de largura por noventa metros de profundidade, proporcionando um espaço livre necessário ao grande fluxo de passageiros que se esperava. <br /> Essa estação foi a primeira construída com projeto inglês e todas as peças em ferro chegaram à Bahia importadas da Inglaterra para serem montadas no local, como está registrado em documentação oficial da Província da Bahia. O projeto foi elaborado em Londres por Jonh Watson, que foi também o empreiteiro da construção da estrada com supervisão do engenheiro Charles Vignoles, sendo engenheiro-chefe, Hutton Vignoles. <br /> <br /> Depois que a linha, no trecho correspondente à primeira seção, entrou em tráfego a partir de 28 de junho de 1860, cumprindo o prazo pactuado com o Governo e a Companhia da estrada, o engenheiro fiscal do Governo, Firmo José de Melo, exigia uma manutenção responsável da estrada pela companhia inglesa. <br /> <br /> Além da via permanente, as principais construções dessa seção são a Estação da Calçada, o Viaduto de Itapagipe, o túnel de Periperi, por serem importantes obras de engenharia, e a Oficina de Periperi, pelo papel social desempenhado, empregando brasileiros livres naquela oficina. <br /> Em 1860, a Estação da Calçada foi aberta com o nome de Jequitaia. A estação foi também chamada de Baía e atualmente Estação da Calçada. A estação sempre esteve no local de origem, desde a sua inauguração. Jequitaia hoje é o nome da avenida que, saindo da região do porto, chega a Calçada, nome do bairro onde se localiza a estação.</p>', '', -2, 2, '2014-06-29 16:18:03', 303, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2014-06-29 16:18:03', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 0, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(6, 71, 'Sobre a Empresa', 'sobre-a-empresa', '<p>A Companhia de Transportes do Estado da Bahia(CTB) é uma empresa estatal do Estado da Bahia e está subordinada à Secretaria de Desenvolvimento Urbano(SEDUR). O Serviço de transportes de passageiros sobre os trilhosde competência estadual é o foco do objetivo da CTB. Fundada em 1999, a sua sede situa-se no bairro da Calçada na cidade de Salvador e é presidido atualmente por Carlos Martins.</p>', '', -2, 2, '2014-06-29 23:09:38', 303, '', '2014-06-29 23:38:41', 303, 0, '0000-00-00 00:00:00', '2014-06-29 23:09:38', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"1","link_titles":"0","show_tags":"0","show_intro":"0","info_block_position":"1","show_category":"0","link_category":"0","show_parent_category":"0","link_parent_category":"0","show_author":"0","link_author":"0","show_create_date":"0","show_modify_date":"0","show_publish_date":"0","show_item_navigation":"0","show_icons":"0","show_print_icon":"0","show_email_icon":"0","show_vote":"0","show_hits":"0","show_noauth":"0","urls_position":"1","alternative_readmore":"","article_layout":"_:default","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 6, 0, '', '', 1, 19, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(7, 72, 'Nossa História', 'nossa-hist', '', '', -2, 2, '2014-06-29 23:11:52', 303, '', '2014-06-29 23:12:01', 303, 0, '0000-00-00 00:00:00', '2014-06-29 23:11:52', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 2, 0, '', '', 1, 1, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(8, 106, 'Inauguração do Metrô de Salvador', 'inauguracao-do-metro-de-salvador', '<p><em><span style="font-size: 8pt;">Salvador, 08 de Junho de 2014</span></em></p>', '', -2, 2, '2014-06-30 19:15:42', 303, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2014-06-30 19:15:42', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 0, '', '', 1, 2, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(9, 155, 'Inauguração do Metrô de Salvador', 'isso-e-um-teste', '<p>{loadposition position-4}</p>\r\n<p style="text-align: justify;">Após quase 15 anos de espera, o Metrô de Salvador finalmente poderá ser inaugurado em sua fase experimental que será iniciado a partir do dia 11 de Junho. O projeto foi iniciado no ano de 2000 pela prefeitura de Salvador, porém neste período a projeto sofreu diversos atrasos na obra. A transição da responsabilidade do projeto do metrô da prefeitura para o governo do estado em 2013 fez com que em menos de 1 ano o sonho que até então era considerado inalcançável se torna-se uma realidade.</p>\r\n<p style="text-align: justify;">A fase experimental terá duração até setembro e a operação será realizada entre as estações da Lapa e do Retiro, de segunda a sexta feira, nos horários de 12 às 16 horas. Durante este período, o metrô não funcionará aos finais de semana e terá o seu acesso restrito em dias de jogos da copa.O intervalo entre os trens será de 10 minutos, sem cobrança de tarifas.</p>\r\n<p><span style="line-height: 1.5;">Acesse o site do metrô <a href="http://www.metro.ba.gov.br">aqui</a></span></p>', '', -2, 8, '2014-07-21 00:00:00', 303, '', '2014-07-23 12:10:01', 303, 0, '0000-00-00 00:00:00', '2014-07-21 07:47:34', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"2","show_category":"1","link_category":"1","show_parent_category":"1","link_parent_category":"1","show_author":"1","link_author":"1","show_create_date":"1","show_modify_date":"1","show_publish_date":"1","show_item_navigation":"1","show_icons":"1","show_print_icon":"0","show_email_icon":"0","show_vote":"0","show_hits":"0","show_noauth":"0","urls_position":"0","alternative_readmore":"","article_layout":"","show_publishing_options":"1","show_article_options":"1","show_urls_images_backend":"1","show_urls_images_frontend":"1"}', 11, 1, '', '', 1, 5, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(10, 158, 'Isso é um teste 2', 'teste-2', '<p>Eu quero que isso apareça em ultimos artigos</p>', '', 1, 40, '2014-07-21 17:09:00', 303, '', '2014-07-21 17:30:55', 303, 0, '0000-00-00 00:00:00', '2014-07-21 17:09:00', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 6, 0, '', '', 1, 22, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(11, 159, 'Isso é um teste 3', 'isso-e-um-teste-3', '<p>Eu quero que isso apareça</p>', '', 1, 40, '2014-07-21 17:11:18', 303, '', '2014-07-21 17:43:58', 303, 0, '0000-00-00 00:00:00', '2014-07-21 17:11:18', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 4, 0, '', 'Ferroviários fazem assembleia para decidir uma nova greve', 1, 6, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(12, 164, 'Inauguração Metrô', 'inauguracao-metro', '<h2>Inauguração do Metrô de Salvador</h2>\r\n<p style="text-align: justify;">Após quase 15 anos de espera, o Metrô de Salvador finalmente poderá ser inaugurado em sua fase experimental que será iniciado a partir do dia 11 de Junho. O projeto foi iniciado no ano de 2000 pela prefeitura de Salvador, porém neste período a projeto sofreu diversos atrasos na obra. A transição da responsabilidade do projeto do metrô da prefeitura para o governo do estado em 2013 fez com que em menos de 1 ano o sonho que até então era considerado inalcançável se torna-se uma realidade.</p>\r\n<p style="text-align: justify;">A fase experimental terá duração até setembro e a operação será realizada entre as estações da Lapa e do Retiro, de segunda a sexta feira, nos horários de 12 às 16 horas. Durante este período, o metrô não funcionará aos finais de semana e terá o seu acesso restrito em dias de jogos da copa.O intervalo entre os trens será de 10 minutos, sem cobrança de tarifas.</p>\r\n<p><span style="line-height: 1.5;">Acesse o site do metrô <a href="http://www.metro.ba.gov.br">aqui</a></span></p>', '', 1, 8, '2014-07-23 12:38:26', 303, '', '2015-01-23 22:36:25', 303, 303, '2015-01-23 22:36:25', '2014-07-23 12:38:26', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 8, 1, '', '', 1, 24, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(13, 165, 'Blablalba', 'blablalba', '<p>isso aqui é um verdadeiro blablabla</p>\r\n<p> </p>\r\n<p>{loadposition debug}</p>', '', 1, 40, '2014-07-23 13:07:51', 303, '', '2015-01-05 13:41:43', 303, 0, '0000-00-00 00:00:00', '2014-07-23 13:07:51', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 4, 0, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', '');

-- --------------------------------------------------------

--
-- Estrutura da tabela `iwk5c_contentitem_tag_map`
--

CREATE TABLE IF NOT EXISTS `iwk5c_contentitem_tag_map` (
  `type_alias` varchar(255) NOT NULL DEFAULT '',
  `core_content_id` int(10) unsigned NOT NULL COMMENT 'PK from the core content table',
  `content_item_id` int(11) NOT NULL COMMENT 'PK from the content type table',
  `tag_id` int(10) unsigned NOT NULL COMMENT 'PK from the tag table',
  `tag_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Date of most recent save for this tag-item',
  `type_id` mediumint(8) NOT NULL COMMENT 'PK from the content_type table'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Maps items from content tables to tags';

-- --------------------------------------------------------

--
-- Estrutura da tabela `iwk5c_content_frontpage`
--

CREATE TABLE IF NOT EXISTS `iwk5c_content_frontpage` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `iwk5c_content_frontpage`
--

INSERT INTO `iwk5c_content_frontpage` (`content_id`, `ordering`) VALUES
(2, 2),
(3, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `iwk5c_content_rating`
--

CREATE TABLE IF NOT EXISTS `iwk5c_content_rating` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `rating_sum` int(10) unsigned NOT NULL DEFAULT '0',
  `rating_count` int(10) unsigned NOT NULL DEFAULT '0',
  `lastip` varchar(50) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `iwk5c_content_types`
--

CREATE TABLE IF NOT EXISTS `iwk5c_content_types` (
`type_id` int(10) unsigned NOT NULL,
  `type_title` varchar(255) NOT NULL DEFAULT '',
  `type_alias` varchar(255) NOT NULL DEFAULT '',
  `table` varchar(255) NOT NULL DEFAULT '',
  `rules` text NOT NULL,
  `field_mappings` text NOT NULL,
  `router` varchar(255) NOT NULL DEFAULT '',
  `content_history_options` varchar(5120) DEFAULT NULL COMMENT 'JSON string for com_contenthistory options'
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `iwk5c_content_types`
--

INSERT INTO `iwk5c_content_types` (`type_id`, `type_title`, `type_alias`, `table`, `rules`, `field_mappings`, `router`, `content_history_options`) VALUES
(1, 'Article', 'com_content.article', '{"special":{"dbtable":"#__content","key":"id","type":"Content","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"state","core_alias":"alias","core_created_time":"created","core_modified_time":"modified","core_body":"introtext", "core_hits":"hits","core_publish_up":"publish_up","core_publish_down":"publish_down","core_access":"access", "core_params":"attribs", "core_featured":"featured", "core_metadata":"metadata", "core_language":"language", "core_images":"images", "core_urls":"urls", "core_version":"version", "core_ordering":"ordering", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"catid", "core_xreference":"xreference", "asset_id":"asset_id"}, "special":{"fulltext":"fulltext"}}', 'ContentHelperRoute::getArticleRoute', '{"formFile":"administrator\\/components\\/com_content\\/models\\/forms\\/article.xml", "hideFields":["asset_id","checked_out","checked_out_time","version"],"ignoreChanges":["modified_by", "modified", "checked_out", "checked_out_time", "version", "hits"],"convertToInt":["publish_up", "publish_down", "featured", "ordering"],"displayLookup":[{"sourceColumn":"catid","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"created_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"} ]}'),
(2, 'Weblink', 'com_weblinks.weblink', '{"special":{"dbtable":"#__weblinks","key":"id","type":"Weblink","prefix":"WeblinksTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"state","core_alias":"alias","core_created_time":"created","core_modified_time":"modified","core_body":"description", "core_hits":"hits","core_publish_up":"publish_up","core_publish_down":"publish_down","core_access":"access", "core_params":"params", "core_featured":"featured", "core_metadata":"metadata", "core_language":"language", "core_images":"images", "core_urls":"urls", "core_version":"version", "core_ordering":"ordering", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"catid", "core_xreference":"xreference", "asset_id":"null"}, "special":{}}', 'WeblinksHelperRoute::getWeblinkRoute', '{"formFile":"administrator\\/components\\/com_weblinks\\/models\\/forms\\/weblink.xml", "hideFields":["asset_id","checked_out","checked_out_time","version","featured","images"], "ignoreChanges":["modified_by", "modified", "checked_out", "checked_out_time", "version", "hits"], "convertToInt":["publish_up", "publish_down", "featured", "ordering"], "displayLookup":[{"sourceColumn":"catid","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"created_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"} ]}'),
(3, 'Contact', 'com_contact.contact', '{"special":{"dbtable":"#__contact_details","key":"id","type":"Contact","prefix":"ContactTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"name","core_state":"published","core_alias":"alias","core_created_time":"created","core_modified_time":"modified","core_body":"address", "core_hits":"hits","core_publish_up":"publish_up","core_publish_down":"publish_down","core_access":"access", "core_params":"params", "core_featured":"featured", "core_metadata":"metadata", "core_language":"language", "core_images":"image", "core_urls":"webpage", "core_version":"version", "core_ordering":"ordering", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"catid", "core_xreference":"xreference", "asset_id":"null"}, "special":{"con_position":"con_position","suburb":"suburb","state":"state","country":"country","postcode":"postcode","telephone":"telephone","fax":"fax","misc":"misc","email_to":"email_to","default_con":"default_con","user_id":"user_id","mobile":"mobile","sortname1":"sortname1","sortname2":"sortname2","sortname3":"sortname3"}}', 'ContactHelperRoute::getContactRoute', '{"formFile":"administrator\\/components\\/com_contact\\/models\\/forms\\/contact.xml","hideFields":["default_con","checked_out","checked_out_time","version","xreference"],"ignoreChanges":["modified_by", "modified", "checked_out", "checked_out_time", "version", "hits"],"convertToInt":["publish_up", "publish_down", "featured", "ordering"], "displayLookup":[ {"sourceColumn":"created_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"catid","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"} ] }'),
(4, 'Newsfeed', 'com_newsfeeds.newsfeed', '{"special":{"dbtable":"#__newsfeeds","key":"id","type":"Newsfeed","prefix":"NewsfeedsTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"name","core_state":"published","core_alias":"alias","core_created_time":"created","core_modified_time":"modified","core_body":"description", "core_hits":"hits","core_publish_up":"publish_up","core_publish_down":"publish_down","core_access":"access", "core_params":"params", "core_featured":"featured", "core_metadata":"metadata", "core_language":"language", "core_images":"images", "core_urls":"link", "core_version":"version", "core_ordering":"ordering", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"catid", "core_xreference":"xreference", "asset_id":"null"}, "special":{"numarticles":"numarticles","cache_time":"cache_time","rtl":"rtl"}}', 'NewsfeedsHelperRoute::getNewsfeedRoute', '{"formFile":"administrator\\/components\\/com_newsfeeds\\/models\\/forms\\/newsfeed.xml","hideFields":["asset_id","checked_out","checked_out_time","version"],"ignoreChanges":["modified_by", "modified", "checked_out", "checked_out_time", "version", "hits"],"convertToInt":["publish_up", "publish_down", "featured", "ordering"],"displayLookup":[{"sourceColumn":"catid","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"created_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"} ]}'),
(5, 'User', 'com_users.user', '{"special":{"dbtable":"#__users","key":"id","type":"User","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"name","core_state":"null","core_alias":"username","core_created_time":"registerdate","core_modified_time":"lastvisitDate","core_body":"null", "core_hits":"null","core_publish_up":"null","core_publish_down":"null","access":"null", "core_params":"params", "core_featured":"null", "core_metadata":"null", "core_language":"null", "core_images":"null", "core_urls":"null", "core_version":"null", "core_ordering":"null", "core_metakey":"null", "core_metadesc":"null", "core_catid":"null", "core_xreference":"null", "asset_id":"null"}, "special":{}}', 'UsersHelperRoute::getUserRoute', ''),
(6, 'Article Category', 'com_content.category', '{"special":{"dbtable":"#__categories","key":"id","type":"Category","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"null", "core_urls":"null", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"parent_id", "core_xreference":"null", "asset_id":"asset_id"}, "special":{"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path","extension":"extension","note":"note"}}', 'ContentHelperRoute::getCategoryRoute', '{"formFile":"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml", "hideFields":["asset_id","checked_out","checked_out_time","version","lft","rgt","level","path","extension"], "ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"],"convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"parent_id","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}]}'),
(7, 'Contact Category', 'com_contact.category', '{"special":{"dbtable":"#__categories","key":"id","type":"Category","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"null", "core_urls":"null", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"parent_id", "core_xreference":"null", "asset_id":"asset_id"}, "special":{"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path","extension":"extension","note":"note"}}', 'ContactHelperRoute::getCategoryRoute', '{"formFile":"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml", "hideFields":["asset_id","checked_out","checked_out_time","version","lft","rgt","level","path","extension"], "ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"],"convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"parent_id","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}]}'),
(8, 'Newsfeeds Category', 'com_newsfeeds.category', '{"special":{"dbtable":"#__categories","key":"id","type":"Category","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"null", "core_urls":"null", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"parent_id", "core_xreference":"null", "asset_id":"asset_id"}, "special":{"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path","extension":"extension","note":"note"}}', 'NewsfeedsHelperRoute::getCategoryRoute', '{"formFile":"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml", "hideFields":["asset_id","checked_out","checked_out_time","version","lft","rgt","level","path","extension"], "ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"],"convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"parent_id","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}]}'),
(9, 'Weblinks Category', 'com_weblinks.category', '{"special":{"dbtable":"#__categories","key":"id","type":"Category","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"null", "core_urls":"null", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"parent_id", "core_xreference":"null", "asset_id":"asset_id"}, "special":{"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path","extension":"extension","note":"note"}}', 'WeblinksHelperRoute::getCategoryRoute', '{"formFile":"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml", "hideFields":["asset_id","checked_out","checked_out_time","version","lft","rgt","level","path","extension"], "ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"],"convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"parent_id","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}]}'),
(10, 'Tag', 'com_tags.tag', '{"special":{"dbtable":"#__tags","key":"tag_id","type":"Tag","prefix":"TagsTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"featured", "core_metadata":"metadata", "core_language":"language", "core_images":"images", "core_urls":"urls", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"null", "core_xreference":"null", "asset_id":"null"}, "special":{"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path"}}', 'TagsHelperRoute::getTagRoute', '{"formFile":"administrator\\/components\\/com_tags\\/models\\/forms\\/tag.xml", "hideFields":["checked_out","checked_out_time","version", "lft", "rgt", "level", "path", "urls", "publish_up", "publish_down"],"ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"],"convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}, {"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"}, {"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}]}'),
(11, 'Banner', 'com_banners.banner', '{"special":{"dbtable":"#__banners","key":"id","type":"Banner","prefix":"BannersTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"name","core_state":"published","core_alias":"alias","core_created_time":"created","core_modified_time":"modified","core_body":"description", "core_hits":"null","core_publish_up":"publish_up","core_publish_down":"publish_down","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"images", "core_urls":"link", "core_version":"version", "core_ordering":"ordering", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"catid", "core_xreference":"null", "asset_id":"null"}, "special":{"imptotal":"imptotal", "impmade":"impmade", "clicks":"clicks", "clickurl":"clickurl", "custombannercode":"custombannercode", "cid":"cid", "purchase_type":"purchase_type", "track_impressions":"track_impressions", "track_clicks":"track_clicks"}}', '', '{"formFile":"administrator\\/components\\/com_banners\\/models\\/forms\\/banner.xml", "hideFields":["checked_out","checked_out_time","version", "reset"],"ignoreChanges":["modified_by", "modified", "checked_out", "checked_out_time", "version", "imptotal", "impmade", "reset"], "convertToInt":["publish_up", "publish_down", "ordering"], "displayLookup":[{"sourceColumn":"catid","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}, {"sourceColumn":"cid","targetTable":"#__banner_clients","targetColumn":"id","displayColumn":"name"}, {"sourceColumn":"created_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"modified_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"} ]}'),
(12, 'Banners Category', 'com_banners.category', '{"special":{"dbtable":"#__categories","key":"id","type":"Category","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"null", "core_urls":"null", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"parent_id", "core_xreference":"null", "asset_id":"asset_id"}, "special": {"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path","extension":"extension","note":"note"}}', '', '{"formFile":"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml", "hideFields":["asset_id","checked_out","checked_out_time","version","lft","rgt","level","path","extension"], "ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"], "convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"parent_id","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}]}'),
(13, 'Banner Client', 'com_banners.client', '{"special":{"dbtable":"#__banner_clients","key":"id","type":"Client","prefix":"BannersTable"}}', '', '', '', '{"formFile":"administrator\\/components\\/com_banners\\/models\\/forms\\/client.xml", "hideFields":["checked_out","checked_out_time"], "ignoreChanges":["checked_out", "checked_out_time"], "convertToInt":[], "displayLookup":[]}'),
(14, 'User Notes', 'com_users.note', '{"special":{"dbtable":"#__user_notes","key":"id","type":"Note","prefix":"UsersTable"}}', '', '', '', '{"formFile":"administrator\\/components\\/com_users\\/models\\/forms\\/note.xml", "hideFields":["checked_out","checked_out_time", "publish_up", "publish_down"],"ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time"], "convertToInt":["publish_up", "publish_down"],"displayLookup":[{"sourceColumn":"catid","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}, {"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}, {"sourceColumn":"user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}, {"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}]}'),
(15, 'User Notes Category', 'com_users.category', '{"special":{"dbtable":"#__categories","key":"id","type":"Category","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"null", "core_urls":"null", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"parent_id", "core_xreference":"null", "asset_id":"asset_id"}, "special":{"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path","extension":"extension","note":"note"}}', '', '{"formFile":"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml", "hideFields":["checked_out","checked_out_time","version","lft","rgt","level","path","extension"], "ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"], "convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}, {"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"parent_id","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}]}');

-- --------------------------------------------------------

--
-- Estrutura da tabela `iwk5c_core_log_searches`
--

CREATE TABLE IF NOT EXISTS `iwk5c_core_log_searches` (
  `search_term` varchar(128) NOT NULL DEFAULT '',
  `hits` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `iwk5c_extensions`
--

CREATE TABLE IF NOT EXISTS `iwk5c_extensions` (
`extension_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `type` varchar(20) NOT NULL,
  `element` varchar(100) NOT NULL,
  `folder` varchar(100) NOT NULL,
  `client_id` tinyint(3) NOT NULL,
  `enabled` tinyint(3) NOT NULL DEFAULT '1',
  `access` int(10) unsigned NOT NULL DEFAULT '1',
  `protected` tinyint(3) NOT NULL DEFAULT '0',
  `manifest_cache` text NOT NULL,
  `params` text NOT NULL,
  `custom_data` text NOT NULL,
  `system_data` text NOT NULL,
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) DEFAULT '0',
  `state` int(11) DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=735 DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `iwk5c_extensions`
--

INSERT INTO `iwk5c_extensions` (`extension_id`, `name`, `type`, `element`, `folder`, `client_id`, `enabled`, `access`, `protected`, `manifest_cache`, `params`, `custom_data`, `system_data`, `checked_out`, `checked_out_time`, `ordering`, `state`) VALUES
(1, 'com_mailto', 'component', 'com_mailto', '', 0, 1, 1, 1, '{"name":"com_mailto","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_MAILTO_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(2, 'com_wrapper', 'component', 'com_wrapper', '', 0, 1, 1, 1, '{"name":"com_wrapper","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_WRAPPER_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(3, 'com_admin', 'component', 'com_admin', '', 1, 1, 1, 1, '{"name":"com_admin","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_ADMIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(4, 'com_banners', 'component', 'com_banners', '', 1, 1, 1, 0, '{"name":"com_banners","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_BANNERS_XML_DESCRIPTION","group":""}', '{"purchase_type":"3","track_impressions":"0","track_clicks":"0","metakey_prefix":"","save_history":"1","history_limit":10}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(5, 'com_cache', 'component', 'com_cache', '', 1, 1, 1, 1, '{"name":"com_cache","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CACHE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(6, 'com_categories', 'component', 'com_categories', '', 1, 1, 1, 1, '{"name":"com_categories","type":"component","creationDate":"December 2007","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CATEGORIES_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(7, 'com_checkin', 'component', 'com_checkin', '', 1, 1, 1, 1, '{"name":"com_checkin","type":"component","creationDate":"Unknown","author":"Joomla! Project","copyright":"(C) 2005 - 2008 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CHECKIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(8, 'com_contact', 'component', 'com_contact', '', 1, 1, 1, 0, '{"name":"com_contact","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CONTACT_XML_DESCRIPTION","group":""}', '{"show_contact_category":"hide","save_history":"1","history_limit":10,"show_contact_list":"0","presentation_style":"sliders","show_name":"1","show_position":"1","show_email":"0","show_street_address":"1","show_suburb":"1","show_state":"1","show_postcode":"1","show_country":"1","show_telephone":"1","show_mobile":"1","show_fax":"1","show_webpage":"1","show_misc":"1","show_image":"1","image":"","allow_vcard":"0","show_articles":"0","show_profile":"0","show_links":"0","linka_name":"","linkb_name":"","linkc_name":"","linkd_name":"","linke_name":"","contact_icons":"0","icon_address":"","icon_email":"","icon_telephone":"","icon_mobile":"","icon_fax":"","icon_misc":"","show_headings":"1","show_position_headings":"1","show_email_headings":"0","show_telephone_headings":"1","show_mobile_headings":"0","show_fax_headings":"0","allow_vcard_headings":"0","show_suburb_headings":"1","show_state_headings":"1","show_country_headings":"1","show_email_form":"1","show_email_copy":"1","banned_email":"","banned_subject":"","banned_text":"","validate_session":"1","custom_reply":"0","redirect":"","show_category_crumb":"0","metakey":"","metadesc":"","robots":"","author":"","rights":"","xreference":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(9, 'com_cpanel', 'component', 'com_cpanel', '', 1, 1, 1, 1, '{"name":"com_cpanel","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CPANEL_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10, 'com_installer', 'component', 'com_installer', '', 1, 1, 1, 1, '{"name":"com_installer","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_INSTALLER_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(11, 'com_languages', 'component', 'com_languages', '', 1, 1, 1, 1, '{"name":"com_languages","type":"component","creationDate":"2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_LANGUAGES_XML_DESCRIPTION","group":""}', '{"administrator":"en-GB","site":"en-GB"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(12, 'com_login', 'component', 'com_login', '', 1, 1, 1, 1, '{"name":"com_login","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_LOGIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(13, 'com_media', 'component', 'com_media', '', 1, 1, 0, 1, '{"name":"com_media","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_MEDIA_XML_DESCRIPTION","group":""}', '{"upload_extensions":"bmp,csv,doc,gif,ico,jpg,jpeg,odg,odp,ods,odt,pdf,png,ppt,swf,txt,xcf,xls,BMP,CSV,DOC,GIF,ICO,JPG,JPEG,ODG,ODP,ODS,ODT,PDF,PNG,PPT,SWF,TXT,XCF,XLS","upload_maxsize":"10","file_path":"images","image_path":"images","restrict_uploads":"1","allowed_media_usergroup":"3","check_mime":"1","image_extensions":"bmp,gif,jpg,png","ignore_extensions":"","upload_mime":"image\\/jpeg,image\\/gif,image\\/png,image\\/bmp,application\\/x-shockwave-flash,application\\/msword,application\\/excel,application\\/pdf,application\\/powerpoint,text\\/plain,application\\/x-zip","upload_mime_illegal":"text\\/html"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(14, 'com_menus', 'component', 'com_menus', '', 1, 1, 1, 1, '{"name":"com_menus","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_MENUS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(15, 'com_messages', 'component', 'com_messages', '', 1, 1, 1, 1, '{"name":"com_messages","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_MESSAGES_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(16, 'com_modules', 'component', 'com_modules', '', 1, 1, 1, 1, '{"name":"com_modules","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_MODULES_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(17, 'com_newsfeeds', 'component', 'com_newsfeeds', '', 1, 1, 1, 0, '{"name":"com_newsfeeds","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_NEWSFEEDS_XML_DESCRIPTION","group":""}', '{"newsfeed_layout":"_:default","save_history":"1","history_limit":5,"show_feed_image":"1","show_feed_description":"1","show_item_description":"1","feed_character_count":"0","feed_display_order":"des","float_first":"right","float_second":"right","show_tags":"1","category_layout":"_:default","show_category_title":"1","show_description":"1","show_description_image":"1","maxLevel":"-1","show_empty_categories":"0","show_subcat_desc":"1","show_cat_items":"1","show_cat_tags":"1","show_base_description":"1","maxLevelcat":"-1","show_empty_categories_cat":"0","show_subcat_desc_cat":"1","show_cat_items_cat":"1","filter_field":"1","show_pagination_limit":"1","show_headings":"1","show_articles":"0","show_link":"1","show_pagination":"1","show_pagination_results":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(18, 'com_plugins', 'component', 'com_plugins', '', 1, 1, 1, 1, '{"name":"com_plugins","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_PLUGINS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(19, 'com_search', 'component', 'com_search', '', 1, 1, 1, 0, '{"name":"com_search","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_SEARCH_XML_DESCRIPTION","group":""}', '{"enabled":"0","show_date":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(20, 'com_templates', 'component', 'com_templates', '', 1, 1, 1, 1, '{"name":"com_templates","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_TEMPLATES_XML_DESCRIPTION","group":""}', '{"template_positions_display":"0","upload_limit":"2","image_formats":"gif,bmp,jpg,jpeg,png","source_formats":"txt,less,ini,xml,js,php,css","font_formats":"woff,ttf,otf","compressed_formats":"zip"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(21, 'com_weblinks', 'component', 'com_weblinks', '', 1, 1, 1, 0, '{"name":"com_weblinks","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_WEBLINKS_XML_DESCRIPTION","group":""}', '{"target":"0","save_history":"1","history_limit":5,"count_clicks":"1","icons":1,"link_icons":"","float_first":"right","float_second":"right","show_tags":"1","category_layout":"_:default","show_category_title":"1","show_description":"1","show_description_image":"1","maxLevel":"-1","show_empty_categories":"0","show_subcat_desc":"1","show_cat_num_links":"1","show_cat_tags":"1","show_base_description":"1","maxLevelcat":"-1","show_empty_categories_cat":"0","show_subcat_desc_cat":"1","show_cat_num_links_cat":"1","filter_field":"1","show_pagination_limit":"1","show_headings":"0","show_link_description":"1","show_link_hits":"1","show_pagination":"2","show_pagination_results":"1","show_feed_link":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(22, 'com_content', 'component', 'com_content', '', 1, 1, 0, 1, '{"name":"com_content","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CONTENT_XML_DESCRIPTION","group":""}', '{"article_layout":"_:default","show_title":"0","link_titles":"0","show_intro":"0","info_block_position":"0","show_category":"0","link_category":"0","show_parent_category":"0","link_parent_category":"0","show_author":"0","link_author":"0","show_create_date":"0","show_modify_date":"0","show_publish_date":"0","show_item_navigation":"0","show_vote":"0","show_readmore":"1","show_readmore_title":"1","readmore_limit":"100","show_tags":"0","show_icons":"0","show_print_icon":"0","show_email_icon":"0","show_hits":"0","show_noauth":"0","urls_position":"0","show_publishing_options":"1","show_article_options":"1","save_history":"1","history_limit":10,"show_urls_images_frontend":"0","show_urls_images_backend":"1","targeta":0,"targetb":0,"targetc":0,"float_intro":"left","float_fulltext":"left","category_layout":"_:blog","show_category_heading_title_text":"1","show_category_title":"0","show_description":"0","show_description_image":"0","maxLevel":"0","show_empty_categories":"0","show_no_articles":"1","show_subcat_desc":"1","show_cat_num_articles":"0","show_cat_tags":"1","show_base_description":"1","maxLevelcat":"1","show_empty_categories_cat":"0","show_subcat_desc_cat":"0","show_cat_num_articles_cat":"0","num_leading_articles":"1","num_intro_articles":"4","num_columns":"2","num_links":"4","multi_column_order":"0","show_subcategory_content":"0","show_pagination_limit":"1","filter_field":"hide","show_headings":"1","list_show_date":"0","date_format":"","list_show_hits":"1","list_show_author":"1","orderby_pri":"none","orderby_sec":"rdate","order_date":"published","show_pagination":"2","show_pagination_results":"1","show_feed_link":"1","feed_summary":"0","feed_show_readmore":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(23, 'com_config', 'component', 'com_config', '', 1, 1, 0, 1, '{"name":"com_config","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CONFIG_XML_DESCRIPTION","group":""}', '{"filters":{"1":{"filter_type":"NH","filter_tags":"","filter_attributes":""},"9":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"6":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"7":{"filter_type":"NONE","filter_tags":"","filter_attributes":""},"2":{"filter_type":"NH","filter_tags":"","filter_attributes":""},"3":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"4":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"5":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"8":{"filter_type":"NONE","filter_tags":"","filter_attributes":""}}}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(24, 'com_redirect', 'component', 'com_redirect', '', 1, 1, 0, 1, '{"name":"com_redirect","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_REDIRECT_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(25, 'com_users', 'component', 'com_users', '', 1, 1, 0, 1, '{"name":"com_users","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_USERS_XML_DESCRIPTION","group":""}', '{"allowUserRegistration":"1","new_usertype":"2","guest_usergroup":"9","sendpassword":"1","useractivation":"1","mail_to_admin":"0","captcha":"","frontend_userparams":"1","site_language":"0","change_login_name":"0","reset_count":"10","reset_time":"1","minimum_length":"4","minimum_integers":"0","minimum_symbols":"0","minimum_uppercase":"0","save_history":"1","history_limit":5,"mailSubjectPrefix":"","mailBodySuffix":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(27, 'com_finder', 'component', 'com_finder', '', 1, 1, 0, 0, '{"name":"com_finder","type":"component","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_FINDER_XML_DESCRIPTION","group":""}', '{"show_description":"1","description_length":255,"allow_empty_query":"0","show_url":"1","show_advanced":"1","expand_advanced":"0","show_date_filters":"0","highlight_terms":"1","opensearch_name":"","opensearch_description":"","batch_size":"50","memory_table_limit":30000,"title_multiplier":"1.7","text_multiplier":"0.7","meta_multiplier":"1.2","path_multiplier":"2.0","misc_multiplier":"0.3","stemmer":"snowball"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(28, 'com_joomlaupdate', 'component', 'com_joomlaupdate', '', 1, 1, 0, 1, '{"name":"com_joomlaupdate","type":"component","creationDate":"February 2012","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_JOOMLAUPDATE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(29, 'com_tags', 'component', 'com_tags', '', 1, 1, 1, 1, '{"name":"com_tags","type":"component","creationDate":"December 2013","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.1.0","description":"COM_TAGS_XML_DESCRIPTION","group":""}', '{"tag_layout":"_:default","save_history":"1","history_limit":5,"show_tag_title":"0","tag_list_show_tag_image":"0","tag_list_show_tag_description":"0","tag_list_image":"","show_tag_num_items":"0","tag_list_orderby":"title","tag_list_orderby_direction":"ASC","show_headings":"0","tag_list_show_date":"0","tag_list_show_item_image":"0","tag_list_show_item_description":"0","tag_list_item_maximum_characters":0,"return_any_or_all":"1","include_children":"0","maximum":200,"tag_list_language_filter":"all","tags_layout":"_:default","all_tags_orderby":"title","all_tags_orderby_direction":"ASC","all_tags_show_tag_image":"0","all_tags_show_tag_descripion":"0","all_tags_tag_maximum_characters":20,"all_tags_show_tag_hits":"0","filter_field":"1","show_pagination_limit":"1","show_pagination":"2","show_pagination_results":"1","tag_field_ajax_mode":"1","show_feed_link":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(30, 'com_contenthistory', 'component', 'com_contenthistory', '', 1, 1, 1, 0, '{"name":"com_contenthistory","type":"component","creationDate":"May 2013","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.0","description":"COM_CONTENTHISTORY_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(31, 'com_ajax', 'component', 'com_ajax', '', 1, 1, 1, 0, '{"name":"com_ajax","type":"component","creationDate":"August 2013","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.0","description":"COM_AJAX_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(32, 'com_postinstall', 'component', 'com_postinstall', '', 1, 1, 1, 1, '{"name":"com_postinstall","type":"component","creationDate":"September 2013","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.0","description":"COM_POSTINSTALL_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(100, 'PHPMailer', 'library', 'phpmailer', '', 0, 1, 1, 1, '{"name":"PHPMailer","type":"library","creationDate":"2001","author":"PHPMailer","copyright":"(c) 2001-2003, Brent R. Matzelle, (c) 2004-2009, Andy Prevost. All Rights Reserved., (c) 2010-2013, Jim Jagielski. All Rights Reserved.","authorEmail":"jimjag@gmail.com","authorUrl":"https:\\/\\/github.com\\/PHPMailer\\/PHPMailer","version":"5.2.6","description":"LIB_PHPMAILER_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(101, 'SimplePie', 'library', 'simplepie', '', 0, 1, 1, 1, '{"name":"SimplePie","type":"library","creationDate":"2004","author":"SimplePie","copyright":"Copyright (c) 2004-2009, Ryan Parman and Geoffrey Sneddon","authorEmail":"","authorUrl":"http:\\/\\/simplepie.org\\/","version":"1.2","description":"LIB_SIMPLEPIE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(102, 'phputf8', 'library', 'phputf8', '', 0, 1, 1, 1, '{"name":"phputf8","type":"library","creationDate":"2006","author":"Harry Fuecks","copyright":"Copyright various authors","authorEmail":"hfuecks@gmail.com","authorUrl":"http:\\/\\/sourceforge.net\\/projects\\/phputf8","version":"0.5","description":"LIB_PHPUTF8_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(103, 'Joomla! Platform', 'library', 'joomla', '', 0, 1, 1, 1, '{"name":"Joomla! Platform","type":"library","creationDate":"2008","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"http:\\/\\/www.joomla.org","version":"13.1","description":"LIB_JOOMLA_XML_DESCRIPTION","group":""}', '{"mediaversion":"d8a70d5be61b22a2801c0e35448bf060"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(104, 'IDNA Convert', 'library', 'idna_convert', '', 0, 1, 1, 1, '{"name":"IDNA Convert","type":"library","creationDate":"2004","author":"phlyLabs","copyright":"2004-2011 phlyLabs Berlin, http:\\/\\/phlylabs.de","authorEmail":"phlymail@phlylabs.de","authorUrl":"http:\\/\\/phlylabs.de","version":"0.8.0","description":"LIB_IDNA_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(105, 'FOF', 'library', 'fof', '', 0, 1, 1, 1, '{"name":"FOF","type":"library","creationDate":"2014-03-09 12:54:48","author":"Nicholas K. Dionysopoulos \\/ Akeeba Ltd","copyright":"(C)2011-2014 Nicholas K. Dionysopoulos","authorEmail":"nicholas@akeebabackup.com","authorUrl":"https:\\/\\/www.akeebabackup.com","version":"2.2.1","description":"LIB_FOF_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(106, 'PHPass', 'library', 'phpass', '', 0, 1, 1, 1, '{"name":"PHPass","type":"library","creationDate":"2004-2006","author":"Solar Designer","copyright":"","authorEmail":"solar@openwall.com","authorUrl":"http:\\/\\/www.openwall.com\\/phpass\\/","version":"0.3","description":"LIB_PHPASS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(200, 'mod_articles_archive', 'module', 'mod_articles_archive', '', 0, 1, 1, 0, '{"name":"mod_articles_archive","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters.\\n\\t\\tAll rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_ARTICLES_ARCHIVE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(201, 'mod_articles_latest', 'module', 'mod_articles_latest', '', 0, 1, 1, 0, '{"name":"mod_articles_latest","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LATEST_NEWS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(202, 'mod_articles_popular', 'module', 'mod_articles_popular', '', 0, 1, 1, 0, '{"name":"mod_articles_popular","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_POPULAR_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(203, 'mod_banners', 'module', 'mod_banners', '', 0, 1, 1, 0, '{"name":"mod_banners","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_BANNERS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(204, 'mod_breadcrumbs', 'module', 'mod_breadcrumbs', '', 0, 1, 1, 1, '{"name":"mod_breadcrumbs","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_BREADCRUMBS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(205, 'mod_custom', 'module', 'mod_custom', '', 0, 1, 1, 1, '{"name":"mod_custom","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_CUSTOM_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(206, 'mod_feed', 'module', 'mod_feed', '', 0, 1, 1, 0, '{"name":"mod_feed","type":"module","creationDate":"July 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_FEED_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(207, 'mod_footer', 'module', 'mod_footer', '', 0, 1, 1, 0, '{"name":"mod_footer","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_FOOTER_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(208, 'mod_login', 'module', 'mod_login', '', 0, 1, 1, 1, '{"name":"mod_login","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LOGIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(209, 'mod_menu', 'module', 'mod_menu', '', 0, 1, 1, 1, '{"name":"mod_menu","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_MENU_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(210, 'mod_articles_news', 'module', 'mod_articles_news', '', 0, 1, 1, 0, '{"name":"mod_articles_news","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_ARTICLES_NEWS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(211, 'mod_random_image', 'module', 'mod_random_image', '', 0, 1, 1, 0, '{"name":"mod_random_image","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_RANDOM_IMAGE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(212, 'mod_related_items', 'module', 'mod_related_items', '', 0, 1, 1, 0, '{"name":"mod_related_items","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_RELATED_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(213, 'mod_search', 'module', 'mod_search', '', 0, 1, 1, 0, '{"name":"mod_search","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_SEARCH_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(214, 'mod_stats', 'module', 'mod_stats', '', 0, 1, 1, 0, '{"name":"mod_stats","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_STATS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(215, 'mod_syndicate', 'module', 'mod_syndicate', '', 0, 1, 1, 1, '{"name":"mod_syndicate","type":"module","creationDate":"May 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_SYNDICATE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(216, 'mod_users_latest', 'module', 'mod_users_latest', '', 0, 1, 1, 0, '{"name":"mod_users_latest","type":"module","creationDate":"December 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_USERS_LATEST_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(217, 'mod_weblinks', 'module', 'mod_weblinks', '', 0, 1, 1, 0, '{"name":"mod_weblinks","type":"module","creationDate":"July 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_WEBLINKS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(218, 'mod_whosonline', 'module', 'mod_whosonline', '', 0, 1, 1, 0, '{"name":"mod_whosonline","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_WHOSONLINE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(219, 'mod_wrapper', 'module', 'mod_wrapper', '', 0, 1, 1, 0, '{"name":"mod_wrapper","type":"module","creationDate":"October 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_WRAPPER_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(220, 'mod_articles_category', 'module', 'mod_articles_category', '', 0, 1, 1, 0, '{"name":"mod_articles_category","type":"module","creationDate":"February 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_ARTICLES_CATEGORY_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(221, 'mod_articles_categories', 'module', 'mod_articles_categories', '', 0, 1, 1, 0, '{"name":"mod_articles_categories","type":"module","creationDate":"February 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_ARTICLES_CATEGORIES_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(222, 'mod_languages', 'module', 'mod_languages', '', 0, 1, 1, 1, '{"name":"mod_languages","type":"module","creationDate":"February 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LANGUAGES_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(223, 'mod_finder', 'module', 'mod_finder', '', 0, 1, 0, 0, '{"name":"mod_finder","type":"module","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_FINDER_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(300, 'mod_custom', 'module', 'mod_custom', '', 1, 1, 1, 1, '{"name":"mod_custom","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_CUSTOM_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(301, 'mod_feed', 'module', 'mod_feed', '', 1, 1, 1, 0, '{"name":"mod_feed","type":"module","creationDate":"July 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_FEED_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(302, 'mod_latest', 'module', 'mod_latest', '', 1, 1, 1, 0, '{"name":"mod_latest","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LATEST_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(303, 'mod_logged', 'module', 'mod_logged', '', 1, 1, 1, 0, '{"name":"mod_logged","type":"module","creationDate":"January 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LOGGED_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(304, 'mod_login', 'module', 'mod_login', '', 1, 1, 1, 1, '{"name":"mod_login","type":"module","creationDate":"March 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LOGIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(305, 'mod_menu', 'module', 'mod_menu', '', 1, 1, 1, 0, '{"name":"mod_menu","type":"module","creationDate":"March 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_MENU_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(307, 'mod_popular', 'module', 'mod_popular', '', 1, 1, 1, 0, '{"name":"mod_popular","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_POPULAR_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(308, 'mod_quickicon', 'module', 'mod_quickicon', '', 1, 1, 1, 1, '{"name":"mod_quickicon","type":"module","creationDate":"Nov 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_QUICKICON_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(309, 'mod_status', 'module', 'mod_status', '', 1, 1, 1, 0, '{"name":"mod_status","type":"module","creationDate":"Feb 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_STATUS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(310, 'mod_submenu', 'module', 'mod_submenu', '', 1, 1, 1, 0, '{"name":"mod_submenu","type":"module","creationDate":"Feb 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_SUBMENU_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(311, 'mod_title', 'module', 'mod_title', '', 1, 1, 1, 0, '{"name":"mod_title","type":"module","creationDate":"Nov 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_TITLE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(312, 'mod_toolbar', 'module', 'mod_toolbar', '', 1, 1, 1, 1, '{"name":"mod_toolbar","type":"module","creationDate":"Nov 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_TOOLBAR_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(313, 'mod_multilangstatus', 'module', 'mod_multilangstatus', '', 1, 1, 1, 0, '{"name":"mod_multilangstatus","type":"module","creationDate":"September 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_MULTILANGSTATUS_XML_DESCRIPTION","group":""}', '{"cache":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(314, 'mod_version', 'module', 'mod_version', '', 1, 1, 1, 0, '{"name":"mod_version","type":"module","creationDate":"January 2012","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_VERSION_XML_DESCRIPTION","group":""}', '{"format":"short","product":"1","cache":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(315, 'mod_stats_admin', 'module', 'mod_stats_admin', '', 1, 1, 1, 0, '{"name":"mod_stats_admin","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_STATS_XML_DESCRIPTION","group":""}', '{"serverinfo":"0","siteinfo":"0","counter":"0","increase":"0","cache":"1","cache_time":"900","cachemode":"static"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(316, 'mod_tags_popular', 'module', 'mod_tags_popular', '', 0, 1, 1, 0, '{"name":"mod_tags_popular","type":"module","creationDate":"January 2013","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.1.0","description":"MOD_TAGS_POPULAR_XML_DESCRIPTION","group":""}', '{"maximum":"5","timeframe":"alltime","owncache":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(317, 'mod_tags_similar', 'module', 'mod_tags_similar', '', 0, 1, 1, 0, '{"name":"mod_tags_similar","type":"module","creationDate":"January 2013","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.1.0","description":"MOD_TAGS_SIMILAR_XML_DESCRIPTION","group":""}', '{"maximum":"5","matchtype":"any","owncache":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(400, 'plg_authentication_gmail', 'plugin', 'gmail', 'authentication', 0, 0, 1, 0, '{"name":"plg_authentication_gmail","type":"plugin","creationDate":"February 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_GMAIL_XML_DESCRIPTION","group":""}', '{"applysuffix":"0","suffix":"","verifypeer":"1","user_blacklist":""}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(401, 'plg_authentication_joomla', 'plugin', 'joomla', 'authentication', 0, 1, 1, 1, '{"name":"plg_authentication_joomla","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_AUTH_JOOMLA_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(402, 'plg_authentication_ldap', 'plugin', 'ldap', 'authentication', 0, 0, 1, 0, '{"name":"plg_authentication_ldap","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_LDAP_XML_DESCRIPTION","group":""}', '{"host":"","port":"389","use_ldapV3":"0","negotiate_tls":"0","no_referrals":"0","auth_method":"bind","base_dn":"","search_string":"","users_dn":"","username":"admin","password":"bobby7","ldap_fullname":"fullName","ldap_email":"mail","ldap_uid":"uid"}', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(403, 'plg_content_contact', 'plugin', 'contact', 'content', 0, 1, 1, 0, '{"name":"plg_content_contact","type":"plugin","creationDate":"January 2014","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.2","description":"PLG_CONTENT_CONTACT_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(404, 'plg_content_emailcloak', 'plugin', 'emailcloak', 'content', 0, 1, 1, 0, '{"name":"plg_content_emailcloak","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CONTENT_EMAILCLOAK_XML_DESCRIPTION","group":""}', '{"mode":"1"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(406, 'plg_content_loadmodule', 'plugin', 'loadmodule', 'content', 0, 1, 1, 0, '{"name":"plg_content_loadmodule","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_LOADMODULE_XML_DESCRIPTION","group":""}', '{"style":"xhtml"}', '', '', 0, '2011-09-18 15:22:50', 0, 0),
(407, 'plg_content_pagebreak', 'plugin', 'pagebreak', 'content', 0, 1, 1, 0, '{"name":"plg_content_pagebreak","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CONTENT_PAGEBREAK_XML_DESCRIPTION","group":""}', '{"title":"1","multipage_toc":"1","showall":"1"}', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(408, 'plg_content_pagenavigation', 'plugin', 'pagenavigation', 'content', 0, 1, 1, 0, '{"name":"plg_content_pagenavigation","type":"plugin","creationDate":"January 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_PAGENAVIGATION_XML_DESCRIPTION","group":""}', '{"position":"1"}', '', '', 0, '0000-00-00 00:00:00', 5, 0),
(409, 'plg_content_vote', 'plugin', 'vote', 'content', 0, 1, 1, 0, '{"name":"plg_content_vote","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_VOTE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 6, 0),
(410, 'plg_editors_codemirror', 'plugin', 'codemirror', 'editors', 0, 1, 1, 1, '{"name":"plg_editors_codemirror","type":"plugin","creationDate":"28 March 2011","author":"Marijn Haverbeke","copyright":"","authorEmail":"N\\/A","authorUrl":"","version":"3.15","description":"PLG_CODEMIRROR_XML_DESCRIPTION","group":""}', '{"lineNumbers":"1","lineWrapping":"1","matchTags":"1","matchBrackets":"1","marker-gutter":"1","autoCloseTags":"1","autoCloseBrackets":"1","autoFocus":"1","theme":"default","tabmode":"indent"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(411, 'plg_editors_none', 'plugin', 'none', 'editors', 0, 1, 1, 1, '{"name":"plg_editors_none","type":"plugin","creationDate":"August 2004","author":"Unknown","copyright":"","authorEmail":"N\\/A","authorUrl":"","version":"3.0.0","description":"PLG_NONE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(412, 'plg_editors_tinymce', 'plugin', 'tinymce', 'editors', 0, 1, 1, 0, '{"name":"plg_editors_tinymce","type":"plugin","creationDate":"2005-2013","author":"Moxiecode Systems AB","copyright":"Moxiecode Systems AB","authorEmail":"N\\/A","authorUrl":"tinymce.moxiecode.com","version":"4.0.22","description":"PLG_TINY_XML_DESCRIPTION","group":""}', '{"mode":"1","skin":"0","mobile":"0","entity_encoding":"raw","lang_mode":"1","text_direction":"ltr","content_css":"1","content_css_custom":"","relative_urls":"1","newlines":"0","invalid_elements":"script,applet,iframe","extended_elements":"","html_height":"550","html_width":"750","resizing":"1","element_path":"1","fonts":"1","paste":"1","searchreplace":"1","insertdate":"1","colors":"1","table":"1","smilies":"1","hr":"1","link":"1","media":"1","print":"1","directionality":"1","fullscreen":"1","alignment":"1","visualchars":"1","visualblocks":"1","nonbreaking":"1","template":"1","blockquote":"1","wordcount":"1","advlist":"1","autosave":"1","contextmenu":"1","inlinepopups":"1","custom_plugin":"","custom_button":""}', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(413, 'plg_editors-xtd_article', 'plugin', 'article', 'editors-xtd', 0, 1, 1, 1, '{"name":"plg_editors-xtd_article","type":"plugin","creationDate":"October 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_ARTICLE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(414, 'plg_editors-xtd_image', 'plugin', 'image', 'editors-xtd', 0, 1, 1, 0, '{"name":"plg_editors-xtd_image","type":"plugin","creationDate":"August 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_IMAGE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(415, 'plg_editors-xtd_pagebreak', 'plugin', 'pagebreak', 'editors-xtd', 0, 1, 1, 0, '{"name":"plg_editors-xtd_pagebreak","type":"plugin","creationDate":"August 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_EDITORSXTD_PAGEBREAK_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(416, 'plg_editors-xtd_readmore', 'plugin', 'readmore', 'editors-xtd', 0, 1, 1, 0, '{"name":"plg_editors-xtd_readmore","type":"plugin","creationDate":"March 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_READMORE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 4, 0);
INSERT INTO `iwk5c_extensions` (`extension_id`, `name`, `type`, `element`, `folder`, `client_id`, `enabled`, `access`, `protected`, `manifest_cache`, `params`, `custom_data`, `system_data`, `checked_out`, `checked_out_time`, `ordering`, `state`) VALUES
(417, 'plg_search_categories', 'plugin', 'categories', 'search', 0, 1, 1, 0, '{"name":"plg_search_categories","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEARCH_CATEGORIES_XML_DESCRIPTION","group":""}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(418, 'plg_search_contacts', 'plugin', 'contacts', 'search', 0, 1, 1, 0, '{"name":"plg_search_contacts","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEARCH_CONTACTS_XML_DESCRIPTION","group":""}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(419, 'plg_search_content', 'plugin', 'content', 'search', 0, 1, 1, 0, '{"name":"plg_search_content","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEARCH_CONTENT_XML_DESCRIPTION","group":""}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(420, 'plg_search_newsfeeds', 'plugin', 'newsfeeds', 'search', 0, 1, 1, 0, '{"name":"plg_search_newsfeeds","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEARCH_NEWSFEEDS_XML_DESCRIPTION","group":""}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(421, 'plg_search_weblinks', 'plugin', 'weblinks', 'search', 0, 1, 1, 0, '{"name":"plg_search_weblinks","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEARCH_WEBLINKS_XML_DESCRIPTION","group":""}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(422, 'plg_system_languagefilter', 'plugin', 'languagefilter', 'system', 0, 0, 1, 1, '{"name":"plg_system_languagefilter","type":"plugin","creationDate":"July 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SYSTEM_LANGUAGEFILTER_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(423, 'plg_system_p3p', 'plugin', 'p3p', 'system', 0, 1, 1, 0, '{"name":"plg_system_p3p","type":"plugin","creationDate":"September 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_P3P_XML_DESCRIPTION","group":""}', '{"headers":"NOI ADM DEV PSAi COM NAV OUR OTRo STP IND DEM"}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(424, 'plg_system_cache', 'plugin', 'cache', 'system', 0, 0, 1, 1, '{"name":"plg_system_cache","type":"plugin","creationDate":"February 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CACHE_XML_DESCRIPTION","group":""}', '{"browsercache":"0","cachetime":"15"}', '', '', 0, '0000-00-00 00:00:00', 9, 0),
(425, 'plg_system_debug', 'plugin', 'debug', 'system', 0, 1, 1, 0, '{"name":"plg_system_debug","type":"plugin","creationDate":"December 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_DEBUG_XML_DESCRIPTION","group":""}', '{"profile":"1","queries":"1","memory":"1","language_files":"1","language_strings":"1","strip-first":"1","strip-prefix":"","strip-suffix":""}', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(426, 'plg_system_log', 'plugin', 'log', 'system', 0, 1, 1, 1, '{"name":"plg_system_log","type":"plugin","creationDate":"April 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_LOG_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 5, 0),
(427, 'plg_system_redirect', 'plugin', 'redirect', 'system', 0, 0, 1, 1, '{"name":"plg_system_redirect","type":"plugin","creationDate":"April 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_REDIRECT_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 6, 0),
(428, 'plg_system_remember', 'plugin', 'remember', 'system', 0, 1, 1, 1, '{"name":"plg_system_remember","type":"plugin","creationDate":"April 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_REMEMBER_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 7, 0),
(429, 'plg_system_sef', 'plugin', 'sef', 'system', 0, 1, 1, 0, '{"name":"plg_system_sef","type":"plugin","creationDate":"December 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEF_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 8, 0),
(430, 'plg_system_logout', 'plugin', 'logout', 'system', 0, 1, 1, 1, '{"name":"plg_system_logout","type":"plugin","creationDate":"April 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SYSTEM_LOGOUT_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(431, 'plg_user_contactcreator', 'plugin', 'contactcreator', 'user', 0, 0, 1, 0, '{"name":"plg_user_contactcreator","type":"plugin","creationDate":"August 2009","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CONTACTCREATOR_XML_DESCRIPTION","group":""}', '{"autowebpage":"","category":"34","autopublish":"0"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(432, 'plg_user_joomla', 'plugin', 'joomla', 'user', 0, 1, 1, 0, '{"name":"plg_user_joomla","type":"plugin","creationDate":"December 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2009 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_USER_JOOMLA_XML_DESCRIPTION","group":""}', '{"strong_passwords":"1","autoregister":"1"}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(433, 'plg_user_profile', 'plugin', 'profile', 'user', 0, 0, 1, 0, '{"name":"plg_user_profile","type":"plugin","creationDate":"January 2008","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_USER_PROFILE_XML_DESCRIPTION","group":""}', '{"register-require_address1":"1","register-require_address2":"1","register-require_city":"1","register-require_region":"1","register-require_country":"1","register-require_postal_code":"1","register-require_phone":"1","register-require_website":"1","register-require_favoritebook":"1","register-require_aboutme":"1","register-require_tos":"1","register-require_dob":"1","profile-require_address1":"1","profile-require_address2":"1","profile-require_city":"1","profile-require_region":"1","profile-require_country":"1","profile-require_postal_code":"1","profile-require_phone":"1","profile-require_website":"1","profile-require_favoritebook":"1","profile-require_aboutme":"1","profile-require_tos":"1","profile-require_dob":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(434, 'plg_extension_joomla', 'plugin', 'joomla', 'extension', 0, 1, 1, 1, '{"name":"plg_extension_joomla","type":"plugin","creationDate":"May 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_EXTENSION_JOOMLA_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(435, 'plg_content_joomla', 'plugin', 'joomla', 'content', 0, 1, 1, 0, '{"name":"plg_content_joomla","type":"plugin","creationDate":"November 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CONTENT_JOOMLA_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(436, 'plg_system_languagecode', 'plugin', 'languagecode', 'system', 0, 0, 1, 0, '{"name":"plg_system_languagecode","type":"plugin","creationDate":"November 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SYSTEM_LANGUAGECODE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 10, 0),
(437, 'plg_quickicon_joomlaupdate', 'plugin', 'joomlaupdate', 'quickicon', 0, 1, 1, 1, '{"name":"plg_quickicon_joomlaupdate","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_QUICKICON_JOOMLAUPDATE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(438, 'plg_quickicon_extensionupdate', 'plugin', 'extensionupdate', 'quickicon', 0, 1, 1, 1, '{"name":"plg_quickicon_extensionupdate","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_QUICKICON_EXTENSIONUPDATE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(439, 'plg_captcha_recaptcha', 'plugin', 'recaptcha', 'captcha', 0, 0, 1, 0, '{"name":"plg_captcha_recaptcha","type":"plugin","creationDate":"December 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CAPTCHA_RECAPTCHA_XML_DESCRIPTION","group":""}', '{"public_key":"","private_key":"","theme":"clean"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(440, 'plg_system_highlight', 'plugin', 'highlight', 'system', 0, 1, 1, 0, '{"name":"plg_system_highlight","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SYSTEM_HIGHLIGHT_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 7, 0),
(441, 'plg_content_finder', 'plugin', 'finder', 'content', 0, 0, 1, 0, '{"name":"plg_content_finder","type":"plugin","creationDate":"December 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CONTENT_FINDER_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(442, 'plg_finder_categories', 'plugin', 'categories', 'finder', 0, 1, 1, 0, '{"name":"plg_finder_categories","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_FINDER_CATEGORIES_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(443, 'plg_finder_contacts', 'plugin', 'contacts', 'finder', 0, 1, 1, 0, '{"name":"plg_finder_contacts","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_FINDER_CONTACTS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(444, 'plg_finder_content', 'plugin', 'content', 'finder', 0, 1, 1, 0, '{"name":"plg_finder_content","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_FINDER_CONTENT_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(445, 'plg_finder_newsfeeds', 'plugin', 'newsfeeds', 'finder', 0, 1, 1, 0, '{"name":"plg_finder_newsfeeds","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_FINDER_NEWSFEEDS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(446, 'plg_finder_weblinks', 'plugin', 'weblinks', 'finder', 0, 1, 1, 0, '{"name":"plg_finder_weblinks","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_FINDER_WEBLINKS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 5, 0),
(447, 'plg_finder_tags', 'plugin', 'tags', 'finder', 0, 1, 1, 0, '{"name":"plg_finder_tags","type":"plugin","creationDate":"February 2013","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_FINDER_TAGS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(448, 'plg_twofactorauth_totp', 'plugin', 'totp', 'twofactorauth', 0, 0, 1, 0, '{"name":"plg_twofactorauth_totp","type":"plugin","creationDate":"August 2013","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.0","description":"PLG_TWOFACTORAUTH_TOTP_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(449, 'plg_authentication_cookie', 'plugin', 'cookie', 'authentication', 0, 1, 1, 0, '{"name":"plg_authentication_cookie","type":"plugin","creationDate":"July 2013","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_AUTH_COOKIE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(450, 'plg_twofactorauth_yubikey', 'plugin', 'yubikey', 'twofactorauth', 0, 0, 1, 0, '{"name":"plg_twofactorauth_yubikey","type":"plugin","creationDate":"September 2013","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.0","description":"PLG_TWOFACTORAUTH_YUBIKEY_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(451, 'plg_search_tags', 'plugin', 'tags', 'search', 0, 1, 1, 0, '{"name":"plg_search_tags","type":"plugin","creationDate":"March 2014","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEARCH_TAGS_XML_DESCRIPTION","group":""}', '{"search_limit":"50","show_tagged_items":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(503, 'beez3', 'template', 'beez3', '', 0, 1, 1, 0, '{"name":"beez3","type":"template","creationDate":"25 November 2009","author":"Angie Radtke","copyright":"Copyright (C) 2005 - 2014 Open Source Matters, Inc. All rights reserved.","authorEmail":"a.radtke@derauftritt.de","authorUrl":"http:\\/\\/www.der-auftritt.de","version":"3.1.0","description":"TPL_BEEZ3_XML_DESCRIPTION","group":""}', '{"wrapperSmall":"53","wrapperLarge":"72","sitetitle":"","sitedescription":"","navposition":"center","templatecolor":"nature"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(504, 'hathor', 'template', 'hathor', '', 1, 1, 1, 0, '{"name":"hathor","type":"template","creationDate":"May 2010","author":"Andrea Tarr","copyright":"Copyright (C) 2005 - 2014 Open Source Matters, Inc. All rights reserved.","authorEmail":"hathor@tarrconsulting.com","authorUrl":"http:\\/\\/www.tarrconsulting.com","version":"3.0.0","description":"TPL_HATHOR_XML_DESCRIPTION","group":""}', '{"showSiteName":"0","colourChoice":"0","boldText":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(506, 'protostar', 'template', 'protostar', '', 0, 1, 1, 0, '{"name":"protostar","type":"template","creationDate":"4\\/30\\/2012","author":"Kyle Ledbetter","copyright":"Copyright (C) 2005 - 2014 Open Source Matters, Inc. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"","version":"1.0","description":"TPL_PROTOSTAR_XML_DESCRIPTION","group":""}', '{"templateColor":"","logoFile":"","googleFont":"1","googleFontName":"Open+Sans","fluidContainer":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(507, 'isis', 'template', 'isis', '', 1, 1, 1, 0, '{"name":"isis","type":"template","creationDate":"3\\/30\\/2012","author":"Kyle Ledbetter","copyright":"Copyright (C) 2005 - 2014 Open Source Matters, Inc. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"","version":"1.0","description":"TPL_ISIS_XML_DESCRIPTION","group":""}', '{"templateColor":"","logoFile":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(600, 'English (United Kingdom)', 'language', 'en-GB', '', 0, 1, 1, 1, '{"name":"English (United Kingdom)","type":"language","creationDate":"2013-03-07","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.3.1","description":"en-GB site language","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(601, 'English (United Kingdom)', 'language', 'en-GB', '', 1, 1, 1, 1, '{"name":"English (United Kingdom)","type":"language","creationDate":"2013-03-07","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.3.1","description":"en-GB administrator language","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(700, 'files_joomla', 'file', 'joomla', '', 0, 1, 1, 1, '{"name":"files_joomla","type":"file","creationDate":"June 2014","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.3.1","description":"FILES_JOOMLA_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(701, 'frontend', 'template', 'frontend', '', 0, 1, 1, 0, '{"name":"frontend","type":"template","creationDate":"xxxx-xx-xx","author":"your name","copyright":"Copyright \\u00a9 xxxx example.com","authorEmail":"your.name@example.com","authorUrl":"http:\\/\\/www.example.com","version":"1.0.0","description":" \\n\\t\\t<h1>frontend<\\/h1>\\n\\t\\t<p>Created by <a href=\\"http:\\/\\/www.example.com\\" target=\\"_blank\\">your name | example.com<\\/a>.<\\/p>\\n\\t","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(702, 'frontend', 'template', 'frontend', '', 0, 1, 1, 0, '{"name":"frontend","type":"template","creationDate":"xxxx-xx-xx","author":"your name","copyright":"Copyright \\u00a9 xxxx example.com","authorEmail":"your.name@example.com","authorUrl":"http:\\/\\/www.example.com","version":"1.0.0","description":" \\n\\t\\t<h1>frontend<\\/h1>\\n\\t\\t<p>Created by <a href=\\"http:\\/\\/www.example.com\\" target=\\"_blank\\">your name | example.com<\\/a>.<\\/p>\\n\\t","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(703, 'JSN_Dome_FREE', 'template', 'jsn_dome_free', '', 0, 1, 1, 0, '{"name":"JSN_Dome_FREE","type":"template","creationDate":"June 2010","author":"JoomlaShine.com","copyright":"Copyright (c) 2008 - 2010 - JoomlaShine.com","authorEmail":"support@joomlashine.com","authorUrl":"http:\\/\\/www.joomlashine.com","version":"1.4.2","description":"TEMPLATE_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(704, 'imageshow', 'component', 'com_imageshow', '', 1, 1, 0, 0, '{"name":"ImageShow","type":"component","creationDate":"04\\/25\\/2014","author":"JoomlaShine.com","copyright":"Copyright (c) 2008 - 2013 - JoomlaShine.com","authorEmail":"admin@joomlashine.com","authorUrl":"http:\\/\\/www.joomlashine.com","version":"4.8.5","description":"JSN IMAGESHOW FREE","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(705, 'Content - JSN ImageShow', 'plugin', 'imageshow', 'content', 0, 1, 1, 1, '{"name":"Content - JSN ImageShow","type":"plugin","creationDate":"04/25/2014","author":"JoomlaShine.com","copyright":"Copyright (c) 2008 - 2013 - JoomlaShine.com","authorEmail":"admin@joomlashine.com","authorUrl":"http://www.joomlashine.com","version":"4.8.5","description":"JSN_IMAGESHOW_CONTENT_PLUGIN","group":"","dependency":["imageshow"]}', '{"imageshow":"imageshow"}', '["imageshow"]', '', 0, '0000-00-00 00:00:00', 0, 0),
(706, 'System - JSN ImageShow', 'plugin', 'imageshow', 'system', 0, 1, 1, 1, '{"name":"System - JSN ImageShow","type":"plugin","creationDate":"04/25/2014","author":"JoomlaShine.com","copyright":"Copyright (c) 2008 - 2013 - JoomlaShine.com","authorEmail":"admin@joomlashine.com","authorUrl":"http://www.joomlashine.com","version":"4.8.5","description":"JSN_IMAGESHOW_SYSTEM_PLUGIN","group":"","dependency":["imageshow"]}', '{"imageshow":"imageshow"}', '["imageshow"]', '', 0, '0000-00-00 00:00:00', 0, 0),
(707, 'Button - ImageShow', 'plugin', 'imageshow', 'editors-xtd', 0, 1, 1, 1, '{"name":"Button - ImageShow","type":"plugin","creationDate":"04/25/2014","author":"JoomlaShine.com","copyright":"Copyright (c) 2008 - 2013 - JoomlaShine.com","authorEmail":"admin@joomlashine.com","authorUrl":"http://www.joomlashine.com","version":"4.8.5","description":"PLG_EDITOR_JSN_IMAGESHOW_XML_DESCRIPTION","group":"","dependency":["imageshow"]}', '{"imageshow":"imageshow"}', '["imageshow"]', '', 0, '0000-00-00 00:00:00', 0, 0),
(708, 'JSN ImageShow', 'module', 'mod_imageshow', '', 0, 1, 0, 1, '{"name":"JSN ImageShow","type":"module","creationDate":"04/25/2014","author":"JoomlaShine.com","copyright":"Copyright (c) 2008 - 2013 - JoomlaShine.com","authorEmail":"admin@joomlashine.com","authorUrl":"http://www.joomlashine.com","version":"4.8.5","description":"JSN_MODULE_JSN_IMAGESHOW_MODULE","group":"","dependency":["imageshow"]}', '{"imageshow":"imageshow"}', '["imageshow"]', '', 0, '0000-00-00 00:00:00', 0, 0),
(709, 'JSN ImageShow Quick Icons', 'module', 'mod_imageshow_quickicon', '', 1, 1, 2, 1, '{"name":"JSN ImageShow Quick Icons","type":"module","creationDate":"04/25/2014","author":"JoomlaShine.com","copyright":"Copyright (c) 2008 - 2013 - JoomlaShine.com","authorEmail":"admin@joomlashine.com","authorUrl":"www.joomlashine.com","version":"4.8.5","description":"Quick access icon to reach JSN ImageShow Launch Pad","group":"","dependency":["imageshow"]}', '{"imageshow":"imageshow"}', '["imageshow"]', '', 0, '0000-00-00 00:00:00', 0, 0),
(710, 'plg_system_jsnframework', 'plugin', 'jsnframework', 'system', 0, 1, 1, 1, '{"name":"plg_system_jsnframework","type":"plugin","creationDate":"03/06/2014","author":"JoomlaShine.com","copyright":"Copyright (C) 2013 JoomlaShine.com. All Rights Reserved.","authorEmail":"admin@joomlashine.com","authorUrl":"www.joomlashine.com","version":"1.4.2","description":"PLG_SYSTEM_JSNFRAMEWORK_XML_DESCRIPTION","group":"","dependency":["imageshow"]}', '{"imageshow":"imageshow"}', '["imageshow"]', '', 0, '0000-00-00 00:00:00', -9999, 0),
(711, 'Source Picasa', 'plugin', 'sourcepicasa', 'jsnimageshow', 0, 1, 1, 1, '{"name":"Source Picasa","type":"plugin","creationDate":"03/27/2014","author":"JoomlaShine.com","copyright":"Copyright (c) 2008 - 2013 - JoomlaShine.com","authorEmail":"admin@joomlashine.com","authorUrl":"http://www.joomlashine.com","version":"1.1.6","description":"JSN IMAGESHOW IMAGE SOURCE PICASA","group":"","dependency":["imageshow"]}', '{"imageshow":"imageshow"}', '["imageshow"]', '', 0, '0000-00-00 00:00:00', 0, 0),
(712, 'Theme Classic', 'plugin', 'themeclassic', 'jsnimageshow', 0, 1, 1, 1, '{"name":"Theme Classic","type":"plugin","creationDate":"04/25/2014","author":"JoomlaShine.com","copyright":"Copyright (c) 2008 - 2013 - JoomlaShine.com","authorEmail":"admin@joomlashine.com","authorUrl":"http://www.joomlashine.com","version":"1.3.1","description":"JSN IMAGESHOW SHOWCASE THEME CLASSIC PLUGIN","group":"","dependency":["imageshow"]}', '{"imageshow":"imageshow"}', '["imageshow"]', '', 0, '0000-00-00 00:00:00', 0, 0),
(713, 'com_phocagallery', 'component', 'com_phocagallery', '', 1, 1, 0, 0, '{"name":"com_phocagallery","type":"component","creationDate":"28\\/04\\/2014","author":"Jan Pavelka (www.phoca.cz)","copyright":"Jan Pavelka","authorEmail":"","authorUrl":"www.phoca.cz","version":"4.1.1","description":"Phoca Gallery","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(714, 'Theme Slider', 'plugin', 'themeslider', 'jsnimageshow', 0, 1, 1, 1, '{"name":"Theme Slider","type":"plugin","creationDate":"03\\/27\\/2014","author":"JoomlaShine.com","copyright":"Copyright (c) 2008 - 2013 - JoomlaShine.com","authorEmail":"admin@joomlashine.com","authorUrl":"http:\\/\\/www.joomlashine.com","version":"1.1.8","description":"JSN IMAGESHOW SHOWCASE THEME SLIDER PLUGIN","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(715, 'mod_phocagallery_image', 'module', 'mod_phocagallery_image', '', 0, 1, 0, 0, '{"name":"mod_phocagallery_image","type":"module","creationDate":"21\\/07\\/2013","author":"Jan Pavelka (www.phoca.cz)","copyright":"Jan Pavelka","authorEmail":"","authorUrl":"www.phoca.cz","version":"4.0.0","description":"MOD_PHOCAGALLERY_IMAGE_DESCRIPTION","group":""}', '{"phocahead1":"MOD_PHOCAGALLERY_IMAGE_CONFIG_GENERAL_SETTINGS_LABEL","category_id":"0","image_ordering":"1","limit_start":"0","limit_count":"1","module_link":"0","phocahead2":"MOD_PHOCAGALLERY_IMAGE_CONFIG_DESIGN_SETTINGS_LABEL","module_type":"shadow1","image_size":"auto","font_color":"#b36b00","display_name":"1","display_icon_detail":"1","display_icon_download":"2","font_size_name":"12","char_length_name":"15","category_box_space":"0","padding_mosaic":"3","custom_image_width":"","custom_image_height":"","minimum_box_width":"","phocagallery_module_width":"","phocahead3":"MOD_PHOCAGALLERY_IMAGE_CONFIG_DEFAULT_DESCRIPTION_SETTINGS_LABEL","spacer4":"MOD_PHOCAGALLERY_IMAGE_DETAIL_WINDOW_WARNING","detail_window":"0","modal_box_overlay_color":"#000000","modal_box_overlay_opacity":"0.3","modal_box_border_color":"#6b6b6b","modal_box_border_width":"2","sb_slideshow_delay":"5","highslide_class":"rounded-white","highslide_opacity":"0","highslide_outline_type":"rounded-white","highslide_fullimg":"0","highslide_close_button":"0","highslide_slideshow":"1","highslide_description":"1","jak_slideshow_delay":"5","spacer10":"MOD_PHOCAGALLERY_IMAGE_JAK_LIGHTBOX_ORIENTATION_WARNING","jak_orientation":"none","jak_description":"1","jak_description_height":"10","display_description_detail":"0","display_title_description":"0","detail_buttons":"1","cache":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(716, 'CEGCore', 'library', 'cegcore', '', 0, 1, 1, 0, '{"name":"CEGCore","type":"library","creationDate":"01.2014","author":"ChronoEngine.com","copyright":"Copyright (C) 2013","authorEmail":"webmaster@chronoengine.com","authorUrl":"www.chronoengine.com","version":"1.0","description":"The GCore framework classes!","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(717, 'com_chronoforms5', 'component', 'com_chronoforms5', '', 1, 1, 0, 0, '{"name":"com_chronoforms5","type":"component","creationDate":"6.June.2014","author":"Chronoman","copyright":"ChronoEngine.com 2014","authorEmail":"webmaster@chronoengine.com","authorUrl":"www.chronoengine.com","version":"5.0.0","description":"The ChronoForms V5 component is the ultimate tool for Joomla forms creation, power and simplicity.","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(718, 'ChronoForms5', 'module', 'mod_chronoforms5', '', 0, 1, 0, 0, '{"name":"ChronoForms5","type":"module","creationDate":"December 2013","author":"ChronoEngine.com","copyright":"Copyright (C) 2006 - 2013 ChronoEngine.com. All rights reserved.","authorEmail":"webmaster@chronoengine.com","authorUrl":"www.chronoengine.com","version":"V5 RC1.2","description":"Show a Chronoform V5","group":""}', '{"cache":"0","chronoform":"","moduleclass_sfx":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(719, 'visforms', 'component', 'com_visforms', '', 1, 1, 0, 0, '{"name":"visforms","type":"component","creationDate":"Januar 2014","author":"Aicha Vack","copyright":"Copyright 2012 vi-solutions","authorEmail":"contact@vis-solutions.de","authorUrl":"http:\\/\\/www.vi-solutions.de","version":"3.0.0","description":"COM_VISFORMS_DESC","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(720, 'Content - Visforms', 'plugin', 'visforms', 'content', 0, 1, 1, 0, '{"name":"Content - Visforms","type":"plugin","creationDate":"September 2013","author":"Aicha Vack","copyright":"Copyright (C) 2013 vi-solutions. All rights reserved.","authorEmail":"contact@vi-solutions.de","authorUrl":"vi-solutions.de","version":"3.0.0","description":"PLG_CONTENT_VISFORMS_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(721, 'plg_visforms_spambotcheck', 'plugin', 'spambotcheck', 'visforms', 0, 1, 1, 0, '{"name":"plg_visforms_spambotcheck","type":"plugin","creationDate":"April 2013","author":"Aicha Vack","copyright":"Copyright (C) vi-solutions e. Kfr. All rights reserved.","authorEmail":"conctact@vi-solutions.de","authorUrl":"http:\\/\\/www.vi-solutions.de","version":"3.0.0","description":"PLG_VISFORMS_SPAMBOTCHECK_XML_DESCRIPTION","group":""}', '{"spbot_check_ip":"1","spbot_check_email":"1","allow_generic_email_check":"0","spbot_whitelist_email":"","spbot_whitelist_ip":"","@spacer":"","spbot_log_to_db":"0","spbot_stopforumspam":"1","spbot_stopforumspam_max_allowed_frequency":"0","spbot_spambusted":"0","spbot_projecthoneypot_api_key":"","spbot_projecthoneypot_max_allowed_threat_rating":"0","spbot_sorbs":"1","spbot_spamcop":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(722, 'Visforms', 'module', 'mod_visforms', '', 0, 1, 0, 0, '{"name":"Visforms","type":"module","creationDate":"Mai 2013","author":"Aicha Vack","copyright":"Copyright (C) vi-solutions. All rights reserved.","authorEmail":"contact@vi-solutions.de","authorUrl":"www.vi-solutions.de","version":"3.0.0","description":"MOD_VISFORMS_DESCRIPTION","group":""}', '{"catid":"","show_title":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(723, 'T3 Framework', 'plugin', 't3', 'system', 0, 1, 1, 0, '{"name":"T3 Framework","type":"plugin","creationDate":"July 31, 2014","author":"JoomlArt.com","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"info@joomlart.com","authorUrl":"http:\\/\\/www.t3-framework.org","version":"2.3.1","description":"\\n\\t\\n\\t<div align=\\"center\\">\\n\\t\\t<div class=\\"alert alert-success\\" style=\\"background-color:#DFF0D8;border-color:#D6E9C6;color: #468847;padding: 1px 0;\\">\\n\\t\\t\\t\\t<a href=\\"http:\\/\\/t3-framework.org\\/\\"><img src=\\"http:\\/\\/joomlart.s3.amazonaws.com\\/images\\/jat3v3-documents\\/message-installation\\/logo.png\\" alt=\\"some_text\\" width=\\"300\\" height=\\"99\\"><\\/a>\\n\\t\\t\\t\\t<h4><a href=\\"http:\\/\\/t3-framework.org\\/\\" title=\\"\\">Home<\\/a> | <a href=\\"http:\\/\\/demo.t3-framework.org\\/\\" title=\\"\\">Demo<\\/a> | <a href=\\"http:\\/\\/t3-framework.org\\/documentation\\" title=\\"\\">Document<\\/a> | <a href=\\"https:\\/\\/github.com\\/t3framework\\/t3\\/blob\\/master\\/CHANGELOG.md\\" title=\\"\\">Changelog<\\/a><\\/h4>\\n\\t\\t<p> <\\/p>\\n\\t\\t<p>Copyright 2004 - 2014 <a href=''http:\\/\\/www.joomlart.com\\/'' title=''Visit Joomlart.com!''>JoomlArt.com<\\/a>.<\\/p>\\n\\t\\t<\\/div>\\n     <style>table.adminform{width: 100%;}<\\/style>\\n\\t <\\/div>\\n\\t\\t\\n\\t","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(724, 't3_blank', 'template', 't3_blank', '', 0, 1, 1, 0, '{"name":"t3_blank","type":"template","creationDate":"July 31 2014","author":"JoomlArt.com","copyright":"Copyright (C), J.O.O.M Solutions Co., Ltd. All Rights Reserved.","authorEmail":"webmaster@joomlart.com","authorUrl":"http:\\/\\/www.t3-framework.org","version":"2.1.6","description":"\\n\\t\\t\\n\\t\\t<div align=\\"center\\">\\n\\t\\t\\t<div class=\\"alert alert-success\\" style=\\"background-color:#DFF0D8;border-color:#D6E9C6;color: #468847;padding: 1px 0;\\">\\n\\t\\t\\t\\t<a href=\\"http:\\/\\/t3-framework.org\\/\\"><img src=\\"http:\\/\\/joomlart.s3.amazonaws.com\\/images\\/jat3v3-documents\\/message-installation\\/logo.png\\" alt=\\"some_text\\" width=\\"300\\" height=\\"99\\"><\\/a>\\n\\t\\t\\t\\t<h4><a href=\\"http:\\/\\/t3-framework.org\\/\\" title=\\"\\">Home<\\/a> | <a href=\\"http:\\/\\/demo.t3-framework.org\\/\\" title=\\"\\">Demo<\\/a> | <a href=\\"http:\\/\\/t3-framework.org\\/documentation\\" title=\\"\\">Document<\\/a> | <a href=\\"https:\\/\\/github.com\\/t3framework\\/t3\\/blob\\/master\\/CHANGELOG.md\\" title=\\"\\">Changelog<\\/a><\\/h4>\\n\\t\\t\\t\\t<p> <\\/p>\\n\\t\\t\\t\\t<span style=\\"color:#FF0000\\">Note: T3 blank requires T3 plugin to be installed and enabled.<\\/span><p><\\/p>\\n\\t\\t\\t\\t<p>Copyright 2004 - 2014 <a href=''http:\\/\\/www.joomlart.com\\/'' title=''Visit Joomlart.com!''>JoomlArt.com<\\/a>.<\\/p>\\n\\t\\t\\t<\\/div>\\n\\t\\t\\t<style>table.adminform{width: 100%;}<\\/style>\\n\\t\\t<\\/div>\\n\\t\\t\\n\\t","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(725, 't3_bs3_blank', 'template', 't3_bs3_blank', '', 0, 1, 1, 0, '{"name":"t3_bs3_blank","type":"template","creationDate":"July 31 2014","author":"JoomlArt.com","copyright":"Copyright (C), J.O.O.M Solutions Co., Ltd. All Rights Reserved.","authorEmail":"webmaster@joomlart.com","authorUrl":"http:\\/\\/www.t3-framework.org","version":"2.1.6","description":"\\n\\t\\t\\n\\t\\t<div align=\\"center\\">\\n\\t\\t\\t<div class=\\"alert alert-success\\" style=\\"background-color:#DFF0D8;border-color:#D6E9C6;color: #468847;padding: 1px 0;\\">\\n\\t\\t\\t\\t<a href=\\"http:\\/\\/t3-framework.org\\/\\"><img src=\\"http:\\/\\/joomlart.s3.amazonaws.com\\/images\\/jat3v3-documents\\/message-installation\\/logo.png\\" alt=\\"some_text\\" width=\\"300\\" height=\\"99\\"><\\/a>\\n\\t\\t\\t\\t<h4><a href=\\"http:\\/\\/t3-framework.org\\/\\" title=\\"\\">Home<\\/a> | <a href=\\"http:\\/\\/demo.t3-framework.org\\/\\" title=\\"\\">Demo<\\/a> | <a href=\\"http:\\/\\/t3-framework.org\\/documentation\\" title=\\"\\">Document<\\/a> | <a href=\\"https:\\/\\/github.com\\/t3framework\\/t3\\/blob\\/master\\/CHANGELOG.md\\" title=\\"\\">Changelog<\\/a><\\/h4>\\n\\t\\t\\t\\t<p> <\\/p>\\n\\t\\t\\t\\t<span style=\\"color:#FF0000\\">Note: T3 blank requires T3 plugin to be installed and enabled.<\\/span><p><\\/p>\\n\\t\\t\\t\\t<p>Copyright 2004 - 2014 <a href=''http:\\/\\/www.joomlart.com\\/'' title=''Visit Joomlart.com!''>JoomlArt.com<\\/a>.<\\/p>\\n\\t\\t\\t<\\/div>\\n\\t\\t\\t<style>table.adminform{width: 100%;}<\\/style>\\n\\t\\t<\\/div>\\n\\t\\t\\n\\t","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(726, 't3', 'package', 'pkg_t3', '', 0, 1, 1, 0, '{"name":"T3 Framework Package","type":"package","creationDate":"July 31, 2014","author":"t3-framework.org","copyright":"(C) 2012 - 2013. All rights reserved.","authorEmail":"support@t3-framework.org","authorUrl":"www.t3-framework.org","version":"2.3.1","description":"\\t\\n\\t\\n\\t<div align=\\"center\\">\\n\\t\\t<div class=\\"alert alert-success\\" style=\\"background-color:#DFF0D8;border-color:#D6E9C6;color: #468847;padding: 1px 0;\\">\\n\\t\\t\\t\\t<a href=\\"http:\\/\\/t3-framework.org\\/\\"><img src=\\"http:\\/\\/joomlart.s3.amazonaws.com\\/images\\/jat3v3-documents\\/message-installation\\/logo.png\\" alt=\\"some_text\\" width=\\"300\\" height=\\"99\\"><\\/a>\\n\\t\\t\\t\\t<h4><a href=\\"http:\\/\\/t3-framework.org\\/\\" title=\\"\\">Home<\\/a> | <a href=\\"http:\\/\\/demo.t3-framework.org\\/\\" title=\\"\\">Demo<\\/a> | <a href=\\"http:\\/\\/t3-framework.org\\/documentation\\" title=\\"\\">Document<\\/a> | <a href=\\"https:\\/\\/github.com\\/t3framework\\/t3\\/blob\\/master\\/CHANGELOG.md\\" title=\\"\\">Changelog<\\/a><\\/h4>\\n\\t\\t<p> <\\/p>\\n\\t\\t<p>Copyright 2004 - 2014 <a href=''http:\\/\\/www.joomlart.com\\/'' title=''Visit Joomlart.com!''>JoomlArt.com<\\/a>.<\\/p>\\n\\t\\t<\\/div>\\n     <style>table.adminform{width: 100%;}<\\/style>\\n\\t <\\/div>\\n\\t\\t\\n\\t","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(727, 'Blank Module', 'module', 'mod_blank250', '', 0, 1, 0, 0, '{"name":"Blank Module","type":"module","creationDate":"November 2013","author":"Bob Galway","copyright":"Copyright  Bob Galway. All rights reserved.","authorEmail":"reply@blackdale.com","authorUrl":"www.blackdale.com","version":"5.0.6","description":"BLANKMODULE250","group":""}', '{"codeeditor":"","textareause":"1","phpcode":"","phpuse":"1","script":"","scriptuse":"1","itemid":"a","contenttitleuse":"1","contentuse":"1","content1":"1","content2":"2","content3":"3","graphics":"2","bgpattern":"TinySquare2","colour1":"9CA5FF","trans1":"1","bordercol":"ACB5FF","bordersz":"4","shadcol":"444444","shadsz":"4","margin-leftmodule":"","paddingleft":"","paddingright":"","paddingtop":"","paddingbottom":"","margin-top":"","margin-bottom":"","width":"100","widthunit":"%","colour2":"","trans2":"1","moduleclass_sfx":"","modno_bm":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(728, 'com_mijopolls', 'component', 'com_mijopolls', '', 1, 1, 0, 0, '{"name":"COM_MIJOPOLLS","type":"component","creationDate":"October 2013","author":"Mijosoft LLC","copyright":"Copyright (C) Mijosoft LLC, mijosoft.com","authorEmail":"info@mijosoft.com","authorUrl":"http:\\/\\/mijosoft.com","version":"1.1.4","description":"MijoPolls is a simple and flexible component for voting. It shows vote results in 2 types, a nice pie chart or default Joomla way.","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(729, 'MijoPolls', 'module', 'mod_mijopolls', '', 0, 1, 0, 0, '{"name":"MijoPolls","type":"module","creationDate":"23 January 2011","author":"Mijosoft LLC","copyright":"2009-2011 Mijosoft LLC","authorEmail":"info@mijosoft.com","authorUrl":"www.mijosoft.com","version":"1.0.0","description":"MijoPolls module for voting","group":""}', '{"moduleclass_sfx":"","id":"","ajax":"0","show_poll_title":"1","only_one_color":"0","poll_bars_color":"cccccc","poll_bars_border_color":"cccccc","show_view_details":"1","show_rel_article":"1","rel_article":"http:\\/\\/www.mijosoft.com","rel_article_window":"_self","show_total":"1","show_msg":"1","show_detailed_msg":"1","msg_date_format":"F j, Y","cache":"1","cache_time":"900"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(730, 'Content - Load MijoPolls', 'plugin', 'mijopolls', 'content', 0, 0, 1, 0, '{"name":"Content - Load MijoPolls","type":"plugin","creationDate":"10 February 2011","author":"Mijosoft LLC","copyright":"2009-2011 Mijosoft LLC","authorEmail":"info@mijosoft.com","authorUrl":"www.mijosoft.com","version":"1.0.0","description":"Display any poll into any article by using this syntax: {mijopolls ID}","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(731, 'Search - MijoPolls', 'plugin', 'mijopollssearch', 'search', 0, 0, 1, 0, '{"name":"Search - MijoPolls","type":"plugin","creationDate":"10 February 2011","author":"Mijosoft LLC","copyright":"2009-2011 Mijosoft LLC","authorEmail":"info@mijosoft.com","authorUrl":"www.mijosoft.com","version":"1.0.0","description":"Search plugin for MijoPolls","group":""}', '{"search_limit":"50"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(732, 'MijoPolls - AlphaUserPoints', 'plugin', 'alphauserpoints', 'mijopolls', 0, 0, 1, 0, '{"name":"MijoPolls - AlphaUserPoints","type":"plugin","creationDate":"February 2011","author":"Mijosoft LLC","copyright":"(C) 2009-2011 Mijosoft LLC","authorEmail":"info@mijosoft.com","authorUrl":"www.mijosoft.com","version":"1.0.0","description":"MijoPolls - AlphaUserPoints plugin.","group":""}', '{"points":"0","points_value":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(733, 'MijoPolls - JomSocial', 'plugin', 'jomsocial', 'mijopolls', 0, 0, 1, 0, '{"name":"MijoPolls - JomSocial","type":"plugin","creationDate":"February 2011","author":"Mijosoft LLC","copyright":"(C) 2009-2011 Mijosoft LLC","authorEmail":"info@mijosoft.com","authorUrl":"www.mijosoft.com","version":"1.0.0","description":"MijoPolls - JomSocial plugin.","group":""}', '{"points":"0","activity":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(734, 'MijoPolls - Mighty Touch', 'plugin', 'mightytouch', 'mijopolls', 0, 0, 1, 0, '{"name":"MijoPolls - Mighty Touch","type":"plugin","creationDate":"February 2011","author":"Mijosoft LLC","copyright":"(C) 2009-2011 Mijosoft LLC","authorEmail":"info@mijosoft.com","authorUrl":"www.mijosoft.com","version":"1.0.0","description":"MijoPolls - Mighty Touch plugin.","group":""}', '{"points":"0","points_value":"0","activity":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `iwk5c_finder_filters`
--

CREATE TABLE IF NOT EXISTS `iwk5c_finder_filters` (
`filter_id` int(10) unsigned NOT NULL,
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `state` tinyint(1) NOT NULL DEFAULT '1',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL,
  `created_by_alias` varchar(255) NOT NULL,
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `map_count` int(10) unsigned NOT NULL DEFAULT '0',
  `data` text NOT NULL,
  `params` mediumtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `iwk5c_finder_links`
--

CREATE TABLE IF NOT EXISTS `iwk5c_finder_links` (
`link_id` int(10) unsigned NOT NULL,
  `url` varchar(255) NOT NULL,
  `route` varchar(255) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `indexdate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `md5sum` varchar(32) DEFAULT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `state` int(5) DEFAULT '1',
  `access` int(5) DEFAULT '0',
  `language` varchar(8) NOT NULL,
  `publish_start_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_end_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `start_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `end_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `list_price` double unsigned NOT NULL DEFAULT '0',
  `sale_price` double unsigned NOT NULL DEFAULT '0',
  `type_id` int(11) NOT NULL,
  `object` mediumblob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `iwk5c_finder_links_terms0`
--

CREATE TABLE IF NOT EXISTS `iwk5c_finder_links_terms0` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `iwk5c_finder_links_terms1`
--

CREATE TABLE IF NOT EXISTS `iwk5c_finder_links_terms1` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `iwk5c_finder_links_terms2`
--

CREATE TABLE IF NOT EXISTS `iwk5c_finder_links_terms2` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `iwk5c_finder_links_terms3`
--

CREATE TABLE IF NOT EXISTS `iwk5c_finder_links_terms3` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `iwk5c_finder_links_terms4`
--

CREATE TABLE IF NOT EXISTS `iwk5c_finder_links_terms4` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `iwk5c_finder_links_terms5`
--

CREATE TABLE IF NOT EXISTS `iwk5c_finder_links_terms5` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `iwk5c_finder_links_terms6`
--

CREATE TABLE IF NOT EXISTS `iwk5c_finder_links_terms6` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `iwk5c_finder_links_terms7`
--

CREATE TABLE IF NOT EXISTS `iwk5c_finder_links_terms7` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `iwk5c_finder_links_terms8`
--

CREATE TABLE IF NOT EXISTS `iwk5c_finder_links_terms8` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `iwk5c_finder_links_terms9`
--

CREATE TABLE IF NOT EXISTS `iwk5c_finder_links_terms9` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `iwk5c_finder_links_termsa`
--

CREATE TABLE IF NOT EXISTS `iwk5c_finder_links_termsa` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `iwk5c_finder_links_termsb`
--

CREATE TABLE IF NOT EXISTS `iwk5c_finder_links_termsb` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `iwk5c_finder_links_termsc`
--

CREATE TABLE IF NOT EXISTS `iwk5c_finder_links_termsc` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `iwk5c_finder_links_termsd`
--

CREATE TABLE IF NOT EXISTS `iwk5c_finder_links_termsd` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `iwk5c_finder_links_termse`
--

CREATE TABLE IF NOT EXISTS `iwk5c_finder_links_termse` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `iwk5c_finder_links_termsf`
--

CREATE TABLE IF NOT EXISTS `iwk5c_finder_links_termsf` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `iwk5c_finder_taxonomy`
--

CREATE TABLE IF NOT EXISTS `iwk5c_finder_taxonomy` (
`id` int(10) unsigned NOT NULL,
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL,
  `state` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `access` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ordering` tinyint(1) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `iwk5c_finder_taxonomy`
--

INSERT INTO `iwk5c_finder_taxonomy` (`id`, `parent_id`, `title`, `state`, `access`, `ordering`) VALUES
(1, 0, 'ROOT', 0, 0, 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `iwk5c_finder_taxonomy_map`
--

CREATE TABLE IF NOT EXISTS `iwk5c_finder_taxonomy_map` (
  `link_id` int(10) unsigned NOT NULL,
  `node_id` int(10) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `iwk5c_finder_terms`
--

CREATE TABLE IF NOT EXISTS `iwk5c_finder_terms` (
`term_id` int(10) unsigned NOT NULL,
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `weight` float unsigned NOT NULL DEFAULT '0',
  `soundex` varchar(75) NOT NULL,
  `links` int(10) NOT NULL DEFAULT '0',
  `language` char(3) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `iwk5c_finder_terms_common`
--

CREATE TABLE IF NOT EXISTS `iwk5c_finder_terms_common` (
  `term` varchar(75) NOT NULL,
  `language` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `iwk5c_finder_terms_common`
--

INSERT INTO `iwk5c_finder_terms_common` (`term`, `language`) VALUES
('a', 'en'),
('about', 'en'),
('after', 'en'),
('ago', 'en'),
('all', 'en'),
('am', 'en'),
('an', 'en'),
('and', 'en'),
('ani', 'en'),
('any', 'en'),
('are', 'en'),
('aren''t', 'en'),
('as', 'en'),
('at', 'en'),
('be', 'en'),
('but', 'en'),
('by', 'en'),
('for', 'en'),
('from', 'en'),
('get', 'en'),
('go', 'en'),
('how', 'en'),
('if', 'en'),
('in', 'en'),
('into', 'en'),
('is', 'en'),
('isn''t', 'en'),
('it', 'en'),
('its', 'en'),
('me', 'en'),
('more', 'en'),
('most', 'en'),
('must', 'en'),
('my', 'en'),
('new', 'en'),
('no', 'en'),
('none', 'en'),
('not', 'en'),
('noth', 'en'),
('nothing', 'en'),
('of', 'en'),
('off', 'en'),
('often', 'en'),
('old', 'en'),
('on', 'en'),
('onc', 'en'),
('once', 'en'),
('onli', 'en'),
('only', 'en'),
('or', 'en'),
('other', 'en'),
('our', 'en'),
('ours', 'en'),
('out', 'en'),
('over', 'en'),
('page', 'en'),
('she', 'en'),
('should', 'en'),
('small', 'en'),
('so', 'en'),
('some', 'en'),
('than', 'en'),
('thank', 'en'),
('that', 'en'),
('the', 'en'),
('their', 'en'),
('theirs', 'en'),
('them', 'en'),
('then', 'en'),
('there', 'en'),
('these', 'en'),
('they', 'en'),
('this', 'en'),
('those', 'en'),
('thus', 'en'),
('time', 'en'),
('times', 'en'),
('to', 'en'),
('too', 'en'),
('true', 'en'),
('under', 'en'),
('until', 'en'),
('up', 'en'),
('upon', 'en'),
('use', 'en'),
('user', 'en'),
('users', 'en'),
('veri', 'en'),
('version', 'en'),
('very', 'en'),
('via', 'en'),
('want', 'en'),
('was', 'en'),
('way', 'en'),
('were', 'en'),
('what', 'en'),
('when', 'en'),
('where', 'en'),
('whi', 'en'),
('which', 'en'),
('who', 'en'),
('whom', 'en'),
('whose', 'en'),
('why', 'en'),
('wide', 'en'),
('will', 'en'),
('with', 'en'),
('within', 'en'),
('without', 'en'),
('would', 'en'),
('yes', 'en'),
('yet', 'en'),
('you', 'en'),
('your', 'en'),
('yours', 'en');

-- --------------------------------------------------------

--
-- Estrutura da tabela `iwk5c_finder_tokens`
--

CREATE TABLE IF NOT EXISTS `iwk5c_finder_tokens` (
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `weight` float unsigned NOT NULL DEFAULT '1',
  `context` tinyint(1) unsigned NOT NULL DEFAULT '2',
  `language` char(3) NOT NULL DEFAULT ''
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `iwk5c_finder_tokens_aggregate`
--

CREATE TABLE IF NOT EXISTS `iwk5c_finder_tokens_aggregate` (
  `term_id` int(10) unsigned NOT NULL,
  `map_suffix` char(1) NOT NULL,
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `term_weight` float unsigned NOT NULL,
  `context` tinyint(1) unsigned NOT NULL DEFAULT '2',
  `context_weight` float unsigned NOT NULL,
  `total_weight` float unsigned NOT NULL,
  `language` char(3) NOT NULL DEFAULT ''
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `iwk5c_finder_types`
--

CREATE TABLE IF NOT EXISTS `iwk5c_finder_types` (
`id` int(10) unsigned NOT NULL,
  `title` varchar(100) NOT NULL,
  `mime` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `iwk5c_imageshow_external_source_picasa`
--

CREATE TABLE IF NOT EXISTS `iwk5c_imageshow_external_source_picasa` (
`external_source_id` int(11) unsigned NOT NULL,
  `external_source_profile_title` varchar(255) DEFAULT NULL,
  `picasa_username` varchar(255) DEFAULT '',
  `picasa_thumbnail_size` char(30) DEFAULT '144',
  `picasa_image_size` char(30) DEFAULT '1024'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `iwk5c_imageshow_images`
--

CREATE TABLE IF NOT EXISTS `iwk5c_imageshow_images` (
`image_id` int(11) NOT NULL,
  `showlist_id` int(11) NOT NULL,
  `image_extid` varchar(255) DEFAULT NULL,
  `album_extid` varchar(255) DEFAULT NULL,
  `image_small` varchar(255) DEFAULT NULL,
  `image_medium` varchar(255) DEFAULT NULL,
  `image_big` text,
  `image_title` varchar(255) DEFAULT NULL,
  `image_description` text,
  `image_link` varchar(255) DEFAULT NULL,
  `ordering` int(11) DEFAULT '0',
  `custom_data` tinyint(1) DEFAULT '0',
  `sync` tinyint(1) DEFAULT '0',
  `image_size` varchar(25) DEFAULT NULL,
  `exif_data` text
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `iwk5c_imageshow_images`
--

INSERT INTO `iwk5c_imageshow_images` (`image_id`, `showlist_id`, `image_extid`, `album_extid`, `image_small`, `image_medium`, `image_big`, `image_title`, `image_description`, `image_link`, `ordering`, `custom_data`, `sync`, `image_size`, `exif_data`) VALUES
(1, 1, 'images/Metro/_mg_7716lrb.jpg', 'images/Metro', 'images/jsn_is_thumbs/images/Metro/_mg_7716lrb.jpg', 'images/Metro/_mg_7716lrb.jpg', 'images/Metro/_mg_7716lrb.jpg', '_mg_7716lrb.jpg', '', 'http://localhost/joomla/images/Metro/_mg_7716lrb.jpg', 1, 0, 0, '1865910', 'Canon/Canon EOS 7D, 1/90, f/5.6, Flash did not fire, compulsory flash mode'),
(2, 1, 'images/Metro/_mg_7732lrb 1.jpg', 'images/Metro', 'images/jsn_is_thumbs/images/Metro/_mg_7732lrb 1.jpg', 'images/Metro/_mg_7732lrb 1.jpg', 'images/Metro/_mg_7732lrb 1.jpg', '_mg_7732lrb 1.jpg', '', 'http://localhost/joomla/images/Metro/_mg_7732lrb 1.jpg', 2, 0, 0, '1984219', 'Canon/Canon EOS 7D, 1/250, f/5.6, Flash did not fire, compulsory flash mode'),
(3, 1, 'images/Metro/_mg_7905lrb.jpg', 'images/Metro', 'images/jsn_is_thumbs/images/Metro/_mg_7905lrb.jpg', 'images/Metro/_mg_7905lrb.jpg', 'images/Metro/_mg_7905lrb.jpg', '_mg_7905lrb.jpg', '', 'http://localhost/joomla/images/Metro/_mg_7905lrb.jpg', 3, 0, 0, '1696481', 'Canon/Canon EOS 7D, 1/250, f/5.6, Flash did not fire, compulsory flash mode'),
(4, 1, 'images/Metro/_mg_7928lrb.jpg', 'images/Metro', 'images/jsn_is_thumbs/images/Metro/_mg_7928lrb.jpg', 'images/Metro/_mg_7928lrb.jpg', 'images/Metro/_mg_7928lrb.jpg', '_mg_7928lrb.jpg', '', 'http://localhost/joomla/images/Metro/_mg_7928lrb.jpg', 4, 0, 0, '1826703', 'Canon/Canon EOS 7D, 1/125, f/5.6, Flash did not fire, compulsory flash mode');

-- --------------------------------------------------------

--
-- Estrutura da tabela `iwk5c_imageshow_log`
--

CREATE TABLE IF NOT EXISTS `iwk5c_imageshow_log` (
`log_id` int(11) unsigned NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `result` varchar(255) DEFAULT NULL,
  `screen` varchar(100) DEFAULT NULL,
  `action` varchar(50) DEFAULT NULL,
  `time_created` datetime DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `iwk5c_imageshow_log`
--

INSERT INTO `iwk5c_imageshow_log` (`log_id`, `user_id`, `url`, `result`, `screen`, `action`, `time_created`) VALUES
(1, 303, '/joomla/administrator/index.php?option=com_imageshow&controller=showlist', 'Metro', 'showlist', 'add', '2014-06-30 12:18:30'),
(2, 303, '/joomla/administrator/index.php?option=com_imageshow&controller=images&task=saveshowlist', 'Metro', 'addimages', 'any', '2014-06-30 12:21:05'),
(3, 303, '/joomla/administrator/index.php?option=com_imageshow&controller=images&task=saveshowlist', 'Metro', 'addimages', 'any', '2014-06-30 12:21:08'),
(4, 303, '/joomla/administrator/index.php?option=com_imageshow&controller=images&task=saveshowlist', 'Metro', 'addimages', 'any', '2014-06-30 12:21:10'),
(5, 303, '/joomla/administrator/index.php?option=com_imageshow&controller=images&task=saveshowlist', 'Metro', 'addimages', 'any', '2014-06-30 12:21:13'),
(6, 303, '/joomla/administrator/index.php?option=com_imageshow&controller=showcase', 'Padrão', 'showcase', 'add', '2014-06-30 12:25:27'),
(7, 303, '/joomla/administrator/index.php?option=com_imageshow&controller=showlist', 'Metro', 'showlist', 'modify', '2014-06-30 12:27:24'),
(8, 303, '/joomla/administrator/index.php?option=com_imageshow&controller=showcase', 'Padrão', 'showcase', 'modify', '2014-06-30 21:45:49');

-- --------------------------------------------------------

--
-- Estrutura da tabela `iwk5c_imageshow_showcase`
--

CREATE TABLE IF NOT EXISTS `iwk5c_imageshow_showcase` (
`showcase_id` int(11) unsigned NOT NULL,
  `showcase_title` varchar(255) DEFAULT NULL,
  `published` tinyint(1) DEFAULT '0',
  `ordering` int(11) DEFAULT '0',
  `general_overall_width` char(30) DEFAULT NULL,
  `general_overall_height` char(30) DEFAULT NULL,
  `date_created` datetime DEFAULT '0000-00-00 00:00:00',
  `date_modified` datetime DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `iwk5c_imageshow_showcase`
--

INSERT INTO `iwk5c_imageshow_showcase` (`showcase_id`, `showcase_title`, `published`, `ordering`, `general_overall_width`, `general_overall_height`, `date_created`, `date_modified`) VALUES
(1, 'Padrão', 1, 1, '100%', '500', '2014-06-30 12:06:27', '2014-06-30 21:06:41');

-- --------------------------------------------------------

--
-- Estrutura da tabela `iwk5c_imageshow_showlist`
--

CREATE TABLE IF NOT EXISTS `iwk5c_imageshow_showlist` (
`showlist_id` int(11) NOT NULL,
  `showlist_title` varchar(255) DEFAULT NULL,
  `published` tinyint(1) DEFAULT '0',
  `override_title` tinyint(1) DEFAULT '0',
  `override_description` tinyint(1) DEFAULT '0',
  `override_link` tinyint(1) DEFAULT '0',
  `ordering` int(11) DEFAULT '0',
  `access` tinyint(3) DEFAULT NULL,
  `hits` int(11) DEFAULT NULL,
  `description` text,
  `showlist_link` text,
  `alter_autid` int(11) DEFAULT '0',
  `date_create` datetime DEFAULT NULL,
  `image_source_type` varchar(45) DEFAULT '',
  `image_source_name` varchar(45) DEFAULT '',
  `image_source_profile_id` int(11) DEFAULT '0',
  `authorization_status` tinyint(1) DEFAULT '0',
  `date_modified` datetime DEFAULT '0000-00-00 00:00:00',
  `image_loading_order` char(30) DEFAULT NULL,
  `show_exif_data` char(100) DEFAULT ''
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `iwk5c_imageshow_showlist`
--

INSERT INTO `iwk5c_imageshow_showlist` (`showlist_id`, `showlist_title`, `published`, `override_title`, `override_description`, `override_link`, `ordering`, `access`, `hits`, `description`, `showlist_link`, `alter_autid`, `date_create`, `image_source_type`, `image_source_name`, `image_source_profile_id`, `authorization_status`, `date_modified`, `image_loading_order`, `show_exif_data`) VALUES
(1, 'Metro', 1, 0, 0, 0, 1, 1, 494, '', '', 0, '0000-00-00 00:00:00', 'folder', 'folder', 0, 0, '0000-00-00 00:00:00', 'forward', 'no');

-- --------------------------------------------------------

--
-- Estrutura da tabela `iwk5c_imageshow_source_profile`
--

CREATE TABLE IF NOT EXISTS `iwk5c_imageshow_source_profile` (
`external_source_profile_id` int(11) NOT NULL,
  `external_source_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `iwk5c_imageshow_theme_classic_flash`
--

CREATE TABLE IF NOT EXISTS `iwk5c_imageshow_theme_classic_flash` (
`theme_id` int(11) unsigned NOT NULL,
  `imgpanel_presentation_mode` char(30) DEFAULT '0',
  `imgpanel_img_transition_type_fit` char(30) DEFAULT '',
  `imgpanel_img_click_action_fit` char(30) DEFAULT '',
  `imgpanel_img_open_link_in_fit` char(30) DEFAULT 'new-browser',
  `imgpanel_img_transition_type_expand` char(30) DEFAULT '',
  `imgpanel_img_motion_type_expand` char(30) DEFAULT '',
  `imgpanel_img_zooming_type_expand` char(30) DEFAULT 'center',
  `imgpanel_img_click_action_expand` char(30) DEFAULT '',
  `imgpanel_img_open_link_in_expand` char(30) DEFAULT 'new-browser',
  `imgpanel_img_show_image_shadow_fit` char(30) DEFAULT 'yes',
  `imgpanel_bg_type` char(30) DEFAULT '',
  `imgpanel_bg_value` char(255) DEFAULT NULL,
  `imgpanel_show_watermark` char(30) DEFAULT 'no',
  `imgpanel_watermark_path` char(255) DEFAULT NULL,
  `imgpanel_watermark_position` char(30) DEFAULT '',
  `imgpanel_watermark_offset` char(30) DEFAULT NULL,
  `imgpanel_watermark_opacity` char(30) DEFAULT NULL,
  `imgpanel_show_overlay_effect` char(30) DEFAULT 'no',
  `imgpanel_overlay_effect_type` char(30) DEFAULT NULL,
  `imgpanel_show_inner_shawdow` char(30) DEFAULT 'yes',
  `imgpanel_inner_shawdow_color` char(30) DEFAULT NULL,
  `thumbpanel_show_panel` char(30) DEFAULT NULL,
  `thumbpanel_panel_position` char(30) DEFAULT '',
  `thumbpanel_collapsible_position` char(30) DEFAULT 'yes',
  `thumbpanel_thumb_browsing_mode` char(30) DEFAULT '',
  `thumbpanel_show_thumb_status` char(30) DEFAULT 'yes',
  `thumbpanel_active_state_color` char(30) DEFAULT NULL,
  `thumbpanel_presentation_mode` char(30) DEFAULT '',
  `thumbpanel_border` char(30) DEFAULT NULL,
  `thumbpanel_enable_big_thumb` char(30) DEFAULT 'yes',
  `thumbpanel_big_thumb_size` char(30) DEFAULT NULL,
  `thumbpanel_thumb_row` char(30) DEFAULT NULL,
  `thumbpanel_thumb_width` char(30) DEFAULT NULL,
  `thumbpanel_thumb_height` char(30) DEFAULT NULL,
  `thumbpanel_thumb_opacity` char(30) DEFAULT '50',
  `thumbpanel_big_thumb_color` char(30) DEFAULT NULL,
  `thumbpanel_thumb_border` char(30) DEFAULT NULL,
  `thumbpanel_thumnail_panel_color` char(30) DEFAULT NULL,
  `thumbpanel_thumnail_normal_state` char(30) DEFAULT NULL,
  `infopanel_panel_position` char(30) DEFAULT '',
  `infopanel_presentation` char(30) DEFAULT NULL,
  `infopanel_bg_color_fill` char(30) DEFAULT NULL,
  `infopanel_panel_click_action` char(30) DEFAULT NULL,
  `infopanel_open_link_in` char(30) DEFAULT 'new-browser',
  `infopanel_show_title` char(30) DEFAULT 'yes',
  `infopanel_title_css` char(250) DEFAULT NULL,
  `infopanel_show_des` char(30) DEFAULT 'yes',
  `infopanel_des_lenght_limitation` char(30) DEFAULT '',
  `infopanel_des_css` char(250) DEFAULT NULL,
  `infopanel_show_link` char(30) DEFAULT 'no',
  `infopanel_link_css` char(250) DEFAULT NULL,
  `toolbarpanel_panel_position` char(30) DEFAULT '',
  `toolbarpanel_presentation` char(30) DEFAULT '0',
  `toolbarpanel_show_image_navigation` char(30) DEFAULT 'yes',
  `toolbarpanel_slideshow_player` char(30) DEFAULT 'yes',
  `toolbarpanel_show_fullscreen_switcher` char(30) DEFAULT 'yes',
  `toolbarpanel_show_tooltip` char(30) DEFAULT 'no',
  `slideshow_hide_thumb_panel` char(30) DEFAULT 'yes',
  `slideshow_slide_timing` char(50) DEFAULT NULL,
  `slideshow_hide_image_navigation` char(30) DEFAULT 'yes',
  `slideshow_auto_play` char(30) DEFAULT 'no',
  `slideshow_show_status` char(30) DEFAULT 'yes',
  `slideshow_enable_ken_burn_effect` char(30) DEFAULT 'yes',
  `slideshow_looping` char(30) DEFAULT 'yes',
  `general_round_corner_radius` char(30) DEFAULT '',
  `general_border_color` char(30) DEFAULT '',
  `general_background_color` char(30) DEFAULT '',
  `general_border_stroke` char(30) DEFAULT ''
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `iwk5c_imageshow_theme_classic_flash`
--

INSERT INTO `iwk5c_imageshow_theme_classic_flash` (`theme_id`, `imgpanel_presentation_mode`, `imgpanel_img_transition_type_fit`, `imgpanel_img_click_action_fit`, `imgpanel_img_open_link_in_fit`, `imgpanel_img_transition_type_expand`, `imgpanel_img_motion_type_expand`, `imgpanel_img_zooming_type_expand`, `imgpanel_img_click_action_expand`, `imgpanel_img_open_link_in_expand`, `imgpanel_img_show_image_shadow_fit`, `imgpanel_bg_type`, `imgpanel_bg_value`, `imgpanel_show_watermark`, `imgpanel_watermark_path`, `imgpanel_watermark_position`, `imgpanel_watermark_offset`, `imgpanel_watermark_opacity`, `imgpanel_show_overlay_effect`, `imgpanel_overlay_effect_type`, `imgpanel_show_inner_shawdow`, `imgpanel_inner_shawdow_color`, `thumbpanel_show_panel`, `thumbpanel_panel_position`, `thumbpanel_collapsible_position`, `thumbpanel_thumb_browsing_mode`, `thumbpanel_show_thumb_status`, `thumbpanel_active_state_color`, `thumbpanel_presentation_mode`, `thumbpanel_border`, `thumbpanel_enable_big_thumb`, `thumbpanel_big_thumb_size`, `thumbpanel_thumb_row`, `thumbpanel_thumb_width`, `thumbpanel_thumb_height`, `thumbpanel_thumb_opacity`, `thumbpanel_big_thumb_color`, `thumbpanel_thumb_border`, `thumbpanel_thumnail_panel_color`, `thumbpanel_thumnail_normal_state`, `infopanel_panel_position`, `infopanel_presentation`, `infopanel_bg_color_fill`, `infopanel_panel_click_action`, `infopanel_open_link_in`, `infopanel_show_title`, `infopanel_title_css`, `infopanel_show_des`, `infopanel_des_lenght_limitation`, `infopanel_des_css`, `infopanel_show_link`, `infopanel_link_css`, `toolbarpanel_panel_position`, `toolbarpanel_presentation`, `toolbarpanel_show_image_navigation`, `toolbarpanel_slideshow_player`, `toolbarpanel_show_fullscreen_switcher`, `toolbarpanel_show_tooltip`, `slideshow_hide_thumb_panel`, `slideshow_slide_timing`, `slideshow_hide_image_navigation`, `slideshow_auto_play`, `slideshow_show_status`, `slideshow_enable_ken_burn_effect`, `slideshow_looping`, `general_round_corner_radius`, `general_border_color`, `general_background_color`, `general_border_stroke`) VALUES
(3, 'expand-out', 'fade', 'image-zooming', 'new-browser', 'linear-fade', 'no-motion', 'center', 'open-image-link', 'new-browser', 'yes', 'linear-gradient', '#595959,#262626', 'no', '', 'top-right', '10', '75', 'yes', 'horizontal-floating-bar', 'no', '#000000', 'off', 'bottom', 'yes', 'pagination', 'yes', '#ff6200', 'image', '2', 'yes', '150', '1', '60', '50', '50', '#ffffff', '2', '#000000', '#ffffff', 'top', 'off', '#000000', 'no-action', 'new-browser', 'yes', 'font-family: Verdana;\r\nfont-size: 12px;\r\nfont-weight: bold;\r\ntext-align: left;\r\ncolor: #E9E9E9;', 'yes', '50', 'font-family: Arial;\r\nfont-size: 11px;\r\nfont-weight: normal;\r\ntext-align: left;\r\ncolor: #AFAFAF;', 'no', 'font-family: Verdana;\r\nfont-size: 11px;\r\nfont-weight: bold;\r\ntext-align: right;\r\ncolor: #E06614;', 'bottom', 'auto', 'yes', 'yes', 'yes', 'no', 'yes', '8', 'yes', 'yes', 'yes', 'yes', 'yes', '0', '#cccccc', '#efefef', '1');

-- --------------------------------------------------------

--
-- Estrutura da tabela `iwk5c_imageshow_theme_classic_javascript`
--

CREATE TABLE IF NOT EXISTS `iwk5c_imageshow_theme_classic_javascript` (
`theme_id` int(11) unsigned NOT NULL,
  `imgpanel_presentation_mode` char(30) DEFAULT '0',
  `imgpanel_img_click_action_fit` char(30) DEFAULT '',
  `imgpanel_img_open_link_in_fit` char(30) DEFAULT 'new-browser',
  `imgpanel_img_click_action_expand` char(30) DEFAULT '',
  `imgpanel_img_open_link_in_expand` char(30) DEFAULT 'new-browser',
  `imgpanel_bg_type` char(30) DEFAULT '',
  `imgpanel_bg_value` char(255) DEFAULT NULL,
  `thumbpanel_show_panel` char(30) DEFAULT NULL,
  `thumbpanel_panel_position` char(30) DEFAULT '',
  `thumbpanel_active_state_color` char(30) DEFAULT NULL,
  `thumbpanel_thumnail_normal_state` char(30) DEFAULT NULL,
  `thumbpanel_border` char(30) DEFAULT NULL,
  `thumbpanel_thumb_width` char(30) DEFAULT NULL,
  `thumbpanel_thumb_height` char(30) DEFAULT NULL,
  `thumbpanel_thumnail_panel_color` char(30) DEFAULT NULL,
  `infopanel_panel_position` char(30) DEFAULT '',
  `infopanel_presentation` char(30) DEFAULT NULL,
  `infopanel_bg_color_fill` char(30) DEFAULT NULL,
  `infopanel_panel_click_action` char(30) DEFAULT NULL,
  `infopanel_open_link_in` char(30) DEFAULT 'new-browser',
  `infopanel_show_title` char(30) DEFAULT 'yes',
  `infopanel_title_css` char(250) DEFAULT NULL,
  `infopanel_show_des` char(30) DEFAULT 'yes',
  `infopanel_des_lenght_limitation` char(30) DEFAULT '',
  `infopanel_des_css` char(250) DEFAULT NULL,
  `infopanel_show_link` char(30) DEFAULT 'no',
  `infopanel_link_css` char(250) DEFAULT NULL,
  `toolbarpanel_presentation` char(30) DEFAULT '0',
  `slideshow_slide_timing` char(50) DEFAULT NULL,
  `slideshow_auto_play` char(30) DEFAULT 'no',
  `slideshow_looping` char(30) DEFAULT 'yes',
  `general_round_corner_radius` char(30) DEFAULT '',
  `general_border_color` char(30) DEFAULT '',
  `general_background_color` char(30) DEFAULT '',
  `general_border_stroke` char(30) DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `iwk5c_imageshow_theme_classic_parameters`
--

CREATE TABLE IF NOT EXISTS `iwk5c_imageshow_theme_classic_parameters` (
`id` int(11) NOT NULL,
  `general_swf_library` tinyint(1) DEFAULT '0',
  `root_url` tinyint(1) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `iwk5c_imageshow_theme_profile`
--

CREATE TABLE IF NOT EXISTS `iwk5c_imageshow_theme_profile` (
  `theme_id` int(11) NOT NULL DEFAULT '0',
  `showcase_id` int(11) NOT NULL DEFAULT '0',
  `theme_name` varchar(255) NOT NULL DEFAULT '',
  `theme_style_name` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `iwk5c_imageshow_theme_profile`
--

INSERT INTO `iwk5c_imageshow_theme_profile` (`theme_id`, `showcase_id`, `theme_name`, `theme_style_name`) VALUES
(3, 1, 'themeclassic', 'flash');

-- --------------------------------------------------------

--
-- Estrutura da tabela `iwk5c_imageshow_theme_slider`
--

CREATE TABLE IF NOT EXISTS `iwk5c_imageshow_theme_slider` (
`theme_id` int(11) unsigned NOT NULL,
  `img_transition_effect` char(30) DEFAULT 'random',
  `img_transparent_background` char(150) DEFAULT 'no',
  `toolbar_navigation_arrows_presentation` char(30) DEFAULT 'show-on-mouse-over',
  `toolbar_slideshow_player_presentation` char(30) DEFAULT 'hide',
  `caption_show_caption` char(30) DEFAULT 'yes',
  `caption_title_css` text,
  `caption_description_css` text,
  `caption_link_css` text,
  `caption_caption_opacity` char(30) DEFAULT '75',
  `caption_title_show` char(30) DEFAULT 'yes',
  `caption_description_show` char(30) DEFAULT 'yes',
  `caption_link_show` char(30) DEFAULT 'no',
  `caption_position` char(150) DEFAULT 'bottom',
  `slideshow_slide_timming` int(11) DEFAULT '6',
  `slideshow_pause_on_mouseover` char(30) DEFAULT 'yes',
  `slideshow_auto_play` char(30) DEFAULT 'yes',
  `thumnail_panel_position` char(30) DEFAULT 'right',
  `thumbnail_panel_presentation` char(30) DEFAULT 'show',
  `thumbnail_presentation_mode` char(30) DEFAULT 'numbers',
  `thumbnail_active_state_color` char(30) DEFAULT '#CC3333',
  `click_action` char(150) DEFAULT 'no_action',
  `open_link_in` char(150) DEFAULT 'current_browser'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `iwk5c_jsn_imageshow_config`
--

CREATE TABLE IF NOT EXISTS `iwk5c_jsn_imageshow_config` (
  `name` varchar(255) NOT NULL,
  `value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `iwk5c_jsn_imageshow_config`
--

INSERT INTO `iwk5c_jsn_imageshow_config` (`name`, `value`) VALUES
('live_update_checking', '1'),
('live_update_last_check', '1404209535'),
('live_update_notification', '0');

-- --------------------------------------------------------

--
-- Estrutura da tabela `iwk5c_jsn_imageshow_messages`
--

CREATE TABLE IF NOT EXISTS `iwk5c_jsn_imageshow_messages` (
`msg_id` int(11) NOT NULL,
  `msg_screen` varchar(150) DEFAULT NULL,
  `published` tinyint(1) DEFAULT '1',
  `ordering` int(11) DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `iwk5c_jsn_imageshow_messages`
--

INSERT INTO `iwk5c_jsn_imageshow_messages` (`msg_id`, `msg_screen`, `published`, `ordering`) VALUES
(1, 'LAUNCH_PAD', 1, 1),
(2, 'LAUNCH_PAD', 1, 2),
(3, 'SHOWLISTS', 1, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `iwk5c_languages`
--

CREATE TABLE IF NOT EXISTS `iwk5c_languages` (
`lang_id` int(11) unsigned NOT NULL,
  `lang_code` char(7) NOT NULL,
  `title` varchar(50) NOT NULL,
  `title_native` varchar(50) NOT NULL,
  `sef` varchar(50) NOT NULL,
  `image` varchar(50) NOT NULL,
  `description` varchar(512) NOT NULL,
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `sitename` varchar(1024) NOT NULL DEFAULT '',
  `published` int(11) NOT NULL DEFAULT '0',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `iwk5c_languages`
--

INSERT INTO `iwk5c_languages` (`lang_id`, `lang_code`, `title`, `title_native`, `sef`, `image`, `description`, `metakey`, `metadesc`, `sitename`, `published`, `access`, `ordering`) VALUES
(1, 'en-GB', 'English (UK)', 'English (UK)', 'en', 'en', '', '', '', '', 1, 1, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `iwk5c_licitacoes`
--

CREATE TABLE IF NOT EXISTS `iwk5c_licitacoes` (
  `id` int(255) NOT NULL,
  `titulo` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `link` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `iwk5c_menu`
--

CREATE TABLE IF NOT EXISTS `iwk5c_menu` (
`id` int(11) NOT NULL,
  `menutype` varchar(24) NOT NULL COMMENT 'The type of menu this item belongs to. FK to #__menu_types.menutype',
  `title` varchar(255) NOT NULL COMMENT 'The display title of the menu item.',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT 'The SEF alias of the menu item.',
  `note` varchar(255) NOT NULL DEFAULT '',
  `path` varchar(1024) NOT NULL COMMENT 'The computed path of the menu item based on the alias field.',
  `link` varchar(1024) NOT NULL COMMENT 'The actually link the menu item refers to.',
  `type` varchar(16) NOT NULL COMMENT 'The type of link: Component, URL, Alias, Separator',
  `published` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'The published state of the menu link.',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '1' COMMENT 'The parent menu item in the menu tree.',
  `level` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'The relative level in the tree.',
  `component_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to #__extensions.id',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to #__users.id',
  `checked_out_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'The time the menu item was checked out.',
  `browserNav` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'The click behaviour of the link.',
  `access` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'The access level required to view the menu item.',
  `img` varchar(255) NOT NULL COMMENT 'The image of the menu item.',
  `template_style_id` int(10) unsigned NOT NULL DEFAULT '0',
  `params` text NOT NULL COMMENT 'JSON encoded data for the menu item.',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `home` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Indicates if this menu item is the home or default page.',
  `language` char(7) NOT NULL DEFAULT '',
  `client_id` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=173 DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `iwk5c_menu`
--

INSERT INTO `iwk5c_menu` (`id`, `menutype`, `title`, `alias`, `note`, `path`, `link`, `type`, `published`, `parent_id`, `level`, `component_id`, `checked_out`, `checked_out_time`, `browserNav`, `access`, `img`, `template_style_id`, `params`, `lft`, `rgt`, `home`, `language`, `client_id`) VALUES
(1, '', 'Menu_Item_Root', 'root', '', '', '', '', 1, 0, 0, 0, 0, '0000-00-00 00:00:00', 0, 0, '', 0, '', 0, 191, 0, '*', 0),
(2, 'menu', 'com_banners', 'Banners', '', 'Banners', 'index.php?option=com_banners', 'component', 0, 1, 1, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners', 0, '', 3, 12, 0, '*', 1),
(3, 'menu', 'com_banners', 'Banners', '', 'Banners/Banners', 'index.php?option=com_banners', 'component', 0, 2, 2, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners', 0, '', 4, 5, 0, '*', 1),
(4, 'menu', 'com_banners_categories', 'Categories', '', 'Banners/Categories', 'index.php?option=com_categories&extension=com_banners', 'component', 0, 2, 2, 6, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-cat', 0, '', 6, 7, 0, '*', 1),
(5, 'menu', 'com_banners_clients', 'Clients', '', 'Banners/Clients', 'index.php?option=com_banners&view=clients', 'component', 0, 2, 2, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-clients', 0, '', 8, 9, 0, '*', 1),
(6, 'menu', 'com_banners_tracks', 'Tracks', '', 'Banners/Tracks', 'index.php?option=com_banners&view=tracks', 'component', 0, 2, 2, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-tracks', 0, '', 10, 11, 0, '*', 1),
(7, 'menu', 'com_contact', 'Contacts', '', 'Contacts', 'index.php?option=com_contact', 'component', 0, 1, 1, 8, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact', 0, '', 13, 18, 0, '*', 1),
(8, 'menu', 'com_contact', 'Contacts', '', 'Contacts/Contacts', 'index.php?option=com_contact', 'component', 0, 7, 2, 8, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact', 0, '', 14, 15, 0, '*', 1),
(9, 'menu', 'com_contact_categories', 'Categories', '', 'Contacts/Categories', 'index.php?option=com_categories&extension=com_contact', 'component', 0, 7, 2, 6, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact-cat', 0, '', 16, 17, 0, '*', 1),
(10, 'menu', 'com_messages', 'Messaging', '', 'Messaging', 'index.php?option=com_messages', 'component', 0, 1, 1, 15, 0, '0000-00-00 00:00:00', 0, 0, 'class:messages', 0, '', 19, 24, 0, '*', 1),
(11, 'menu', 'com_messages_add', 'New Private Message', '', 'Messaging/New Private Message', 'index.php?option=com_messages&task=message.add', 'component', 0, 10, 2, 15, 0, '0000-00-00 00:00:00', 0, 0, 'class:messages-add', 0, '', 20, 21, 0, '*', 1),
(12, 'menu', 'com_messages_read', 'Read Private Message', '', 'Messaging/Read Private Message', 'index.php?option=com_messages', 'component', 0, 10, 2, 15, 0, '0000-00-00 00:00:00', 0, 0, 'class:messages-read', 0, '', 22, 23, 0, '*', 1),
(13, 'menu', 'com_newsfeeds', 'News Feeds', '', 'News Feeds', 'index.php?option=com_newsfeeds', 'component', 0, 1, 1, 17, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds', 0, '', 25, 30, 0, '*', 1),
(14, 'menu', 'com_newsfeeds_feeds', 'Feeds', '', 'News Feeds/Feeds', 'index.php?option=com_newsfeeds', 'component', 0, 13, 2, 17, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds', 0, '', 26, 27, 0, '*', 1),
(15, 'menu', 'com_newsfeeds_categories', 'Categories', '', 'News Feeds/Categories', 'index.php?option=com_categories&extension=com_newsfeeds', 'component', 0, 13, 2, 6, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds-cat', 0, '', 28, 29, 0, '*', 1),
(16, 'menu', 'com_redirect', 'Redirect', '', 'Redirect', 'index.php?option=com_redirect', 'component', 0, 1, 1, 24, 0, '0000-00-00 00:00:00', 0, 0, 'class:redirect', 0, '', 31, 32, 0, '*', 1),
(17, 'menu', 'com_search', 'Basic Search', '', 'Basic Search', 'index.php?option=com_search', 'component', 0, 1, 1, 19, 0, '0000-00-00 00:00:00', 0, 0, 'class:search', 0, '', 33, 34, 0, '*', 1),
(18, 'menu', 'com_weblinks', 'Weblinks', '', 'Weblinks', 'index.php?option=com_weblinks', 'component', 0, 1, 1, 21, 0, '0000-00-00 00:00:00', 0, 0, 'class:weblinks', 0, '', 35, 40, 0, '*', 1),
(19, 'menu', 'com_weblinks_links', 'Links', '', 'Weblinks/Links', 'index.php?option=com_weblinks', 'component', 0, 18, 2, 21, 0, '0000-00-00 00:00:00', 0, 0, 'class:weblinks', 0, '', 36, 37, 0, '*', 1),
(20, 'menu', 'com_weblinks_categories', 'Categories', '', 'Weblinks/Categories', 'index.php?option=com_categories&extension=com_weblinks', 'component', 0, 18, 2, 6, 0, '0000-00-00 00:00:00', 0, 0, 'class:weblinks-cat', 0, '', 38, 39, 0, '*', 1),
(21, 'menu', 'com_finder', 'Smart Search', '', 'Smart Search', 'index.php?option=com_finder', 'component', 0, 1, 1, 27, 0, '0000-00-00 00:00:00', 0, 0, 'class:finder', 0, '', 41, 42, 0, '*', 1),
(22, 'menu', 'com_joomlaupdate', 'Joomla! Update', '', 'Joomla! Update', 'index.php?option=com_joomlaupdate', 'component', 1, 1, 1, 28, 0, '0000-00-00 00:00:00', 0, 0, 'class:joomlaupdate', 0, '', 43, 44, 0, '*', 1),
(23, 'main', 'com_tags', 'Tags', '', 'Tags', 'index.php?option=com_tags', 'component', 0, 1, 1, 29, 0, '0000-00-00 00:00:00', 0, 1, 'class:tags', 0, '', 45, 46, 0, '', 1),
(24, 'main', 'com_postinstall', 'Post-installation messages', '', 'Post-installation messages', 'index.php?option=com_postinstall', 'component', 0, 1, 1, 32, 0, '0000-00-00 00:00:00', 0, 1, 'class:postinstall', 0, '', 47, 48, 0, '*', 1),
(101, 'mainmenu', 'Home', 'home', '', 'home', 'index.php?option=com_content&view=category&layout=blog&id=8', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"layout_type":"blog","show_category_heading_title_text":"","show_category_title":"","show_description":"","show_description_image":"","maxLevel":"","show_empty_categories":"","show_no_articles":"","show_subcat_desc":"","show_cat_num_articles":"","show_cat_tags":"","page_subheading":"","num_leading_articles":"","num_intro_articles":"","num_columns":"","num_links":"","multi_column_order":"","show_subcategory_content":"","orderby_pri":"","orderby_sec":"","order_date":"","show_pagination":"","show_pagination_results":"","show_title":"0","link_titles":"0","show_intro":"0","info_block_position":"","show_category":"0","link_category":"0","show_parent_category":"0","link_parent_category":"0","show_author":"0","link_author":"0","show_create_date":"0","show_modify_date":"0","show_publish_date":"0","show_item_navigation":"0","show_vote":"","show_readmore":"","show_readmore_title":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 1, 2, 1, '*', 0),
(102, 'menu-topo', 'Home', '2014-06-29-01-15-47', '', '2014-06-29-01-15-47', 'http://localhost/joomla', 'url', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 11, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1}', 49, 50, 0, '*', 0),
(103, 'menu-topo', 'Contatos', '2014-06-29-01-19-58', '', '2014-06-29-01-19-58', 'index.php?option=com_content&view=category&layout=blog&id=35', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"layout_type":"blog","show_category_heading_title_text":"","show_category_title":"","show_description":"","show_description_image":"","maxLevel":"","show_empty_categories":"","show_no_articles":"","show_subcat_desc":"","show_cat_num_articles":"","show_cat_tags":"","page_subheading":"","num_leading_articles":"","num_intro_articles":"","num_columns":"","num_links":"","multi_column_order":"","show_subcategory_content":"","orderby_pri":"","orderby_sec":"","order_date":"","show_pagination":"","show_pagination_results":"","show_title":"","link_titles":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_readmore":"","show_readmore_title":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 51, 52, 0, '*', 0),
(104, 'menu-topo', 'Intranet', '2014-06-29-01-51-07', '', '2014-06-29-01-51-07', 'index.php?option=com_content&view=category&layout=blog&id=36', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"layout_type":"blog","show_category_heading_title_text":"","show_category_title":"","show_description":"","show_description_image":"","maxLevel":"","show_empty_categories":"","show_no_articles":"","show_subcat_desc":"","show_cat_num_articles":"","show_cat_tags":"","page_subheading":"","num_leading_articles":"","num_intro_articles":"","num_columns":"","num_links":"","multi_column_order":"","show_subcategory_content":"","orderby_pri":"","orderby_sec":"","order_date":"","show_pagination":"","show_pagination_results":"","show_title":"","link_titles":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_readmore":"","show_readmore_title":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 53, 54, 0, '*', 0),
(105, 'menu-topo', 'Eventos', '2014-06-29-01-53-13', '', '2014-06-29-01-53-13', 'index.php?option=com_content&view=category&layout=blog&id=37', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"layout_type":"blog","show_category_heading_title_text":"","show_category_title":"","show_description":"","show_description_image":"","maxLevel":"","show_empty_categories":"","show_no_articles":"","show_subcat_desc":"","show_cat_num_articles":"","show_cat_tags":"","page_subheading":"","num_leading_articles":"","num_intro_articles":"","num_columns":"","num_links":"","multi_column_order":"","show_subcategory_content":"","orderby_pri":"","orderby_sec":"","order_date":"","show_pagination":"","show_pagination_results":"","show_title":"","link_titles":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_readmore":"","show_readmore_title":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 55, 56, 0, '*', 0),
(106, 'menu-topo', 'Mapa do Site', '2014-06-29-01-54-28', '', '2014-06-29-01-54-28', 'index.php?option=com_content&view=category&layout=blog&id=38', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"layout_type":"blog","show_category_heading_title_text":"","show_category_title":"","show_description":"","show_description_image":"","maxLevel":"","show_empty_categories":"","show_no_articles":"","show_subcat_desc":"","show_cat_num_articles":"","show_cat_tags":"","page_subheading":"","num_leading_articles":"","num_intro_articles":"","num_columns":"","num_links":"","multi_column_order":"","show_subcategory_content":"","orderby_pri":"","orderby_sec":"","order_date":"","show_pagination":"","show_pagination_results":"","show_title":"","link_titles":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_readmore":"","show_readmore_title":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 57, 58, 0, '*', 0),
(107, 'menu-topo', 'Portal do Governo', '2014-06-29-01-55-34', '', '2014-06-29-01-55-34', 'http://www.ba.gov.br', 'url', 1, 1, 1, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1}', 59, 60, 0, '*', 0),
(108, 'mainmenu', 'Sobre a Empresa', 'sobre-empresa', '', 'sobre-empresa', 'index.php?option=com_content&view=category&layout=blog&id=9', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"layout_type":"blog","show_category_heading_title_text":"","show_category_title":"","show_description":"","show_description_image":"","maxLevel":"","show_empty_categories":"","show_no_articles":"","show_subcat_desc":"","show_cat_num_articles":"","show_cat_tags":"","page_subheading":"","num_leading_articles":"","num_intro_articles":"","num_columns":"","num_links":"","multi_column_order":"","show_subcategory_content":"","orderby_pri":"","orderby_sec":"","order_date":"","show_pagination":"","show_pagination_results":"","show_title":"","link_titles":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_readmore":"","show_readmore_title":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 61, 72, 0, '*', 0),
(109, 'mainmenu', 'Sistemas de Transporte', '2014-06-29-01-59-23', '', '2014-06-29-01-59-23', 'www.google.com.br', 'url', 1, 1, 1, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1}', 73, 80, 0, '*', 0),
(110, 'mainmenu', 'Metrô', '2014-06-29-02-04-02', '', '2014-06-29-01-59-23/2014-06-29-02-04-02', 'index.php?option=com_content&view=category&layout=blog&id=22', 'component', 1, 109, 2, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"layout_type":"blog","show_category_heading_title_text":"","show_category_title":"","show_description":"","show_description_image":"","maxLevel":"","show_empty_categories":"","show_no_articles":"","show_subcat_desc":"","show_cat_num_articles":"","show_cat_tags":"","page_subheading":"","num_leading_articles":"","num_intro_articles":"","num_columns":"","num_links":"","multi_column_order":"","show_subcategory_content":"","orderby_pri":"","orderby_sec":"","order_date":"","show_pagination":"","show_pagination_results":"","show_title":"","link_titles":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_readmore":"","show_readmore_title":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 74, 75, 0, '*', 0),
(111, 'mainmenu', 'VLT', '2014-06-29-02-07-06', '', '2014-06-29-01-59-23/2014-06-29-02-07-06', 'index.php?option=com_content&view=category&layout=blog&id=23', 'component', 1, 109, 2, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 11, '{"layout_type":"blog","show_category_heading_title_text":"","show_category_title":"","show_description":"","show_description_image":"","maxLevel":"","show_empty_categories":"","show_no_articles":"","show_subcat_desc":"","show_cat_num_articles":"","show_cat_tags":"","page_subheading":"","num_leading_articles":"","num_intro_articles":"","num_columns":"","num_links":"","multi_column_order":"","show_subcategory_content":"","orderby_pri":"","orderby_sec":"","order_date":"","show_pagination":"","show_pagination_results":"","show_title":"","link_titles":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_readmore":"","show_readmore_title":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 76, 77, 0, '*', 0),
(112, 'mainmenu', 'Trem do Subúrbio', '2014-06-29-02-08-44', '', '2014-06-29-01-59-23/2014-06-29-02-08-44', 'index.php?option=com_content&view=category&layout=blog&id=22', 'component', 1, 109, 2, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 12, '{"layout_type":"blog","show_category_heading_title_text":"","show_category_title":"","show_description":"","show_description_image":"","maxLevel":"","show_empty_categories":"","show_no_articles":"","show_subcat_desc":"","show_cat_num_articles":"","show_cat_tags":"","page_subheading":"","num_leading_articles":"","num_intro_articles":"","num_columns":"","num_links":"","multi_column_order":"","show_subcategory_content":"","orderby_pri":"","orderby_sec":"","order_date":"","show_pagination":"","show_pagination_results":"","show_title":"","link_titles":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_readmore":"","show_readmore_title":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 78, 79, 0, '*', 0),
(113, 'mainmenu', 'Licitações', '2014-06-29-02-10-58', '', '2014-06-29-02-10-58', 'index.php?option=com_content&view=category&layout=blog&id=32', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 11, '{"layout_type":"blog","show_category_heading_title_text":"","show_category_title":"","show_description":"","show_description_image":"","maxLevel":"","show_empty_categories":"","show_no_articles":"","show_subcat_desc":"","show_cat_num_articles":"","show_cat_tags":"","page_subheading":"","num_leading_articles":"","num_intro_articles":"","num_columns":"","num_links":"","multi_column_order":"","show_subcategory_content":"","orderby_pri":"","orderby_sec":"","order_date":"","show_pagination":"","show_pagination_results":"","show_title":"","link_titles":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_readmore":"","show_readmore_title":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 81, 82, 0, '*', 0),
(114, 'mainmenu', 'Ouvidoria', '2014-06-29-02-11-59', '', '2014-06-29-02-11-59', 'index.php?option=com_content&view=category&layout=blog&id=33', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"layout_type":"blog","show_category_heading_title_text":"","show_category_title":"","show_description":"","show_description_image":"","maxLevel":"","show_empty_categories":"","show_no_articles":"","show_subcat_desc":"","show_cat_num_articles":"","show_cat_tags":"","page_subheading":"","num_leading_articles":"","num_intro_articles":"","num_columns":"","num_links":"","multi_column_order":"","show_subcategory_content":"","orderby_pri":"","orderby_sec":"","order_date":"","show_pagination":"","show_pagination_results":"","show_title":"","link_titles":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_readmore":"","show_readmore_title":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 83, 84, 0, '*', 0),
(115, 'mainmenu', 'Galeria', '2014-06-29-02-12-53', '', '2014-06-29-02-12-53', 'index.php?option=com_content&view=category&layout=blog&id=34', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"layout_type":"blog","show_category_heading_title_text":"","show_category_title":"","show_description":"","show_description_image":"","maxLevel":"","show_empty_categories":"","show_no_articles":"","show_subcat_desc":"","show_cat_num_articles":"","show_cat_tags":"","page_subheading":"","num_leading_articles":"","num_intro_articles":"","num_columns":"","num_links":"","multi_column_order":"","show_subcategory_content":"","orderby_pri":"","orderby_sec":"","order_date":"","show_pagination":"","show_pagination_results":"","show_title":"","link_titles":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_readmore":"","show_readmore_title":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 85, 86, 0, '*', 0),
(116, 'menu-informativo', 'Acionistas', '2014-06-29-10-36-04', '', '2014-06-29-10-36-04', 'index.php?option=com_content&view=category&layout=blog&id=27', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 11, '{"layout_type":"blog","show_category_heading_title_text":"","show_category_title":"","show_description":"","show_description_image":"","maxLevel":"","show_empty_categories":"","show_no_articles":"","show_subcat_desc":"","show_cat_num_articles":"","show_cat_tags":"","page_subheading":"","num_leading_articles":"","num_intro_articles":"","num_columns":"","num_links":"","multi_column_order":"","show_subcategory_content":"","orderby_pri":"","orderby_sec":"","order_date":"","show_pagination":"","show_pagination_results":"","show_title":"","link_titles":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_readmore":"","show_readmore_title":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 87, 88, 0, '*', 0),
(117, 'menu-informativo', 'Conselho Administrativo', '2014-06-29-10-36-54', '', '2014-06-29-10-36-54', 'index.php?option=com_content&view=category&layout=blog&id=28', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"layout_type":"blog","show_category_heading_title_text":"","show_category_title":"","show_description":"","show_description_image":"","maxLevel":"","show_empty_categories":"","show_no_articles":"","show_subcat_desc":"","show_cat_num_articles":"","show_cat_tags":"","page_subheading":"","num_leading_articles":"","num_intro_articles":"","num_columns":"","num_links":"","multi_column_order":"","show_subcategory_content":"","orderby_pri":"","orderby_sec":"","order_date":"","show_pagination":"","show_pagination_results":"","show_title":"","link_titles":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_readmore":"","show_readmore_title":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 89, 90, 0, '*', 0),
(118, 'menu-informativo', 'Diretoria', '2014-06-29-10-37-41', '', '2014-06-29-10-37-41', 'index.php?option=com_content&view=category&layout=blog&id=29', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 11, '{"layout_type":"blog","show_category_heading_title_text":"","show_category_title":"","show_description":"","show_description_image":"","maxLevel":"","show_empty_categories":"","show_no_articles":"","show_subcat_desc":"","show_cat_num_articles":"","show_cat_tags":"","page_subheading":"","num_leading_articles":"","num_intro_articles":"","num_columns":"","num_links":"","multi_column_order":"","show_subcategory_content":"","orderby_pri":"","orderby_sec":"","order_date":"","show_pagination":"","show_pagination_results":"","show_title":"","link_titles":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_readmore":"","show_readmore_title":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 91, 92, 0, '*', 0),
(119, 'menu-informativo', 'Conselho Fiscal', '2014-06-29-10-37-42', '', '2014-06-29-10-37-42', 'index.php?option=com_content&view=category&layout=blog&id=30', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 11, '{"layout_type":"blog","show_category_heading_title_text":"","show_category_title":"","show_description":"","show_description_image":"","maxLevel":"","show_empty_categories":"","show_no_articles":"","show_subcat_desc":"","show_cat_num_articles":"","show_cat_tags":"","page_subheading":"","num_leading_articles":"","num_intro_articles":"","num_columns":"","num_links":"","multi_column_order":"","show_subcategory_content":"","orderby_pri":"","orderby_sec":"","order_date":"","show_pagination":"","show_pagination_results":"","show_title":"","link_titles":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_readmore":"","show_readmore_title":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 93, 94, 0, '*', 0),
(120, 'menu-informativo', 'Estatuto Social', '2014-06-29-10-41-03', '', '2014-06-29-10-41-03', 'index.php?option=com_content&view=category&layout=blog&id=31', 'component', 1, 1, 1, 22, 303, '2014-08-24 01:20:10', 0, 1, '', 0, '{"layout_type":"blog","show_category_heading_title_text":"","show_category_title":"","show_description":"","show_description_image":"","maxLevel":"","show_empty_categories":"","show_no_articles":"","show_subcat_desc":"","show_cat_num_articles":"","show_cat_tags":"","page_subheading":"","num_leading_articles":"","num_intro_articles":"","num_columns":"","num_links":"","multi_column_order":"","show_subcategory_content":"","orderby_pri":"","orderby_sec":"","order_date":"","show_pagination":"","show_pagination_results":"","show_title":"","link_titles":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_readmore":"","show_readmore_title":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 95, 96, 0, '*', 0),
(121, 'main', 'COM_IMAGESHOW', 'com-imageshow', '', 'com-imageshow', 'index.php?option=com_imageshow', 'component', 0, 1, 1, 704, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_imageshow/assets/images/icons-16/icon-picture.png', 0, '', 97, 108, 0, '', 1),
(122, 'main', 'LAUNCH_PAD', 'launch-pad', '', 'com-imageshow/launch-pad', 'index.php?option=com_imageshow', 'component', 0, 121, 2, 704, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_imageshow/assets/images/icons-16/icon-off.png', 0, '', 98, 99, 0, '', 1),
(123, 'main', 'SHOWLISTS', 'showlists', '', 'com-imageshow/showlists', 'index.php?option=com_imageshow&controller=showlist', 'component', 0, 121, 2, 704, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_imageshow/assets/images/icons-16/icon-file.png', 0, '', 100, 101, 0, '', 1),
(124, 'main', 'SHOWCASES', 'showcases', '', 'com-imageshow/showcases', 'index.php?option=com_imageshow&controller=showcase', 'component', 0, 121, 2, 704, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_imageshow/assets/images/icons-16/icon-monitor.png', 0, '', 102, 103, 0, '', 1),
(125, 'main', 'CONFIGURATION_AND_MAINTENANCE', 'configuration-and-maintenance', '', 'com-imageshow/configuration-and-maintenance', 'index.php?option=com_imageshow&controller=maintenance&type=configs', 'component', 0, 121, 2, 704, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_imageshow/assets/images/icons-16/icon-cog.png', 0, '', 104, 105, 0, '', 1),
(126, 'main', 'ABOUT', 'about', '', 'com-imageshow/about', 'index.php?option=com_imageshow&controller=about', 'component', 0, 121, 2, 704, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_imageshow/assets/images/icons-16/icon-star.png', 0, '', 106, 107, 0, '', 1),
(127, 'main', 'COM_PHOCAGALLERY', 'com-phocagallery', '', 'com-phocagallery', 'index.php?option=com_phocagallery', 'component', 0, 1, 1, 713, 0, '0000-00-00 00:00:00', 0, 1, 'media/com_phocagallery/images/administrator/icon-16-pg-menu.png', 0, '', 109, 136, 0, '', 1),
(128, 'main', 'COM_PHOCAGALLERY_CONTROLPANEL', 'com-phocagallery-controlpanel', '', 'com-phocagallery/com-phocagallery-controlpanel', 'index.php?option=com_phocagallery', 'component', 0, 127, 2, 713, 0, '0000-00-00 00:00:00', 0, 1, 'media/com_phocagallery/images/administrator/icon-16-pg-control-panel.png', 0, '', 110, 111, 0, '', 1),
(129, 'main', 'COM_PHOCAGALLERY_IMAGES', 'com-phocagallery-images', '', 'com-phocagallery/com-phocagallery-images', 'index.php?option=com_phocagallery&view=phocagalleryimgs', 'component', 0, 127, 2, 713, 0, '0000-00-00 00:00:00', 0, 1, 'media/com_phocagallery/images/administrator/icon-16-pg-menu-gal.png', 0, '', 112, 113, 0, '', 1),
(130, 'main', 'COM_PHOCAGALLERY_CATEGORIES', 'com-phocagallery-categories', '', 'com-phocagallery/com-phocagallery-categories', 'index.php?option=com_phocagallery&view=phocagallerycs', 'component', 0, 127, 2, 713, 0, '0000-00-00 00:00:00', 0, 1, 'media/com_phocagallery/images/administrator/icon-16-pg-menu-cat.png', 0, '', 114, 115, 0, '', 1),
(131, 'main', 'COM_PHOCAGALLERY_THEMES', 'com-phocagallery-themes', '', 'com-phocagallery/com-phocagallery-themes', 'index.php?option=com_phocagallery&view=phocagalleryt', 'component', 0, 127, 2, 713, 0, '0000-00-00 00:00:00', 0, 1, 'media/com_phocagallery/images/administrator/icon-16-pg-menu-theme.png', 0, '', 116, 117, 0, '', 1),
(132, 'main', 'COM_PHOCAGALLERY_CATEGORYRATING', 'com-phocagallery-categoryrating', '', 'com-phocagallery/com-phocagallery-categoryrating', 'index.php?option=com_phocagallery&view=phocagalleryra', 'component', 0, 127, 2, 713, 0, '0000-00-00 00:00:00', 0, 1, 'media/com_phocagallery/images/administrator/icon-16-pg-menu-vote.png', 0, '', 118, 119, 0, '', 1),
(133, 'main', 'COM_PHOCAGALLERY_IMAGERATING', 'com-phocagallery-imagerating', '', 'com-phocagallery/com-phocagallery-imagerating', 'index.php?option=com_phocagallery&view=phocagalleryraimg', 'component', 0, 127, 2, 713, 0, '0000-00-00 00:00:00', 0, 1, 'media/com_phocagallery/images/administrator/icon-16-pg-menu-vote-img.png', 0, '', 120, 121, 0, '', 1),
(134, 'main', 'COM_PHOCAGALLERY_CATEGORYCOMMENTS', 'com-phocagallery-categorycomments', '', 'com-phocagallery/com-phocagallery-categorycomments', 'index.php?option=com_phocagallery&view=phocagallerycos', 'component', 0, 127, 2, 713, 0, '0000-00-00 00:00:00', 0, 1, 'media/com_phocagallery/images/administrator/icon-16-pg-menu-comment.png', 0, '', 122, 123, 0, '', 1),
(135, 'main', 'COM_PHOCAGALLERY_IMAGECOMMENTS', 'com-phocagallery-imagecomments', '', 'com-phocagallery/com-phocagallery-imagecomments', 'index.php?option=com_phocagallery&view=phocagallerycoimgs', 'component', 0, 127, 2, 713, 0, '0000-00-00 00:00:00', 0, 1, 'media/com_phocagallery/images/administrator/icon-16-pg-menu-comment-img.png', 0, '', 124, 125, 0, '', 1),
(136, 'main', 'COM_PHOCAGALLERY_USERS', 'com-phocagallery-users', '', 'com-phocagallery/com-phocagallery-users', 'index.php?option=com_phocagallery&view=phocagalleryusers', 'component', 0, 127, 2, 713, 0, '0000-00-00 00:00:00', 0, 1, 'media/com_phocagallery/images/administrator/icon-16-pg-menu-users.png', 0, '', 126, 127, 0, '', 1),
(137, 'main', 'COM_PHOCAGALLERY_FB', 'com-phocagallery-fb', '', 'com-phocagallery/com-phocagallery-fb', 'index.php?option=com_phocagallery&view=phocagalleryfbs', 'component', 0, 127, 2, 713, 0, '0000-00-00 00:00:00', 0, 1, 'media/com_phocagallery/images/administrator/icon-16-pg-menu-fb.png', 0, '', 128, 129, 0, '', 1),
(138, 'main', 'COM_PHOCAGALLERY_TAGS', 'com-phocagallery-tags', '', 'com-phocagallery/com-phocagallery-tags', 'index.php?option=com_phocagallery&view=phocagallerytags', 'component', 0, 127, 2, 713, 0, '0000-00-00 00:00:00', 0, 1, 'media/com_phocagallery/images/administrator/icon-16-pg-menu-tags.png', 0, '', 130, 131, 0, '', 1),
(139, 'main', 'COM_PHOCAGALLERY_STYLES', 'com-phocagallery-styles', '', 'com-phocagallery/com-phocagallery-styles', 'index.php?option=com_phocagallery&view=phocagalleryefs', 'component', 0, 127, 2, 713, 0, '0000-00-00 00:00:00', 0, 1, 'media/com_phocagallery/images/administrator/icon-16-pg-menu-styles.png', 0, '', 132, 133, 0, '', 1),
(140, 'main', 'COM_PHOCAGALLERY_INFO', 'com-phocagallery-info', '', 'com-phocagallery/com-phocagallery-info', 'index.php?option=com_phocagallery&view=phocagalleryin', 'component', 0, 127, 2, 713, 0, '0000-00-00 00:00:00', 0, 1, 'media/com_phocagallery/images/administrator/icon-16-pg-menu-info.png', 0, '', 134, 135, 0, '', 1),
(141, 'sobre-a-empresa', 'Nossa História', 'nossa-historia', '', 'nossa-historia', 'index.php?option=com_content&view=category&layout=blog&id=10', 'component', -2, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 11, '{"layout_type":"blog","show_category_heading_title_text":"","show_category_title":"","show_description":"","show_description_image":"","maxLevel":"","show_empty_categories":"","show_no_articles":"","show_subcat_desc":"","show_cat_num_articles":"","show_cat_tags":"","page_subheading":"","num_leading_articles":"","num_intro_articles":"","num_columns":"","num_links":"","multi_column_order":"","show_subcategory_content":"","orderby_pri":"","orderby_sec":"","order_date":"","show_pagination":"","show_pagination_results":"","show_title":"","link_titles":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_readmore":"","show_readmore_title":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 137, 138, 0, '*', 0),
(142, 'sobre-a-empresa', 'Missão e Visão', 'missao-e-visao', '', 'missao-e-visao', 'index.php?option=com_content&view=category&layout=blog&id=2', 'component', -2, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"layout_type":"blog","show_category_heading_title_text":"","show_category_title":"","show_description":"","show_description_image":"","maxLevel":"","show_empty_categories":"","show_no_articles":"","show_subcat_desc":"","show_cat_num_articles":"","show_cat_tags":"","page_subheading":"","num_leading_articles":"","num_intro_articles":"","num_columns":"","num_links":"","multi_column_order":"","show_subcategory_content":"","orderby_pri":"","orderby_sec":"","order_date":"","show_pagination":"","show_pagination_results":"","show_title":"","link_titles":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_readmore":"","show_readmore_title":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 139, 140, 0, '*', 0),
(143, 'sobre-a-empresa', 'Linha do tempo', 'linha-do-tempo', '', 'linha-do-tempo', 'index.php?option=com_content&view=category&layout=blog&id=12', 'component', -2, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"layout_type":"blog","show_category_heading_title_text":"","show_category_title":"","show_description":"","show_description_image":"","maxLevel":"","show_empty_categories":"","show_no_articles":"","show_subcat_desc":"","show_cat_num_articles":"","show_cat_tags":"","page_subheading":"","num_leading_articles":"","num_intro_articles":"","num_columns":"","num_links":"","multi_column_order":"","show_subcategory_content":"","orderby_pri":"","orderby_sec":"","order_date":"","show_pagination":"","show_pagination_results":"","show_title":"","link_titles":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_readmore":"","show_readmore_title":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 141, 142, 0, '*', 0),
(144, 'sobre-a-empresa', 'Projetos', 'projetos', '', 'projetos', 'index.php?option=com_content&view=category&layout=blog&id=2', 'component', -2, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 11, '{"layout_type":"blog","show_category_heading_title_text":"","show_category_title":"","show_description":"","show_description_image":"","maxLevel":"","show_empty_categories":"","show_no_articles":"","show_subcat_desc":"","show_cat_num_articles":"","show_cat_tags":"","page_subheading":"","num_leading_articles":"","num_intro_articles":"","num_columns":"","num_links":"","multi_column_order":"","show_subcategory_content":"","orderby_pri":"","orderby_sec":"","order_date":"","show_pagination":"","show_pagination_results":"","show_title":"","link_titles":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_readmore":"","show_readmore_title":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 143, 144, 0, '*', 0),
(145, 'sobre-a-empresa', 'Portal Governança', 'portal-governanca', '', 'portal-governanca', 'index.php?option=com_content&view=category&layout=blog&id=2', 'component', -2, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"layout_type":"blog","show_category_heading_title_text":"","show_category_title":"","show_description":"","show_description_image":"","maxLevel":"","show_empty_categories":"","show_no_articles":"","show_subcat_desc":"","show_cat_num_articles":"","show_cat_tags":"","page_subheading":"","num_leading_articles":"","num_intro_articles":"","num_columns":"","num_links":"","multi_column_order":"","show_subcategory_content":"","orderby_pri":"","orderby_sec":"","order_date":"","show_pagination":"","show_pagination_results":"","show_title":"","link_titles":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_readmore":"","show_readmore_title":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 145, 146, 0, '*', 0),
(146, 'sobre-a-empresa', 'Organograma', 'organograma', '', 'organograma', 'index.php?option=com_content&view=category&layout=blog&id=15', 'component', -2, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"layout_type":"blog","show_category_heading_title_text":"","show_category_title":"","show_description":"","show_description_image":"","maxLevel":"","show_empty_categories":"","show_no_articles":"","show_subcat_desc":"","show_cat_num_articles":"","show_cat_tags":"","page_subheading":"","num_leading_articles":"","num_intro_articles":"","num_columns":"","num_links":"","multi_column_order":"","show_subcategory_content":"","orderby_pri":"","orderby_sec":"","order_date":"","show_pagination":"","show_pagination_results":"","show_title":"","link_titles":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_readmore":"","show_readmore_title":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 147, 148, 0, '*', 0),
(147, 'organograma', 'Presidência e Assessoria', 'presidencia-e-acessoria', '', 'presidencia-e-acessoria', 'index.php?option=com_content&view=category&layout=blog&id=16', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"layout_type":"blog","show_category_heading_title_text":"","show_category_title":"","show_description":"","show_description_image":"","maxLevel":"","show_empty_categories":"","show_no_articles":"","show_subcat_desc":"","show_cat_num_articles":"","show_cat_tags":"","page_subheading":"","num_leading_articles":"","num_intro_articles":"","num_columns":"","num_links":"","multi_column_order":"","show_subcategory_content":"","orderby_pri":"","orderby_sec":"","order_date":"","show_pagination":"","show_pagination_results":"","show_title":"","link_titles":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_readmore":"","show_readmore_title":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 149, 150, 0, '*', 0),
(148, 'organograma', 'Diretoria de Operação e Manutenção', 'diretoria-de-operacao-e-manutencao', '', 'diretoria-de-operacao-e-manutencao', 'index.php?option=com_content&view=category&layout=blog&id=17', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"layout_type":"blog","show_category_heading_title_text":"","show_category_title":"","show_description":"","show_description_image":"","maxLevel":"","show_empty_categories":"","show_no_articles":"","show_subcat_desc":"","show_cat_num_articles":"","show_cat_tags":"","page_subheading":"","num_leading_articles":"","num_intro_articles":"","num_columns":"","num_links":"","multi_column_order":"","show_subcategory_content":"","orderby_pri":"","orderby_sec":"","order_date":"","show_pagination":"","show_pagination_results":"","show_title":"","link_titles":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_readmore":"","show_readmore_title":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 151, 152, 0, '*', 0);
INSERT INTO `iwk5c_menu` (`id`, `menutype`, `title`, `alias`, `note`, `path`, `link`, `type`, `published`, `parent_id`, `level`, `component_id`, `checked_out`, `checked_out_time`, `browserNav`, `access`, `img`, `template_style_id`, `params`, `lft`, `rgt`, `home`, `language`, `client_id`) VALUES
(149, 'organograma', 'Diretoria do Administrativo e Financeiro', 'diretoria-do-administrativo-e-financeiro', '', 'diretoria-do-administrativo-e-financeiro', 'index.php?option=com_content&view=category&layout=blog&id=18', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"layout_type":"blog","show_category_heading_title_text":"","show_category_title":"","show_description":"","show_description_image":"","maxLevel":"","show_empty_categories":"","show_no_articles":"","show_subcat_desc":"","show_cat_num_articles":"","show_cat_tags":"","page_subheading":"","num_leading_articles":"","num_intro_articles":"","num_columns":"","num_links":"","multi_column_order":"","show_subcategory_content":"","orderby_pri":"","orderby_sec":"","order_date":"","show_pagination":"","show_pagination_results":"","show_title":"","link_titles":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_readmore":"","show_readmore_title":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 153, 154, 0, '*', 0),
(150, 'organograma', 'Diretoria de Estações', 'diretoria-de-estacoes', '', 'diretoria-de-estacoes', 'index.php?option=com_content&view=category&layout=blog&id=19', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"layout_type":"blog","show_category_heading_title_text":"","show_category_title":"","show_description":"","show_description_image":"","maxLevel":"","show_empty_categories":"","show_no_articles":"","show_subcat_desc":"","show_cat_num_articles":"","show_cat_tags":"","page_subheading":"","num_leading_articles":"","num_intro_articles":"","num_columns":"","num_links":"","multi_column_order":"","show_subcategory_content":"","orderby_pri":"","orderby_sec":"","order_date":"","show_pagination":"","show_pagination_results":"","show_title":"","link_titles":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_readmore":"","show_readmore_title":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 155, 156, 0, '*', 0),
(151, 'organograma', 'Diretoria de Obras', 'diretoria-de-obras', '', 'diretoria-de-obras', 'index.php?option=com_content&view=category&layout=blog&id=20', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"layout_type":"blog","show_category_heading_title_text":"","show_category_title":"","show_description":"","show_description_image":"","maxLevel":"","show_empty_categories":"","show_no_articles":"","show_subcat_desc":"","show_cat_num_articles":"","show_cat_tags":"","page_subheading":"","num_leading_articles":"","num_intro_articles":"","num_columns":"","num_links":"","multi_column_order":"","show_subcategory_content":"","orderby_pri":"","orderby_sec":"","order_date":"","show_pagination":"","show_pagination_results":"","show_title":"","link_titles":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_readmore":"","show_readmore_title":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 157, 158, 0, '*', 0),
(152, 'organograma', 'Diretoria de Planejamento', 'diretoria-de-planejamento', '', 'diretoria-de-planejamento', 'index.php?option=com_content&view=category&layout=blog&id=21', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"layout_type":"blog","show_category_heading_title_text":"","show_category_title":"","show_description":"","show_description_image":"","maxLevel":"","show_empty_categories":"","show_no_articles":"","show_subcat_desc":"","show_cat_num_articles":"","show_cat_tags":"","page_subheading":"","num_leading_articles":"","num_intro_articles":"","num_columns":"","num_links":"","multi_column_order":"","show_subcategory_content":"","orderby_pri":"","orderby_sec":"","order_date":"","show_pagination":"","show_pagination_results":"","show_title":"","link_titles":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_readmore":"","show_readmore_title":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 159, 160, 0, '*', 0),
(153, 'trem', 'Mapas', 'mapas', '', 'mapas', 'index.php?option=com_content&view=category&layout=blog&id=24', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"layout_type":"blog","show_category_heading_title_text":"","show_category_title":"","show_description":"","show_description_image":"","maxLevel":"","show_empty_categories":"","show_no_articles":"","show_subcat_desc":"","show_cat_num_articles":"","show_cat_tags":"","page_subheading":"","num_leading_articles":"","num_intro_articles":"","num_columns":"","num_links":"","multi_column_order":"","show_subcategory_content":"","orderby_pri":"","orderby_sec":"","order_date":"","show_pagination":"","show_pagination_results":"","show_title":"","link_titles":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_readmore":"","show_readmore_title":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 161, 162, 0, '*', 0),
(154, 'trem', 'Preços e Horários', 'precos-e-horarios', '', 'precos-e-horarios', 'index.php?option=com_content&view=category&layout=blog&id=25', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"layout_type":"blog","show_category_heading_title_text":"","show_category_title":"","show_description":"","show_description_image":"","maxLevel":"","show_empty_categories":"","show_no_articles":"","show_subcat_desc":"","show_cat_num_articles":"","show_cat_tags":"","page_subheading":"","num_leading_articles":"","num_intro_articles":"","num_columns":"","num_links":"","multi_column_order":"","show_subcategory_content":"","orderby_pri":"","orderby_sec":"","order_date":"","show_pagination":"","show_pagination_results":"","show_title":"","link_titles":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_readmore":"","show_readmore_title":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 163, 164, 0, '*', 0),
(155, 'trem', 'Obras', 'obras', '', 'obras', 'index.php?option=com_content&view=category&layout=blog&id=26', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"layout_type":"blog","show_category_heading_title_text":"","show_category_title":"","show_description":"","show_description_image":"","maxLevel":"","show_empty_categories":"","show_no_articles":"","show_subcat_desc":"","show_cat_num_articles":"","show_cat_tags":"","page_subheading":"","num_leading_articles":"","num_intro_articles":"","num_columns":"","num_links":"","multi_column_order":"","show_subcategory_content":"","orderby_pri":"","orderby_sec":"","order_date":"","show_pagination":"","show_pagination_results":"","show_title":"","link_titles":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_readmore":"","show_readmore_title":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 165, 166, 0, '*', 0),
(156, 'main', 'COM_CHRONOFORMS5', 'com-chronoforms5', '', 'com-chronoforms5', 'index.php?option=com_chronoforms5', 'component', 0, 1, 1, 717, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_chronoforms5/CF.png', 0, '', 167, 172, 0, '', 1),
(157, 'main', 'COM_CHRONOFORMS5', 'com-chronoforms5', '', 'com-chronoforms5/com-chronoforms5', 'index.php?option=com_chronoforms5', 'component', 0, 156, 2, 717, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '', 168, 169, 0, '', 1),
(158, 'main', 'COM_CHRONOFORMS5_VALIDATE', 'com-chronoforms5-validate', '', 'com-chronoforms5/com-chronoforms5-validate', 'index.php?option=com_chronoforms5&act=validateinstall', 'component', 0, 156, 2, 717, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '', 170, 171, 0, '', 1),
(159, 'main', 'COM_VISFORMS', 'com-visforms', '', 'com-visforms', 'index.php?option=com_visforms', 'component', 0, 1, 1, 719, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_visforms/images/icon-16-visforms.png', 0, '', 173, 174, 0, '', 1),
(160, 'mainmenu', 'Missão e Visão', 'missao-visao', '', 'sobre-empresa/missao-visao', 'index.php?option=com_content&view=category&layout=blog&id=11', 'component', 1, 108, 2, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"layout_type":"blog","show_category_heading_title_text":"","show_category_title":"","show_description":"","show_description_image":"","maxLevel":"","show_empty_categories":"","show_no_articles":"","show_subcat_desc":"","show_cat_num_articles":"","show_cat_tags":"","page_subheading":"","num_leading_articles":"","num_intro_articles":"","num_columns":"","num_links":"","multi_column_order":"","show_subcategory_content":"","orderby_pri":"","orderby_sec":"","order_date":"","show_pagination":"","show_pagination_results":"","show_title":"","link_titles":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_readmore":"","show_readmore_title":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 62, 63, 0, '*', 0),
(161, 'mainmenu', 'Nossa História', 'nossa-historia', '', 'sobre-empresa/nossa-historia', 'index.php?option=com_content&view=category&layout=blog&id=10', 'component', 1, 108, 2, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"layout_type":"blog","show_category_heading_title_text":"","show_category_title":"","show_description":"","show_description_image":"","maxLevel":"","show_empty_categories":"","show_no_articles":"","show_subcat_desc":"","show_cat_num_articles":"","show_cat_tags":"","page_subheading":"","num_leading_articles":"","num_intro_articles":"","num_columns":"","num_links":"","multi_column_order":"","show_subcategory_content":"","orderby_pri":"","orderby_sec":"","order_date":"","show_pagination":"","show_pagination_results":"","show_title":"","link_titles":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_readmore":"","show_readmore_title":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 64, 65, 0, '*', 0),
(162, 'mainmenu', 'Organograma', 'organograma', '', 'sobre-empresa/organograma', 'index.php?option=com_content&view=category&layout=blog&id=15', 'component', 1, 108, 2, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"layout_type":"blog","show_category_heading_title_text":"","show_category_title":"","show_description":"","show_description_image":"","maxLevel":"","show_empty_categories":"","show_no_articles":"","show_subcat_desc":"","show_cat_num_articles":"","show_cat_tags":"","page_subheading":"","num_leading_articles":"","num_intro_articles":"","num_columns":"","num_links":"","multi_column_order":"","show_subcategory_content":"","orderby_pri":"","orderby_sec":"","order_date":"","show_pagination":"","show_pagination_results":"","show_title":"","link_titles":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_readmore":"","show_readmore_title":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 66, 67, 0, '*', 0),
(163, 'mainmenu', 'Estatuto Social', 'estatuto', '', 'sobre-empresa/estatuto', 'index.php?option=com_content&view=category&layout=blog&id=31', 'component', 1, 108, 2, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"layout_type":"blog","show_category_heading_title_text":"","show_category_title":"","show_description":"","show_description_image":"","maxLevel":"","show_empty_categories":"","show_no_articles":"","show_subcat_desc":"","show_cat_num_articles":"","show_cat_tags":"","page_subheading":"","num_leading_articles":"","num_intro_articles":"","num_columns":"","num_links":"","multi_column_order":"","show_subcategory_content":"","orderby_pri":"","orderby_sec":"","order_date":"","show_pagination":"","show_pagination_results":"","show_title":"","link_titles":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_readmore":"","show_readmore_title":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 68, 69, 0, '*', 0),
(164, 'mainmenu', 'Regimento', 'regimento', '', 'sobre-empresa/regimento', 'index.php?option=com_content&view=category&layout=blog&id=29', 'component', 1, 108, 2, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"layout_type":"blog","show_category_heading_title_text":"","show_category_title":"","show_description":"","show_description_image":"","maxLevel":"","show_empty_categories":"","show_no_articles":"","show_subcat_desc":"","show_cat_num_articles":"","show_cat_tags":"","page_subheading":"","num_leading_articles":"","num_intro_articles":"","num_columns":"","num_links":"","multi_column_order":"","show_subcategory_content":"","orderby_pri":"","orderby_sec":"","order_date":"","show_pagination":"","show_pagination_results":"","show_title":"","link_titles":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_readmore":"","show_readmore_title":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 70, 71, 0, '*', 0),
(165, 'mainmenu', 'Intranet', 'intranet', '', 'intranet', 'index.php?option=com_content&view=category&layout=blog&id=36', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"layout_type":"blog","show_category_heading_title_text":"","show_category_title":"","show_description":"","show_description_image":"","maxLevel":"","show_empty_categories":"","show_no_articles":"","show_subcat_desc":"","show_cat_num_articles":"","show_cat_tags":"","page_subheading":"","num_leading_articles":"","num_intro_articles":"","num_columns":"","num_links":"","multi_column_order":"","show_subcategory_content":"","orderby_pri":"","orderby_sec":"","order_date":"","show_pagination":"","show_pagination_results":"","show_title":"","link_titles":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_readmore":"","show_readmore_title":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 175, 176, 0, '*', 0),
(166, 'mainmenu', 'Eventos', 'eventos', '', 'eventos', 'index.php?option=com_content&view=category&layout=blog&id=37', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"layout_type":"blog","show_category_heading_title_text":"","show_category_title":"","show_description":"","show_description_image":"","maxLevel":"","show_empty_categories":"","show_no_articles":"","show_subcat_desc":"","show_cat_num_articles":"","show_cat_tags":"","page_subheading":"","num_leading_articles":"","num_intro_articles":"","num_columns":"","num_links":"","multi_column_order":"","show_subcategory_content":"","orderby_pri":"","orderby_sec":"","order_date":"","show_pagination":"","show_pagination_results":"","show_title":"","link_titles":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_readmore":"","show_readmore_title":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 177, 178, 0, '*', 0),
(167, 'mainmenu', 'Projetos', 'projetosctb', '', 'projetosctb', 'index.php?option=com_content&view=category&layout=blog&id=2', 'component', 0, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"layout_type":"blog","show_category_heading_title_text":"","show_category_title":"","show_description":"","show_description_image":"","maxLevel":"","show_empty_categories":"","show_no_articles":"","show_subcat_desc":"","show_cat_num_articles":"","show_cat_tags":"","page_subheading":"","num_leading_articles":"","num_intro_articles":"","num_columns":"","num_links":"","multi_column_order":"","show_subcategory_content":"","orderby_pri":"","orderby_sec":"","order_date":"","show_pagination":"","show_pagination_results":"","show_title":"","link_titles":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_readmore":"","show_readmore_title":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 179, 180, 0, '*', 0),
(168, 'menu-topo', 'Links', 'links', '', 'links', 'index.php?option=com_weblinks&view=category&id=6', 'component', 1, 1, 1, 21, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_category_title":"","show_description":"","show_description_image":"","maxLevel":"","show_empty_categories":"","show_subcat_desc":"","show_cat_num_links":"","filter_field":"","show_pagination_limit":"","show_headings":"","show_link_description":"","show_link_hits":"","show_pagination":"","show_pagination_results":"","show_feed_link":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 181, 182, 0, '*', 0),
(169, 'menu-topo', 'Imprensa', 'imprensa', '', 'imprensa', 'index.php?option=com_weblinks&view=category&id=6', 'component', 1, 1, 1, 21, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_category_title":"","show_description":"","show_description_image":"","maxLevel":"","show_empty_categories":"","show_subcat_desc":"","show_cat_num_links":"","filter_field":"","show_pagination_limit":"","show_headings":"","show_link_description":"","show_link_hits":"","show_pagination":"","show_pagination_results":"","show_feed_link":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 183, 184, 0, '*', 0),
(170, 'main', 'COM_MIJOPOLLS', 'com-mijopolls', '', 'com-mijopolls', 'index.php?option=com_mijopolls', 'component', 0, 1, 1, 728, 0, '0000-00-00 00:00:00', 0, 1, '../media/mijopolls/images/mijopolls.png', 0, '', 185, 190, 0, '', 1),
(171, 'main', 'COM_MIJOPOLLS_POLLS', 'com-mijopolls-polls', '', 'com-mijopolls/com-mijopolls-polls', 'index.php?option=com_mijopolls&controller=polls', 'component', 0, 170, 2, 728, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '', 186, 187, 0, '', 1),
(172, 'main', 'COM_MIJOPOLLS_VOTES', 'com-mijopolls-votes', '', 'com-mijopolls/com-mijopolls-votes', 'index.php?option=com_mijopolls&controller=votes', 'component', 0, 170, 2, 728, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '', 188, 189, 0, '', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `iwk5c_menu_types`
--

CREATE TABLE IF NOT EXISTS `iwk5c_menu_types` (
`id` int(10) unsigned NOT NULL,
  `menutype` varchar(24) NOT NULL,
  `title` varchar(48) NOT NULL,
  `description` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `iwk5c_menu_types`
--

INSERT INTO `iwk5c_menu_types` (`id`, `menutype`, `title`, `description`) VALUES
(1, 'mainmenu', 'Main Menu', 'The main menu for the site'),
(2, 'menu-topo', 'MenuTopo', 'Menu TOPO'),
(3, 'menu-informativo', 'Menu Informativo', 'Menu Informativo'),
(4, 'sobre-a-empresa', 'Sobre a Empresa', 'Sobre a Empresa'),
(5, 'organograma', 'Organograma', 'Organograma'),
(6, 'trem', 'Trem do Subúrbio', 'Trem do Subúrbio');

-- --------------------------------------------------------

--
-- Estrutura da tabela `iwk5c_messages`
--

CREATE TABLE IF NOT EXISTS `iwk5c_messages` (
`message_id` int(10) unsigned NOT NULL,
  `user_id_from` int(10) unsigned NOT NULL DEFAULT '0',
  `user_id_to` int(10) unsigned NOT NULL DEFAULT '0',
  `folder_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `date_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `state` tinyint(1) NOT NULL DEFAULT '0',
  `priority` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `subject` varchar(255) NOT NULL DEFAULT '',
  `message` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `iwk5c_messages_cfg`
--

CREATE TABLE IF NOT EXISTS `iwk5c_messages_cfg` (
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `cfg_name` varchar(100) NOT NULL DEFAULT '',
  `cfg_value` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `iwk5c_mijopolls_options`
--

CREATE TABLE IF NOT EXISTS `iwk5c_mijopolls_options` (
`id` int(11) NOT NULL,
  `poll_id` int(11) NOT NULL DEFAULT '0',
  `text` text NOT NULL,
  `link` varchar(255) DEFAULT NULL,
  `color` varchar(6) NOT NULL,
  `ordering` int(11) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `iwk5c_mijopolls_options`
--

INSERT INTO `iwk5c_mijopolls_options` (`id`, `poll_id`, `text`, `link`, `color`, `ordering`) VALUES
(1, 1, 'Sim, gostei!!', NULL, 'ff0000', 0),
(2, 1, 'Pra mim ficou a mesma coisa', NULL, 'ffff99', 1),
(3, 1, 'Ruim, nao gostei!!', NULL, 'ff00ff', 2);

-- --------------------------------------------------------

--
-- Estrutura da tabela `iwk5c_mijopolls_polls`
--

CREATE TABLE IF NOT EXISTS `iwk5c_mijopolls_polls` (
`id` int(11) unsigned NOT NULL,
  `title` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) NOT NULL DEFAULT '',
  `checked_out` int(11) NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime DEFAULT '0000-00-00 00:00:00',
  `params` text NOT NULL,
  `access` int(11) NOT NULL DEFAULT '0',
  `lag` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `iwk5c_mijopolls_polls`
--

INSERT INTO `iwk5c_mijopolls_polls` (`id`, `title`, `alias`, `checked_out`, `checked_out_time`, `published`, `publish_up`, `publish_down`, `params`, `access`, `lag`) VALUES
(1, 'Voce gostou do novo layout do site da CTB?', 'voce-gostou-do-novo-layout-do-site-da-ctb', 0, '0000-00-00 00:00:00', 1, '2015-01-22 00:00:00', '2015-02-22 00:00:00', '{"only_registered":"0","one_vote_per_user":"1","ip_check":"0","show_component_msg":"1","allow_voting":"1","show_what":"1","show_hits":"1","show_voters":"1","show_times":"1","show_dropdown":"1","show_title":"1","opacity":"90","bg_color":"ffffff","circle_color":"505050","pieX":"100%","pieY":"400","start_angle":"55","radius":"150","gradient":"1","no_labels":"0","show_zero_votes":"1","animation_type":"bounce","bounce_dinstance":"30","bg_image":"-1","bg_image_x":"left","bg_image_y":"top","font_size":"11","font_color":"404040","title_lenght":"30","chartX":"100%","optionsFontSize":"12","barHeight":"15","barBorder":"1px solid #000000","bgBarColor":"f5f5f5","bgBarBorder":"1px solid #cccccc"}', 1, 1440);

-- --------------------------------------------------------

--
-- Estrutura da tabela `iwk5c_mijopolls_votes`
--

CREATE TABLE IF NOT EXISTS `iwk5c_mijopolls_votes` (
`id` bigint(20) NOT NULL,
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `option_id` int(11) NOT NULL DEFAULT '0',
  `poll_id` int(11) NOT NULL DEFAULT '0',
  `ip` int(10) unsigned NOT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `iwk5c_modules`
--

CREATE TABLE IF NOT EXISTS `iwk5c_modules` (
`id` int(11) NOT NULL,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `title` varchar(100) NOT NULL DEFAULT '',
  `note` varchar(255) NOT NULL DEFAULT '',
  `content` text NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  `position` varchar(50) NOT NULL DEFAULT '',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `module` varchar(50) DEFAULT NULL,
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `showtitle` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `params` text NOT NULL,
  `client_id` tinyint(4) NOT NULL DEFAULT '0',
  `language` char(7) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=170 DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `iwk5c_modules`
--

INSERT INTO `iwk5c_modules` (`id`, `asset_id`, `title`, `note`, `content`, `ordering`, `position`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `published`, `module`, `access`, `showtitle`, `params`, `client_id`, `language`) VALUES
(1, 39, 'Main Menu', '', '', 1, 'sidebar-1', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_menu', 1, 1, '{"menutype":"mainmenu","base":"","startLevel":"1","endLevel":"9","showAllChildren":"1","tag_id":"","class_sfx":"","window_open":"","layout":"_:default","moduleclass_sfx":" esp01","cache":"1","cache_time":"900","cachemode":"itemid","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(2, 56, 'Login', '', '', 1, 'login', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_login', 1, 1, '', 1, '*'),
(3, 57, 'Popular Articles', '', '', 3, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_popular', 3, 1, '{"count":"5","catid":"","user_id":"0","layout":"_:default","moduleclass_sfx":"","cache":"0","automatic_title":"1"}', 1, '*'),
(4, 58, 'Recently Added Articles', '', '', 4, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_latest', 3, 1, '{"count":"5","ordering":"c_dsc","catid":"","user_id":"0","layout":"_:default","moduleclass_sfx":"","cache":"0","automatic_title":"1"}', 1, '*'),
(8, 59, 'Toolbar', '', '', 1, 'toolbar', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_toolbar', 3, 1, '', 1, '*'),
(9, 60, 'Quick Icons', '', '', 1, 'icon', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_quickicon', 3, 1, '', 1, '*'),
(10, 61, 'Logged-in Users', '', '', 2, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_logged', 3, 1, '{"count":"5","name":"1","layout":"_:default","moduleclass_sfx":"","cache":"0","automatic_title":"1"}', 1, '*'),
(12, 62, 'Admin Menu', '', '', 1, 'menu', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 3, 1, '{"layout":"","moduleclass_sfx":"","shownew":"1","showhelp":"1","cache":"0"}', 1, '*'),
(13, 63, 'Admin Submenu', '', '', 1, 'submenu', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_submenu', 3, 1, '', 1, '*'),
(14, 64, 'User Status', '', '', 2, 'status', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_status', 3, 1, '', 1, '*'),
(15, 65, 'Title', '', '', 1, 'title', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_title', 3, 1, '', 1, '*'),
(16, 50, 'Login Form', '', '', 1, 'left', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_login', 1, 1, '{"pretext":"","posttext":"","login":"","logout":"","greeting":"1","name":"0","usesecure":"0","usetext":"0","layout":"_:default","moduleclass_sfx":"-box richbox-4","cache":"0","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(17, 51, 'Breadcrumbs', '', '', 1, 'position-2', 303, '2015-01-05 13:44:08', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_breadcrumbs', 1, 1, '{"showHere":"1","showHome":"1","homeText":"","showLast":"1","separator":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"itemid","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(79, 68, 'Multilanguage status', '', '', 1, 'status', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_multilangstatus', 3, 1, '{"layout":"_:default","moduleclass_sfx":"","cache":"0"}', 1, '*'),
(86, 69, 'Joomla Version', '', '', 1, 'footer', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_version', 3, 1, '{"format":"short","product":"1","layout":"_:default","moduleclass_sfx":"","cache":"0"}', 1, '*'),
(87, 54, 'testando123', '', '<p><strong>testando 123</strong></p>', 1, 'left', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_custom', 1, 1, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(88, 56, 'Menu TOPO', '', '', 1, 'navhelper', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 1, 0, '{"menutype":"menu-topo","base":"","startLevel":"1","endLevel":"6","showAllChildren":"1","tag_id":"base-mainmenu","class_sfx":"","window_open":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"itemid","module_tag":"div","bootstrap_size":"5","header_tag":"h3","header_class":"","style":"Jsn_dome_free-jsnxhtml"}', 0, '*'),
(89, 57, 'footerCTB', '', '<p style="text-align: center;">Companhia de Transporte do Estado da  Bahia</p>\r\n<p style="text-align: center;">Largo da Calçada, S/N Salvador - BA 40.410-360</p>\r\n<p style="text-align: center;">Telefone: (71) 3612-1200</p>', 1, 'footer', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(90, 58, 'Menu Informativo', '', '', 1, 'sidebar-1', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_menu', 1, 1, '{"menutype":"menu-informativo","base":"108","startLevel":"1","endLevel":"5","showAllChildren":"1","tag_id":"","class_sfx":"","window_open":"","layout":"_:default","moduleclass_sfx":" esp01","cache":"1","cache_time":"900","cachemode":"itemid","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(91, 60, 'JSN ImageShow', '', '', 1, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_imageshow', 1, 1, '{"moduleclass_sfx":"","showlist_id":"0","showcase_id":"0","width":"","height":"","pretext":"","posttext":"","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(92, 61, 'JSN imageshow Quick Icons', '', '', 0, 'icon', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_imageshow_quickicon', 1, 1, '', 1, '*'),
(93, 67, 'Sobre a Companhia de Transporte do Estado da Bahia', '', '<p>A Companhia de Transportes do Estado da Bahia(CTB) é uma empresa estatal do Estado da Bahia e está subordinada à Secretaria de Desenvolvimento Urbano(SEDUR). O Serviço de transportes de passageiros sobre os trilhosde competência estadual é o foco do objetivo da CTB. Fundada em 1999, a sua sede situa-se no bairro da Calçada na cidade de Salvador e é presidido atualmente por Carlos Martins.</p>', 1, 'user1', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_custom', 1, 1, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(94, 70, 'Sobre a Companhia de Transporte do Estado da Bahia ', '', '<h2 class="contentheading">Sobre a Companhia de Transporte do Estado da Bahia</h2>\r\n<p>A Companhia de Transportes do Estado da Bahia(CTB) é uma empresa estatal do Estado da Bahia e está subordinada à Secretaria de Desenvolvimento Urbano(SEDUR). O Serviço de transportes de passageiros sobre os trilhosde competência estadual é o foco do objetivo da CTB. Fundada em 1999, a sua sede situa-se no bairro da Calçada na cidade de Salvador e é presidido atualmente por Carlos Martins.</p>', 1, 'home-1', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"-contentheading","style":"0"}', 0, '*'),
(95, 73, 'Sobre a empresa', '', '', 1, 'sidebar-2', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 1, 1, '{"menutype":"sobre-a-empresa","base":"","startLevel":"1","endLevel":"6","showAllChildren":"1","tag_id":"","class_sfx":"-treemenu","window_open":"","layout":"_:default","moduleclass_sfx":"-box richbox-4","cache":"1","cache_time":"900","cachemode":"itemid","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(96, 80, 'Nossa História', '', '<h2 class="contentheading">Nossa História</h2>\r\n<p style="text-align: justify;"><span style="text-align: justify; line-height: 1.5;">O Sistema de Trens Urbanos de Salvador está em operação desde junho de 1860, sendo o quinto mais antigo do Brasil. De 1860 a 1911 foi operado por concessionário inglês, de 1911 a 1935 foi operado por concessionário francês. A partir de 1935 foi operada por empresa pública nacional e encampada pela RFFSA em 1957. Em 1988 passou para gestão e operação da CBTU. </span><span style="line-height: 1.5;">Através da assinatura de um convênio de municipalização firmado em 30 de novembro de 2005, o município sob a gestão do Prefeito João Henrique Carneiro (2004-2012), assume o Sistema de Trens Urbanos da cidade, surgindo então a Companhia de Transportes de Salvador. A CTS então deu início a um processo de revitalização e modernização, proporcionando, dessa maneira, conforto, segurança e bem estar ao usuário. </span><span style="text-align: justify; line-height: 1.5;">No ano de 2013, a CTS saiu do responsabilidade da prefeitura para pertencer ao estado, se tornando a CTB(Companhia de Transportes do Estado da Bahia).</span></p>', 1, 'home-1', 303, '2015-01-14 13:33:12', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(97, 81, 'Linha do tempo', '', '<h2 class="contentheading">Linha do Tempo</h2>\r\n<p class="blogcalendar"><img style="display: block; margin-left: auto; margin-right: auto;" src="images/calcada_old.jpg" alt="calcada_old" width="400" height="290" /></p>\r\n<p class="blogcalendar"> </p>\r\n<p class="blogcalendar" style="text-align: justify;">A Estação da Calçada é a principal edificação da Estrada de Ferro Bahia and San Francisco Railway, por estar localizada na Capital, e por ser a mais importante estação de quase todas as ferrovias que viriam a ser construídas na Bahia. É um exemplar monumental da arquitetura eclética, toda construída originalmente de ferro desde a sua infraestrutura, como as vigas baldrames, até a superestrutura, tais como pilares, vigamento da superestrutura, escadas e estruturas de cobertura com clarabóias de ferro. A iluminação dos espaços internos é uma característica marcante da arquitetura eclética, fazendo um contraponto com os ambientes sombrios da arquitetura portuguesa tradicional. As paredes de vedação dos espaços, em painéis pré-moldados e as peças sanitárias, gradis, telhas e até os ornatos em ferro forjado ou fundido.</p>\r\n<p class="blogcalendar"> </p>\r\n<p class="blogcalendar"><img style="display: block; margin-left: auto; margin-right: auto;" src="images/calcada_old2.jpg" alt="calcada_old2" width="400" height="303" /></p>\r\n<p class="blogcalendar"> </p>\r\n<p class="blogcalendar" style="text-align: justify;">A cobertura, calhas, cornijas gradis das varandas, mísulas e ornatos reproduzem os símbolos do progresso das ferrovias, como a roda alada, tudo em ferro forjado ou fundido. O assoalho e o forro eram de madeira. O frontão neoclássico do coroamento da fachada é um detalhe construtivo muito utilizado nos edifícios públicos do período eclético. Nesta estação, reflete-se o diálogo entre a arte apresentada no tratamento artístico do corpo principal da edificação, a plasticidade dos ornatos reproduzidos em escala, apresentados em catálogos das fábricas inglesas e a tecnologia apresentada na capacidade da estrutura metálica em vencer o vão avantajado da estação de passageiros. <br /> A tecnologia moderna, traduzida na estrutura metálica da cobertura, permite um vão livre de aproximadamente trinta metros de largura por noventa metros de profundidade, proporcionando um espaço livre necessário ao grande fluxo de passageiros que se esperava. <br /> Essa estação foi a primeira construída com projeto inglês e todas as peças em ferro chegaram à Bahia importadas da Inglaterra para serem montadas no local, como está registrado em documentação oficial da Província da Bahia. O projeto foi elaborado em Londres por Jonh Watson, que foi também o empreiteiro da construção da estrada com supervisão do engenheiro Charles Vignoles, sendo engenheiro-chefe, Hutton Vignoles. <br /> <br /> Depois que a linha, no trecho correspondente à primeira seção, entrou em tráfego a partir de 28 de junho de 1860, cumprindo o prazo pactuado com o Governo e a Companhia da estrada, o engenheiro fiscal do Governo, Firmo José de Melo, exigia uma manutenção responsável da estrada pela companhia inglesa. <br /> <br /> Além da via permanente, as principais construções dessa seção são a Estação da Calçada, o Viaduto de Itapagipe, o túnel de Periperi, por serem importantes obras de engenharia, e a Oficina de Periperi, pelo papel social desempenhado, empregando brasileiros livres naquela oficina. <br /> Em 1860, a Estação da Calçada foi aberta com o nome de Jequitaia. A estação foi também chamada de Baía e atualmente Estação da Calçada. A estação sempre esteve no local de origem, desde a sua inauguração. Jequitaia hoje é o nome da avenida que, saindo da região do porto, chega a Calçada, nome do bairro onde se localiza a estação.</p>', 1, 'user1', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(98, 82, 'Organograma', '', '<h2 class="contentheading">Organograma</h2>\r\n<p>Para ver o Organograma completo, clique <a href="images/Organograma.pdf">aqui</a></p>', 1, 'home-1', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(99, 83, 'Organograma', '', '', 1, 'sidebar-2', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 1, 1, '{"menutype":"organograma","base":"","startLevel":"1","endLevel":"6","showAllChildren":"1","tag_id":"","class_sfx":"-treemenu","window_open":"","layout":"_:default","moduleclass_sfx":"-box richbox-4","cache":"1","cache_time":"900","cachemode":"itemid","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(100, 95, 'Estações de trem do Subúrbio', '', '<h2 class="contentheading">Estações de Trem do Subúrbio</h2>\r\n<p>O Sistema é composto por uma única linha que liga a Cidade Baixa ao Subúrbio Ferroviário de Salvador. Composto por 10 estações, possui um trajeto de aproximadamente 13,5 km entre os terminais no bairro da Calçada e Paripe.</p>\r\n<p> </p>\r\n<p>Estações e Endereços:</p>\r\n<p><br />Estação da Calçada</p>\r\n<p style="padding-left: 30px;">Endereço: Largo da Calçada, s/n - Calçada</p>\r\n<p>Estação Santa Luzia</p>\r\n<p style="padding-left: 30px;">Endereço: Rua Voluntários da Pátria, s/n - Santa Luzia do Lobato</p>\r\n<p>Estação Lobato</p>\r\n<p style="padding-left: 30px;">Endereço: Rua Voluntários da Pátria, s/n - Lobato</p>\r\n<p>Estação Almeida Brandão</p>\r\n<p style="padding-left: 30px;">Endereço: Rua dos Ferroviários, s/n - Plataforma</p>\r\n<p>Estação Itacaranha</p>\r\n<p style="padding-left: 30px;">Endereço: Rua Almeida Brandão, s/n - Itacaranha</p>\r\n<p>Estação Escada</p>\r\n<p style="padding-left: 30px;">Endereço: Rua Pedra Azul, s/n - Escada</p>\r\n<p>Estação Periperi</p>\r\n<p style="padding-left: 30px;">Endereço: Rua 1º de Maio, s/n - Periperi</p>\r\n<p>Estação Coutos</p>\r\n<p style="padding-left: 30px;">Endereço: Av. Afrânio Peixoto, s/n - Coutos</p>\r\n<p>Estação Paripe</p>\r\n<p style="padding-left: 30px;">Endereço: Rua da Estação, s/n - Paripe</p>', 1, 'home-1', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(101, 96, 'Trem do Subúrbio', '', '', 1, 'sidebar-2', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 1, 1, '{"menutype":"trem","base":"110","startLevel":"1","endLevel":"3","showAllChildren":"1","tag_id":"","class_sfx":"-treemenu","window_open":"","layout":"_:default","moduleclass_sfx":"-box richbox-4","cache":"1","cache_time":"900","cachemode":"itemid","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(102, 97, 'Mapa das Estações ', '', '<h2 class="contentheading"> Mapa das Estações</h2>\r\n<p><img style="display: block; margin-left: auto; margin-right: auto;" src="images/MapaEstacoes_de_Trem.png" alt="MapaEstacoes_de_Trem" width="298" height="482" /></p>\r\n<table style="margin-left: auto; margin-right: auto;" border="0">\r\n<tbody>\r\n<tr>\r\n<td><strong><span style="color: #3366ff;">Estações</span></strong></td>\r\n<td><strong><span style="color: #3366ff;">Km</span></strong></td>\r\n</tr>\r\n<tr>\r\n<td>SV</td>\r\n<td>0,000</td>\r\n</tr>\r\n<tr>\r\n<td>Santa Luzia</td>\r\n<td>2,200</td>\r\n</tr>\r\n<tr>\r\n<td>Lobato</td>\r\n<td>3,442</td>\r\n</tr>\r\n<tr>\r\n<td>Alm Brandão</td>\r\n<td>5,802</td>\r\n</tr>\r\n<tr>\r\n<td>Itacaranha</td>\r\n<td>8,0</td>\r\n</tr>\r\n<tr>\r\n<td>Escada</td>\r\n<td>8,600</td>\r\n</tr>\r\n<tr>\r\n<td>Praia Grande</td>\r\n<td>9,0</td>\r\n</tr>\r\n<tr>\r\n<td> Periperi</td>\r\n<td>10,8</td>\r\n</tr>\r\n<tr>\r\n<td>Coutos</td>\r\n<td>12,00 </td>\r\n</tr>\r\n<tr>\r\n<td>Paripe</td>\r\n<td>13,5</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p> </p>', 1, 'user1', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(103, 98, 'Pesquise aqui', '', '', 1, 'languageswitcherload', 303, '2015-01-24 06:46:01', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_search', 1, 0, '{"label":"","width":"5","text":"","button":"1","button_pos":"right","imagebutton":"0","button_text":"","opensearch":"1","opensearch_title":"","set_itemid":"0","layout":"_:default","moduleclass_sfx":" busca","cache":"1","cache_time":"900","cachemode":"itemid","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(104, 99, 'Preços e Horários', '', '<h2 class="contentheading">Preços e Horários</h2>\r\n<p>Horário de abertura das estações: 6 horas da manhã</p>\r\n<p>Encerramento(Último trem): 19 horas</p>\r\n<p>Intervalos: entre 40 a 45 minutos</p>\r\n<p>Preço da passagem: R$0,50 centavos a Inteira, R$0,25 centavos a meia</p>\r\n<p>Gratuidade: A partir de 60 anos</p>\r\n<p> </p>\r\n<p>Telefone para contato: (71) 3612-1247</p>\r\n<p> </p>', 1, 'user1', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(105, 100, 'Metrô', '', '<h2 class="contentheading">Metrô</h2>\r\n<p>Todas as infomações do Metrô podem ser verificadas no site oficial: <a href="http://www.metro.ba.gov.br" target="_blank">http://www.metro.ba.gov.br</a></p>', 1, 'home-1', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(106, 101, 'Metrô', '', '', 1, 'user1', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_imageshow', 1, 1, '{"moduleclass_sfx":"","showlist_id":"1","showcase_id":"1","width":"500px","height":"300","pretext":"","posttext":"","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(107, 102, 'Phoca Gallery Image Module', '', '', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_phocagallery_image', 1, 1, '', 0, '*'),
(108, 103, 'Fotos das Estações', '', '', 1, 'mainbody1', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_phocagallery_image', 1, 1, '{"image_ordering":"7","limit_start":"0","limit_count":"10","module_link":"0","module_type":"0","image_size":"auto","font_color":"#b36b00","display_name":"1","display_icon_detail":"1","display_icon_download":"2","font_size_name":"12","char_length_name":"15","category_box_space":"0","padding_mosaic":"3","custom_image_width":"","custom_image_height":"","minimum_box_width":"","phocagallery_module_width":"","detail_window":"6","modal_box_overlay_color":"#000000","modal_box_overlay_opacity":"0.3","modal_box_border_color":"#6b6b6b","modal_box_border_width":"2","sb_slideshow_delay":"5","highslide_class":"rounded-white","highslide_opacity":"0","highslide_outline_type":"rounded-white","highslide_fullimg":"0","highslide_close_button":"0","highslide_slideshow":"1","highslide_description":"1","jak_slideshow_delay":"5","jak_orientation":"none","jak_description":"1","jak_description_height":"10","display_description_detail":"0","display_title_description":"0","detail_buttons":"1","moduleclass_sfx":"","module_css_style":"","cache":"0","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(109, 104, 'Fotos do Metrô', '', '', 1, 'user1', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_phocagallery_image', 1, 1, '{"category_id":["3"],"image_ordering":"1","limit_start":"0","limit_count":"27","module_link":"0","module_type":"0","image_size":"auto","font_color":"#b36b00","display_name":"1","display_icon_detail":"1","display_icon_download":"2","font_size_name":"12","char_length_name":"15","category_box_space":"0","padding_mosaic":"3","custom_image_width":"","custom_image_height":"","minimum_box_width":"","phocagallery_module_width":"","detail_window":"0","modal_box_overlay_color":"#000000","modal_box_overlay_opacity":"0.3","modal_box_border_color":"#6b6b6b","modal_box_border_width":"2","sb_slideshow_delay":"5","highslide_class":"rounded-white","highslide_opacity":"0","highslide_outline_type":"rounded-white","highslide_fullimg":"0","highslide_close_button":"0","highslide_slideshow":"1","highslide_description":"1","jak_slideshow_delay":"5","jak_orientation":"none","jak_description":"1","jak_description_height":"10","display_description_detail":"0","display_title_description":"0","detail_buttons":"1","moduleclass_sfx":"","module_css_style":"","cache":"0","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(110, 105, 'Fotos do Metrô', '', '', 1, 'user1', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_phocagallery_image', 1, 1, '{"category_id":["4"],"image_ordering":"1","limit_start":"0","limit_count":"28","module_link":"0","module_type":"0","image_size":"auto","font_color":"#b36b00","display_name":"1","display_icon_detail":"1","display_icon_download":"2","font_size_name":"12","char_length_name":"15","category_box_space":"0","padding_mosaic":"3","custom_image_width":"","custom_image_height":"","minimum_box_width":"","phocagallery_module_width":"","detail_window":"6","modal_box_overlay_color":"#000000","modal_box_overlay_opacity":"0.3","modal_box_border_color":"#6b6b6b","modal_box_border_width":"2","sb_slideshow_delay":"5","highslide_class":"rounded-white","highslide_opacity":"0","highslide_outline_type":"rounded-white","highslide_fullimg":"0","highslide_close_button":"0","highslide_slideshow":"1","highslide_description":"1","jak_slideshow_delay":"5","jak_orientation":"none","jak_description":"1","jak_description_height":"10","display_description_detail":"0","display_title_description":"0","detail_buttons":"1","moduleclass_sfx":"","module_css_style":"","cache":"0","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(111, 107, 'Home > Notícias', '', '<h1><span style="font-size: 14pt;">Inauguração do Metrô de Salvador</span></h1>\r\n<p><em><span style="font-size: 8pt;">Salvador, 08 de Junho de 2014</span></em></p>', 1, 'user1', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_custom', 1, 1, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(112, 108, 'Slideshow Metro', '', '', 1, 'position-13', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_imageshow', 1, 0, '{"moduleclass_sfx":"","showlist_id":"1","showcase_id":"1","width":"1200px","height":"250","pretext":"","posttext":"","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(113, 109, 'Metro Html', '', '<p style="text-align: justify;">Após quase 15 anos de espera, o Metrô de Salvador finalmente poderá ser inaugurado em sua fase experimental que será iniciado a partir do dia 11 de Junho. O projeto foi iniciado no ano de 2000 pela prefeitura de Salvador, porém neste período a projeto sofreu diversos atrasos na obra. A transição da responsabilidade do projeto do metrô da prefeitura para o governo do estado em 2013 fez com que em menos de 1 ano o sonho que até então era considerado inalcançável se torna-se uma realidade.</p>\r\n<p style="text-align: justify;">A fase experimental terá duração até setembro e a operação será realizada entre as estações da Lapa e do Retiro, de segunda a sexta feira, nos horários de 12 às 16 horas. Durante este período, o metrô não funcionará aos finais de semana e terá o seu acesso restrito em dias de jogos da copa.O intervalo entre os trens será de 10 minutos, sem cobrança de tarifas.</p>\r\n<p style="text-align: justify;"><span style="line-height: 1.5;">Acesse o site do metrô <a href="http://www.metro.ba.gov.br">aqui</a></span></p>', 1, 'user1', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_custom', 1, 0, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(114, 110, 'Apoio', '', '<p>Apoio:</p>\r\n<p><a href="http://www.sedur.ba.gov.br" target="_blank"><img src="images/Sedur.jpg" alt="" width="150" height="97" />  </a><img src="images/bahiagas_menor.jpg" alt="" width="90" height="79" /></p>', 1, 'user1', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(115, 111, 'Trem do Subúrbio', '', '<div style="height: 60px;"><a href="index.php/precos-e-horarios" target="_blank"><img src="images/precoshorarios3.png" alt="precoshorarios3" width="150" height="200" /></a></div>\r\n<div style="height: 60px;"> </div>\r\n<div style="height: 60px;"> </div>\r\n<div style="height: 60px;"> </div>', 6, 'sidebar-2', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_custom', 1, 1, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(116, 112, 'Missão e Visão', '', '<h2 class="contentheading"><strong><span style="font-size: 12pt;">1. Nossa principal missão é:</span></strong></h2>\r\n<p style="text-align: justify;"><br />Desenvolver ações de planejamento e construção do sitema metroferroviário da cidade de Salvador e regiõoes metropolitana com vistas a prover um transporte público que atenda aos anseios e demandas da população por melhorias na mobilidade urbana, nos aspectos de pontualidade, rapidez, conforto, economia, confiabilidade, segurança e sustentabilidade ambiental. </p>\r\n<div style="text-align: justify;"> </div>\r\n<div style="text-align: justify;"> </div>\r\n<div style="text-align: justify;"> </div>\r\n<p style="text-align: justify;"> </p>\r\n<p style="text-align: justify;"><span style="color: #006699;"><strong><span style="font-size: 12pt;">2. A nossa visão:</span></strong></span></p>\r\n<div style="text-align: justify;"> </div>\r\n<p style="text-align: justify;">A CTB tem como finalidade ser uma das 5 melhores do setor Metroferroviário do Brasil em qualidade de serviços, operação e gestão.</p>\r\n<div style="text-align: justify;"> </div>\r\n<div style="text-align: justify;"> </div>\r\n<div style="text-align: justify;"> </div>\r\n<p style="text-align: justify;"> </p>\r\n<p style="text-align: justify;"><span style="color: #006699;"><strong><span style="font-size: 12pt;">3. Nossos principais valores: </span></strong></span></p>\r\n<ul style="list-style-type: square; text-align: justify;">\r\n<li><span style="line-height: 1.5;">Respeito à diversidade</span></li>\r\n<li><span style="line-height: 1.5;">Uso eficiente dos recursos</span></li>\r\n<li><span style="line-height: 1.5;">Integração com a Comunidade</span></li>\r\n<li><span style="line-height: 1.5;">Ética e transparência</span></li>\r\n</ul>\r\n<p style="text-align: justify;"> </p>\r\n<p style="text-align: justify;"> </p>\r\n<p style="text-align: justify;"> </p>\r\n<p style="text-align: justify;"> </p>\r\n<p style="text-align: justify;"> </p>\r\n<p style="text-align: justify;"> </p>\r\n<p style="text-align: justify;"> </p>\r\n<p style="text-align: justify;"> </p>\r\n<p style="text-align: justify;"> </p>\r\n<p style="text-align: justify;"> </p>\r\n<p style="text-align: justify;"> </p>\r\n<p style="text-align: justify;"> </p>\r\n<p style="text-align: justify;"> </p>\r\n<p style="text-align: justify;"> </p>\r\n<p style="text-align: justify;"> </p>\r\n<p style="text-align: justify;"> </p>\r\n<p style="text-align: justify;"> </p>\r\n<p style="text-align: justify;"> </p>\r\n<p style="text-align: justify;"> </p>\r\n<p style="text-align: justify;"> </p>\r\n<p style="text-align: justify;"> </p>\r\n<p style="text-align: justify;"> </p>\r\n<p> </p>\r\n<p> </p>\r\n<p> </p>\r\n<p> </p>\r\n<p><span style="color: #333333; font-family: Verdana, Geneva, Arial, Helvetica, sans-serif; line-height: normal;"> </span></p>', 1, 'home-1', 303, '2015-01-13 12:18:09', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(117, 121, 'Diretoria de Estações', '', '<h1>Diretoria de Estações</h1>\r\n<p>Diretor(a): Keila Iomanto Contreiras </p>\r\n<p>Secretária Executiva</p>\r\n<p>Coordenadoria do Bem Estar do Usuário</p>\r\n<p>Coordenadoria de Segurança</p>\r\n<p>Subcoordenadoria de Segurança Patrimonial</p>\r\n<p>Subcoordenadoria de Segurança dos Usuários</p>\r\n<p> </p>\r\n<p> </p>\r\n<p> </p>\r\n<p><img src="images/Estacoes.png" alt="Estacoes" width="724" height="415" /></p>', 1, 'user1', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(118, 122, 'Diretoria de Operação e Manutenção', '', '<h1>Diretoria de Operação e Manutenção</h1>\r\n<p>Diretor(a): Hidelson Menezes R. Ferreira</p>\r\n<p>Secretaria Executiva</p>\r\n<p>Coordenadoria de Manutenção</p>\r\n<p>Subcoordenadoria de Via Permanente</p>\r\n<p>Subcoordenadoria de Sistemas Fixos</p>\r\n<p>Subcoordenadoria de Material Rodante e Oficina</p>\r\n<p>Coordenandoria de Operação</p>\r\n<p>Subcoordenadoria de Planejamento de Operação das Estações</p>\r\n<p>Subcoordenadoria de Trem e Controle de Movimento</p>\r\n<p> </p>\r\n<p> </p>\r\n<p><img src="images/administrativo_e_financeiro.png" alt="administrativo_e_financeiro" width="676" height="292" /></p>', 1, 'user1', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(119, 123, 'Presidência e Assessoria', '', '<p>Presidência e Assessoria</p>\r\n<p>Presidente: Carlos Martins</p>\r\n<p>Secretaria Executiva</p>\r\n<p>Assessoria de Relações Internacionais</p>\r\n<p>Assessoria Técnica</p>\r\n<p>Assessoria Jurídica</p>\r\n<p> </p>\r\n<p> </p>\r\n<p> </p>\r\n<p> </p>\r\n<p> </p>\r\n<p><img src="images/Presidencia_e_Assessorias.png" alt="Presidencia_e_Assessorias" width="868" height="359" /></p>\r\n<p> </p>\r\n<p> </p>\r\n<p> </p>', 1, 'home-1', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(120, 124, 'Diretoria do Administrativo e Financeiro', '', '<h1>Diretoria do Administrativo e Financeiro</h1>\r\n<p>Diretor(a): George Bittencourt Rebouças</p>\r\n<p>Secretária Executiva</p>\r\n<p>Coordenadoria Financeira</p>\r\n<p>Subcoordenadoria de Convênios e Contratos</p>\r\n<p>Subcoordenadoria de Controle e Execução Financeira</p>\r\n<p>Subcoordenadoria de Contabilidade</p>\r\n<p>Subcoordenadoria de Faturamento e Cobrança</p>\r\n<p>Coordenadoria Administrativa</p>\r\n<p>Subcoordenadoria de Gestão de Serviços</p>\r\n<p>Subcoordenadoria de Suprimento e Patrimônio</p>\r\n<p>Coordenadoria de Desenvolvimento da Gestão</p>\r\n<p>Subcoordenadoria de Gestão de Pessoas</p>\r\n<p>Subcoordenadoria de Tecnologia da Informação</p>\r\n<p>Subcoodenadoria de Gestão de Qualidade</p>\r\n<p><img src="images/Operacao_e_Manutencao.png" alt="Operacao_e_Manutencao" width="790" height="316" /></p>', 1, 'user1', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(121, 125, 'Diretoria de Obras', '', '<h1>Diretoria de Obras</h1>\r\n<p>Diretor(a): Hernani Balthazar da Silveira Júnior</p>\r\n<p>Secretaria Executiva</p>\r\n<p>Coordenadoria de Operações Especiais</p>\r\n<p>Coordenadoria de Fiscalização de Obras</p>\r\n<p> </p>\r\n<p> </p>\r\n<p> </p>\r\n<p> </p>\r\n<p> </p>\r\n<p><img src="images/Obras2.png" alt="Obras2" width="671" height="268" /></p>', 1, 'user1', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(122, 126, 'Diretoria de Planejamento', '', '<h1>Diretoria de Planejamento</h1>\r\n<p>Diretor(a): </p>\r\n<p>Secretária Executiva</p>\r\n<p>Coordenadoria de Avaliação e Acompanhamento de Projetos</p>\r\n<p>Coordenadoria de Estudos e Planos</p>\r\n<p> </p>\r\n<p> </p>\r\n<p> </p>\r\n<p> </p>\r\n<p> </p>\r\n<p> </p>\r\n<p><img src="images/Planejamento2.png" alt="Planejamento2" width="643" height="311" /></p>', 1, 'home-1', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(123, 127, 'VLT', '', '<p>VLT</p>\r\n<p>Em breve mais informações sobre o projeto do Veiculos leves sobre trilhos(VLT)</p>', 1, 'user1', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(124, 128, 'Licitações', '', '<h2 class="contentheading">Licitações</h2>\r\n<p>Preencha o formulário <a href="licitacoes/licitacao.html" target="_blank">aqui</a></p>\r\n<p>Aguarde</p>', 1, 'user1', 303, '2014-10-08 12:01:52', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(125, 133, 'Acionistas', '', '<h2 class="contentheading">Acionistas</h2>\r\n<p>Este conteúdo está em desenvolvimento!</p>\r\n<p>Aguarde</p>\r\n<p> </p>', 1, 'user1', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(126, 134, 'Conselho de Administração', '', '<h2 class="contentheading">Conselho de Administração</h2>\r\n<p>Este conteúdo está em desenvolvimento!</p>\r\n<p>Aguarde</p>', 1, 'user1', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(127, 135, 'Diretoria', '', '<h2 class="contentheading">Diretoria</h2>\r\n<p> </p>\r\n<p style="color: #666666;">Este conteúdo está em desenvolvimento!</p>\r\n<p>Aguarde</p>', 1, 'user1', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(128, 136, 'Conselho Fiscal', '', '<h2 class="contentheading">Conselho Fiscal</h2>\r\n<p style="color: #666666;">Este conteúdo está em desenvolvimento!</p>\r\n<p style="color: #666666;">Aguarde</p>', 1, 'user1', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(129, 137, 'Estatuto Social', '', '<h2 class="contentheading">Estatuto Social</h2>\r\n<p>Este conteúdo está em desenvolvimento!</p>\r\n<p>Aguarde</p>\r\n<p> </p>', 1, 'user1', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(130, 138, 'Projetos', '', '<h2 class="contentheading">Projetos da CTB</h2>\r\n<p>Este conteúdo será publicado em breve!</p>\r\n<p>Aguarde.</p>', 1, 'user1', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(131, 139, 'Portal Governança', '', '<h2 class="contentheading">Portal de Governança</h2>\r\n<p>Este conteúdo será publicado em breve!</p>\r\n<p>Aguarde.</p>', 1, 'user1', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(132, 140, 'Obras', '', '<h2 class="contentheading">Obras</h2>\r\n<p>Este conteúdo será publicado em breve!</p>\r\n<p>Aguarde.</p>', 1, 'user1', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(133, 141, 'Contatos', '', '<h2 class="contentheading">Contatos</h2>\r\n<p>Nossos telefones para contato:</p>\r\n<p>Tel: (71) 3612-1200</p>\r\n<p> </p>\r\n<p>Este conteúdo será atualizado em breve</p>', 1, 'home-1', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(134, 142, 'Intranet', '', '<h2 class="contentheading">Intranet</h2>\r\n<p> </p>', 1, 'home-1', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(135, 143, 'Eventos', '', '<h2 class="contentheading">Eventos</h2>\r\n<p>Este conteúdo está em desenvolvimento!!</p>\r\n<p>Aguarde!</p>', 1, 'user1', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(136, 144, 'Mapa do Site', '', '<h2>Menu Principal CTB</h2>\r\n<dl><dt><a target="_blank">Home</a></dt><dt><a href="index.php?option=com_content&amp;view=article&amp;id=6&amp;Itemid=9" target="_blank">Sobre a Empresa</a></dt><dd><a href="index.php?option=com_content&amp;view=article&amp;id=185&amp;Itemid=124">Nossa História</a></dd><dd><a href="index.php?option=com_content&amp;view=category&amp;layout=blog&amp;id=25&amp;Itemid=61">Missão e Visão</a></dd><dd><a href="index.php?option=com_content&amp;view=article&amp;id=186&amp;Itemid=62" target="_blank">Linha do Tempo</a></dd><dd><a href="index.php?option=com_content&amp;view=article&amp;id=193&amp;Itemid=68" target="_blank">Projetos</a></dd><dd><a href="index.php?option=com_content&amp;view=article&amp;id=194&amp;Itemid=73" target="_blank">Portal Governança</a></dd><dt><a href="index.php?option=com_content&amp;view=article&amp;id=72&amp;Itemid=119" target="_blank">Organograma</a></dt><dd><a href="index.php?option=com_content&amp;view=article&amp;id=179&amp;Itemid=151">Presidência e Assessoria</a></dd><dd><a href="index.php?option=com_content&amp;view=article&amp;id=180&amp;Itemid=150" target="_blank">Diretoria de Operação e Manutenção</a></dd><dd><a href="index.php?option=com_content&amp;view=article&amp;id=181&amp;Itemid=152" target="_blank">Diretoria do Administrativo e Financeiro</a></dd><dd><a href="index.php?option=com_content&amp;view=article&amp;id=182&amp;Itemid=153" target="_blank">Diretoria das Estações</a></dd><dd><a href="index.php?option=com_content&amp;view=article&amp;id=183&amp;Itemid=154" target="_blank">Diretoria de Obras</a></dd><dd><a href="index.php?option=com_content&amp;view=article&amp;id=184&amp;Itemid=155" target="_blank">Diretoria de Planejamento</a></dd><dt>Sistemas de Transporte</dt><dt><a href="index.php?option=com_content&amp;view=article&amp;id=11&amp;Itemid=15" target="_blank">Metrô</a></dt><dt><a href="index.php?option=com_content&amp;view=article&amp;id=8&amp;Itemid=19" target="_blank">VLT</a></dt><dt><a href="index.php?option=com_content&amp;view=article&amp;id=5&amp;Itemid=12" target="_blank">Trem do Subúrbio</a></dt><dd><a href="index.php?option=com_content&amp;view=article&amp;id=188&amp;Itemid=157" target="_blank">Mapas</a></dd><dd><a href="index.php?option=com_content&amp;view=article&amp;id=192&amp;Itemid=158" target="_blank">Preços e Horários</a></dd><dd><a href="index.php?option=com_content&amp;view=article&amp;id=190&amp;Itemid=159" target="_blank">Obras</a></dd><dd></dd></dl>\r\n<h2>Menu Informativo</h2>\r\n<dl><dt><a href="index.php?option=com_wrapper&amp;view=wrapper&amp;Itemid=20" target="_blank">Ouvidoria</a></dt><dt><a href="index.php?option=com_content&amp;view=article&amp;id=197&amp;Itemid=5" target="_blank">Licitações</a></dt><dt><a href="index.php?option=com_content&amp;view=article&amp;id=198&amp;Itemid=18" target="_blank">Acionistas</a></dt><dt><a href="index.php?option=com_content&amp;view=article&amp;id=199&amp;Itemid=17" target="_blank">Conselho Administrativo</a></dt><dt><a href="index.php?option=com_content&amp;view=article&amp;id=204&amp;Itemid=3" target="_blank">Diretoria</a></dt><dt><a href="index.php?option=com_content&amp;view=article&amp;id=205&amp;Itemid=2" target="_blank">Conselho Fiscal</a></dt><dt><a href="index.php?option=com_content&amp;view=article&amp;id=200&amp;Itemid=160">Estatuto Social</a></dt></dl>\r\n<p> </p>\r\n<h2>Menu Superior</h2>\r\n<p><a href="../ctb" target="_blank">Home</a></p>\r\n<p><a href="index.php?option=com_content&amp;view=article&amp;id=206&amp;Itemid=38" target="_blank">Contato</a></p>\r\n<p><a href="index.php?option=com_content&amp;view=article&amp;id=27&amp;Itemid=39" target="_blank">Intranet</a></p>\r\n<p><a href="index.php?option=com_content&amp;view=article&amp;id=202&amp;Itemid=138" target="_blank">Eventos</a></p>\r\n<p><a href="index.php?option=com_content&amp;view=article&amp;id=203&amp;Itemid=139" target="_blank">Mapa do Site</a></p>\r\n<p><a href="http://www.ba.gov.br/" target="_blank">Portal do Governo</a></p>\r\n<h2> </h2>\r\n<p> </p>\r\n<p> </p>\r\n<p> </p>\r\n<p> </p>\r\n<p> </p>\r\n<p> </p>\r\n<p> </p>\r\n<p> </p>\r\n<p> </p>\r\n<p> </p>\r\n<p> </p>\r\n<p> </p>\r\n<p> </p>\r\n<p> </p>', 1, 'user1', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(137, 147, 'ChronoForms5', '', '', 1, 'user1', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_chronoforms5', 1, 1, '{"cache":"0","chronoform":"Ouvidoria","moduleclass_sfx":"","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(138, 149, 'Visforms', '', '', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_visforms', 1, 1, '', 0, '*'),
(139, 150, 'Ouvidoria', '', '', 1, 'user1', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_chronoforms5', 1, 1, '{"cache":"0","chronoform":"ouvidoria","moduleclass_sfx":"","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*');
INSERT INTO `iwk5c_modules` (`id`, `asset_id`, `title`, `note`, `content`, `ordering`, `position`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `published`, `module`, `access`, `showtitle`, `params`, `client_id`, `language`) VALUES
(140, 151, 'Ouvidoria', '', '<h2 class="contentheading">Ouvidoria</h2>\r\n<p>Este conteúdo está em desenvolvimento!!</p>\r\n<p>Aguarde!!</p>', 1, 'user1', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(141, 152, 'Galeria', '', '<h2 class="contentheading">Galeria</h2>\r\n<p>Este conteúdo está em desenvolvimento!!</p>\r\n<p>Aguarde!</p>', 1, 'user1', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(142, 154, 'Ouvidoria', '', '', 1, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_visforms', 1, 1, '{"catid":"1","show_title":"1","moduleclass_sfx":"","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(143, 156, 'Home', '', '', 1, 'user1', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_breadcrumbs', 1, 0, '{"showHere":"0","showHome":"1","homeText":"Home > Not\\u00edcias","showLast":"1","separator":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"itemid","module_tag":"section","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(144, 160, 'Ultimas Notícias', '', '', 1, 'user1', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_articles_archive', 1, 1, '{"count":"2","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(145, 161, 'Ultimas Noticias', '', '', 1, 'user1', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_articles_categories', 1, 1, '{"parent":"8","show_description":"1","numitems":"1","show_children":"1","count":"1","maxlevel":"0","layout":"_:default","item_heading":"4","moduleclass_sfx":"","owncache":"1","cache_time":"900","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(146, 162, 'Ultimas Notícias', '', '', 1, 'user1', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_articles_category', 1, 1, '{"mode":"dynamic","show_on_article_page":"0","show_front":"show","count":"3","category_filtering_type":"1","show_child_category_articles":"1","levels":"1","author_filtering_type":"1","created_by":[""],"author_alias_filtering_type":"1","created_by_alias":[""],"excluded_articles":"","date_filtering":"off","date_field":"a.created","start_date_range":"","end_date_range":"","relative_date":"30","article_ordering":"a.title","article_ordering_direction":"ASC","article_grouping":"none","article_grouping_direction":"ksort","month_year_format":"F Y","link_titles":"1","show_date":"0","show_date_field":"created","show_date_format":"Y-m-d H:i:s","show_category":"0","show_hits":"0","show_author":"0","show_introtext":"0","introtext_limit":"100","show_readmore":"0","show_readmore_title":"1","readmore_limit":"15","layout":"_:default","moduleclass_sfx":"","owncache":"1","cache_time":"900","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(147, 163, 'Últimas Noticias', '', '', 1, 'sidebar-2', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_articles_category', 1, 0, '{"mode":"normal","show_on_article_page":"1","show_front":"show","count":"0","category_filtering_type":"1","catid":["40"],"show_child_category_articles":"0","levels":"5","author_filtering_type":"1","created_by":[""],"author_alias_filtering_type":"1","created_by_alias":[""],"excluded_articles":"","date_filtering":"off","date_field":"a.created","start_date_range":"","end_date_range":"","relative_date":"30","article_ordering":"a.title","article_ordering_direction":"ASC","article_grouping":"none","article_grouping_direction":"ksort","month_year_format":"F Y","link_titles":"1","show_date":"0","show_date_field":"created","show_date_format":"Y-m-d H:i:s","show_category":"0","show_hits":"0","show_author":"0","show_introtext":"0","introtext_limit":"100","show_readmore":"0","show_readmore_title":"1","readmore_limit":"15","layout":"_:default","moduleclass_sfx":"","owncache":"1","cache_time":"900","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(148, 166, 'Intranet', '', '', 1, 'home-1', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_login', 1, 0, '{"pretext":"blablabla","posttext":"blebleble","login":"","logout":"","greeting":"1","name":"0","usesecure":"0","usetext":"0","layout":"_:default","moduleclass_sfx":"","cache":"0","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(149, 167, 'Banner topo', '', '<div id="banner_topo">\r\n<p><img src="images/novo_hemoba.png" alt="" width="565" height="89" /></p>\r\n</div>', 1, 'inset', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(150, 168, 'Ouvidoria', '', '', 1, 'user1', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_visforms', 1, 1, '{"catid":"1","show_title":"1","moduleclass_sfx":"","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(151, 169, 'Governo do Estado da Bahia', '', '<p><img id="logoGoverno_espacamento" src="images/logo_Governo.jpg" alt="" width="181" height="84" /></p>', 1, 'position-0', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(152, 170, 'Links Cabeçalho', '', '<p id="head_links"><a href="http://www.ctb.ba.gov.br" target="_blank">Inicio</a>  |  <a href="http://www.ctb.ba.gov.br/news" target="_blank">Notícias</a>  |  <a href="http://www.ctb.ba.gov.br/links" target="_blank">Links</a>  |  <a href="http://www.ctb.ba.gov.br/faleconosco" target="_blank">Fale Conosco</a>  | <a href="http://www.ctb.ba.gov.br/Ouvidoria" target="_blank">Ouvidoria Geral</a></p>', 1, 'head-links', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(153, 171, 'Logo1', '', '<div id="banners-links">\r\n<p id="banners-links"><img class="banners" src="images/expresso1.png" alt="" width="140" height="74" />  <img class="banners" src="images/EMRMS1.png" alt="" width="95" height="96" /> <img class="banners" src="images/portal1.png" alt="" width="115" height="123" />   <img class="banners" src="images/mobilize1.png" alt="" width="180" height="84" />    </p>\r\n</div>', 1, 'position-5', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_custom', 1, 0, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*');
INSERT INTO `iwk5c_modules` (`id`, `asset_id`, `title`, `note`, `content`, `ordering`, `position`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `published`, `module`, `access`, `showtitle`, `params`, `client_id`, `language`) VALUES
(154, 172, 'Logo2', '', '<p><img src="data:image/jpeg;base64,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IiB4bWxuczp4bXBNTT0iaHR0cDovL25zLmFkb2JlLmNvbS94YXAvMS4wL21tLyIgeG1sbnM6c3RFdnQ9Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC9zVHlwZS9SZXNvdXJjZUV2ZW50IyIgeG1sbnM6c3RSZWY9Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC9zVHlwZS9SZXNvdXJjZVJlZiMiIHhtcDpDcmVhdG9yVG9vbD0iQWRvYmUgUGhvdG9zaG9wIENTNSBXaW5kb3dzIiB4bXA6Q3JlYXRlRGF0ZT0iMjAxNC0wOC0wNVQxNjoyMDoyNy0wMzowMCIgeG1wOk1ldGFkYXRhRGF0ZT0iMjAxNC0wOC0wN1QwOTo0OTowNi0wMzowMCIgeG1wOk1vZGlmeURhdGU9IjIwMTQtMDgtMDdUMDk6NDk6MDYtMDM6MDAiIHBob3Rvc2hvcDpDb2xvck1vZGU9IjMiIGRjOmZvcm1hdD0iaW1hZ2UvanBlZyIgeG1wTU06SW5zdGFuY2VJRD0ieG1wLmlpZDo1NTg0REZGRTJCMUVFNDExOEZDNkVEMkM3Q0NGRDczOSIgeG1wTU06RG9jdW1lbnRJRD0ieG1wLmRpZDoxODYyRTBEMUQyMUNFNDExQTIyQkI0MkQ2QUY2RjgzQiIgeG1wTU06T3JpZ2luYWxEb2N1bWVudElEPSJ4bXAuZGlkOjE4NjJFMEQxRDIxQ0U0MTFBMjJCQjQyRDZBRjZGODNCIj4gPHhtcE1NOkhpc3Rvcnk+IDxyZGY6U2VxPiA8cmRmOmxpIHN0RXZ0OmFjdGlvbj0iY3JlYXRlZCIgc3RFdnQ6aW5zdGFuY2VJRD0ieG1wLmlpZDoxODYyRTBEMUQyMUNFNDExQTIyQkI0MkQ2QUY2RjgzQiIgc3RFdnQ6d2hlbj0iMjAxNC0wOC0wNVQxNjoyMDoyNy0wMzowMCIgc3RFdnQ6c29mdHdhcmVBZ2VudD0iQWRvYmUgUGhvdG9zaG9wIENTNSBXaW5kb3dzIi8+IDxyZGY6bGkgc3RFdnQ6YWN0aW9uPSJzYXZlZCIgc3RFdnQ6aW5zdGFuY2VJRD0ieG1wLmlpZDo1MTg0REZGRTJCMUVFNDExOEZDNkVEMkM3Q0NGRDczOSIgc3RFdnQ6d2hlbj0iMjAxNC0wOC0wN1QwOTo0NTowNC0wMzowMCIgc3RFdnQ6c29mdHdhcmVBZ2VudD0iQWRvYmUgUGhvdG9zaG9wIENTNSBXaW5kb3dzIiBzdEV2dDpjaGFuZ2VkPSIvIi8+IDxyZGY6bGkgc3RFdnQ6YWN0aW9uPSJzYXZlZCIgc3RFdnQ6aW5zdGFuY2VJRD0ieG1wLmlpZDo1NDg0REZGRTJCMUVFNDExOEZDNkVEMkM3Q0NGRDczOSIgc3RFdnQ6d2hlbj0iMjAxNC0wOC0wN1QwOTo0OTowNi0wMzowMCIgc3RFdnQ6c29mdHdhcmVBZ2VudD0iQWRvYmUgUGhvdG9zaG9wIENTNSBXaW5kb3dzIiBzdEV2dDpjaGFuZ2VkPSIvIi8+IDxyZGY6bGkgc3RFdnQ6YWN0aW9uPSJjb252ZXJ0ZWQiIHN0RXZ0OnBhcmFtZXRlcnM9ImZyb20gYXBwbGljYXRpb24vdm5kLmFkb2JlLnBob3Rvc2hvcCB0byBpbWFnZS9qcGVnIi8+IDxyZGY6bGkgc3RFdnQ6YWN0aW9uPSJkZXJpdmVkIiBzdEV2dDpwYXJhbWV0ZXJzPSJjb252ZXJ0ZWQgZnJvbSBhcHBsaWNhdGlvbi92bmQuYWRvYmUucGhvdG9zaG9wIHRvIGltYWdlL2pwZWciLz4gPHJkZjpsaSBzdEV2dDphY3Rpb249InNhdmVkIiBzdEV2dDppbnN0YW5jZUlEPSJ4bXAuaWlkOjU1ODRERkZFMkIxRUU0MTE4RkM2RUQyQzdDQ0ZENzM5IiBzdEV2dDp3aGVuPSIyMDE0LTA4LTA3VDA5OjQ5OjA2LTAzOjAwIiBzdEV2dDpzb2Z0d2FyZUFnZW50PSJBZG9iZSBQaG90b3Nob3AgQ1M1IFdpbmRvd3MiIHN0RXZ0OmNoYW5nZWQ9Ii8iLz4gPC9yZGY6U2VxPiA8L3htcE1NOkhpc3Rvcnk+IDx4bXBNTTpEZXJpdmVkRnJvbSBzdFJlZjppbnN0YW5jZUlEPSJ4bXAuaWlkOjU0ODRERkZFMkIxRUU0MTE4RkM2RUQyQzdDQ0ZENzM5IiBzdFJlZjpkb2N1bWVudElEPSJ4bXAuZGlkOjE4NjJFMEQxRDIxQ0U0MTFBMjJCQjQyRDZBRjZGODNCIiBzdFJlZjpvcmlnaW5hbERvY3VtZW50SUQ9InhtcC5kaWQ6MTg2MkUwRDFEMjFDRTQxMUEyMkJCNDJENkFGNkY4M0IiLz4gPC9yZGY6RGVzY3JpcHRpb24+IDwvcmRmOlJERj4gPC94OnhtcG1ldGE+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgPD94cGFja2V0IGVuZD0idyI/Pv/uAA5BZG9iZQBkQAAAAAH/2wCEAAEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQECAgICAgICAgICAgMDAwMDAwMDAwMBAQEBAQEBAQEBAQICAQICAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDA//AABEIAEcAyAMBEQACEQEDEQH/3QAEABn/xAGiAAAABgIDAQAAAAAAAAAAAAAHCAYFBAkDCgIBAAsBAAAGAwEBAQAAAAAAAAAAAAYFBAMHAggBCQAKCxAAAgEDBAEDAwIDAwMCBgl1AQIDBBEFEgYhBxMiAAgxFEEyIxUJUUIWYSQzF1JxgRhikSVDobHwJjRyChnB0TUn4VM2gvGSokRUc0VGN0djKFVWVxqywtLi8mSDdJOEZaOzw9PjKThm83UqOTpISUpYWVpnaGlqdnd4eXqFhoeIiYqUlZaXmJmapKWmp6ipqrS1tre4ubrExcbHyMnK1NXW19jZ2uTl5ufo6er09fb3+Pn6EQACAQMCBAQDBQQEBAYGBW0BAgMRBCESBTEGACITQVEHMmEUcQhCgSORFVKhYhYzCbEkwdFDcvAX4YI0JZJTGGNE8aKyJjUZVDZFZCcKc4OTRnTC0uLyVWV1VjeEhaOzw9Pj8ykalKS0xNTk9JWltcXV5fUoR1dmOHaGlqa2xtbm9md3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" alt="" /></p>', 1, 'spt-2', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*');
INSERT INTO `iwk5c_modules` (`id`, `asset_id`, `title`, `note`, `content`, `ordering`, `position`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `published`, `module`, `access`, `showtitle`, `params`, `client_id`, `language`) VALUES
(155, 173, 'Logo3', '', '<p><img src="data:image/png;base64,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" alt="" /></p>', 1, 'spt-3', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(156, 174, 'Logo4', '', '<p>Logo4</p>', 1, 'spt-4', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(157, 175, 'Blank Module', '', '', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_blank250', 1, 1, '', 0, '*'),
(158, 176, 'Banners', '', '', 1, 'banners-links', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_blank250', 1, 0, '{"codeeditor":"<div id=\\"banners-links\\">\\r\\n<p id=\\"banners-links\\"><img class=\\"banners\\" id=\\"expresso\\" src=\\"images\\/expresso1.png\\" alt=\\"\\" width=\\"140\\" height=\\"74\\" onmouseover=\\"imgOver(''expresso'');\\" onmouseout=\\"imgOut(''expresso'');\\"\\/>  <img class=\\"banners\\" src=\\"images\\/EMRMS1.png\\" id=\\"EMRMS\\" alt=\\"\\" width=\\"95\\" height=\\"96\\" onmouseover=\\"imgOver(''EMRMS'');\\" onmouseout=\\"imgOut(''EMRMS'');\\"\\/> <img class=\\"banners\\" id=\\"portal\\" src=\\"images\\/portal1.png\\" alt=\\"\\"  onmouseover=\\"imgOver(''portal'');\\" onmouseout=\\"imgOut(''portal'');\\" \\/>   <img class=\\"banners\\" id=\\"mobilize\\" src=\\"images\\/mobilize1.png\\" alt=\\"\\" onmouseover=\\"imgOver(''mobilize'');\\" onmouseout=\\"imgOut(''mobilize'');\\"  \\/>    <img class=\\"banners\\" id=\\"CBTU\\" src=\\"images\\/CBTU1.png\\" alt=\\"\\"  onmouseover=\\"imgOver(''CBTU'');\\" onmouseout=\\"imgOut(''CBTU'');\\"\\/><\\/p>\\r\\n<\\/div>","textareause":"1","phpcode":"","phpuse":"1","script":"","scriptuse":"1","itemid":"a","contenttitleuse":"1","contentuse":"1","content1":"1","content2":"2","content3":"3","graphics":"2","bgpattern":"Dots","colour1":"D6FFC2","trans1":"2","bordercol":"AACCBB","bordersz":"0","shadcol":"444444","shadsz":"0","margin-leftmodule":"","paddingleft":"","paddingright":"","paddingtop":"","paddingbottom":"","margin-top":"","margin-bottom":"","width":"100","widthunit":"%","colour2":"FFFFFF","trans2":"2","moduleclass_sfx":"","modno_bm":"0","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(159, 177, 'Icone 1', '', '<p> </p>\r\n<p><img style="line-height: 15.8079996109009px;" src="images/logosedur.png" alt="" width="181" height="84" /></p>', 1, 'position-1', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_custom', 1, 0, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(160, 178, 'Icone 2', '', '<p><img src="images/emrms.png" alt="" width="250" height="150" /></p>', 1, 'position-2', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_custom', 1, 0, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":" esp02","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(161, 179, 'Icone 3', '', '<p><img src="images/mobilize.png" alt="" width="250" height="150" /></p>', 1, 'position-3', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_custom', 1, 0, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":" esp02","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(162, 180, 'Icone 4', '', '<p> </p>\r\n<p><img src="images/CBTU.png" alt="" width="345" height="81" /></p>', 1, 'position-4', 303, '2015-01-22 13:38:37', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_custom', 1, 0, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":" esp02","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(163, 181, 'Icone 5', '', '<p> </p>\r\n<p><img src="images/CCR.png" alt="" width="120" height="152" /></p>', 1, 'position-4', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_custom', 1, 0, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":" esp02","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(164, 183, 'MijoPolls', '', '', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_mijopolls', 1, 1, '', 0, '*'),
(165, 184, 'Poll 1', '', '', 1, 'sidebar-2', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_mijopolls', 1, 0, '{"moduleclass_sfx":" pollc","id":"","ajax":"0","show_poll_title":"1","only_one_color":"0","poll_bars_color":"cccccc","poll_bars_border_color":"cccccc","show_view_details":"1","show_rel_article":"1","rel_article":"http:\\/\\/www.mijosoft.com","rel_article_window":"_self","show_total":"1","show_msg":"1","show_detailed_msg":"1","msg_date_format":"F j, Y","cache":"1","cache_time":"900","module_tag":"div","bootstrap_size":"0","header_tag":"h4","header_class":"","style":"0"}', 0, '*'),
(166, 185, 'Icone 1', '', '', 1, 'position-1', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_blank250', 1, 0, '{"codeeditor":"<div class=\\"module-inner\\"><div class=\\"module-ct\\">\\r\\n\\r\\n<div class=\\"custom\\">\\r\\n\\t<p>&nbsp;<\\/p>\\r\\n<p><img id=\\"icone1\\" src=\\"\\/ctb\\/images\\/SedurPB.png\\" alt=\\"\\" height=\\"84\\" width=\\"181\\"><\\/p><\\/div>\\r\\n<\\/div><\\/div>","textareause":"1","phpcode":"","phpuse":"1","script":"","scriptuse":"1","itemid":"a","contenttitleuse":"1","contentuse":"1","content1":"1","content2":"2","content3":"3","graphics":"2","bgpattern":"-1","colour1":"000000","trans1":"2","bordercol":"ACB5FF","bordersz":"4","shadcol":"444444","shadsz":"4","margin-leftmodule":"","paddingleft":"","paddingright":"","paddingtop":"","paddingbottom":"","margin-top":"","margin-bottom":"","width":"100","widthunit":"%","colour2":"FFFFFF","trans2":"2","moduleclass_sfx":"","modno_bm":"0","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(167, 186, 'Icone 2', '', '', 1, 'position-2', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_blank250', 1, 0, '{"codeeditor":"<div class=\\"module-inner\\"><div class=\\"module-ct\\">\\r\\n\\r\\n<div class=\\"custom\\">\\r\\n\\t<p>&nbsp;<\\/p>\\r\\n<p><img id=\\"icone2\\" src=\\"\\/ctb\\/images\\/emrmsPB.png\\"><\\/p><\\/div>\\r\\n<\\/div><\\/div>","textareause":"1","phpcode":"","phpuse":"1","script":"","scriptuse":"1","itemid":"a","contenttitleuse":"1","contentuse":"1","content1":"1","content2":"2","content3":"3","graphics":"2","bgpattern":"-1","colour1":"000000","trans1":"2","bordercol":"ACB5FF","bordersz":"4","shadcol":"444444","shadsz":"4","margin-leftmodule":"","paddingleft":"","paddingright":"","paddingtop":"","paddingbottom":"","margin-top":"","margin-bottom":"","width":"100","widthunit":"%","colour2":"FFFFFF","trans2":"2","moduleclass_sfx":"","modno_bm":"0","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(168, 187, 'Icone 3', '', '', 1, 'position-3', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_blank250', 1, 0, '{"codeeditor":"<div class=\\"module-inner\\"><div class=\\"module-ct\\">\\r\\n\\r\\n<div class=\\"custom\\">\\r\\n\\t<p>&nbsp;<\\/p>\\r\\n<p><img id=\\"icone2\\" src=\\"\\/ctb\\/images\\/mobilizePB.png\\"><\\/p><\\/div>\\r\\n<\\/div><\\/div>","textareause":"1","phpcode":"","phpuse":"1","script":"","scriptuse":"1","itemid":"a","contenttitleuse":"1","contentuse":"1","content1":"1","content2":"2","content3":"3","graphics":"2","bgpattern":"-1","colour1":"000000","trans1":"2","bordercol":"ACB5FF","bordersz":"4","shadcol":"444444","shadsz":"4","margin-leftmodule":"","paddingleft":"","paddingright":"","paddingtop":"","paddingbottom":"","margin-top":"","margin-bottom":"","width":"100","widthunit":"%","colour2":"FFFFFF","trans2":"2","moduleclass_sfx":"","modno_bm":"0","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(169, 188, 'Icone 4', '', '', 1, 'position-4', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_blank250', 1, 0, '{"codeeditor":"<div class=\\"module-inner\\"><div class=\\"module-ct\\">\\r\\n\\r\\n<div class=\\"custom\\">\\r\\n\\t<p>&nbsp;<\\/p>\\r\\n<p><img src=\\"\\/ctb\\/images\\/CBTUPB.png\\"><\\/p><\\/div>\\r\\n<\\/div><\\/div>","textareause":"1","phpcode":"","phpuse":"1","script":"","scriptuse":"1","itemid":"a","contenttitleuse":"1","contentuse":"1","content1":"1","content2":"2","content3":"3","graphics":"2","bgpattern":"-1","colour1":"000000","trans1":"2","bordercol":"ACB5FF","bordersz":"4","shadcol":"444444","shadsz":"4","margin-leftmodule":"","paddingleft":"","paddingright":"","paddingtop":"","paddingbottom":"","margin-top":"","margin-bottom":"","width":"100","widthunit":"%","colour2":"FFFFFF","trans2":"2","moduleclass_sfx":" icone4","modno_bm":"0","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*');

-- --------------------------------------------------------

--
-- Estrutura da tabela `iwk5c_modules_menu`
--

CREATE TABLE IF NOT EXISTS `iwk5c_modules_menu` (
  `moduleid` int(11) NOT NULL DEFAULT '0',
  `menuid` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `iwk5c_modules_menu`
--

INSERT INTO `iwk5c_modules_menu` (`moduleid`, `menuid`) VALUES
(1, 0),
(2, 0),
(3, 0),
(4, 0),
(6, 0),
(7, 0),
(8, 0),
(9, 0),
(10, 0),
(12, 0),
(13, 0),
(14, 0),
(15, 0),
(16, 0),
(17, 0),
(79, 0),
(86, 0),
(87, 0),
(88, 0),
(89, 0),
(90, 0),
(91, 0),
(92, 0),
(93, 108),
(94, 108),
(95, 108),
(96, 161),
(97, 143),
(98, 147),
(98, 148),
(98, 149),
(98, 150),
(98, 151),
(98, 152),
(99, 147),
(99, 148),
(99, 149),
(99, 150),
(99, 151),
(99, 152),
(99, 162),
(100, 112),
(101, 112),
(101, 153),
(101, 154),
(101, 155),
(102, 153),
(103, 0),
(104, 154),
(105, 110),
(106, 110),
(108, 112),
(109, 110),
(110, 110),
(111, 101),
(112, 101),
(112, 102),
(112, 103),
(112, 104),
(112, 105),
(112, 106),
(112, 107),
(112, 108),
(112, 109),
(112, 110),
(112, 111),
(112, 112),
(112, 113),
(112, 114),
(112, 115),
(112, 116),
(112, 117),
(112, 118),
(112, 119),
(112, 120),
(112, 147),
(112, 148),
(112, 149),
(112, 150),
(112, 151),
(112, 152),
(112, 153),
(112, 154),
(112, 155),
(112, 160),
(112, 161),
(112, 162),
(112, 163),
(112, 164),
(112, 165),
(112, 166),
(112, 167),
(112, 168),
(112, 169),
(113, 101),
(114, 101),
(115, 101),
(115, 102),
(115, 103),
(115, 104),
(115, 105),
(115, 106),
(115, 107),
(115, 108),
(115, 109),
(115, 110),
(115, 111),
(115, 112),
(115, 113),
(115, 114),
(115, 115),
(115, 116),
(115, 117),
(115, 118),
(115, 119),
(115, 120),
(115, 147),
(115, 148),
(115, 149),
(115, 150),
(115, 151),
(115, 152),
(115, 153),
(115, 154),
(115, 155),
(115, 160),
(115, 161),
(115, 162),
(115, 163),
(115, 164),
(115, 165),
(115, 166),
(115, 167),
(115, 168),
(115, 169),
(116, 160),
(117, 150),
(118, 148),
(119, 147),
(120, 149),
(121, 151),
(122, 152),
(123, 111),
(124, 113),
(125, 116),
(126, 117),
(127, 118),
(128, 119),
(129, 120),
(130, 144),
(131, 145),
(132, 155),
(133, 103),
(134, 104),
(135, 105),
(136, 106),
(137, 0),
(139, 101),
(139, 102),
(139, 103),
(139, 104),
(139, 105),
(139, 106),
(139, 107),
(139, 108),
(139, 109),
(139, 110),
(139, 111),
(139, 112),
(139, 113),
(139, 114),
(139, 115),
(139, 116),
(139, 117),
(139, 118),
(139, 119),
(139, 120),
(139, 141),
(139, 142),
(139, 143),
(139, 144),
(139, 145),
(139, 146),
(139, 147),
(139, 148),
(139, 149),
(139, 150),
(139, 151),
(139, 152),
(139, 153),
(139, 154),
(139, 155),
(140, 114),
(141, 115),
(142, 0),
(143, 101),
(144, 101),
(145, 101),
(146, 101),
(147, 101),
(148, 104),
(149, 0),
(150, 114),
(151, 0),
(152, 0),
(153, 101),
(154, 0),
(155, 0),
(156, 0),
(158, 0),
(159, 0),
(160, 0),
(161, 0),
(162, 0),
(163, 0),
(165, 101),
(166, 0),
(167, 0),
(168, 0),
(169, 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `iwk5c_newsfeeds`
--

CREATE TABLE IF NOT EXISTS `iwk5c_newsfeeds` (
  `catid` int(11) NOT NULL DEFAULT '0',
`id` int(10) unsigned NOT NULL,
  `name` varchar(100) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `link` varchar(200) NOT NULL DEFAULT '',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `numarticles` int(10) unsigned NOT NULL DEFAULT '1',
  `cache_time` int(10) unsigned NOT NULL DEFAULT '3600',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `rtl` tinyint(4) NOT NULL DEFAULT '0',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `language` char(7) NOT NULL DEFAULT '',
  `params` text NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `metadata` text NOT NULL,
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `description` text NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `images` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `iwk5c_newsfeeds`
--

INSERT INTO `iwk5c_newsfeeds` (`catid`, `id`, `name`, `alias`, `link`, `published`, `numarticles`, `cache_time`, `checked_out`, `checked_out_time`, `ordering`, `rtl`, `access`, `language`, `params`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `metakey`, `metadesc`, `metadata`, `xreference`, `publish_up`, `publish_down`, `description`, `version`, `hits`, `images`) VALUES
(5, 1, 'Teste de feed', 'teste-de-feed', 'http://www.facebook.com.br', 1, 5, 3600, 0, '0000-00-00 00:00:00', 1, 0, 1, '*', '', '2014-06-29 23:54:19', 303, '', '0000-00-00 00:00:00', 0, '', '', '{"robots":"","rights":""}', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 1, 0, '{"image_first":"","float_first":"","image_first_alt":"","image_first_caption":"","image_second":"","float_second":"","image_second_alt":"","image_second_caption":""}');

-- --------------------------------------------------------

--
-- Estrutura da tabela `iwk5c_overrider`
--

CREATE TABLE IF NOT EXISTS `iwk5c_overrider` (
`id` int(10) NOT NULL COMMENT 'Primary Key',
  `constant` varchar(255) NOT NULL,
  `string` text NOT NULL,
  `file` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `iwk5c_phocagallery`
--

CREATE TABLE IF NOT EXISTS `iwk5c_phocagallery` (
`id` int(11) unsigned NOT NULL,
  `catid` int(11) NOT NULL DEFAULT '0',
  `sid` int(11) NOT NULL DEFAULT '0',
  `title` varchar(250) NOT NULL DEFAULT '',
  `alias` varchar(255) NOT NULL DEFAULT '',
  `filename` varchar(250) NOT NULL DEFAULT '',
  `format` tinyint(1) NOT NULL DEFAULT '0',
  `description` text,
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hits` int(11) NOT NULL DEFAULT '0',
  `latitude` varchar(20) NOT NULL DEFAULT '',
  `longitude` varchar(20) NOT NULL DEFAULT '',
  `zoom` int(3) NOT NULL DEFAULT '0',
  `geotitle` varchar(255) NOT NULL DEFAULT '',
  `userid` int(11) NOT NULL DEFAULT '0',
  `videocode` text,
  `vmproductid` int(11) NOT NULL DEFAULT '0',
  `imgorigsize` int(11) NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `approved` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text,
  `metakey` text,
  `metadesc` text,
  `metadata` text,
  `extlink1` text,
  `extlink2` text,
  `extid` varchar(255) NOT NULL DEFAULT '',
  `exttype` tinyint(1) NOT NULL DEFAULT '0',
  `extl` varchar(255) NOT NULL DEFAULT '',
  `extm` varchar(255) NOT NULL DEFAULT '',
  `exts` varchar(255) NOT NULL DEFAULT '',
  `exto` varchar(255) NOT NULL DEFAULT '',
  `extw` varchar(255) NOT NULL DEFAULT '',
  `exth` varchar(255) NOT NULL DEFAULT '',
  `language` char(7) NOT NULL DEFAULT ''
) ENGINE=InnoDB AUTO_INCREMENT=78 DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `iwk5c_phocagallery`
--

INSERT INTO `iwk5c_phocagallery` (`id`, `catid`, `sid`, `title`, `alias`, `filename`, `format`, `description`, `date`, `hits`, `latitude`, `longitude`, `zoom`, `geotitle`, `userid`, `videocode`, `vmproductid`, `imgorigsize`, `published`, `approved`, `checked_out`, `checked_out_time`, `ordering`, `params`, `metakey`, `metadesc`, `metadata`, `extlink1`, `extlink2`, `extid`, `exttype`, `extl`, `extm`, `exts`, `exto`, `extw`, `exth`, `language`) VALUES
(41, 1, 0, 'Estações do Trem', 'estacoes-do-trem', 'estacoes/abrandao.png', 1, NULL, '2014-06-30 19:04:37', 6, '0', '0', 0, '', 0, NULL, 0, 241899, 1, 1, 0, '0000-00-00 00:00:00', 1, NULL, NULL, NULL, NULL, NULL, NULL, '', 0, '', '', '', '', '', '', '*'),
(42, 1, 0, 'Estações do Trem', 'estacoes-do-trem', 'estacoes/calcada.png', 1, '', '2014-06-30 00:00:00', 0, '0', '0', 0, '', 0, '', 0, 224686, 1, 1, 0, '0000-00-00 00:00:00', 1, NULL, '', '', NULL, '||_self|1', '||_self|1', '', 0, '', '', '', '', '', '', '*'),
(43, 1, 0, 'Estações do Trem', 'estacoes-do-trem', 'estacoes/coutos.png', 1, NULL, '2014-06-30 19:04:37', 0, '0', '0', 0, '', 0, NULL, 0, 173160, 1, 1, 0, '0000-00-00 00:00:00', 3, NULL, NULL, NULL, NULL, NULL, NULL, '', 0, '', '', '', '', '', '', '*'),
(44, 1, 0, 'Estações do Trem', 'estacoes-do-trem', 'estacoes/escada.png', 1, NULL, '2014-06-30 19:04:37', 0, '0', '0', 0, '', 0, NULL, 0, 219226, 1, 1, 0, '0000-00-00 00:00:00', 4, NULL, NULL, NULL, NULL, NULL, NULL, '', 0, '', '', '', '', '', '', '*'),
(45, 1, 0, 'Estações do Trem', 'estacoes-do-trem', 'estacoes/itacaranha.png', 1, NULL, '2014-06-30 19:04:37', 0, '0', '0', 0, '', 0, NULL, 0, 181587, 1, 1, 0, '0000-00-00 00:00:00', 5, NULL, NULL, NULL, NULL, NULL, NULL, '', 0, '', '', '', '', '', '', '*'),
(46, 1, 0, 'Estações do Trem', 'estacoes-do-trem', 'estacoes/lobato.png', 1, NULL, '2014-06-30 19:04:37', 0, '0', '0', 0, '', 0, NULL, 0, 216908, 1, 1, 0, '0000-00-00 00:00:00', 6, NULL, NULL, NULL, NULL, NULL, NULL, '', 0, '', '', '', '', '', '', '*'),
(47, 1, 0, 'Estações do Trem', 'estacoes-do-trem', 'estacoes/paripe.png', 1, NULL, '2014-06-30 19:04:37', 0, '0', '0', 0, '', 0, NULL, 0, 178341, 1, 1, 0, '0000-00-00 00:00:00', 7, NULL, NULL, NULL, NULL, NULL, NULL, '', 0, '', '', '', '', '', '', '*'),
(48, 1, 0, 'Estações do Trem', 'estacoes-do-trem', 'estacoes/periperi.png', 1, NULL, '2014-06-30 19:04:37', 0, '0', '0', 0, '', 0, NULL, 0, 200262, 1, 1, 0, '0000-00-00 00:00:00', 8, NULL, NULL, NULL, NULL, NULL, NULL, '', 0, '', '', '', '', '', '', '*'),
(49, 1, 0, 'Estações do Trem', 'estacoes-do-trem', 'estacoes/praiagrande.png', 1, NULL, '2014-06-30 19:04:38', 0, '0', '0', 0, '', 0, NULL, 0, 198135, 1, 1, 0, '0000-00-00 00:00:00', 9, NULL, NULL, NULL, NULL, NULL, NULL, '', 0, '', '', '', '', '', '', '*'),
(50, 1, 0, 'Estações do Trem', 'estacoes-do-trem', 'estacoes/santaluzia.png', 1, '', '2014-06-30 00:00:00', 0, '0', '0', 0, '', 0, '', 0, 208908, 1, 1, 0, '0000-00-00 00:00:00', 1, NULL, '', '', NULL, '||_self|1', '||_self|1', '', 0, '', '', '', '', '', '', '*'),
(51, 4, 0, 'Metro', 'metro', 'metro/foto do trem.jpg', 1, NULL, '2014-06-30 19:07:18', 4, '', '', 0, '', 0, NULL, 0, 1984219, 1, 1, 0, '0000-00-00 00:00:00', 1, NULL, NULL, NULL, NULL, NULL, NULL, '', 0, '', '', '', '', '', '', '*'),
(52, 4, 0, 'Metro', 'metro', 'metro/foto interna do trem.jpg', 1, NULL, '2014-06-30 19:07:18', 0, '', '', 0, '', 0, NULL, 0, 1865910, 1, 1, 0, '0000-00-00 00:00:00', 2, NULL, NULL, NULL, NULL, NULL, NULL, '', 0, '', '', '', '', '', '', '*'),
(53, 4, 0, 'Metro', 'metro', 'metro/foto_estacao acesso_norte 1.jpg', 2, NULL, '2014-06-30 19:07:18', 0, '', '', 0, '', 0, NULL, 0, 503148, 1, 1, 0, '0000-00-00 00:00:00', 3, NULL, NULL, NULL, NULL, NULL, NULL, '', 0, '', '', '', '', '', '', '*'),
(54, 4, 0, 'Metro', 'metro', 'metro/foto_estacao_acesso_norte 2.jpg', 1, NULL, '2014-06-30 19:07:18', 0, '', '', 0, '', 0, NULL, 0, 1243367, 1, 1, 0, '0000-00-00 00:00:00', 4, NULL, NULL, NULL, NULL, NULL, NULL, '', 0, '', '', '', '', '', '', '*'),
(55, 4, 0, 'Metro', 'metro', 'metro/foto_estacao_acesso_norte 3.jpg', 2, NULL, '2014-06-30 19:07:18', 0, '', '', 0, '', 0, NULL, 0, 607896, 1, 1, 0, '0000-00-00 00:00:00', 5, NULL, NULL, NULL, NULL, NULL, NULL, '', 0, '', '', '', '', '', '', '*'),
(56, 4, 0, 'Metro', 'metro', 'metro/foto_estacao_acesso_norte 4.jpg', 1, NULL, '2014-06-30 19:07:18', 0, '', '', 0, '', 0, NULL, 0, 1631172, 1, 1, 0, '0000-00-00 00:00:00', 6, NULL, NULL, NULL, NULL, NULL, NULL, '', 0, '', '', '', '', '', '', '*'),
(57, 4, 0, 'Metro', 'metro', 'metro/foto_estacao_acesso_norte 7.jpg', 1, NULL, '2014-06-30 19:07:18', 0, '', '', 0, '', 0, NULL, 0, 1732782, 1, 1, 0, '0000-00-00 00:00:00', 7, NULL, NULL, NULL, NULL, NULL, NULL, '', 0, '', '', '', '', '', '', '*'),
(58, 4, 0, 'Metro', 'metro', 'metro/foto_estacao_brotas 1.jpg', 1, NULL, '2014-06-30 19:07:19', 0, '', '', 0, '', 0, NULL, 0, 1225866, 1, 1, 0, '0000-00-00 00:00:00', 8, NULL, NULL, NULL, NULL, NULL, NULL, '', 0, '', '', '', '', '', '', '*'),
(59, 4, 0, 'Metro', 'metro', 'metro/foto_estacao_brotas 2.jpg', 1, NULL, '2014-06-30 19:07:19', 0, '', '', 0, '', 0, NULL, 0, 1545859, 1, 1, 0, '0000-00-00 00:00:00', 9, NULL, NULL, NULL, NULL, NULL, NULL, '', 0, '', '', '', '', '', '', '*'),
(60, 4, 0, 'Metro', 'metro', 'metro/foto_estacao_brotas 3.jpg', 1, NULL, '2014-06-30 19:07:19', 0, '', '', 0, '', 0, NULL, 0, 584778, 1, 1, 0, '0000-00-00 00:00:00', 10, NULL, NULL, NULL, NULL, NULL, NULL, '', 0, '', '', '', '', '', '', '*'),
(61, 4, 0, 'Metro', 'metro', 'metro/foto_estacao_campo_da_polvora 1.jpg', 1, NULL, '2014-06-30 19:07:19', 0, '', '', 0, '', 0, NULL, 0, 1141909, 1, 1, 0, '0000-00-00 00:00:00', 11, NULL, NULL, NULL, NULL, NULL, NULL, '', 0, '', '', '', '', '', '', '*'),
(62, 4, 0, 'Metro', 'metro', 'metro/foto_estacao_campo_da_polvora 2.jpg', 1, NULL, '2014-06-30 19:07:19', 4, '', '', 0, '', 0, NULL, 0, 1068887, 1, 1, 0, '0000-00-00 00:00:00', 12, NULL, NULL, NULL, NULL, NULL, NULL, '', 0, '', '', '', '', '', '', '*'),
(63, 4, 0, 'Metro', 'metro', 'metro/foto_estacao_campo_da_polvora 3.jpg', 1, NULL, '2014-06-30 19:07:19', 0, '', '', 0, '', 0, NULL, 0, 1515286, 1, 1, 0, '0000-00-00 00:00:00', 13, NULL, NULL, NULL, NULL, NULL, NULL, '', 0, '', '', '', '', '', '', '*'),
(64, 4, 0, 'Metro', 'metro', 'metro/foto_estacao_campo_da_polvora 4.jpg', 1, NULL, '2014-06-30 19:07:19', 0, '', '', 0, '', 0, NULL, 0, 1717950, 1, 1, 0, '0000-00-00 00:00:00', 14, NULL, NULL, NULL, NULL, NULL, NULL, '', 0, '', '', '', '', '', '', '*'),
(65, 4, 0, 'Metro', 'metro', 'metro/foto_estacao_campo_da_polvora 5.jpg', 1, NULL, '2014-06-30 19:07:19', 0, '', '', 0, '', 0, NULL, 0, 1568753, 1, 1, 0, '0000-00-00 00:00:00', 15, NULL, NULL, NULL, NULL, NULL, NULL, '', 0, '', '', '', '', '', '', '*'),
(66, 4, 0, 'Metro', 'metro', 'metro/foto_estacao_campo_da_polvora 6.jpg', 1, NULL, '2014-06-30 19:07:19', 0, '', '', 0, '', 0, NULL, 0, 1885328, 1, 1, 0, '0000-00-00 00:00:00', 16, NULL, NULL, NULL, NULL, NULL, NULL, '', 0, '', '', '', '', '', '', '*'),
(67, 4, 0, 'Metro', 'metro', 'metro/foto_estacao_campo_da_polvora 7.jpg', 2, NULL, '2014-06-30 19:07:19', 0, '', '', 0, '', 0, NULL, 0, 1606773, 1, 1, 0, '0000-00-00 00:00:00', 17, NULL, NULL, NULL, NULL, NULL, NULL, '', 0, '', '', '', '', '', '', '*'),
(68, 4, 0, 'Metro', 'metro', 'metro/foto_estacao_campo_da_polvora 9.jpg', 2, NULL, '2014-06-30 19:07:19', 0, '', '', 0, '', 0, NULL, 0, 747387, 1, 1, 0, '0000-00-00 00:00:00', 18, NULL, NULL, NULL, NULL, NULL, NULL, '', 0, '', '', '', '', '', '', '*'),
(69, 4, 0, 'Metro', 'metro', 'metro/foto_estacao_do_retiro 1.jpg', 1, NULL, '2014-06-30 19:07:19', 0, '', '', 0, '', 0, NULL, 0, 497154, 1, 1, 0, '0000-00-00 00:00:00', 19, NULL, NULL, NULL, NULL, NULL, NULL, '', 0, '', '', '', '', '', '', '*'),
(70, 4, 0, 'Metro', 'metro', 'metro/foto_estacao_do_retiro 2.jpg', 1, NULL, '2014-06-30 19:07:20', 0, '', '', 0, '', 0, NULL, 0, 507016, 1, 1, 0, '0000-00-00 00:00:00', 20, NULL, NULL, NULL, NULL, NULL, NULL, '', 0, '', '', '', '', '', '', '*'),
(71, 4, 0, 'Metro', 'metro', 'metro/foto_estacao_do_retiro3.jpg', 1, NULL, '2014-06-30 19:07:20', 0, '', '', 0, '', 0, NULL, 0, 993849, 1, 1, 0, '0000-00-00 00:00:00', 21, NULL, NULL, NULL, NULL, NULL, NULL, '', 0, '', '', '', '', '', '', '*'),
(72, 4, 0, 'Metro', 'metro', 'metro/foto_estacao_lapa 1.jpg', 1, NULL, '2014-06-30 19:07:20', 0, '', '', 0, '', 0, NULL, 0, 1696481, 1, 1, 0, '0000-00-00 00:00:00', 22, NULL, NULL, NULL, NULL, NULL, NULL, '', 0, '', '', '', '', '', '', '*'),
(73, 4, 0, 'Metro', 'metro', 'metro/foto_estacao_lapa 2.jpg', 1, NULL, '2014-06-30 19:07:20', 0, '', '', 0, '', 0, NULL, 0, 1826703, 1, 1, 0, '0000-00-00 00:00:00', 23, NULL, NULL, NULL, NULL, NULL, NULL, '', 0, '', '', '', '', '', '', '*'),
(74, 4, 0, 'Metro', 'metro', 'metro/foto_estacao_lapa 3.jpg', 1, NULL, '2014-06-30 19:07:20', 0, '', '', 0, '', 0, NULL, 0, 1873516, 1, 1, 0, '0000-00-00 00:00:00', 24, NULL, NULL, NULL, NULL, NULL, NULL, '', 0, '', '', '', '', '', '', '*'),
(75, 4, 0, 'Metro', 'metro', 'metro/foto_estacao_lapa 4.jpg', 1, NULL, '2014-06-30 19:07:20', 0, '', '', 0, '', 0, NULL, 0, 1618404, 1, 1, 0, '0000-00-00 00:00:00', 25, NULL, NULL, NULL, NULL, NULL, NULL, '', 0, '', '', '', '', '', '', '*'),
(76, 4, 0, 'Metro', 'metro', 'metro/foto_estao_acesso_norte 6.jpg', 1, NULL, '2014-06-30 19:07:20', 0, '', '', 0, '', 0, NULL, 0, 1231759, 1, 1, 0, '0000-00-00 00:00:00', 26, NULL, NULL, NULL, NULL, NULL, NULL, '', 0, '', '', '', '', '', '', '*'),
(77, 4, 0, 'Metro', 'metro', 'metro/foto_estao_campo_da_polvora 8.jpg', 1, NULL, '2014-06-30 19:07:20', 0, '', '', 0, '', 0, NULL, 0, 1600101, 1, 1, 0, '0000-00-00 00:00:00', 27, NULL, NULL, NULL, NULL, NULL, NULL, '', 0, '', '', '', '', '', '', '*');

-- --------------------------------------------------------

--
-- Estrutura da tabela `iwk5c_phocagallery_categories`
--

CREATE TABLE IF NOT EXISTS `iwk5c_phocagallery_categories` (
`id` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `owner_id` int(11) NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) NOT NULL DEFAULT '',
  `image` varchar(255) NOT NULL DEFAULT '',
  `section` varchar(50) NOT NULL DEFAULT '',
  `image_position` varchar(30) NOT NULL DEFAULT '',
  `description` text,
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `approved` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `editor` varchar(50) DEFAULT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  `access` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `count` int(11) NOT NULL DEFAULT '0',
  `hits` int(11) NOT NULL DEFAULT '0',
  `accessuserid` text,
  `uploaduserid` text,
  `deleteuserid` text,
  `userfolder` text,
  `latitude` varchar(20) NOT NULL DEFAULT '',
  `longitude` varchar(20) NOT NULL DEFAULT '',
  `zoom` int(3) NOT NULL DEFAULT '0',
  `geotitle` varchar(255) NOT NULL DEFAULT '',
  `extid` varchar(255) NOT NULL DEFAULT '',
  `exta` varchar(255) NOT NULL DEFAULT '',
  `extu` varchar(255) NOT NULL DEFAULT '',
  `extauth` varchar(255) NOT NULL DEFAULT '',
  `extfbuid` int(11) NOT NULL DEFAULT '0',
  `extfbcatid` varchar(255) NOT NULL DEFAULT '',
  `params` text,
  `metakey` text,
  `metadesc` text,
  `metadata` text,
  `language` char(7) NOT NULL DEFAULT ''
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `iwk5c_phocagallery_categories`
--

INSERT INTO `iwk5c_phocagallery_categories` (`id`, `parent_id`, `owner_id`, `title`, `name`, `alias`, `image`, `section`, `image_position`, `description`, `date`, `published`, `approved`, `checked_out`, `checked_out_time`, `editor`, `ordering`, `access`, `count`, `hits`, `accessuserid`, `uploaduserid`, `deleteuserid`, `userfolder`, `latitude`, `longitude`, `zoom`, `geotitle`, `extid`, `exta`, `extu`, `extauth`, `extfbuid`, `extfbcatid`, `params`, `metakey`, `metadesc`, `metadata`, `language`) VALUES
(1, 0, 0, 'Estações do Trem', '', 'estacoes-do-trem', '', '', '', '', '2014-06-30 18:01:54', 1, 1, 0, '0000-00-00 00:00:00', NULL, 1, 1, 0, 0, '0', '0', '0', '', '', '', 0, '', '', '', '', '', 0, '', NULL, '', '', NULL, '*'),
(4, 0, 0, 'Metrô', '', 'metro', '', '', '', '', '2014-06-30 18:52:26', 1, 1, 0, '0000-00-00 00:00:00', NULL, 2, 1, 0, 0, '0', '0', '0', '', '', '', 0, '', '', '', '', '', 0, '', NULL, '', '', NULL, '*');

-- --------------------------------------------------------

--
-- Estrutura da tabela `iwk5c_phocagallery_comments`
--

CREATE TABLE IF NOT EXISTS `iwk5c_phocagallery_comments` (
`id` int(11) NOT NULL,
  `catid` int(11) NOT NULL DEFAULT '0',
  `userid` int(11) NOT NULL DEFAULT '0',
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `title` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) NOT NULL DEFAULT '',
  `comment` text,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text,
  `language` char(7) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `iwk5c_phocagallery_fb_users`
--

CREATE TABLE IF NOT EXISTS `iwk5c_phocagallery_fb_users` (
`id` int(11) NOT NULL,
  `appid` varchar(255) NOT NULL DEFAULT '',
  `appsid` varchar(255) NOT NULL DEFAULT '',
  `uid` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `link` varchar(255) NOT NULL DEFAULT '',
  `secret` varchar(255) NOT NULL DEFAULT '',
  `base_domain` varchar(255) NOT NULL DEFAULT '',
  `expires` varchar(100) NOT NULL DEFAULT '',
  `session_key` text,
  `access_token` text,
  `sig` text,
  `fanpageid` varchar(255) NOT NULL DEFAULT '',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `comments` text,
  `params` text,
  `language` char(7) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `iwk5c_phocagallery_img_comments`
--

CREATE TABLE IF NOT EXISTS `iwk5c_phocagallery_img_comments` (
`id` int(11) NOT NULL,
  `imgid` int(11) NOT NULL DEFAULT '0',
  `userid` int(11) NOT NULL DEFAULT '0',
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `title` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) NOT NULL DEFAULT '',
  `comment` text,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text,
  `language` char(7) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `iwk5c_phocagallery_img_votes`
--

CREATE TABLE IF NOT EXISTS `iwk5c_phocagallery_img_votes` (
`id` int(11) NOT NULL,
  `imgid` int(11) NOT NULL DEFAULT '0',
  `userid` int(11) NOT NULL DEFAULT '0',
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `rating` tinyint(1) NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text,
  `language` char(7) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `iwk5c_phocagallery_img_votes_statistics`
--

CREATE TABLE IF NOT EXISTS `iwk5c_phocagallery_img_votes_statistics` (
`id` int(11) NOT NULL,
  `imgid` int(11) NOT NULL DEFAULT '0',
  `count` int(11) NOT NULL DEFAULT '0',
  `average` float(8,6) NOT NULL DEFAULT '0.000000',
  `language` char(7) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `iwk5c_phocagallery_styles`
--

CREATE TABLE IF NOT EXISTS `iwk5c_phocagallery_styles` (
`id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) NOT NULL DEFAULT '',
  `filename` varchar(255) NOT NULL DEFAULT '',
  `menulink` text,
  `type` tinyint(1) NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text,
  `language` char(7) NOT NULL DEFAULT ''
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `iwk5c_phocagallery_styles`
--

INSERT INTO `iwk5c_phocagallery_styles` (`id`, `title`, `alias`, `filename`, `menulink`, `type`, `published`, `checked_out`, `checked_out_time`, `ordering`, `params`, `language`) VALUES
(1, 'Phocagallery', 'phocagallery', 'phocagallery.css', '', 1, 1, 0, '0000-00-00 00:00:00', 1, NULL, '*'),
(2, 'Rating', '', 'rating.css', NULL, 1, 1, 0, '0000-00-00 00:00:00', 2, NULL, '*'),
(3, 'Default', '', 'default.css', NULL, 2, 1, 0, '0000-00-00 00:00:00', 3, NULL, '*'),
(4, 'Bootstrap', '', 'bootstrap.min.css', NULL, 1, 0, 0, '0000-00-00 00:00:00', 4, NULL, '*');

-- --------------------------------------------------------

--
-- Estrutura da tabela `iwk5c_phocagallery_tags`
--

CREATE TABLE IF NOT EXISTS `iwk5c_phocagallery_tags` (
`id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) NOT NULL DEFAULT '',
  `link_cat` int(11) NOT NULL DEFAULT '0',
  `link_ext` varchar(255) NOT NULL DEFAULT '',
  `description` text,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text,
  `language` char(7) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `iwk5c_phocagallery_tags_ref`
--

CREATE TABLE IF NOT EXISTS `iwk5c_phocagallery_tags_ref` (
`id` bigint(20) unsigned NOT NULL,
  `imgid` int(11) NOT NULL DEFAULT '0',
  `tagid` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `iwk5c_phocagallery_user`
--

CREATE TABLE IF NOT EXISTS `iwk5c_phocagallery_user` (
`id` int(11) NOT NULL,
  `userid` int(11) NOT NULL DEFAULT '0',
  `avatar` varchar(40) NOT NULL DEFAULT '',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `approved` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text,
  `language` char(7) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `iwk5c_phocagallery_votes`
--

CREATE TABLE IF NOT EXISTS `iwk5c_phocagallery_votes` (
`id` int(11) NOT NULL,
  `catid` int(11) NOT NULL DEFAULT '0',
  `userid` int(11) NOT NULL DEFAULT '0',
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `rating` tinyint(1) NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text,
  `language` char(7) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `iwk5c_phocagallery_votes_statistics`
--

CREATE TABLE IF NOT EXISTS `iwk5c_phocagallery_votes_statistics` (
`id` int(11) NOT NULL,
  `catid` int(11) NOT NULL DEFAULT '0',
  `count` int(11) NOT NULL DEFAULT '0',
  `average` float(8,6) NOT NULL DEFAULT '0.000000',
  `language` char(7) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `iwk5c_postinstall_messages`
--

CREATE TABLE IF NOT EXISTS `iwk5c_postinstall_messages` (
`postinstall_message_id` bigint(20) unsigned NOT NULL,
  `extension_id` bigint(20) NOT NULL DEFAULT '700' COMMENT 'FK to #__extensions',
  `title_key` varchar(255) NOT NULL DEFAULT '' COMMENT 'Lang key for the title',
  `description_key` varchar(255) NOT NULL DEFAULT '' COMMENT 'Lang key for description',
  `action_key` varchar(255) NOT NULL DEFAULT '',
  `language_extension` varchar(255) NOT NULL DEFAULT 'com_postinstall' COMMENT 'Extension holding lang keys',
  `language_client_id` tinyint(3) NOT NULL DEFAULT '1',
  `type` varchar(10) NOT NULL DEFAULT 'link' COMMENT 'Message type - message, link, action',
  `action_file` varchar(255) DEFAULT '' COMMENT 'RAD URI to the PHP file containing action method',
  `action` varchar(255) DEFAULT '' COMMENT 'Action method name or URL',
  `condition_file` varchar(255) DEFAULT NULL COMMENT 'RAD URI to file holding display condition method',
  `condition_method` varchar(255) DEFAULT NULL COMMENT 'Display condition method, must return boolean',
  `version_introduced` varchar(50) NOT NULL DEFAULT '3.2.0' COMMENT 'Version when this message was introduced',
  `enabled` tinyint(3) NOT NULL DEFAULT '1'
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `iwk5c_postinstall_messages`
--

INSERT INTO `iwk5c_postinstall_messages` (`postinstall_message_id`, `extension_id`, `title_key`, `description_key`, `action_key`, `language_extension`, `language_client_id`, `type`, `action_file`, `action`, `condition_file`, `condition_method`, `version_introduced`, `enabled`) VALUES
(1, 700, 'PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_TITLE', 'PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_BODY', 'PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_ACTION', 'plg_twofactorauth_totp', 1, 'action', 'site://plugins/twofactorauth/totp/postinstall/actions.php', 'twofactorauth_postinstall_action', 'site://plugins/twofactorauth/totp/postinstall/actions.php', 'twofactorauth_postinstall_condition', '3.2.0', 1),
(2, 700, 'COM_CPANEL_MSG_EACCELERATOR_TITLE', 'COM_CPANEL_MSG_EACCELERATOR_BODY', 'COM_CPANEL_MSG_EACCELERATOR_BUTTON', 'com_cpanel', 1, 'action', 'admin://components/com_admin/postinstall/eaccelerator.php', 'admin_postinstall_eaccelerator_action', 'admin://components/com_admin/postinstall/eaccelerator.php', 'admin_postinstall_eaccelerator_condition', '3.2.0', 1),
(3, 700, 'COM_CPANEL_WELCOME_BEGINNERS_TITLE', 'COM_CPANEL_WELCOME_BEGINNERS_MESSAGE', '', 'com_cpanel', 1, 'message', '', '', '', '', '3.2.0', 1),
(4, 700, 'COM_CPANEL_MSG_PHPVERSION_TITLE', 'COM_CPANEL_MSG_PHPVERSION_BODY', '', 'com_cpanel', 1, 'message', '', '', 'admin://components/com_admin/postinstall/phpversion.php', 'admin_postinstall_phpversion_condition', '3.2.2', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `iwk5c_redirect_links`
--

CREATE TABLE IF NOT EXISTS `iwk5c_redirect_links` (
`id` int(10) unsigned NOT NULL,
  `old_url` varchar(255) NOT NULL,
  `new_url` varchar(255) NOT NULL,
  `referer` varchar(150) NOT NULL,
  `comment` varchar(255) NOT NULL,
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `published` tinyint(4) NOT NULL,
  `created_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `iwk5c_schemas`
--

CREATE TABLE IF NOT EXISTS `iwk5c_schemas` (
  `extension_id` int(11) NOT NULL,
  `version_id` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `iwk5c_schemas`
--

INSERT INTO `iwk5c_schemas` (`extension_id`, `version_id`) VALUES
(700, '3.3.0-2014-04-02'),
(704, '4.5.0'),
(712, '1.1.6'),
(714, '1.1.8'),
(719, '3.0.0');

-- --------------------------------------------------------

--
-- Estrutura da tabela `iwk5c_session`
--

CREATE TABLE IF NOT EXISTS `iwk5c_session` (
  `session_id` varchar(200) NOT NULL DEFAULT '',
  `client_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `guest` tinyint(4) unsigned DEFAULT '1',
  `time` varchar(14) DEFAULT '',
  `data` mediumtext,
  `userid` int(11) DEFAULT '0',
  `username` varchar(150) DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `iwk5c_session`
--

INSERT INTO `iwk5c_session` (`session_id`, `client_id`, `guest`, `time`, `data`, `userid`, `username`) VALUES
('abssfbj73tg33dll9i3qcnvd32', 0, 1, '1422119969', '__default|a:8:{s:15:"session.counter";i:13;s:19:"session.timer.start";i:1422118710;s:18:"session.timer.last";i:1422119315;s:17:"session.timer.now";i:1422119969;s:22:"session.client.browser";s:101:"Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.91 Safari/537.36";s:8:"registry";O:24:"Joomla\\Registry\\Registry":1:{s:7:"\\0\\0\\0data";O:8:"stdClass":3:{s:13:"current_theme";s:6:"orange";s:17:"current_direction";s:3:"ltr";s:17:"current_key_sufix";s:11:"_orange_ltr";}}s:4:"user";O:5:"JUser":25:{s:9:"\\0\\0\\0isRoot";b:0;s:2:"id";i:0;s:4:"name";N;s:8:"username";N;s:5:"email";N;s:8:"password";N;s:14:"password_clear";s:0:"";s:5:"block";N;s:9:"sendEmail";i:0;s:12:"registerDate";N;s:13:"lastvisitDate";N;s:10:"activation";N;s:6:"params";N;s:6:"groups";a:1:{i:0;s:1:"9";}s:5:"guest";i:1;s:13:"lastResetTime";N;s:10:"resetCount";N;s:12:"requireReset";N;s:10:"\\0\\0\\0_params";O:24:"Joomla\\Registry\\Registry":1:{s:7:"\\0\\0\\0data";O:8:"stdClass":0:{}}s:14:"\\0\\0\\0_authGroups";a:2:{i:0;i:1;i:1;i:9;}s:14:"\\0\\0\\0_authLevels";a:3:{i:0;i:1;i:1;i:1;i:2;i:5;}s:15:"\\0\\0\\0_authActions";N;s:12:"\\0\\0\\0_errorMsg";N;s:10:"\\0\\0\\0_errors";a:0:{}s:3:"aid";i:0;}s:13:"session.token";s:32:"baa1d0ecdc533856d59d4a732dd5a7c2";}', 0, ''),
('bia66jolhba2eabpl1uuhbrck1', 0, 1, '1422119347', '__default|a:8:{s:15:"session.counter";i:3;s:19:"session.timer.start";i:1422119345;s:18:"session.timer.last";i:1422119346;s:17:"session.timer.now";i:1422119347;s:22:"session.client.browser";s:140:"Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Trident/4.0; SLCC2; .NET CLR 2.0.50727; .NET CLR 3.5.30729; .NET CLR 3.0.30729; .NET4.0C)";s:8:"registry";O:24:"Joomla\\Registry\\Registry":1:{s:7:"\\0\\0\\0data";O:8:"stdClass":3:{s:13:"current_theme";s:6:"orange";s:17:"current_direction";s:3:"ltr";s:17:"current_key_sufix";s:11:"_orange_ltr";}}s:4:"user";O:5:"JUser":25:{s:9:"\\0\\0\\0isRoot";b:0;s:2:"id";i:0;s:4:"name";N;s:8:"username";N;s:5:"email";N;s:8:"password";N;s:14:"password_clear";s:0:"";s:5:"block";N;s:9:"sendEmail";i:0;s:12:"registerDate";N;s:13:"lastvisitDate";N;s:10:"activation";N;s:6:"params";N;s:6:"groups";a:1:{i:0;s:1:"9";}s:5:"guest";i:1;s:13:"lastResetTime";N;s:10:"resetCount";N;s:12:"requireReset";N;s:10:"\\0\\0\\0_params";O:24:"Joomla\\Registry\\Registry":1:{s:7:"\\0\\0\\0data";O:8:"stdClass":0:{}}s:14:"\\0\\0\\0_authGroups";a:2:{i:0;i:1;i:1;i:9;}s:14:"\\0\\0\\0_authLevels";a:3:{i:0;i:1;i:1;i:1;i:2;i:5;}s:15:"\\0\\0\\0_authActions";N;s:12:"\\0\\0\\0_errorMsg";N;s:10:"\\0\\0\\0_errors";a:0:{}s:3:"aid";i:0;}s:13:"session.token";s:32:"8117768c4acc39806e428f9d51798ae2";}', 0, ''),
('isg5dk59c0mn1h6nvfm2j03uv7', 0, 1, '1422119408', '__default|a:8:{s:15:"session.counter";i:6;s:19:"session.timer.start";i:1422119400;s:18:"session.timer.last";i:1422119407;s:17:"session.timer.now";i:1422119408;s:22:"session.client.browser";s:140:"Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Trident/4.0; SLCC2; .NET CLR 2.0.50727; .NET CLR 3.5.30729; .NET CLR 3.0.30729; .NET4.0C)";s:8:"registry";O:24:"Joomla\\Registry\\Registry":1:{s:7:"\\0\\0\\0data";O:8:"stdClass":3:{s:13:"current_theme";s:6:"orange";s:17:"current_direction";s:3:"ltr";s:17:"current_key_sufix";s:11:"_orange_ltr";}}s:4:"user";O:5:"JUser":25:{s:9:"\\0\\0\\0isRoot";b:0;s:2:"id";i:0;s:4:"name";N;s:8:"username";N;s:5:"email";N;s:8:"password";N;s:14:"password_clear";s:0:"";s:5:"block";N;s:9:"sendEmail";i:0;s:12:"registerDate";N;s:13:"lastvisitDate";N;s:10:"activation";N;s:6:"params";N;s:6:"groups";a:1:{i:0;s:1:"9";}s:5:"guest";i:1;s:13:"lastResetTime";N;s:10:"resetCount";N;s:12:"requireReset";N;s:10:"\\0\\0\\0_params";O:24:"Joomla\\Registry\\Registry":1:{s:7:"\\0\\0\\0data";O:8:"stdClass":0:{}}s:14:"\\0\\0\\0_authGroups";a:2:{i:0;i:1;i:1;i:9;}s:14:"\\0\\0\\0_authLevels";a:3:{i:0;i:1;i:1;i:1;i:2;i:5;}s:15:"\\0\\0\\0_authActions";N;s:12:"\\0\\0\\0_errorMsg";N;s:10:"\\0\\0\\0_errors";a:0:{}s:3:"aid";i:0;}s:13:"session.token";s:32:"5dfee0cfe30e0a469f087c3a1d46358d";}', 0, ''),
('r3h4p2qkfsj5io8462rbsv7aa3', 0, 1, '1422119407', '__default|a:7:{s:15:"session.counter";i:2;s:19:"session.timer.start";i:1422119401;s:18:"session.timer.last";i:1422119401;s:17:"session.timer.now";i:1422119407;s:22:"session.client.browser";s:140:"Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Trident/4.0; SLCC2; .NET CLR 2.0.50727; .NET CLR 3.5.30729; .NET CLR 3.0.30729; .NET4.0C)";s:8:"registry";O:24:"Joomla\\Registry\\Registry":1:{s:7:"\\0\\0\\0data";O:8:"stdClass":0:{}}s:4:"user";O:5:"JUser":25:{s:9:"\\0\\0\\0isRoot";N;s:2:"id";i:0;s:4:"name";N;s:8:"username";N;s:5:"email";N;s:8:"password";N;s:14:"password_clear";s:0:"";s:5:"block";N;s:9:"sendEmail";i:0;s:12:"registerDate";N;s:13:"lastvisitDate";N;s:10:"activation";N;s:6:"params";N;s:6:"groups";a:1:{i:0;s:1:"9";}s:5:"guest";i:1;s:13:"lastResetTime";N;s:10:"resetCount";N;s:12:"requireReset";N;s:10:"\\0\\0\\0_params";O:24:"Joomla\\Registry\\Registry":1:{s:7:"\\0\\0\\0data";O:8:"stdClass":0:{}}s:14:"\\0\\0\\0_authGroups";N;s:14:"\\0\\0\\0_authLevels";a:3:{i:0;i:1;i:1;i:1;i:2;i:5;}s:15:"\\0\\0\\0_authActions";N;s:12:"\\0\\0\\0_errorMsg";N;s:10:"\\0\\0\\0_errors";a:0:{}s:3:"aid";i:0;}}', 0, ''),
('sgv1tajtsaqs423pusdau806h2', 0, 1, '1422119189', '__default|a:8:{s:15:"session.counter";i:4;s:19:"session.timer.start";i:1422119089;s:18:"session.timer.last";i:1422119163;s:17:"session.timer.now";i:1422119189;s:22:"session.client.browser";s:65:"Mozilla/5.0 (Windows NT 6.1; rv:35.0) Gecko/20100101 Firefox/35.0";s:8:"registry";O:24:"Joomla\\Registry\\Registry":1:{s:7:"\\0\\0\\0data";O:8:"stdClass":3:{s:13:"current_theme";s:6:"orange";s:17:"current_direction";s:3:"ltr";s:17:"current_key_sufix";s:11:"_orange_ltr";}}s:4:"user";O:5:"JUser":25:{s:9:"\\0\\0\\0isRoot";b:0;s:2:"id";i:0;s:4:"name";N;s:8:"username";N;s:5:"email";N;s:8:"password";N;s:14:"password_clear";s:0:"";s:5:"block";N;s:9:"sendEmail";i:0;s:12:"registerDate";N;s:13:"lastvisitDate";N;s:10:"activation";N;s:6:"params";N;s:6:"groups";a:1:{i:0;s:1:"9";}s:5:"guest";i:1;s:13:"lastResetTime";N;s:10:"resetCount";N;s:12:"requireReset";N;s:10:"\\0\\0\\0_params";O:24:"Joomla\\Registry\\Registry":1:{s:7:"\\0\\0\\0data";O:8:"stdClass":0:{}}s:14:"\\0\\0\\0_authGroups";a:2:{i:0;i:1;i:1;i:9;}s:14:"\\0\\0\\0_authLevels";a:3:{i:0;i:1;i:1;i:1;i:2;i:5;}s:15:"\\0\\0\\0_authActions";N;s:12:"\\0\\0\\0_errorMsg";N;s:10:"\\0\\0\\0_errors";a:0:{}s:3:"aid";i:0;}s:13:"session.token";s:32:"dc19a10309a4407514bcfa81870bbe9c";}', 0, ''),
('svmn6qf3csg9k1ibj06pa9gri1', 0, 1, '1422119346', '__default|a:7:{s:15:"session.counter";i:5;s:19:"session.timer.start";i:1422119281;s:18:"session.timer.last";i:1422119319;s:17:"session.timer.now";i:1422119346;s:22:"session.client.browser";s:140:"Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Trident/4.0; SLCC2; .NET CLR 2.0.50727; .NET CLR 3.5.30729; .NET CLR 3.0.30729; .NET4.0C)";s:8:"registry";O:24:"Joomla\\Registry\\Registry":1:{s:7:"\\0\\0\\0data";O:8:"stdClass":0:{}}s:4:"user";O:5:"JUser":25:{s:9:"\\0\\0\\0isRoot";N;s:2:"id";i:0;s:4:"name";N;s:8:"username";N;s:5:"email";N;s:8:"password";N;s:14:"password_clear";s:0:"";s:5:"block";N;s:9:"sendEmail";i:0;s:12:"registerDate";N;s:13:"lastvisitDate";N;s:10:"activation";N;s:6:"params";N;s:6:"groups";a:1:{i:0;s:1:"9";}s:5:"guest";i:1;s:13:"lastResetTime";N;s:10:"resetCount";N;s:12:"requireReset";N;s:10:"\\0\\0\\0_params";O:24:"Joomla\\Registry\\Registry":1:{s:7:"\\0\\0\\0data";O:8:"stdClass":0:{}}s:14:"\\0\\0\\0_authGroups";N;s:14:"\\0\\0\\0_authLevels";a:3:{i:0;i:1;i:1;i:1;i:2;i:5;}s:15:"\\0\\0\\0_authActions";N;s:12:"\\0\\0\\0_errorMsg";N;s:10:"\\0\\0\\0_errors";a:0:{}s:3:"aid";i:0;}}', 0, ''),
('tbio2tmpiuv601bav5hq4db8u7', 0, 1, '1422119319', '__default|a:8:{s:15:"session.counter";i:9;s:19:"session.timer.start";i:1422119223;s:18:"session.timer.last";i:1422119319;s:17:"session.timer.now";i:1422119319;s:22:"session.client.browser";s:140:"Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Trident/4.0; SLCC2; .NET CLR 2.0.50727; .NET CLR 3.5.30729; .NET CLR 3.0.30729; .NET4.0C)";s:8:"registry";O:24:"Joomla\\Registry\\Registry":1:{s:7:"\\0\\0\\0data";O:8:"stdClass":3:{s:13:"current_theme";s:6:"orange";s:17:"current_direction";s:3:"ltr";s:17:"current_key_sufix";s:11:"_orange_ltr";}}s:4:"user";O:5:"JUser":25:{s:9:"\\0\\0\\0isRoot";b:0;s:2:"id";i:0;s:4:"name";N;s:8:"username";N;s:5:"email";N;s:8:"password";N;s:14:"password_clear";s:0:"";s:5:"block";N;s:9:"sendEmail";i:0;s:12:"registerDate";N;s:13:"lastvisitDate";N;s:10:"activation";N;s:6:"params";N;s:6:"groups";a:1:{i:0;s:1:"9";}s:5:"guest";i:1;s:13:"lastResetTime";N;s:10:"resetCount";N;s:12:"requireReset";N;s:10:"\\0\\0\\0_params";O:24:"Joomla\\Registry\\Registry":1:{s:7:"\\0\\0\\0data";O:8:"stdClass":0:{}}s:14:"\\0\\0\\0_authGroups";a:2:{i:0;i:1;i:1;i:9;}s:14:"\\0\\0\\0_authLevels";a:3:{i:0;i:1;i:1;i:1;i:2;i:5;}s:15:"\\0\\0\\0_authActions";N;s:12:"\\0\\0\\0_errorMsg";N;s:10:"\\0\\0\\0_errors";a:0:{}s:3:"aid";i:0;}s:13:"session.token";s:32:"be6960cf7fb9861a56092706ab23dc52";}', 0, '');

-- --------------------------------------------------------

--
-- Estrutura da tabela `iwk5c_tags`
--

CREATE TABLE IF NOT EXISTS `iwk5c_tags` (
`id` int(10) unsigned NOT NULL,
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `lft` int(11) NOT NULL DEFAULT '0',
  `rgt` int(11) NOT NULL DEFAULT '0',
  `level` int(10) unsigned NOT NULL DEFAULT '0',
  `path` varchar(255) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `note` varchar(255) NOT NULL DEFAULT '',
  `description` mediumtext NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `metadesc` varchar(1024) NOT NULL COMMENT 'The meta description for the page.',
  `metakey` varchar(1024) NOT NULL COMMENT 'The meta keywords for the page.',
  `metadata` varchar(2048) NOT NULL COMMENT 'JSON encoded metadata properties.',
  `created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `images` text NOT NULL,
  `urls` text NOT NULL,
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `language` char(7) NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `iwk5c_tags`
--

INSERT INTO `iwk5c_tags` (`id`, `parent_id`, `lft`, `rgt`, `level`, `path`, `title`, `alias`, `note`, `description`, `published`, `checked_out`, `checked_out_time`, `access`, `params`, `metadesc`, `metakey`, `metadata`, `created_user_id`, `created_time`, `created_by_alias`, `modified_user_id`, `modified_time`, `images`, `urls`, `hits`, `language`, `version`, `publish_up`, `publish_down`) VALUES
(1, 0, 0, 1, 0, '', 'ROOT', 'root', '', '', 1, 0, '0000-00-00 00:00:00', 1, '', '', '', '', 0, '2011-01-01 00:00:01', '', 0, '0000-00-00 00:00:00', '', '', 0, '*', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Estrutura da tabela `iwk5c_template_styles`
--

CREATE TABLE IF NOT EXISTS `iwk5c_template_styles` (
`id` int(10) unsigned NOT NULL,
  `template` varchar(50) NOT NULL DEFAULT '',
  `client_id` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `home` char(7) NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `params` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `iwk5c_template_styles`
--

INSERT INTO `iwk5c_template_styles` (`id`, `template`, `client_id`, `home`, `title`, `params`) VALUES
(4, 'beez3', 0, '0', 'Beez3 - Default', '{"wrapperSmall":"53","wrapperLarge":"72","logo":"images\\/joomla_black.gif","sitetitle":"Joomla!","sitedescription":"Open Source Content Management","navposition":"left","templatecolor":"personal","html5":"0"}'),
(5, 'hathor', 1, '0', 'Hathor - Default', '{"showSiteName":"0","colourChoice":"","boldText":"0"}'),
(7, 'protostar', 0, '0', 'protostar - Default', '{"templateColor":"","logoFile":"","googleFont":"1","googleFontName":"Open+Sans","fluidContainer":"0"}'),
(8, 'isis', 1, '1', 'isis - Default', '{"templateColor":"","logoFile":""}'),
(9, 'frontend', 0, '0', 'frontend - Default', '{}'),
(11, 'jsn_dome_free', 0, '0', 'JSN_Dome_FREE - Default', '{"enableColoredLogo":"0","logoLink":"","logoSlogan":"","templateWidth":"narrow","narrowWidth":"1100px","wideWidth":"900px","floatWidth":"100%","leftWidth":"23","rightWidth":"23","innerleftWidth":"23","innerrightWidth":"23","lspAlignment":"middle","rspAlignment":"middle","showFrontpage":"1"}'),
(12, 't3_blank', 0, '1', 'CTB Layout', '{"t3_template":"1","devmode":"1","themermode":"1","responsive":"0","build_rtl":"0","t3-assets":"t3-assets","t3-rmvlogo":"0","minify":"0","minify_js":"0","minify_js_tool":"jsmin","minify_exclude":"","link_titles":"","theme":"orange","logotype":"image","sitename":"CTB","slogan":"","logoimage":"images\\/logo.png","enable_logoimage_sm":"0","logoimage_sm":"","mainlayout":"default-joomla-3.x","navigation_trigger":"hover","navigation_collapse_offcanvas":"1","navigation_collapse_showsub":"0","navigation_type":"megamenu","navigation_animation":"slide","navigation_animation_duration":"400","mm_type":"mainmenu","mm_config":"{\\"mainmenu\\":{\\"item-108\\":{\\"sub\\":{\\"rows\\":[[{\\"item\\":160,\\"width\\":12}]]}},\\"item-109\\":{\\"sub\\":{\\"rows\\":[[{\\"item\\":110,\\"width\\":12}]]}}}}","snippet_open_head":"","snippet_close_head":"","snippet_open_body":"","snippet_close_body":"","snippet_debug":"0"}'),
(13, 't3_bs3_blank', 0, '0', 't3_bs3_blank - Default', '{"t3_template":"1","devmode":"0","themermode":"1","legacy_css":"0","responsive":"0","non_responsive_width":"970px","build_rtl":"0","t3-assets":"t3-assets","t3-rmvlogo":"1","minify":"0","minify_js":"0","minify_js_tool":"jsmin","minify_exclude":"","link_titles":"","theme":"","logotype":"image","sitename":"","slogan":"","logoimage":"","enable_logoimage_sm":"0","logoimage_sm":"","mainlayout":"default-content-left","mm_type":"mainmenu","navigation_trigger":"hover","navigation_type":"megamenu","navigation_animation":"","navigation_animation_duration":"400","mm_config":"","navigation_collapse_enable":"1","addon_offcanvas_enable":"1","addon_offcanvas_effect":"off-canvas-effect-4","snippet_open_head":"","snippet_close_head":"","snippet_open_body":"","snippet_close_body":"","snippet_debug":"0"}');

-- --------------------------------------------------------

--
-- Estrutura da tabela `iwk5c_ucm_base`
--

CREATE TABLE IF NOT EXISTS `iwk5c_ucm_base` (
  `ucm_id` int(10) unsigned NOT NULL,
  `ucm_item_id` int(10) NOT NULL,
  `ucm_type_id` int(11) NOT NULL,
  `ucm_language_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `iwk5c_ucm_content`
--

CREATE TABLE IF NOT EXISTS `iwk5c_ucm_content` (
`core_content_id` int(10) unsigned NOT NULL,
  `core_type_alias` varchar(255) NOT NULL DEFAULT '' COMMENT 'FK to the content types table',
  `core_title` varchar(255) NOT NULL,
  `core_alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `core_body` mediumtext NOT NULL,
  `core_state` tinyint(1) NOT NULL DEFAULT '0',
  `core_checked_out_time` varchar(255) NOT NULL DEFAULT '',
  `core_checked_out_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `core_access` int(10) unsigned NOT NULL DEFAULT '0',
  `core_params` text NOT NULL,
  `core_featured` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `core_metadata` varchar(2048) NOT NULL COMMENT 'JSON encoded metadata properties.',
  `core_created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `core_created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `core_created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_modified_user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Most recent user that modified',
  `core_modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_language` char(7) NOT NULL,
  `core_publish_up` datetime NOT NULL,
  `core_publish_down` datetime NOT NULL,
  `core_content_item_id` int(10) unsigned DEFAULT NULL COMMENT 'ID from the individual type table',
  `asset_id` int(10) unsigned DEFAULT NULL COMMENT 'FK to the #__assets table.',
  `core_images` text NOT NULL,
  `core_urls` text NOT NULL,
  `core_hits` int(10) unsigned NOT NULL DEFAULT '0',
  `core_version` int(10) unsigned NOT NULL DEFAULT '1',
  `core_ordering` int(11) NOT NULL DEFAULT '0',
  `core_metakey` text NOT NULL,
  `core_metadesc` text NOT NULL,
  `core_catid` int(10) unsigned NOT NULL DEFAULT '0',
  `core_xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `core_type_id` int(10) unsigned DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Contains core content data in name spaced fields';

-- --------------------------------------------------------

--
-- Estrutura da tabela `iwk5c_ucm_history`
--

CREATE TABLE IF NOT EXISTS `iwk5c_ucm_history` (
`version_id` int(10) unsigned NOT NULL,
  `ucm_item_id` int(10) unsigned NOT NULL,
  `ucm_type_id` int(10) unsigned NOT NULL,
  `version_note` varchar(255) NOT NULL DEFAULT '' COMMENT 'Optional version name',
  `save_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `editor_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `character_count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Number of characters in this version.',
  `sha1_hash` varchar(50) NOT NULL DEFAULT '' COMMENT 'SHA1 hash of the version_data column.',
  `version_data` mediumtext NOT NULL COMMENT 'json-encoded string of version data',
  `keep_forever` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0=auto delete; 1=keep'
) ENGINE=InnoDB AUTO_INCREMENT=91 DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `iwk5c_ucm_history`
--

INSERT INTO `iwk5c_ucm_history` (`version_id`, `ucm_item_id`, `ucm_type_id`, `version_note`, `save_date`, `editor_user_id`, `character_count`, `sha1_hash`, `version_data`, `keep_forever`) VALUES
(1, 1, 1, '', '2014-06-28 19:06:55', 303, 1691, 'aefbd33a94f252fc0c728c1ee479e6dcc6c0ddbb', '{"id":1,"asset_id":55,"title":"bkablabla","alias":"bkablabla","introtext":"<p>gdyuasgduhasgdai<\\/p>\\r\\n<p>sdbashdgsaudguas<\\/p>","fulltext":"","state":1,"catid":"2","created":"2014-06-28 19:06:55","created_by":"303","created_by_alias":"","modified":"","modified_by":null,"checked_out":null,"checked_out_time":null,"publish_up":"2014-06-28 19:06:55","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":1,"ordering":null,"metakey":"","metadesc":"","access":"1","hits":null,"metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(2, 2, 1, '', '2014-06-29 16:09:33', 303, 2162, 'c6a75ec5edc08a5daba4c0db132a2293c2ec60ee', '{"id":2,"asset_id":63,"title":"Sobre a Companhia de Transporte do Estado da Bahia ","alias":"sobre-a-companhia-de-transporte-do-estado-da-bahia","introtext":"<p>A Companhia de Transportes do Estado da Bahia(CTB) \\u00e9 uma empresa estatal do Estado da Bahia e est\\u00e1 subordinada \\u00e0 Secretaria de Desenvolvimento Urbano(SEDUR). O Servi\\u00e7o de transportes de passageiros sobre os trilhos de compet\\u00eancia estadual \\u00e9 o foco do objetivo da CTB. Fundada em 1999, a sua sede situa-se no bairro da Cal\\u00e7ada na cidade de Salvador e \\u00e9 presidido atualmente por Carlos Martins.<\\/p>","fulltext":"","state":1,"catid":"2","created":"2014-06-29 16:09:33","created_by":"303","created_by_alias":"","modified":"","modified_by":null,"checked_out":null,"checked_out_time":null,"publish_up":"2014-06-29 16:09:33","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":1,"ordering":null,"metakey":"","metadesc":"","access":"1","hits":null,"metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(3, 3, 1, '', '2014-06-29 16:10:18', 303, 2925, '5163ff531871f906940a754241674eb63008d9b0', '{"id":3,"asset_id":64,"title":"Nossa Hist\\u00f3ria","alias":"nossa-historia","introtext":"<p style=\\"text-align: justify;\\"><span style=\\"text-align: justify; line-height: 1.5;\\">O Sistema de Trens Urbanos de Salvador est\\u00e1 em opera\\u00e7\\u00e3o desde junho de 1860, sendo o quinto mais antigo do Brasil. De 1860 a 1911 foi operado por concession\\u00e1rio ingl\\u00eas, de 1911 a 1935 foi operado por concession\\u00e1rio franc\\u00eas. A partir de 1935 foi operada por empresa p\\u00fablica nacional e encampada pela RFFSA em 1957. Em 1988 passou para gest\\u00e3o e opera\\u00e7\\u00e3o da CBTU.\\u00a0<\\/span><span style=\\"line-height: 1.5;\\">Atrav\\u00e9s da assinatura de um conv\\u00eanio de municipaliza\\u00e7\\u00e3o firmado em 30 de novembro de 2005, o munic\\u00edpio sob a gest\\u00e3o do Prefeito Jo\\u00e3o Henrique Carneiro (2004-2012), assume o Sistema de Trens Urbanos da cidade, surgindo ent\\u00e3o a Companhia de Transportes de Salvador. A CTS ent\\u00e3o deu in\\u00edcio a um processo de revitaliza\\u00e7\\u00e3o e moderniza\\u00e7\\u00e3o, proporcionando, dessa maneira, conforto, seguran\\u00e7a e bem estar ao usu\\u00e1rio.\\u00a0<\\/span><span style=\\"text-align: justify; line-height: 1.5;\\">No ano de 2013, a CTS saiu do responsabilidade da prefeitura para pertencer ao estado, se tornando a CTB(Companhia de Transportes do Estado da Bahia)<\\/span><\\/p>","fulltext":"","state":1,"catid":"2","created":"2014-06-29 16:10:18","created_by":"303","created_by_alias":"","modified":"","modified_by":null,"checked_out":null,"checked_out_time":null,"publish_up":"2014-06-29 16:10:18","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":1,"ordering":null,"metakey":"","metadesc":"","access":"1","hits":null,"metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(4, 4, 1, '', '2014-06-29 16:14:18', 303, 5016, '602a19913e7163d4788d9a1cdee709aeba3f79f3', '{"id":4,"asset_id":65,"title":"Miss\\u00e3o e Vis\\u00e3o","alias":"missao-e-visao","introtext":"<p style=\\"text-align: justify;\\"><span style=\\"color: #006699;\\"><strong><span style=\\"font-size: 12pt;\\">1. Nossa principal miss\\u00e3o \\u00e9:<\\/span><\\/strong><\\/span><\\/p>\\r\\n<p style=\\"text-align: justify;\\"><br \\/>Desenvolver a\\u00e7\\u00f5es de planejamento e constru\\u00e7\\u00e3o do sitema metroferrovi\\u00e1rio da cidade de Salvador e regi\\u00f5oes metropolitana com vistas a prover um transporte p\\u00fablico que atenda aos anseios e demandas da popula\\u00e7\\u00e3o por melhorias na mobilidade urbana, nos aspectos de pontualidade, rapidez, conforto, economia, confiabilidade, seguran\\u00e7a e sustentabilidade ambiental.\\u00a0<\\/p>\\r\\n<div style=\\"text-align: justify;\\">\\u00a0<\\/div>\\r\\n<div style=\\"text-align: justify;\\">\\u00a0<\\/div>\\r\\n<div style=\\"text-align: justify;\\">\\u00a0<\\/div>\\r\\n<p style=\\"text-align: justify;\\">\\u00a0<\\/p>\\r\\n<p style=\\"text-align: justify;\\"><span style=\\"color: #006699;\\"><strong><span style=\\"font-size: 12pt;\\">2. A nossa vis\\u00e3o:<\\/span><\\/strong><\\/span><\\/p>\\r\\n<div style=\\"text-align: justify;\\">\\u00a0<\\/div>\\r\\n<p style=\\"text-align: justify;\\">A CTB tem como finalidade ser uma das 5 melhores do setor Metroferrovi\\u00e1rio do Brasil em qualidade de servi\\u00e7os, opera\\u00e7\\u00e3o e gest\\u00e3o.<\\/p>\\r\\n<div style=\\"text-align: justify;\\">\\u00a0<\\/div>\\r\\n<div style=\\"text-align: justify;\\">\\u00a0<\\/div>\\r\\n<div style=\\"text-align: justify;\\">\\u00a0<\\/div>\\r\\n<p style=\\"text-align: justify;\\">\\u00a0<\\/p>\\r\\n<p style=\\"text-align: justify;\\"><span style=\\"color: #006699;\\"><strong><span style=\\"font-size: 12pt;\\">3. Nossos principais valores:\\u00a0<\\/span><\\/strong><\\/span><\\/p>\\r\\n<ul style=\\"list-style-type: square; text-align: justify;\\">\\r\\n<li><span style=\\"line-height: 1.5;\\">Respeito \\u00e0 diversidade<\\/span><\\/li>\\r\\n<li><span style=\\"line-height: 1.5;\\">Uso eficiente dos recursos<\\/span><\\/li>\\r\\n<li><span style=\\"line-height: 1.5;\\">Integra\\u00e7\\u00e3o com a Comunidade<\\/span><\\/li>\\r\\n<li><span style=\\"line-height: 1.5;\\">\\u00c9tica e transpar\\u00eancia<\\/span><\\/li>\\r\\n<\\/ul>\\r\\n<p style=\\"text-align: justify;\\">\\u00a0<\\/p>\\r\\n<p style=\\"text-align: justify;\\">\\u00a0<\\/p>\\r\\n<p style=\\"text-align: justify;\\">\\u00a0<\\/p>\\r\\n<p style=\\"text-align: justify;\\">\\u00a0<\\/p>\\r\\n<p style=\\"text-align: justify;\\">\\u00a0<\\/p>\\r\\n<p style=\\"text-align: justify;\\">\\u00a0<\\/p>\\r\\n<p style=\\"text-align: justify;\\">\\u00a0<\\/p>\\r\\n<p style=\\"text-align: justify;\\">\\u00a0<\\/p>\\r\\n<p style=\\"text-align: justify;\\">\\u00a0<\\/p>\\r\\n<p style=\\"text-align: justify;\\">\\u00a0<\\/p>\\r\\n<p style=\\"text-align: justify;\\">\\u00a0<\\/p>\\r\\n<p style=\\"text-align: justify;\\">\\u00a0<\\/p>\\r\\n<p style=\\"text-align: justify;\\">\\u00a0<\\/p>\\r\\n<p style=\\"text-align: justify;\\">\\u00a0<\\/p>\\r\\n<p style=\\"text-align: justify;\\">\\u00a0<\\/p>\\r\\n<p style=\\"text-align: justify;\\">\\u00a0<\\/p>\\r\\n<p style=\\"text-align: justify;\\">\\u00a0<\\/p>\\r\\n<p style=\\"text-align: justify;\\">\\u00a0<\\/p>\\r\\n<p style=\\"text-align: justify;\\">\\u00a0<\\/p>\\r\\n<p style=\\"text-align: justify;\\">\\u00a0<\\/p>\\r\\n<p style=\\"text-align: justify;\\">\\u00a0<\\/p>\\r\\n<p style=\\"text-align: justify;\\">\\u00a0<\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p><span style=\\"color: #333333; font-family: Verdana, Geneva, Arial, Helvetica, sans-serif; line-height: normal;\\">\\u00a0<\\/span><\\/p>","fulltext":"","state":1,"catid":"2","created":"2014-06-29 16:14:18","created_by":"303","created_by_alias":"","modified":"","modified_by":null,"checked_out":null,"checked_out_time":null,"publish_up":"2014-06-29 16:14:18","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":1,"ordering":null,"metakey":"","metadesc":"","access":"1","hits":null,"metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(5, 5, 1, '', '2014-06-29 16:18:03', 303, 5761, 'cc5bc5c0d6b97fb2c9ac8650149e6633aa222e8a', '{"id":5,"asset_id":66,"title":"Linha do Tempo","alias":"linha-do-tempo","introtext":"<p class=\\"blogcalendar\\" style=\\"text-align: justify;\\">A Esta\\u00e7\\u00e3o da Cal\\u00e7ada \\u00e9 a principal edifica\\u00e7\\u00e3o da Estrada de Ferro Bahia and San Francisco Railway, por estar localizada na Capital, e por ser a mais importante esta\\u00e7\\u00e3o de quase todas as ferrovias que viriam a ser constru\\u00eddas na Bahia. \\u00c9 um exemplar monumental da arquitetura ecl\\u00e9tica, toda constru\\u00edda originalmente de ferro desde a sua infraestrutura, como as vigas baldrames, at\\u00e9 a superestrutura, tais como pilares, vigamento da superestrutura, escadas e estruturas de cobertura com clarab\\u00f3ias de ferro. A ilumina\\u00e7\\u00e3o dos espa\\u00e7os internos \\u00e9 uma caracter\\u00edstica marcante da arquitetura ecl\\u00e9tica, fazendo um contraponto com os ambientes sombrios da arquitetura portuguesa tradicional. As paredes de veda\\u00e7\\u00e3o dos espa\\u00e7os, em pain\\u00e9is pr\\u00e9-moldados e as pe\\u00e7as sanit\\u00e1rias, gradis, telhas e at\\u00e9 os ornatos em ferro forjado ou fundido.<\\/p>\\r\\n<p class=\\"blogcalendar\\">\\u00a0<\\/p>\\r\\n<p class=\\"blogcalendar\\"><img style=\\"display: block; margin-left: auto; margin-right: auto;\\" src=\\"http:\\/\\/homologa.ctb.ba.gov.br\\/images\\/stories\\/calcada_old2.jpg\\" alt=\\"calcada_old2\\" width=\\"400\\" height=\\"303\\" \\/><\\/p>\\r\\n<p class=\\"blogcalendar\\">\\u00a0<\\/p>\\r\\n<p class=\\"blogcalendar\\" style=\\"text-align: justify;\\">A cobertura, calhas, cornijas gradis das varandas, m\\u00edsulas e ornatos reproduzem os s\\u00edmbolos do progresso das ferrovias, como a roda alada, tudo em ferro forjado ou fundido. O assoalho e o forro eram de madeira. O front\\u00e3o neocl\\u00e1ssico do coroamento da fachada \\u00e9 um detalhe construtivo muito utilizado nos edif\\u00edcios p\\u00fablicos do per\\u00edodo ecl\\u00e9tico. Nesta esta\\u00e7\\u00e3o, reflete-se o di\\u00e1logo entre a arte apresentada no tratamento art\\u00edstico do corpo principal da edifica\\u00e7\\u00e3o, a plasticidade dos ornatos reproduzidos em escala, apresentados em cat\\u00e1logos das f\\u00e1bricas inglesas e a tecnologia apresentada na capacidade da estrutura met\\u00e1lica em vencer o v\\u00e3o avantajado da esta\\u00e7\\u00e3o de passageiros. <br \\/> A tecnologia moderna, traduzida na estrutura met\\u00e1lica da cobertura, permite um v\\u00e3o livre de aproximadamente trinta metros de largura por noventa metros de profundidade, proporcionando um espa\\u00e7o livre necess\\u00e1rio ao grande fluxo de passageiros que se esperava. <br \\/> Essa esta\\u00e7\\u00e3o foi a primeira constru\\u00edda com projeto ingl\\u00eas e todas as pe\\u00e7as em ferro chegaram \\u00e0 Bahia importadas da Inglaterra para serem montadas no local, como est\\u00e1 registrado em documenta\\u00e7\\u00e3o oficial da Prov\\u00edncia da Bahia. O projeto foi elaborado em Londres por Jonh Watson, que foi tamb\\u00e9m o empreiteiro da constru\\u00e7\\u00e3o da estrada com supervis\\u00e3o do engenheiro Charles Vignoles, sendo engenheiro-chefe, Hutton Vignoles. <br \\/> <br \\/> Depois que a linha, no trecho correspondente \\u00e0 primeira se\\u00e7\\u00e3o, entrou em tr\\u00e1fego a partir de 28 de junho de 1860, cumprindo o prazo pactuado com o Governo e a Companhia da estrada, o engenheiro fiscal do Governo, Firmo Jos\\u00e9 de Melo, exigia uma manuten\\u00e7\\u00e3o respons\\u00e1vel da estrada pela companhia inglesa. <br \\/> <br \\/> Al\\u00e9m da via permanente, as principais constru\\u00e7\\u00f5es dessa se\\u00e7\\u00e3o s\\u00e3o a Esta\\u00e7\\u00e3o da Cal\\u00e7ada, o Viaduto de Itapagipe, o t\\u00fanel de Periperi, por serem importantes obras de engenharia, e a Oficina de Periperi, pelo papel social desempenhado, empregando brasileiros livres naquela oficina. <br \\/> Em 1860, a Esta\\u00e7\\u00e3o da Cal\\u00e7ada foi aberta com o nome de Jequitaia. A esta\\u00e7\\u00e3o foi tamb\\u00e9m chamada de Ba\\u00eda e atualmente Esta\\u00e7\\u00e3o da Cal\\u00e7ada. A esta\\u00e7\\u00e3o sempre esteve no local de origem, desde a sua inaugura\\u00e7\\u00e3o. Jequitaia hoje \\u00e9 o nome da avenida que, saindo da regi\\u00e3o do porto, chega a Cal\\u00e7ada, nome do bairro onde se localiza a esta\\u00e7\\u00e3o.<\\/p>","fulltext":"","state":1,"catid":"2","created":"2014-06-29 16:18:03","created_by":"303","created_by_alias":"","modified":"","modified_by":null,"checked_out":null,"checked_out_time":null,"publish_up":"2014-06-29 16:18:03","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":1,"ordering":null,"metakey":"","metadesc":"","access":"1","hits":null,"metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(6, 2, 1, '', '2014-06-29 16:50:46', 303, 2200, 'd74702ef6398276f25fa04087020e93750c9bd92', '{"id":2,"asset_id":"63","title":"Sobre a Companhia de Transporte do Estado da Bahia ","alias":"sobre-a-companhia-de-transporte-do-estado-da-bahia","introtext":"<p>A Companhia de Transportes do Estado da Bahia(CTB) \\u00e9 uma empresa estatal do Estado da Bahia e est\\u00e1 subordinada \\u00e0 Secretaria de Desenvolvimento Urbano(SEDUR). O Servi\\u00e7o de transportes de passageiros sobre os trilhos de compet\\u00eancia estadual \\u00e9 o foco do objetivo da CTB. Fundada em 1999, a sua sede situa-se no bairro da Cal\\u00e7ada na cidade de Salvador e \\u00e9 presidido atualmente por Carlos Martins.<\\/p>","fulltext":"","state":1,"catid":"2","created":"2014-06-29 16:09:33","created_by":"303","created_by_alias":"","modified":"2014-06-29 16:50:46","modified_by":"303","checked_out":"303","checked_out_time":"2014-06-29 16:50:26","publish_up":"2014-06-29 16:09:33","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":2,"ordering":"3","metakey":"","metadesc":"","access":"1","hits":"9","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"1","language":"*","xreference":""}', 0),
(7, 2, 1, '', '2014-06-29 16:54:10', 303, 2202, 'c525a38caea069c19ea7e659d44e6bafd6c48115', '{"id":2,"asset_id":"63","title":"Sobre a Companhia de Transporte do Estado da Bahia ","alias":"sobre-a-companhia-de-transporte-do-estado-da-bahia","introtext":"<p>A Companhia de Transportes do Estado da Bahia(CTB) \\u00e9 uma empresa estatal do Estado da Bahia e est\\u00e1 subordinada \\u00e0 Secretaria de Desenvolvimento Urbano(SEDUR). O Servi\\u00e7o de transportes de passageiros sobre os trilhos de compet\\u00eancia estadual \\u00e9 o foco do objetivo da CTB. Fundada em 1999, a sua sede situa-se no bairro da Cal\\u00e7ada na cidade de Salvador e \\u00e9 presidido atualmente por Carlos Martins.<\\/p>","fulltext":"","state":1,"catid":"2","created":"2014-06-29 16:09:33","created_by":"303","created_by_alias":"","modified":"2014-06-29 16:54:10","modified_by":"303","checked_out":"303","checked_out_time":"2014-06-29 16:50:46","publish_up":"2014-06-29 16:09:33","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"0\\",\\"show_email_icon\\":\\"0\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":3,"ordering":"3","metakey":"","metadesc":"","access":"1","hits":"9","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"1","language":"*","xreference":""}', 0),
(8, 2, 1, '', '2014-06-29 16:55:18', 303, 2203, '11f508e78750064a823d90e898576320b4bb4be7', '{"id":2,"asset_id":"63","title":"Sobre a Companhia de Transporte do Estado da Bahia ","alias":"sobre-a-companhia-de-transporte-do-estado-da-bahia","introtext":"<p>A Companhia de Transportes do Estado da Bahia(CTB) \\u00e9 uma empresa estatal do Estado da Bahia e est\\u00e1 subordinada \\u00e0 Secretaria de Desenvolvimento Urbano(SEDUR). O Servi\\u00e7o de transportes de passageiros sobre os trilhos de compet\\u00eancia estadual \\u00e9 o foco do objetivo da CTB. Fundada em 1999, a sua sede situa-se no bairro da Cal\\u00e7ada na cidade de Salvador e \\u00e9 presidido atualmente por Carlos Martins.<\\/p>","fulltext":"","state":1,"catid":"2","created":"2014-06-29 16:09:33","created_by":"303","created_by_alias":"","modified":"2014-06-29 16:55:18","modified_by":"303","checked_out":"303","checked_out_time":"2014-06-29 16:54:10","publish_up":"2014-06-29 16:09:33","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"0\\",\\"show_print_icon\\":\\"0\\",\\"show_email_icon\\":\\"0\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":4,"ordering":"3","metakey":"","metadesc":"","access":"1","hits":"9","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"1","language":"*","xreference":""}', 0),
(9, 2, 1, '', '2014-06-29 17:10:33', 303, 2219, '3317dadee425c41f8e3f80d3c6f73ffb7ef1a827', '{"id":2,"asset_id":"63","title":"Sobre a Companhia de Transporte do Estado da Bahia ","alias":"sobre-a-companhia-de-transporte-do-estado-da-bahia","introtext":"<p>A Companhia de Transportes do Estado da Bahia(CTB) \\u00e9 uma empresa estatal do Estado da Bahia e est\\u00e1 subordinada \\u00e0 Secretaria de Desenvolvimento Urbano(SEDUR). O Servi\\u00e7o de transportes de passageiros sobre os trilhos de compet\\u00eancia estadual \\u00e9 o foco do objetivo da CTB. Fundada em 1999, a sua sede situa-se no bairro da Cal\\u00e7ada na cidade de Salvador e \\u00e9 presidido atualmente por Carlos Martins.<\\/p>","fulltext":"","state":1,"catid":"2","created":"2014-06-29 16:09:33","created_by":"303","created_by_alias":"","modified":"2014-06-29 17:10:33","modified_by":"303","checked_out":"303","checked_out_time":"2014-06-29 17:09:32","publish_up":"2014-06-29 16:09:33","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"0\\",\\"show_tags\\":\\"0\\",\\"show_intro\\":\\"0\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"0\\",\\"link_category\\":\\"0\\",\\"show_parent_category\\":\\"0\\",\\"link_parent_category\\":\\"0\\",\\"show_author\\":\\"0\\",\\"link_author\\":\\"0\\",\\"show_create_date\\":\\"0\\",\\"show_modify_date\\":\\"0\\",\\"show_publish_date\\":\\"0\\",\\"show_item_navigation\\":\\"0\\",\\"show_icons\\":\\"0\\",\\"show_print_icon\\":\\"0\\",\\"show_email_icon\\":\\"0\\",\\"show_vote\\":\\"0\\",\\"show_hits\\":\\"0\\",\\"show_noauth\\":\\"0\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":5,"ordering":"3","metakey":"","metadesc":"","access":"1","hits":"9","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"1","language":"*","xreference":""}', 0),
(10, 2, 1, '', '2014-06-29 17:11:16', 303, 2223, '6a6787cb58f59a5d05103648b5ab8c165f34e869', '{"id":2,"asset_id":"63","title":"Sobre a Companhia de Transporte do Estado da Bahia ","alias":"sobre-a-companhia-de-transporte-do-estado-da-bahia","introtext":"<p>A Companhia de Transportes do Estado da Bahia(CTB) \\u00e9 uma empresa estatal do Estado da Bahia e est\\u00e1 subordinada \\u00e0 Secretaria de Desenvolvimento Urbano(SEDUR). O Servi\\u00e7o de transportes de passageiros sobre os trilhos de compet\\u00eancia estadual \\u00e9 o foco do objetivo da CTB. Fundada em 1999, a sua sede situa-se no bairro da Cal\\u00e7ada na cidade de Salvador e \\u00e9 presidido atualmente por Carlos Martins.<\\/p>","fulltext":"","state":1,"catid":"2","created":"2014-06-29 16:09:33","created_by":"303","created_by_alias":"","modified":"2014-06-29 17:11:16","modified_by":"303","checked_out":"303","checked_out_time":"2014-06-29 17:10:33","publish_up":"2014-06-29 16:09:33","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"0\\",\\"show_tags\\":\\"0\\",\\"show_intro\\":\\"0\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"0\\",\\"link_category\\":\\"0\\",\\"show_parent_category\\":\\"0\\",\\"link_parent_category\\":\\"0\\",\\"show_author\\":\\"0\\",\\"link_author\\":\\"0\\",\\"show_create_date\\":\\"0\\",\\"show_modify_date\\":\\"0\\",\\"show_publish_date\\":\\"0\\",\\"show_item_navigation\\":\\"0\\",\\"show_icons\\":\\"0\\",\\"show_print_icon\\":\\"0\\",\\"show_email_icon\\":\\"0\\",\\"show_vote\\":\\"0\\",\\"show_hits\\":\\"0\\",\\"show_noauth\\":\\"0\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"0\\",\\"show_article_options\\":\\"0\\",\\"show_urls_images_backend\\":\\"0\\",\\"show_urls_images_frontend\\":\\"0\\"}","version":6,"ordering":"3","metakey":"","metadesc":"","access":"1","hits":"9","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"1","language":"*","xreference":""}', 0),
(11, 2, 1, '', '2014-06-29 19:54:49', 303, 2151, 'd0c98b2c75d0ce9df7c2e59df878dcf58fae7249', '{"id":2,"asset_id":"63","title":"Sobre a Companhia de Transporte do Estado da Bahia ","alias":"sobre-a-companhia-de-transporte-do-estado-da-bahia","introtext":"<p>A Companhia de Transportes do Estado da Bahia(CTB) \\u00e9 uma empresa estatal do Estado da Bahia e est\\u00e1 subordinada \\u00e0 Secretaria de Desenvolvimento Urbano(SEDUR). O Servi\\u00e7o de transportes de passageiros sobre os trilhos de compet\\u00eancia estadual \\u00e9 o foco do objetivo da CTB. Fundada em 1999, a sua sede situa-se no bairro da Cal\\u00e7ada na cidade de Salvador e \\u00e9 presidido atualmente por Carlos Martins.<\\/p>","fulltext":"","state":1,"catid":"2","created":"2014-06-29 16:09:33","created_by":"303","created_by_alias":"","modified":"2014-06-29 19:54:49","modified_by":"303","checked_out":"303","checked_out_time":"2014-06-29 19:53:19","publish_up":"2014-06-29 16:09:33","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"0\\",\\"show_intro\\":\\"0\\",\\"show_category\\":\\"0\\",\\"link_category\\":\\"0\\",\\"show_parent_category\\":\\"0\\",\\"link_parent_category\\":\\"0\\",\\"show_author\\":\\"0\\",\\"link_author\\":\\"0\\",\\"show_create_date\\":\\"0\\",\\"show_modify_date\\":\\"0\\",\\"show_publish_date\\":\\"0\\",\\"show_item_navigation\\":\\"0\\",\\"show_icons\\":\\"0\\",\\"show_print_icon\\":\\"0\\",\\"show_email_icon\\":\\"0\\",\\"show_vote\\":\\"0\\",\\"show_hits\\":\\"0\\",\\"show_noauth\\":\\"0\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"0\\",\\"show_article_options\\":\\"0\\",\\"show_urls_images_backend\\":\\"0\\",\\"show_urls_images_frontend\\":\\"0\\"}","version":7,"ordering":"3","metakey":"","metadesc":"","access":"1","hits":"9","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"1","language":"*","xreference":""}', 0),
(12, 8, 6, '', '2014-06-29 22:59:40', 303, 509, '90987d3208b84443626adb26cc036c60516d9019', '{"id":8,"asset_id":68,"parent_id":"1","lft":"13","rgt":14,"level":1,"path":null,"extension":"com_content","title":"Home","alias":"home","note":"","description":"","published":"1","checked_out":null,"checked_out_time":null,"access":"1","params":"{\\"category_layout\\":\\"\\",\\"image\\":\\"\\"}","metadesc":"","metakey":"","metadata":"{\\"author\\":\\"\\",\\"robots\\":\\"\\"}","created_user_id":"303","created_time":"2014-06-29 22:59:40","modified_user_id":null,"modified_time":null,"hits":"0","language":"*","version":null}', 0),
(13, 9, 6, '', '2014-06-29 23:00:47', 303, 531, 'd8d2febb945e111a2db8e94d0b7191138a6a4b79', '{"id":9,"asset_id":69,"parent_id":"1","lft":"15","rgt":16,"level":1,"path":null,"extension":"com_content","title":"Sobre a Empresa","alias":"sobre-a-empresa","note":"","description":"","published":"1","checked_out":null,"checked_out_time":null,"access":"1","params":"{\\"category_layout\\":\\"\\",\\"image\\":\\"\\"}","metadesc":"","metakey":"","metadata":"{\\"author\\":\\"\\",\\"robots\\":\\"\\"}","created_user_id":"303","created_time":"2014-06-29 23:00:47","modified_user_id":null,"modified_time":null,"hits":"0","language":"*","version":null}', 0),
(14, 6, 1, '', '2014-06-29 23:09:38', 303, 1651, 'f9c655e51084cbd5eb00a626b761397f304a83c0', '{"id":6,"asset_id":71,"title":"Sobre a Empresa","alias":"sobre-a-empresa","introtext":"","fulltext":"","state":1,"catid":"9","created":"2014-06-29 23:09:38","created_by":"303","created_by_alias":"","modified":"","modified_by":null,"checked_out":null,"checked_out_time":null,"publish_up":"2014-06-29 23:09:38","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":1,"ordering":null,"metakey":"","metadesc":"","access":"1","hits":null,"metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(15, 7, 1, '', '2014-06-29 23:11:52', 303, 1650, '4471a7b20de07646195488bd84eae22591ea549a', '{"id":7,"asset_id":72,"title":"Nossa Hist\\u00f3ria","alias":"noosa-hist","introtext":"","fulltext":"","state":1,"catid":"2","created":"2014-06-29 23:11:52","created_by":"303","created_by_alias":"","modified":"","modified_by":null,"checked_out":null,"checked_out_time":null,"publish_up":"2014-06-29 23:11:52","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":1,"ordering":null,"metakey":"","metadesc":"","access":"1","hits":null,"metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"1","language":"*","xreference":""}', 0),
(16, 7, 1, '', '2014-06-29 23:12:01', 303, 1688, '29122dae101a77880d9982bfdee11e02c2c1e8a4', '{"id":7,"asset_id":"72","title":"Nossa Hist\\u00f3ria","alias":"nossa-hist","introtext":"","fulltext":"","state":1,"catid":"2","created":"2014-06-29 23:11:52","created_by":"303","created_by_alias":"","modified":"2014-06-29 23:12:01","modified_by":"303","checked_out":"303","checked_out_time":"2014-06-29 23:11:52","publish_up":"2014-06-29 23:11:52","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":2,"ordering":"0","metakey":"","metadesc":"","access":"1","hits":"0","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"1","language":"*","xreference":""}', 0),
(17, 6, 1, '', '2014-06-29 23:31:14', 303, 2129, 'eb28e61b2c5d722a5a0cc47869548f39e04b5eb3', '{"id":6,"asset_id":"71","title":"Sobre a Empresa","alias":"sobre-a-empresa","introtext":"<p>A Companhia de Transportes do Estado da Bahia(CTB) \\u00e9 uma empresa estatal do Estado da Bahia e est\\u00e1 subordinada \\u00e0 Secretaria de Desenvolvimento Urbano(SEDUR). O Servi\\u00e7o de transportes de passageiros sobre os trilhosde compet\\u00eancia estadual \\u00e9 o foco do objetivo da CTB. Fundada em 1999, a sua sede situa-se no bairro da Cal\\u00e7ada na cidade de Salvador e \\u00e9 presidido atualmente por Carlos Martins.<\\/p>","fulltext":"","state":1,"catid":"9","created":"2014-06-29 23:09:38","created_by":"303","created_by_alias":"","modified":"2014-06-29 23:31:14","modified_by":"303","checked_out":"303","checked_out_time":"2014-06-29 23:31:07","publish_up":"2014-06-29 23:09:38","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":3,"ordering":"0","metakey":"","metadesc":"","access":"1","hits":"11","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(18, 6, 1, '', '2014-06-29 23:31:41', 303, 2129, '55cc95083a36a5b5eee2dc330b10e34a849df72d', '{"id":6,"asset_id":"71","title":"Sobre a Empresa","alias":"sobre-a-empresa","introtext":"<p>A Companhia de Transportes do Estado da Bahia(CTB) \\u00e9 uma empresa estatal do Estado da Bahia e est\\u00e1 subordinada \\u00e0 Secretaria de Desenvolvimento Urbano(SEDUR). O Servi\\u00e7o de transportes de passageiros sobre os trilhosde compet\\u00eancia estadual \\u00e9 o foco do objetivo da CTB. Fundada em 1999, a sua sede situa-se no bairro da Cal\\u00e7ada na cidade de Salvador e \\u00e9 presidido atualmente por Carlos Martins.<\\/p>","fulltext":"","state":1,"catid":"2","created":"2014-06-29 23:09:38","created_by":"303","created_by_alias":"","modified":"2014-06-29 23:31:41","modified_by":"303","checked_out":"303","checked_out_time":"2014-06-29 23:31:14","publish_up":"2014-06-29 23:09:38","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":4,"ordering":"0","metakey":"","metadesc":"","access":"1","hits":"12","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(19, 6, 1, '', '2014-06-29 23:37:48', 303, 2151, '2d83639762622b650bb878929abe4977d590c290', '{"id":6,"asset_id":"71","title":"Sobre a Empresa","alias":"sobre-a-empresa","introtext":"<p>A Companhia de Transportes do Estado da Bahia(CTB) \\u00e9 uma empresa estatal do Estado da Bahia e est\\u00e1 subordinada \\u00e0 Secretaria de Desenvolvimento Urbano(SEDUR). O Servi\\u00e7o de transportes de passageiros sobre os trilhosde compet\\u00eancia estadual \\u00e9 o foco do objetivo da CTB. Fundada em 1999, a sua sede situa-se no bairro da Cal\\u00e7ada na cidade de Salvador e \\u00e9 presidido atualmente por Carlos Martins.<\\/p>","fulltext":"","state":1,"catid":"2","created":"2014-06-29 23:09:38","created_by":"303","created_by_alias":"","modified":"2014-06-29 23:37:48","modified_by":"303","checked_out":"303","checked_out_time":"2014-06-29 23:36:26","publish_up":"2014-06-29 23:09:38","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"1\\",\\"link_titles\\":\\"0\\",\\"show_tags\\":\\"0\\",\\"show_intro\\":\\"0\\",\\"info_block_position\\":\\"1\\",\\"show_category\\":\\"0\\",\\"link_category\\":\\"0\\",\\"show_parent_category\\":\\"0\\",\\"link_parent_category\\":\\"0\\",\\"show_author\\":\\"0\\",\\"link_author\\":\\"0\\",\\"show_create_date\\":\\"0\\",\\"show_modify_date\\":\\"0\\",\\"show_publish_date\\":\\"0\\",\\"show_item_navigation\\":\\"0\\",\\"show_icons\\":\\"0\\",\\"show_print_icon\\":\\"0\\",\\"show_email_icon\\":\\"0\\",\\"show_vote\\":\\"0\\",\\"show_hits\\":\\"0\\",\\"show_noauth\\":\\"0\\",\\"urls_position\\":\\"1\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":5,"ordering":"0","metakey":"","metadesc":"","access":"1","hits":"15","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0);
INSERT INTO `iwk5c_ucm_history` (`version_id`, `ucm_item_id`, `ucm_type_id`, `version_note`, `save_date`, `editor_user_id`, `character_count`, `sha1_hash`, `version_data`, `keep_forever`) VALUES
(20, 6, 1, '', '2014-06-29 23:38:41', 303, 2160, '3845e01279a407c32890f9ba23f135fd550408a1', '{"id":6,"asset_id":"71","title":"Sobre a Empresa","alias":"sobre-a-empresa","introtext":"<p>A Companhia de Transportes do Estado da Bahia(CTB) \\u00e9 uma empresa estatal do Estado da Bahia e est\\u00e1 subordinada \\u00e0 Secretaria de Desenvolvimento Urbano(SEDUR). O Servi\\u00e7o de transportes de passageiros sobre os trilhosde compet\\u00eancia estadual \\u00e9 o foco do objetivo da CTB. Fundada em 1999, a sua sede situa-se no bairro da Cal\\u00e7ada na cidade de Salvador e \\u00e9 presidido atualmente por Carlos Martins.<\\/p>","fulltext":"","state":1,"catid":"2","created":"2014-06-29 23:09:38","created_by":"303","created_by_alias":"","modified":"2014-06-29 23:38:41","modified_by":"303","checked_out":"303","checked_out_time":"2014-06-29 23:37:48","publish_up":"2014-06-29 23:09:38","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"1\\",\\"link_titles\\":\\"0\\",\\"show_tags\\":\\"0\\",\\"show_intro\\":\\"0\\",\\"info_block_position\\":\\"1\\",\\"show_category\\":\\"0\\",\\"link_category\\":\\"0\\",\\"show_parent_category\\":\\"0\\",\\"link_parent_category\\":\\"0\\",\\"show_author\\":\\"0\\",\\"link_author\\":\\"0\\",\\"show_create_date\\":\\"0\\",\\"show_modify_date\\":\\"0\\",\\"show_publish_date\\":\\"0\\",\\"show_item_navigation\\":\\"0\\",\\"show_icons\\":\\"0\\",\\"show_print_icon\\":\\"0\\",\\"show_email_icon\\":\\"0\\",\\"show_vote\\":\\"0\\",\\"show_hits\\":\\"0\\",\\"show_noauth\\":\\"0\\",\\"urls_position\\":\\"1\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"_:default\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":6,"ordering":"0","metakey":"","metadesc":"","access":"1","hits":"16","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(21, 1, 4, '', '2014-06-29 23:54:19', 303, 747, '3a544e1d986a5ea4a6b612b7a193ccc8561542c5', '{"catid":"5","id":1,"name":"Teste de feed","alias":"teste-de-feed","link":"http:\\/\\/www.facebook.com.br","published":"1","numarticles":"5","cache_time":"3600","checked_out":null,"checked_out_time":null,"ordering":1,"rtl":"0","access":"1","language":"*","params":null,"created":"2014-06-29 23:54:19","created_by":"303","created_by_alias":"","modified":"","modified_by":null,"metakey":"","metadesc":"","metadata":"{\\"robots\\":\\"\\",\\"rights\\":\\"\\"}","xreference":"","publish_up":"","publish_down":"","description":"","version":1,"hits":null,"images":"{\\"image_first\\":\\"\\",\\"float_first\\":\\"\\",\\"image_first_alt\\":\\"\\",\\"image_first_caption\\":\\"\\",\\"image_second\\":\\"\\",\\"float_second\\":\\"\\",\\"image_second_alt\\":\\"\\",\\"image_second_caption\\":\\"\\"}"}', 0),
(22, 10, 6, '', '2014-06-30 00:25:23', 303, 535, 'd1f25c8694c154f55a16d8ad7d4ed0445d16b894', '{"id":10,"asset_id":74,"parent_id":"1","lft":"17","rgt":18,"level":1,"path":null,"extension":"com_content","title":"Nossa Hist\\u00f3ria","alias":"nossa-historia","note":"","description":"","published":"1","checked_out":null,"checked_out_time":null,"access":"1","params":"{\\"category_layout\\":\\"\\",\\"image\\":\\"\\"}","metadesc":"","metakey":"","metadata":"{\\"author\\":\\"\\",\\"robots\\":\\"\\"}","created_user_id":"303","created_time":"2014-06-30 00:25:23","modified_user_id":null,"modified_time":null,"hits":"0","language":"*","version":null}', 0),
(23, 11, 6, '', '2014-06-30 00:26:49', 303, 540, '0267418d923516f849e08a8e8ea8d8bb71be91d0', '{"id":11,"asset_id":75,"parent_id":"1","lft":"19","rgt":20,"level":1,"path":null,"extension":"com_content","title":"Miss\\u00e3o e Vis\\u00e3o","alias":"missao-e-visao","note":"","description":"","published":"1","checked_out":null,"checked_out_time":null,"access":"1","params":"{\\"category_layout\\":\\"\\",\\"image\\":\\"\\"}","metadesc":"","metakey":"","metadata":"{\\"author\\":\\"\\",\\"robots\\":\\"\\"}","created_user_id":"303","created_time":"2014-06-30 00:26:49","modified_user_id":null,"modified_time":null,"hits":"0","language":"*","version":null}', 0),
(24, 12, 6, '', '2014-06-30 00:27:10', 303, 530, '18d072d78209e89ad435e2889bd02a3e073fd912', '{"id":12,"asset_id":76,"parent_id":"1","lft":"21","rgt":22,"level":1,"path":null,"extension":"com_content","title":"Linha do tempo","alias":"linha-do-tempo","note":"","description":"","published":"1","checked_out":null,"checked_out_time":null,"access":"1","params":"{\\"category_layout\\":\\"\\",\\"image\\":\\"\\"}","metadesc":"","metakey":"","metadata":"{\\"author\\":\\"\\",\\"robots\\":\\"\\"}","created_user_id":"303","created_time":"2014-06-30 00:27:10","modified_user_id":null,"modified_time":null,"hits":"0","language":"*","version":null}', 0),
(25, 13, 6, '', '2014-06-30 00:27:32', 303, 518, '3109a81701c02652f64be2f50b588dedd7398536', '{"id":13,"asset_id":77,"parent_id":"1","lft":"23","rgt":24,"level":1,"path":null,"extension":"com_content","title":"Projetos","alias":"projetos","note":"","description":"","published":"1","checked_out":null,"checked_out_time":null,"access":"1","params":"{\\"category_layout\\":\\"\\",\\"image\\":\\"\\"}","metadesc":"","metakey":"","metadata":"{\\"author\\":\\"\\",\\"robots\\":\\"\\"}","created_user_id":"303","created_time":"2014-06-30 00:27:32","modified_user_id":null,"modified_time":null,"hits":"0","language":"*","version":null}', 0),
(26, 14, 6, '', '2014-06-30 00:27:42', 303, 547, 'becc1b1a2ca714251f0e516d5dba5f8bb3ead671', '{"id":14,"asset_id":78,"parent_id":"1","lft":"25","rgt":26,"level":1,"path":null,"extension":"com_content","title":"Portal de governan\\u00e7a","alias":"portal-de-governanca","note":"","description":"","published":"1","checked_out":null,"checked_out_time":null,"access":"1","params":"{\\"category_layout\\":\\"\\",\\"image\\":\\"\\"}","metadesc":"","metakey":"","metadata":"{\\"author\\":\\"\\",\\"robots\\":\\"\\"}","created_user_id":"303","created_time":"2014-06-30 00:27:42","modified_user_id":null,"modified_time":null,"hits":"0","language":"*","version":null}', 0),
(27, 15, 6, '', '2014-06-30 00:27:57', 303, 524, '5af1316d7ade79cfacb1fc1f7089330ba84e98fb', '{"id":15,"asset_id":79,"parent_id":"1","lft":"27","rgt":28,"level":1,"path":null,"extension":"com_content","title":"Organograma","alias":"organograma","note":"","description":"","published":"1","checked_out":null,"checked_out_time":null,"access":"1","params":"{\\"category_layout\\":\\"\\",\\"image\\":\\"\\"}","metadesc":"","metakey":"","metadata":"{\\"author\\":\\"\\",\\"robots\\":\\"\\"}","created_user_id":"303","created_time":"2014-06-30 00:27:57","modified_user_id":null,"modified_time":null,"hits":"0","language":"*","version":null}', 0),
(28, 16, 6, '', '2014-06-30 01:44:34', 303, 550, 'ec4eebfa02c36e07c5493f4a4ec92f81f64906ec', '{"id":16,"asset_id":84,"parent_id":"1","lft":"29","rgt":30,"level":1,"path":null,"extension":"com_content","title":"Presidencia e Assessoria","alias":"presidencia-e-assessoria","note":"","description":"","published":"1","checked_out":null,"checked_out_time":null,"access":"1","params":"{\\"category_layout\\":\\"\\",\\"image\\":\\"\\"}","metadesc":"","metakey":"","metadata":"{\\"author\\":\\"\\",\\"robots\\":\\"\\"}","created_user_id":"303","created_time":"2014-06-30 01:44:34","modified_user_id":null,"modified_time":null,"hits":"0","language":"*","version":null}', 0),
(29, 17, 6, '', '2014-06-30 01:44:50', 303, 590, '9c1a15e1de8dfcd286fa0055a4008d0469b61664', '{"id":17,"asset_id":85,"parent_id":"1","lft":"31","rgt":32,"level":1,"path":null,"extension":"com_content","title":"Diretoria de Opera\\u00e7\\u00e3o e Manuten\\u00e7\\u00e3o","alias":"diretoria-de-operacao-e-manutencao","note":"","description":"","published":"1","checked_out":null,"checked_out_time":null,"access":"1","params":"{\\"category_layout\\":\\"\\",\\"image\\":\\"\\"}","metadesc":"","metakey":"","metadata":"{\\"author\\":\\"\\",\\"robots\\":\\"\\"}","created_user_id":"303","created_time":"2014-06-30 01:44:50","modified_user_id":null,"modified_time":null,"hits":"0","language":"*","version":null}', 0),
(30, 18, 6, '', '2014-06-30 01:45:11', 303, 582, 'a7eab2ed902b736115165bc6f37c2aadc546c86c', '{"id":18,"asset_id":86,"parent_id":"1","lft":"33","rgt":34,"level":1,"path":null,"extension":"com_content","title":"Diretoria do Administrativo e Financeiro","alias":"diretoria-do-administrativo-e-financeiro","note":"","description":"","published":"1","checked_out":null,"checked_out_time":null,"access":"1","params":"{\\"category_layout\\":\\"\\",\\"image\\":\\"\\"}","metadesc":"","metakey":"","metadata":"{\\"author\\":\\"\\",\\"robots\\":\\"\\"}","created_user_id":"303","created_time":"2014-06-30 01:45:11","modified_user_id":null,"modified_time":null,"hits":"0","language":"*","version":null}', 0),
(31, 19, 6, '', '2014-06-30 01:45:25', 303, 554, '3fa5f1a5324946ce9f7b981520739031f59353e8', '{"id":19,"asset_id":87,"parent_id":"1","lft":"35","rgt":36,"level":1,"path":null,"extension":"com_content","title":"Diretoria de Esta\\u00e7\\u00f5es","alias":"diretoria-de-estacoes","note":"","description":"","published":"1","checked_out":null,"checked_out_time":null,"access":"1","params":"{\\"category_layout\\":\\"\\",\\"image\\":\\"\\"}","metadesc":"","metakey":"","metadata":"{\\"author\\":\\"\\",\\"robots\\":\\"\\"}","created_user_id":"303","created_time":"2014-06-30 01:45:25","modified_user_id":null,"modified_time":null,"hits":"0","language":"*","version":null}', 0),
(32, 20, 6, '', '2014-06-30 01:45:38', 303, 538, '66db25b36909ba5c83dc2870cdf1dde842a58a61', '{"id":20,"asset_id":88,"parent_id":"1","lft":"37","rgt":38,"level":1,"path":null,"extension":"com_content","title":"Diretoria de Obras","alias":"diretoria-de-obras","note":"","description":"","published":"1","checked_out":null,"checked_out_time":null,"access":"1","params":"{\\"category_layout\\":\\"\\",\\"image\\":\\"\\"}","metadesc":"","metakey":"","metadata":"{\\"author\\":\\"\\",\\"robots\\":\\"\\"}","created_user_id":"303","created_time":"2014-06-30 01:45:38","modified_user_id":null,"modified_time":null,"hits":"0","language":"*","version":null}', 0),
(33, 21, 6, '', '2014-06-30 01:45:50', 303, 552, 'ad9c1c780c1b17bdbaef5ab532b84b74712f8a2f', '{"id":21,"asset_id":89,"parent_id":"1","lft":"39","rgt":40,"level":1,"path":null,"extension":"com_content","title":"Diretoria de Planejamento","alias":"diretoria-de-planejamento","note":"","description":"","published":"1","checked_out":null,"checked_out_time":null,"access":"1","params":"{\\"category_layout\\":\\"\\",\\"image\\":\\"\\"}","metadesc":"","metakey":"","metadata":"{\\"author\\":\\"\\",\\"robots\\":\\"\\"}","created_user_id":"303","created_time":"2014-06-30 01:45:50","modified_user_id":null,"modified_time":null,"hits":"0","language":"*","version":null}', 0),
(34, 16, 6, '', '2014-06-30 01:53:04', 303, 610, '6f1daa3f3d1b5336eddd9f561fae320819a6cdef', '{"id":16,"asset_id":"84","parent_id":"15","lft":"28","rgt":29,"level":2,"path":"presidencia-e-assessoria","extension":"com_content","title":"Presidencia e Assessoria","alias":"presidencia-e-assessoria","note":"","description":"","published":"1","checked_out":"303","checked_out_time":"2014-06-30 01:52:54","access":"1","params":"{\\"category_layout\\":\\"\\",\\"image\\":\\"\\"}","metadesc":"","metakey":"","metadata":"{\\"author\\":\\"\\",\\"robots\\":\\"\\"}","created_user_id":"303","created_time":"2014-06-30 01:44:34","modified_user_id":"303","modified_time":"2014-06-30 01:53:04","hits":"0","language":"*","version":"1"}', 0),
(35, 17, 6, '', '2014-06-30 01:53:32', 303, 660, '6fa2398b449f799e3df1809d3453df55464a9923', '{"id":17,"asset_id":"85","parent_id":"15","lft":"30","rgt":31,"level":2,"path":"diretoria-de-operacao-e-manutencao","extension":"com_content","title":"Diretoria de Opera\\u00e7\\u00e3o e Manuten\\u00e7\\u00e3o","alias":"diretoria-de-operacao-e-manutencao","note":"","description":"","published":"1","checked_out":"303","checked_out_time":"2014-06-30 01:53:24","access":"1","params":"{\\"category_layout\\":\\"\\",\\"image\\":\\"\\"}","metadesc":"","metakey":"","metadata":"{\\"author\\":\\"\\",\\"robots\\":\\"\\"}","created_user_id":"303","created_time":"2014-06-30 01:44:50","modified_user_id":"303","modified_time":"2014-06-30 01:53:32","hits":"0","language":"*","version":"1"}', 0),
(36, 18, 6, '', '2014-06-30 01:53:53', 303, 658, 'ab93f56a40f94a77c7cdd0773f67362ebbf5aa3d', '{"id":18,"asset_id":"86","parent_id":"15","lft":"32","rgt":33,"level":2,"path":"diretoria-do-administrativo-e-financeiro","extension":"com_content","title":"Diretoria do Administrativo e Financeiro","alias":"diretoria-do-administrativo-e-financeiro","note":"","description":"","published":"1","checked_out":"303","checked_out_time":"2014-06-30 01:53:40","access":"1","params":"{\\"category_layout\\":\\"\\",\\"image\\":\\"\\"}","metadesc":"","metakey":"","metadata":"{\\"author\\":\\"\\",\\"robots\\":\\"\\"}","created_user_id":"303","created_time":"2014-06-30 01:45:11","modified_user_id":"303","modified_time":"2014-06-30 01:53:53","hits":"0","language":"*","version":"1"}', 0),
(37, 19, 6, '', '2014-06-30 01:54:16', 303, 611, '5b7984729e5d1b1481fb4462e7f1b6b30a876869', '{"id":19,"asset_id":"87","parent_id":"15","lft":"34","rgt":35,"level":2,"path":"diretoria-de-estacoes","extension":"com_content","title":"Diretoria de Esta\\u00e7\\u00f5es","alias":"diretoria-de-estacoes","note":"","description":"","published":"1","checked_out":"303","checked_out_time":"2014-06-30 01:54:07","access":"1","params":"{\\"category_layout\\":\\"\\",\\"image\\":\\"\\"}","metadesc":"","metakey":"","metadata":"{\\"author\\":\\"\\",\\"robots\\":\\"\\"}","created_user_id":"303","created_time":"2014-06-30 01:45:25","modified_user_id":"303","modified_time":"2014-06-30 01:54:16","hits":"0","language":"*","version":"1"}', 0),
(38, 20, 6, '', '2014-06-30 01:54:38', 303, 592, 'd76ed0f5b4dfe40572eafbcc4f034001aa90333f', '{"id":20,"asset_id":"88","parent_id":"15","lft":"36","rgt":37,"level":2,"path":"diretoria-de-obras","extension":"com_content","title":"Diretoria de Obras","alias":"diretoria-de-obras","note":"","description":"","published":"1","checked_out":"303","checked_out_time":"2014-06-30 01:54:33","access":"1","params":"{\\"category_layout\\":\\"\\",\\"image\\":\\"\\"}","metadesc":"","metakey":"","metadata":"{\\"author\\":\\"\\",\\"robots\\":\\"\\"}","created_user_id":"303","created_time":"2014-06-30 01:45:38","modified_user_id":"303","modified_time":"2014-06-30 01:54:38","hits":"0","language":"*","version":"1"}', 0),
(39, 21, 6, '', '2014-06-30 01:54:56', 303, 613, 'b45183b85e9c206c04634d1713dfe1fd5ad080b2', '{"id":21,"asset_id":"89","parent_id":"15","lft":"38","rgt":39,"level":2,"path":"diretoria-de-planejamento","extension":"com_content","title":"Diretoria de Planejamento","alias":"diretoria-de-planejamento","note":"","description":"","published":"1","checked_out":"303","checked_out_time":"2014-06-30 01:54:49","access":"1","params":"{\\"category_layout\\":\\"\\",\\"image\\":\\"\\"}","metadesc":"","metakey":"","metadata":"{\\"author\\":\\"\\",\\"robots\\":\\"\\"}","created_user_id":"303","created_time":"2014-06-30 01:45:50","modified_user_id":"303","modified_time":"2014-06-30 01:54:56","hits":"0","language":"*","version":"1"}', 0),
(40, 15, 6, '', '2014-06-30 01:55:29', 303, 570, 'ec5e5f1f3b59f7fcda1f3096467b5d3c4acf2dfe', '{"id":15,"asset_id":"79","parent_id":"9","lft":"16","rgt":29,"level":2,"path":"organograma","extension":"com_content","title":"Organograma","alias":"organograma","note":"","description":"","published":"1","checked_out":"303","checked_out_time":"2014-06-30 01:55:18","access":"1","params":"{\\"category_layout\\":\\"\\",\\"image\\":\\"\\"}","metadesc":"","metakey":"","metadata":"{\\"author\\":\\"\\",\\"robots\\":\\"\\"}","created_user_id":"303","created_time":"2014-06-30 00:27:57","modified_user_id":"303","modified_time":"2014-06-30 01:55:29","hits":"0","language":"*","version":"1"}', 0),
(41, 22, 6, '', '2014-06-30 02:15:55', 303, 517, '2484040d3cc444758202696860aa3c7783405f19', '{"id":22,"asset_id":90,"parent_id":"1","lft":"41","rgt":42,"level":1,"path":null,"extension":"com_content","title":"Metr\\u00f4","alias":"metro","note":"","description":"","published":"1","checked_out":null,"checked_out_time":null,"access":"1","params":"{\\"category_layout\\":\\"\\",\\"image\\":\\"\\"}","metadesc":"","metakey":"","metadata":"{\\"author\\":\\"\\",\\"robots\\":\\"\\"}","created_user_id":"303","created_time":"2014-06-30 02:15:55","modified_user_id":null,"modified_time":null,"hits":"0","language":"*","version":null}', 0),
(42, 23, 6, '', '2014-06-30 02:16:06', 303, 508, '843333370a265a128aa091672c587796b47ca923', '{"id":23,"asset_id":91,"parent_id":"1","lft":"43","rgt":44,"level":1,"path":null,"extension":"com_content","title":"VLT","alias":"vlt","note":"","description":"","published":"1","checked_out":null,"checked_out_time":null,"access":"1","params":"{\\"category_layout\\":\\"\\",\\"image\\":\\"\\"}","metadesc":"","metakey":"","metadata":"{\\"author\\":\\"\\",\\"robots\\":\\"\\"}","created_user_id":"303","created_time":"2014-06-30 02:16:06","modified_user_id":null,"modified_time":null,"hits":"0","language":"*","version":null}', 0),
(43, 24, 6, '', '2014-06-30 02:16:21', 303, 539, '69e538b73091b045ea627d56a82b249426a6d531', '{"id":24,"asset_id":92,"parent_id":"1","lft":"45","rgt":46,"level":1,"path":null,"extension":"com_content","title":"Trem do Sub\\u00farbio","alias":"trem-do-suburbio","note":"","description":"","published":"1","checked_out":null,"checked_out_time":null,"access":"1","params":"{\\"category_layout\\":\\"\\",\\"image\\":\\"\\"}","metadesc":"","metakey":"","metadata":"{\\"author\\":\\"\\",\\"robots\\":\\"\\"}","created_user_id":"303","created_time":"2014-06-30 02:16:21","modified_user_id":null,"modified_time":null,"hits":"0","language":"*","version":null}', 0),
(44, 24, 6, '', '2014-06-30 02:18:01', 303, 575, '2c9a7056757ba5f6225b95507ab762814d73ca51', '{"id":24,"asset_id":"92","parent_id":"22","lft":"42","rgt":43,"level":2,"path":"trem-do-suburbio","extension":"com_content","title":"Mapas","alias":"trem-do-suburbio","note":"","description":"","published":"1","checked_out":"303","checked_out_time":"2014-06-30 02:16:21","access":"1","params":"{\\"category_layout\\":\\"\\",\\"image\\":\\"\\"}","metadesc":"","metakey":"","metadata":"{\\"author\\":\\"\\",\\"robots\\":\\"\\"}","created_user_id":"303","created_time":"2014-06-30 02:16:21","modified_user_id":"303","modified_time":"2014-06-30 02:18:01","hits":"0","language":"*","version":"1"}', 0),
(45, 25, 6, '', '2014-06-30 02:18:24', 303, 547, '2c5191ba132812628c414996c26bf751e1d8d736', '{"id":25,"asset_id":93,"parent_id":"22","lft":"44","rgt":45,"level":2,"path":null,"extension":"com_content","title":"Pre\\u00e7os e Hor\\u00e1rios","alias":"precos-e-horarios","note":"","description":"","published":"1","checked_out":null,"checked_out_time":null,"access":"1","params":"{\\"category_layout\\":\\"\\",\\"image\\":\\"\\"}","metadesc":"","metakey":"","metadata":"{\\"author\\":\\"\\",\\"robots\\":\\"\\"}","created_user_id":"303","created_time":"2014-06-30 02:18:24","modified_user_id":null,"modified_time":null,"hits":"0","language":"*","version":null}', 0),
(46, 26, 6, '', '2014-06-30 02:19:01', 303, 513, '69685fac6f6a2a56c9d9df2d95a4d32e9cf38e30', '{"id":26,"asset_id":94,"parent_id":"22","lft":"46","rgt":47,"level":2,"path":null,"extension":"com_content","title":"Obras","alias":"obras","note":"","description":"","published":"1","checked_out":null,"checked_out_time":null,"access":"1","params":"{\\"category_layout\\":\\"\\",\\"image\\":\\"\\"}","metadesc":"","metakey":"","metadata":"{\\"author\\":\\"\\",\\"robots\\":\\"\\"}","created_user_id":"303","created_time":"2014-06-30 02:19:01","modified_user_id":null,"modified_time":null,"hits":"0","language":"*","version":null}', 0),
(47, 8, 1, '', '2014-06-30 19:15:42', 303, 1788, 'fcb71dda1191744344a1d5fafecdf50726b2a4ca', '{"id":8,"asset_id":106,"title":"Inaugura\\u00e7\\u00e3o do Metr\\u00f4 de Salvador","alias":"inauguracao-do-metro-de-salvador","introtext":"<p><em><span style=\\"font-size: 8pt;\\">Salvador, 08 de Junho de 2014<\\/span><\\/em><\\/p>","fulltext":"","state":1,"catid":"2","created":"2014-06-30 19:15:42","created_by":"303","created_by_alias":"","modified":"","modified_by":null,"checked_out":null,"checked_out_time":null,"publish_up":"2014-06-30 19:15:42","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":1,"ordering":null,"metakey":"","metadesc":"","access":"1","hits":null,"metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(48, 27, 6, '', '2014-06-30 22:07:06', 303, 523, 'ab7898dbd24e95b43289664b9d890ed58a64961b', '{"id":27,"asset_id":113,"parent_id":"1","lft":"51","rgt":52,"level":1,"path":null,"extension":"com_content","title":"Acionistas","alias":"acionistas","note":"","description":"","published":"1","checked_out":null,"checked_out_time":null,"access":"1","params":"{\\"category_layout\\":\\"\\",\\"image\\":\\"\\"}","metadesc":"","metakey":"","metadata":"{\\"author\\":\\"\\",\\"robots\\":\\"\\"}","created_user_id":"303","created_time":"2014-06-30 22:07:06","modified_user_id":null,"modified_time":null,"hits":"0","language":"*","version":null}', 0),
(49, 28, 6, '', '2014-06-30 22:07:20', 303, 549, '70f6422c9d29c02c8969f436c94bbe7fc2c40a45', '{"id":28,"asset_id":114,"parent_id":"1","lft":"53","rgt":54,"level":1,"path":null,"extension":"com_content","title":"Conselho Administrativo","alias":"conselho-administrativo","note":"","description":"","published":"1","checked_out":null,"checked_out_time":null,"access":"1","params":"{\\"category_layout\\":\\"\\",\\"image\\":\\"\\"}","metadesc":"","metakey":"","metadata":"{\\"author\\":\\"\\",\\"robots\\":\\"\\"}","created_user_id":"303","created_time":"2014-06-30 22:07:20","modified_user_id":null,"modified_time":null,"hits":"0","language":"*","version":null}', 0),
(50, 29, 6, '', '2014-06-30 22:07:35', 303, 521, '058cce2209b7c1aff6b6a0c85591f0d7eb7fb557', '{"id":29,"asset_id":115,"parent_id":"1","lft":"55","rgt":56,"level":1,"path":null,"extension":"com_content","title":"Diretoria","alias":"diretoria","note":"","description":"","published":"1","checked_out":null,"checked_out_time":null,"access":"1","params":"{\\"category_layout\\":\\"\\",\\"image\\":\\"\\"}","metadesc":"","metakey":"","metadata":"{\\"author\\":\\"\\",\\"robots\\":\\"\\"}","created_user_id":"303","created_time":"2014-06-30 22:07:35","modified_user_id":null,"modified_time":null,"hits":"0","language":"*","version":null}', 0),
(51, 30, 6, '', '2014-06-30 22:07:47', 303, 533, '089decd9657e1dc25db9c023892c3fba36d4fe7e', '{"id":30,"asset_id":116,"parent_id":"1","lft":"57","rgt":58,"level":1,"path":null,"extension":"com_content","title":"Conselho Fiscal","alias":"conselho-fiscal","note":"","description":"","published":"1","checked_out":null,"checked_out_time":null,"access":"1","params":"{\\"category_layout\\":\\"\\",\\"image\\":\\"\\"}","metadesc":"","metakey":"","metadata":"{\\"author\\":\\"\\",\\"robots\\":\\"\\"}","created_user_id":"303","created_time":"2014-06-30 22:07:47","modified_user_id":null,"modified_time":null,"hits":"0","language":"*","version":null}', 0),
(52, 31, 6, '', '2014-06-30 22:07:59', 303, 533, 'b1d3011485309fe26f33fde6cd774cc0cf1eda05', '{"id":31,"asset_id":117,"parent_id":"1","lft":"59","rgt":60,"level":1,"path":null,"extension":"com_content","title":"Estatuto Social","alias":"estatuto-social","note":"","description":"","published":"1","checked_out":null,"checked_out_time":null,"access":"1","params":"{\\"category_layout\\":\\"\\",\\"image\\":\\"\\"}","metadesc":"","metakey":"","metadata":"{\\"author\\":\\"\\",\\"robots\\":\\"\\"}","created_user_id":"303","created_time":"2014-06-30 22:07:59","modified_user_id":null,"modified_time":null,"hits":"0","language":"*","version":null}', 0),
(53, 32, 6, '', '2014-06-30 22:08:36', 303, 533, '0591826850f7455f948ad23c6135e1f8cde0b3e5', '{"id":32,"asset_id":118,"parent_id":"1","lft":"61","rgt":62,"level":1,"path":null,"extension":"com_content","title":"Licita\\u00e7\\u00f5es","alias":"licitacoes","note":"","description":"","published":"1","checked_out":null,"checked_out_time":null,"access":"1","params":"{\\"category_layout\\":\\"\\",\\"image\\":\\"\\"}","metadesc":"","metakey":"","metadata":"{\\"author\\":\\"\\",\\"robots\\":\\"\\"}","created_user_id":"303","created_time":"2014-06-30 22:08:36","modified_user_id":null,"modified_time":null,"hits":"0","language":"*","version":null}', 0),
(54, 33, 6, '', '2014-06-30 22:08:45', 303, 521, '924520db416497d33811185356621e629855a11f', '{"id":33,"asset_id":119,"parent_id":"1","lft":"63","rgt":64,"level":1,"path":null,"extension":"com_content","title":"Ouvidoria","alias":"ouvidoria","note":"","description":"","published":"1","checked_out":null,"checked_out_time":null,"access":"1","params":"{\\"category_layout\\":\\"\\",\\"image\\":\\"\\"}","metadesc":"","metakey":"","metadata":"{\\"author\\":\\"\\",\\"robots\\":\\"\\"}","created_user_id":"303","created_time":"2014-06-30 22:08:45","modified_user_id":null,"modified_time":null,"hits":"0","language":"*","version":null}', 0),
(55, 34, 6, '', '2014-06-30 22:08:59', 303, 517, '9dd1f268aea4c9014087e06613a7bc68195f4887', '{"id":34,"asset_id":120,"parent_id":"1","lft":"65","rgt":66,"level":1,"path":null,"extension":"com_content","title":"Galeria","alias":"galeria","note":"","description":"","published":"1","checked_out":null,"checked_out_time":null,"access":"1","params":"{\\"category_layout\\":\\"\\",\\"image\\":\\"\\"}","metadesc":"","metakey":"","metadata":"{\\"author\\":\\"\\",\\"robots\\":\\"\\"}","created_user_id":"303","created_time":"2014-06-30 22:08:59","modified_user_id":null,"modified_time":null,"hits":"0","language":"*","version":null}', 0),
(56, 35, 6, '', '2014-06-30 23:02:49', 303, 519, '2bb71fdf409959e9fa9867e9ee980af8f198c918', '{"id":35,"asset_id":129,"parent_id":"1","lft":"67","rgt":68,"level":1,"path":null,"extension":"com_content","title":"Contatos","alias":"contatos","note":"","description":"","published":"1","checked_out":null,"checked_out_time":null,"access":"1","params":"{\\"category_layout\\":\\"\\",\\"image\\":\\"\\"}","metadesc":"","metakey":"","metadata":"{\\"author\\":\\"\\",\\"robots\\":\\"\\"}","created_user_id":"303","created_time":"2014-06-30 23:02:49","modified_user_id":null,"modified_time":null,"hits":"0","language":"*","version":null}', 0),
(57, 36, 6, '', '2014-06-30 23:03:03', 303, 519, '01bac4eb1991ec1fd93b0a0dc0fbf668ed656ee2', '{"id":36,"asset_id":130,"parent_id":"1","lft":"69","rgt":70,"level":1,"path":null,"extension":"com_content","title":"Intranet","alias":"intranet","note":"","description":"","published":"1","checked_out":null,"checked_out_time":null,"access":"1","params":"{\\"category_layout\\":\\"\\",\\"image\\":\\"\\"}","metadesc":"","metakey":"","metadata":"{\\"author\\":\\"\\",\\"robots\\":\\"\\"}","created_user_id":"303","created_time":"2014-06-30 23:03:03","modified_user_id":null,"modified_time":null,"hits":"0","language":"*","version":null}', 0),
(58, 37, 6, '', '2014-06-30 23:03:12', 303, 517, '5d1001ee27779989bb02c19c77e38a1cfc3ea0a5', '{"id":37,"asset_id":131,"parent_id":"1","lft":"71","rgt":72,"level":1,"path":null,"extension":"com_content","title":"Eventos","alias":"eventos","note":"","description":"","published":"1","checked_out":null,"checked_out_time":null,"access":"1","params":"{\\"category_layout\\":\\"\\",\\"image\\":\\"\\"}","metadesc":"","metakey":"","metadata":"{\\"author\\":\\"\\",\\"robots\\":\\"\\"}","created_user_id":"303","created_time":"2014-06-30 23:03:12","modified_user_id":null,"modified_time":null,"hits":"0","language":"*","version":null}', 0),
(59, 38, 6, '', '2014-06-30 23:03:24', 303, 527, '44bc8baac6ebdf2e43bc17f2f04c0d80c78f61f7', '{"id":38,"asset_id":132,"parent_id":"1","lft":"73","rgt":74,"level":1,"path":null,"extension":"com_content","title":"Mapa do Site","alias":"mapa-do-site","note":"","description":"","published":"1","checked_out":null,"checked_out_time":null,"access":"1","params":"{\\"category_layout\\":\\"\\",\\"image\\":\\"\\"}","metadesc":"","metakey":"","metadata":"{\\"author\\":\\"\\",\\"robots\\":\\"\\"}","created_user_id":"303","created_time":"2014-06-30 23:03:24","modified_user_id":null,"modified_time":null,"hits":"0","language":"*","version":null}', 0),
(60, 39, 7, '', '2014-07-01 11:02:54', 303, 521, 'e8b8abab587fde21384ed7fbb473348d8b2c334b', '{"id":39,"asset_id":145,"parent_id":"1","lft":"75","rgt":76,"level":1,"path":null,"extension":"com_contact","title":"Ouvidoria","alias":"ouvidoria","note":"","description":"","published":"1","checked_out":null,"checked_out_time":null,"access":"1","params":"{\\"category_layout\\":\\"\\",\\"image\\":\\"\\"}","metadesc":"","metakey":"","metadata":"{\\"author\\":\\"\\",\\"robots\\":\\"\\"}","created_user_id":"303","created_time":"2014-07-01 11:02:54","modified_user_id":null,"modified_time":null,"hits":"0","language":"*","version":null}', 0),
(61, 9, 1, '', '2014-07-21 10:48:21', 303, 1718, '7715818f24f5db9d045b9abd8b140d7afbd28b0d', '{"id":9,"asset_id":155,"title":"Isso \\u00e9 um teste","alias":"isso-e-um-teste","introtext":"<p>Ser\\u00e1 que esse artigo ser\\u00e1 publicado??<\\/p>","fulltext":"","state":1,"catid":"8","created":"2014-07-21 07:47:40","created_by":"303","created_by_alias":"","modified":"","modified_by":null,"checked_out":null,"checked_out_time":null,"publish_up":"2014-07-21 07:47:34","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"1\\",\\"link_titles\\":\\"1\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"1\\",\\"show_article_options\\":\\"1\\",\\"show_urls_images_backend\\":\\"1\\",\\"show_urls_images_frontend\\":\\"1\\"}","version":1,"ordering":null,"metakey":"","metadesc":"","access":"1","hits":null,"metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(62, 9, 1, '', '2014-07-21 10:55:03', 303, 1776, 'd15c78288556435c1056eb2c175723a3dc3be81f', '{"id":9,"asset_id":"155","title":"Isso \\u00e9 um teste","alias":"isso-e-um-teste","introtext":"<p>Ser\\u00e1 que esse artigo ser\\u00e1 publicado??<\\/p>","fulltext":"","state":1,"catid":"8","created":"2014-07-21 07:47:40","created_by":"303","created_by_alias":"","modified":"2014-07-21 10:55:03","modified_by":"303","checked_out":"303","checked_out_time":"2014-07-21 10:54:07","publish_up":"2014-07-21 07:47:34","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"1\\",\\"link_titles\\":\\"1\\",\\"show_tags\\":\\"1\\",\\"show_intro\\":\\"1\\",\\"info_block_position\\":\\"2\\",\\"show_category\\":\\"1\\",\\"link_category\\":\\"1\\",\\"show_parent_category\\":\\"1\\",\\"link_parent_category\\":\\"1\\",\\"show_author\\":\\"1\\",\\"link_author\\":\\"1\\",\\"show_create_date\\":\\"1\\",\\"show_modify_date\\":\\"1\\",\\"show_publish_date\\":\\"1\\",\\"show_item_navigation\\":\\"1\\",\\"show_icons\\":\\"1\\",\\"show_print_icon\\":\\"0\\",\\"show_email_icon\\":\\"0\\",\\"show_vote\\":\\"0\\",\\"show_hits\\":\\"0\\",\\"show_noauth\\":\\"0\\",\\"urls_position\\":\\"0\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"1\\",\\"show_article_options\\":\\"1\\",\\"show_urls_images_backend\\":\\"1\\",\\"show_urls_images_frontend\\":\\"1\\"}","version":2,"ordering":"0","metakey":"","metadesc":"","access":"1","hits":"0","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(63, 9, 1, '', '2014-07-21 11:29:22', 303, 1772, 'af034798859401fad272992aef263ac53fce630d', '{"id":9,"asset_id":"155","title":"Isso \\u00e9 um teste","alias":"isso-e-um-teste","introtext":"<p>Ser\\u00e1 que esse artigo ser\\u00e1 publicado??<\\/p>","fulltext":"","state":1,"catid":"8","created":"2014-07-21 07:47:40","created_by":"303","created_by_alias":"","modified":"2014-07-21 11:29:22","modified_by":"303","checked_out":"303","checked_out_time":"2014-07-21 11:28:37","publish_up":"2014-07-21 07:47:34","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"2\\",\\"show_category\\":\\"1\\",\\"link_category\\":\\"1\\",\\"show_parent_category\\":\\"1\\",\\"link_parent_category\\":\\"1\\",\\"show_author\\":\\"1\\",\\"link_author\\":\\"1\\",\\"show_create_date\\":\\"1\\",\\"show_modify_date\\":\\"1\\",\\"show_publish_date\\":\\"1\\",\\"show_item_navigation\\":\\"1\\",\\"show_icons\\":\\"1\\",\\"show_print_icon\\":\\"0\\",\\"show_email_icon\\":\\"0\\",\\"show_vote\\":\\"0\\",\\"show_hits\\":\\"0\\",\\"show_noauth\\":\\"0\\",\\"urls_position\\":\\"0\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"1\\",\\"show_article_options\\":\\"1\\",\\"show_urls_images_backend\\":\\"1\\",\\"show_urls_images_frontend\\":\\"1\\"}","version":3,"ordering":"0","metakey":"","metadesc":"","access":"1","hits":"0","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(64, 9, 1, '', '2014-07-21 14:23:12', 303, 1804, '061305df5eacbecaa2f173fbb687778896550366', '{"id":9,"asset_id":"155","title":"Isso \\u00e9 um teste","alias":"isso-e-um-teste","introtext":"<p>{loadposition user1}<\\/p>\\r\\n<p>Ser\\u00e1 que esse artigo ser\\u00e1 publicado??<\\/p>","fulltext":"","state":1,"catid":"8","created":"2014-07-21 07:47:40","created_by":"303","created_by_alias":"","modified":"2014-07-21 14:23:12","modified_by":"303","checked_out":"303","checked_out_time":"2014-07-21 14:20:23","publish_up":"2014-07-21 07:47:34","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"2\\",\\"show_category\\":\\"1\\",\\"link_category\\":\\"1\\",\\"show_parent_category\\":\\"1\\",\\"link_parent_category\\":\\"1\\",\\"show_author\\":\\"1\\",\\"link_author\\":\\"1\\",\\"show_create_date\\":\\"1\\",\\"show_modify_date\\":\\"1\\",\\"show_publish_date\\":\\"1\\",\\"show_item_navigation\\":\\"1\\",\\"show_icons\\":\\"1\\",\\"show_print_icon\\":\\"0\\",\\"show_email_icon\\":\\"0\\",\\"show_vote\\":\\"0\\",\\"show_hits\\":\\"0\\",\\"show_noauth\\":\\"0\\",\\"urls_position\\":\\"0\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"1\\",\\"show_article_options\\":\\"1\\",\\"show_urls_images_backend\\":\\"1\\",\\"show_urls_images_frontend\\":\\"1\\"}","version":4,"ordering":"0","metakey":"","metadesc":"","access":"1","hits":"0","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(65, 9, 1, '', '2014-07-21 14:29:43', 303, 1804, '99e977d8e19f128ff86ccee351e19faf44490823', '{"id":9,"asset_id":"155","title":"Isso \\u00e9 um teste","alias":"isso-e-um-teste","introtext":"<p>{loadposition user2}<\\/p>\\r\\n<p>Ser\\u00e1 que esse artigo ser\\u00e1 publicado??<\\/p>","fulltext":"","state":1,"catid":"8","created":"2014-07-21 07:47:40","created_by":"303","created_by_alias":"","modified":"2014-07-21 14:29:43","modified_by":"303","checked_out":"303","checked_out_time":"2014-07-21 14:29:28","publish_up":"2014-07-21 07:47:34","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"2\\",\\"show_category\\":\\"1\\",\\"link_category\\":\\"1\\",\\"show_parent_category\\":\\"1\\",\\"link_parent_category\\":\\"1\\",\\"show_author\\":\\"1\\",\\"link_author\\":\\"1\\",\\"show_create_date\\":\\"1\\",\\"show_modify_date\\":\\"1\\",\\"show_publish_date\\":\\"1\\",\\"show_item_navigation\\":\\"1\\",\\"show_icons\\":\\"1\\",\\"show_print_icon\\":\\"0\\",\\"show_email_icon\\":\\"0\\",\\"show_vote\\":\\"0\\",\\"show_hits\\":\\"0\\",\\"show_noauth\\":\\"0\\",\\"urls_position\\":\\"0\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"1\\",\\"show_article_options\\":\\"1\\",\\"show_urls_images_backend\\":\\"1\\",\\"show_urls_images_frontend\\":\\"1\\"}","version":5,"ordering":"0","metakey":"","metadesc":"","access":"1","hits":"0","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(66, 40, 6, '', '2014-07-21 14:43:45', 303, 521, '5f93163967653b5d5394300130e10d9c9a34568d', '{"id":40,"asset_id":157,"parent_id":"1","lft":"77","rgt":78,"level":1,"path":null,"extension":"com_content","title":"Slideshow","alias":"slideshow","note":"","description":"","published":"1","checked_out":null,"checked_out_time":null,"access":"1","params":"{\\"category_layout\\":\\"\\",\\"image\\":\\"\\"}","metadesc":"","metakey":"","metadata":"{\\"author\\":\\"\\",\\"robots\\":\\"\\"}","created_user_id":"303","created_time":"2014-07-21 14:43:45","modified_user_id":null,"modified_time":null,"hits":"0","language":"*","version":null}', 0),
(67, 9, 1, '', '2014-07-21 14:45:58', 303, 1805, 'fc2bdf17660bff1843078c1124131a78e92c501d', '{"id":9,"asset_id":"155","title":"Isso \\u00e9 um teste","alias":"isso-e-um-teste","introtext":"<p>{loadposition footer}<\\/p>\\r\\n<p>Ser\\u00e1 que esse artigo ser\\u00e1 publicado??<\\/p>","fulltext":"","state":1,"catid":"8","created":"2014-07-21 07:47:40","created_by":"303","created_by_alias":"","modified":"2014-07-21 14:45:58","modified_by":"303","checked_out":"303","checked_out_time":"2014-07-21 14:45:49","publish_up":"2014-07-21 07:47:34","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"2\\",\\"show_category\\":\\"1\\",\\"link_category\\":\\"1\\",\\"show_parent_category\\":\\"1\\",\\"link_parent_category\\":\\"1\\",\\"show_author\\":\\"1\\",\\"link_author\\":\\"1\\",\\"show_create_date\\":\\"1\\",\\"show_modify_date\\":\\"1\\",\\"show_publish_date\\":\\"1\\",\\"show_item_navigation\\":\\"1\\",\\"show_icons\\":\\"1\\",\\"show_print_icon\\":\\"0\\",\\"show_email_icon\\":\\"0\\",\\"show_vote\\":\\"0\\",\\"show_hits\\":\\"0\\",\\"show_noauth\\":\\"0\\",\\"urls_position\\":\\"0\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"1\\",\\"show_article_options\\":\\"1\\",\\"show_urls_images_backend\\":\\"1\\",\\"show_urls_images_frontend\\":\\"1\\"}","version":7,"ordering":"0","metakey":"","metadesc":"","access":"1","hits":"0","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(68, 9, 1, '', '2014-07-21 14:49:11', 303, 1809, '510b5e1d2c9dfc1535bc6fa3b8a861806c72a6ba', '{"id":9,"asset_id":"155","title":"Isso \\u00e9 um teste","alias":"isso-e-um-teste","introtext":"<p>{loadposition position-4}<\\/p>\\r\\n<p>Ser\\u00e1 que esse artigo ser\\u00e1 publicado??<\\/p>","fulltext":"","state":1,"catid":"8","created":"2014-07-21 07:47:40","created_by":"303","created_by_alias":"","modified":"2014-07-21 14:49:11","modified_by":"303","checked_out":"303","checked_out_time":"2014-07-21 14:49:00","publish_up":"2014-07-21 07:47:34","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"2\\",\\"show_category\\":\\"1\\",\\"link_category\\":\\"1\\",\\"show_parent_category\\":\\"1\\",\\"link_parent_category\\":\\"1\\",\\"show_author\\":\\"1\\",\\"link_author\\":\\"1\\",\\"show_create_date\\":\\"1\\",\\"show_modify_date\\":\\"1\\",\\"show_publish_date\\":\\"1\\",\\"show_item_navigation\\":\\"1\\",\\"show_icons\\":\\"1\\",\\"show_print_icon\\":\\"0\\",\\"show_email_icon\\":\\"0\\",\\"show_vote\\":\\"0\\",\\"show_hits\\":\\"0\\",\\"show_noauth\\":\\"0\\",\\"urls_position\\":\\"0\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"1\\",\\"show_article_options\\":\\"1\\",\\"show_urls_images_backend\\":\\"1\\",\\"show_urls_images_frontend\\":\\"1\\"}","version":9,"ordering":"0","metakey":"","metadesc":"","access":"1","hits":"0","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(69, 10, 1, '', '2014-07-21 17:09:00', 303, 1709, '2023efc7c67b33dea88dcc3c3f6fbc7aa6fa3aa9', '{"id":10,"asset_id":158,"title":"Isso \\u00e9 um teste 2","alias":"teste-2","introtext":"<p>Eu quero que isso apare\\u00e7a em ultimos artigos<\\/p>","fulltext":"","state":1,"catid":"8","created":"2014-07-21 17:09:00","created_by":"303","created_by_alias":"","modified":"","modified_by":null,"checked_out":null,"checked_out_time":null,"publish_up":"2014-07-21 17:09:00","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":1,"ordering":null,"metakey":"","metadesc":"","access":"1","hits":null,"metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0);
INSERT INTO `iwk5c_ucm_history` (`version_id`, `ucm_item_id`, `ucm_type_id`, `version_note`, `save_date`, `editor_user_id`, `character_count`, `sha1_hash`, `version_data`, `keep_forever`) VALUES
(70, 10, 1, '', '2014-07-21 17:09:23', 303, 1747, '41dad63a3861b25e5ba4bb53be4c657b3f9ccc6a', '{"id":10,"asset_id":"158","title":"Isso \\u00e9 um teste 3","alias":"teste-2","introtext":"<p>Eu quero que isso apare\\u00e7a em ultimos artigos<\\/p>","fulltext":"","state":1,"catid":"8","created":"2014-07-21 17:09:00","created_by":"303","created_by_alias":"","modified":"2014-07-21 17:09:23","modified_by":"303","checked_out":"303","checked_out_time":"2014-07-21 17:09:00","publish_up":"2014-07-21 17:09:00","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":2,"ordering":"0","metakey":"","metadesc":"","access":"1","hits":"0","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(71, 11, 1, '', '2014-07-21 17:11:18', 303, 1700, 'b651bf8835c323272f1d4b54b11e0ad2e96470c9', '{"id":11,"asset_id":159,"title":"Isso \\u00e9 um teste 3","alias":"isso-e-um-teste-3","introtext":"<p>Eu quero que isso apare\\u00e7a<\\/p>","fulltext":"","state":1,"catid":"2","created":"2014-07-21 17:11:18","created_by":"303","created_by_alias":"","modified":"","modified_by":null,"checked_out":null,"checked_out_time":null,"publish_up":"2014-07-21 17:11:18","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":1,"ordering":null,"metakey":"","metadesc":"","access":"1","hits":null,"metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(72, 11, 1, '', '2014-07-21 17:11:36', 303, 1738, '842dffbbcb00eed0a7cf7a534074f8b52e876375', '{"id":11,"asset_id":"159","title":"Isso \\u00e9 um teste 3","alias":"isso-e-um-teste-3","introtext":"<p>Eu quero que isso apare\\u00e7a<\\/p>","fulltext":"","state":1,"catid":"8","created":"2014-07-21 17:11:18","created_by":"303","created_by_alias":"","modified":"2014-07-21 17:11:36","modified_by":"303","checked_out":"303","checked_out_time":"2014-07-21 17:11:31","publish_up":"2014-07-21 17:11:18","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":2,"ordering":"0","metakey":"","metadesc":"","access":"1","hits":"0","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(73, 10, 1, '', '2014-07-21 17:24:03', 303, 1748, '3f213b34837361cc72dd2301e068705d98dc4c8d', '{"id":10,"asset_id":"158","title":"Isso \\u00e9 um teste 2","alias":"teste-2","introtext":"<p>Eu quero que isso apare\\u00e7a em ultimos artigos<\\/p>","fulltext":"","state":1,"catid":"40","created":"2014-07-21 17:09:00","created_by":"303","created_by_alias":"","modified":"2014-07-21 17:24:03","modified_by":"303","checked_out":"303","checked_out_time":"2014-07-21 17:23:49","publish_up":"2014-07-21 17:09:00","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":4,"ordering":"0","metakey":"","metadesc":"","access":"1","hits":"0","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(74, 11, 1, '', '2014-07-21 17:24:27', 303, 1739, 'fd275f016fc904e04db5c31e40f274d56e654496', '{"id":11,"asset_id":"159","title":"Isso \\u00e9 um teste 3","alias":"isso-e-um-teste-3","introtext":"<p>Eu quero que isso apare\\u00e7a<\\/p>","fulltext":"","state":1,"catid":"40","created":"2014-07-21 17:11:18","created_by":"303","created_by_alias":"","modified":"2014-07-21 17:24:27","modified_by":"303","checked_out":"303","checked_out_time":"2014-07-21 17:24:16","publish_up":"2014-07-21 17:11:18","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":3,"ordering":"0","metakey":"","metadesc":"","access":"1","hits":"0","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(75, 40, 6, '', '2014-07-21 17:25:47', 303, 581, 'dd3879998b7231eb43d6c90caf69a79218772d4d', '{"id":40,"asset_id":"157","parent_id":"1","lft":"77","rgt":"78","level":"1","path":"slideshow","extension":"com_content","title":"Ultimas Not\\u00edcias","alias":"slideshow","note":"","description":"","published":"1","checked_out":"303","checked_out_time":"2014-07-21 17:25:38","access":"1","params":"{\\"category_layout\\":\\"\\",\\"image\\":\\"\\"}","metadesc":"","metakey":"","metadata":"{\\"author\\":\\"\\",\\"robots\\":\\"\\"}","created_user_id":"303","created_time":"2014-07-21 14:43:45","modified_user_id":"303","modified_time":"2014-07-21 17:25:47","hits":"0","language":"*","version":"1"}', 0),
(76, 11, 1, '', '2014-07-21 17:43:58', 303, 1801, '49b40fa353657d68a2a65fe7df40023d04a1623b', '{"id":11,"asset_id":"159","title":"Isso \\u00e9 um teste 3","alias":"isso-e-um-teste-3","introtext":"<p>Eu quero que isso apare\\u00e7a<\\/p>","fulltext":"","state":1,"catid":"40","created":"2014-07-21 17:11:18","created_by":"303","created_by_alias":"","modified":"2014-07-21 17:43:58","modified_by":"303","checked_out":"303","checked_out_time":"2014-07-21 17:36:12","publish_up":"2014-07-21 17:11:18","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":4,"ordering":"0","metakey":"","metadesc":"Ferrovi\\u00e1rios fazem assembleia para decidir uma nova greve","access":"1","hits":"0","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(77, 9, 1, '', '2014-07-23 12:09:38', 303, 2977, '76753d5549cb18e79e4cebfbb55acfd492f0f8dd', '{"id":9,"asset_id":"155","title":"Isso \\u00e9 um teste","alias":"isso-e-um-teste","introtext":"<p>{loadposition position-4}<\\/p>\\r\\n<p style=\\"text-align: justify;\\">Ap\\u00f3s quase 15 anos de espera, o Metr\\u00f4 de Salvador finalmente poder\\u00e1 ser inaugurado em sua fase experimental que ser\\u00e1 iniciado a partir do dia 11 de Junho. O projeto foi iniciado no ano de 2000 pela prefeitura de Salvador, por\\u00e9m neste per\\u00edodo a projeto sofreu diversos atrasos na obra. A transi\\u00e7\\u00e3o da responsabilidade do projeto do metr\\u00f4 da prefeitura para o governo do estado em 2013 fez com que em menos de 1 ano o sonho que at\\u00e9 ent\\u00e3o era considerado inalcan\\u00e7\\u00e1vel se torna-se uma realidade.<\\/p>\\r\\n<p style=\\"text-align: justify;\\">A fase experimental ter\\u00e1 dura\\u00e7\\u00e3o at\\u00e9 setembro e a opera\\u00e7\\u00e3o ser\\u00e1 realizada entre as esta\\u00e7\\u00f5es da Lapa e do Retiro, de segunda a sexta feira, nos hor\\u00e1rios de 12 \\u00e0s 16 horas. Durante este per\\u00edodo, o metr\\u00f4 n\\u00e3o funcionar\\u00e1 aos finais de semana e ter\\u00e1 o seu acesso restrito em dias de jogos da copa.O intervalo entre os trens ser\\u00e1 de 10 minutos, sem cobran\\u00e7a de tarifas.<\\/p>\\r\\n<p><span style=\\"line-height: 1.5;\\">Acesse o site do metr\\u00f4 <a href=\\"http:\\/\\/www.metro.ba.gov.br\\">aqui<\\/a><\\/span><\\/p>","fulltext":"","state":1,"catid":"8","created":"2014-07-21 00:00:00","created_by":"303","created_by_alias":"","modified":"2014-07-23 12:09:38","modified_by":"303","checked_out":"303","checked_out_time":"2014-07-23 12:09:26","publish_up":"2014-07-21 07:47:34","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"2\\",\\"show_category\\":\\"1\\",\\"link_category\\":\\"1\\",\\"show_parent_category\\":\\"1\\",\\"link_parent_category\\":\\"1\\",\\"show_author\\":\\"1\\",\\"link_author\\":\\"1\\",\\"show_create_date\\":\\"1\\",\\"show_modify_date\\":\\"1\\",\\"show_publish_date\\":\\"1\\",\\"show_item_navigation\\":\\"1\\",\\"show_icons\\":\\"1\\",\\"show_print_icon\\":\\"0\\",\\"show_email_icon\\":\\"0\\",\\"show_vote\\":\\"0\\",\\"show_hits\\":\\"0\\",\\"show_noauth\\":\\"0\\",\\"urls_position\\":\\"0\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"1\\",\\"show_article_options\\":\\"1\\",\\"show_urls_images_backend\\":\\"1\\",\\"show_urls_images_frontend\\":\\"1\\"}","version":10,"ordering":"1","metakey":"","metadesc":"","access":"1","hits":"0","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(78, 9, 1, '', '2014-07-23 12:10:01', 303, 3004, '5d7167db1bd6f84cb0e0af68af53b6d050eedb9c', '{"id":9,"asset_id":"155","title":"Inaugura\\u00e7\\u00e3o do Metr\\u00f4 de Salvador","alias":"isso-e-um-teste","introtext":"<p>{loadposition position-4}<\\/p>\\r\\n<p style=\\"text-align: justify;\\">Ap\\u00f3s quase 15 anos de espera, o Metr\\u00f4 de Salvador finalmente poder\\u00e1 ser inaugurado em sua fase experimental que ser\\u00e1 iniciado a partir do dia 11 de Junho. O projeto foi iniciado no ano de 2000 pela prefeitura de Salvador, por\\u00e9m neste per\\u00edodo a projeto sofreu diversos atrasos na obra. A transi\\u00e7\\u00e3o da responsabilidade do projeto do metr\\u00f4 da prefeitura para o governo do estado em 2013 fez com que em menos de 1 ano o sonho que at\\u00e9 ent\\u00e3o era considerado inalcan\\u00e7\\u00e1vel se torna-se uma realidade.<\\/p>\\r\\n<p style=\\"text-align: justify;\\">A fase experimental ter\\u00e1 dura\\u00e7\\u00e3o at\\u00e9 setembro e a opera\\u00e7\\u00e3o ser\\u00e1 realizada entre as esta\\u00e7\\u00f5es da Lapa e do Retiro, de segunda a sexta feira, nos hor\\u00e1rios de 12 \\u00e0s 16 horas. Durante este per\\u00edodo, o metr\\u00f4 n\\u00e3o funcionar\\u00e1 aos finais de semana e ter\\u00e1 o seu acesso restrito em dias de jogos da copa.O intervalo entre os trens ser\\u00e1 de 10 minutos, sem cobran\\u00e7a de tarifas.<\\/p>\\r\\n<p><span style=\\"line-height: 1.5;\\">Acesse o site do metr\\u00f4 <a href=\\"http:\\/\\/www.metro.ba.gov.br\\">aqui<\\/a><\\/span><\\/p>","fulltext":"","state":1,"catid":"8","created":"2014-07-21 00:00:00","created_by":"303","created_by_alias":"","modified":"2014-07-23 12:10:01","modified_by":"303","checked_out":"303","checked_out_time":"2014-07-23 12:09:43","publish_up":"2014-07-21 07:47:34","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"2\\",\\"show_category\\":\\"1\\",\\"link_category\\":\\"1\\",\\"show_parent_category\\":\\"1\\",\\"link_parent_category\\":\\"1\\",\\"show_author\\":\\"1\\",\\"link_author\\":\\"1\\",\\"show_create_date\\":\\"1\\",\\"show_modify_date\\":\\"1\\",\\"show_publish_date\\":\\"1\\",\\"show_item_navigation\\":\\"1\\",\\"show_icons\\":\\"1\\",\\"show_print_icon\\":\\"0\\",\\"show_email_icon\\":\\"0\\",\\"show_vote\\":\\"0\\",\\"show_hits\\":\\"0\\",\\"show_noauth\\":\\"0\\",\\"urls_position\\":\\"0\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"1\\",\\"show_article_options\\":\\"1\\",\\"show_urls_images_backend\\":\\"1\\",\\"show_urls_images_frontend\\":\\"1\\"}","version":11,"ordering":"1","metakey":"","metadesc":"","access":"1","hits":"0","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(79, 12, 1, '', '2014-07-23 12:38:26', 303, 2931, 'bda526c1d34a4cd1c2554c566de669434fd5015a', '{"id":12,"asset_id":164,"title":"Inaugura\\u00e7\\u00e3o Metr\\u00f4","alias":"inauguracao-metro","introtext":"<p>{loadposition position-4}<\\/p>\\r\\n<p style=\\"text-align: justify;\\">Ap\\u00f3s quase 15 anos de espera, o Metr\\u00f4 de Salvador finalmente poder\\u00e1 ser inaugurado em sua fase experimental que ser\\u00e1 iniciado a partir do dia 11 de Junho. O projeto foi iniciado no ano de 2000 pela prefeitura de Salvador, por\\u00e9m neste per\\u00edodo a projeto sofreu diversos atrasos na obra. A transi\\u00e7\\u00e3o da responsabilidade do projeto do metr\\u00f4 da prefeitura para o governo do estado em 2013 fez com que em menos de 1 ano o sonho que at\\u00e9 ent\\u00e3o era considerado inalcan\\u00e7\\u00e1vel se torna-se uma realidade.<\\/p>\\r\\n<p style=\\"text-align: justify;\\">A fase experimental ter\\u00e1 dura\\u00e7\\u00e3o at\\u00e9 setembro e a opera\\u00e7\\u00e3o ser\\u00e1 realizada entre as esta\\u00e7\\u00f5es da Lapa e do Retiro, de segunda a sexta feira, nos hor\\u00e1rios de 12 \\u00e0s 16 horas. Durante este per\\u00edodo, o metr\\u00f4 n\\u00e3o funcionar\\u00e1 aos finais de semana e ter\\u00e1 o seu acesso restrito em dias de jogos da copa.O intervalo entre os trens ser\\u00e1 de 10 minutos, sem cobran\\u00e7a de tarifas.<\\/p>\\r\\n<p><span style=\\"line-height: 1.5;\\">Acesse o site do metr\\u00f4 <a href=\\"http:\\/\\/www.metro.ba.gov.br\\">aqui<\\/a><\\/span><\\/p>","fulltext":"","state":1,"catid":"8","created":"2014-07-23 12:38:26","created_by":"303","created_by_alias":"","modified":"","modified_by":null,"checked_out":null,"checked_out_time":null,"publish_up":"2014-07-23 12:38:26","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":1,"ordering":null,"metakey":"","metadesc":"","access":"1","hits":null,"metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(80, 12, 1, '', '2014-07-23 12:49:55', 303, 3145, '1f0bd2f55a9cbcc8480c1578a0e7a74f1d164e72', '{"id":12,"asset_id":"164","title":"Inaugura\\u00e7\\u00e3o Metr\\u00f4","alias":"inauguracao-metro","introtext":"<p>{loadposition position-4}<\\/p>\\r\\n<p style=\\"text-align: justify;\\">Ap\\u00f3s quase 15 anos de espera, o Metr\\u00f4 de Salvador finalmente poder\\u00e1 ser inaugurado em sua fase experimental que ser\\u00e1 iniciado a partir do dia 11 de Junho. O projeto foi iniciado no ano de 2000 pela prefeitura de Salvador, por\\u00e9m neste per\\u00edodo a projeto sofreu diversos atrasos na obra. A transi\\u00e7\\u00e3o da responsabilidade do projeto do metr\\u00f4 da prefeitura para o governo do estado em 2013 fez com que em menos de 1 ano o sonho que at\\u00e9 ent\\u00e3o era considerado inalcan\\u00e7\\u00e1vel se torna-se uma realidade.<\\/p>\\r\\n<p style=\\"text-align: justify;\\">A fase experimental ter\\u00e1 dura\\u00e7\\u00e3o at\\u00e9 setembro e a opera\\u00e7\\u00e3o ser\\u00e1 realizada entre as esta\\u00e7\\u00f5es da Lapa e do Retiro, de segunda a sexta feira, nos hor\\u00e1rios de 12 \\u00e0s 16 horas. Durante este per\\u00edodo, o metr\\u00f4 n\\u00e3o funcionar\\u00e1 aos finais de semana e ter\\u00e1 o seu acesso restrito em dias de jogos da copa.O intervalo entre os trens ser\\u00e1 de 10 minutos, sem cobran\\u00e7a de tarifas.<\\/p>\\r\\n<p><span style=\\"line-height: 1.5;\\">Acesse o site do metr\\u00f4 <a href=\\"http:\\/\\/www.metro.ba.gov.br\\">aqui<\\/a><\\/span><\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p><span style=\\"line-height: 1.5;\\">{loadposition position-5}<\\/span><\\/p>\\r\\n<p><span style=\\"line-height: 1.5;\\">{loadposition position-6}<\\/span><\\/p>","fulltext":"","state":1,"catid":"8","created":"2014-07-23 12:38:26","created_by":"303","created_by_alias":"","modified":"2014-07-23 12:49:55","modified_by":"303","checked_out":"303","checked_out_time":"2014-07-23 12:49:20","publish_up":"2014-07-23 12:38:26","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":2,"ordering":"0","metakey":"","metadesc":"","access":"1","hits":"8","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(81, 12, 1, '', '2014-07-23 12:50:17', 303, 3211, '60366d870c296b1cf5f0463abab5be0ad4a342e1', '{"id":12,"asset_id":"164","title":"Inaugura\\u00e7\\u00e3o Metr\\u00f4","alias":"inauguracao-metro","introtext":"<p>{loadposition position-4}<\\/p>\\r\\n<p style=\\"text-align: justify;\\">Ap\\u00f3s quase 15 anos de espera, o Metr\\u00f4 de Salvador finalmente poder\\u00e1 ser inaugurado em sua fase experimental que ser\\u00e1 iniciado a partir do dia 11 de Junho. O projeto foi iniciado no ano de 2000 pela prefeitura de Salvador, por\\u00e9m neste per\\u00edodo a projeto sofreu diversos atrasos na obra. A transi\\u00e7\\u00e3o da responsabilidade do projeto do metr\\u00f4 da prefeitura para o governo do estado em 2013 fez com que em menos de 1 ano o sonho que at\\u00e9 ent\\u00e3o era considerado inalcan\\u00e7\\u00e1vel se torna-se uma realidade.<\\/p>\\r\\n<p style=\\"text-align: justify;\\">A fase experimental ter\\u00e1 dura\\u00e7\\u00e3o at\\u00e9 setembro e a opera\\u00e7\\u00e3o ser\\u00e1 realizada entre as esta\\u00e7\\u00f5es da Lapa e do Retiro, de segunda a sexta feira, nos hor\\u00e1rios de 12 \\u00e0s 16 horas. Durante este per\\u00edodo, o metr\\u00f4 n\\u00e3o funcionar\\u00e1 aos finais de semana e ter\\u00e1 o seu acesso restrito em dias de jogos da copa.O intervalo entre os trens ser\\u00e1 de 10 minutos, sem cobran\\u00e7a de tarifas.<\\/p>\\r\\n<p><span style=\\"line-height: 1.5;\\">Acesse o site do metr\\u00f4 <a href=\\"http:\\/\\/www.metro.ba.gov.br\\">aqui<\\/a><\\/span><\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p>\\u00a0<span style=\\"line-height: 1.5;\\">{loadposition position-6}<\\/span><\\/p>\\r\\n<p><span style=\\"line-height: 1.5;\\">{loadposition position-5}<\\/span><\\/p>\\r\\n<p><span style=\\"line-height: 1.5;\\">\\u00a0<\\/span><\\/p>","fulltext":"","state":1,"catid":"8","created":"2014-07-23 12:38:26","created_by":"303","created_by_alias":"","modified":"2014-07-23 12:50:17","modified_by":"303","checked_out":"303","checked_out_time":"2014-07-23 12:49:55","publish_up":"2014-07-23 12:38:26","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":3,"ordering":"0","metakey":"","metadesc":"","access":"1","hits":"9","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(82, 13, 1, '', '2014-07-23 13:07:51', 303, 1689, 'e1184bdaecdbef6076859b9d359e956585f1fc0f', '{"id":13,"asset_id":165,"title":"Blablalba","alias":"blablalba","introtext":"<p>isso aqui \\u00e9 um verdadeiro blablabla<\\/p>","fulltext":"","state":1,"catid":"8","created":"2014-07-23 13:07:51","created_by":"303","created_by_alias":"","modified":"","modified_by":null,"checked_out":null,"checked_out_time":null,"publish_up":"2014-07-23 13:07:51","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":1,"ordering":null,"metakey":"","metadesc":"","access":"1","hits":null,"metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(83, 12, 1, '', '2014-07-23 13:08:55', 303, 3213, '25d4eef89aa98184935abd445ae148a391ef3607', '{"id":12,"asset_id":"164","title":"Inaugura\\u00e7\\u00e3o Metr\\u00f4","alias":"inauguracao-metro","introtext":"<p>{loadposition position-4}<\\/p>\\r\\n<p style=\\"text-align: justify;\\">Ap\\u00f3s quase 15 anos de espera, o Metr\\u00f4 de Salvador finalmente poder\\u00e1 ser inaugurado em sua fase experimental que ser\\u00e1 iniciado a partir do dia 11 de Junho. O projeto foi iniciado no ano de 2000 pela prefeitura de Salvador, por\\u00e9m neste per\\u00edodo a projeto sofreu diversos atrasos na obra. A transi\\u00e7\\u00e3o da responsabilidade do projeto do metr\\u00f4 da prefeitura para o governo do estado em 2013 fez com que em menos de 1 ano o sonho que at\\u00e9 ent\\u00e3o era considerado inalcan\\u00e7\\u00e1vel se torna-se uma realidade.<\\/p>\\r\\n<p style=\\"text-align: justify;\\">A fase experimental ter\\u00e1 dura\\u00e7\\u00e3o at\\u00e9 setembro e a opera\\u00e7\\u00e3o ser\\u00e1 realizada entre as esta\\u00e7\\u00f5es da Lapa e do Retiro, de segunda a sexta feira, nos hor\\u00e1rios de 12 \\u00e0s 16 horas. Durante este per\\u00edodo, o metr\\u00f4 n\\u00e3o funcionar\\u00e1 aos finais de semana e ter\\u00e1 o seu acesso restrito em dias de jogos da copa.O intervalo entre os trens ser\\u00e1 de 10 minutos, sem cobran\\u00e7a de tarifas.<\\/p>\\r\\n<p><span style=\\"line-height: 1.5;\\">Acesse o site do metr\\u00f4 <a href=\\"http:\\/\\/www.metro.ba.gov.br\\">aqui<\\/a><\\/span><\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p>\\u00a0<span style=\\"line-height: 1.5;\\">{loadposition position-6}<\\/span><\\/p>\\r\\n<p><span style=\\"line-height: 1.5;\\">{loadposition position-5}<\\/span><\\/p>\\r\\n<p><span style=\\"line-height: 1.5;\\">\\u00a0<\\/span><\\/p>","fulltext":"","state":1,"catid":"40","created":"2014-07-23 12:38:26","created_by":"303","created_by_alias":"","modified":"2014-07-23 13:08:55","modified_by":"303","checked_out":"303","checked_out_time":"2014-07-23 13:08:37","publish_up":"2014-07-23 12:38:26","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":4,"ordering":"1","metakey":"","metadesc":"","access":"1","hits":"13","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(84, 13, 1, '', '2014-07-23 13:09:49', 303, 1782, '85052822cf722e1219daf6cf912066ec251fe7c3', '{"id":13,"asset_id":"165","title":"Blablalba","alias":"blablalba","introtext":"<p>isso aqui \\u00e9 um verdadeiro blablabla<\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p>{loadposition position-6}<\\/p>","fulltext":"","state":1,"catid":"8","created":"2014-07-23 13:07:51","created_by":"303","created_by_alias":"","modified":"2014-07-23 13:09:49","modified_by":"303","checked_out":"303","checked_out_time":"2014-07-23 13:09:28","publish_up":"2014-07-23 13:07:51","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":2,"ordering":"0","metakey":"","metadesc":"","access":"1","hits":"0","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(85, 12, 1, '', '2014-07-23 14:05:56', 303, 3212, '680ddb08017b26cb2af3b11de84d878f93597479', '{"id":12,"asset_id":"164","title":"Inaugura\\u00e7\\u00e3o Metr\\u00f4","alias":"inauguracao-metro","introtext":"<p>{loadposition position-4}<\\/p>\\r\\n<p style=\\"text-align: justify;\\">Ap\\u00f3s quase 15 anos de espera, o Metr\\u00f4 de Salvador finalmente poder\\u00e1 ser inaugurado em sua fase experimental que ser\\u00e1 iniciado a partir do dia 11 de Junho. O projeto foi iniciado no ano de 2000 pela prefeitura de Salvador, por\\u00e9m neste per\\u00edodo a projeto sofreu diversos atrasos na obra. A transi\\u00e7\\u00e3o da responsabilidade do projeto do metr\\u00f4 da prefeitura para o governo do estado em 2013 fez com que em menos de 1 ano o sonho que at\\u00e9 ent\\u00e3o era considerado inalcan\\u00e7\\u00e1vel se torna-se uma realidade.<\\/p>\\r\\n<p style=\\"text-align: justify;\\">A fase experimental ter\\u00e1 dura\\u00e7\\u00e3o at\\u00e9 setembro e a opera\\u00e7\\u00e3o ser\\u00e1 realizada entre as esta\\u00e7\\u00f5es da Lapa e do Retiro, de segunda a sexta feira, nos hor\\u00e1rios de 12 \\u00e0s 16 horas. Durante este per\\u00edodo, o metr\\u00f4 n\\u00e3o funcionar\\u00e1 aos finais de semana e ter\\u00e1 o seu acesso restrito em dias de jogos da copa.O intervalo entre os trens ser\\u00e1 de 10 minutos, sem cobran\\u00e7a de tarifas.<\\/p>\\r\\n<p><span style=\\"line-height: 1.5;\\">Acesse o site do metr\\u00f4 <a href=\\"http:\\/\\/www.metro.ba.gov.br\\">aqui<\\/a><\\/span><\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p>\\u00a0<span style=\\"line-height: 1.5;\\">{loadposition position-6}<\\/span><\\/p>\\r\\n<p><span style=\\"line-height: 1.5;\\">{loadposition position-5}<\\/span><\\/p>\\r\\n<p><span style=\\"line-height: 1.5;\\">\\u00a0<\\/span><\\/p>","fulltext":"","state":1,"catid":"8","created":"2014-07-23 12:38:26","created_by":"303","created_by_alias":"","modified":"2014-07-23 14:05:56","modified_by":"303","checked_out":"303","checked_out_time":"2014-07-23 14:05:44","publish_up":"2014-07-23 12:38:26","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":5,"ordering":"1","metakey":"","metadesc":"","access":"1","hits":"24","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(86, 13, 1, '', '2014-07-23 14:07:14', 303, 1783, 'ef4dcc0e8444b6573560ab22050db2a85e72b8b8', '{"id":13,"asset_id":"165","title":"Blablalba","alias":"blablalba","introtext":"<p>isso aqui \\u00e9 um verdadeiro blablabla<\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p>{loadposition position-6}<\\/p>","fulltext":"","state":1,"catid":"40","created":"2014-07-23 13:07:51","created_by":"303","created_by_alias":"","modified":"2014-07-23 14:07:14","modified_by":"303","checked_out":"303","checked_out_time":"2014-07-23 14:07:03","publish_up":"2014-07-23 13:07:51","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":3,"ordering":"0","metakey":"","metadesc":"","access":"1","hits":"0","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(87, 12, 1, '', '2014-07-23 14:08:41', 303, 3291, 'b272632b6b2de2113f285b8efab37a3352a1251b', '{"id":12,"asset_id":"164","title":"Inaugura\\u00e7\\u00e3o Metr\\u00f4","alias":"inauguracao-metro","introtext":"<h1>Inaugura\\u00e7\\u00e3o do Metr\\u00f4 de Salvador<\\/h1>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p>{loadposition position-4}<\\/p>\\r\\n<p style=\\"text-align: justify;\\">Ap\\u00f3s quase 15 anos de espera, o Metr\\u00f4 de Salvador finalmente poder\\u00e1 ser inaugurado em sua fase experimental que ser\\u00e1 iniciado a partir do dia 11 de Junho. O projeto foi iniciado no ano de 2000 pela prefeitura de Salvador, por\\u00e9m neste per\\u00edodo a projeto sofreu diversos atrasos na obra. A transi\\u00e7\\u00e3o da responsabilidade do projeto do metr\\u00f4 da prefeitura para o governo do estado em 2013 fez com que em menos de 1 ano o sonho que at\\u00e9 ent\\u00e3o era considerado inalcan\\u00e7\\u00e1vel se torna-se uma realidade.<\\/p>\\r\\n<p style=\\"text-align: justify;\\">A fase experimental ter\\u00e1 dura\\u00e7\\u00e3o at\\u00e9 setembro e a opera\\u00e7\\u00e3o ser\\u00e1 realizada entre as esta\\u00e7\\u00f5es da Lapa e do Retiro, de segunda a sexta feira, nos hor\\u00e1rios de 12 \\u00e0s 16 horas. Durante este per\\u00edodo, o metr\\u00f4 n\\u00e3o funcionar\\u00e1 aos finais de semana e ter\\u00e1 o seu acesso restrito em dias de jogos da copa.O intervalo entre os trens ser\\u00e1 de 10 minutos, sem cobran\\u00e7a de tarifas.<\\/p>\\r\\n<p><span style=\\"line-height: 1.5;\\">Acesse o site do metr\\u00f4 <a href=\\"http:\\/\\/www.metro.ba.gov.br\\">aqui<\\/a><\\/span><\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p>\\u00a0<span style=\\"line-height: 1.5;\\">{loadposition position-6}<\\/span><\\/p>\\r\\n<p><span style=\\"line-height: 1.5;\\">{loadposition position-5}<\\/span><\\/p>\\r\\n<p><span style=\\"line-height: 1.5;\\">\\u00a0<\\/span><\\/p>","fulltext":"","state":1,"catid":"8","created":"2014-07-23 12:38:26","created_by":"303","created_by_alias":"","modified":"2014-07-23 14:08:41","modified_by":"303","checked_out":"303","checked_out_time":"2014-07-23 14:07:35","publish_up":"2014-07-23 12:38:26","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":6,"ordering":"1","metakey":"","metadesc":"","access":"1","hits":"24","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0);
INSERT INTO `iwk5c_ucm_history` (`version_id`, `ucm_item_id`, `ucm_type_id`, `version_note`, `save_date`, `editor_user_id`, `character_count`, `sha1_hash`, `version_data`, `keep_forever`) VALUES
(88, 12, 1, '', '2014-07-23 14:10:04', 303, 3291, '2ccd80df67deaf05fcef264f46559a904403f3d9', '{"id":12,"asset_id":"164","title":"Inaugura\\u00e7\\u00e3o Metr\\u00f4","alias":"inauguracao-metro","introtext":"<h2>Inaugura\\u00e7\\u00e3o do Metr\\u00f4 de Salvador<\\/h2>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p>{loadposition position-4}<\\/p>\\r\\n<p style=\\"text-align: justify;\\">Ap\\u00f3s quase 15 anos de espera, o Metr\\u00f4 de Salvador finalmente poder\\u00e1 ser inaugurado em sua fase experimental que ser\\u00e1 iniciado a partir do dia 11 de Junho. O projeto foi iniciado no ano de 2000 pela prefeitura de Salvador, por\\u00e9m neste per\\u00edodo a projeto sofreu diversos atrasos na obra. A transi\\u00e7\\u00e3o da responsabilidade do projeto do metr\\u00f4 da prefeitura para o governo do estado em 2013 fez com que em menos de 1 ano o sonho que at\\u00e9 ent\\u00e3o era considerado inalcan\\u00e7\\u00e1vel se torna-se uma realidade.<\\/p>\\r\\n<p style=\\"text-align: justify;\\">A fase experimental ter\\u00e1 dura\\u00e7\\u00e3o at\\u00e9 setembro e a opera\\u00e7\\u00e3o ser\\u00e1 realizada entre as esta\\u00e7\\u00f5es da Lapa e do Retiro, de segunda a sexta feira, nos hor\\u00e1rios de 12 \\u00e0s 16 horas. Durante este per\\u00edodo, o metr\\u00f4 n\\u00e3o funcionar\\u00e1 aos finais de semana e ter\\u00e1 o seu acesso restrito em dias de jogos da copa.O intervalo entre os trens ser\\u00e1 de 10 minutos, sem cobran\\u00e7a de tarifas.<\\/p>\\r\\n<p><span style=\\"line-height: 1.5;\\">Acesse o site do metr\\u00f4 <a href=\\"http:\\/\\/www.metro.ba.gov.br\\">aqui<\\/a><\\/span><\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p>\\u00a0<span style=\\"line-height: 1.5;\\">{loadposition position-6}<\\/span><\\/p>\\r\\n<p><span style=\\"line-height: 1.5;\\">{loadposition position-5}<\\/span><\\/p>\\r\\n<p><span style=\\"line-height: 1.5;\\">\\u00a0<\\/span><\\/p>","fulltext":"","state":1,"catid":"8","created":"2014-07-23 12:38:26","created_by":"303","created_by_alias":"","modified":"2014-07-23 14:10:04","modified_by":"303","checked_out":"303","checked_out_time":"2014-07-23 14:08:41","publish_up":"2014-07-23 12:38:26","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":7,"ordering":"1","metakey":"","metadesc":"","access":"1","hits":"24","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(89, 13, 1, '', '2015-01-05 13:41:43', 303, 1778, '98a198da926fc39f5cf69f14d95e6a68f146c533', '{"id":13,"asset_id":"165","title":"Blablalba","alias":"blablalba","introtext":"<p>isso aqui \\u00e9 um verdadeiro blablabla<\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p>{loadposition debug}<\\/p>","fulltext":"","state":1,"catid":"40","created":"2014-07-23 13:07:51","created_by":"303","created_by_alias":"","modified":"2015-01-05 13:41:43","modified_by":"303","checked_out":"303","checked_out_time":"2015-01-05 13:41:28","publish_up":"2014-07-23 13:07:51","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":4,"ordering":"0","metakey":"","metadesc":"","access":"1","hits":"0","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(90, 12, 1, '', '2015-01-23 22:36:25', 303, 2994, 'a8dbd8f9b643290128751d199bb443a8b9473f6d', '{"id":12,"asset_id":"164","title":"Inaugura\\u00e7\\u00e3o Metr\\u00f4","alias":"inauguracao-metro","introtext":"<h2>Inaugura\\u00e7\\u00e3o do Metr\\u00f4 de Salvador<\\/h2>\\r\\n<p style=\\"text-align: justify;\\">Ap\\u00f3s quase 15 anos de espera, o Metr\\u00f4 de Salvador finalmente poder\\u00e1 ser inaugurado em sua fase experimental que ser\\u00e1 iniciado a partir do dia 11 de Junho. O projeto foi iniciado no ano de 2000 pela prefeitura de Salvador, por\\u00e9m neste per\\u00edodo a projeto sofreu diversos atrasos na obra. A transi\\u00e7\\u00e3o da responsabilidade do projeto do metr\\u00f4 da prefeitura para o governo do estado em 2013 fez com que em menos de 1 ano o sonho que at\\u00e9 ent\\u00e3o era considerado inalcan\\u00e7\\u00e1vel se torna-se uma realidade.<\\/p>\\r\\n<p style=\\"text-align: justify;\\">A fase experimental ter\\u00e1 dura\\u00e7\\u00e3o at\\u00e9 setembro e a opera\\u00e7\\u00e3o ser\\u00e1 realizada entre as esta\\u00e7\\u00f5es da Lapa e do Retiro, de segunda a sexta feira, nos hor\\u00e1rios de 12 \\u00e0s 16 horas. Durante este per\\u00edodo, o metr\\u00f4 n\\u00e3o funcionar\\u00e1 aos finais de semana e ter\\u00e1 o seu acesso restrito em dias de jogos da copa.O intervalo entre os trens ser\\u00e1 de 10 minutos, sem cobran\\u00e7a de tarifas.<\\/p>\\r\\n<p><span style=\\"line-height: 1.5;\\">Acesse o site do metr\\u00f4 <a href=\\"http:\\/\\/www.metro.ba.gov.br\\">aqui<\\/a><\\/span><\\/p>","fulltext":"","state":1,"catid":"8","created":"2014-07-23 12:38:26","created_by":"303","created_by_alias":"","modified":"2015-01-23 22:36:25","modified_by":"303","checked_out":"303","checked_out_time":"2015-01-23 22:36:13","publish_up":"2014-07-23 12:38:26","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":8,"ordering":"1","metakey":"","metadesc":"","access":"1","hits":"24","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `iwk5c_updates`
--

CREATE TABLE IF NOT EXISTS `iwk5c_updates` (
`update_id` int(11) NOT NULL,
  `update_site_id` int(11) DEFAULT '0',
  `extension_id` int(11) DEFAULT '0',
  `name` varchar(100) DEFAULT '',
  `description` text NOT NULL,
  `element` varchar(100) DEFAULT '',
  `type` varchar(20) DEFAULT '',
  `folder` varchar(20) DEFAULT '',
  `client_id` tinyint(3) DEFAULT '0',
  `version` varchar(32) DEFAULT '',
  `data` text NOT NULL,
  `detailsurl` text NOT NULL,
  `infourl` text NOT NULL,
  `extra_query` varchar(1000) DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Available Updates';

-- --------------------------------------------------------

--
-- Estrutura da tabela `iwk5c_update_sites`
--

CREATE TABLE IF NOT EXISTS `iwk5c_update_sites` (
`update_site_id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT '',
  `type` varchar(20) DEFAULT '',
  `location` text NOT NULL,
  `enabled` int(11) DEFAULT '0',
  `last_check_timestamp` bigint(20) DEFAULT '0',
  `extra_query` varchar(1000) DEFAULT ''
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COMMENT='Update Sites';

--
-- Extraindo dados da tabela `iwk5c_update_sites`
--

INSERT INTO `iwk5c_update_sites` (`update_site_id`, `name`, `type`, `location`, `enabled`, `last_check_timestamp`, `extra_query`) VALUES
(1, 'Joomla Core', 'collection', 'http://update.joomla.org/core/list.xml', 0, 0, ''),
(2, 'Joomla Extension Directory', 'collection', 'http://update.joomla.org/jed/list.xml', 0, 0, ''),
(3, 'Accredited Joomla! Translations', 'collection', 'http://update.joomla.org/language/translationlist_3.xml', 0, 0, ''),
(4, 'imageshow', 'collection', 'http://localhost/joomla/administrator/index.php?option=com_imageshow&task=checkUpdate&file=update.xml', 0, 0, ''),
(5, 'Visforms', 'extension', 'http://vi-solutions.de/updates/visforms/extension.xml', 0, 0, ''),
(6, '', 'collection', 'http://update.joomlart.com/service/tracking/list.xml', 0, 0, ''),
(7, 'T3 Framework Update', 'extension', 'http://www.t3-framework.org/update.xml', 0, 0, ''),
(8, 'Blackdale', 'extension', 'http://updates.blackdale.com/update/modblank250/modblank250.xml', 0, 0, ''),
(9, 'MijoPolls Updates', 'extension', 'http://mijosoft.com/joomla_updates.xml', 1, 1422075004, '');

-- --------------------------------------------------------

--
-- Estrutura da tabela `iwk5c_update_sites_extensions`
--

CREATE TABLE IF NOT EXISTS `iwk5c_update_sites_extensions` (
  `update_site_id` int(11) NOT NULL DEFAULT '0',
  `extension_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Links extensions to update sites';

--
-- Extraindo dados da tabela `iwk5c_update_sites_extensions`
--

INSERT INTO `iwk5c_update_sites_extensions` (`update_site_id`, `extension_id`) VALUES
(1, 700),
(2, 700),
(3, 600),
(4, 704),
(5, 719),
(6, 723),
(6, 724),
(6, 725),
(7, 726),
(8, 727),
(9, 728);

-- --------------------------------------------------------

--
-- Estrutura da tabela `iwk5c_usergroups`
--

CREATE TABLE IF NOT EXISTS `iwk5c_usergroups` (
`id` int(10) unsigned NOT NULL COMMENT 'Primary Key',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Adjacency List Reference Id',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `title` varchar(100) NOT NULL DEFAULT ''
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `iwk5c_usergroups`
--

INSERT INTO `iwk5c_usergroups` (`id`, `parent_id`, `lft`, `rgt`, `title`) VALUES
(1, 0, 1, 18, 'Public'),
(2, 1, 8, 15, 'Registered'),
(3, 2, 9, 14, 'Author'),
(4, 3, 10, 13, 'Editor'),
(5, 4, 11, 12, 'Publisher'),
(6, 1, 4, 7, 'Manager'),
(7, 6, 5, 6, 'Administrator'),
(8, 1, 16, 17, 'Super Users'),
(9, 1, 2, 3, 'Guest');

-- --------------------------------------------------------

--
-- Estrutura da tabela `iwk5c_users`
--

CREATE TABLE IF NOT EXISTS `iwk5c_users` (
`id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL DEFAULT '',
  `username` varchar(150) NOT NULL DEFAULT '',
  `email` varchar(100) NOT NULL DEFAULT '',
  `password` varchar(100) NOT NULL DEFAULT '',
  `block` tinyint(4) NOT NULL DEFAULT '0',
  `sendEmail` tinyint(4) DEFAULT '0',
  `registerDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `lastvisitDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `activation` varchar(100) NOT NULL DEFAULT '',
  `params` text NOT NULL,
  `lastResetTime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Date of last password reset',
  `resetCount` int(11) NOT NULL DEFAULT '0' COMMENT 'Count of password resets since lastResetTime',
  `otpKey` varchar(1000) NOT NULL DEFAULT '' COMMENT 'Two factor authentication encrypted keys',
  `otep` varchar(1000) NOT NULL DEFAULT '' COMMENT 'One time emergency passwords',
  `requireReset` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'Require user to reset password on next login'
) ENGINE=InnoDB AUTO_INCREMENT=305 DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `iwk5c_users`
--

INSERT INTO `iwk5c_users` (`id`, `name`, `username`, `email`, `password`, `block`, `sendEmail`, `registerDate`, `lastvisitDate`, `activation`, `params`, `lastResetTime`, `resetCount`, `otpKey`, `otep`, `requireReset`) VALUES
(303, 'Super User', 'webmaster', 'nesskraven@gmail.com', '$2y$10$wVRKGrFDQDvfkXF/WBy6PuWKR2EvpQdQKtgspOqOWqixGmggHKj4G', 0, 1, '2014-06-28 15:08:59', '2015-01-24 05:24:19', '0', '', '0000-00-00 00:00:00', 0, '', '', 0),
(304, 'Romeu Oliveria', 'Romeuoj', 'romeuoj@ctb.ba.gov.br', '$2y$10$C.dndRtByKfVoPmfi790M.sqrB/pvJuf70dYGi/3IFLbpclb3k6Cu', 1, 0, '2014-08-06 14:07:40', '0000-00-00 00:00:00', '5f4b5ad91c5d71a21d8a34aae2a89a5d', '{}', '0000-00-00 00:00:00', 0, '', '', 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `iwk5c_user_keys`
--

CREATE TABLE IF NOT EXISTS `iwk5c_user_keys` (
`id` int(10) unsigned NOT NULL,
  `user_id` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `series` varchar(255) NOT NULL,
  `invalid` tinyint(4) NOT NULL,
  `time` varchar(200) NOT NULL,
  `uastring` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `iwk5c_user_notes`
--

CREATE TABLE IF NOT EXISTS `iwk5c_user_notes` (
`id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `subject` varchar(100) NOT NULL DEFAULT '',
  `body` text NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_user_id` int(10) unsigned NOT NULL,
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `review_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `iwk5c_user_profiles`
--

CREATE TABLE IF NOT EXISTS `iwk5c_user_profiles` (
  `user_id` int(11) NOT NULL,
  `profile_key` varchar(100) NOT NULL,
  `profile_value` varchar(255) NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Simple user profile storage table';

-- --------------------------------------------------------

--
-- Estrutura da tabela `iwk5c_user_usergroup_map`
--

CREATE TABLE IF NOT EXISTS `iwk5c_user_usergroup_map` (
  `user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Foreign Key to #__users.id',
  `group_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Foreign Key to #__usergroups.id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `iwk5c_user_usergroup_map`
--

INSERT INTO `iwk5c_user_usergroup_map` (`user_id`, `group_id`) VALUES
(303, 8),
(304, 2);

-- --------------------------------------------------------

--
-- Estrutura da tabela `iwk5c_viewlevels`
--

CREATE TABLE IF NOT EXISTS `iwk5c_viewlevels` (
`id` int(10) unsigned NOT NULL COMMENT 'Primary Key',
  `title` varchar(100) NOT NULL DEFAULT '',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `rules` varchar(5120) NOT NULL COMMENT 'JSON encoded access control.'
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `iwk5c_viewlevels`
--

INSERT INTO `iwk5c_viewlevels` (`id`, `title`, `ordering`, `rules`) VALUES
(1, 'Public', 0, '[1]'),
(2, 'Registered', 1, '[6,2,8]'),
(3, 'Special', 2, '[6,3,8]'),
(5, 'Guest', 0, '[9]'),
(6, 'Super Users', 0, '[8]');

-- --------------------------------------------------------

--
-- Estrutura da tabela `iwk5c_visfields`
--

CREATE TABLE IF NOT EXISTS `iwk5c_visfields` (
`id` int(11) NOT NULL,
  `fid` int(11) DEFAULT NULL,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0',
  `name` text,
  `label` text,
  `checked_out` int(10) NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(11) NOT NULL DEFAULT '0',
  `typefield` text,
  `defaultvalue` text,
  `published` tinyint(4) DEFAULT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  `labelCSSclass` text,
  `fieldCSSclass` text,
  `customtext` text,
  `frontdisplay` tinyint(4) DEFAULT NULL,
  `includefieldonexport` tinyint(4) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `iwk5c_visforms`
--

CREATE TABLE IF NOT EXISTS `iwk5c_visforms` (
`id` int(11) NOT NULL,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0',
  `name` text,
  `title` text,
  `checked_out` int(10) NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `description` longtext,
  `emailfrom` text,
  `emailfromname` text,
  `emailto` text,
  `emailcc` text,
  `emailbcc` text,
  `subject` text,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(11) NOT NULL DEFAULT '0',
  `hits` int(11) NOT NULL DEFAULT '0',
  `published` tinyint(4) DEFAULT NULL,
  `saveresult` tinyint(4) DEFAULT NULL,
  `emailresult` tinyint(4) DEFAULT NULL,
  `textresult` longtext,
  `redirecturl` text,
  `spambotcheck` tinyint(1) NOT NULL DEFAULT '0',
  `captcha` tinyint(4) DEFAULT NULL,
  `captchacustominfo` text,
  `captchacustomerror` text,
  `uploadpath` text,
  `maxfilesize` int(11) DEFAULT NULL,
  `allowedextensions` text,
  `poweredby` tinyint(4) DEFAULT NULL,
  `emailreceipt` tinyint(4) DEFAULT NULL,
  `emailreceipttext` longtext,
  `emailreceiptsubject` text,
  `emailreceiptincfield` tinyint(4) DEFAULT NULL,
  `emailreceiptincfile` tinyint(4) DEFAULT NULL,
  `emailrecipientincfilepath` tinyint(4) DEFAULT NULL,
  `emailresultincfile` tinyint(4) DEFAULT NULL,
  `formCSSclass` text,
  `displayip` tinyint(4) DEFAULT NULL,
  `displaydetail` tinyint(4) DEFAULT NULL,
  `fronttitle` text,
  `frontdescription` longtext,
  `autopublish` tinyint(4) DEFAULT NULL,
  `access` int(11) NOT NULL DEFAULT '0',
  `language` char(7) NOT NULL,
  `required` varchar(10) NOT NULL DEFAULT 'top',
  `exportsettings` text
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `iwk5c_visforms`
--

INSERT INTO `iwk5c_visforms` (`id`, `asset_id`, `name`, `title`, `checked_out`, `checked_out_time`, `description`, `emailfrom`, `emailfromname`, `emailto`, `emailcc`, `emailbcc`, `subject`, `created`, `created_by`, `hits`, `published`, `saveresult`, `emailresult`, `textresult`, `redirecturl`, `spambotcheck`, `captcha`, `captchacustominfo`, `captchacustomerror`, `uploadpath`, `maxfilesize`, `allowedextensions`, `poweredby`, `emailreceipt`, `emailreceipttext`, `emailreceiptsubject`, `emailreceiptincfield`, `emailreceiptincfile`, `emailrecipientincfilepath`, `emailresultincfile`, `formCSSclass`, `displayip`, `displaydetail`, `fronttitle`, `frontdescription`, `autopublish`, `access`, `language`, `required`, `exportsettings`) VALUES
(1, 153, 'ouvidoria', 'Ouvidoria', 0, '0000-00-00 00:00:00', '', '', '', '', '', '', '', '2014-07-03 13:34:19', 303, 0, 1, 0, 0, '', '', 0, 0, '', '', 'tmp', 0, 'bmp,csv,doc,gif,ico,jpg,jpeg,odg,odp,ods,odt,pdf,png,ppt,swf,txt,xcf,xls,BMP,CSV,DOC,GIF,ICO,JPG,JPEG,ODG,ODP,ODS,ODT,PDF,PNG,PPT,SWF,TXT,XCF,XLS', 1, 0, '', '', 0, 0, 0, 0, '', 0, 0, '', '', 1, 1, '*', 'top', '{"exppublishfieldsonly":"1","exppublisheddataonly":"1","expfieldpublished":"0","expfieldip":"0","expfieldid":"0","usewindowscharset":"0"}');

-- --------------------------------------------------------

--
-- Estrutura da tabela `iwk5c_visualizadores`
--

CREATE TABLE IF NOT EXISTS `iwk5c_visualizadores` (
  `cidade` varchar(60) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `cpfcnpj` varchar(60) CHARACTER SET ascii COLLATE ascii_bin NOT NULL,
  `ddd` varchar(20) CHARACTER SET ascii COLLATE ascii_bin NOT NULL,
  `email` varchar(60) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `endereco` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `estado` varchar(20) CHARACTER SET ascii COLLATE ascii_bin NOT NULL,
  `natureza` varchar(40) CHARACTER SET ascii COLLATE ascii_bin NOT NULL,
  `nome` varchar(100) CHARACTER SET ascii COLLATE ascii_bin NOT NULL,
  `telefone` varchar(60) CHARACTER SET ascii COLLATE ascii_bin NOT NULL,
`id` int(255) NOT NULL,
  `licitacao` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `data` varchar(50) NOT NULL,
  `hora` varchar(50) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `iwk5c_visualizadores`
--

INSERT INTO `iwk5c_visualizadores` (`cidade`, `cpfcnpj`, `ddd`, `email`, `endereco`, `estado`, `natureza`, `nome`, `telefone`, `id`, `licitacao`, `data`, `hora`) VALUES
('Savaldor', '14819015591', '71', 'aaaaa', 'Itapuã', 'BA', 'Juridica', 'Jean Carvalho', '34090523', 48, 'Edital pre qualificacao VLT', '20/10/14', '14:23'),
('A', '1', '1', 'A', 'A', 'BA', 'Juridica', 'A', '1', 49, 'Edital TP 03-2014', '22/10/14', '13:17'),
('a', '1', '1', 'a', 'a', 'AM', 'Juridica', 'a', '1', 50, 'Edital TP 03-2014', '22/10/14', '13:29'),
('a', '1', '1', 'a', 'a', 'AL', 'Juridica', 'a', '1', 51, 'Edital pre qualificacao VLT', '22/10/14', '13:30'),
('a', '1', '1', 'a', 'a', 'AP', 'Juridica', 'a', '1', 52, 'Edital pre qualificacao VLT', '22/10/14', '13:38');

-- --------------------------------------------------------

--
-- Estrutura da tabela `iwk5c_weblinks`
--

CREATE TABLE IF NOT EXISTS `iwk5c_weblinks` (
`id` int(10) unsigned NOT NULL,
  `catid` int(11) NOT NULL DEFAULT '0',
  `title` varchar(250) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `url` varchar(250) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `hits` int(11) NOT NULL DEFAULT '0',
  `state` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `access` int(11) NOT NULL DEFAULT '1',
  `params` text NOT NULL,
  `language` char(7) NOT NULL DEFAULT '',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `metadata` text NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Set if link is featured.',
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `images` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `iwk5c_assets`
--
ALTER TABLE `iwk5c_assets`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `idx_asset_name` (`name`), ADD KEY `idx_lft_rgt` (`lft`,`rgt`), ADD KEY `idx_parent_id` (`parent_id`);

--
-- Indexes for table `iwk5c_associations`
--
ALTER TABLE `iwk5c_associations`
 ADD PRIMARY KEY (`context`,`id`), ADD KEY `idx_key` (`key`);

--
-- Indexes for table `iwk5c_banners`
--
ALTER TABLE `iwk5c_banners`
 ADD PRIMARY KEY (`id`), ADD KEY `idx_state` (`state`), ADD KEY `idx_own_prefix` (`own_prefix`), ADD KEY `idx_metakey_prefix` (`metakey_prefix`), ADD KEY `idx_banner_catid` (`catid`), ADD KEY `idx_language` (`language`);

--
-- Indexes for table `iwk5c_banner_clients`
--
ALTER TABLE `iwk5c_banner_clients`
 ADD PRIMARY KEY (`id`), ADD KEY `idx_own_prefix` (`own_prefix`), ADD KEY `idx_metakey_prefix` (`metakey_prefix`);

--
-- Indexes for table `iwk5c_banner_tracks`
--
ALTER TABLE `iwk5c_banner_tracks`
 ADD PRIMARY KEY (`track_date`,`track_type`,`banner_id`), ADD KEY `idx_track_date` (`track_date`), ADD KEY `idx_track_type` (`track_type`), ADD KEY `idx_banner_id` (`banner_id`);

--
-- Indexes for table `iwk5c_categories`
--
ALTER TABLE `iwk5c_categories`
 ADD PRIMARY KEY (`id`), ADD KEY `cat_idx` (`extension`,`published`,`access`), ADD KEY `idx_access` (`access`), ADD KEY `idx_checkout` (`checked_out`), ADD KEY `idx_path` (`path`), ADD KEY `idx_left_right` (`lft`,`rgt`), ADD KEY `idx_alias` (`alias`), ADD KEY `idx_language` (`language`);

--
-- Indexes for table `iwk5c_chronoengine_chronoforms`
--
ALTER TABLE `iwk5c_chronoengine_chronoforms`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `iwk5c_chronoengine_chronoforms_datatable_ouvidoria`
--
ALTER TABLE `iwk5c_chronoengine_chronoforms_datatable_ouvidoria`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `iwk5c_chronoengine_extensions`
--
ALTER TABLE `iwk5c_chronoengine_extensions`
 ADD PRIMARY KEY (`id`), ADD KEY `name` (`name`);

--
-- Indexes for table `iwk5c_contact_details`
--
ALTER TABLE `iwk5c_contact_details`
 ADD PRIMARY KEY (`id`), ADD KEY `idx_access` (`access`), ADD KEY `idx_checkout` (`checked_out`), ADD KEY `idx_state` (`published`), ADD KEY `idx_catid` (`catid`), ADD KEY `idx_createdby` (`created_by`), ADD KEY `idx_featured_catid` (`featured`,`catid`), ADD KEY `idx_language` (`language`), ADD KEY `idx_xreference` (`xreference`);

--
-- Indexes for table `iwk5c_content`
--
ALTER TABLE `iwk5c_content`
 ADD PRIMARY KEY (`id`), ADD KEY `idx_access` (`access`), ADD KEY `idx_checkout` (`checked_out`), ADD KEY `idx_state` (`state`), ADD KEY `idx_catid` (`catid`), ADD KEY `idx_createdby` (`created_by`), ADD KEY `idx_featured_catid` (`featured`,`catid`), ADD KEY `idx_language` (`language`), ADD KEY `idx_xreference` (`xreference`);

--
-- Indexes for table `iwk5c_contentitem_tag_map`
--
ALTER TABLE `iwk5c_contentitem_tag_map`
 ADD UNIQUE KEY `uc_ItemnameTagid` (`type_id`,`content_item_id`,`tag_id`), ADD KEY `idx_tag_type` (`tag_id`,`type_id`), ADD KEY `idx_date_id` (`tag_date`,`tag_id`), ADD KEY `idx_tag` (`tag_id`), ADD KEY `idx_type` (`type_id`), ADD KEY `idx_core_content_id` (`core_content_id`);

--
-- Indexes for table `iwk5c_content_frontpage`
--
ALTER TABLE `iwk5c_content_frontpage`
 ADD PRIMARY KEY (`content_id`);

--
-- Indexes for table `iwk5c_content_rating`
--
ALTER TABLE `iwk5c_content_rating`
 ADD PRIMARY KEY (`content_id`);

--
-- Indexes for table `iwk5c_content_types`
--
ALTER TABLE `iwk5c_content_types`
 ADD PRIMARY KEY (`type_id`), ADD KEY `idx_alias` (`type_alias`);

--
-- Indexes for table `iwk5c_extensions`
--
ALTER TABLE `iwk5c_extensions`
 ADD PRIMARY KEY (`extension_id`), ADD KEY `element_clientid` (`element`,`client_id`), ADD KEY `element_folder_clientid` (`element`,`folder`,`client_id`), ADD KEY `extension` (`type`,`element`,`folder`,`client_id`);

--
-- Indexes for table `iwk5c_finder_filters`
--
ALTER TABLE `iwk5c_finder_filters`
 ADD PRIMARY KEY (`filter_id`);

--
-- Indexes for table `iwk5c_finder_links`
--
ALTER TABLE `iwk5c_finder_links`
 ADD PRIMARY KEY (`link_id`), ADD KEY `idx_type` (`type_id`), ADD KEY `idx_title` (`title`), ADD KEY `idx_md5` (`md5sum`), ADD KEY `idx_url` (`url`(75)), ADD KEY `idx_published_list` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`list_price`), ADD KEY `idx_published_sale` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`sale_price`);

--
-- Indexes for table `iwk5c_finder_links_terms0`
--
ALTER TABLE `iwk5c_finder_links_terms0`
 ADD PRIMARY KEY (`link_id`,`term_id`), ADD KEY `idx_term_weight` (`term_id`,`weight`), ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `iwk5c_finder_links_terms1`
--
ALTER TABLE `iwk5c_finder_links_terms1`
 ADD PRIMARY KEY (`link_id`,`term_id`), ADD KEY `idx_term_weight` (`term_id`,`weight`), ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `iwk5c_finder_links_terms2`
--
ALTER TABLE `iwk5c_finder_links_terms2`
 ADD PRIMARY KEY (`link_id`,`term_id`), ADD KEY `idx_term_weight` (`term_id`,`weight`), ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `iwk5c_finder_links_terms3`
--
ALTER TABLE `iwk5c_finder_links_terms3`
 ADD PRIMARY KEY (`link_id`,`term_id`), ADD KEY `idx_term_weight` (`term_id`,`weight`), ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `iwk5c_finder_links_terms4`
--
ALTER TABLE `iwk5c_finder_links_terms4`
 ADD PRIMARY KEY (`link_id`,`term_id`), ADD KEY `idx_term_weight` (`term_id`,`weight`), ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `iwk5c_finder_links_terms5`
--
ALTER TABLE `iwk5c_finder_links_terms5`
 ADD PRIMARY KEY (`link_id`,`term_id`), ADD KEY `idx_term_weight` (`term_id`,`weight`), ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `iwk5c_finder_links_terms6`
--
ALTER TABLE `iwk5c_finder_links_terms6`
 ADD PRIMARY KEY (`link_id`,`term_id`), ADD KEY `idx_term_weight` (`term_id`,`weight`), ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `iwk5c_finder_links_terms7`
--
ALTER TABLE `iwk5c_finder_links_terms7`
 ADD PRIMARY KEY (`link_id`,`term_id`), ADD KEY `idx_term_weight` (`term_id`,`weight`), ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `iwk5c_finder_links_terms8`
--
ALTER TABLE `iwk5c_finder_links_terms8`
 ADD PRIMARY KEY (`link_id`,`term_id`), ADD KEY `idx_term_weight` (`term_id`,`weight`), ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `iwk5c_finder_links_terms9`
--
ALTER TABLE `iwk5c_finder_links_terms9`
 ADD PRIMARY KEY (`link_id`,`term_id`), ADD KEY `idx_term_weight` (`term_id`,`weight`), ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `iwk5c_finder_links_termsa`
--
ALTER TABLE `iwk5c_finder_links_termsa`
 ADD PRIMARY KEY (`link_id`,`term_id`), ADD KEY `idx_term_weight` (`term_id`,`weight`), ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `iwk5c_finder_links_termsb`
--
ALTER TABLE `iwk5c_finder_links_termsb`
 ADD PRIMARY KEY (`link_id`,`term_id`), ADD KEY `idx_term_weight` (`term_id`,`weight`), ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `iwk5c_finder_links_termsc`
--
ALTER TABLE `iwk5c_finder_links_termsc`
 ADD PRIMARY KEY (`link_id`,`term_id`), ADD KEY `idx_term_weight` (`term_id`,`weight`), ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `iwk5c_finder_links_termsd`
--
ALTER TABLE `iwk5c_finder_links_termsd`
 ADD PRIMARY KEY (`link_id`,`term_id`), ADD KEY `idx_term_weight` (`term_id`,`weight`), ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `iwk5c_finder_links_termse`
--
ALTER TABLE `iwk5c_finder_links_termse`
 ADD PRIMARY KEY (`link_id`,`term_id`), ADD KEY `idx_term_weight` (`term_id`,`weight`), ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `iwk5c_finder_links_termsf`
--
ALTER TABLE `iwk5c_finder_links_termsf`
 ADD PRIMARY KEY (`link_id`,`term_id`), ADD KEY `idx_term_weight` (`term_id`,`weight`), ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `iwk5c_finder_taxonomy`
--
ALTER TABLE `iwk5c_finder_taxonomy`
 ADD PRIMARY KEY (`id`), ADD KEY `parent_id` (`parent_id`), ADD KEY `state` (`state`), ADD KEY `ordering` (`ordering`), ADD KEY `access` (`access`), ADD KEY `idx_parent_published` (`parent_id`,`state`,`access`);

--
-- Indexes for table `iwk5c_finder_taxonomy_map`
--
ALTER TABLE `iwk5c_finder_taxonomy_map`
 ADD PRIMARY KEY (`link_id`,`node_id`), ADD KEY `link_id` (`link_id`), ADD KEY `node_id` (`node_id`);

--
-- Indexes for table `iwk5c_finder_terms`
--
ALTER TABLE `iwk5c_finder_terms`
 ADD PRIMARY KEY (`term_id`), ADD UNIQUE KEY `idx_term` (`term`), ADD KEY `idx_term_phrase` (`term`,`phrase`), ADD KEY `idx_stem_phrase` (`stem`,`phrase`), ADD KEY `idx_soundex_phrase` (`soundex`,`phrase`);

--
-- Indexes for table `iwk5c_finder_terms_common`
--
ALTER TABLE `iwk5c_finder_terms_common`
 ADD KEY `idx_word_lang` (`term`,`language`), ADD KEY `idx_lang` (`language`);

--
-- Indexes for table `iwk5c_finder_tokens`
--
ALTER TABLE `iwk5c_finder_tokens`
 ADD KEY `idx_word` (`term`), ADD KEY `idx_context` (`context`);

--
-- Indexes for table `iwk5c_finder_tokens_aggregate`
--
ALTER TABLE `iwk5c_finder_tokens_aggregate`
 ADD KEY `token` (`term`), ADD KEY `keyword_id` (`term_id`);

--
-- Indexes for table `iwk5c_finder_types`
--
ALTER TABLE `iwk5c_finder_types`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `title` (`title`);

--
-- Indexes for table `iwk5c_imageshow_external_source_picasa`
--
ALTER TABLE `iwk5c_imageshow_external_source_picasa`
 ADD PRIMARY KEY (`external_source_id`);

--
-- Indexes for table `iwk5c_imageshow_images`
--
ALTER TABLE `iwk5c_imageshow_images`
 ADD PRIMARY KEY (`image_id`);

--
-- Indexes for table `iwk5c_imageshow_log`
--
ALTER TABLE `iwk5c_imageshow_log`
 ADD PRIMARY KEY (`log_id`);

--
-- Indexes for table `iwk5c_imageshow_showcase`
--
ALTER TABLE `iwk5c_imageshow_showcase`
 ADD PRIMARY KEY (`showcase_id`);

--
-- Indexes for table `iwk5c_imageshow_showlist`
--
ALTER TABLE `iwk5c_imageshow_showlist`
 ADD PRIMARY KEY (`showlist_id`);

--
-- Indexes for table `iwk5c_imageshow_source_profile`
--
ALTER TABLE `iwk5c_imageshow_source_profile`
 ADD PRIMARY KEY (`external_source_profile_id`);

--
-- Indexes for table `iwk5c_imageshow_theme_classic_flash`
--
ALTER TABLE `iwk5c_imageshow_theme_classic_flash`
 ADD PRIMARY KEY (`theme_id`);

--
-- Indexes for table `iwk5c_imageshow_theme_classic_javascript`
--
ALTER TABLE `iwk5c_imageshow_theme_classic_javascript`
 ADD PRIMARY KEY (`theme_id`);

--
-- Indexes for table `iwk5c_imageshow_theme_classic_parameters`
--
ALTER TABLE `iwk5c_imageshow_theme_classic_parameters`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `iwk5c_imageshow_theme_slider`
--
ALTER TABLE `iwk5c_imageshow_theme_slider`
 ADD PRIMARY KEY (`theme_id`);

--
-- Indexes for table `iwk5c_jsn_imageshow_config`
--
ALTER TABLE `iwk5c_jsn_imageshow_config`
 ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `iwk5c_jsn_imageshow_messages`
--
ALTER TABLE `iwk5c_jsn_imageshow_messages`
 ADD PRIMARY KEY (`msg_id`);

--
-- Indexes for table `iwk5c_languages`
--
ALTER TABLE `iwk5c_languages`
 ADD PRIMARY KEY (`lang_id`), ADD UNIQUE KEY `idx_sef` (`sef`), ADD UNIQUE KEY `idx_image` (`image`), ADD UNIQUE KEY `idx_langcode` (`lang_code`), ADD KEY `idx_access` (`access`), ADD KEY `idx_ordering` (`ordering`);

--
-- Indexes for table `iwk5c_menu`
--
ALTER TABLE `iwk5c_menu`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `idx_client_id_parent_id_alias_language` (`client_id`,`parent_id`,`alias`,`language`), ADD KEY `idx_componentid` (`component_id`,`menutype`,`published`,`access`), ADD KEY `idx_menutype` (`menutype`), ADD KEY `idx_left_right` (`lft`,`rgt`), ADD KEY `idx_alias` (`alias`), ADD KEY `idx_path` (`path`(255)), ADD KEY `idx_language` (`language`);

--
-- Indexes for table `iwk5c_menu_types`
--
ALTER TABLE `iwk5c_menu_types`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `idx_menutype` (`menutype`);

--
-- Indexes for table `iwk5c_messages`
--
ALTER TABLE `iwk5c_messages`
 ADD PRIMARY KEY (`message_id`), ADD KEY `useridto_state` (`user_id_to`,`state`);

--
-- Indexes for table `iwk5c_messages_cfg`
--
ALTER TABLE `iwk5c_messages_cfg`
 ADD UNIQUE KEY `idx_user_var_name` (`user_id`,`cfg_name`);

--
-- Indexes for table `iwk5c_mijopolls_options`
--
ALTER TABLE `iwk5c_mijopolls_options`
 ADD PRIMARY KEY (`id`), ADD KEY `poll_id` (`poll_id`,`text`(1));

--
-- Indexes for table `iwk5c_mijopolls_polls`
--
ALTER TABLE `iwk5c_mijopolls_polls`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `iwk5c_mijopolls_votes`
--
ALTER TABLE `iwk5c_mijopolls_votes`
 ADD PRIMARY KEY (`id`), ADD KEY `poll_id` (`poll_id`);

--
-- Indexes for table `iwk5c_modules`
--
ALTER TABLE `iwk5c_modules`
 ADD PRIMARY KEY (`id`), ADD KEY `published` (`published`,`access`), ADD KEY `newsfeeds` (`module`,`published`), ADD KEY `idx_language` (`language`);

--
-- Indexes for table `iwk5c_modules_menu`
--
ALTER TABLE `iwk5c_modules_menu`
 ADD PRIMARY KEY (`moduleid`,`menuid`);

--
-- Indexes for table `iwk5c_newsfeeds`
--
ALTER TABLE `iwk5c_newsfeeds`
 ADD PRIMARY KEY (`id`), ADD KEY `idx_access` (`access`), ADD KEY `idx_checkout` (`checked_out`), ADD KEY `idx_state` (`published`), ADD KEY `idx_catid` (`catid`), ADD KEY `idx_createdby` (`created_by`), ADD KEY `idx_language` (`language`), ADD KEY `idx_xreference` (`xreference`);

--
-- Indexes for table `iwk5c_overrider`
--
ALTER TABLE `iwk5c_overrider`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `iwk5c_phocagallery`
--
ALTER TABLE `iwk5c_phocagallery`
 ADD PRIMARY KEY (`id`), ADD KEY `catid` (`catid`,`published`);

--
-- Indexes for table `iwk5c_phocagallery_categories`
--
ALTER TABLE `iwk5c_phocagallery_categories`
 ADD PRIMARY KEY (`id`), ADD KEY `cat_idx` (`section`,`published`,`access`), ADD KEY `idx_access` (`access`), ADD KEY `idx_checkout` (`checked_out`);

--
-- Indexes for table `iwk5c_phocagallery_comments`
--
ALTER TABLE `iwk5c_phocagallery_comments`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `iwk5c_phocagallery_fb_users`
--
ALTER TABLE `iwk5c_phocagallery_fb_users`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `iwk5c_phocagallery_img_comments`
--
ALTER TABLE `iwk5c_phocagallery_img_comments`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `iwk5c_phocagallery_img_votes`
--
ALTER TABLE `iwk5c_phocagallery_img_votes`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `iwk5c_phocagallery_img_votes_statistics`
--
ALTER TABLE `iwk5c_phocagallery_img_votes_statistics`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `iwk5c_phocagallery_styles`
--
ALTER TABLE `iwk5c_phocagallery_styles`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `iwk5c_phocagallery_tags`
--
ALTER TABLE `iwk5c_phocagallery_tags`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `iwk5c_phocagallery_tags_ref`
--
ALTER TABLE `iwk5c_phocagallery_tags_ref`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `id` (`id`), ADD UNIQUE KEY `i_imgid` (`imgid`,`tagid`);

--
-- Indexes for table `iwk5c_phocagallery_user`
--
ALTER TABLE `iwk5c_phocagallery_user`
 ADD PRIMARY KEY (`id`), ADD KEY `userid` (`userid`);

--
-- Indexes for table `iwk5c_phocagallery_votes`
--
ALTER TABLE `iwk5c_phocagallery_votes`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `iwk5c_phocagallery_votes_statistics`
--
ALTER TABLE `iwk5c_phocagallery_votes_statistics`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `iwk5c_postinstall_messages`
--
ALTER TABLE `iwk5c_postinstall_messages`
 ADD PRIMARY KEY (`postinstall_message_id`);

--
-- Indexes for table `iwk5c_redirect_links`
--
ALTER TABLE `iwk5c_redirect_links`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `idx_link_old` (`old_url`), ADD KEY `idx_link_modifed` (`modified_date`);

--
-- Indexes for table `iwk5c_schemas`
--
ALTER TABLE `iwk5c_schemas`
 ADD PRIMARY KEY (`extension_id`,`version_id`);

--
-- Indexes for table `iwk5c_session`
--
ALTER TABLE `iwk5c_session`
 ADD PRIMARY KEY (`session_id`), ADD KEY `userid` (`userid`), ADD KEY `time` (`time`);

--
-- Indexes for table `iwk5c_tags`
--
ALTER TABLE `iwk5c_tags`
 ADD PRIMARY KEY (`id`), ADD KEY `tag_idx` (`published`,`access`), ADD KEY `idx_access` (`access`), ADD KEY `idx_checkout` (`checked_out`), ADD KEY `idx_path` (`path`), ADD KEY `idx_left_right` (`lft`,`rgt`), ADD KEY `idx_alias` (`alias`), ADD KEY `idx_language` (`language`);

--
-- Indexes for table `iwk5c_template_styles`
--
ALTER TABLE `iwk5c_template_styles`
 ADD PRIMARY KEY (`id`), ADD KEY `idx_template` (`template`), ADD KEY `idx_home` (`home`);

--
-- Indexes for table `iwk5c_ucm_base`
--
ALTER TABLE `iwk5c_ucm_base`
 ADD PRIMARY KEY (`ucm_id`), ADD KEY `idx_ucm_item_id` (`ucm_item_id`), ADD KEY `idx_ucm_type_id` (`ucm_type_id`), ADD KEY `idx_ucm_language_id` (`ucm_language_id`);

--
-- Indexes for table `iwk5c_ucm_content`
--
ALTER TABLE `iwk5c_ucm_content`
 ADD PRIMARY KEY (`core_content_id`), ADD KEY `tag_idx` (`core_state`,`core_access`), ADD KEY `idx_access` (`core_access`), ADD KEY `idx_alias` (`core_alias`), ADD KEY `idx_language` (`core_language`), ADD KEY `idx_title` (`core_title`), ADD KEY `idx_modified_time` (`core_modified_time`), ADD KEY `idx_created_time` (`core_created_time`), ADD KEY `idx_content_type` (`core_type_alias`), ADD KEY `idx_core_modified_user_id` (`core_modified_user_id`), ADD KEY `idx_core_checked_out_user_id` (`core_checked_out_user_id`), ADD KEY `idx_core_created_user_id` (`core_created_user_id`), ADD KEY `idx_core_type_id` (`core_type_id`);

--
-- Indexes for table `iwk5c_ucm_history`
--
ALTER TABLE `iwk5c_ucm_history`
 ADD PRIMARY KEY (`version_id`), ADD KEY `idx_ucm_item_id` (`ucm_type_id`,`ucm_item_id`), ADD KEY `idx_save_date` (`save_date`);

--
-- Indexes for table `iwk5c_updates`
--
ALTER TABLE `iwk5c_updates`
 ADD PRIMARY KEY (`update_id`);

--
-- Indexes for table `iwk5c_update_sites`
--
ALTER TABLE `iwk5c_update_sites`
 ADD PRIMARY KEY (`update_site_id`);

--
-- Indexes for table `iwk5c_update_sites_extensions`
--
ALTER TABLE `iwk5c_update_sites_extensions`
 ADD PRIMARY KEY (`update_site_id`,`extension_id`);

--
-- Indexes for table `iwk5c_usergroups`
--
ALTER TABLE `iwk5c_usergroups`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `idx_usergroup_parent_title_lookup` (`parent_id`,`title`), ADD KEY `idx_usergroup_title_lookup` (`title`), ADD KEY `idx_usergroup_adjacency_lookup` (`parent_id`), ADD KEY `idx_usergroup_nested_set_lookup` (`lft`,`rgt`) USING BTREE;

--
-- Indexes for table `iwk5c_users`
--
ALTER TABLE `iwk5c_users`
 ADD PRIMARY KEY (`id`), ADD KEY `idx_name` (`name`), ADD KEY `idx_block` (`block`), ADD KEY `username` (`username`), ADD KEY `email` (`email`);

--
-- Indexes for table `iwk5c_user_keys`
--
ALTER TABLE `iwk5c_user_keys`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `series` (`series`), ADD UNIQUE KEY `series_2` (`series`), ADD UNIQUE KEY `series_3` (`series`), ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `iwk5c_user_notes`
--
ALTER TABLE `iwk5c_user_notes`
 ADD PRIMARY KEY (`id`), ADD KEY `idx_user_id` (`user_id`), ADD KEY `idx_category_id` (`catid`);

--
-- Indexes for table `iwk5c_user_profiles`
--
ALTER TABLE `iwk5c_user_profiles`
 ADD UNIQUE KEY `idx_user_id_profile_key` (`user_id`,`profile_key`);

--
-- Indexes for table `iwk5c_user_usergroup_map`
--
ALTER TABLE `iwk5c_user_usergroup_map`
 ADD PRIMARY KEY (`user_id`,`group_id`);

--
-- Indexes for table `iwk5c_viewlevels`
--
ALTER TABLE `iwk5c_viewlevels`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `idx_assetgroup_title_lookup` (`title`);

--
-- Indexes for table `iwk5c_visfields`
--
ALTER TABLE `iwk5c_visfields`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `iwk5c_visforms`
--
ALTER TABLE `iwk5c_visforms`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `iwk5c_visualizadores`
--
ALTER TABLE `iwk5c_visualizadores`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `iwk5c_weblinks`
--
ALTER TABLE `iwk5c_weblinks`
 ADD PRIMARY KEY (`id`), ADD KEY `idx_access` (`access`), ADD KEY `idx_checkout` (`checked_out`), ADD KEY `idx_state` (`state`), ADD KEY `idx_catid` (`catid`), ADD KEY `idx_createdby` (`created_by`), ADD KEY `idx_featured_catid` (`featured`,`catid`), ADD KEY `idx_language` (`language`), ADD KEY `idx_xreference` (`xreference`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `iwk5c_assets`
--
ALTER TABLE `iwk5c_assets`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',AUTO_INCREMENT=189;
--
-- AUTO_INCREMENT for table `iwk5c_banners`
--
ALTER TABLE `iwk5c_banners`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `iwk5c_banner_clients`
--
ALTER TABLE `iwk5c_banner_clients`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `iwk5c_categories`
--
ALTER TABLE `iwk5c_categories`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=41;
--
-- AUTO_INCREMENT for table `iwk5c_chronoengine_chronoforms`
--
ALTER TABLE `iwk5c_chronoengine_chronoforms`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `iwk5c_chronoengine_chronoforms_datatable_ouvidoria`
--
ALTER TABLE `iwk5c_chronoengine_chronoforms_datatable_ouvidoria`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `iwk5c_chronoengine_extensions`
--
ALTER TABLE `iwk5c_chronoengine_extensions`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `iwk5c_contact_details`
--
ALTER TABLE `iwk5c_contact_details`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `iwk5c_content`
--
ALTER TABLE `iwk5c_content`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `iwk5c_content_types`
--
ALTER TABLE `iwk5c_content_types`
MODIFY `type_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `iwk5c_extensions`
--
ALTER TABLE `iwk5c_extensions`
MODIFY `extension_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=735;
--
-- AUTO_INCREMENT for table `iwk5c_finder_filters`
--
ALTER TABLE `iwk5c_finder_filters`
MODIFY `filter_id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `iwk5c_finder_links`
--
ALTER TABLE `iwk5c_finder_links`
MODIFY `link_id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `iwk5c_finder_taxonomy`
--
ALTER TABLE `iwk5c_finder_taxonomy`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `iwk5c_finder_terms`
--
ALTER TABLE `iwk5c_finder_terms`
MODIFY `term_id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `iwk5c_finder_types`
--
ALTER TABLE `iwk5c_finder_types`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `iwk5c_imageshow_external_source_picasa`
--
ALTER TABLE `iwk5c_imageshow_external_source_picasa`
MODIFY `external_source_id` int(11) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `iwk5c_imageshow_images`
--
ALTER TABLE `iwk5c_imageshow_images`
MODIFY `image_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `iwk5c_imageshow_log`
--
ALTER TABLE `iwk5c_imageshow_log`
MODIFY `log_id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `iwk5c_imageshow_showcase`
--
ALTER TABLE `iwk5c_imageshow_showcase`
MODIFY `showcase_id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `iwk5c_imageshow_showlist`
--
ALTER TABLE `iwk5c_imageshow_showlist`
MODIFY `showlist_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `iwk5c_imageshow_source_profile`
--
ALTER TABLE `iwk5c_imageshow_source_profile`
MODIFY `external_source_profile_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `iwk5c_imageshow_theme_classic_flash`
--
ALTER TABLE `iwk5c_imageshow_theme_classic_flash`
MODIFY `theme_id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `iwk5c_imageshow_theme_classic_javascript`
--
ALTER TABLE `iwk5c_imageshow_theme_classic_javascript`
MODIFY `theme_id` int(11) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `iwk5c_imageshow_theme_classic_parameters`
--
ALTER TABLE `iwk5c_imageshow_theme_classic_parameters`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `iwk5c_imageshow_theme_slider`
--
ALTER TABLE `iwk5c_imageshow_theme_slider`
MODIFY `theme_id` int(11) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `iwk5c_jsn_imageshow_messages`
--
ALTER TABLE `iwk5c_jsn_imageshow_messages`
MODIFY `msg_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `iwk5c_languages`
--
ALTER TABLE `iwk5c_languages`
MODIFY `lang_id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `iwk5c_menu`
--
ALTER TABLE `iwk5c_menu`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=173;
--
-- AUTO_INCREMENT for table `iwk5c_menu_types`
--
ALTER TABLE `iwk5c_menu_types`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `iwk5c_messages`
--
ALTER TABLE `iwk5c_messages`
MODIFY `message_id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `iwk5c_mijopolls_options`
--
ALTER TABLE `iwk5c_mijopolls_options`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `iwk5c_mijopolls_polls`
--
ALTER TABLE `iwk5c_mijopolls_polls`
MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `iwk5c_mijopolls_votes`
--
ALTER TABLE `iwk5c_mijopolls_votes`
MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `iwk5c_modules`
--
ALTER TABLE `iwk5c_modules`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=170;
--
-- AUTO_INCREMENT for table `iwk5c_newsfeeds`
--
ALTER TABLE `iwk5c_newsfeeds`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `iwk5c_overrider`
--
ALTER TABLE `iwk5c_overrider`
MODIFY `id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'Primary Key';
--
-- AUTO_INCREMENT for table `iwk5c_phocagallery`
--
ALTER TABLE `iwk5c_phocagallery`
MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=78;
--
-- AUTO_INCREMENT for table `iwk5c_phocagallery_categories`
--
ALTER TABLE `iwk5c_phocagallery_categories`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `iwk5c_phocagallery_comments`
--
ALTER TABLE `iwk5c_phocagallery_comments`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `iwk5c_phocagallery_fb_users`
--
ALTER TABLE `iwk5c_phocagallery_fb_users`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `iwk5c_phocagallery_img_comments`
--
ALTER TABLE `iwk5c_phocagallery_img_comments`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `iwk5c_phocagallery_img_votes`
--
ALTER TABLE `iwk5c_phocagallery_img_votes`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `iwk5c_phocagallery_img_votes_statistics`
--
ALTER TABLE `iwk5c_phocagallery_img_votes_statistics`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `iwk5c_phocagallery_styles`
--
ALTER TABLE `iwk5c_phocagallery_styles`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `iwk5c_phocagallery_tags`
--
ALTER TABLE `iwk5c_phocagallery_tags`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `iwk5c_phocagallery_tags_ref`
--
ALTER TABLE `iwk5c_phocagallery_tags_ref`
MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `iwk5c_phocagallery_user`
--
ALTER TABLE `iwk5c_phocagallery_user`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `iwk5c_phocagallery_votes`
--
ALTER TABLE `iwk5c_phocagallery_votes`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `iwk5c_phocagallery_votes_statistics`
--
ALTER TABLE `iwk5c_phocagallery_votes_statistics`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `iwk5c_postinstall_messages`
--
ALTER TABLE `iwk5c_postinstall_messages`
MODIFY `postinstall_message_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `iwk5c_redirect_links`
--
ALTER TABLE `iwk5c_redirect_links`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `iwk5c_tags`
--
ALTER TABLE `iwk5c_tags`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `iwk5c_template_styles`
--
ALTER TABLE `iwk5c_template_styles`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `iwk5c_ucm_content`
--
ALTER TABLE `iwk5c_ucm_content`
MODIFY `core_content_id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `iwk5c_ucm_history`
--
ALTER TABLE `iwk5c_ucm_history`
MODIFY `version_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=91;
--
-- AUTO_INCREMENT for table `iwk5c_updates`
--
ALTER TABLE `iwk5c_updates`
MODIFY `update_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `iwk5c_update_sites`
--
ALTER TABLE `iwk5c_update_sites`
MODIFY `update_site_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `iwk5c_usergroups`
--
ALTER TABLE `iwk5c_usergroups`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `iwk5c_users`
--
ALTER TABLE `iwk5c_users`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=305;
--
-- AUTO_INCREMENT for table `iwk5c_user_keys`
--
ALTER TABLE `iwk5c_user_keys`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `iwk5c_user_notes`
--
ALTER TABLE `iwk5c_user_notes`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `iwk5c_viewlevels`
--
ALTER TABLE `iwk5c_viewlevels`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `iwk5c_visfields`
--
ALTER TABLE `iwk5c_visfields`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `iwk5c_visforms`
--
ALTER TABLE `iwk5c_visforms`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `iwk5c_visualizadores`
--
ALTER TABLE `iwk5c_visualizadores`
MODIFY `id` int(255) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=53;
--
-- AUTO_INCREMENT for table `iwk5c_weblinks`
--
ALTER TABLE `iwk5c_weblinks`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
