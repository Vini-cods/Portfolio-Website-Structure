-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 12/04/2025 às 04:27
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
-- Banco de dados: `portfolio`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `banner`
--

CREATE TABLE `banner` (
  `id` int(11) NOT NULL,
  `titulo` varchar(50) DEFAULT NULL,
  `subtitulo` varchar(225) DEFAULT NULL,
  `imagem` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Despejando dados para a tabela `banner`
--

INSERT INTO `banner` (`id`, `titulo`, `subtitulo`, `imagem`) VALUES
(2, '', '', '11-04-2025-21-51-48-banner1.png'),
(3, '', '', '11-04-2025-21-51-55-banner2.png'),
(4, '', '', '11-04-2025-21-52-57-banner3.png'),
(5, '', '', '11-04-2025-21-53-14-banner4.png'),
(6, '', '', '11-04-2025-21-53-18-banner5.png');

-- --------------------------------------------------------

--
-- Estrutura para tabela `config`
--

CREATE TABLE `config` (
  `id` int(11) NOT NULL,
  `nome` varchar(80) NOT NULL,
  `email` varchar(50) NOT NULL,
  `senha` varchar(50) NOT NULL,
  `telefone` varchar(20) DEFAULT NULL,
  `endereco` varchar(100) DEFAULT NULL,
  `logo` varchar(80) NOT NULL,
  `icone` varchar(80) NOT NULL,
  `instagram` varchar(80) DEFAULT NULL,
  `twitter` varchar(80) DEFAULT NULL,
  `linkedin` varchar(80) DEFAULT NULL,
  `facebook` varchar(80) DEFAULT NULL,
  `youtube` varchar(80) DEFAULT NULL,
  `cor` varchar(20) DEFAULT NULL,
  `titulo_servicos` varchar(50) DEFAULT NULL,
  `subtitulo_servicos` varchar(255) DEFAULT NULL,
  `titulo_trabalhos` varchar(50) DEFAULT NULL,
  `subtitulo_trabalhos` varchar(255) DEFAULT NULL,
  `titulo_equipe` varchar(50) DEFAULT NULL,
  `subtitulo_equipe` varchar(255) DEFAULT NULL,
  `titulo_contato` varchar(50) DEFAULT NULL,
  `subtitulo_contato` varchar(255) DEFAULT NULL,
  `texto_rodape` varchar(1000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Despejando dados para a tabela `config`
--

INSERT INTO `config` (`id`, `nome`, `email`, `senha`, `telefone`, `endereco`, `logo`, `icone`, `instagram`, `twitter`, `linkedin`, `facebook`, `youtube`, `cor`, `titulo_servicos`, `subtitulo_servicos`, `titulo_trabalhos`, `subtitulo_trabalhos`, `titulo_equipe`, `subtitulo_equipe`, `titulo_contato`, `subtitulo_contato`, `texto_rodape`) VALUES
(1, 'Ciências da Computação', 'cienciasdacomputacao@gmail.com', '123', '(99) 99999-9999', 'ciênciasdacomputação@gmail.com', 'wwewe', 'www', 'ciênciasdacomputação@gmail.com', 'ciênciasdacomputação@gmail.com', 'ciênciasdacomputação@gmail.com', 'ciênciasdacomputação@gmail.com', 'ciênciasdacomputação@gmail.com', '0000000000000', 'Meus Serviços', 'O que eu posso fazer por você com tecnologia e criatividade', 'Alguns Trabalhos', '', 'Equipe', '', 'ciênciasdacomputação@gmail.com', 'até logo', 'ciênciasdacomputação@gmail.com');

-- --------------------------------------------------------

--
-- Estrutura para tabela `equipe`
--

CREATE TABLE `equipe` (
  `id` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `cargo` varchar(50) NOT NULL,
  `imagem` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Despejando dados para a tabela `equipe`
--

INSERT INTO `equipe` (`id`, `nome`, `cargo`, `imagem`) VALUES
(1, 'Eu (João)', 'Estudante', '11-04-2025-22-21-34-a8da222be70a71e7858bf752065d5c');

-- --------------------------------------------------------

--
-- Estrutura para tabela `servicos`
--

CREATE TABLE `servicos` (
  `id` int(11) NOT NULL,
  `titulo` varchar(100) NOT NULL,
  `descricao` text NOT NULL,
  `imagem` varchar(100) DEFAULT NULL,
  `video` varchar(100) DEFAULT NULL,
  `exibir` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Despejando dados para a tabela `servicos`
--

INSERT INTO `servicos` (`id`, `titulo`, `descricao`, `imagem`, `video`, `exibir`) VALUES
(1, 'Desenvolvimento Web', 'Criação de sites modernos, responsivos e otimizados com HTML, CSS, JavaScript e PHP', '11-04-2025-22-07-20-pexels-danny-meneses-943096.jpg', '', 'Imagem'),
(2, 'Sistemas Personalizados', 'Desenvolvimento de sistemas sob medida com foco em performance, usabilidade e segurança.', '11-04-2025-22-08-33-9_0410275001647276125.png', '', 'Imagem'),
(3, 'Automação com Python', 'Scripts para automatizar tarefas repetitivas, manipulação de dados e integração de APIs.', '11-04-2025-22-10-45-1646751049438.jpg', '', 'Imagem'),
(4, 'Banco de Dados', 'Modelagem e gerenciamento de bancos de dados MySQL e PostgreSQL.', '11-04-2025-22-11-59-1520224028126.jpg', '', 'Imagem'),
(5, 'Suporte Técnico e Manutenção', '<span style=\"font-size: 1rem;\">Manutenção preventiva e corretiva em sistemas e sites existentes.</span>', '11-04-2025-22-13-15-download.jpg', '', 'Imagem');

-- --------------------------------------------------------

--
-- Estrutura para tabela `sobre`
--

CREATE TABLE `sobre` (
  `id` int(11) NOT NULL,
  `titulo` varchar(50) NOT NULL,
  `subtitulo` varchar(255) DEFAULT NULL,
  `descricao` text NOT NULL,
  `imagem` varchar(100) DEFAULT NULL,
  `video` varchar(100) DEFAULT NULL,
  `exibir` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Despejando dados para a tabela `sobre`
--

INSERT INTO `sobre` (`id`, `titulo`, `subtitulo`, `descricao`, `imagem`, `video`, `exibir`) VALUES
(1, 'Sobre Mim', 'Estudante de Ciência da Computação apaixonado por tecnologia e inovação', '<div>&nbsp;Olá! Meu nome é João da Silva, sou estudante de Ciência da Computação e entusiasta de tecnologia desde criança.&nbsp;<span style=\"font-size: 1rem;\">Tenho experiência com linguagens como Python, Java e JavaScript, e estou sempre buscando aprender mais sobre&nbsp;</span><span style=\"font-size: 1rem;\">desenvolvimento web, inteligência artificial e segurança da informação.&nbsp;</span><span style=\"font-size: 1rem;\">Atualmente, estou trabalhando em projetos pessoais que envolvem automação e desenvolvimento full stack, além&nbsp;</span><span style=\"font-size: 1rem;\">de contribuir com comunidades online e eventos de tecnologia. Meu objetivo é transformar ideias em soluções reais&nbsp;</span><span style=\"font-size: 1rem;\">e impactar positivamente o mundo através do código.</span></div>', '11-04-2025-22-16-03-a8da222be70a71e7858bf752065d5cc3.jpg', '', 'Imagem');

-- --------------------------------------------------------

--
-- Estrutura para tabela `trabalhos`
--

CREATE TABLE `trabalhos` (
  `id` int(11) NOT NULL,
  `titulo` varchar(100) NOT NULL,
  `descricao` text DEFAULT NULL,
  `imagem` varchar(100) NOT NULL,
  `video` varchar(100) DEFAULT NULL,
  `exibir` varchar(20) NOT NULL,
  `link` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Despejando dados para a tabela `trabalhos`
--

INSERT INTO `trabalhos` (`id`, `titulo`, `descricao`, `imagem`, `video`, `exibir`, `link`) VALUES
(1, '', '', '11-04-2025-22-17-53-trabalho10.jpg', '', 'Imagem', ''),
(3, '', '', '11-04-2025-22-25-56-edit_delete.gif', '', 'Imagem', '');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `banner`
--
ALTER TABLE `banner`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `config`
--
ALTER TABLE `config`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `equipe`
--
ALTER TABLE `equipe`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `servicos`
--
ALTER TABLE `servicos`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `sobre`
--
ALTER TABLE `sobre`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `trabalhos`
--
ALTER TABLE `trabalhos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `banner`
--
ALTER TABLE `banner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de tabela `config`
--
ALTER TABLE `config`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `equipe`
--
ALTER TABLE `equipe`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `servicos`
--
ALTER TABLE `servicos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `sobre`
--
ALTER TABLE `sobre`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `trabalhos`
--
ALTER TABLE `trabalhos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
