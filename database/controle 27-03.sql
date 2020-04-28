-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Tempo de geração: 19/03/2020 às 20:16
-- Versão do servidor: 10.4.11-MariaDB
-- Versão do PHP: 7.4.1

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
CREATE DATABASE IF NOT EXISTS `controle` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `controle`;

-- --------------------------------------------------------

--
-- Estrutura para tabela `controle`
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
  `id` int(11) UNSIGNED NOT NULL,
  `MOTIVO` varchar(255) DEFAULT NULL,
  `PROTOCOLO` varchar(255) DEFAULT NULL,
  `gms` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura para tabela `controle_prot`
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
  `PROTOCOLO` varchar(255) DEFAULT NULL,
  `gms` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura para tabela `garantia`
--

CREATE TABLE `garantia` (
  `id` int(11) DEFAULT NULL,
  `data_ex` datetime DEFAULT NULL,
  `descricao` varchar(255) DEFAULT NULL,
  `data_ini` datetime DEFAULT NULL,
  `pat` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura para tabela `history`
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
  `PROTOCOLO` varchar(255) DEFAULT NULL,
  `ip` varchar(255) DEFAULT NULL,
  `acao` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura para tabela `sedes`
--

CREATE TABLE `sedes` (
  `id` int(11) NOT NULL,
  `nomesede` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `endereco` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `nr` int(11) DEFAULT NULL,
  `cep` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `local` varchar(255) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Despejando dados para a tabela `sedes`
--

INSERT INTO `sedes` (`id`, `nomesede`, `endereco`, `nr`, `cep`, `local`) VALUES
(1, 'Sede Central', 'Rua José Bonifácio', 66, '80020-130', 'Bonifácio\r'),
(2, 'Núcleo Criminal-Ahú', 'Av. Anita Garibaldi', 750, '80540-180', 'Ahú\r'),
(3, 'Santa Felicidade', 'Rua José Bonifácio', 66, '80020-130', 'Santa Felicidade\r'),
(4, 'Boqueirão', 'Avenida Marechal Floriano Peixoto', 8257, '80520-070', 'Boqueirão\r'),
(5, 'CIC', 'Rua Lodovico Kaminski', 2525, '81260-282', 'CIC\r'),
(6, 'Pinheirinho', 'Avenida Winston Churchill', 2471, '81150-050', 'Pinheirinho\r'),
(7, 'Casa da Mulher Brasileira', 'Av. Paraná', 870, '80035-130', 'Cabral\r'),
(8, 'Juizado de Violência Doméstica ', 'Avenida João Gualberto', 1073, '80030-001', 'Alto da Glória\r'),
(9, 'Vara da Infância e da Juventude', 'Rua da Glória', 290, '80030-060', 'Centro Cívico\r'),
(10, 'Vara de adolescentes em conflito com a lei', 'Rua Pastor Manoel Virgílio de Souza', 1310, '82810-140', 'Capão da Imbuia\r'),
(11, 'Vara de Infrações Penais', 'Av. Iguacu', 750, '80230-020', 'Rebouças\r'),
(12, 'Tribunal do Juri', 'Rua Ernâni Santiago de Oliveira', 268, '80530-100', 'Centro Cívico\r'),
(13, 'Segundo Grau de Jurisdição', 'Rua da Glória', 393, '80030-060', 'Centro Cívico\r'),
(14, 'Fórum  São José dos Pinhais', 'Rua João Ângelo Cordeiro', 0, '83005-570', 'Centro de São José dos Pinhais\r'),
(15, 'Guaratuba', 'Rua Tiago Pedroso', 417, '83280-000', 'Guaratuba\r'),
(16, 'Umuarama', 'Rua Desembargador Munhoz de Mello', 3792, '87501-180', 'Umuarama\r'),
(17, 'Cianorte', 'Avenida Maranhão', 255, '87200-980', 'Cianorte\r'),
(18, 'Guarapuava', 'Avenida Manoel Ribas', 2537, '85010-180', 'Guarapuava\r'),
(19, 'Ponta Grossa', 'Rua Doutor Leopoldo Guimarães da Cunha', 300, '84035-310', 'Ponta Grossa\r'),
(20, 'Castro', 'Rua Padre Damaso', 81, '84165-540', 'Castro\r'),
(21, 'Sede Apucarana', 'Travessa João Gurgel Macedo', 100, '86800-710', 'Apucarana\r'),
(22, 'Londrina', 'Av. Bandeirantes', 263, '86010-020', 'Londrina\r'),
(23, 'Sede Maringá', 'Av. Tiradentes', 1289, '87013-344', 'Maringá\r'),
(24, 'Sede Cornélio Procópio', 'Rua Massudi Amim', 165, '86300-000', 'Cornélio Procópio\r'),
(25, 'Sede Campo Mourão', 'Rua Duque de Caxias', 786, '87305-320', 'Campo Mourão\r'),
(26, 'Sede Cascavel', 'Rua São Paulo', 346, '85801-020', 'Cascavel\r'),
(27, 'Sede Foz do Iguaçu', 'Rua Antônio Raposo', 923, '85851-090', 'Foz do Iguaçu\r'),
(28, 'Sede Francisco Beltrão', 'Rua Alagoas', 655, '85601-080', 'Francisco Beltrão\r'),
(29, 'Sede União da Vitória', 'Rua Marechal Floriano Peixoto', 0, '84600-000', 'União da Vitória\r'),
(32, 'Colombo', NULL, NULL, NULL, 'Colombo'),
(33, 'Mateus Leme', NULL, NULL, NULL, 'Mateus Leme');

--
-- Índices de tabelas apagadas
--

--
-- Índices de tabela `controle`
--
ALTER TABLE `controle`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `controle_prot`
--
ALTER TABLE `controle_prot`
  ADD PRIMARY KEY (`PATRIMONIO`);

--
-- Índices de tabela `history`
--
ALTER TABLE `history`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `sedes`
--
ALTER TABLE `sedes`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas apagadas
--

--
-- AUTO_INCREMENT de tabela `controle`
--
ALTER TABLE `controle`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `history`
--
ALTER TABLE `history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `sedes`
--
ALTER TABLE `sedes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;
--
-- Banco de dados: `controle_copia`
--
CREATE DATABASE IF NOT EXISTS `controle_copia` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `controle_copia`;

-- --------------------------------------------------------

--
-- Estrutura para tabela `controle`
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
  `PROTOCOLO` varchar(255) DEFAULT NULL,
  `gms` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Despejando dados para a tabela `controle`
--

INSERT INTO `controle` (`NOMEITEM`, `LOCALIZACAO`, `ORIGEM`, `DESTINO`, `TIPO`, `QUANTIDADE`, `DESCRICAO`, `DATA`, `PATRIMONIO`, `NR_SERIE`, `id`, `MOTIVO`, `PROTOCOLO`, `gms`) VALUES
('filtro de linhp', 'Mateus Leme', 'Mateus Leme', 'null', 'Almoxarifado', 1, 'TESTE TES', '2020-02-03 13:10:50', '0', '0', 1, NULL, '457', '456'),
('filtro de linha', 'Colombo', 'Colombo', 'null', 'Almoxarifado', 3, '4', '2020-02-03 15:28:10', '0', '00000', 4, NULL, '', ''),
('caneta azul', 'Ponta Grossa', 'Ponta Grossa', 'null', 'Almoxarifado', 1000, '5', '2020-02-03 15:34:56', '0', '00000', 5, NULL, NULL, ''),
('filtro de linha 2', 'Colombo', 'Colombo', 'null', 'Almoxarifado', 0, '6', '2020-02-03 15:39:15', '0', '0', 6, NULL, NULL, ''),
('filtro de linha', 'CIC', 'Mateus Leme', 'null', 'Almoxarifado', 2, '7', '2020-02-07 18:17:21', '0', '0', 8, 'ss', '456 ', NULL),
('filtro de linh0', 'Mateus Leme', 'Mateus Leme', 'null', 'Almoxarifado', 1, '8', '2020-02-10 14:33:02', '0', '00000', 9, NULL, '123', '4135563406'),
('filtro tt7-C', 'Londrina', 'Londrina', 'null', 'Almoxarifado', 200, '9', '2020-02-11 15:29:14', '0', '00000', 10, NULL, '', '4135563406'),
('filtro 789996', 'Londrina', 'Londrina', 'null', 'Almoxarifado', 200, '17', '2020-02-11 15:29:14', '0', '00000', 18, NULL, NULL, '4135563406'),
('filtro de linhaaeae', 'Ponta Grossa', 'Mateus Leme', 'null', 'Almoxarifado', 74, '1', '2020-02-06 17:46:06', '0', '0', 23, 'ttttttt', 'tttttttttt ', NULL),
('filtro de linho', 'Boqueirão', 'Mateus Leme', 'null', 'Almoxarifado', 40, '2', '2020-02-07 18:41:16', '0', '00000', 29, 'd', '12112121-89 ', NULL),
('filtro de linha', 'Mateus Leme', 'Mateus Leme', 'null', 'Almoxarifado', 100, 'Filtro de Linha', '2020-02-10 15:26:59', '0', '00000', 31, NULL, 'xxxCCCC', 'CCXZ'),
('filtro de linhp', 'CIC', 'Mateus Leme', 'null', 'Almoxarifado', 20, '2', '2020-02-10 15:56:32', '0', '00000', 32, 'teste', 'teste ', NULL),
('filtro de linhu', 'CIC', 'Mateus Leme', 'null', 'Almoxarifado', 4, 'TESTE TES', '2020-03-10 15:18:36', '0', '0', 33, 'teste', 'titi ', NULL),
('caneta azul', 'Santa Felicidade', 'Ponta Grossa', 'null', 'Almoxarifado', 100, '5', '2020-03-09 17:22:57', '0', '00000', 34, 'Teste de transferencia', 'Teste de transferencia ', NULL),
('caneta aze', 'CIC', 'Ponta Grossa', 'null', 'Almoxarifado', 5, '5', '2020-03-09 17:24:21', '0', '00000', 35, 'teste novo', 'teste novo ', '');

-- --------------------------------------------------------

--
-- Estrutura para tabela `controle_prot`
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
  `PROTOCOLO` varchar(255) DEFAULT NULL,
  `gms` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Despejando dados para a tabela `controle_prot`
--

INSERT INTO `controle_prot` (`NOMEITEM`, `LOCALIZACAO`, `ORIGEM`, `DESTINO`, `TIPO`, `QUANTIDADE`, `DESCRICAO`, `DATA`, `PATRIMONIO`, `NR_SERIE`, `MOTIVO`, `PROTOCOLO`, `gms`) VALUES
('PC DATEN TIPO 2', 'CIC', 'Mateus Leme', 'null', 'Patrimonio', 1, 'PC DATEN TIPO 2 COM 8 GB DE RAM', '2020-03-10 15:20:03', '100003161749', '012', 'e ', 'et ', '457'),
('PC DATEN TIPO 2', 'Maringa', 'Mateus Leme', 'null', 'Patrimonio', 1, 'PC DATEN TIPO 2 COM 8 GB DE RAM', '2020-01-28 22:28:51', '100003161755', '012', 'teste20', '456465-522', '457'),
('PC DATEN TIPO 2', 'Maringa', 'Mateus Leme', 'null', 'Patrimonio', 1, 'PC DATEN TIPO 2 COM 8 GB DE RAM', '2020-01-28 22:28:51', '100003161793', '012', 'teste20', '456465-522', '457'),
('PC ILHA.', 'Boqueirão', 'Mateus Leme', 'null', 'Patrimonio', 1, 'desc', '2020-02-04 15:07:39', '2655656', '00000', 'teste', 'teste', '7000-500'),
('Filtro de LINHA', 'Mateus Leme', 'Mateus Leme', 'null', 'Patrimonio', 1, 'dasda', '2020-02-10 15:22:58', '4849', '00000', NULL, '17', '4135563406'),
('PC ILHA', 'Boqueirão', 'Mateus Leme', 'null', 'Patrimonio', 1, 'desc', '2020-02-04 15:07:39', '7511111111452789', '00000', 'teste', 'teste', '7000-500'),
('PC ILHA', 'Boqueirão', 'Mateus Leme', 'null', 'Patrimonio', 1, 'desc', '2020-02-04 15:07:39', '754444466', '00000', 'teste', 'teste', '7000-500'),
('PC ILHA tstst', 'Boqueirão', 'Mateus Leme', 'null', 'Patrimonio', 1, 'desc', '2020-02-04 15:07:39', '7545213465', '00000', 'teste', 'teste', '7000-500');

-- --------------------------------------------------------

--
-- Estrutura para tabela `garantia`
--

CREATE TABLE `garantia` (
  `id` int(11) DEFAULT NULL,
  `data_ex` datetime DEFAULT NULL,
  `descricao` varchar(255) DEFAULT NULL,
  `data_ini` datetime DEFAULT NULL,
  `pat` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Despejando dados para a tabela `garantia`
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
-- Estrutura para tabela `history`
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
  `PROTOCOLO` varchar(255) DEFAULT NULL,
  `ip` varchar(255) DEFAULT NULL,
  `acao` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Despejando dados para a tabela `history`
--

INSERT INTO `history` (`id`, `NOMEITEM`, `LOCALIZACAO`, `ORIGEM`, `DESTINO`, `TIPO`, `QUANTIDADE`, `DESCRICAO`, `DATA`, `PATRIMONIO`, `NR_SERIE`, `MOTIVO`, `PROTOCOLO`, `ip`, `acao`) VALUES
(1, 'post-it', 'Maringa', 'Ponta Grossa', 'null', 'Almoxarifado', 1, 'desc', '2020-01-28 22:07:41', '0', '123', 'tt', 'yy', NULL, NULL),
(2, 'post-it', 'Colombo', 'Ponta Grossa', 'Maringa', 'Almoxarifado', 2, 'desc', '2020-01-28 22:10:14', '0', '123', 'teste2', 'teste2', NULL, NULL),
(3, 'caneta preta', NULL, 'Londrina', 'Maringa', 'Almoxarifado', 3, 'CANETA PARA ESCRITORIO PRETA', '2020-01-28 22:13:33', '0', '0', 'teste 72', 'teste 72', NULL, NULL),
(4, 'PC DATEN TIPO 2', NULL, 'Mateus Leme', 'Maringa', 'Patrimonio', 1, 'PC DATEN TIPO 2 COM 8 GB DE RAM', '2020-01-28 22:20:32', '100003161745', '', 'jj', 'jx', NULL, NULL),
(5, 'PC DATEN TIPO 2', NULL, 'Mateus Leme', 'Maringa', 'Patrimonio', 1, 'PC DATEN TIPO 2 COM 8 GB DE RAM', '2020-01-28 22:24:22', '100003161745', '0', 't3es', 'somente', NULL, NULL),
(6, 'PC DATEN TIPO 2', NULL, 'Colombo', 'Maringa', 'Patrimonio', 1, 'PC DATEN TIPO 2 COM 8 GB DE RAM', '2020-01-28 22:26:00', '100003161745', '0', 'dsadsa', 'dsadasd', NULL, NULL),
(7, 'PC DATEN TIPO 2', NULL, 'Londrina', 'Maringa', 'Patrimonio', 1, 'PC DATEN TIPO 2 COM 8 GB DE RAM', '2020-01-28 22:28:51', '100003161745', '12', 'teste20', 'dddd', NULL, NULL),
(8, 'teclado azul', NULL, 'Colombo', 'CIC', 'Almoxarifado', 2, 'gamer', '2020-01-29 17:39:10', '0', '78515', 'tt', 'tt', NULL, NULL),
(9, 'teclado azul', NULL, 'Colombo', 'Núcleo Criminal-Ahú', 'Almoxarifado', 8, 'gamer', '2020-01-29 17:40:11', '0', '78515', 'teste', 'tesss', NULL, NULL),
(10, 'filtro de linha', NULL, 'Mateus Leme', 'CIC', 'Almoxarifado', 2, 'desc', '2020-01-31 16:35:49', '0', '00000', 'dd', 'ww', NULL, NULL),
(11, 'filtro de linha 2', NULL, 'Colombo', 'Núcleo Criminal-Ahú', 'Almoxarifado', 1, 'dasda', '2020-02-03 15:40:58', '0', '0', 'dd', 'd', NULL, NULL),
(12, 'PC ILHA', NULL, 'Mateus Leme', 'Santa Felicidade', 'Patrimonio', 1, 'desc', '2020-02-04 15:06:53', '75452', '0', 't', 't', NULL, NULL),
(13, 'PC ILHA', NULL, 'Colombo', 'Boqueirão', 'Patrimonio', 1, 'desc', '2020-02-04 15:07:39', '75452', '0', 'teste', 'teste', NULL, NULL),
(14, 'filtro de linha', NULL, 'Mateus Leme', 'CIC', 'Almoxarifado', 2, '4135563407', '2020-02-07 18:02:08', '0', '0', 'dd', 'heheh biriri', NULL, NULL),
(15, 'filtro de linha', NULL, 'Mateus Leme', 'CIC', 'Almoxarifado', 2, '4135563407', '2020-02-07 18:09:15', '0', '0', 'dd', '456 ', NULL, NULL),
(16, 'PC ILHA', NULL, 'Boqueirão', 'CIC', 'Patrimonio', 1, 'desc', '2020-02-07 18:10:46', '75452', '0', 'n sei', '70 ', NULL, NULL),
(17, 'filtro de linha', NULL, 'Mateus Leme', 'CIC', 'Almoxarifado', 2, '4135563407', '2020-02-07 18:11:50', '0', '0', 'dd', '80 ', NULL, NULL),
(18, 'filtro de linha', NULL, 'Mateus Leme', 'CIC', 'Almoxarifado', 2, '4135563407', '2020-02-07 18:15:04', '0', '0', 'dd', '789 ', NULL, NULL),
(19, 'filtro testa', NULL, 'Mateus Leme', 'CIC', 'Almoxarifado', 20, '15', '2020-02-06 18:42:05', '0', '00000', 'xxx', 'xxx', NULL, NULL),
(20, 'filtro testa', NULL, 'Mateus Leme', 'CIC', 'Almoxarifado', 20, '15', '2020-02-06 18:44:19', '0', '00000', 'xxx', 'xxx', '10.77.39.244', NULL),
(21, 'filtro de linho', NULL, 'Mateus Leme', 'CIC', 'Almoxarifado', 10, '2', '2020-02-06 18:47:51', '0', '00000', 'xxx', 'xxx', '10.77.39.244', 'Movimentacao'),
(22, 'filtro de linho', NULL, 'Mateus Leme', 'Boqueirão', 'Almoxarifado', 20, '2', '2020-02-07 18:38:00', '0', '00000', 'd', '12112121-88', '10.77.39.244', 'Movimentacao'),
(23, 'filtro de linho', NULL, 'Mateus Leme', 'Boqueirão', 'Almoxarifado', 20, '2', '2020-02-07 18:41:16', '0', '00000', 'd', '12112121-89', '10.77.39.244', 'Movimentacao'),
(24, 'filtro de linhi', NULL, 'Mateus Leme', 'Mateus Leme', 'Almoxarifado', 0, '', '2020-02-07 18:48:07', '0', NULL, NULL, '457', '10.77.39.244', 'Alteração'),
(25, 'filtro de linhi', NULL, 'Mateus Leme', 'Mateus Leme', 'Almoxarifado', 0, '', '2020-02-07 18:49:26', '0', NULL, NULL, '457', '10.77.39.244', 'Alteração'),
(26, 'filtro de linhi', NULL, 'Mateus Leme', 'Mateus Leme', 'Almoxarifado', 0, '', '2020-02-07 18:50:24', '0', NULL, NULL, '457', '10.77.39.244', 'Alteração'),
(27, 'filtro de linhi', NULL, 'Mateus Leme', 'Mateus Leme', 'Almoxarifado', 0, '', '2020-02-07 18:51:33', '0', NULL, NULL, '457', '10.77.39.244', 'Alteração'),
(28, 'filtro de linhi', NULL, 'Mateus Leme', 'Mateus Leme', 'Almoxarifado', 0, 'tttttt5', '2020-02-07 18:52:00', '0', NULL, NULL, '457', '10.77.39.244', 'Alteração'),
(29, 'filtro de linho', NULL, 'Mateus Leme', 'Mateus Leme', 'Almoxarifado', 121, '2', '2020-02-07 19:00:20', '0', NULL, NULL, '22', '10.77.39.244', 'Alteração'),
(30, 'filtro de linho0', NULL, 'Mateus Leme', 'Mateus Leme', 'Almoxarifado', 121, '2', '2020-02-07 19:11:10', '0', NULL, NULL, '22', '10.77.39.244', 'Alteração'),
(31, 'filtro de linho', NULL, 'Mateus Leme', 'Mateus Leme', 'Almoxarifado', 121, '2', '2020-02-07 19:25:01', '0', NULL, NULL, '22', '10.77.39.244', 'Alteração'),
(32, 'filtro de linho', NULL, 'Mateus Leme', 'Mateus Leme', 'Almoxarifado', 121, '2', '2020-02-07 19:25:32', '0', NULL, NULL, '22', '10.77.39.244', 'Alteração'),
(33, 'filtro de linhe', NULL, 'Mateus Leme', 'Mateus Leme', 'Almoxarifado', 121, '2', '2020-02-07 19:28:32', '0', NULL, NULL, '22', '10.77.39.244', 'Alteração'),
(34, 'filtro de linho', NULL, 'Mateus Leme', 'Mateus Leme', 'Almoxarifado', 0, 'tttttt5', '2020-02-07 19:52:45', '0', NULL, NULL, '457', '10.77.39.244', 'Alteração'),
(35, 'filtro de linhe', NULL, 'Mateus Leme', 'Mateus Leme', 'Almoxarifado', 0, 'tttttt5', '2020-02-07 19:53:24', '0', NULL, NULL, '457', '10.77.39.244', 'Alteração'),
(36, 'filtro de linhe', NULL, 'Mateus Leme', 'Mateus Leme', 'Almoxarifado', 2, 'tttttt5', '2020-02-07 19:54:03', '0', NULL, NULL, '457', '10.77.39.244', 'Alteração'),
(37, 'filtro de linhp', NULL, 'Mateus Leme', 'Mateus Leme', 'Almoxarifado', 2, 'tttttt5', '2020-02-07 19:54:42', '0', NULL, NULL, '457', '10.77.39.244', 'Alteração'),
(38, 'filtro de linhE', NULL, 'Mateus Leme', 'Mateus Leme', 'Almoxarifado', 2, 'tttttt5', '2020-02-07 20:06:51', '0', NULL, NULL, '457', '10.77.39.244', 'Alteração'),
(39, 'filtro de linhi', NULL, 'Mateus Leme', 'Mateus Leme', 'Almoxarifado', 2, 'tttttt5', '2020-02-07 20:07:41', '0', NULL, NULL, '457', '10.77.39.244', 'Alteração'),
(40, 'filtro de linhp', NULL, 'Mateus Leme', 'Mateus Leme', 'Almoxarifado', 2, 'tttttt5', '2020-02-07 20:09:20', '0', NULL, NULL, '457', '10.77.39.244', 'Alteração'),
(41, 'filtro te', NULL, 'Mateus Leme', 'Mateus Leme', 'Almoxarifado', 10, '15', '2020-02-07 20:09:31', '0', NULL, NULL, '', '10.77.39.244', 'Alteração'),
(42, 'filtro de linhp', NULL, 'Mateus Leme', 'Mateus Leme', 'Almoxarifado', 121, '2', '2020-02-10 15:33:55', '0', NULL, NULL, '22', '10.77.39.244', 'Alteração'),
(43, 'filtro de linho', NULL, 'Mateus Leme', 'Mateus Leme', 'Almoxarifado', 2, 'tttttt5', '2020-02-10 15:35:06', '0', NULL, NULL, '457', '10.77.39.244', 'Alteração'),
(44, 'filtro de linhp', NULL, 'Mateus Leme', 'CIC', 'Almoxarifado', 20, '2', '2020-02-10 15:56:32', '0', '00000', 'teste', 'teste', '10.77.39.244', 'Movimentacao'),
(45, 'PC DATEN TY', NULL, 'Mateus Leme', 'CIC', 'Patrimonio', 1, 'PC DATEN TIPO IPO', '2020-02-10 15:57:16', '100003161745', '', 'teste', 'teste', '10.77.39.244', 'Movimentação'),
(46, 'PC DATEN TY', NULL, 'Mateus Leme', 'CIC', 'Patrimonio', 1, 'PC DATEN TIPO IPO', '2020-02-10 15:58:52', '100003161745', '', 'teste', 'teste', '10.77.39.244', 'Movimentação'),
(47, 'PC DATEN TY', NULL, 'Mateus Leme', 'Boqueirão', 'Patrimonio', 1, 'PC DATEN TIPO IPO', '2020-02-10 15:59:32', '100003161745', '', 'teste', 'teste', '10.77.39.244', 'Movimentação'),
(48, 'PC DATEN TY', NULL, 'Mateus Leme', 'CIC', 'Patrimonio', 1, 'PC DATEN TIPO IPO', '2020-02-10 16:05:29', '100003161745', '', 'teste', 'teste', '10.77.39.244', 'Movimentação'),
(49, 'filtro de linhi', NULL, 'Mateus Leme', 'Mateus Leme', 'Almoxarifado', 2, 'tttttt5', '2020-02-10 16:06:03', '0', NULL, NULL, '457', '10.77.39.244', 'Alteração'),
(50, 'PC DATEN T', NULL, 'CIC', 'CIC', 'Patrimonio', 1, 'PC DATEN TIPO IPO', '2020-02-10 16:23:51', '0', NULL, NULL, 'teste ', '10.77.39.244', 'Alteração'),
(51, 'PC ILHA tstst', NULL, 'Boqueirão', 'Boqueirão', 'Patrimonio', 1, 'desc', '2020-02-10 16:25:00', '0', NULL, NULL, 'teste', '10.77.39.231', 'Alteração'),
(52, 'PC DATEN T', NULL, 'Mateus Leme', 'NULL', 'Almoxarifado', 1, 'PC DATEN TIPO IPO', '2020-02-10 16:35:06', '0', '012', 'NULL', 'teste ', '10.77.39.231', 'Exclusão'),
(53, 'filtro te', NULL, 'Londrina', 'NULL', 'Almoxarifado', 10, '15', '2020-02-10 16:35:36', '0', '00000', 'NULL', '', '10.77.39.231', 'Exclusão'),
(54, 'filtro de linhas', NULL, 'Mateus Leme', 'NULL', 'Almoxarifado', 50, '3', '2020-02-10 16:36:54', '0', '00000', 'NULL', '', '10.77.39.231', 'Exclusão'),
(55, 'filtro de linhass', NULL, 'Mateus Leme', 'NULL', 'Almoxarifado', 2, 'zz', '2020-02-10 16:36:55', '0', '00000', 'NULL', '', '10.77.39.231', 'Exclusão'),
(56, 'filtro de linhp', NULL, 'Mateus Leme', 'NULL', 'Almoxarifado', 101, '2', '2020-02-10 16:36:56', '0', '00000', 'NULL', '', '10.77.39.231', 'Exclusão'),
(57, 'PC DATEN TIPO 1', NULL, 'Mateus Leme', 'NULL', 'Patrimonio', 1, 'soyny', '2020-02-10 16:37:15', '0', '012', 'NULL', '456465-522', '10.77.39.231', 'Exclusão'),
(58, 'PC ILHA', NULL, 'Mateus Leme', 'NULL', 'Patrimonio', 1, 'desc', '2020-02-10 16:37:28', '0', '00000', 'NULL', 'teste', '10.77.39.231', 'Exclusão'),
(59, 'filtro de linhi', NULL, 'Mateus Leme', 'Mateus Leme', 'Almoxarifado', 2, 'tttttt', '2020-02-17 16:22:17', '0', NULL, NULL, '457', '10.77.39.244', 'Alteração'),
(60, 'filtro de linhi', NULL, 'Mateus Leme', 'Mateus Leme', 'Almoxarifado', 2, 'TESTE TES', '2020-02-17 16:31:01', '0', NULL, NULL, '457', '10.77.39.244', 'Alteração'),
(61, 'filtro de linhu', NULL, 'Mateus Leme', 'Mateus Leme', 'Almoxarifado', 2, 'TESTE TES', '2020-03-09 14:26:13', '0', NULL, NULL, '457', '10.77.39.244', 'Alteração'),
(62, 'filtro de linhu', NULL, 'Mateus Leme', 'CIC', 'Almoxarifado', 2, 'TESTE TES', '2020-03-09 17:19:18', '0', '0', 'dd', 'xxx', '10.77.39.244', 'Movimentacao'),
(63, 'PC DATEN TIPO 2', NULL, 'Mateus Leme', 'Boqueirão', 'Patrimonio', 1, 'PC DATEN TIPO 2 COM 8 GB DE RAM', '2020-03-09 17:20:49', '100003161749', '', 'dd', 'xxx', '10.77.39.244', 'Movimentação'),
(64, 'caneta azul', NULL, 'Ponta Grossa', 'Santa Felicidade', 'Almoxarifado', 105, '5', '2020-03-09 17:22:57', '0', '00000', 'Teste de transferencia', 'Teste de transferencia', '10.77.39.244', 'Movimentacao'),
(65, 'caneta azul', NULL, 'Santa Felicidade', 'CIC', 'Almoxarifado', 5, '5', '2020-03-09 17:24:21', '0', '00000', 'teste novo', 'teste novo', '10.77.39.244', 'Movimentacao'),
(66, 'filtro de linhaaeae', NULL, 'Mateus Leme', 'NULL', 'Almoxarifado', 50, '1', '2020-03-09 17:37:43', '0', '0', 'NULL', 'ttttttt', '10.77.39.244', 'Exclusão'),
(67, 'filtro de linhaaeae', NULL, 'Mateus Leme', 'NULL', 'Almoxarifado', 50, '1', '2020-03-09 17:37:57', '0', '0', 'NULL', 'dd', '10.77.39.244', 'Exclusão'),
(68, 'filtro de linhu', NULL, 'Mateus Leme', 'Boqueirão', 'Almoxarifado', 2, 'TESTE TES', '2020-03-10 15:18:20', '0', '0', 'teste', 'titi', '10.77.39.244', 'Movimentacao'),
(69, 'filtro de linhu', NULL, 'Mateus Leme', 'CIC', 'Almoxarifado', 2, 'TESTE TES', '2020-03-10 15:18:36', '0', '0', 'teste', 'titi', '10.77.39.244', 'Movimentacao'),
(70, 'PC DATEN TIPO 2', NULL, 'Ponta Grossa', 'CIC', 'Patrimonio', 1, 'PC DATEN TIPO 2 COM 8 GB DE RAM', '2020-03-10 15:20:03', '100003161749', '', 'e ', 'et', '10.77.39.244', 'Movimentação'),
(71, 'filtro de linhu', NULL, 'Mateus Leme', 'NULL', 'Almoxarifado', 2, 'TESTE TES', '2020-03-10 15:44:22', '0', '0', 'NULL', 'teste', '10.77.39.244', 'Exclusão'),
(72, 'caneta aze', NULL, 'CIC', 'CIC', 'Almoxarifado', 5, '5', '2020-03-10 15:44:47', '0', NULL, NULL, 'teste novo ', '10.77.39.244', 'Alteração'),
(73, 'filtro de linhaaeae', NULL, 'Mateus Leme', 'NULL', 'Almoxarifado', 20, '1', '2020-03-10 16:58:09', '0', '0', 'NULL', 'dd', '10.77.39.244', 'Exclusão'),
(74, 'filtro testa', NULL, 'Londrina', 'NULL', 'Almoxarifado', 200, '15', '2020-03-10 17:00:24', '0', '00000', 'NULL', 'xxx', '10.77.39.244', 'Exclusão'),
(75, 'filtro de linho', NULL, 'Mateus Leme', 'NULL', 'Almoxarifado', 10, '2', '2020-03-10 17:33:21', '0', '00000', 'NULL', 'xxx', '10.77.39.244', 'Exclusão'),
(76, 'filtro de linhp', NULL, 'Mateus Leme', 'Mateus Leme', 'Almoxarifado', 1, 'TESTE TES', '2020-03-11 17:11:53', '0', NULL, NULL, '457', '10.77.39.244', 'Alteração');

-- --------------------------------------------------------

--
-- Estrutura para tabela `sedes`
--

CREATE TABLE `sedes` (
  `id` int(11) NOT NULL,
  `nomesede` varchar(255) DEFAULT NULL,
  `endereco` varchar(255) DEFAULT NULL,
  `nr` int(11) DEFAULT NULL,
  `cep` varchar(255) DEFAULT NULL,
  `local` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Despejando dados para a tabela `sedes`
--

INSERT INTO `sedes` (`id`, `nomesede`, `endereco`, `nr`, `cep`, `local`) VALUES
(1, '﻿Sede Central', 'Rua José Bonifácio', 66, '80020-130', 'Bonifácio\r'),
(2, 'Núcleo Criminal-Ahú', 'Av. Anita Garibaldi', 750, '80540-180', 'Ahú\r'),
(3, 'Santa Felicidade', 'Rua José Bonifácio', 66, '80020-130', 'Santa Felicidade\r'),
(4, 'Boqueirão', 'Avenida Marechal Floriano Peixoto', 8257, '80520-070', 'Boqueirão\r'),
(5, 'CIC', 'Rua Lodovico Kaminski', 2525, '81260-282', 'CIC\r'),
(6, 'Pinheirinho', 'Avenida Winston Churchill', 2471, '81150-050', 'Pinheirinho\r'),
(7, 'Casa da Mulher Brasileira', 'Av. Paraná', 870, '80035-130', 'Cabral\r'),
(8, 'Juizado de Violência Doméstica ', 'Avenida João Gualberto', 1073, '80030-001', 'Alto da Glória\r'),
(9, 'Vara da Infância e da Juventude', 'Rua da Glória', 290, '80030-060', 'Centro Cívico\r'),
(10, 'Vara de adolescentes em conflito com a lei', 'Rua Pastor Manoel Virgílio de Souza', 1310, '82810-140', 'Capão da Imbuia\r'),
(11, 'Vara de Infrações Penais', 'Av. Iguacu', 750, '80230-020', 'Rebouças\r'),
(12, 'Tribunal do Juri', 'Rua Ernâni Santiago de Oliveira', 268, '80530-100', 'Centro Cívico\r'),
(13, 'Segundo Grau de Jurisdição', 'Rua da Glória', 393, '80030-060', 'Centro Cívico\r'),
(14, 'Fórum  São José dos Pinhais', 'Rua João Ângelo Cordeiro', 0, '83005-570', 'Centro de São José dos Pinhais\r'),
(15, 'Guaratuba', 'Rua Tiago Pedroso', 417, '83280-000', 'Guaratuba\r'),
(16, 'Umuarama', 'Rua Desembargador Munhoz de Mello', 3792, '87501-180', 'Umuarama\r'),
(17, 'Cianorte', 'Avenida Maranhão', 255, '87200-980', 'Cianorte\r'),
(18, 'Guarapuava', 'Avenida Manoel Ribas', 2537, '85010-180', 'Guarapuava\r'),
(19, 'Ponta Grossa', 'Rua Doutor Leopoldo Guimarães da Cunha', 300, '84035-310', 'Ponta Grossa\r'),
(20, 'Castro', 'Rua Padre Damaso', 81, '84165-540', 'Castro\r'),
(21, 'Sede Apucarana', 'Travessa João Gurgel Macedo', 100, '86800-710', 'Apucarana\r'),
(22, ' Londrina', 'Av. Bandeirantes', 263, '86010-020', 'Londrina\r'),
(23, 'Sede Maringá', 'Av. Tiradentes', 1289, '87013-344', 'Maringá\r'),
(24, 'Sede Cornélio Procópio', 'Rua Massudi Amim', 165, '86300-000', 'Cornélio Procópio\r'),
(25, 'Sede Campo Mourão', 'Rua Duque de Caxias', 786, '87305-320', 'Campo Mourão\r'),
(26, 'Sede Cascavel', 'Rua São Paulo', 346, '85801-020', 'Cascavel\r'),
(27, 'Sede Foz do Iguaçu', 'Rua Antônio Raposo', 923, '85851-090', 'Foz do Iguaçu\r'),
(28, 'Sede Francisco Beltrão', 'Rua Alagoas', 655, '85601-080', 'Francisco Beltrão\r'),
(29, 'Sede União da Vitória', 'Rua Marechal Floriano Peixoto', 314, '84600-000', 'União da Vitória\r'),
(32, 'Colombo', NULL, NULL, NULL, 'Colombo'),
(33, 'Mateus Leme', NULL, NULL, NULL, 'Mateus Leme');

--
-- Índices de tabelas apagadas
--

--
-- Índices de tabela `controle`
--
ALTER TABLE `controle`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `controle_prot`
--
ALTER TABLE `controle_prot`
  ADD PRIMARY KEY (`PATRIMONIO`);

--
-- Índices de tabela `history`
--
ALTER TABLE `history`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `sedes`
--
ALTER TABLE `sedes`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas apagadas
--

--
-- AUTO_INCREMENT de tabela `controle`
--
ALTER TABLE `controle`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT de tabela `history`
--
ALTER TABLE `history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT de tabela `sedes`
--
ALTER TABLE `sedes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;
--
-- Banco de dados: `oo`
--
CREATE DATABASE IF NOT EXISTS `oo` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `oo`;
--
-- Banco de dados: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Estrutura para tabela `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(11) NOT NULL,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Estrutura para tabela `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_length` text COLLATE utf8_bin DEFAULT NULL,
  `col_collation` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) COLLATE utf8_bin DEFAULT '',
  `col_default` text COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Estrutura para tabela `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estrutura para tabela `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `settings_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Estrutura para tabela `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `export_type` varchar(10) COLLATE utf8_bin NOT NULL,
  `template_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `template_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

--
-- Despejando dados para a tabela `pma__export_templates`
--

INSERT INTO `pma__export_templates` (`id`, `username`, `export_type`, `template_name`, `template_data`) VALUES
(1, 'root', 'server', 'novoexport', '{\"quick_or_custom\":\"quick\",\"what\":\"sql\",\"db_select[]\":[\"controle\",\"controle_copia\",\"oo\",\"phpmyadmin\",\"protocolos\",\"suprimart\",\"test\",\"TestePOO\"],\"aliases_new\":\"\",\"output_format\":\"sendit\",\"filename_template\":\"@SERVER@\",\"remember_template\":\"on\",\"charset\":\"utf-8\",\"compression\":\"none\",\"maxsize\":\"\",\"codegen_structure_or_data\":\"data\",\"codegen_format\":\"0\",\"csv_separator\":\",\",\"csv_enclosed\":\"\\\"\",\"csv_escaped\":\"\\\"\",\"csv_terminated\":\"AUTO\",\"csv_null\":\"NULL\",\"csv_structure_or_data\":\"data\",\"excel_null\":\"NULL\",\"excel_columns\":\"something\",\"excel_edition\":\"win\",\"excel_structure_or_data\":\"data\",\"json_structure_or_data\":\"data\",\"json_unicode\":\"something\",\"latex_caption\":\"something\",\"latex_structure_or_data\":\"structure_and_data\",\"latex_structure_caption\":\"Estrutura da tabela @TABLE@\",\"latex_structure_continued_caption\":\"Estrutura da tabela @TABLE@ (continuação)\",\"latex_structure_label\":\"tab:@TABLE@-structure\",\"latex_relation\":\"something\",\"latex_comments\":\"something\",\"latex_mime\":\"something\",\"latex_columns\":\"something\",\"latex_data_caption\":\"Conteúdo da tabela @TABLE@\",\"latex_data_continued_caption\":\"Conteúdo da tabela @TABLE@ (continuação)\",\"latex_data_label\":\"tab:@TABLE@-data\",\"latex_null\":\"\\\\textit{NULL}\",\"mediawiki_structure_or_data\":\"data\",\"mediawiki_caption\":\"something\",\"mediawiki_headers\":\"something\",\"htmlword_structure_or_data\":\"structure_and_data\",\"htmlword_null\":\"NULL\",\"ods_null\":\"NULL\",\"ods_structure_or_data\":\"data\",\"odt_structure_or_data\":\"structure_and_data\",\"odt_relation\":\"something\",\"odt_comments\":\"something\",\"odt_mime\":\"something\",\"odt_columns\":\"something\",\"odt_null\":\"NULL\",\"pdf_report_title\":\"\",\"pdf_structure_or_data\":\"data\",\"phparray_structure_or_data\":\"data\",\"sql_include_comments\":\"something\",\"sql_header_comment\":\"\",\"sql_use_transaction\":\"something\",\"sql_compatibility\":\"NONE\",\"sql_structure_or_data\":\"structure_and_data\",\"sql_create_table\":\"something\",\"sql_auto_increment\":\"something\",\"sql_create_view\":\"something\",\"sql_create_trigger\":\"something\",\"sql_backquotes\":\"something\",\"sql_type\":\"INSERT\",\"sql_insert_syntax\":\"both\",\"sql_max_query_size\":\"50000\",\"sql_hex_for_binary\":\"something\",\"sql_utc_time\":\"something\",\"texytext_structure_or_data\":\"structure_and_data\",\"texytext_null\":\"NULL\",\"yaml_structure_or_data\":\"data\",\"\":null,\"as_separate_files\":null,\"csv_removeCRLF\":null,\"csv_columns\":null,\"excel_removeCRLF\":null,\"json_pretty_print\":null,\"htmlword_columns\":null,\"ods_columns\":null,\"sql_dates\":null,\"sql_relation\":null,\"sql_mime\":null,\"sql_disable_fk\":null,\"sql_views_as_tables\":null,\"sql_metadata\":null,\"sql_drop_database\":null,\"sql_drop_table\":null,\"sql_if_not_exists\":null,\"sql_view_current_user\":null,\"sql_or_replace_view\":null,\"sql_procedure_function\":null,\"sql_truncate\":null,\"sql_delayed\":null,\"sql_ignore\":null,\"texytext_columns\":null}');

-- --------------------------------------------------------

--
-- Estrutura para tabela `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Estrutura para tabela `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estrutura para tabela `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Estrutura para tabela `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estrutura para tabela `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Despejando dados para a tabela `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"suprimart\",\"table\":\"produto\"},{\"db\":\"controle_copia\",\"table\":\"controle_prot\"},{\"db\":\"controle_copia\",\"table\":\"controle\"},{\"db\":\"controle\",\"table\":\"controle_prot\"},{\"db\":\"controle\",\"table\":\"controle\"},{\"db\":\"controle\",\"table\":\"sedes\"},{\"db\":\"protocolos\",\"table\":\"n_protocolos\"},{\"db\":\"controle_copia\",\"table\":\"history\"},{\"db\":\"controle_copia\",\"table\":\"sedes\"},{\"db\":\"controle_copia\",\"table\":\"locais_defensoria5\"}]');

-- --------------------------------------------------------

--
-- Estrutura para tabela `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Estrutura para tabela `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Estrutura para tabela `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Estrutura para tabela `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estrutura para tabela `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

-- --------------------------------------------------------

--
-- Estrutura para tabela `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin DEFAULT NULL,
  `data_sql` longtext COLLATE utf8_bin DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estrutura para tabela `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Despejando dados para a tabela `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2020-03-19 19:16:13', '{\"lang\":\"pt_BR\",\"Console\\/Mode\":\"collapse\"}');

-- --------------------------------------------------------

--
-- Estrutura para tabela `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8_bin NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Estrutura para tabela `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Índices de tabelas apagadas
--

--
-- Índices de tabela `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Índices de tabela `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Índices de tabela `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Índices de tabela `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Índices de tabela `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Índices de tabela `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Índices de tabela `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Índices de tabela `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Índices de tabela `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Índices de tabela `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Índices de tabela `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Índices de tabela `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Índices de tabela `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Índices de tabela `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Índices de tabela `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Índices de tabela `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Índices de tabela `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Índices de tabela `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT de tabelas apagadas
--

--
-- AUTO_INCREMENT de tabela `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Banco de dados: `protocolos`
--
CREATE DATABASE IF NOT EXISTS `protocolos` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `protocolos`;

-- --------------------------------------------------------

--
-- Estrutura para tabela `Cadastro`
--

CREATE TABLE `Cadastro` (
  `nome` varchar(255) DEFAULT NULL,
  `cpf` int(11) NOT NULL,
  `rg` int(11) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `emissor` varchar(255) DEFAULT NULL,
  `celular` int(11) DEFAULT NULL,
  `telefoneTrabalho` int(11) DEFAULT NULL,
  `cargo` varchar(255) DEFAULT NULL,
  `funcao` varchar(255) DEFAULT NULL,
  `setorLot` varchar(255) DEFAULT NULL,
  `cidadeLot` varchar(255) DEFAULT NULL,
  `superiorImediato` varchar(255) DEFAULT NULL,
  `coordenacaoSetorSede` varchar(255) DEFAULT NULL,
  `dataEmissao` datetime DEFAULT NULL,
  `agencia` int(11) DEFAULT NULL,
  `contaCorrente` int(11) DEFAULT NULL,
  `nomeBanco` varchar(255) DEFAULT NULL,
  `senha` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Despejando dados para a tabela `Cadastro`
--

INSERT INTO `Cadastro` (`nome`, `cpf`, `rg`, `email`, `emissor`, `celular`, `telefoneTrabalho`, `cargo`, `funcao`, `setorLot`, `cidadeLot`, `superiorImediato`, `coordenacaoSetorSede`, `dataEmissao`, `agencia`, `contaCorrente`, `nomeBanco`, `senha`) VALUES
('Admin', 0, 0, 'admin@admin.com', 'Admin', 0, 0, 'SERVIDOR PÃšBLICO', 'Adminsitrador', 'Mateus Leme', 'Curitiba', 'Mathias', 'Mathias', '2019-12-12 10:26:25', 0, 0, 'nenhum', 'defen2017'),
('JoÃ£o Pedro Fernandes', 77777, 56566, 'NN@GMAIL.COM', 'teste', 484847, 78465, 'ASSISTENTE TÃ‰CNICO', 'encher ', 'teste', 'SÃ£o JosÃ© dos Pinhais', 'MATEUS', 'teste', '2019-12-10 10:53:31', 78, 2656652, 'Caixa', '123');

-- --------------------------------------------------------

--
-- Estrutura para tabela `Evento`
--

CREATE TABLE `Evento` (
  `tipoEvento` varchar(255) DEFAULT NULL,
  `descricaoEvento` varchar(255) DEFAULT NULL,
  `objetivoEvento` varchar(255) DEFAULT NULL,
  `localEvento` varchar(255) DEFAULT NULL,
  `inicio` datetime DEFAULT NULL,
  `termino` datetime DEFAULT NULL,
  `anexoDocs` varchar(255) DEFAULT NULL,
  `cpf` int(11) DEFAULT NULL,
  `id` int(11) NOT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Despejando dados para a tabela `Evento`
--

INSERT INTO `Evento` (`tipoEvento`, `descricaoEvento`, `objetivoEvento`, `localEvento`, `inicio`, `termino`, `anexoDocs`, `cpf`, `id`, `status`) VALUES
('REUNIÃƒO', 'DESC', 'DES', 'DES', '2020-01-19 00:00:00', '2020-01-20 00:00:00', 'ANEXO', 0, 3, 0),
('REUNIÃƒO', 'DESC', 'DES', 'DES', '2020-01-19 00:00:00', '2020-01-20 00:00:00', 'ANEXO', 0, 4, 1),
('VISITA TÃ‰CNICA', 'SOLICITAÃ‡ÃƒO 1 ', ' OBTER RESPOSTAS', 'PARIS', '2020-01-20 00:00:00', '2020-01-21 00:00:00', 'ANEXO', 77777, 5, 0),
('REUNIÃƒO', 'DESC', 'SIMPLES', 'HSUSHSU', '2020-01-13 00:00:00', '2020-01-14 00:00:00', 'ANEXO', 77777, 6, 1);

-- --------------------------------------------------------

--
-- Estrutura para tabela `Itinerario`
--

CREATE TABLE `Itinerario` (
  `localOrigemIda` varchar(255) DEFAULT NULL,
  `dataSaidaIda` datetime DEFAULT NULL,
  `localDestinoIda` varchar(255) DEFAULT NULL,
  `dataDestinoIda` datetime DEFAULT NULL,
  `meioTransporteIda` varchar(255) DEFAULT NULL,
  `localOrigemVolta` varchar(255) DEFAULT NULL,
  `dataSaidaVolta` datetime DEFAULT NULL,
  `localDestinoVolta` varchar(255) DEFAULT NULL,
  `dataDestinoVolta` datetime DEFAULT NULL,
  `meioTransporteVolta` varchar(255) DEFAULT NULL,
  `valorTransporte` int(11) DEFAULT NULL,
  `observacao` varchar(255) DEFAULT NULL,
  `tipoTranslado` varchar(255) DEFAULT NULL,
  `valorTranslado` int(11) DEFAULT NULL,
  `descricao` varchar(255) DEFAULT NULL,
  `obscomplementar` varchar(255) DEFAULT NULL,
  `idEvento` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Despejando dados para a tabela `Itinerario`
--

INSERT INTO `Itinerario` (`localOrigemIda`, `dataSaidaIda`, `localDestinoIda`, `dataDestinoIda`, `meioTransporteIda`, `localOrigemVolta`, `dataSaidaVolta`, `localDestinoVolta`, `dataDestinoVolta`, `meioTransporteVolta`, `valorTransporte`, `observacao`, `tipoTranslado`, `valorTranslado`, `descricao`, `obscomplementar`, `idEvento`) VALUES
('ORIGEM', '2020-01-20 22:00:00', 'LOCAL', '2020-01-21 23:00:00', 'ONIBUS', 'LOCAL 1', '2020-01-21 12:00:00', 'DESTINO', '2020-01-22 23:00:00', 'ONIBUS', 400, 'OBS', 'PEDAGIO', 500, 'DESC', 'OBS COMPLE', 4),
('MATEUS LEME', '2020-01-21 22:00:00', 'LONDRES', '2020-01-22 23:00:00', 'ONIBUS', 'MATEUS LEME', '2020-01-22 07:00:00', 'RUSSIA', '2020-01-23 22:00:00', 'VEICULO PARTICULAR', 400, 'OBS', 'PEDAGIO', 700, 'DESCRIÃ‡ÃƒO LOKA', 'OBS COMPLEMENTAR', 5),
('MATEUS LEME', '2020-01-15 08:00:00', 'LOCAL 1', '2020-01-16 10:00:00', 'ONIBUS', 'LOCAL', '2020-01-17 11:00:00', 'LOCAL 2', '2020-01-18 12:00:00', 'VEICULO OFICIAL', 400, 'OBS', 'PEDAGIO', 700, 'DESC ', 'COMPLEMENTAR', 6);

-- --------------------------------------------------------

--
-- Estrutura para tabela `n_protocolos`
--

CREATE TABLE `n_protocolos` (
  `nr_protocolo` varchar(35) COLLATE utf8_bin NOT NULL,
  `subsidio` float NOT NULL,
  `dif_dias` int(11) NOT NULL,
  `dif_horas` time NOT NULL,
  `completo` float NOT NULL,
  `metade` float NOT NULL,
  `subtotaldi` float NOT NULL,
  `vlr_aliment` float NOT NULL,
  `valor_pass` float NOT NULL,
  `vlr_translado` float NOT NULL,
  `submenosalim` float NOT NULL,
  `vlr_final` float NOT NULL,
  `data` datetime NOT NULL,
  `porcentagem` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Despejando dados para a tabela `n_protocolos`
--

INSERT INTO `n_protocolos` (`nr_protocolo`, `subsidio`, `dif_dias`, `dif_horas`, `completo`, `metade`, `subtotaldi`, `vlr_aliment`, `valor_pass`, `vlr_translado`, `submenosalim`, `vlr_final`, `data`, `porcentagem`) VALUES
('0', 16.854, 2, '09:00:00', 0.5618, 0.2809, 1.75563, 77.6, 0, 0, -75.8444, -75.8444, '2019-12-12 05:29:16', 125),
('025879', 15287.9, 31, '10:20:00', 509.598, 254.799, 20065.4, 194, 5, 0, 19871.4, 19876.4, '2019-07-29 07:06:51', 125),
('1', 0, 0, '07:20:00', 438, 219, 219, 38.8, 0, 400, 180.2, 580.2, '2020-02-10 12:48:47', 100),
('105.750.868-7', 16854.9, 2, '07:00:00', 561.832, 280.916, 1404.58, 116.4, 0, 0, 1288.18, 1288.18, '2019-07-22 09:01:17', NULL),
('111', 0, 0, '15:30:00', 438, 219, 219, 38.8, 0, 0, 180.2, 180.2, '2019-12-12 04:57:49', 100),
('12', 0, 3, '06:15:00', 438, 219, 1916.25, 116.4, 0, 0, 1799.85, 1799.85, '2020-02-07 12:46:58', 125),
('15.546.546-0', 0, 3, '06:35:00', 438, 219, 2299.5, 155.2, 800, 400, 2144.3, 3344.3, '2019-08-06 09:15:49', 150),
('15.722.593-6', 15287.9, 0, '22:55:00', 509.598, 254.799, 509.598, 38.8, 0, 0, 470.798, 470.798, '2019-07-30 10:16:13', 100),
('15.722.646-0', 16854.9, 2, '08:15:00', 561.832, 280.916, 1404.58, 116.4, 0, 0, 1288.18, 1288.18, '2019-07-24 05:29:50', NULL),
('15.722.790-4', 16854.9, 3, '01:25:00', 561.832, 280.916, 2106.87, 116.4, 0, 0, 1990.47, 1990.47, '2019-07-22 10:54:16', NULL),
('15.726.066-9', 15287.9, 6, '13:40:00', 509.598, 254.799, 3312.38, 194, 0, 0, 3118.38, 3118.38, '2019-07-23 11:28:16', NULL),
('15.726.084-7', 15287.9, 6, '01:40:00', 509.598, 254.799, 3057.59, 194, 0, 0, 2863.59, 2863.59, '2019-07-23 09:45:22', NULL),
('15.731.181-6', 16854.9, 1, '21:29:00', 561.832, 280.916, 1123.66, 77.6, 0, 0, 1046.06, 1046.06, '2020-02-05 13:04:25', 100),
('15.731.526-9', 16854.9, 1, '09:00:00', 561.832, 280.916, 1264.12, 77.6, 0, 0, 1186.52, 1186.52, '2019-07-23 11:53:16', NULL),
('15.746.395-0', 0, 2, '03:00:00', 438, 219, 876, 77.6, 0, 0, 798.4, 798.4, '2019-09-13 08:22:01', 100),
('15.750.701-0', 16854.9, 2, '00:42:00', 561.832, 280.916, 1123.66, 77.6, 0, 0, 1046.06, 1046.06, '2019-07-26 01:56:34', NULL),
('15.754.678-3', 16854.9, 1, '06:30:00', 561.832, 280.916, 842.747, 77.6, 0, 0, 765.148, 765.148, '2019-08-05 05:50:51', 100),
('15.754.727-5', 16854.9, 1, '09:30:00', 561.832, 280.916, 842.747, 77.6, 0, 0, 765.148, 765.148, '2019-07-26 08:05:58', NULL),
('15.762.272-2', 15287.9, 1, '10:35:00', 509.598, 254.799, 764.396, 77.6, 0, 0, 686.797, 686.797, '2019-08-21 07:50:49', 100),
('15.763.089-0', 15287.9, 1, '15:00:00', 509.598, 254.799, 764.396, 77.6, 0, 0, 686.797, 686.797, '2019-08-05 05:33:19', 100),
('15.763.298-1', 15287.9, 1, '00:40:00', 509.598, 254.799, 509.598, 38.8, 2048.64, 86.4, 470.798, 2605.84, '2019-08-02 04:59:39', 100),
('15.789.323-8', 16854.9, 1, '01:45:00', 561.832, 280.916, 561.832, 38.8, 2255.7, 0, 523.032, 2778.73, '2019-07-25 08:27:06', NULL),
('15.817.198-8', 0, 3, '05:00:00', 438, 219, 1314, 116.4, 0, 0, 1197.6, 1197.6, '2019-07-26 03:14:44', NULL),
('15.818.272-6', 15287.9, 4, '05:00:00', 509.598, 254.799, 2038.39, 155.2, 0, 0, 1883.19, 1883.19, '2019-10-16 05:41:29', 100),
('15.829.744-2', 0, 1, '12:00:00', 438, 219, 657, 77.6, 0, 0, 579.4, 579.4, '2019-08-05 08:02:49', 100),
('15.846.091-2', 0, 0, '14:50:00', 438, 219, 328.5, 38.8, 0, 0, 289.7, 289.7, '2019-07-26 07:32:37', NULL),
('15.848.458-7', 16854.9, 2, '03:00:00', 561.832, 280.916, 1123.66, 77.6, 0, 0, 1046.06, 1046.06, '2019-08-30 06:16:52', 100),
('15.852.448-1', 16854.9, 1, '02:40:00', 561.832, 280.916, 842.747, 38.8, 0, 0, 803.948, 803.948, '2019-07-25 09:24:12', NULL),
('15.875.424-0', 25282.4, 2, '08:00:00', 842.747, 421.374, 2106.87, 116.4, 0, 0, 1990.47, 1990.47, '2019-07-25 10:52:26', NULL),
('15.881.604-0', 0, 3, '04:10:00', 438, 219, 1642.5, 116.4, 0, 0, 1526.1, 1526.1, '2019-08-07 09:21:47', 125),
('15.893.722-0', 0, 3, '02:00:00', 438, 219, 1971, 77.6, 0, 0, 1893.4, 1893.4, '2019-08-19 10:42:35', 150),
('15.897.075-9', 16854.9, 2, '12:00:00', 561.832, 280.916, 2106.87, 116.4, 963.62, 800, 1990.47, 3754.09, '2019-07-26 02:29:52', NULL),
('15.903.162-4', 16854.9, 0, '14:00:00', 561.832, 280.916, 280.916, 38.8, 0, 117.7, 242.116, 359.816, '2019-08-02 08:02:21', 100),
('15.918.001-8', 15657.8, 0, '10:00:00', 521.927, 260.963, 260.963, 38.8, 0, 0, 222.163, 222.163, '2019-07-25 11:12:56', NULL),
('15.918.653-9', 16052.3, 3, '20:40:00', 535.078, 267.539, 2140.31, 155.2, 0, 0, 1985.11, 1985.11, '2019-07-31 06:59:44', 100),
('15.926.008-9', 0, 2, '05:40:00', 438, 219, 1314, 77.6, 543.82, 200, 1236.4, 1980.22, '2019-08-08 04:39:00', 150),
('15.929.429-3', 0, 3, '18:00:00', 438, 219, 2628, 116.4, 0, 90, 2511.6, 2601.6, '2020-02-06 19:08:28', 150),
('15.935.612-4', 16854.9, 1, '06:05:00', 561.832, 280.916, 1264.12, 77.6, 1811.18, 300, 1186.52, 3297.7, '2019-08-05 11:12:52', 150),
('15.935.927-1', 16052.3, 2, '21:10:00', 535.078, 267.539, 1605.23, 116.4, 922.77, 300, 1488.83, 2711.6, '2019-08-07 07:39:04', 100),
('15.935.937-9', 15287.9, 2, '19:05:00', 509.598, 254.799, 1528.79, 116.4, 1194.24, 250, 1412.39, 2856.63, '2019-08-07 11:14:21', 100),
('15.935.949-2', 15287.9, 2, '16:35:00', 509.598, 254.799, 1528.79, 116.4, 1153.64, 200, 1412.39, 2766.03, '2019-08-09 09:51:09', 100),
('15.952.729-8', 16854.9, 1, '13:00:00', 561.832, 280.916, 842.747, 38.8, 0, 0, 803.948, 803.948, '2019-09-09 09:50:54', 100),
('15.952.849-9', 16854.9, 0, '23:45:00', 561.832, 280.916, 561.832, 38.8, 986.64, 250, 523.032, 1759.67, '2019-08-14 07:20:59', 100),
('15.952.936-3', 15287.9, 2, '21:25:00', 509.598, 254.799, 2293.19, 77.6, 1304.98, 400, 2215.59, 3920.57, '2019-08-27 09:18:26', 150),
('15.953.132-5', 0, 3, '06:35:00', 438, 219, 2299.5, 155.2, 753.86, 400, 2144.3, 3298.16, '2019-08-12 08:04:56', 150),
('15.955.546-1', 0, 2, '13:55:00', 438, 219, 1642.5, 77.6, 1393.56, 400, 1564.9, 3358.46, '2019-08-14 09:09:43', 150),
('15.955.570-4', 15287.9, 2, '22:50:00', 509.598, 254.799, 2293.19, 77.6, 1333.34, 400, 2215.59, 3948.93, '2019-08-27 08:39:26', 150),
('15.955.586-0', 0, 3, '09:01:00', 438, 219, 2299.5, 77.6, 1333.34, 460, 2221.9, 4015.24, '2019-08-14 07:00:50', 150),
('15.956.763-0', 16052.3, 2, '09:10:00', 535.078, 267.539, 2006.54, 77.6, 1180.44, 300, 1928.94, 3409.38, '2019-08-14 10:14:38', 150),
('15.956.790-7', 16052.3, 2, '21:00:00', 535.078, 267.539, 2407.85, 77.6, 1623.62, 300, 2330.25, 4253.87, '2019-08-15 05:06:25', 150),
('15.956.908-0', 16854.9, 1, '00:00:00', 561.832, 280.916, 561.832, 38.8, 2226.64, 250, 523.032, 2999.67, '2019-08-13 06:43:32', 100),
('15.959.162-0', 16854.9, 3, '04:20:00', 561.832, 280.916, 2528.24, 116.4, 745.52, 400, 2411.84, 3557.36, '2019-08-15 06:00:00', 150),
('15.959.472-6', 16854.9, 2, '16:00:00', 561.832, 280.916, 2528.24, 77.6, 1180.44, 250, 2450.64, 3881.08, '2019-08-14 10:02:36', 150),
('15.963.343-8', 16854.9, 2, '10:00:00', 561.832, 280.916, 1404.58, 116.4, 0, 0, 1288.18, 1288.18, '2019-08-22 10:10:49', 100),
('15.963.500-7', 16854.9, 2, '18:10:00', 561.832, 280.916, 2528.24, 77.6, 1356.56, 300, 2450.64, 4107.2, '2019-08-27 05:22:05', 150),
('15.966.575-5', 0, 2, '12:10:00', 438, 219, 1642.5, 116.4, 1364.42, 300, 1526.1, 3190.52, '2019-08-19 05:48:51', 150),
('15.966.619-0', 0, 3, '01:55:00', 438, 219, 1971, 116.4, 1254.4, 150, 1854.6, 3259, '2019-08-19 05:19:54', 150),
('15.966.808-8', 16854.9, 2, '22:40:00', 561.832, 280.916, 2528.24, 116.4, 0, 0, 2411.84, 2411.84, '2019-08-23 06:32:27', 150),
('15.969.053-9', 0, 2, '19:00:00', 438, 219, 1971, 77.6, 1600.82, 300, 1893.4, 3794.22, '2019-08-20 06:21:33', 150),
('15.969.060-1', 16854.9, 3, '00:30:00', 561.832, 280.916, 2528.24, 77.6, 0, 400, 2450.64, 2850.64, '2019-08-15 04:33:17', 150),
('15.984.025-5', 16854.9, 0, '23:45:00', 561.832, 280.916, 561.832, 38.8, 1552.64, 250, 523.032, 2325.67, '2019-08-27 05:52:44', 100),
('15.989.572-6', 16854.9, 3, '14:20:00', 561.832, 280.916, 2458.01, 155.2, 247.58, 0, 2302.81, 2550.39, '2019-09-03 05:08:03', 125),
('15.992.869-1', 15287.9, 6, '00:40:00', 509.598, 254.799, 3057.59, 194, 382.8, 400, 2863.59, 3646.39, '2019-09-11 07:23:57', 100),
('15.995.689-0', 16854.9, 1, '09:30:00', 561.832, 280.916, 842.747, 77.6, 0, 120, 765.148, 885.148, '2019-08-28 06:19:26', 100),
('15.995.763-2', 0, 2, '07:35:00', 438, 219, 1095, 116.4, 0, 80, 978.6, 1058.6, '2019-09-23 09:25:57', 100),
('15.995.773-0', 0, 4, '07:00:00', 438, 219, 1971, 194, 0, 120, 1777, 1897, '2019-09-05 03:59:12', 100),
('15.995.788-8', 0, 4, '07:00:00', 438, 219, 1971, 194, 0, 0, 1777, 1777, '2019-09-05 04:02:20', 100),
('15.999.745-6', 0, 0, '09:00:00', 438, 219, 219, 38.8, 0, 0, 180.2, 180.2, '2019-09-03 07:12:51', 100),
('15.999.774-0', 0, 0, '09:00:00', 438, 219, 219, 38.8, 0, 0, 180.2, 180.2, '2019-09-03 07:13:37', 100),
('15.999.783-9', 0, 0, '10:00:00', 438, 219, 219, 38.8, 0, 50, 180.2, 230.2, '2019-08-28 04:59:54', 100),
('157260928', 15287.9, 5, '04:35:00', 509.598, 254.799, 2547.99, 194, 0, 0, 2353.99, 2353.99, '2019-07-31 09:48:03', 100),
('157505254', 15287.9, 5, '13:35:00', 509.598, 254.799, 2802.79, 194, 0, 0, 2608.79, 2608.79, '2019-07-31 06:40:27', 100),
('158466597', 0, 0, '10:30:00', 438, 219, 219, 38.8, 0, 0, 180.2, 180.2, '2019-07-31 08:59:47', 100),
('158754177', 0, 2, '07:40:00', 438, 219, 1095, 116.4, 0, 0, 978.6, 978.6, '2019-08-01 06:52:46', 100),
('15942.324-7', 16854.9, 0, '11:30:00', 561.832, 280.916, 280.916, 38.8, 0, 40, 242.116, 282.116, '2019-08-05 09:04:42', 100),
('16.003.390-8', 16052.3, 0, '10:15:00', 535.078, 267.539, 267.539, 38.8, 0, 29.6, 228.739, 258.339, '2019-08-28 09:28:28', 100),
('16.015.484-5', 16855.3, 3, '11:10:00', 561.844, 280.922, 2458.07, 155.2, 2520.56, 400, 2302.87, 5223.43, '2019-09-09 05:21:59', 125),
('16.016.675-4', 0, 2, '07:35:00', 438, 219, 1095, 116.4, 0, 0, 978.6, 978.6, '2019-09-23 09:26:55', 100),
('16.016.737-8', 16854.9, 1, '13:15:00', 561.832, 280.916, 1053.43, 77.6, 678.64, 410, 975.834, 2064.47, '2019-09-19 05:34:27', 125),
('16.016.799-8', 0, 2, '13:40:00', 438, 219, 1368.75, 116.4, 2040.44, 300, 1252.35, 3592.79, '2019-09-16 05:29:37', 125),
('16.020.702-7', 15287.9, 1, '20:15:00', 509.598, 254.799, 1019.2, 77.6, 160, 200, 941.595, 1301.6, '2019-09-05 08:18:16', 100),
('16.020.729-9', 15287.9, 2, '10:00:00', 509.598, 254.799, 1273.99, 116.4, 160, 50, 1157.59, 1367.59, '2019-09-05 08:22:04', 100),
('16.020.756-5', 16854.9, 2, '14:35:00', 561.832, 280.916, 1404.58, 77.6, 1084.64, 150, 1326.98, 2561.62, '2019-09-09 06:36:53', 100),
('16.023.515-2', 0, 4, '07:00:00', 438, 219, 1971, 194, 0, 120, 1777, 1897, '2019-09-05 04:16:59', 100),
('16.023.527-6', 0, 4, '07:00:00', 438, 219, 1971, 194, 0, 0, 1777, 1777, '2019-09-05 04:17:41', 100),
('16.023.564-0', 0, 2, '08:00:00', 438, 219, 1095, 116.4, 0, 0, 978.6, 978.6, '2019-09-05 04:03:09', 100),
('16.027.300-3', 16854.9, 2, '06:40:00', 561.832, 280.916, 1404.58, 116.4, 1914.64, 300, 1288.18, 3502.82, '2019-09-09 06:45:19', 100),
('16.027.318-6', 16052.3, 2, '09:00:00', 535.078, 267.539, 1337.69, 116.4, 180, 130, 1221.29, 1531.29, '2019-09-09 08:35:10', 100),
('16.027.328-3', 16052.3, 2, '09:00:00', 535.078, 267.539, 1337.69, 116.4, 180, 130, 1221.29, 1531.29, '2019-09-09 08:37:43', 100),
('16.027.361-5', 16854.9, 3, '07:30:00', 561.832, 280.916, 1966.41, 116.4, 0, 0, 1850.01, 1850.01, '2019-09-06 08:06:55', 100),
('16.028.116-2', 16854.9, 1, '00:25:00', 561.832, 280.916, 561.832, 38.8, 2288.64, 250, 523.032, 3061.67, '2019-09-10 06:44:07', 100),
('16.034.783-0', 16854.9, 1, '00:00:00', 561.832, 280.916, 561.832, 38.8, 0, 0, 523.032, 523.032, '2019-09-10 06:34:19', 100),
('16.034.825-9', 16052.3, 2, '07:00:00', 535.078, 267.539, 1337.69, 116.4, 0, 29.6, 1221.29, 1250.89, '2019-09-10 09:52:08', 100),
('16.035.760-6', 16052.3, 1, '10:50:00', 535.078, 267.539, 802.617, 77.6, 1330.66, 300, 725.016, 2355.68, '2019-09-16 05:21:48', 100),
('16.043.063-0', 15287.9, 4, '11:30:00', 509.598, 254.799, 2293.19, 194, 0, 200, 2099.19, 2299.19, '2019-09-20 09:15:49', 100),
('16.046.840-8', 15287.9, 5, '14:35:00', 509.598, 254.799, 2802.79, 194, 0, 0, 2608.79, 2608.79, '2019-09-26 10:05:58', 100),
('16.047.755-5', 16854.9, 5, '13:05:00', 561.832, 280.916, 3090.07, 194, 0, 0, 2896.07, 2896.07, '2019-09-27 05:42:38', 100),
('16.055.071-6', 16052.3, 4, '13:05:00', 535.078, 267.539, 2407.85, 194, 0, 0, 2213.85, 2213.85, '2019-09-27 08:04:37', 100),
('16.056.986-7', 16854.9, 3, '05:55:00', 561.832, 280.916, 2106.87, 116.4, 2100.77, 0, 1990.47, 4091.24, '2019-09-30 06:27:10', 125),
('16.064.011-1', 15287.9, 5, '00:00:00', 509.598, 254.799, 2547.99, 194, 1729.12, 530, 2353.99, 4613.11, '2019-10-15 08:23:56', 100),
('16.064.045-6', 15287.9, 4, '21:00:00', 509.598, 254.799, 2547.99, 194, 0, 60, 2353.99, 2413.99, '2019-10-10 07:37:13', 100),
('16.064.061-8', 15287.9, 5, '10:00:00', 509.598, 254.799, 2802.79, 194, 1075.84, 300, 2608.79, 3984.63, '2019-09-30 06:14:36', 100),
('16.064.104-5', 15287.9, 5, '02:05:00', 509.598, 254.799, 2547.99, 194, 1366.24, 300, 2353.99, 4020.23, '2019-10-09 08:10:09', 100),
('16.064.877-5', 15287.9, 5, '10:00:00', 509.598, 254.799, 2802.79, 194, 0, 0, 2608.79, 2608.79, '2019-09-24 05:01:17', 100),
('16.067.589-6', 15287.9, 4, '18:25:00', 509.598, 254.799, 2547.99, 194, 838.64, 300, 2353.99, 3492.63, '2019-10-02 06:26:02', 100),
('16.068.072-5', 15287.9, 5, '00:00:00', 509.598, 254.799, 2547.99, 194, 310, 0, 2353.99, 2663.99, '2019-10-08 05:14:21', 100),
('16.068.109-8', 0, 6, '02:00:00', 438, 219, 2628, 194, 0, 100, 2434, 2534, '2019-09-27 08:33:37', 100),
('16.071.112-4', 16854.9, 2, '14:30:00', 561.832, 280.916, 1755.72, 116.4, 2413.76, 500, 1639.32, 4553.08, '2019-10-15 10:12:08', 125),
('16.071.442-5', 0, 4, '11:45:00', 438, 219, 1971, 194, 0, 0, 1777, 1777, '2019-10-09 06:54:13', 100),
('16.074.763-3', 0, 5, '07:30:00', 438, 219, 2409, 194, 200, 200, 2215, 2615, '2019-09-25 08:46:35', 100),
('16.074.791-9', 0, 5, '06:10:00', 438, 219, 2409, 194, 0, 430, 2215, 2645, '2019-09-25 08:38:50', 100),
('16.074.819-2', 15287.9, 5, '10:00:00', 509.598, 254.799, 2802.79, 194, 991.05, 500, 2608.79, 4099.84, '2019-10-04 07:50:02', 100),
('16.074.876-1', 0, 5, '02:00:00', 438, 219, 2190, 194, 0, 200, 1996, 2196, '2019-09-25 08:19:28', 100),
('16.074.908-3', 0, 5, '02:00:00', 438, 219, 2190, 194, 0, 200, 1996, 2196, '2019-09-25 08:18:01', 100),
('16.075.386-2', 15287.9, 4, '06:30:00', 509.598, 254.799, 2293.19, 194, 557.79, 400, 2099.19, 3056.98, '2019-10-09 06:41:38', 100),
('16.077.812-1', 0, 6, '02:00:00', 438, 219, 2628, 194, 0, 0, 2434, 2434, '2019-09-30 06:37:32', 100),
('16.077.844-0', 0, 6, '02:00:00', 438, 219, 2628, 194, 0, 0, 2434, 2434, '2019-09-30 06:34:59', 100),
('16.077.870-9', 0, 5, '21:35:00', 438, 219, 2628, 194, 300, 300, 2434, 3034, '2019-10-07 07:05:52', 100),
('16.081.716-0', 0, 5, '22:40:00', 438, 219, 2628, 194, 380, 450, 2434, 3264, '2019-09-30 08:40:47', 100),
('16.081.729-1', 0, 5, '06:15:00', 438, 219, 2409, 194, 115, 300, 2215, 2630, '2019-09-30 08:49:29', 100),
('16.088.500-9', 0, 5, '05:35:00', 438, 219, 2190, 194, 0, 0, 1996, 1996, '2019-10-28 18:16:18', 100),
('16.088.522-0', 0, 5, '05:35:00', 438, 219, 2190, 194, 0, 0, 1996, 1996, '2019-10-28 18:46:41', 100),
('16.089.287-0', 0, 2, '08:35:00', 438, 219, 1368.75, 116.4, 1979.48, 400, 1252.35, 3631.83, '2019-10-04 08:00:53', 125),
('16.096.690-4', 0, 1, '09:00:00', 438, 219, 657, 77.6, 0, 0, 579.4, 579.4, '2019-10-03 07:10:24', 100),
('16.096.707-2', 0, 4, '14:00:00', 438, 219, 1971, 194, 0, 57.8, 1777, 1834.8, '2019-10-03 08:53:34', 100),
('16.096.862-1', 0, 1, '09:00:00', 438, 219, 657, 77.6, 0, 150, 579.4, 729.4, '2019-10-03 08:48:18', 100),
('16.096.882-6', 0, 4, '14:00:00', 438, 219, 1971, 194, 0, 200, 1777, 1977, '2019-10-07 07:42:57', 100),
('16.096.935-0', 0, 4, '13:45:00', 438, 219, 1971, 194, 0, 200, 1777, 1977, '2019-10-07 07:41:55', 100),
('16.097.693-4', 0, 5, '07:45:00', 438, 219, 2409, 194, 180, 150, 2215, 2545, '2019-10-15 09:09:40', 100),
('16.100.457-0', 16854.9, 1, '13:00:00', 561.832, 280.916, 842.747, 77.6, 0, 150, 765.148, 915.148, '2019-10-08 06:06:48', 100),
('16.100.534-7', 15287.9, 5, '10:00:00', 509.598, 254.799, 2802.79, 194, 0, 0, 2608.79, 2608.79, '2019-10-09 09:34:35', 100),
('16.101.581-4', 0, 4, '16:05:00', 438, 219, 3285, 155.2, 1055.1, 400, 3129.8, 4584.9, '2019-11-07 11:05:44', 150),
('16.103.476-2', 0, 8, '06:01:00', 438, 219, 3723, 271.6, 350, 0, 3451.4, 3801.4, '2019-10-04 08:32:32', 100),
('16.115.443-1', 0, 6, '09:35:00', 438, 219, 2847, 194, 300, 300, 2653, 3253, '2019-10-09 06:47:07', 100),
('16.115.457-1', 0, 5, '03:35:00', 438, 219, 2190, 194, 250, 250, 1996, 2496, '2019-10-15 09:15:42', 100),
('16.115.488-1', 0, 5, '01:55:00', 438, 219, 2190, 194, 250, 250, 1996, 2496, '2019-10-09 06:51:21', 100),
('16.121.958-4', 15287.9, 5, '00:00:00', 509.598, 254.799, 2547.99, 194, 560, 300, 2353.99, 3213.99, '2019-10-22 07:53:32', 100),
('16.121.988-6', 0, 0, '05:30:00', 438, 219, 0, 38.8, 0, 0, -38.8, -38.8, '2019-10-16 06:01:17', 100),
('16.121.996-7', 15287.9, 5, '07:45:00', 509.598, 254.799, 2802.79, 194, 310, 500, 2608.79, 3418.79, '2019-10-11 08:50:44', 100),
('16.122.023-0', 15287.9, 3, '18:00:00', 509.598, 254.799, 2038.39, 194, 0, 400, 1844.39, 2244.39, '2019-10-15 09:58:55', 100),
('16.126.710-4', 0, 0, '18:25:00', 438, 219, 328.5, 38.8, 2146.52, 0, 289.7, 2436.22, '2019-10-21 06:19:25', 150),
('16.129.813-1', 15287.9, 5, '10:00:00', 509.598, 254.799, 2802.79, 194, 0, 0, 2608.79, 2608.79, '2019-10-17 08:10:43', 100),
('16.136.408-8', 0, 4, '09:00:00', 438, 219, 1971, 194, 0, 0, 1777, 1777, '2019-10-18 03:10:12', 100),
('16.136.416-9', 0, 4, '09:00:00', 438, 219, 1971, 194, 0, 150, 1777, 1927, '2019-10-18 03:10:57', 100),
('16.136.681-1', 16854.9, 1, '00:25:00', 561.832, 280.916, 561.832, 38.8, 2308.64, 250, 523.032, 3081.67, '2019-10-23 07:51:19', 100),
('16.137.040-1', 15287.9, 5, '08:05:00', 509.598, 254.799, 2802.79, 194, 400, 0, 2608.79, 3008.79, '2019-10-16 08:26:04', 100),
('16.137.063-0', 15287.9, 5, '10:00:00', 509.598, 254.799, 2802.79, 194, 160, 0, 2608.79, 2768.79, '2019-10-17 09:31:14', 100),
('16.137.223-4', 0, 1, '15:55:00', 438, 219, 985.5, 77.6, 775, 400, 907.9, 2082.9, '2019-11-04 12:04:15', 150),
('16.137.259-5', 15287.9, 5, '08:00:00', 509.598, 254.799, 2802.79, 194, 220, 0, 2608.79, 2828.79, '2019-10-16 07:50:23', 100),
('16.137.281-1', 0, 4, '08:00:00', 438, 219, 1971, 194, 0, 0, 1777, 1777, '2019-10-18 03:07:59', 100),
('16.137.305-2', 0, 4, '08:00:00', 438, 219, 1971, 194, 0, 200, 1777, 1977, '2019-10-18 03:08:48', 100),
('16.137.329-0', 16854.9, 1, '15:55:00', 561.832, 280.916, 1264.12, 77.6, 775, 400, 1186.52, 2361.52, '2019-11-04 12:02:52', 150),
('16.137.346-0', 0, 4, '08:00:00', 438, 219, 1971, 194, 0, 0, 1777, 1777, '2019-10-18 03:07:11', 100),
('16.142.885-0', 16854.9, 4, '03:15:00', 561.832, 280.916, 2809.16, 155.2, 2327.49, 50, 2653.96, 5031.45, '2019-10-25 04:34:13', 125),
('16.143.029-3', 0, 1, '15:55:00', 438, 219, 985.5, 77.6, 775, 400, 907.9, 2082.9, '2019-11-04 12:13:17', 150),
('16.143.719-0', 16854.9, 2, '04:45:00', 561.832, 280.916, 1685.49, 77.6, 725.25, 0, 1607.9, 2333.15, '2019-10-29 13:22:12', 150),
('16.147.204-2', 0, 1, '15:55:00', 438, 219, 985.5, 77.6, 775, 400, 907.9, 2082.9, '2019-11-04 12:06:28', 150),
('16.153.687-3', 16854.9, 3, '03:00:00', 561.832, 280.916, 1685.49, 116.4, 0, 120, 1569.09, 1689.09, '2019-10-23 08:34:18', 100),
('16.153.708-0', 0, 3, '03:00:00', 438, 219, 1314, 116.4, 0, 0, 1197.6, 1197.6, '2019-10-23 08:35:00', 100),
('16.154.136-2', 16854.9, 3, '05:35:00', 561.832, 280.916, 2106.87, 116.4, 1294.48, 0, 1990.47, 3284.95, '2019-11-19 12:33:38', 125),
('16.154.169-9', 16854.9, 2, '04:45:00', 561.832, 280.916, 1685.49, 38.8, 725.25, 0, 1646.69, 2371.95, '2019-10-29 13:21:39', 150),
('16.156.989-5', 16854.9, 1, '14:40:00', 561.832, 280.916, 842.747, 77.6, 430, 200, 765.148, 1395.15, '2019-10-28 17:56:25', 100),
('16.165.304-7', 16854.9, 1, '09:30:00', 561.832, 280.916, 842.747, 77.6, 0, 130, 765.148, 895.148, '2019-11-01 12:15:07', 100),
('16.167.346-3', 0, 2, '07:30:00', 438, 219, 1095, 116.4, 0, 0, 978.6, 978.6, '2019-11-04 15:06:30', 100),
('16.167.555-5', 0, 2, '07:30:00', 438, 219, 1095, 116.4, 0, 0, 978.6, 978.6, '2019-11-04 15:04:48', 100),
('16.168.407-4', 16854.9, 1, '01:00:00', 561.832, 280.916, 561.832, 38.8, 2150.64, 250, 523.032, 2923.67, '2019-11-06 11:38:06', 100),
('16.170.723-6', 0, 3, '12:25:00', 438, 219, 1533, 155.2, 1214.64, 300, 1377.8, 2892.44, '2019-11-08 11:15:43', 100),
('16.170.734-1', 0, 3, '12:25:00', 438, 219, 1533, 155.2, 1214.64, 300, 1377.8, 2892.44, '2019-11-08 11:14:58', 100),
('16.170.749-0', 0, 3, '12:25:00', 438, 219, 1533, 155.2, 1214.64, 600, 1377.8, 3192.44, '2019-11-08 11:17:10', 100),
('16.184.811-5', 16052.3, 0, '07:15:00', 535.078, 267.539, 267.539, 38.8, 0, 200, 228.739, 428.739, '2019-11-13 12:11:53', 100),
('16.184.848-4', 0, 1, '04:40:00', 438, 219, 438, 38.8, 133370, 300, 399.2, 134069, '2019-11-13 17:28:44', 100),
('16.184.916-2', 16854.9, 1, '04:05:00', 561.832, 280.916, 561.832, 38.8, 1070.79, 200, 523.032, 1793.82, '2019-11-07 11:01:30', 100),
('16.185.034-9', 0, 0, '12:00:00', 438, 219, 219, 38.8, 0, 0, 180.2, 180.2, '2019-11-08 13:11:12', 100),
('16.185.060-8', 0, 0, '12:00:00', 438, 219, 219, 38.8, 0, 40, 180.2, 220.2, '2019-11-08 13:10:07', 100),
('16.185.302-0', 0, 1, '20:40:00', 438, 219, 1314, 77.6, 1679.01, 400, 1236.4, 3315.41, '2019-11-07 17:34:57', 150),
('16.188.140-6', 0, 2, '14:50:00', 438, 219, 1642.5, 116.4, 2406.33, 500, 1526.1, 4432.43, '2019-11-08 10:55:57', 150),
('16.191.809-1', 16854.9, 2, '09:00:00', 561.832, 280.916, 1404.58, 116.4, 0, 40, 1288.18, 1328.18, '2019-11-20 13:41:04', 100),
('16.191.835-0', 0, 2, '09:00:00', 438, 219, 1095, 116.4, 0, 0, 978.6, 978.6, '2019-11-20 13:42:59', 100),
('16.192.616-7', 16052.3, 1, '04:10:00', 535.078, 267.539, 535.078, 38.8, 0, 200, 496.278, 696.278, '2019-11-13 15:14:23', 100),
('16.198.989-4', 16854.9, 2, '02:00:00', 561.832, 280.916, 1123.66, 0, 0, 0, 1123.66, 1123.66, '2019-12-02 02:57:53', 100),
('16.199.243-7', 16854.9, 3, '14:00:00', 561.832, 280.916, 2949.62, 155.2, 723.84, 0, 2794.42, 3518.26, '2019-12-13 05:25:07', 150),
('16.202.236-9', 16052.3, 1, '09:35:00', 535.078, 267.539, 802.617, 77.6, 250, 40, 725.016, 1015.02, '2019-11-20 13:32:36', 100),
('16.203.268-2', 0, 0, '08:10:00', 438, 219, 219, 38.8, 0, 50, 180.2, 230.2, '2019-11-13 15:04:49', 100),
('16.206.794-0', 16854.9, 1, '01:45:00', 561.832, 280.916, 561.832, 38.8, 1379.73, 300, 523.032, 2202.76, '2019-11-19 12:38:19', 100),
('16.206.831-8', 16854.9, 1, '01:35:00', 561.832, 280.916, 561.832, 38.8, 1322.54, 250, 523.032, 2095.57, '2019-11-19 12:43:50', 100),
('16.209.438-6', 0, 0, '06:30:00', 438, 219, 219, 38.8, 0, 30, 180.2, 210.2, '2019-11-20 13:28:45', 100),
('16.218.149-1', 0, 2, '03:30:00', 438, 219, 876, 77.6, 0, 80, 798.4, 878.4, '2019-11-26 07:06:33', 100),
('16.234.019-0', 16854.9, 1, '08:15:00', 561.832, 280.916, 842.747, 77.6, 1800.09, 400, 765.148, 2965.24, '2019-12-02 05:58:22', 100),
('16.237.658-6', 15287.9, 1, '14:05:00', 509.598, 254.799, 764.396, 77.6, 1800.09, 400, 686.797, 2886.89, '2019-12-02 05:41:59', 100),
('16.237.685-3', 15287.9, 1, '14:05:00', 509.598, 254.799, 764.396, 77.6, 1800.09, 400, 686.797, 2886.89, '2019-12-02 05:47:58', 100),
('16.237.701-9', 15287.9, 1, '14:05:00', 509.598, 254.799, 764.396, 77.6, 1800.09, 400, 686.797, 2886.89, '2019-12-02 05:36:55', 100),
('16.237.721-3', 15287.9, 1, '14:05:00', 509.598, 254.799, 764.396, 77.6, 1800.09, 400, 686.797, 2886.89, '2019-12-02 05:41:15', 100),
('16.248.387-0', 16854.9, 1, '12:00:00', 561.832, 280.916, 842.747, 77.6, 0, 690, 765.148, 1455.15, '2019-12-05 02:56:28', 100),
('16.344.177-2', 20478.8, 5, '11:00:00', 682.625, 341.313, 3754.44, 194, 1400, 80, 3560.44, 5040.44, '2020-02-04 14:21:00', 100),
('16.344.200-0', 0, 5, '11:00:00', 438, 219, 2409, 194, 0, 0, 2215, 2215, '2020-02-04 14:26:20', 100),
('16.354.396-6', 0, 0, '06:20:00', 438, 219, 219, 38.8, 0, 380, 180.2, 560.2, '2020-02-07 13:11:59', 100),
('16.355.663-4', 20478.8, 6, '15:10:00', 682.625, 341.313, 5546.33, 194, 0, 0, 5352.33, 5352.33, '2020-02-13 15:18:26', 125),
('16.357.696-1', 0, 2, '13:50:00', 438, 219, 1095, 116.4, 2214.59, 300, 978.6, 3493.19, '2020-02-06 15:16:39', 100),
('16.357.713-5', 0, 2, '13:50:00', 438, 219, 1095, 116.4, 2214.59, 300, 978.6, 3493.19, '2020-02-06 15:12:35', 100),
('16.357.973-1', 0, 2, '06:30:00', 438, 219, 1095, 116.4, 0, 0, 978.6, 978.6, '2020-02-06 19:34:52', 100),
('16.366.060-1', 0, 2, '07:15:00', 438, 219, 1095, 116.4, 1483.79, 300, 978.6, 2762.39, '2020-01-29 15:58:25', 100),
('16.366.149-7', 20478.8, 2, '03:15:00', 682.625, 341.313, 1365.25, 77.6, 609.47, 362, 1287.65, 2259.12, '2020-01-29 14:11:27', 100),
('16.386.030-9', 0, 2, '11:00:00', 438, 219, 1095, 77.6, 0, 0, 1017.4, 1017.4, '2020-02-05 14:20:07', 100),
('16.390.540-0', 0, 0, '05:40:00', 438, 219, 0, 38.8, 0, 400, -38.8, 361.2, '2020-01-29 19:08:30', 100),
('16.394.914-8', 0, 3, '00:30:00', 438, 219, 1971, 116.4, 580.26, 400, 1854.6, 2834.86, '2020-02-11 20:00:53', 150),
('16.413.236-6', 0, 3, '04:10:00', 438, 219, 1642.5, 116.4, 1146.01, 600, 1526.1, 3272.11, '2020-02-11 15:54:54', 125),
('16.415.777-6', 0, 3, '04:10:00', 438, 219, 1642.5, 116.4, 1775.58, 600, 1526.1, 3901.68, '2020-02-11 16:15:55', 125),
('16.416.969-3', 0, 3, '11:45:00', 438, 219, 1916.25, 116.4, 1146.01, 150, 1799.85, 3095.86, '2020-03-09 16:23:59', 125),
('16.422.856-8', 20478.8, 0, '17:15:00', 682.625, 341.313, 511.969, 38.8, 2413.98, 300, 473.169, 3187.15, '2020-02-13 17:34:59', 150),
('16.456.343-0', 0, 0, '19:00:00', 438, 219, 438, 38.8, 1513.53, 300, 399.2, 2212.73, '2020-03-17 15:58:26', 100),
('160892870', 0, 2, '08:35:00', 438, 219, 1368.75, 116.4, 1979.48, 400, 1252.35, 3631.83, '2019-10-04 08:00:25', 125),
('165.019.501-0', 16052.3, 3, '11:10:00', 535.078, 267.539, 2340.96, 155.2, 2520.56, 400, 2185.76, 5106.32, '2019-09-09 05:24:38', 125),
('165.027.318-6', 16052.3, 2, '07:05:00', 535.078, 267.539, 1337.69, 116.4, 857.85, 180, 1221.29, 2259.14, '2019-09-09 08:08:12', 100),
('16854.95', 0, 2, '16:00:00', 438, 219, 1971, 38.8, 1180.44, 250, 1932.2, 3362.64, '2019-08-14 10:01:33', 150),
('2.222.222-0', 0, 1, '10:00:00', 438, 219, 657, 38.8, 0, 0, 618.2, 618.2, '2019-08-16 06:58:42', 100),
('3', 0, 0, '23:00:00', 438, 219, 438, 38.8, 0, 0, 399.2, 399.2, '2019-12-13 05:49:49', 100),
('333', 14000, 0, '05:00:00', 466.667, 233.333, 0, 194, 500, 50.25, -194, 356.25, '2019-07-19 08:49:31', NULL),
('5555555', 1500, 8, '04:00:00', 50, 25, 500, 116.4, 500.25, 50, 383.6, 933.85, '2019-07-22 09:44:58', NULL),
('60', 0, 2, '08:00:00', 438, 219, 1368.75, 116.4, 500, 4, 1252.35, 1756.35, '2019-09-23 09:33:57', 125),
('800', 7000, 0, '03:03:00', 233.333, 116.667, 0, 194, 5, 5, -194, -184, '2019-07-19 08:41:31', NULL),
('896', 1066670, 0, '03:03:00', 35555.5, 17777.8, 0, 194, 5, 5, -194, -184, '2019-07-19 08:38:00', NULL),
('MODELO', 0, 1, '10:00:00', 438, 219, 657, 38.8, 0, 0, 618.2, 618.2, '2019-08-16 06:58:59', 100),
('biribiri', 0, 30, '00:00:00', 438, 219, 13140, 38.8, 10, 0, 13101.2, 13111.2, '2020-02-05 16:32:29', 100),
('hthffdgh', 140000, 31, '04:04:00', 4666.67, 2333.33, 180833, 155.2, 5, 5, 180678, 180688, '2019-07-19 08:55:39', NULL),
('sxxx', 0, 1, '13:30:00', 438, 219, 985.5, 38.8, 260, 0, 946.7, 1206.7, '2019-11-11 16:14:07', 150),
('teste2', 20000, 0, '12:00:00', 666.667, 333.333, 333.333, 38.8, 0, 0, 294.533, 294.533, '2020-02-05 17:27:39', 100),
('testess', 0, 0, '12:00:00', 438, 219, 273.75, 38.8, 0, 0, 234.95, 234.95, '2020-02-05 16:36:00', 125),
('xxx', 15287.9, 0, '22:20:00', 509.598, 254.799, 509.598, 38.8, 0, 0, 470.798, 470.798, '2019-07-30 10:16:28', 100),
('xxxx', 500, 0, '06:20:00', 16.6667, 8.33333, 12.5, 0, 2, 500, 12.5, 514.5, '2019-09-13 09:19:53', 150),
('xxxxxxxxx', 0, 1, '12:00:00', 438, 219, 821.25, 194, 500, 200, 627.25, 1327.25, '2019-11-26 08:35:05', 125),
('xxxxxxxxxx', 0, 0, '18:25:00', 438, 219, 328.5, 38.8, 2146.52, 0, 289.7, 2436.22, '2019-10-18 08:48:35', 150),
('xxxxxxxxxxxxxx', 0, 0, '18:25:00', 438, 219, 547.5, 0, 2146.52, 0, 547.5, 2694.02, '2019-10-18 08:31:46', 125),
('zzzzzz', 15287.9, 31, '10:20:00', 509.598, 254.799, 20065.4, 194, 5, 0, 19871.4, 19876.4, '2019-07-29 07:14:00', 125);

--
-- Índices de tabelas apagadas
--

--
-- Índices de tabela `Cadastro`
--
ALTER TABLE `Cadastro`
  ADD PRIMARY KEY (`cpf`);

--
-- Índices de tabela `Evento`
--
ALTER TABLE `Evento`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `n_protocolos`
--
ALTER TABLE `n_protocolos`
  ADD PRIMARY KEY (`nr_protocolo`);

--
-- AUTO_INCREMENT de tabelas apagadas
--

--
-- AUTO_INCREMENT de tabela `Evento`
--
ALTER TABLE `Evento`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- Banco de dados: `suprimart`
--
CREATE DATABASE IF NOT EXISTS `suprimart` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `suprimart`;

-- --------------------------------------------------------

--
-- Estrutura para tabela `produto`
--

CREATE TABLE `produto` (
  `pro_nome` varchar(255) DEFAULT NULL,
  `pro_preco` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Despejando dados para a tabela `produto`
--

INSERT INTO `produto` (`pro_nome`, `pro_preco`) VALUES
('teste1', 49856),
('teste2', 45966),
('teste3', 123),
('teste4', 78),
('teste5', 4561),
('teste6', 125),
('teste7', 4565),
('teste85', 4565),
('teste9', 4565),
('teste10', 4565),
('teste11', 4565),
('teste12', 4565),
('teste123', 4565),
('14', 2555);
--
-- Banco de dados: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `test`;
--
-- Banco de dados: `TestePOO`
--
CREATE DATABASE IF NOT EXISTS `TestePOO` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `TestePOO`;

-- --------------------------------------------------------

--
-- Estrutura para tabela `Produto`
--

CREATE TABLE `Produto` (
  `nome` varchar(255) DEFAULT NULL,
  `valor` int(11) DEFAULT NULL,
  `quantidade` int(11) DEFAULT NULL,
  `id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Despejando dados para a tabela `Produto`
--

INSERT INTO `Produto` (`nome`, `valor`, `quantidade`, `id`) VALUES
('teclado\r\n', 12, 200, 12);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
