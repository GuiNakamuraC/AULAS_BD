-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 27/06/2024 às 23:31
-- Versão do servidor: 10.4.32-MariaDB
-- Versão do PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `seguradora`
--
CREATE DATABASE IF NOT EXISTS `seguradora` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `seguradora`;

-- --------------------------------------------------------

--
-- Estrutura para tabela `carro`
--

CREATE TABLE `carro` (
  `codCarro` int(11) NOT NULL,
  `placa` varchar(10) NOT NULL,
  `modelo` varchar(100) NOT NULL,
  `cor` varchar(100) DEFAULT NULL,
  `marca` varchar(100) NOT NULL,
  `porte` varchar(100) DEFAULT NULL,
  `chassi` varchar(100) DEFAULT NULL,
  `codCliente` int(11) DEFAULT NULL,
  `ano` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `carro`
--

INSERT INTO `carro` (`codCarro`, `placa`, `modelo`, `cor`, `marca`, `porte`, `chassi`, `codCliente`, `ano`) VALUES
(1, 'ABC 1C34', 'S10 WT MT', 'Azul', 'Chevrolet', NULL, NULL, 1, 2024),
(2, 'ABC 1D23', 'Jetta GLI', 'Vermelho', 'Volkswagen', NULL, NULL, 4, 2019),
(3, 'DGT 5L08', 'Onix', 'Branco', 'Chevrolet', NULL, NULL, 3, 2021),
(4, 'VTS 0D27', 'NISSAN SENTRA', 'Branco', 'Nissan', NULL, NULL, 2, 2015),
(5, 'FIS 1K40', 'NISSAN INTELLIGENT MOBILITY', 'Azul', 'Nissan', NULL, NULL, 5, 2025);

-- --------------------------------------------------------

--
-- Estrutura para tabela `cliente`
--

CREATE TABLE `cliente` (
  `codCliente` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `dataNasc` date NOT NULL,
  `rg` varchar(15) NOT NULL,
  `cpf` varchar(15) NOT NULL,
  `email` varchar(100) NOT NULL,
  `telefone` varchar(15) NOT NULL,
  `num` int(11) DEFAULT NULL,
  `rua` varchar(100) DEFAULT NULL,
  `compl` varchar(100) DEFAULT NULL,
  `cep` varchar(9) DEFAULT NULL,
  `bairro` varchar(100) DEFAULT NULL,
  `cidade` varchar(100) DEFAULT NULL,
  `uf` int(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `cliente`
--

INSERT INTO `cliente` (`codCliente`, `nome`, `dataNasc`, `rg`, `cpf`, `email`, `telefone`, `num`, `rua`, `compl`, `cep`, `bairro`, `cidade`, `uf`) VALUES
(1, 'Guilherme Nakamura', '2008-03-22', '98.765.432-1', '123.456.789-12', 'guilherme@gmail.com', '12345-6789', 256, 'Rua Anônima', NULL, '12345-678', 'Colônia', 'Ribeirão Pires', 35),
(2, 'Laís dos Santos', '1983-11-01', '89.946.763-7', '357.463.765-92', 'laisdosantos@gmail.com', '39547-9673', 101, 'Rua das Glórias', 'Sobrado no fundo', '60389-782', 'Bairro do Brilho', 'Parintins', 13),
(3, 'Taís Carla', '1991-10-15', '94.823.104-6', '868.757.636-00', 'amaiordobrasil@gmail.com', '78042-8766', 999, 'Rua da Fartura', NULL, '06483-589', 'Bairro das Saudades Profundas', 'Londrina', 41),
(4, 'Bruno Almeida', '2001-01-01', '06.203.123-4', '954.205.654-51', 'almeidabruno@gmail.com', '68892-5739', 111, 'Rua do Ciclano', NULL, '59599-612', 'Bairro do Fulano', 'Campinas', 35),
(5, 'Sophia Andrade', '2000-07-15', '05.332.029-2', '976.204.100-23', 'sophhi4@gmail.com', '40392-9999', 501, 'Rua da Bolívia', 'Apartamento 114', '07964-743', 'Bairro da América', 'Londrina', 41);

-- --------------------------------------------------------

--
-- Estrutura para tabela `ocorrencia`
--

CREATE TABLE `ocorrencia` (
  `codOcorrencia` int(11) NOT NULL,
  `hora` time DEFAULT NULL,
  `data` date DEFAULT NULL,
  `descricao` varchar(255) DEFAULT NULL,
  `rua` varchar(100) DEFAULT NULL,
  `bairro` varchar(100) DEFAULT NULL,
  `cidade` varchar(100) DEFAULT NULL,
  `codCarro` int(11) DEFAULT NULL,
  `codTipo` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `ocorrencia`
--

INSERT INTO `ocorrencia` (`codOcorrencia`, `hora`, `data`, `descricao`, `rua`, `bairro`, `cidade`, `codCarro`, `codTipo`) VALUES
(1, '18:08:54', '2024-06-27', 'Batida em um poste na Etec MCM', 'Rua Bélgica', 'Jardim Alvorada', 'Ribeirão Pires', 1, 'A123'),
(2, '10:03:39', '2019-05-04', 'Descarregou Bateria do carro, pois cliente esqueceu a lanterna interna acesa', 'Rua Aquela Ali', 'Bairro Aquele Lá', 'Mauá', 2, 'C503'),
(3, '23:23:23', '2023-02-04', 'Assalto com arma de fogo', 'Rua Dos Gritos', 'Bairro Perigoso', 'Mauá', 3, 'E304'),
(4, '20:54:23', '2020-03-22', 'Batida com outro carro na rodovia', 'Avenida A', 'Bairro B', 'Santo André', 5, 'D199'),
(5, '17:18:38', '2024-06-07', 'Chave Presa dentro do carro', 'Rua Finlândia', 'Bairro Europa', 'Suzano', 4, 'B905');

-- --------------------------------------------------------

--
-- Estrutura para tabela `tipo`
--

CREATE TABLE `tipo` (
  `codTipo` varchar(10) NOT NULL,
  `tipo` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `tipo`
--

INSERT INTO `tipo` (`codTipo`, `tipo`) VALUES
('A123', 'Batida Simples'),
('B905', 'Chave Tracada'),
('C503', 'Bateria Descarregada'),
('D199', 'Batida Perca Total'),
('E304', 'Furto');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `carro`
--
ALTER TABLE `carro`
  ADD PRIMARY KEY (`codCarro`),
  ADD KEY `codCliente` (`codCliente`);

--
-- Índices de tabela `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`codCliente`),
  ADD UNIQUE KEY `rg` (`rg`),
  ADD UNIQUE KEY `cpf` (`cpf`);

--
-- Índices de tabela `ocorrencia`
--
ALTER TABLE `ocorrencia`
  ADD PRIMARY KEY (`codOcorrencia`),
  ADD KEY `codCarro` (`codCarro`),
  ADD KEY `codTipo` (`codTipo`);

--
-- Índices de tabela `tipo`
--
ALTER TABLE `tipo`
  ADD PRIMARY KEY (`codTipo`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `carro`
--
ALTER TABLE `carro`
  MODIFY `codCarro` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `cliente`
--
ALTER TABLE `cliente`
  MODIFY `codCliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `ocorrencia`
--
ALTER TABLE `ocorrencia`
  MODIFY `codOcorrencia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `carro`
--
ALTER TABLE `carro`
  ADD CONSTRAINT `carro_ibfk_1` FOREIGN KEY (`codCliente`) REFERENCES `cliente` (`codCliente`);

--
-- Restrições para tabelas `ocorrencia`
--
ALTER TABLE `ocorrencia`
  ADD CONSTRAINT `ocorrencia_ibfk_1` FOREIGN KEY (`codCarro`) REFERENCES `carro` (`codCarro`),
  ADD CONSTRAINT `ocorrencia_ibfk_2` FOREIGN KEY (`codTipo`) REFERENCES `tipo` (`codTipo`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
