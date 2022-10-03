-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 04-Out-2022 às 01:55
-- Versão do servidor: 10.1.37-MariaDB
-- versão do PHP: 7.3.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sshplus`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `acesso_servidor`
--

CREATE TABLE `acesso_servidor` (
  `id_acesso_servidor` int(10) NOT NULL,
  `id_servidor` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `id_mestre` int(11) NOT NULL DEFAULT '0',
  `id_servidor_mestre` int(11) NOT NULL DEFAULT '0',
  `qtd` int(10) NOT NULL DEFAULT '0',
  `validade` datetime NOT NULL,
  `demo` int(2) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `acesso_servidor`
--

INSERT INTO `acesso_servidor` (`id_acesso_servidor`, `id_servidor`, `id_usuario`, `id_mestre`, `id_servidor_mestre`, `qtd`, `validade`, `demo`) VALUES
(3, 2, 1, 0, 0, 50, '2050-01-21 00:00:00', 0),
(4, 2, 2, 0, 0, 1000, '2050-01-21 00:00:00', 0),
(5, 2, 3, 0, 0, 20, '2023-09-13 00:00:00', 0),
(7, 2, 5, 0, 0, 50, '2023-09-17 00:00:00', 0),
(9, 2, 7, 0, 0, 20, '2023-09-18 00:00:00', 0),
(10, 2, 8, 0, 0, 21, '2023-09-20 00:00:00', 0),
(11, 2, 9, 0, 0, 21, '2023-09-20 00:00:00', 0),
(12, 2, 10, 0, 0, 20, '2023-09-21 00:00:00', 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `admin`
--

CREATE TABLE `admin` (
  `id_administrador` int(11) NOT NULL,
  `login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `senha` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nome` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `celular` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `accessKEY` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `site` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `textocon` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `textorev` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `admin`
--

INSERT INTO `admin` (`id_administrador`, `login`, `senha`, `nome`, `email`, `celular`, `accessKEY`, `site`, `textocon`, `textorev`) VALUES
(1, 'admin', 'Adm23038!@', 'GROWTH NET', 'contato@growthnet.com.br', '21967214254', NULL, 'GROWTH NET', '<er>▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬</er> <br><er> *COMO CONECTAR A INTERNET*</er> <br><er>• Abra o app que você instalou.</er> <br><er>• Selecione sua operadora.</er> <br><er>• Digite o usuário e a senha no app.</er> <br><er>• Ligue dados móveis e Desligue Wi-fi</er> <br><er>• Clique em Conectar.</er> <br><er>• Deve aparecer Conexão *Estabelecida*.</er> <br><er>• Se apareceu, vá ao youtube e faça o teste.</er> <br><er> *SIGA EXATAMENTE COMO DIZ*</er><br><er>▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬</er> <br><er> *GOSTOU? DIGITE QUERO ASSINAR!*</er>', '');

-- --------------------------------------------------------

--
-- Estrutura da tabela `anuncios`
--

CREATE TABLE `anuncios` (
  `anuncio1` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `anuncio2` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `anuncio3` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `anuncio4` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `anuncio5` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `anuncio6` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `anuncios`
--

INSERT INTO `anuncios` (`anuncio1`, `anuncio2`, `anuncio3`, `anuncio4`, `anuncio5`, `anuncio6`) VALUES
('Insira o Código Adsense no Painel', 'Insira o Código Adsense no Painel', 'Insira o Código Adsense no Painel', 'Insira o Código Adsense no Painel', 'Insira o Código Adsense no Painel', 'Insira o Código Adsense no Painel');

-- --------------------------------------------------------

--
-- Estrutura da tabela `arquivo_download`
--

CREATE TABLE `arquivo_download` (
  `id` int(11) NOT NULL,
  `nome` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('funcionando','testes') COLLATE utf8mb4_unicode_ci NOT NULL,
  `tipo` enum('ehi','apk','outros') COLLATE utf8mb4_unicode_ci NOT NULL,
  `operadora` enum('todas','claro','vivo','tim','oi') COLLATE utf8mb4_unicode_ci NOT NULL,
  `data` datetime NOT NULL,
  `detalhes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `nome_arquivo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cliente_tipo` enum('vpn','revenda','todos') COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `arquivo_download`
--

INSERT INTO `arquivo_download` (`id`, `nome`, `status`, `tipo`, `operadora`, `data`, `detalhes`, `nome_arquivo`, `cliente_tipo`) VALUES
(3, 'GROWTH NET V2', 'funcionando', 'apk', 'todas', '2022-09-22 21:52:38', 'Para celulares antigos', 'growth v9 (android antigo).apk', 'todos'),
(4, 'GROWTH NET V1', 'funcionando', 'apk', 'todas', '2022-09-22 21:53:05', 'Para celulares novos com SDK', 'growth v9 (android novo).apk', 'todos');

-- --------------------------------------------------------

--
-- Estrutura da tabela `chamados`
--

