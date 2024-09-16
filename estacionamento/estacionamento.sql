-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 16-Set-2024 às 13:59
-- Versão do servidor: 10.4.27-MariaDB
-- versão do PHP: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `estacionamento`
--
CREATE DATABASE IF NOT EXISTS `estacionamento` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `estacionamento`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `andar`
--

CREATE TABLE `andar` (
  `codLugar` int(11) NOT NULL,
  `capacidade` int(11) DEFAULT NULL,
  `andar` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Extraindo dados da tabela `andar`
--

INSERT INTO `andar` (`codLugar`, `capacidade`, `andar`) VALUES
(1, 20, '3º Andar'),
(2, 15, '1º Andar'),
(3, 10, '2º Andar'),
(4, 25, '3º Andar'),
(5, 30, '1º Andar'),
(6, 12, '3º Andar'),
(7, 18, '1º Andar'),
(8, 22, '3º Andar'),
(9, 16, '2º Andar'),
(10, 14, '1º Andar'),
(11, 28, '1º Andar'),
(12, 14, '2º Andar'),
(13, 24, '1º Andar'),
(14, 18, '3º Andar'),
(15, 20, '3º Andar'),
(16, 16, '2º Andar'),
(17, 22, '1º Andar'),
(18, 19, '3º Andar'),
(19, 25, '1º Andar'),
(20, 27, '2º Andar');

-- --------------------------------------------------------

--
-- Estrutura da tabela `cliente`
--

CREATE TABLE `cliente` (
  `cpf` varchar(20) NOT NULL,
  `dtnasc` datetime DEFAULT NULL,
  `nome` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Extraindo dados da tabela `cliente`
--

INSERT INTO `cliente` (`cpf`, `dtnasc`, `nome`) VALUES
('00112233445', '1990-06-25 00:00:00', 'Bruno Rocha'),
('01234567889', '1998-04-18 00:00:00', 'Tatiane Martins'),
('11223344556', '1984-08-20 00:00:00', 'Luana Fernandes'),
('12345678900', '1985-03-12 00:00:00', 'João Silva'),
('22334455667', '1979-02-14 00:00:00', 'Ricardo Lima'),
('23456789001', '1990-07-22 00:00:00', 'Maria Oliveira'),
('33445566778', '1991-11-23 00:00:00', 'Beatriz Costa'),
('34567890112', '1982-11-30 00:00:00', 'Carlos Santos'),
('44556677889', '1994-07-12 00:00:00', 'Renato Silva'),
('45678901223', '1995-06-15 00:00:00', 'Ana Souza'),
('55667788990', '1986-05-30 00:00:00', 'Juliana Almeida'),
('56789012334', '1988-09-28 00:00:00', 'Pedro Costa'),
('66778899001', '1981-10-09 00:00:00', 'Eduardo Martins'),
('67890123445', '1993-01-10 00:00:00', 'Juliana Pereira'),
('77889900112', '1992-03-16 00:00:00', 'Patrícia Gomes'),
('78901234556', '1980-12-05 00:00:00', 'Marcelo Lima'),
('88990011223', '1987-12-01 00:00:00', 'Felipe Santos'),
('89012345667', '1987-05-20 00:00:00', 'Fernanda Almeida'),
('90123456778', '1992-10-01 00:00:00', 'Roberto Silva'),
('99001122334', '1995-09-17 00:00:00', 'Sofia Pereira');

-- --------------------------------------------------------

--
-- Estrutura da tabela `estaciona`
--

CREATE TABLE `estaciona` (
  `codEstaciona` int(11) NOT NULL,
  `horEntrada` datetime DEFAULT NULL,
  `horSaida` datetime DEFAULT NULL,
  `dtEntrada` datetime DEFAULT NULL,
  `dtSaida` datetime DEFAULT NULL,
  `placa` varchar(20) DEFAULT NULL,
  `codLugar` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Extraindo dados da tabela `estaciona`
--

INSERT INTO `estaciona` (`codEstaciona`, `horEntrada`, `horSaida`, `dtEntrada`, `dtSaida`, `placa`, `codLugar`) VALUES
(1, '2024-09-16 08:00:00', '2024-09-16 17:00:00', '2024-09-16 00:00:00', '2024-09-16 00:00:00', 'ABC1234', 1),
(2, '2024-09-16 09:00:00', '2024-09-16 18:00:00', '2024-09-16 00:00:00', '2024-09-16 00:00:00', 'XYZ5678', 2),
(3, '2024-09-16 10:00:00', '2024-09-16 19:00:00', '2024-09-16 00:00:00', '2024-09-16 00:00:00', 'LMN9101', 3),
(4, '2024-09-16 11:00:00', '2024-09-16 20:00:00', '2024-09-16 00:00:00', '2024-09-16 00:00:00', 'QRS2345', 4),
(5, '2024-09-16 12:00:00', '2024-09-16 21:00:00', '2024-09-16 00:00:00', '2024-09-16 00:00:00', 'TUV6789', 5),
(6, '2024-09-16 13:00:00', '2024-09-16 22:00:00', '2024-09-16 00:00:00', '2024-09-16 00:00:00', 'WXY3456', 6),
(7, '2024-09-16 14:00:00', '2024-09-16 23:00:00', '2024-09-16 00:00:00', '2024-09-16 00:00:00', 'ZAB7890', 7),
(8, '2024-09-16 15:00:00', '2024-09-16 23:30:00', '2024-09-16 00:00:00', '2024-09-16 00:00:00', 'CDE1234', 8),
(9, '2024-09-16 16:00:00', '2024-09-16 23:45:00', '2024-09-16 00:00:00', '2024-09-16 00:00:00', 'FGH5678', 9),
(10, '2024-09-16 17:00:00', '2024-09-16 23:59:00', '2024-09-16 00:00:00', '2024-09-16 00:00:00', 'IJK9101', 10);

-- --------------------------------------------------------

--
-- Estrutura da tabela `modelo`
--

CREATE TABLE `modelo` (
  `codModelo` int(11) NOT NULL,
  `modelo` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Extraindo dados da tabela `modelo`
--

INSERT INTO `modelo` (`codModelo`, `modelo`) VALUES
(1, 'Fusca'),
(2, 'Civic'),
(3, 'Corolla'),
(4, 'Uno'),
(5, 'Hilux'),
(6, 'Onix'),
(7, 'S10'),
(8, 'Kwid'),
(9, 'Polo'),
(10, 'Fox'),
(11, 'Celta'),
(12, 'Ecosport'),
(13, 'Ranger'),
(14, 'Astra'),
(15, 'Grand Siena'),
(16, 'Camaro'),
(17, 'Civic Type R'),
(18, 'Fusca 1300'),
(19, 'Chevette'),
(20, 'Palio');

-- --------------------------------------------------------

--
-- Estrutura da tabela `motorista`
--

CREATE TABLE `motorista` (
  `cpf` varchar(20) NOT NULL,
  `nome` varchar(100) DEFAULT NULL,
  `dtnasc` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Extraindo dados da tabela `motorista`
--

INSERT INTO `motorista` (`cpf`, `nome`, `dtnasc`) VALUES
('00112233445', 'Bruno Rocha', '1990-06-25 00:00:00'),
('01234567889', 'Tatiane Martins', '1998-04-18 00:00:00'),
('11223344556', 'Luana Fernandes', '1984-08-20 00:00:00'),
('12345678900', 'João Silva', '1985-03-12 00:00:00'),
('22334455667', 'Ricardo Lima', '1979-02-14 00:00:00'),
('23456789001', 'Maria Oliveira', '1990-07-22 00:00:00'),
('33445566778', 'Beatriz Costa', '1991-11-23 00:00:00'),
('34567890112', 'Carlos Santos', '1982-11-30 00:00:00'),
('44556677889', 'Renato Silva', '1994-07-12 00:00:00'),
('45678901223', 'Ana Souza', '1995-06-15 00:00:00'),
('55667788990', 'Juliana Almeida', '1986-05-30 00:00:00'),
('56789012334', 'Pedro Costa', '1988-09-28 00:00:00'),
('66778899001', 'Eduardo Martins', '1981-10-09 00:00:00'),
('67890123445', 'Juliana Pereira', '1993-01-10 00:00:00'),
('77889900112', 'Patrícia Gomes', '1992-03-16 00:00:00'),
('78901234556', 'Marcelo Lima', '1980-12-05 00:00:00'),
('88990011223', 'Felipe Santos', '1987-12-01 00:00:00'),
('89012345667', 'Fernanda Almeida', '1987-05-20 00:00:00'),
('90123456778', 'Roberto Silva', '1992-10-01 00:00:00'),
('99001122334', 'Sofia Pereira', '1995-09-17 00:00:00');

-- --------------------------------------------------------

--
-- Estrutura da tabela `veiculo`
--

CREATE TABLE `veiculo` (
  `placa` varchar(10) NOT NULL,
  `cor` varchar(20) DEFAULT NULL,
  `cpf` varchar(20) DEFAULT NULL,
  `codModelo` int(11) DEFAULT NULL,
  `cpf_motorista` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Extraindo dados da tabela `veiculo`
--

INSERT INTO `veiculo` (`placa`, `cor`, `cpf`, `codModelo`, `cpf_motorista`) VALUES
('ABC1234', 'Preto', '12345678900', 1, '12345678900'),
('ASD7890', 'Amarelo', '77889900112', 17, '77889900112'),
('CDE1234', 'Verde', '89012345667', 8, '89012345667'),
('FGH5678', 'Laranja', '90123456778', 9, '90123456778'),
('FOD5678', 'Rosa', '99001122334', 19, '99001122334'),
('GUI1234', 'Laranja', '88990011223', 18, '88990011223'),
('IJK9101', 'Rosa', '01234567889', 10, '01234567889'),
('JKL1234', 'Azul', '11223344556', 11, '11223344556'),
('LMN5678', 'Branco', '22334455667', 12, '22334455667'),
('LMN9101', 'Azul', '34567890112', 3, '34567890112'),
('NGD9101', 'Prata', '00112233445', 20, '00112233445'),
('OPQ9101', 'Preto', '33445566778', 13, '33445566778'),
('QRS2345', 'Vermelho', '45678901223', 4, '45678901223'),
('RST2345', 'Cinza', '44556677889', 14, '44556677889'),
('TUV6789', 'Prata', '56789012334', 5, '56789012334'),
('UVW6789', 'Verde', '55667788990', 15, '55667788990'),
('WXY3456', 'Cinza', '67890123445', 6, '67890123445'),
('XYZ3456', 'Vermelho', '66778899001', 16, '66778899001'),
('XYZ5678', 'Branco', '23456789001', 2, '23456789001'),
('ZAB7890', 'Amarelo', '78901234556', 7, '78901234556');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `andar`
--
ALTER TABLE `andar`
  ADD PRIMARY KEY (`codLugar`);

--
-- Índices para tabela `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`cpf`);

--
-- Índices para tabela `estaciona`
--
ALTER TABLE `estaciona`
  ADD PRIMARY KEY (`codEstaciona`),
  ADD KEY `placa` (`placa`),
  ADD KEY `codLugar` (`codLugar`);

--
-- Índices para tabela `modelo`
--
ALTER TABLE `modelo`
  ADD PRIMARY KEY (`codModelo`);

--
-- Índices para tabela `motorista`
--
ALTER TABLE `motorista`
  ADD PRIMARY KEY (`cpf`);

--
-- Índices para tabela `veiculo`
--
ALTER TABLE `veiculo`
  ADD PRIMARY KEY (`placa`),
  ADD KEY `cpf` (`cpf`),
  ADD KEY `codModelo` (`codModelo`),
  ADD KEY `cpf_motorista` (`cpf_motorista`);

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `estaciona`
--
ALTER TABLE `estaciona`
  ADD CONSTRAINT `estaciona_ibfk_1` FOREIGN KEY (`placa`) REFERENCES `veiculo` (`placa`),
  ADD CONSTRAINT `estaciona_ibfk_2` FOREIGN KEY (`codLugar`) REFERENCES `andar` (`codLugar`);

--
-- Limitadores para a tabela `veiculo`
--
ALTER TABLE `veiculo`
  ADD CONSTRAINT `veiculo_ibfk_1` FOREIGN KEY (`cpf`) REFERENCES `cliente` (`cpf`),
  ADD CONSTRAINT `veiculo_ibfk_2` FOREIGN KEY (`codModelo`) REFERENCES `modelo` (`codModelo`),
  ADD CONSTRAINT `veiculo_ibfk_3` FOREIGN KEY (`cpf_motorista`) REFERENCES `motorista` (`cpf`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
