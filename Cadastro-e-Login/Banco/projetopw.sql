-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Tempo de geração: 25-Out-2023 às 19:18
-- Versão do servidor: 8.0.31
-- versão do PHP: 8.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `projetopw`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `clientes`
--

DROP TABLE IF EXISTS `clientes`;
CREATE TABLE IF NOT EXISTS `clientes` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `senha` varchar(10) NOT NULL,
  `data_now` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb3;

--
-- Extraindo dados da tabela `clientes`
--

INSERT INTO `clientes` (`id`, `nome`, `email`, `senha`, `data_now`) VALUES
(10, 'Yandra', 'estagio23.ti@gmail.com', 'Yandra', '2023-10-25 13:47:52'),
(12, 'Yandra', 'estagio2023@gmail.com', 'Yandra', '2023-10-25 13:48:34'),
(18, 'Cesar 15', 'estagio2023@gmail.com', '88', '2023-10-25 16:12:08');

-- --------------------------------------------------------

--
-- Estrutura da tabela `log`
--

DROP TABLE IF EXISTS `log`;
CREATE TABLE IF NOT EXISTS `log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(100) NOT NULL,
  `senha` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `log`
--

INSERT INTO `log` (`id`, `email`, `senha`) VALUES
(1, 'kauan@gmail.com', '123'),
(2, 'yandra@gmail.com', 'yandra210'),
(7, 'estagio23.ti@gmail.com', '444'),
(8, 'estagio23.ti@gmail.com', 'Yandra'),
(9, 'estagio23.ti@gmail.com', 'Yandra'),
(10, 'estagio23.ti@gmail.com', 'Yandra'),
(11, 'estagio23.ti@gmail.com', 'Yandra'),
(12, 'estagio23.ti@gmail.com', 'Yandra'),
(13, 'estagio23.ti@gmail.com', 'Yandra'),
(14, 'estagio23.ti@gmail.com', 'Yandra'),
(15, 'estagio23.ti@gmail.com', 'Yandra'),
(16, 'estagio23.ti@gmail.com', 'Yandra'),
(17, 'estagio2023@gmail.com', 'Yandra'),
(18, '', ''),
(19, 'estagio23.ti@gmail.com', '77'),
(20, 'estagio2023@gmail.com', '88'),
(21, 'estagio23.ti@gmail.com', 'uio'),
(22, 'estagio23.ti@gmail.com', 'fvbbyhfv'),
(23, 'estagio2023@gmail.com', '88');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
