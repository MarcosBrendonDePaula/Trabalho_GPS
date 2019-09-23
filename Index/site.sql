-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: 23-Set-2019 às 20:14
-- Versão do servidor: 5.7.25
-- versão do PHP: 7.1.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `site`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `curriculo`
--

CREATE TABLE `curriculo` (
  `Nome` varchar(255) NOT NULL,
  `Endereco` varchar(255) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `Cpf` varchar(255) NOT NULL,
  `Foto` varchar(255) NOT NULL,
  `Sexo` varchar(255) NOT NULL,
  `Curriculo` longtext NOT NULL,
  `Idade` int(11) NOT NULL,
  `ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `curriculo`
--

INSERT INTO `curriculo` (`Nome`, `Endereco`, `Email`, `Cpf`, `Foto`, `Sexo`, `Curriculo`, `Idade`, `ID`) VALUES
('Marcos Brendon', 'r incaio sutil de oliveira', 'nexgamer0@gmail.com', '11961176912', 'im1.jpg', 'M', 'ferrou bixo\r\neu nao sei fazer nada\r\npena q eu nao faço nada\r\nferrou bixo\r\neu nao sei fazer nada\r\npena q eu nao faço nadaferrou bixo\r\neu nao sei fazer nada\r\npena q eu nao faço nadaferrou bixo\r\neu nao sei fazer nada\r\npena q eu nao faço nada\r\n\r\nferrou bixo\r\neu nao sei fazer nada\r\npena q eu nao faço nadaferrou bixo\r\neu nao sei fazer nada\r\npena q eu nao faço nada\r\nferrou bixo\r\neu nao sei fazer nada\r\npena q eu nao faço nada\r\nferrou bixo\r\neu nao sei fazer nada\r\npena q eu nao faço nadaferrou bixo\r\neu nao sei fazer nada\r\npena q eu nao faço nada\r\n', 16, 4),
('Adolf Augustinho', 'asdasdasdasdasd', 'teste@gmail.com', '159753214586', 'WIN_20190918_16_12_16_Pro.jpg', 'O', 'augustinho carrara\r\nEsasdasdsadsadasd\r\naugustinho carrara\r\nEsasdasdsadsadasdaugustinho carrara\r\nEsasdasdsadsadasdaugustinho carrara\r\nEsasdasdsadsadasdaugustinho carrara\r\nEsasdasdsadsadasdaugustinho carrara\r\nEsasdasdsadsadasdvvvv\r\naugustinho carrara\r\nEsasdasdsadsadasdaugustinho carrara\r\nEsasdasdsadsadasdaugustinho carrara\r\nEsasdasdsadsadasd\r\naugustinho carrara\r\nEsasdasdsadsadasd\r\naugustinho carrara\r\nEsasdasdsadsadasd\r\naugustinho carrara\r\nEsasdasdsadsadasd\r\naugustinho carrara\r\nEsasdasdsadsadasd\r\naugustinho carrara\r\nEsasdasdsadsadasdaugustinho carrara\r\nEsasdasdsadsadasd\r\naugustinho carrara\r\nEsasdasdsadsadasdaugustinho carrara\r\nEsasdasdsadsadasdaugustinho carrara\r\nEsasdasdsadsadasdaugustinho carrara\r\nEsasdasdsadsadasdaugustinho carrara\r\nEsasdasdsadsadasdaugustinho carrara\r\nEsasdasdsadsadasdaugustinho carrara\r\nEsasdasdsadsadasdaugustinho carrara\r\nEsasdasdsadsadasdvvaugustinho carrara\r\nEsasdasdsadsadasdvaugustinho carrara\r\nEsasdasdsadsadasdvvvaugustinho carrara\r\nEsasdasdsadsadasdaugustinho carrara\r\nEsasdasdsadsadasdaugustinho carrara\r\nEsasdasdsadsadasdaugustinho carrara\r\nEsasdasdsadsadasdaugustinho carrara\r\nEsasdasdsadsadasdaugustinho carrara\r\nEsasdasdsadsadasdaugustinho carrara\r\nEsasdasdsadsadasdaugustinho carrara\r\nEsasdasdsadsadasdvaugustinho carrara\r\nEsasdasdsadsadasd\r\naugustinho carrara\r\nEsasdasdsadsadasd', 24, 5);

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuario`
--

CREATE TABLE `usuario` (
  `Nome` varchar(255) NOT NULL,
  `Senha` varchar(255) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `ID` int(11) NOT NULL,
  `FotoId` varchar(255) DEFAULT 'semAvatar.png'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `usuario`
--

INSERT INTO `usuario` (`Nome`, `Senha`, `Email`, `ID`, `FotoId`) VALUES
('Marcos Brendon', 'Melissa5', 'nexgamer0@gmail.com', 23, 'semAvatar.png'),
('Marcos Brendon', 'Melissa5', 'marcos897@gmail.com', 24, 'WIN_20190917_20_12_50_Pro.jpg'),
('wellington Schiavi', 'tururuuuuuuu', 'wellington@@@.com', 25, 'WIN_20190917_20_18_29_Pro.jpg'),
('Eric Rodrigues', '15975321', 'eric_rodrigues29@hotmail.com', 27, 'WIN_20190918_14_10_16_Pro.jpg'),
('Maria veron', '15975321', 'mariveron@hotmail.com', 28, 'WIN_20190918_14_12_23_Pro.jpg'),
('Ana Paula', 'anapaula12345', 'anapaula@gmail.com', 29, 'WIN_20190918_14_16_05_Pro.jpg'),
('Jose Filipe', '123456789', 'jose@gmail.com', 30, 'WIN_20190918_15_17_25_Pro.jpg'),
('Diego Luiz', '12345678', 'diegoreke@hotmail.com', 31, 'WIN_20190918_16_12_16_Pro.jpg'),
('sadsad asdasdasd', 'sadsdsadsad', 'asdsadasd', 38, 'WIN_20190918_16_12_16_Pro.jpg'),
('sadsad asdasdasd', 'sadsdsadsad', 'asdsadasd', 39, 'WIN_20190918_16_12_16_Pro.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `curriculo`
--
ALTER TABLE `curriculo`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `curriculo`
--
ALTER TABLE `curriculo`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `usuario`
--
ALTER TABLE `usuario`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
