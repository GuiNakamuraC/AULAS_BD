-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 03/09/2024 às 01:15
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
-- Banco de dados: `imobiliária`
--
CREATE DATABASE IF NOT EXISTS `imobiliária` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `imobiliária`;

-- --------------------------------------------------------

--
-- Estrutura para tabela `aluguel`
--

CREATE TABLE `aluguel` (
  `id_aluguel` int(11) NOT NULL,
  `data_inicio` date NOT NULL,
  `data_fim` date NOT NULL,
  `valor` decimal(10,2) DEFAULT NULL,
  `id_inquilino` int(11) DEFAULT NULL,
  `id_imovel` int(11) DEFAULT NULL,
  `id_corretor` int(11) DEFAULT NULL,
  `alugado` bit(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Despejando dados para a tabela `aluguel`
--

INSERT INTO `aluguel` (`id_aluguel`, `data_inicio`, `data_fim`, `valor`, `id_inquilino`, `id_imovel`, `id_corretor`, `alugado`) VALUES
(1, '2024-01-01', '2024-01-15', 643.50, 1, 1, 1, b'1'),
(2, '2024-02-01', '2024-03-22', 1170.00, 2, 2, 2, b'1'),
(3, '2024-03-01', '2024-05-10', 2925.00, 3, 3, 3, b'1'),
(4, '2024-04-01', '2024-07-18', 702.00, 4, 4, 4, b'1'),
(5, '2024-05-01', '2024-09-05', 936.00, 5, 5, 5, b'1'),
(6, '2024-06-01', '2024-11-12', 1404.00, 6, 6, 6, b'1'),
(7, '2024-07-01', '2025-02-20', 1755.00, 7, 7, 7, b'1'),
(8, '2024-08-01', '2025-04-17', 819.00, 8, 8, 8, b'0'),
(9, '2024-09-01', '2025-06-25', 1111.50, 9, 9, 9, b'1'),
(10, '2024-10-01', '2025-08-30', 1521.00, 10, 10, 10, b'1'),
(11, '2024-11-01', '2025-11-03', 1989.00, 11, 11, 1, b'1'),
(12, '2024-12-01', '2026-01-25', 1287.00, 12, 12, 2, b'1'),
(13, '2025-01-01', '2026-04-14', 2340.00, 13, 13, 3, b'0'),
(14, '2025-02-01', '2026-07-09', 1872.00, 14, 14, 4, b'0'),
(15, '2025-03-01', '2026-10-27', 1638.00, 15, 15, 5, b'1');

-- --------------------------------------------------------

--
-- Estrutura para tabela `corretor`
--

CREATE TABLE `corretor` (
  `id_corretor` int(11) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `data_nasc` date DEFAULT NULL,
  `CPF` varchar(14) NOT NULL,
  `email` varchar(255) NOT NULL,
  `telefone` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Despejando dados para a tabela `corretor`
--

INSERT INTO `corretor` (`id_corretor`, `nome`, `data_nasc`, `CPF`, `email`, `telefone`) VALUES
(1, 'Ana Souza', '1985-03-15', '123.456.789-01', 'ana.souza@example.com', '(11) 98765-4321'),
(2, 'Carlos Oliveira', '1978-07-22', '234.567.890-12', 'carlos.oliveira@example.com', '(21) 97654-3210'),
(3, 'Fernanda Lima', '1990-11-30', '345.678.901-23', 'fernanda.lima@example.com', '(31) 96543-2109'),
(4, 'João Pereira', '1982-06-10', '456.789.012-34', 'joao.pereira@example.com', '(41) 95432-1098'),
(5, 'Mariana Costa', '1987-01-25', '567.890.123-45', 'mariana.costa@example.com', '(51) 94321-0987'),
(6, 'Pedro Santos', '1992-08-14', '678.901.234-56', 'pedro.santos@example.com', '(61) 93210-9876'),
(7, 'Roberta Almeida', '1989-04-05', '789.012.345-67', 'roberta.almeida@gmail.com', '(71) 92109-8765'),
(8, 'Lucas Martins', '1980-12-18', '890.123.456-78', 'lucas.martins@example.com', '(81) 91098-7654'),
(9, 'Tatiane Silva', '1995-09-20', '901.234.567-89', 'tatiane.silva@example.com', '(91) 90987-6543'),
(10, 'André Fernandes', '1983-10-12', '012.345.678-90', 'andre.fernandes@example.com', '(71) 89876-5432');

-- --------------------------------------------------------

--
-- Estrutura para tabela `endereco`
--

CREATE TABLE `endereco` (
  `id_endereco` int(11) NOT NULL,
  `num` int(11) NOT NULL,
  `rua` varchar(255) NOT NULL,
  `complemento` varchar(255) DEFAULT NULL,
  `bairro` varchar(255) NOT NULL,
  `cidade` varchar(255) NOT NULL,
  `uf` int(2) NOT NULL,
  `CEP` varchar(9) DEFAULT NULL,
  `id_imovel` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Despejando dados para a tabela `endereco`
--

INSERT INTO `endereco` (`id_endereco`, `num`, `rua`, `complemento`, `bairro`, `cidade`, `uf`, `CEP`, `id_imovel`) VALUES
(1, 101, 'Rua das Flores', 'Apto 101', 'Jardim das Acácias', 'São Paulo', 11, '01001-000', 1),
(2, 202, 'Avenida Paulista', 'Sala 202', 'Centro', 'São Paulo', 11, '01310-000', 2),
(3, 303, 'Rua dos Pinheiros', 'Casa 303', 'Pinheiros', 'São Paulo', 11, '05422-000', 3),
(4, 404, 'Rua das Margaridas', 'Casa 404', 'Vila Mariana', 'São Paulo', 11, '04109-000', 4),
(5, 505, 'Avenida Brigadeiro Faria Lima', 'Bloco 505', 'Itaim Bibi', 'São Paulo', 11, '04538-000', 5),
(6, 606, 'Rua da Consolação', 'Apto 606', 'Consolação', 'São Paulo', 11, '01301-000', 6),
(7, 707, 'Rua do Lavapés', 'Apto 707', 'Liberdade', 'São Paulo', 11, '01501-000', 7),
(8, 808, 'Rua do Comércio', 'Casa 808', 'Bela Vista', 'São Paulo', 11, '01323-000', 8),
(9, 909, 'Avenida Rio Branco', 'Apto 909', 'Centro', 'Rio de Janeiro', 21, '20090-000', 9),
(10, 1010, 'Rua Barata Ribeiro', 'Sala 1010', 'Copacabana', 'Rio de Janeiro', 21, '22040-000', 10),
(11, 1111, 'Rua do Catete', 'Bloco 1111', 'Catete', 'Rio de Janeiro', 21, '22220-000', 11),
(12, 1212, 'Rua das Laranjeiras', 'Casa 1212', 'Laranjeiras', 'Rio de Janeiro', 21, '22240-000', 12),
(13, 1313, 'Avenida Atlântica', 'Apto 1313', 'Copacabana', 'Rio de Janeiro', 21, '22070-000', 13),
(14, 1414, 'Rua da Assembleia', 'Sala 1414', 'Centro', 'Rio de Janeiro', 21, '20011-000', 14),
(15, 1515, 'Rua das Maravilhas', 'Casa 1515', 'Centro', 'Rio de Janeiro', 21, '20031-000', 15);

-- --------------------------------------------------------

--
-- Estrutura para tabela `fiador`
--

CREATE TABLE `fiador` (
  `id_fiador` int(11) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `data_nasc` date DEFAULT NULL,
  `CPF` varchar(14) NOT NULL,
  `email` varchar(255) NOT NULL,
  `telefone` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Despejando dados para a tabela `fiador`
--

INSERT INTO `fiador` (`id_fiador`, `nome`, `data_nasc`, `CPF`, `email`, `telefone`) VALUES
(1, 'Ana Souza', '1985-03-15', '123.456.789-01', 'ana.souza@example.com', '(11) 98765-4321'),
(2, 'Carlos Oliveira', '1978-07-22', '234.567.890-12', 'carlos.oliveira@example.com', '(21) 97654-3210'),
(3, 'Fernanda Lima', '1990-11-30', '345.678.901-23', 'fernanda.lima@example.com', '(31) 96543-2109'),
(4, 'João Pereira', '1982-06-10', '456.789.012-34', 'joao.pereira@example.com', '(41) 95432-1098'),
(5, 'Mariana Costa', '1987-01-25', '567.890.123-45', 'mariana.costa@example.com', '(51) 94321-0987'),
(6, 'Pedro Santos', '1992-08-14', '678.901.234-56', 'pedro.santos@example.com', '(61) 93210-9876'),
(7, 'Roberta Almeida', '1989-04-05', '789.012.345-67', 'roberta.almeida@example.com', '(71) 92109-8765'),
(8, 'Lucas Martins', '1980-12-18', '890.123.456-78', 'lucas.martins@example.com', '(81) 91098-7654'),
(9, 'Tatiane Silva', '1995-09-20', '901.234.567-89', 'tatiane.silva@example.com', '(91) 90987-6543'),
(10, 'André Fernandes', '1983-10-12', '012.345.678-90', 'andre.fernandes@example.com', '(71) 89876-5432');

-- --------------------------------------------------------

--
-- Estrutura para tabela `imovel`
--

CREATE TABLE `imovel` (
  `id_imovel` int(11) NOT NULL,
  `quant_banheiro` int(11) DEFAULT NULL,
  `quant_quarto` int(11) DEFAULT NULL,
  `lavanderia` bit(1) DEFAULT NULL,
  `garagem` bit(1) DEFAULT NULL,
  `piscina` bit(1) DEFAULT NULL,
  `extra` varchar(255) DEFAULT NULL,
  `area` decimal(5,2) NOT NULL,
  `id_prop` int(11) DEFAULT NULL,
  `quant_comodos` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Despejando dados para a tabela `imovel`
--

INSERT INTO `imovel` (`id_imovel`, `quant_banheiro`, `quant_quarto`, `lavanderia`, `garagem`, `piscina`, `extra`, `area`, `id_prop`, `quant_comodos`) VALUES
(1, 1, 3, b'1', b'1', b'0', 'Salão de Arte', 120.50, 1, 4),
(2, 2, 3, b'1', b'1', b'1', 'Jardim', 80.00, 1, 6),
(3, 1, 2, b'1', b'1', b'0', 'Varanda', 200.00, 2, 2),
(4, 1, 4, b'1', b'1', b'1', 'Churrasqueira', 95.00, 3, 4),
(5, 2, 2, b'1', b'1', b'0', 'Sauna', 60.00, 4, 5),
(6, 1, 1, b'0', b'1', b'1', 'Academia', 110.00, 5, 4),
(7, 2, 3, b'0', b'1', b'0', 'Oficina', 150.00, 5, 6),
(8, 3, 4, b'1', b'1', b'1', 'Pomar', 300.00, 5, 10),
(9, 1, 2, b'1', b'0', b'0', 'Escritório', 75.00, 6, 5),
(10, 2, 3, b'0', b'0', b'1', 'Biblioteca', 85.00, 6, 6),
(11, 2, 2, b'1', b'1', b'0', 'Área Gourmet', 90.00, 7, 3),
(12, 1, 1, b'0', b'1', b'0', 'Quarto de Hóspede', 50.00, 8, 2),
(13, 2, 3, b'1', b'0', b'1', 'Sala de Jogos', 100.00, 9, 8),
(14, 3, 5, b'1', b'1', b'1', 'Terreno Amplo', 500.00, 10, 11),
(15, 1, 2, b'0', b'1', b'0', 'Terraço', 45.00, 10, 6);

-- --------------------------------------------------------

--
-- Estrutura para tabela `inquilino`
--

CREATE TABLE `inquilino` (
  `id_inquilino` int(11) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `data_nasc` date DEFAULT NULL,
  `CPF` varchar(14) NOT NULL,
  `email` varchar(255) NOT NULL,
  `telefone` varchar(255) DEFAULT NULL,
  `id_fiador` int(11) DEFAULT NULL,
  `salario` decimal(7,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Despejando dados para a tabela `inquilino`
--

INSERT INTO `inquilino` (`id_inquilino`, `nome`, `data_nasc`, `CPF`, `email`, `telefone`, `id_fiador`, `salario`) VALUES
(1, 'Maria Silva', '1981-12-21', '123.456.789-00', 'maria.silva@example.com', '(11) 91234-5678', 1, 2500.00),
(2, 'José Santos', '1974-02-14', '234.567.890-11', 'jose.santos@example.com', '(21) 92345-6789', 2, 1500.00),
(3, 'Ana Paula', '1960-06-02', '345.678.901-22', 'ana.paula@example.com', '(31) 93456-7890', 3, 4000.00),
(4, 'Ricardo Almeida', '1987-11-05', '456.789.012-33', 'ricardo.almeida@example.com', '(41) 94567-8901', 4, 0.00),
(5, 'Juliana Costa', '1995-12-18', '567.890.123-44', 'juliana.costa@example.com', '(51) 95678-9012', 5, 0.00),
(6, 'Pedro Henrique', '1983-01-10', '678.901.234-55', 'pedro.henrique@example.com', '(61) 96789-0123', 6, 0.00),
(7, 'Tatiane Oliveira', '1991-04-25', '789.012.345-66', 'tatiane.oliveira@example.com', '(71) 97890-1234', 7, 0.00),
(8, 'Lucas Ferreira', '1988-06-30', '890.123.456-77', 'lucas.ferreira@example.com', '(81) 98901-2345', 8, 0.00),
(9, 'Camila Souza', '1994-07-15', '901.234.567-88', 'camila.souza@example.com', '(91) 99012-3456', 9, 0.00),
(10, 'Roberto Lima', '1981-09-12', '012.345.678-99', 'roberto.lima@example.com', '(71) 90123-4567', 10, 0.00),
(11, 'Fernanda Ribeiro', '1990-10-05', '123.456.789-01', 'fernanda.ribeiro@example.com', '(11) 91234-5678', 1, 0.00),
(12, 'Carlos Eduardo', '1985-11-20', '234.567.890-12', 'carlos.eduardo@example.com', '(21) 92345-6789', 2, 0.00),
(13, 'Juliana Martins', '1993-03-10', '345.678.901-23', 'juliana.martins@example.com', '(31) 93456-7890', 3, 0.00),
(14, 'Marcelo Gomes', '1989-06-27', '456.789.012-34', 'marcelo.gomes@example.com', '(41) 94567-8901', 4, 0.00),
(15, 'Gabriela Lima', '1994-04-10', '789.012.345-67', 'gabriela.lima@example.com', '(71) 97890-1234', 7, 0.00);

-- --------------------------------------------------------

--
-- Estrutura para tabela `midias`
--

CREATE TABLE `midias` (
  `id_midia` int(11) NOT NULL,
  `midias_digitais` varchar(255) DEFAULT NULL,
  `id_imovel` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Despejando dados para a tabela `midias`
--

INSERT INTO `midias` (`id_midia`, `midias_digitais`, `id_imovel`) VALUES
(1, 'https://example.com/fotos/imovel_1.jpg', 1),
(2, 'https://example.com/videos/imovel_1.mp4', 1),
(3, 'https://example.com/fotos/imovel_2.jpg', 2),
(4, 'https://example.com/videos/imovel_2.mp4', 2),
(5, 'https://example.com/fotos/imovel_3.jpg', 3),
(6, 'https://example.com/videos/imovel_3.mp4', 3),
(7, 'https://example.com/fotos/imovel_4.jpg', 4),
(8, 'https://example.com/videos/imovel_4.mp4', 4),
(9, 'https://example.com/fotos/imovel_5.jpg', 5),
(10, 'https://example.com/videos/imovel_5.mp4', 5),
(11, 'https://example.com/fotos/imovel_6.jpg', 6),
(12, 'https://example.com/videos/imovel_6.mp4', 6),
(13, 'https://example.com/fotos/imovel_7.jpg', 7),
(14, 'https://example.com/videos/imovel_7.mp4', 7),
(15, 'https://example.com/fotos/imovel_8.jpg', 8),
(16, 'https://example.com/videos/imovel_8.mp4', 8),
(17, 'https://example.com/fotos/imovel_9.jpg', 9),
(18, 'https://example.com/videos/imovel_9.mp4', 9),
(19, 'https://example.com/fotos/imovel_10.jpg', 10),
(20, 'https://example.com/videos/imovel_10.mp4', 10),
(21, 'https://example.com/fotos/imovel_11.jpg', 11),
(22, 'https://example.com/videos/imovel_11.mp4', 11),
(23, 'https://example.com/fotos/imovel_12.jpg', 12),
(24, 'https://example.com/videos/imovel_12.mp4', 12),
(25, 'https://example.com/fotos/imovel_13.jpg', 13),
(26, 'https://example.com/videos/imovel_13.mp4', 13),
(27, 'https://example.com/fotos/imovel_14.jpg', 14),
(28, 'https://example.com/videos/imovel_14.mp4', 14),
(29, 'https://example.com/fotos/imovel_15.jpg', 15),
(30, 'https://example.com/videos/imovel_15.mp4', 15);

-- --------------------------------------------------------

--
-- Estrutura para tabela `proprietario`
--

CREATE TABLE `proprietario` (
  `id_prop` int(11) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `data_nasc` date DEFAULT NULL,
  `CPF` varchar(14) NOT NULL,
  `email` varchar(255) NOT NULL,
  `telefone` varchar(20) DEFAULT NULL,
  `agencia` int(11) NOT NULL,
  `banco` varchar(50) NOT NULL,
  `conta` varchar(50) NOT NULL,
  `quant_imovel` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Despejando dados para a tabela `proprietario`
--

INSERT INTO `proprietario` (`id_prop`, `nome`, `data_nasc`, `CPF`, `email`, `telefone`, `agencia`, `banco`, `conta`, `quant_imovel`) VALUES
(1, 'José Carlos', '1945-05-08', '123.456.789-00', 'josecarlinhos@email.com', '+55 (11) 4002-8922', 1234, 'Bagriel', '510001234-8', 2),
(2, 'Ana Silva', '1989-11-19', '123.456.789-01', 'ana.silva@example.com', '+55 (11) 98765-4321', 1234, 'Banco do Brasil', '12345-6', 1),
(3, 'João Santos', '1930-12-12', '234.567.890-12', 'joao.santos@example.com', '+55 (11)  99876-5432', 5678, 'Caixa Econômica', '67890-1', 1),
(4, 'Maria Oliveira', '2000-09-09', '345.678.901-23', 'maria.oliveira@example.com', '+55 (11)  91234-5678', 9012, 'Bradesco', '23456-7', 1),
(5, 'Carlos Pereira', '1999-12-25', '456.789.012-34', 'carlos.pereira@example.com', '+55 (11)  93456-7890', 3456, 'Itaú', '78901-8', 3),
(6, 'Laura Costa', '1900-02-07', '567.890.123-45', 'laura.costa@example.com', '+55 (11)  92345-6789', 7890, 'Santander', '34567-9', 2),
(7, 'Pedro Almeida', '1945-11-28', '678.901.234-56', 'pedro.almeida@example.com', '+55 (11)  99999-8888', 2345, 'HSBC', '89012-3', 1),
(8, 'Camila Rocha', '2002-02-02', '789.012.345-67', 'camila.rocha@example.com', '+55 (11)  98765-1234', 6789, 'Citibank', '45678-4', 1),
(9, 'Bruno Martins', '1960-03-21', '890.123.456-78', 'bruno.martins@example.com', '+55 (11)  99887-6543', 123, 'Banco Pan', '90123-5', 1),
(10, 'Letícia Lima', '1958-03-10', '901.234.567-89', 'leticia.lima@example.com', '+55 (11)  91234-5678', 4567, 'Banco Original', '56789-0', 2);

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `aluguel`
--
ALTER TABLE `aluguel`
  ADD PRIMARY KEY (`id_aluguel`),
  ADD KEY `id_inquilino` (`id_inquilino`),
  ADD KEY `id_imovel` (`id_imovel`),
  ADD KEY `id_corretor` (`id_corretor`);

--
-- Índices de tabela `corretor`
--
ALTER TABLE `corretor`
  ADD PRIMARY KEY (`id_corretor`),
  ADD UNIQUE KEY `CPF` (`CPF`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Índices de tabela `endereco`
--
ALTER TABLE `endereco`
  ADD PRIMARY KEY (`id_endereco`),
  ADD KEY `id_imovel` (`id_imovel`);

--
-- Índices de tabela `fiador`
--
ALTER TABLE `fiador`
  ADD PRIMARY KEY (`id_fiador`),
  ADD UNIQUE KEY `CPF` (`CPF`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Índices de tabela `imovel`
--
ALTER TABLE `imovel`
  ADD PRIMARY KEY (`id_imovel`),
  ADD KEY `id_prop` (`id_prop`);

--
-- Índices de tabela `inquilino`
--
ALTER TABLE `inquilino`
  ADD PRIMARY KEY (`id_inquilino`),
  ADD UNIQUE KEY `CPF` (`CPF`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `id_fiador` (`id_fiador`);

--
-- Índices de tabela `midias`
--
ALTER TABLE `midias`
  ADD PRIMARY KEY (`id_midia`),
  ADD KEY `id_imovel` (`id_imovel`);

--
-- Índices de tabela `proprietario`
--
ALTER TABLE `proprietario`
  ADD PRIMARY KEY (`id_prop`),
  ADD UNIQUE KEY `CPF` (`CPF`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `aluguel`
--
ALTER TABLE `aluguel`
  MODIFY `id_aluguel` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT de tabela `corretor`
--
ALTER TABLE `corretor`
  MODIFY `id_corretor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `endereco`
--
ALTER TABLE `endereco`
  MODIFY `id_endereco` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de tabela `fiador`
--
ALTER TABLE `fiador`
  MODIFY `id_fiador` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `imovel`
--
ALTER TABLE `imovel`
  MODIFY `id_imovel` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT de tabela `inquilino`
--
ALTER TABLE `inquilino`
  MODIFY `id_inquilino` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT de tabela `midias`
--
ALTER TABLE `midias`
  MODIFY `id_midia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=818;

--
-- AUTO_INCREMENT de tabela `proprietario`
--
ALTER TABLE `proprietario`
  MODIFY `id_prop` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `aluguel`
--
ALTER TABLE `aluguel`
  ADD CONSTRAINT `aluguel_ibfk_1` FOREIGN KEY (`id_inquilino`) REFERENCES `inquilino` (`id_inquilino`),
  ADD CONSTRAINT `aluguel_ibfk_2` FOREIGN KEY (`id_imovel`) REFERENCES `imovel` (`id_imovel`),
  ADD CONSTRAINT `aluguel_ibfk_3` FOREIGN KEY (`id_corretor`) REFERENCES `corretor` (`id_corretor`);

--
-- Restrições para tabelas `endereco`
--
ALTER TABLE `endereco`
  ADD CONSTRAINT `endereco_ibfk_1` FOREIGN KEY (`id_imovel`) REFERENCES `imovel` (`id_imovel`);

--
-- Restrições para tabelas `imovel`
--
ALTER TABLE `imovel`
  ADD CONSTRAINT `imovel_ibfk_1` FOREIGN KEY (`id_prop`) REFERENCES `proprietario` (`id_prop`);

--
-- Restrições para tabelas `inquilino`
--
ALTER TABLE `inquilino`
  ADD CONSTRAINT `inquilino_ibfk_1` FOREIGN KEY (`id_fiador`) REFERENCES `fiador` (`id_fiador`);

--
-- Restrições para tabelas `midias`
--
ALTER TABLE `midias`
  ADD CONSTRAINT `midias_ibfk_1` FOREIGN KEY (`id_imovel`) REFERENCES `imovel` (`id_imovel`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
