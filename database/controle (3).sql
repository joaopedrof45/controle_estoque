-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 29-Jan-2020 às 02:49
-- Versão do servidor: 10.3.16-MariaDB
-- versão do PHP: 7.1.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `controle`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `controle`
--

CREATE TABLE `controle` (
  `NOMEITEM` varchar(255) DEFAULT NULL,
  `LOCALIZACAO` varchar(255) DEFAULT NULL,
  `ORIGEM` varchar(255) DEFAULT NULL,
  `DESTINO` varchar(255) DEFAULT NULL,
  `TIPO` varchar(255) DEFAULT NULL,
  `QUANTIDADE` int(11) DEFAULT NULL,
  `DESCRICAO` varchar(255) DEFAULT NULL,
  `DATA` datetime DEFAULT NULL,
  `PATRIMONIO` varchar(255) DEFAULT NULL,
  `NR_SERIE` varchar(255) DEFAULT NULL,
  `id` int(11) NOT NULL,
  `MOTIVO` varchar(255) DEFAULT NULL,
  `RESPONSAVEL` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `controle`
--

INSERT INTO `controle` (`NOMEITEM`, `LOCALIZACAO`, `ORIGEM`, `DESTINO`, `TIPO`, `QUANTIDADE`, `DESCRICAO`, `DATA`, `PATRIMONIO`, `NR_SERIE`, `id`, `MOTIVO`, `RESPONSAVEL`) VALUES
('Mouse Daten', 'Guarapuava', 'Colombo', 'null', 'Almoxarifado', 0, 'desc', '0000-00-00 00:00:00', '0', '7897256213147', 43, 'NOVO TESTE', 'NOVO TESTE'),
('post-it', 'Colombo', 'Ponta Grossa', 'null', 'Almoxarifado', 1, 'desc', '2020-01-22 09:47:13', '0', '123', 44, NULL, NULL),
('Mouse Daten', 'Mateus Leme', 'Colombo', 'null', 'Almoxarifado', 0, 'desc', '0000-00-00 00:00:00', '0', '7897256213147', 45, 'jj', 'jj'),
('Mouse Daten', 'Colombo', 'Colombo', 'null', 'Almoxarifado', 0, 'desc', '2020-01-22 22:35:51', '0', '7897256213147', 46, 'MOTIVO DE TESTE 34', 'JOAO'),
('Mouse Daten', 'RebouÃ§as', 'Colombo', 'null', 'Almoxarifado', 7, 'desc', '2020-01-22 22:53:28', '0', '7897256213147', 47, 'TESTE NOVO', 'NN'),
('caneta preta', 'Londrina', 'Londrina', 'null', 'Almoxarifado', 17, 'CANETA PARA ESCRITORIO PRETA', '2020-01-22 22:58:07', '0', '0', 48, NULL, NULL),
('post-it', 'Maringa', 'Ponta Grossa', 'null', 'Almoxarifado', 3, 'desc', '2020-01-28 22:10:14', '0', '123', 49, 'teste2', 'teste2'),
('caneta preta', 'Maringa', 'Londrina', 'null', 'Almoxarifado', 3, 'CANETA PARA ESCRITORIO PRETA', '2020-01-28 22:13:33', '0', '0', 50, 'teste 72', 'teste 72');

-- --------------------------------------------------------

--
-- Estrutura da tabela `controle_prot`
--

CREATE TABLE `controle_prot` (
  `NOMEITEM` varchar(255) DEFAULT NULL,
  `LOCALIZACAO` varchar(255) DEFAULT NULL,
  `ORIGEM` varchar(255) DEFAULT NULL,
  `DESTINO` varchar(255) DEFAULT NULL,
  `TIPO` varchar(255) DEFAULT NULL,
  `QUANTIDADE` int(11) DEFAULT NULL,
  `DESCRICAO` varchar(255) DEFAULT NULL,
  `DATA` datetime DEFAULT NULL,
  `PATRIMONIO` varchar(255) NOT NULL,
  `NR_SERIE` varchar(255) DEFAULT NULL,
  `MOTIVO` varchar(255) DEFAULT NULL,
  `RESPONSAVEL` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `controle_prot`
--

INSERT INTO `controle_prot` (`NOMEITEM`, `LOCALIZACAO`, `ORIGEM`, `DESTINO`, `TIPO`, `QUANTIDADE`, `DESCRICAO`, `DATA`, `PATRIMONIO`, `NR_SERIE`, `MOTIVO`, `RESPONSAVEL`) VALUES
('PC DATEN TIPO 2', 'Maringa', 'Mateus Leme', 'null', 'Patrimonio', 1, 'PC DATEN TIPO 2 COM 8 GB DE RAM', '2020-01-28 22:28:51', '100003161745', '012', 'teste20', 'dddd');

-- --------------------------------------------------------

--
-- Estrutura da tabela `garantia`
--

CREATE TABLE `garantia` (
  `id` int(11) DEFAULT NULL,
  `data_ex` datetime DEFAULT NULL,
  `descricao` varchar(255) DEFAULT NULL,
  `data_ini` datetime DEFAULT NULL,
  `pat` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `garantia`
--

INSERT INTO `garantia` (`id`, `data_ex`, `descricao`, `data_ini`, `pat`) VALUES
(0, '2020-01-31 00:00:00', 'teste garantia para daten', '2020-01-01 00:00:00', '100003161745'),
(44, '2020-01-23 00:00:00', 'garantia para o post-it', '2020-01-15 00:00:00', '0'),
(48, '2020-01-31 00:00:00', 'garantia de caneta', '2020-01-01 00:00:00', '0'),
(1, '0000-00-00 00:00:00', 'desc', '0000-00-00 00:00:00', '0'),
(2, '0000-00-00 00:00:00', 'desc', '0000-00-00 00:00:00', '1'),
(3, '0000-00-00 00:00:00', 'desc', '0000-00-00 00:00:00', '4'),
(1, '0000-00-00 00:00:00', 'desc', '0000-00-00 00:00:00', '0'),
(2, '0000-00-00 00:00:00', 'desc', '0000-00-00 00:00:00', '1'),
(3, '0000-00-00 00:00:00', 'desc', '0000-00-00 00:00:00', '4'),
(1, '0000-00-00 00:00:00', 'desc', '0000-00-00 00:00:00', '0'),
(4, '0000-00-00 00:00:00', 'desc', '0000-00-00 00:00:00', ''),
(7, '0000-00-00 00:00:00', 'xx', '0000-00-00 00:00:00', ''),
(1, '0000-00-00 00:00:00', 'desc', '0000-00-00 00:00:00', '0'),
(4, '0000-00-00 00:00:00', 'desc', '0000-00-00 00:00:00', ''),
(7, '0000-00-00 00:00:00', 'xx', '0000-00-00 00:00:00', ''),
(47, '2020-01-31 00:00:00', 'dasd', '2020-01-01 00:00:00', '0'),
(44, '2020-01-31 00:00:00', 'fasdf', '2020-01-01 00:00:00', '0'),
(0, '0000-00-00 00:00:00', 'descricao', '0000-00-00 00:00:00', 'pat'),
(1, '0000-00-00 00:00:00', 'desc', '0000-00-00 00:00:00', '0'),
(4, '0000-00-00 00:00:00', 'desc', '0000-00-00 00:00:00', ''),
(7, '0000-00-00 00:00:00', 'xx', '0000-00-00 00:00:00', ''),
(8, '0000-00-00 00:00:00', 'teste', '0000-00-00 00:00:00', '456');

-- --------------------------------------------------------

--
-- Estrutura da tabela `history`
--

CREATE TABLE `history` (
  `id` int(11) NOT NULL,
  `NOMEITEM` varchar(255) DEFAULT NULL,
  `LOCALIZACAO` varchar(255) DEFAULT NULL,
  `ORIGEM` varchar(255) DEFAULT NULL,
  `DESTINO` varchar(255) DEFAULT NULL,
  `TIPO` varchar(255) DEFAULT NULL,
  `QUANTIDADE` int(11) DEFAULT NULL,
  `DESCRICAO` varchar(255) DEFAULT NULL,
  `DATA` datetime DEFAULT NULL,
  `PATRIMONIO` varchar(255) DEFAULT NULL,
  `NR_SERIE` varchar(255) DEFAULT NULL,
  `MOTIVO` varchar(255) DEFAULT NULL,
  `RESPONSAVEL` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `history`
--

INSERT INTO `history` (`id`, `NOMEITEM`, `LOCALIZACAO`, `ORIGEM`, `DESTINO`, `TIPO`, `QUANTIDADE`, `DESCRICAO`, `DATA`, `PATRIMONIO`, `NR_SERIE`, `MOTIVO`, `RESPONSAVEL`) VALUES
(1, 'post-it', 'Maringa', 'Ponta Grossa', 'null', 'Almoxarifado', 1, 'desc', '2020-01-28 22:07:41', '0', '123', 'tt', 'yy'),
(2, 'post-it', 'Colombo', 'Ponta Grossa', 'Maringa', 'Almoxarifado', 2, 'desc', '2020-01-28 22:10:14', '0', '123', 'teste2', 'teste2'),
(3, 'caneta preta', NULL, 'Londrina', 'Maringa', 'Almoxarifado', 3, 'CANETA PARA ESCRITORIO PRETA', '2020-01-28 22:13:33', '0', '0', 'teste 72', 'teste 72'),
(4, 'PC DATEN TIPO 2', NULL, 'Mateus Leme', 'Maringa', 'Patrimonio', 1, 'PC DATEN TIPO 2 COM 8 GB DE RAM', '2020-01-28 22:20:32', '100003161745', '', 'jj', 'jx'),
(5, 'PC DATEN TIPO 2', NULL, 'Mateus Leme', 'Maringa', 'Patrimonio', 1, 'PC DATEN TIPO 2 COM 8 GB DE RAM', '2020-01-28 22:24:22', '100003161745', '0', 't3es', 'somente'),
(6, 'PC DATEN TIPO 2', NULL, 'Colombo', 'Maringa', 'Patrimonio', 1, 'PC DATEN TIPO 2 COM 8 GB DE RAM', '2020-01-28 22:26:00', '100003161745', '0', 'dsadsa', 'dsadasd'),
(7, 'PC DATEN TIPO 2', NULL, 'Londrina', 'Maringa', 'Patrimonio', 1, 'PC DATEN TIPO 2 COM 8 GB DE RAM', '2020-01-28 22:28:51', '100003161745', '12', 'teste20', 'dddd');

-- --------------------------------------------------------

--
-- Estrutura da tabela `sedes`
--

CREATE TABLE `sedes` (
  `id` int(11) NOT NULL,
  `nomesede` varchar(255) DEFAULT NULL,
  `endereco` varchar(255) DEFAULT NULL,
  `nr` int(11) DEFAULT NULL,
  `cep` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `sedes`
--

INSERT INTO `sedes` (`id`, `nomesede`, `endereco`, `nr`, `cep`) VALUES
(1, 'Maringa', '', 425, '83050-610'),
(2, 'Maringa', 'Rua Laura Nunes Fernandes , 425 ,Parque da Fonte', 425, '83050-610');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `controle`
--
ALTER TABLE `controle`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `controle_prot`
--
ALTER TABLE `controle_prot`
  ADD PRIMARY KEY (`PATRIMONIO`);

--
-- Índices para tabela `history`
--
ALTER TABLE `history`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `sedes`
--
ALTER TABLE `sedes`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `controle`
--
ALTER TABLE `controle`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT de tabela `history`
--
ALTER TABLE `history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de tabela `sedes`
--
ALTER TABLE `sedes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
