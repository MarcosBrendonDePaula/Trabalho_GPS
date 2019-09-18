-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: 18-Set-2019 às 02:37
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
-- Estrutura da tabela `curriculos`
--

CREATE TABLE `curriculos` (
  `UserId` int(11) DEFAULT NULL,
  `Conteudo` longtext NOT NULL,
  `Data` date DEFAULT NULL,
  `ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
('Marcos Brendon de paula Azevedo', 'Melissa5', 'nexgamer0@gmail.com', 13, 'semAvatar.png'),
('Marcos brendon de paula', 'Melissa5', 'marcos15975321@gmail.com', 14, 'semAvatar.png'),
('Marcos brendon de paula', 'Melissa5', 'marcos15975321@gmail.com', 15, 'semAvatar.png'),
('Marcos brendon de paula', 'Melissa5', 'marcos15975321@gmail.com', 16, 'semAvatar.png'),
('Marcos brendon de paula', 'Melissa5', 'marcos15975321@gmail.com', 17, 'semAvatar.png'),
('Marcos Brendon de paula Azevedo', 'Melissa5', 'nexgamer0@gmail.com', 18, 'semAvatar.png'),
('teste testea', '1345641', 'teste@g.com', 19, 'semAvatar.png'),
('sssss dddddd', 'ddddddd', 'dddddd', 20, 'semAvatar.png'),
('Ana Rodrigues', 'kkkkkk', 'anapaula@gmail.com', 21, 'semAvatar.png'),
('sadasd sadsdas', 'asdasdasd', 'sadasdsd@gmail.com', 22, 'semAvatar.png'),
('Marcos Brendon', 'Melissa5', 'nexgamer0@gmail.com', 23, 'semAvatar.png'),
('Marcos Brendon', 'Melissa5', 'marcos897@gmail.com', 24, 'WIN_20190917_20_12_50_Pro.jpg'),
('wellington Schiavi', 'tururuuuuuuu', 'wellington@@@.com', 25, 'WIN_20190917_20_18_29_Pro.jpg'),
('teste novamente', 'Melissa5', 'sadasdasd@@@@.com', 26, 'semAvatar.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `curriculos`
--
ALTER TABLE `curriculos`
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
-- AUTO_INCREMENT for table `curriculos`
--
ALTER TABLE `curriculos`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `usuario`
--
ALTER TABLE `usuario`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
