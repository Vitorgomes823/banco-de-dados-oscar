-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Tempo de geração: 03/05/2021 às 15:27
-- Versão do servidor: 8.0.21
-- Versão do PHP: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `coleção_de_livros`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `autor`
--

DROP TABLE IF EXISTS `autor`;
CREATE TABLE IF NOT EXISTS `autor` (
  `autorID` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(80) DEFAULT NULL,
  `data_de_nascimento` date DEFAULT NULL,
  `pais_de_origem` varchar(20) DEFAULT NULL,
  `endereço` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`autorID`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Despejando dados para a tabela `autor`
--

INSERT INTO `autor` (`autorID`, `nome`, `data_de_nascimento`, `pais_de_origem`, `endereço`) VALUES
(1, 'J. K. Rowling', '1965-07-31', 'Inglaterra', '3227  Fairmont Avenue'),
(2, 'Gillian Flynn', '1971-02-24', 'Estados Unidos', '2103  Randall Drive'),
(3, 'Veríssimo', '1905-12-17', ' Brasil', '27801 Rocky Mount'),
(4, 'Neil Gaiman', '1960-11-10', 'Inglaterra', '77301 Cut And Shoot'),
(5, 'Clive Baker', '1934-07-05', 'Estados Unidos', '2496 Rose Avenue'),
(6, 'Rodrigo Polesso', '2001-02-17', 'Brasil', '3788 Wetzel Lane');

-- --------------------------------------------------------

--
-- Estrutura para tabela `editora`
--

DROP TABLE IF EXISTS `editora`;
CREATE TABLE IF NOT EXISTS `editora` (
  `editoraID` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(80) DEFAULT NULL,
  `telefone` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`editoraID`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Despejando dados para a tabela `editora`
--

INSERT INTO `editora` (`editoraID`, `nome`, `telefone`) VALUES
(1, 'Rocco', '202-555-0171'),
(2, 'Intriseca', '202-555-0187'),
(3, 'Lero-lero', '202-555-0154'),
(4, 'Editora Dark Sense', '202-555-0185'),
(5, 'Editora Gente', '202-555-0110'),
(6, '\r\nInstituto Tomie Ohtake', '202-555-0134');

-- --------------------------------------------------------

--
-- Estrutura para tabela `genero`
--

DROP TABLE IF EXISTS `genero`;
CREATE TABLE IF NOT EXISTS `genero` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Despejando dados para a tabela `genero`
--

INSERT INTO `genero` (`ID`, `nome`) VALUES
(1, 'Suspense'),
(2, 'Fantasia'),
(3, 'Comédia'),
(4, 'Auto-Ajuda'),
(5, 'Ficção-Cientifica');

-- --------------------------------------------------------

--
-- Estrutura para tabela `livros`
--

DROP TABLE IF EXISTS `livros`;
CREATE TABLE IF NOT EXISTS `livros` (
  `livrosID` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(80) DEFAULT NULL,
  `genero` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `data_de_compra` date DEFAULT NULL,
  `número_de_paginas` int DEFAULT NULL,
  `valor` float DEFAULT NULL,
  `ja_comprei` bit(1) DEFAULT NULL,
  `autor` varchar(20) DEFAULT NULL,
  `data_de_publicacao` date DEFAULT NULL,
  `rating` varchar(20) DEFAULT NULL,
  `editora` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`livrosID`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Despejando dados para a tabela `livros`
--

INSERT INTO `livros` (`livrosID`, `nome`, `genero`, `data_de_compra`, `número_de_paginas`, `valor`, `ja_comprei`, `autor`, `data_de_publicacao`, `rating`, `editora`) VALUES
(1, 'Harry Potter e a Pedra Filosofal', '\r\nFantasia', '2005-03-02', 368, 20.9, b'1', ' J. K. Rowling', '2007-03-02', 'Gostei', 'Rocco'),
(2, 'Harry Potter e o Prisioneiro de Azkaban', 'Fantasia', '2005-04-02', 598, 18.79, b'1', 'J. K. Rowling', '2012-02-04', 'Gostei', 'Rocco'),
(3, 'Harry Potter e a Ordem da Fênix', 'Fantasia', '2022-01-04', 798, 50.36, b'0', ' J. K. Rowling', '2005-08-20', 'Gostei', 'Rocco'),
(4, 'Harry Potter e a Câmara Secreta', 'Fantasia', '2005-06-02', 328, 15.21, b'0', 'J. K. Rowling', '2019-01-25', 'Não Gostei', 'Rocco'),
(5, 'Garota Exemplar', 'Suspense', '2005-07-02', 128, 60.23, b'0', 'Gillian Flynn', '2009-12-10', 'Não Gostei', 'Intriseca'),
(6, 'Diálogos Impossíveis', 'Comédia', '2003-08-02', 208, 10, b'0', 'Veríssimo', '2005-11-10', 'Gostei', 'Lero-Lero'),
(7, 'Arafat ', 'Suspense', '2004-03-02', 158, 17.16, b'1', ' Clive Baker', '2020-02-03', 'Gostei', 'Rocco'),
(8, 'Este não é mais um livro de dieta', 'Auto-Ajuda', '2019-01-25', 988, 9.81, b'1', 'Rodrigo Polesso', '2012-04-02', 'Gostei', 'Editora Gente'),
(9, 'Atenção Plena: Mindfullness', 'Ficção-Cientifica', '2022-12-04', 122, 20.55, b'0', ' Ruy Ohtake', '2005-08-20', 'Não Gostei', 'Instituto Tomie Ohtake');

-- --------------------------------------------------------

--
-- Estrutura para tabela `rating`
--

DROP TABLE IF EXISTS `rating`;
CREATE TABLE IF NOT EXISTS `rating` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `nota` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Despejando dados para a tabela `rating`
--

INSERT INTO `rating` (`ID`, `nota`) VALUES
(1, 'Gostei'),
(2, 'Não Gostei');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
