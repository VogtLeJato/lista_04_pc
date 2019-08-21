-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Tempo de geração: 20/08/2019 às 16:53
-- Versão do servidor: 5.7.24-0ubuntu0.18.04.1
-- Versão do PHP: 7.2.13-1+ubuntu18.04.1+deb.sury.org+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `atv_prt_041_bd`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `equipes`
--

CREATE TABLE `equipes` (
  `numero da equipe` int(255) NOT NULL,
  `nome da equipe` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Fazendo dump de dados para tabela `equipes`
--

INSERT INTO `equipes` (`numero da equipe`, `nome da equipe`) VALUES
(13, 'jaspion'),
(17, 'nova'),
(42, 'ash'),
(49, 'obama'),
(54, 'hero');

-- --------------------------------------------------------

--
-- Estrutura para tabela `escolas`
--

CREATE TABLE `escolas` (
  `nome da escola` varchar(255) DEFAULT NULL,
  `cidade` varchar(255) DEFAULT NULL,
  `estado` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Fazendo dump de dados para tabela `escolas`
--

INSERT INTO `escolas` (`nome da escola`, `cidade`, `estado`) VALUES
('professora neide vieira', 'rio de janeiro', 'rio de janeiro'),
('professor felipe sainkt', 'joinville', 'santa catarina');

-- --------------------------------------------------------

--
-- Estrutura para tabela `membros`
--

CREATE TABLE `membros` (
  `e-mail` varchar(255) NOT NULL,
  `nome` varchar(255) DEFAULT NULL,
  `escola` varchar(255) DEFAULT NULL,
  `função` varchar(255) DEFAULT NULL,
  `numero da equipe` int(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Fazendo dump de dados para tabela `membros`
--

INSERT INTO `membros` (`e-mail`, `nome`, `escola`, `função`, `numero da equipe`) VALUES
('arrancacalcinha_hd_2000@outlook.com', 'joaquin araujo', 'professor felipe sainkt', 'voluntario', 17),
('jaziscleiton321@hotmail.com ', 'jaziscleiton da silva', 'professora neide vieira', 'aluno', 13),
('jessica_oslav@gmail.com', 'jessica oslav', 'professora neide vieira', 'docente', 49),
('lu_arantes90@gmail.com', 'luiz arantes', 'professora neide vieira', 'aluno', 54),
('mariasant_90@gmail.com', 'maria dos santos', 'professor felipe sainkt', 'docente', 42);

--
-- Índices de tabelas apagadas
--

--
-- Índices de tabela `equipes`
--
ALTER TABLE `equipes`
  ADD PRIMARY KEY (`numero da equipe`),
  ADD UNIQUE KEY `13` (`numero da equipe`);

--
-- Índices de tabela `membros`
--
ALTER TABLE `membros`
  ADD PRIMARY KEY (`e-mail`(40));

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