CREATE TABLE `chamados` (
  `id` int(11) NOT NULL,
  `usuario_id` int(11) NOT NULL,
  `id_mestre` int(11) NOT NULL DEFAULT '0',
  `tipo` enum('contassh','revendassh','usuariossh','servidor','outros') COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('aberto','resposta','encerrado') COLLATE utf8mb4_unicode_ci NOT NULL,
  `resposta` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `login` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `motivo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mensagem` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `data` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `configs`
--

CREATE TABLE `configs` (
  `id` int(11) NOT NULL,
  `nome` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `valor` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `configs`
--

INSERT INTO `configs` (`id`, `nome`, `valor`) VALUES
(1, 'msg_id', '01'),
(2, 'sesexp', '30'),
(3, 'logo', 'https://i.ibb.co/q1LnDVT/logo.png'),
(4, 'largura', ''),
(5, 'altura', ''),
(6, 'link', 'http://meu.dominio'),
(7, 'titulo', 'Painel Conecta4G');

-- --------------------------------------------------------

--
-- Estrutura da tabela `configuracao`
--

CREATE TABLE `configuracao` (
  `id_configuracao` int(11) NOT NULL,
  `id_usuario` int(10) NOT NULL,
  `titulo_pagina` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `configuracoes`
--

CREATE TABLE `configuracoes` (
  `id` int(11) NOT NULL,
  `id_owner` int(11) NOT NULL,
  `versao` int(11) NOT NULL DEFAULT '2',
  `notas` mediumtext COLLATE utf8mb4_unicode_ci,
  `sms` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `att` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contato` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `termos` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `checkuser` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mensagem` mediumtext COLLATE utf8mb4_unicode_ci,
  `att_msg` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `configuracoes`
--

INSERT INTO `configuracoes` (`id`, `id_owner`, `versao`, `notas`, `sms`, `att`, `email`, `contato`, `termos`, `checkuser`, `mensagem`, `att_msg`) VALUES
(1, 1, 1, '👋 ATUALIZAÇÃO DISPONÍVEL! 👋\n🚀 CLIQUE EM ATUALIZAR 🚀', 'http://meu.dominio/update/admin/sms', 'http://meu.dominio/update/admin/config', 'meuemail@gmail.com', 'https://t.me/telegram', 'http://meu.dominio/apps/termos.php', 'true', NULL, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `fatura`
--

CREATE TABLE `fatura` (
  `id` int(11) NOT NULL,
  `usuario_id` int(11) NOT NULL,
  `servidor_id` int(11) NOT NULL,
  `conta_id` int(11) NOT NULL,
  `tipo` enum('vpn','revenda','outros') COLLATE utf8mb4_unicode_ci NOT NULL,
  `qtd` int(11) NOT NULL,
  `data` datetime NOT NULL,
  `datavencimento` datetime NOT NULL,
  `status` enum('pendente','cancelado','pago') COLLATE utf8mb4_unicode_ci NOT NULL,
  `descrição` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `valor` int(11) NOT NULL,
  `desconto` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `fatura_clientes`
--

CREATE TABLE `fatura_clientes` (
  `id` int(11) NOT NULL,
  `usuario_id` int(11) NOT NULL,
  `id_mestre` int(11) NOT NULL DEFAULT '0',
  `servidor_id` int(11) NOT NULL,
  `conta_id` int(11) NOT NULL,
  `tipo` enum('vpn','revenda','outros') COLLATE utf8mb4_unicode_ci NOT NULL,
  `qtd` int(11) NOT NULL,
  `data` datetime NOT NULL,
  `datavencimento` datetime NOT NULL,
  `status` enum('pendente','cancelado','pago') COLLATE utf8mb4_unicode_ci NOT NULL,
  `descrição` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `valor` int(11) NOT NULL,
  `desconto` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `fatura_comprovantes`
--

CREATE TABLE `fatura_comprovantes` (
  `id` int(11) NOT NULL,
  `fatura_id` int(11) NOT NULL,
  `usuario_id` int(11) NOT NULL,
  `status` enum('aberto','fechado') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'aberto',
  `data` datetime NOT NULL,
  `formapagamento` enum('boleto','deptra') COLLATE utf8mb4_unicode_ci NOT NULL,
  `nota` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `imagem` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `fatura_comprovantes_clientes`
--

CREATE TABLE `fatura_comprovantes_clientes` (
  `id` int(11) NOT NULL,
  `id_mestre` int(11) NOT NULL DEFAULT '0',
  `fatura_id` int(11) NOT NULL,
  `usuario_id` int(11) NOT NULL,
  `status` enum('aberto','fechado') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'aberto',
  `data` datetime NOT NULL,
  `formapagamento` enum('boleto','deptra') COLLATE utf8mb4_unicode_ci NOT NULL,
  `nota` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `imagem` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `historico_login`
--

CREATE TABLE `historico_login` (
  `id_historico_login` int(10) NOT NULL,
  `id_usuario` int(10) NOT NULL,
  `data_login` datetime NOT NULL,
  `ip_login` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `navegador` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `hist_usuario_ssh_online`
--

CREATE TABLE `hist_usuario_ssh_online` (
  `id_hist_usrSSH` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `hora_conexao` datetime NOT NULL,
  `hora_desconexao` datetime DEFAULT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `hist_usuario_ssh_online`
--

INSERT INTO `hist_usuario_ssh_online` (`id_hist_usrSSH`, `id_usuario`, `hora_conexao`, `hora_desconexao`, `status`) VALUES
(1, 147, '2022-09-30 00:26:02', NULL, 1),
(2, 22, '2022-09-30 00:31:02', '2022-09-30 00:35:02', 0),
(3, 22, '2022-09-30 00:35:02', '2022-09-30 00:52:01', 0),
(4, 59, '2022-09-30 00:48:01', '2022-09-30 03:57:01', 0),
(5, 22, '2022-09-30 00:52:01', '2022-09-30 01:30:02', 0),
(6, 22, '2022-09-30 01:30:02', '2022-09-30 02:08:01', 0),
(7, 36, '2022-09-30 01:34:01', NULL, 1),
(8, 22, '2022-09-30 02:08:01', '2022-09-30 02:17:01', 0),
(9, 22, '2022-09-30 02:17:01', '2022-09-30 02:23:02', 0),
(10, 22, '2022-09-30 02:25:04', '2022-09-30 02:38:01', 0),
(11, 22, '2022-09-30 02:38:01', '2022-09-30 02:59:01', 0),
(12, 22, '2022-09-30 03:00:01', '2022-09-30 03:28:02', 0),
(13, 158, '2022-09-30 03:05:02', NULL, 1),
(14, 22, '2022-09-30 03:29:01', '2022-09-30 04:05:01', 0),
(15, 59, '2022-09-30 03:57:01', '2022-09-30 04:11:01', 0),
(16, 22, '2022-09-30 04:05:01', '2022-09-30 04:32:01', 0),
(17, 59, '2022-09-30 04:11:01', '2022-09-30 04:22:01', 0),
(18, 59, '2022-09-30 04:22:01', '2022-09-30 04:25:01', 0),
(19, 59, '2022-09-30 04:26:01', '2022-09-30 04:34:01', 0),
(20, 22, '2022-09-30 04:32:01', '2022-09-30 04:54:01', 0),
(21, 59, '2022-09-30 04:34:01', '2022-09-30 04:37:01', 0),
(22, 59, '2022-09-30 04:38:01', '2022-09-30 04:40:02', 0),
(23, 59, '2022-09-30 04:40:02', '2022-09-30 04:47:01', 0),
(24, 59, '2022-09-30 04:47:01', '2022-09-30 04:53:01', 0),
(25, 22, '2022-09-30 04:54:01', '2022-09-30 05:39:02', 0),
(26, 59, '2022-09-30 04:54:01', '2022-09-30 04:56:01', 0),
(27, 59, '2022-09-30 04:56:01', '2022-09-30 05:00:01', 0),
(28, 59, '2022-09-30 05:00:01', '2022-09-30 05:05:02', 0),
(29, 59, '2022-09-30 05:06:02', '2022-09-30 05:12:01', 0),
(30, 59, '2022-09-30 05:12:01', '2022-09-30 05:21:01', 0),
(31, 59, '2022-09-30 05:21:01', '2022-09-30 05:27:01', 0),
(32, 59, '2022-09-30 05:28:01', '2022-09-30 05:33:01', 0),
(33, 59, '2022-09-30 05:34:01', '2022-09-30 05:39:02', 0),
(34, 22, '2022-09-30 05:40:02', '2022-09-30 05:48:01', 0),
(35, 59, '2022-09-30 05:40:02', '2022-09-30 05:45:01', 0),
(36, 59, '2022-09-30 05:45:01', '2022-09-30 05:52:01', 0),
(37, 22, '2022-09-30 05:48:01', '2022-09-30 06:04:01', 0),
(38, 59, '2022-09-30 05:52:01', '2022-09-30 05:54:01', 0),
(39, 59, '2022-09-30 05:54:01', '2022-09-30 05:59:01', 0),
(40, 59, '2022-09-30 06:00:02', '2022-09-30 06:02:02', 0),
(41, 59, '2022-09-30 06:02:02', '2022-09-30 06:09:01', 0),
(42, 22, '2022-09-30 06:04:01', '2022-09-30 06:47:01', 0),
(43, 59, '2022-09-30 06:10:01', '2022-09-30 06:15:01', 0),
(44, 59, '2022-09-30 06:16:02', '2022-09-30 06:18:01', 0),
(45, 59, '2022-09-30 06:18:01', '2022-09-30 06:20:01', 0),
(46, 59, '2022-09-30 06:20:01', '2022-09-30 06:22:01', 0),
(47, 73, '2022-09-30 06:20:01', '2022-09-30 06:33:01', 0),
(48, 59, '2022-09-30 06:22:01', '2022-09-30 06:24:01', 0),
(49, 59, '2022-09-30 06:24:01', '2022-09-30 06:27:02', 0),
(50, 59, '2022-09-30 06:28:01', '2022-09-30 06:33:01', 0),
(51, 73, '2022-09-30 06:33:01', '2022-09-30 06:42:01', 0),
(52, 59, '2022-09-30 06:34:01', '2022-09-30 06:37:01', 0),
(53, 59, '2022-09-30 06:38:02', '2022-09-30 06:42:01', 0),
(54, 73, '2022-09-30 06:42:01', '2022-09-30 06:44:02', 0),
(55, 59, '2022-09-30 06:44:02', '2022-09-30 06:46:01', 0),
(56, 59, '2022-09-30 06:47:01', '2022-09-30 06:50:01', 0),
(57, 22, '2022-09-30 06:49:01', '2022-09-30 06:51:01', 0),
(58, 73, '2022-09-30 06:49:01', '2022-09-30 07:11:01', 0),
(59, 59, '2022-09-30 06:50:01', '2022-09-30 06:53:01', 0),
(60, 22, '2022-09-30 06:51:01', '2022-09-30 06:53:01', 0),
(61, 59, '2022-09-30 06:54:01', '2022-09-30 06:59:01', 0),
(62, 59, '2022-09-30 07:00:02', '2022-09-30 07:03:01', 0),
(63, 92, '2022-09-30 07:02:02', NULL, 1),
(64, 157, '2022-09-30 07:04:01', NULL, 1),
(65, 59, '2022-09-30 07:05:01', '2022-09-30 07:28:01', 0),
(66, 73, '2022-09-30 07:11:01', '2022-09-30 07:18:01', 0),
(67, 73, '2022-09-30 07:18:01', '2022-09-30 08:10:01', 0),
(68, 49, '2022-09-30 07:28:01', NULL, 1),
(69, 59, '2022-09-30 07:28:01', NULL, 1),
(70, 73, '2022-09-30 08:11:01', '2022-09-30 08:23:01', 0),
(71, 22, '2022-09-30 08:17:02', '2022-09-30 08:32:02', 0),
(72, 73, '2022-09-30 08:26:01', '2022-09-30 08:36:01', 0),
(73, 23, '2022-09-30 08:30:01', NULL, 1),
(74, 22, '2022-09-30 08:32:02', '2022-09-30 08:57:01', 0),
(75, 144, '2022-09-30 08:36:01', '2022-09-30 09:05:02', 0),
(76, 73, '2022-09-30 08:38:01', '2022-09-30 08:44:02', 0),
(77, 33, '2022-09-30 08:47:01', NULL, 1),
(78, 73, '2022-09-30 08:47:01', '2022-09-30 08:49:01', 0),
(79, 73, '2022-09-30 08:49:01', '2022-09-30 08:59:01', 0),
(80, 111, '2022-09-30 08:50:02', NULL, 1),
(81, 22, '2022-09-30 08:58:02', '2022-09-30 09:19:02', 0),
(82, 73, '2022-09-30 09:00:02', '2022-09-30 09:05:02', 0),
(83, 144, '2022-09-30 09:05:02', NULL, 1),
(84, 73, '2022-09-30 09:09:01', '2022-09-30 09:11:02', 0),
(85, 16, '2022-09-30 09:12:01', NULL, 1),
(86, 73, '2022-09-30 09:14:01', '2022-09-30 09:16:01', 0),
(87, 73, '2022-09-30 09:19:02', '2022-09-30 09:23:01', 0),
(88, 22, '2022-09-30 09:23:01', '2022-09-30 09:32:01', 0),
(89, 73, '2022-09-30 09:25:01', '2022-09-30 09:35:01', 0),
(90, 88, '2022-09-30 09:27:01', NULL, 1),
(91, 22, '2022-09-30 09:33:01', NULL, 1),
(92, 73, '2022-09-30 09:35:01', '2022-09-30 09:45:02', 0),
(93, 159, '2022-09-30 09:41:01', '2022-09-30 09:46:03', 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `hist_usuario_ssh_online_free`
--

CREATE TABLE `hist_usuario_ssh_online_free` (
  `id_hist_usrSSH` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `hora_conexao` datetime NOT NULL,
  `hora_desconexao` datetime DEFAULT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `informativo`
--

CREATE TABLE `informativo` (
  `id` int(11) NOT NULL,
  `data` datetime NOT NULL,
  `imagem` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `mensagens`
--

CREATE TABLE `mensagens` (
  `id` int(11) NOT NULL,
  `id_owner` int(11) NOT NULL,
  `msg` longtext COLLATE utf8mb4_unicode_ci,
  `att` int(11) DEFAULT '2'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `mensagens`
--

INSERT INTO `mensagens` (`id`, `id_owner`, `msg`, `att`) VALUES
(1, 1, 'Atualização com todas as\noperadoras funcionando!\nMantenha o APP sempre atualizado!\nNosso compromisso é deixar vocês \nsempre ON! 🚀🔰', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `mercadopago`
--

CREATE TABLE `mercadopago` (
  `CLIENT_ID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `CLIENT_SECRET` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `noticias`
--

CREATE TABLE `noticias` (
  `id` int(11) NOT NULL,
  `status` enum('ativo','desativado') COLLATE utf8mb4_unicode_ci NOT NULL,
  `titulo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subtitulo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `msg` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `data` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `notificacoes`
--

CREATE TABLE `notificacoes` (
  `id` int(11) NOT NULL,
  `usuario_id` int(11) NOT NULL,
  `conta_id` int(11) NOT NULL,
  `data` datetime NOT NULL,
  `tipo` enum('fatura','conta','revenda','outros','usuario','chamados') COLLATE utf8mb4_unicode_ci NOT NULL,
  `linkfatura` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mensagem` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `info_outros` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lido` enum('nao','sim') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'nao',
  `admin` enum('nao','sim') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'nao'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `notificacoes`
--

INSERT INTO `notificacoes` (`id`, `usuario_id`, `conta_id`, `data`, `tipo`, `linkfatura`, `mensagem`, `info_outros`, `lido`, `admin`) VALUES
(1, 2, 0, '2022-09-30 09:22:09', 'conta', 'n/d', 'Conta criada <small><b>Cleane</b></small> Validade <small><i><b>30 Dias</b></i></small>  !', 'Conta Criada', 'nao', 'nao');

-- --------------------------------------------------------

--
-- Estrutura da tabela `ovpn`
--

CREATE TABLE `ovpn` (
  `id` int(11) NOT NULL,
  `servidor_id` int(11) NOT NULL,
  `nome` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `arquivo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `data` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `ovpn`
--

INSERT INTO `ovpn` (`id`, `servidor_id`, `nome`, `arquivo`, `data`) VALUES
(1, 1, 'GrowthNetv5', 'GrowthNetv5.apk', '2022-09-06 20:05:31'),
(2, 2, 'growth', 'growth.apk', '2022-09-07 02:51:30');

-- --------------------------------------------------------

--
-- Estrutura da tabela `payloads`
--

CREATE TABLE `payloads` (
  `id` int(11) NOT NULL,
  `id_owner` int(11) NOT NULL,
  `Name` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `FLAG` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Payload` mediumtext COLLATE utf8mb4_unicode_ci,
  `SNI` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `TlsIP` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ProxyIP` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ProxyPort` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Info` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `payloads`
--

INSERT INTO `payloads` (`id`, `id_owner`, `Name`, `FLAG`, `Payload`, `SNI`, `TlsIP`, `ProxyIP`, `ProxyPort`, `Info`) VALUES
(1, 1, '📱 VIVO SPEED ON 01 📡 💜', 'vivo', 'GET wss://bam.nr-data.net// HTTP/1.1[crlf]Host: [app_host][crlf]Upgrade: Websocket[crlf]Connection: Keep-Alive[crlf]Connection: Keep-Alive[crlf][crlf]', 'bam.nr-data.net', '162.247.241.14', '', '443', 'Tlsws'),
(2, 1, '📱 VIVO SPEED ON 02 📡 💜', 'vivo', 'GET wss://bam.nr-data.net// HTTP/1.1[crlf]Host: [app_host][crlf]Upgrade: Websocket[crlf]Connection: Keep-Alive[crlf]Connection: Keep-Alive[crlf][crlf]', 'bam.nr-data.net', '104.16.123.175', '', '443', 'Tlsws'),
(3, 1, '📱 VIVO SPEED ON 03 📡 💜', 'vivo', 'GET wss://bam.nr-data.net// HTTP/1.1[crlf]Host: [app_host][crlf]Upgrade: Websocket[crlf]Connection: Keep-Alive[crlf]Connection: Keep-Alive[crlf][crlf]', 'bam.nr-data.net', '104.16.56.6', '', '443', 'Tlsws'),
(4, 1, '📱 VIVO SPEED ON 04 📡 💜', 'vivo', 'GET wss://bam.nr-data.net// HTTP/1.1[crlf]Host: [app_host][crlf]Upgrade: Websocket[crlf]Connection: Keep-Alive[crlf]Connection: Keep-Alive[crlf][crlf]', 'bam.nr-data.net', '104.16.57.6', '', '443', 'Tlsws'),
(5, 1, '📱 VIVO SPEED ON 05 📡 💜', 'vivo', 'GET wss://bam.nr-data.net// HTTP/1.1[crlf]Host: [app_host][crlf]Upgrade: Websocket[crlf]Connection: Keep-Alive[crlf]Connection: Keep-Alive[crlf][crlf]', 'bam.nr-data.net', 'bam.nr-data.net', '', '443', 'Tlsws'),
(6, 1, '📱 VIVO SPEED ON 06 📡 💜', 'vivo', 'GET / HTTP/1.3[crlf]Host: [host][crlf]Upgrade: websocket[crlf][crlf]', '', '', '104.16.122.175', '80', 'Proxy'),
(7, 1, '📱 VIVO EASY 01 📡 💜', 'vivo', 'GET wss://vivo360.vivo.com.br/ HTTP/1.1[crlf]Host: [app_host][crlf]Upgrade: Websocket[crlf]Connection: Keep-Alive[crlf][crlf]', 'vivo360.vivo.com.br', '104.18.6.80', '104.18.6.80', '443', 'Tlsws'),
(8, 1, '📱 VIVO EASY 02 📡 💜', 'vivo', 'GET wss://vivoid.vivo.com.br/ HTTP/1.1[crlf]Host: [app_host][crlf]Upgrade: websocket[crlf][crlf]', 'vivoid.vivo.com.br', '104.18.7.80', '104.18.7.80', '443', 'Tlsws'),
(9, 1, '📱 TIM 5G 01 📡 💙', 'tim', 'GET wss://bam.nr-data.net// HTTP/1.1[crlf]Host: [app_host][crlf]Upgrade: Websocket[crlf]Connection: Keep-Alive[crlf]Connection: Keep-Alive[crlf][crlf]', 'bam.nr-data.net', '162.247.241.14', '', '443', 'Tlsws'),
(10, 1, '📱 TIM 5G 02 📡 💙', 'tim', 'GET wss://bam.nr-data.net// HTTP/1.1[crlf]Host: [app_host][crlf]Upgrade: Websocket[crlf]Connection: Keep-Alive[crlf]Connection: Keep-Alive[crlf][crlf]', 'bam.nr-data.net', 'bam.nr-data.net', '', '443', 'Tlsws'),
(11, 1, '📱 CLARO 5G 01 📡 ❤️', 'claro', 'GET wss://player-api.new.livestream.com/ HTTP/1.1[crlf]Host: [app_host][crlf]Upgrade: websocket[crlf][crlf]', 'player-api.new.livestream.com', 'player-api.new.livestream.com', 'player-api.new.livestream.com', '443', 'Tlsws'),
(12, 1, '📱 CLARO 5G 02 📡 ❤️', 'claro', 'GET wss://player-api.new.livestream.com/ HTTP/1.1[crlf]Host: [app_host][crlf]Upgrade: websocket[crlf][crlf]', 'player-api.new.livestream.com', '162.159.136.60', '162.159.136.60', '443', 'Tlsws'),
(13, 1, '📱 OI 5G 01 📡 💛', 'oi', 'GET ws://www.hbogo.com.br HTTP/1.1\nHost: [app_host]\nUpgrade: ws\n\n', 'www.hbogo.com.br', 'www.hbogo.com.br', '', '', 'Tlsws'),
(14, 1, '📱 OI 5G 02 📡 💛', 'oi', 'GET ws://www.hbogo.com.br HTTP/1.1\nHost: [app_host]\nUpgrade: ws\n\n', 'www.hbogo.com.br', '104.16.53.91', '', '', 'Tlsws'),
(15, 1, '📱 OI 5G 03 📡 💛', 'oi', 'GET / HTTP/1.3[crlf]Host: [host][crlf]Upgrade: websocket[crlf][crlf]', 'oii.gdmhost.ga', 'oii.gdmhost.ga', 'oii.gdmhost.ga', '80', 'proxy'),
(16, 1, '📱 OI 5G 04 📡 💛', 'oi', 'GET / HTTP/1.3[crlf]Host: [app_host][crlf]Upgrade: websocket[crlf][crlf]', 'oii.gdmhost.ga', 'oii.gdmhost.ga', 'oii.gdmhost.ga', '443', 'Tlsws'),
(17, 1, '📱 OI 5G 05 📡 💛', 'oi', 'GET / HTTP/1.1[crlf]Host: [app_host][crlf]Upgrade: websocket[crlf][crlf]', '[app_host]', '104.16.51.91', '', '443', 'Tlsws'),
(18, 1, '📱 OI 5G 06 📡 💛', 'oi', 'GET ws://www.hbogo.com.br HTTP/1.1\nHost: [app_host]\nUpgrade: ws\n\n', 'www.hbogo.com.br', 'www.hbogo.com.br', '', '', 'Tlsws'),
(19, 1, '📱 OI 5G 07 📡 💛', 'oi', 'GET ws://www.hbogo.com.br HTTP/1.1\nHost: [app_host]\nUpgrade: ws\n\n', 'www.hbogo.com.br', '104.16.53.91', '', '', 'Tlsws'),
(20, 1, '📱 OI 5G 08 📡 💛', 'oi', 'GET / HTTP/1.3[crlf]Host: [host][crlf]Upgrade: websocket[crlf][crlf]', 'oii.gdmhost.ga', '104.16.56.6', '104.16.56.6', '', 'Tlsws');

-- --------------------------------------------------------

--
-- Estrutura da tabela `portas`
--

CREATE TABLE `portas` (
  `id` int(11) NOT NULL,
  `id_owner` int(11) NOT NULL,
  `Porta` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `portas`
--

INSERT INTO `portas` (`id`, `id_owner`, `Porta`) VALUES
(1, 1, '7300');

-- --------------------------------------------------------

--
-- Estrutura da tabela `servidor`
--

CREATE TABLE `servidor` (
  `id_servidor` int(11) NOT NULL,
  `ativo` int(10) NOT NULL DEFAULT '0',
  `nome` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `regiao` enum('asia','america','europa','australia') COLLATE utf8mb4_unicode_ci NOT NULL,
  `limite_usuario` int(10) NOT NULL DEFAULT '0',
  `ip_servidor` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `site_servidor` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `login_server` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `senha` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `porta` int(10) NOT NULL DEFAULT '22',
  `dias` int(10) NOT NULL DEFAULT '0',
  `demo` int(11) NOT NULL DEFAULT '0',
  `ehi` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `localizacao` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `localizacao_img` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `validade` int(11) NOT NULL,
  `limite` int(11) NOT NULL,
  `tipo` enum('premium','free') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'premium',
  `manutencao` enum('nao','sim') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'nao'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `servidor`
--

INSERT INTO `servidor` (`id_servidor`, `ativo`, `nome`, `regiao`, `limite_usuario`, `ip_servidor`, `site_servidor`, `login_server`, `senha`, `porta`, `dias`, `demo`, `ehi`, `localizacao`, `localizacao_img`, `validade`, `limite`, `tipo`, `manutencao`) VALUES
(2, 0, 'GROWTH NET BR', 'america', 0, '209.14.68.160', 'http://growthnet.online', 'root', 'Ru23038!@', 22, 0, 0, NULL, 'São Paulo', '', 9999, 5000, 'premium', 'nao');

-- --------------------------------------------------------

--
-- Estrutura da tabela `servidores`
--

CREATE TABLE `servidores` (
  `id` int(11) NOT NULL,
  `id_owner` int(11) NOT NULL,
  `Name` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `TYPE` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'premium',
  `FLAG` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'br.png',
  `ServerIP` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `CheckUser` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ServerPort` int(11) DEFAULT '22',
  `SSLPort` int(11) DEFAULT NULL,
  `USER` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `PASS` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `servidores`
--

INSERT INTO `servidores` (`id`, `id_owner`, `Name`, `TYPE`, `FLAG`, `ServerIP`, `CheckUser`, `ServerPort`, `SSLPort`, `USER`, `PASS`) VALUES
(1, 1, '⚡ SERVIDOR 01', 'premium', 'br.png', 'dominio.vps.ssh', 'http://dominio.vps.ssh:8080/checkUser', 22, 443, '', '');

-- --------------------------------------------------------

--
-- Estrutura da tabela `sessao`
--

CREATE TABLE `sessao` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `uid` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `expira` int(100) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `sms`
--

CREATE TABLE `sms` (
  `id_sms` int(11) NOT NULL,
  `id_remetente` int(11) NOT NULL,
  `id_destinatario` int(11) NOT NULL,
  `assunto` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mensagem` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hora_resquisicao` datetime NOT NULL,
  `hora_envio` datetime NOT NULL,
  `status` enum('Aguardando','Enviado','Erro') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Aguardando'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `smtp`
--

CREATE TABLE `smtp` (
  `id` int(11) NOT NULL,
  `usuario_id` int(11) NOT NULL,
  `servidor` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `porta` int(11) NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `senha` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ssl_secure` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `smtp`
--

INSERT INTO `smtp` (`id`, `usuario_id`, `servidor`, `porta`, `email`, `senha`, `ssl_secure`) VALUES
(1, 1, 'mail.growthnet.com.br', 587, 'contato@growthnet.com.br', 'Adm23038!@', 'TLS');

-- --------------------------------------------------------

--
-- Estrutura da tabela `smtp_usuarios`
--

CREATE TABLE `smtp_usuarios` (
  `id` int(11) NOT NULL,
  `ssl_secure` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `usuario_id` int(11) NOT NULL,
  `servidor` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `empresa` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `porta` int(11) NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `senha` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `email` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `senha` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `user`
--

INSERT INTO `user` (`id`, `email`, `senha`) VALUES
(1, 'oi@oi.com.br', '2303');

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuario`
--

CREATE TABLE `usuario` (
  `id_usuario` int(60) NOT NULL,
  `id_mestre` int(10) DEFAULT '0',
  `ativo` tinyint(1) NOT NULL DEFAULT '1',
  `atualiza_dados` int(11) NOT NULL DEFAULT '0',
  `login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `senha` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nome` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `email` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `celular` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `data_cadastro` datetime DEFAULT NULL,
  `tipo` enum('vpn','revenda','','') COLLATE utf8mb4_unicode_ci NOT NULL,
  `subrevenda` enum('nao','sim') COLLATE utf8mb4_unicode_ci NOT NULL,
  `validade` date DEFAULT NULL,
  `suspenso` date DEFAULT NULL,
  `token_user` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permitir_demo` int(11) NOT NULL DEFAULT '0',
  `dias_demo_sub` int(10) NOT NULL DEFAULT '0',
  `apagar` int(11) NOT NULL DEFAULT '0',
  `idcliente_mp` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokensecret_mp` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dadosdeposito` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `usuario`
--

INSERT INTO `usuario` (`id_usuario`, `id_mestre`, `ativo`, `atualiza_dados`, `login`, `senha`, `nome`, `avatar`, `email`, `celular`, `data_cadastro`, `tipo`, `subrevenda`, `validade`, `suspenso`, `token_user`, `permitir_demo`, `dias_demo_sub`, `apagar`, `idcliente_mp`, `tokensecret_mp`, `dadosdeposito`) VALUES
(1, 0, 1, 1, 'Leanna', '81907797', 'Leanna', '5', 'leannabarbosa@gmail.com', '(91)98918-5528', '2022-09-06 16:38:11', 'revenda', 'nao', NULL, NULL, '04DC6D6D1', 0, 0, 0, '', '', ''),
(2, 0, 1, 0, 'growthnet', 'Isa23038!@', 'GROWTH NET', '1', NULL, '21967214254', '2022-09-06 19:29:14', 'revenda', 'nao', NULL, NULL, '026CC6D26', 0, 0, 0, '', '', ''),
(3, 0, 1, 0, 'Brenavieira', 'brena', 'Brena Vieir', '1', NULL, '91 89415507', '2022-09-12 20:40:05', 'revenda', 'nao', NULL, NULL, '03A5C6DCC', 0, 0, 0, '', '', ''),
(5, 0, 1, 0, 'Ronaldoce', '2303', 'ronaldo', '1', NULL, '(85)98887-9918', '2022-09-16 08:18:05', 'revenda', 'nao', NULL, NULL, '011315C4A', 0, 0, 0, '', '', ''),
(7, 0, 1, 0, 'Joaopedro', '81604734', 'João Pedro', '1', NULL, '(11) 99999-9999', '2022-09-17 19:15:37', 'revenda', 'nao', NULL, NULL, '04B63D26B', 0, 0, 0, '', '', ''),
(8, 0, 1, 0, 'Manoele', 'made8984', 'Manoelesal', '1', NULL, '9198602-1524', '2022-09-19 22:56:23', 'revenda', 'nao', NULL, NULL, '04C6653C6', 0, 0, 0, '', '', ''),
(9, 0, 1, 0, 'Jackeline', '1997', 'Jackeline', '1', NULL, '9198168-8138', '2022-09-19 23:34:33', 'revenda', 'nao', NULL, NULL, '0CAC321B1', 0, 0, 0, '', '', ''),
(10, 0, 1, 0, 'Jaquelinesilvane', 'silvane', 'Jaqueline Silvane', '1', NULL, '(91)982441454', '2022-09-20 15:55:51', 'revenda', 'nao', NULL, NULL, '02134A1A2', 0, 0, 0, '', '', '');

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nome` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `login` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `senha` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nivel` int(11) NOT NULL DEFAULT '1',
  `banido` int(11) NOT NULL DEFAULT '0',
  `limite_pay` int(11) NOT NULL DEFAULT '4',
  `limite_ser` int(11) NOT NULL DEFAULT '15',
  `pasta_att` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `usuarios`
--

INSERT INTO `usuarios` (`id`, `nome`, `login`, `senha`, `nivel`, `banido`, `limite_pay`, `limite_ser`, `pasta_att`) VALUES
(1, 'GESTOR-SSH', 'growthnetbr', 'a7803837211882c0660a681403988640', 3, 0, 4, 15, 'admin');

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuario_ssh`
--

CREATE TABLE `usuario_ssh` (
  `id_usuario_ssh` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `id_servidor` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `status_pg` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `login` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `senha` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `data_validade` date NOT NULL,
  `data_suspensao` datetime DEFAULT NULL,
  `apagar` int(2) NOT NULL DEFAULT '0',
  `acesso` int(10) NOT NULL DEFAULT '1',
  `online` int(11) NOT NULL DEFAULT '0',
  `online_start` datetime DEFAULT NULL,
  `online_hist` int(11) NOT NULL DEFAULT '0',
  `demo` enum('nao','sim') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'nao'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `usuario_ssh`
--

INSERT INTO `usuario_ssh` (`id_usuario_ssh`, `id_usuario`, `id_servidor`, `status`, `status_pg`, `login`, `senha`, `data_validade`, `data_suspensao`, `apagar`, `acesso`, `online`, `online_start`, `online_hist`, `demo`) VALUES
(8, 1, 2, 1, '', 'Rosangela', '1234', '2022-10-04', NULL, 0, 1, 0, NULL, 0, 'nao'),
(16, 1, 2, 1, '', 'Thiago1', '1223', '2022-10-06', NULL, 0, 1, 0, '2022-09-30 09:12:01', 1, 'nao'),
(18, 1, 2, 1, '', 'Samuel1', '1223', '2022-10-05', NULL, 0, 1, 0, '2022-09-13 13:57:01', 0, 'nao'),
(20, 2, 2, 1, '', 'pamela', 'cristina', '2022-10-05', NULL, 0, 1, 0, '2022-09-21 21:41:01', 0, 'nao'),
(22, 1, 2, 1, '', 'Ariana2', '123369', '2022-10-03', NULL, 0, 1, 0, '2022-09-30 09:33:01', 1, 'nao'),
(23, 1, 2, 1, '', 'Leo', '972554', '2022-10-07', NULL, 0, 1, 0, '2022-09-30 08:30:01', 1, 'nao'),
(27, 1, 2, 1, '', 'LehBarbosa1', '140814', '2023-09-28', NULL, 0, 3, 0, '2022-09-29 23:46:01', 1, 'nao'),
(28, 2, 2, 1, '', 'righetti', '230387', '2022-10-10', NULL, 0, 1, 0, '2022-09-21 09:24:02', 0, 'nao'),
(33, 3, 2, 1, '', 'Brena01', '0101', '2022-11-17', NULL, 0, 1, 0, '2022-09-30 08:47:01', 1, 'nao'),
(36, 2, 2, 1, '', 'Anne', '0908', '2023-09-14', NULL, 0, 1, 0, '2022-09-30 01:34:01', 1, 'nao'),
(37, 2, 2, 1, '', 'alcilene', '2303', '2023-09-15', NULL, 0, 1, 0, '2022-09-29 23:46:01', 0, 'nao'),
(38, 2, 2, 1, '', 'filho', 'filho', '2023-09-15', NULL, 0, 1, 0, '2022-09-14 19:07:01', 0, 'nao'),
(40, 1, 2, 1, '', 'Rose', '365830', '2022-10-15', NULL, 0, 1, 0, '2022-09-29 23:46:01', 1, 'nao'),
(46, 2, 2, 1, '', 'amor', '2303', '2023-09-17', NULL, 0, 1, 0, '2022-09-26 17:50:01', 0, 'nao'),
(49, 2, 2, 1, '', 'gustavosp', 'gustavo', '2022-10-17', NULL, 0, 1, 0, '2022-09-30 07:28:01', 1, 'nao'),
(55, 2, 2, 1, '', 'Mirtafor', 'mirta', '2023-09-19', NULL, 0, 1, 0, '2022-09-29 17:28:02', 0, 'nao'),
(59, 1, 2, 1, '', 'Felipe', '493286', '2022-10-18', NULL, 0, 1, 0, '2022-09-30 07:28:01', 1, 'nao'),
(69, 3, 2, 1, '', 'brenohenrrique', 'breno', '2022-10-18', NULL, 0, 1, 0, '2022-09-29 23:46:01', 1, 'nao'),
(73, 1, 2, 1, '', 'Andreo', '938325', '2022-10-19', NULL, 0, 1, 0, '2022-09-30 09:35:01', 0, 'nao'),
(74, 2, 2, 1, '', 'play', 'play2303', '2022-10-21', NULL, 0, 1, 0, '2022-09-26 10:40:01', 0, 'nao'),
(75, 3, 2, 1, '', 'Flavia02', '0202', '2022-10-19', NULL, 0, 1, 0, '2022-09-25 15:45:01', 0, 'nao'),
(77, 3, 2, 1, '', 'Raquel01', '0101', '2022-10-19', NULL, 0, 1, 0, '2022-09-29 23:46:01', 0, 'nao'),
(79, 5, 2, 1, '', 'ana', '0102', '2022-10-21', NULL, 0, 1, 0, '2022-09-27 21:30:01', 0, 'nao'),
(80, 1, 2, 1, '', 'Luan', '564753', '2022-10-19', NULL, 0, 4, 0, '2022-09-26 10:42:01', 0, 'nao'),
(82, 9, 2, 1, '', 'Jackeline', '2013', '2022-10-21', NULL, 0, 1, 0, '2022-09-29 23:57:01', 1, 'nao'),
(88, 2, 2, 1, '', 'Jaqueline', 'Silvane', '2022-10-29', NULL, 0, 1, 0, '2022-09-30 09:27:01', 1, 'nao'),
(92, 2, 2, 1, '', 'Noahdaniel', 'Dan1994', '2022-10-20', NULL, 0, 1, 0, '2022-09-30 07:02:02', 1, 'nao'),
(93, 2, 2, 1, '', 'Cida', 'Cida123', '2022-10-20', NULL, 0, 1, 0, NULL, 0, 'nao'),
(96, 9, 2, 1, '', 'Narjara', '1212', '2022-10-22', NULL, 0, 1, 0, '2022-09-29 23:46:01', 1, 'nao'),
(104, 1, 2, 1, '', 'Richard1', '587634', '2022-10-23', NULL, 0, 1, 0, '2022-09-29 19:49:02', 0, 'nao'),
(105, 1, 2, 1, '', 'Rick', '353604', '2023-09-21', NULL, 0, 2, 0, '2022-09-29 23:46:01', 1, 'nao'),
(107, 7, 2, 1, '', 'Cleiton', '051017', '2022-10-23', NULL, 0, 1, 0, '2022-09-29 23:46:01', 1, 'nao'),
(111, 9, 2, 1, '', 'Marisa', '1212', '2022-10-22', NULL, 0, 1, 0, '2022-09-30 08:50:02', 1, 'nao'),
(116, 7, 2, 1, '', 'Matheus', '745745', '2022-10-24', NULL, 0, 1, 0, NULL, 0, 'nao'),
(121, 9, 2, 1, '', 'Ketelen', '2022', '2022-10-25', NULL, 0, 1, 0, '2022-09-29 23:46:01', 0, 'nao'),
(125, 7, 2, 1, '', 'Bt745', '716029', '2022-10-19', NULL, 0, 1, 0, '2022-09-24 21:15:01', 0, 'nao'),
(127, 7, 2, 1, '', 'Francisco', '198101', '2022-10-26', NULL, 0, 1, 0, '2022-09-24 14:28:01', 0, 'nao'),
(129, 7, 2, 1, '', 'Mk085', '388827', '2022-10-26', NULL, 0, 1, 0, '2022-09-29 23:46:01', 0, 'nao'),
(130, 1, 2, 1, '', 'Fernando', '929569', '2022-10-24', NULL, 0, 1, 0, '2022-09-29 20:53:01', 0, 'nao'),
(136, 1, 2, 1, '', 'Widson1', '470144', '2022-10-24', NULL, 0, 1, 0, '2022-09-29 23:56:02', 1, 'nao'),
(144, 7, 2, 1, '', 'pedro1212', '858585', '2022-10-27', NULL, 0, 1, 0, '2022-09-30 09:05:02', 1, 'nao'),
(145, 3, 2, 1, '', 'Kaua', '0101', '2022-10-27', NULL, 0, 1, 0, '2022-09-28 23:12:02', 0, 'nao'),
(146, 1, 2, 1, '', 'Silvano1', '587991', '2022-10-27', NULL, 0, 1, 0, '2022-09-29 23:46:01', 1, 'nao'),
(147, 1, 2, 1, '', 'Jo11', '496099', '2022-10-27', NULL, 0, 1, 0, '2022-09-30 00:26:02', 1, 'nao'),
(148, 1, 2, 1, '', 'Barb2', '660417', '2022-10-27', NULL, 0, 1, 0, '2022-09-29 23:46:01', 1, 'nao'),
(149, 3, 2, 1, '', 'Tota', '0101', '2022-10-27', NULL, 0, 1, 0, '2022-09-27 18:03:01', 0, 'nao'),
(151, 1, 2, 1, '', 'Flavio', '938403', '2022-10-29', NULL, 0, 1, 0, '2022-09-29 23:46:01', 1, 'nao'),
(152, 1, 2, 1, '', 'Jhenny', '394191', '2022-10-28', NULL, 0, 1, 0, '2022-09-29 17:09:02', 0, 'nao'),
(154, 10, 2, 1, '', 'Níveajamilly', '292317', '2022-10-29', NULL, 0, 1, 0, NULL, 0, 'nao'),
(156, 10, 2, 1, '', 'athos', '230323', '2022-10-29', NULL, 0, 1, 0, '2022-09-29 17:25:01', 0, 'nao'),
(157, 2, 2, 1, '', 'Carloslima', '212123', '2022-10-29', NULL, 0, 1, 0, '2022-09-30 07:04:01', 1, 'nao'),
(158, 7, 2, 1, '', 'Dacarne', '870968', '2022-10-29', NULL, 0, 1, 0, '2022-09-30 03:05:02', 1, 'nao'),
(159, 2, 2, 1, '', 'Cleane', 'teixeira', '2022-10-30', NULL, 0, 1, 0, '2022-09-30 09:41:01', 0, 'nao');

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuario_ssh_free`
--

CREATE TABLE `usuario_ssh_free` (
  `id` int(11) NOT NULL,
  `login` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `senha` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `servidor` int(11) NOT NULL,
  `validade` datetime NOT NULL,
  `ip` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `online` int(11) NOT NULL DEFAULT '0',
  `online_start` datetime DEFAULT NULL,
  `online_hist` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `acesso_servidor`
--
ALTER TABLE `acesso_servidor`
  ADD PRIMARY KEY (`id_acesso_servidor`);

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_administrador`);

--
-- Indexes for table `arquivo_download`
--
ALTER TABLE `arquivo_download`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chamados`
--
ALTER TABLE `chamados`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `configs`
--
ALTER TABLE `configs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `configuracao`
--
ALTER TABLE `configuracao`
  ADD PRIMARY KEY (`id_configuracao`);

--
-- Indexes for table `configuracoes`
--
ALTER TABLE `configuracoes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fatura`
--
ALTER TABLE `fatura`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fatura_clientes`
--
ALTER TABLE `fatura_clientes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fatura_comprovantes`
--
ALTER TABLE `fatura_comprovantes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fatura_comprovantes_clientes`
--
ALTER TABLE `fatura_comprovantes_clientes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `historico_login`
--
ALTER TABLE `historico_login`
  ADD PRIMARY KEY (`id_historico_login`);

--
-- Indexes for table `hist_usuario_ssh_online`
--
ALTER TABLE `hist_usuario_ssh_online`
  ADD PRIMARY KEY (`id_hist_usrSSH`);

--
-- Indexes for table `hist_usuario_ssh_online_free`
--
ALTER TABLE `hist_usuario_ssh_online_free`
  ADD PRIMARY KEY (`id_hist_usrSSH`);

--
-- Indexes for table `informativo`
--
ALTER TABLE `informativo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mensagens`
--
ALTER TABLE `mensagens`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `noticias`
--
ALTER TABLE `noticias`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notificacoes`
--
ALTER TABLE `notificacoes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ovpn`
--
ALTER TABLE `ovpn`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payloads`
--
ALTER TABLE `payloads`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `portas`
--
ALTER TABLE `portas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `servidor`
--
ALTER TABLE `servidor`
  ADD PRIMARY KEY (`id_servidor`);

--
-- Indexes for table `servidores`
--
ALTER TABLE `servidores`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessao`
--
ALTER TABLE `sessao`
  ADD UNIQUE KEY `id` (`id`,`uid`);

--
-- Indexes for table `sms`
--
ALTER TABLE `sms`
  ADD PRIMARY KEY (`id_sms`);

--
-- Indexes for table `smtp`
--
ALTER TABLE `smtp`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `smtp_usuarios`
--
ALTER TABLE `smtp_usuarios`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id_usuario`),
  ADD UNIQUE KEY `login` (`login`),
  ADD UNIQUE KEY `token_user` (`token_user`);

--
-- Indexes for table `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `usuario_ssh`
--
ALTER TABLE `usuario_ssh`
  ADD PRIMARY KEY (`id_usuario_ssh`),
  ADD UNIQUE KEY `login` (`login`);

--
-- Indexes for table `usuario_ssh_free`
--
ALTER TABLE `usuario_ssh_free`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `acesso_servidor`
--
ALTER TABLE `acesso_servidor`
  MODIFY `id_acesso_servidor` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id_administrador` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `arquivo_download`
--
ALTER TABLE `arquivo_download`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `chamados`
--
ALTER TABLE `chamados`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `configs`
--
ALTER TABLE `configs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `configuracao`
--
ALTER TABLE `configuracao`
  MODIFY `id_configuracao` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `configuracoes`
--
ALTER TABLE `configuracoes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `fatura`
--
ALTER TABLE `fatura`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `fatura_clientes`
--
ALTER TABLE `fatura_clientes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `fatura_comprovantes`
--
ALTER TABLE `fatura_comprovantes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `fatura_comprovantes_clientes`
--
ALTER TABLE `fatura_comprovantes_clientes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `historico_login`
--
ALTER TABLE `historico_login`
  MODIFY `id_historico_login` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hist_usuario_ssh_online`
--
ALTER TABLE `hist_usuario_ssh_online`
  MODIFY `id_hist_usrSSH` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=94;

--
-- AUTO_INCREMENT for table `hist_usuario_ssh_online_free`
--
ALTER TABLE `hist_usuario_ssh_online_free`
  MODIFY `id_hist_usrSSH` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `informativo`
--
ALTER TABLE `informativo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mensagens`
--
ALTER TABLE `mensagens`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `noticias`
--
ALTER TABLE `noticias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `notificacoes`
--
ALTER TABLE `notificacoes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ovpn`
--
ALTER TABLE `ovpn`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `payloads`
--
ALTER TABLE `payloads`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `portas`
--
ALTER TABLE `portas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `servidor`
--
ALTER TABLE `servidor`
  MODIFY `id_servidor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `servidores`
--
ALTER TABLE `servidores`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sms`
--
ALTER TABLE `sms`
  MODIFY `id_sms` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `smtp`
--
ALTER TABLE `smtp`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `smtp_usuarios`
--
ALTER TABLE `smtp_usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id_usuario` int(60) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `usuario_ssh`
--
ALTER TABLE `usuario_ssh`
  MODIFY `id_usuario_ssh` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=160;

--
-- AUTO_INCREMENT for table `usuario_ssh_free`
--
ALTER TABLE `usuario_ssh_free`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
