-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 01-Dez-2021 às 17:07
-- Versão do servidor: 10.4.21-MariaDB
-- versão do PHP: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `biblioteca.sql`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `aluno`
--

CREATE TABLE `aluno` (
  `id_aluno` int(10) UNSIGNED NOT NULL,
  `nome_aluno` varchar(100) DEFAULT NULL,
  `email_aluno` varchar(100) DEFAULT NULL,
  `fone_aluno` varchar(20) DEFAULT NULL,
  `rgm_aluno` varchar(10) DEFAULT NULL,
  `data_nasc_aluno` date DEFAULT NULL,
  `genero_aluno` varchar(10) DEFAULT NULL,
  `end_aluno` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `aluno`
--

INSERT INTO `aluno` (`id_aluno`, `nome_aluno`, `email_aluno`, `fone_aluno`, `rgm_aluno`, `data_nasc_aluno`, `genero_aluno`, `end_aluno`) VALUES
(1, 'dsadsa', 'sdadsa', '', '', '0000-00-00', '', 'asdas');

-- --------------------------------------------------------

--
-- Estrutura da tabela `atendente`
--

CREATE TABLE `atendente` (
  `id_atendente` int(10) UNSIGNED NOT NULL,
  `biblioteca_id_biblioteca` int(10) UNSIGNED NOT NULL,
  `nome_atendente` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `atendente`
--

INSERT INTO `atendente` (`id_atendente`, `biblioteca_id_biblioteca`, `nome_atendente`) VALUES
(1, 1, 'dsadas');

-- --------------------------------------------------------

--
-- Estrutura da tabela `biblioteca`
--

CREATE TABLE `biblioteca` (
  `id_biblioteca` int(10) UNSIGNED NOT NULL,
  `nome_biblioteca` varchar(100) DEFAULT NULL,
  `end_biblioteca` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `biblioteca`
--

INSERT INTO `biblioteca` (`id_biblioteca`, `nome_biblioteca`, `end_biblioteca`) VALUES
(1, 'dsaddsa', 'dasdas');

-- --------------------------------------------------------

--
-- Estrutura da tabela `categoria`
--

CREATE TABLE `categoria` (
  `id_categoria` int(10) UNSIGNED NOT NULL,
  `nome_categoria` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `categoria`
--

INSERT INTO `categoria` (`id_categoria`, `nome_categoria`) VALUES
(1, 'dsadsadas');

-- --------------------------------------------------------

--
-- Estrutura da tabela `livro`
--

CREATE TABLE `livro` (
  `id_livro` int(10) UNSIGNED NOT NULL,
  `categoria_id_categoria` int(10) UNSIGNED NOT NULL,
  `titulo_livro` varchar(100) DEFAULT NULL,
  `autor_livro` varchar(100) DEFAULT NULL,
  `editora_livro` varchar(45) DEFAULT NULL,
  `edicao_livro` char(3) DEFAULT NULL,
  `localidade_livro` varchar(20) DEFAULT NULL,
  `ano_livro` year(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `livro`
--

INSERT INTO `livro` (`id_livro`, `categoria_id_categoria`, `titulo_livro`, `autor_livro`, `editora_livro`, `edicao_livro`, `localidade_livro`, `ano_livro`) VALUES
(1, 1, 'dsadas', 'sadsadsa', 'dsadsa', 'dsa', 'dsadsa', 0000),
(2, 0, 'DSADAS', 'dsadas', '42', '432', 'jALAPAO', 2020);

-- --------------------------------------------------------

--
-- Estrutura da tabela `reserva`
--

CREATE TABLE `reserva` (
  `aluno_id_aluno` int(10) UNSIGNED NOT NULL,
  `livro_id_livro` int(10) UNSIGNED NOT NULL,
  `atendente_id_atendente` int(10) UNSIGNED NOT NULL,
  `data_emprestimo` date DEFAULT NULL,
  `data_devolucao` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `reserva`
--

INSERT INTO `reserva` (`aluno_id_aluno`, `livro_id_livro`, `atendente_id_atendente`, `data_emprestimo`, `data_devolucao`) VALUES
(0, 0, 0, '3321-02-23', '3223-02-23');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `aluno`
--
ALTER TABLE `aluno`
  ADD PRIMARY KEY (`id_aluno`);

--
-- Índices para tabela `atendente`
--
ALTER TABLE `atendente`
  ADD PRIMARY KEY (`id_atendente`),
  ADD KEY `atendente_FKIndex1` (`biblioteca_id_biblioteca`);

--
-- Índices para tabela `biblioteca`
--
ALTER TABLE `biblioteca`
  ADD PRIMARY KEY (`id_biblioteca`);

--
-- Índices para tabela `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`id_categoria`);

--
-- Índices para tabela `livro`
--
ALTER TABLE `livro`
  ADD PRIMARY KEY (`id_livro`),
  ADD KEY `livro_FKIndex1` (`categoria_id_categoria`);

--
-- Índices para tabela `reserva`
--
ALTER TABLE `reserva`
  ADD PRIMARY KEY (`aluno_id_aluno`,`livro_id_livro`),
  ADD KEY `aluno_has_livro_FKIndex1` (`aluno_id_aluno`),
  ADD KEY `aluno_has_livro_FKIndex2` (`livro_id_livro`),
  ADD KEY `reserva_FKIndex3` (`atendente_id_atendente`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `aluno`
--
ALTER TABLE `aluno`
  MODIFY `id_aluno` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `atendente`
--
ALTER TABLE `atendente`
  MODIFY `id_atendente` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `biblioteca`
--
ALTER TABLE `biblioteca`
  MODIFY `id_biblioteca` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `categoria`
--
ALTER TABLE `categoria`
  MODIFY `id_categoria` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `livro`
--
ALTER TABLE `livro`
  MODIFY `id_livro` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
