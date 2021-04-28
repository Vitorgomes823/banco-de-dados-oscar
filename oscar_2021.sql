-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Tempo de geração: 28/04/2021 às 14:50
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
-- Banco de dados: `oscar_2021`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `vencedores`
--

DROP TABLE IF EXISTS `vencedores`;
CREATE TABLE IF NOT EXISTS `vencedores` (
  `nome` varchar(100) DEFAULT NULL,
  `categoria` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Despejando dados para a tabela `vencedores`
--

INSERT INTO `vencedores` (`nome`, `categoria`) VALUES
('Meu pai', 'melhor filme'),
('Judas e o messias negro', 'melhor filme'),
('\"Mank\"', 'melhor filme'),
('\"Minari\"', 'melhor filme'),
('\"Nomadland\"', 'melhor filme'),
('\"Bela vingança\"', 'melhor filme'),
('\"O som do silêncio\"', 'melhor filme'),
('\"Os 7 de Chicago\"', 'melhor filme'),
('Viola Davis\r\n', 'melhor atriz'),
('Andra Day\r\n', 'melhor atriz'),
('Vanessa Kirby \r\n\r\n', 'melhor atriz'),
('Frances McDormand\r\n', 'melhor atriz'),
('Carey Mulligan', 'melhor atriz'),
('Riz Ahmed ', 'melhor ator'),
('Chadwick Boseman ', 'melhor ator'),
('Anthony Hopkins\r\n', 'melhor ator'),
('Gary Oldman\r\n', 'melhor ator'),
('Steve Yeun', 'melhor ator'),
('Thomas Vinterberg', 'melhor diretor'),
('David Fincher\r\n', 'melhor diretor'),
('Lee Isaac Chung', 'melhor diretor'),
('Chloé Zhao\r\n', 'melhor diretor'),
('Emerald Fennell', 'melhor diretor'),
('Maria Bakalova', 'melhor atriz coadjuvante'),
('Glenn Close', 'melhor atriz coadjuvante'),
('Olivia Colman', 'melhor atriz coadjuvante'),
('Amanda Seyfried', 'melhor atriz coadjuvante'),
('Olivia Colman', 'melhor atriz coadjuvante'),
('Amanda Seyfried', 'melhor atriz coadjuvante'),
('Youn Yuh-jung', 'melhor atriz coadjuvante'),
('Sacha Baron Cohen', 'melhor ator coadjuvante'),
('Daniel Kaluuya', 'melhor ator coadjuvante'),
('Leslie Odom Jr.', 'melhor ator coadjuvante'),
('Paul Raci', 'melhor ator coadjuvante'),
('Lakeith Stanfield', 'melhor ator coadjuvante'),
('\"Druk - Mais uma rodada\" (Dinamarca)\r\n', 'melhor filme internacional'),
('\"Shaonian de ni\" (Hong Kong)\r\n', 'melhor filme internacional'),
('\"Collective\" (Romênia)\r\n', 'melhor filme internacional'),
('\"O homem que vendeu sua pele\" (Tunísia)\r\n', 'melhor filme internacional'),
('\"Quo vadis, Aida?\" (Bósnia e Herzegovina)', 'melhor filme internacional'),
('\"Borat: fita de cinema seguinte\"\r\n', 'melhor roteiro adaptado'),
('\"Meu pai\"\r\n', 'melhor roteiro adaptado'),
('\"Nomadland\"\r\n', 'melhor roteiro adaptado'),
('\"Uma noite em Miami\"\r\n', 'melhor roteiro adaptado'),
('\"O tigre branco\"', 'melhor roteiro adaptado'),
('\"Judas e o Messias negro\"', 'melhor roteiro original'),
('\"Minari\"\r\n', 'melhor roteiro original'),
('\"Bela vingança\"\r\n', 'melhor roteiro original'),
('\"O som do silêncio\"\r\n', 'melhor roteiro original'),
('\"Os 7 de Chicago\"\r\n', 'melhor roteiro original'),
('\"Emma\"\r\n', 'melhor figurino'),
('\"A voz suprema do blues\"\r\n', 'melhor figurino'),
('\"Mank\"\r\n', 'melhor figurino'),
('\"Mulan\"\r\n', 'melhor figurino'),
('\"Pinóquio\"', 'melhor figurino'),
('\"Destacamento blood\"\r\n', 'melhor trilha sonora'),
('\"Mank\"\r\n', 'melhor trilha sonora'),
('\"Minari\"\r\n', 'melhor trilha sonora'),
('\"Relatos do mundo\"', 'melhor trilha sonora'),
('\"Soul\"', 'melhor trilha sonora');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
