-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 16-Fev-2023 às 03:45
-- Versão do servidor: 10.4.25-MariaDB
-- versão do PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `dlinfo`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `sts_abouts_companies`
--

CREATE TABLE `sts_abouts_companies` (
  `id` int(11) NOT NULL,
  `title` varchar(220) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(220) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sts_situation_id` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `sts_abouts_companies`
--

INSERT INTO `sts_abouts_companies` (`id`, `title`, `description`, `image`, `sts_situation_id`, `created`, `modified`) VALUES
(1, 'Sobre empresa título 1', 'Aliquam luctus ipsum ex. Interdum et malesuada fames ac ante ipsum primis in faucibus. Duis tellus erat, ultricies quis massa eu, tempus condimentum enim. Nulla rhoncus convallis diam a rhoncus. Morbi rhoncus dignissim purus et fermentum.', 'premium_v1.jpg', 1, '2022-02-23 12:12:04', NULL),
(2, 'Sobre empresa título 2', 'Vestibulum ac finibus ante. Nunc posuere, ante eu luctus porttitor, nunc massa ultricies magna, sit amet facilisis lacus justo id nisl. Quisque sagittis nunc purus, feugiat posuere mi pharetra vel. ', 'premium_v2.jpg', 1, '2022-02-23 12:12:04', NULL),
(3, 'Sobre empresa título 3', 'Mauris feugiat pretium diam, et viverra diam vehicula vitae. Vivamus facilisis leo a congue venenatis. Etiam ut molestie justo. Ut pharetra sapien est, sit amet vestibulum mi iaculis a. Sed ornare tellus id neque imperdiet, semper rutrum lectus consequat.', 'premium_v3.jpg', 2, '2022-02-23 12:12:04', NULL),
(4, 'Sobre empresa título 4', 'Vivamus semper sed magna eget sollicitudin. Pellentesque sit amet odio in mauris aliquam semper. Sed at gravida lacus. Ut feugiat vehicula dolor, sed convallis arcu aliquam eu.', 'premium_v4.jpg', 1, '2022-02-23 12:12:04', NULL),
(5, 'Sobre empresa título 5', 'Duis orci nunc, vehicula sed ante id, mattis fermentum dui. In pulvinar mi nec odio sagittis venenatis. Sed eget sapien sit amet odio vestibulum sodales. Pellentesque at arcu porta, maximus mi in, pretium lacus.', 'premium_v5.jpg', 3, '2022-02-23 12:12:04', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `sts_contacts_msgs`
--

CREATE TABLE `sts_contacts_msgs` (
  `id` int(11) NOT NULL,
  `name` varchar(220) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(220) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject` varchar(220) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `sts_contacts_msgs`
--

INSERT INTO `sts_contacts_msgs` (`id`, `name`, `email`, `subject`, `content`, `created`, `modified`) VALUES
(1, 'Ricardo', 'contato@ricardo.com.br', 'Assunto 1', 'Conteúdo 1', '2022-02-04 19:34:12', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `sts_contents_contacts`
--

CREATE TABLE `sts_contents_contacts` (
  `id` int(11) NOT NULL,
  `title_contact` varchar(220) COLLATE utf8mb4_unicode_ci NOT NULL,
  `desc_contact` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon_company` varchar(44) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_company` varchar(220) COLLATE utf8mb4_unicode_ci NOT NULL,
  `desc_company` varchar(220) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon_address` varchar(44) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_address` varchar(220) COLLATE utf8mb4_unicode_ci NOT NULL,
  `desc_address` varchar(220) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon_email` varchar(44) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_email` varchar(220) COLLATE utf8mb4_unicode_ci NOT NULL,
  `desc_email` varchar(220) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_form` varchar(220) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `sts_contents_contacts`
--

INSERT INTO `sts_contents_contacts` (`id`, `title_contact`, `desc_contact`, `icon_company`, `title_company`, `desc_company`, `icon_address`, `title_address`, `desc_address`, `icon_email`, `title_email`, `desc_email`, `title_form`, `created`, `modified`) VALUES
(1, 'Contato', 'Mauris volutpat arcu eu mi volutpat fermentum. Aenean vel dignissim orci. Vestibulum mollis elit vel tellus viverra dictum.', 'fa-solid fa-user', 'Empresa', 'DLInfo', 'fa-solid fa-location-dot', 'Endereço', 'Avenida Winston Churchill', 'fa-solid fa-envelope', 'E-mail', 'contato@dlinfo.com.br', 'Mensagem de Contato', '2022-02-23 14:24:48', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `sts_footers`
--

CREATE TABLE `sts_footers` (
  `id` int(11) NOT NULL,
  `footer_desc` varchar(220) COLLATE utf8mb4_unicode_ci NOT NULL,
  `footer_text_link` varchar(220) COLLATE utf8mb4_unicode_ci NOT NULL,
  `footer_link` varchar(220) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `sts_footers`
--

INSERT INTO `sts_footers` (`id`, `footer_desc`, `footer_text_link`, `footer_link`, `created`, `modified`) VALUES
(1, 'Created By', 'Darlinton Luis Siqueira', 'https://darlinton.com.br', '2022-02-23 12:22:52', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `sts_homes_premiums`
--

CREATE TABLE `sts_homes_premiums` (
  `id` int(11) NOT NULL,
  `prem_title` varchar(220) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prem_subtitle` varchar(220) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prem_desc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `prem_btn_text` varchar(220) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prem_btn_link` varchar(220) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prem_image` varchar(220) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `sts_homes_premiums`
--

INSERT INTO `sts_homes_premiums` (`id`, `prem_title`, `prem_subtitle`, `prem_desc`, `prem_btn_text`, `prem_btn_link`, `prem_image`, `created`, `modified`) VALUES
(1, 'Serviço Premium', 'Desenvolvido para você atingir seus melhores índices de produtividade, criatividade e bem-estar.', 'Ut tempus dui in fringilla consequat. Donec accumsan feugiat venenatis. Vestibulum blandit lectus nec lacus tincidunt tempus. Praesent porta erat non ligula egestas, eget imperdiet justo egestas. Pellentesque cursus risus nec leo tincidunt fringilla. Suspendisse faucibus aliquam vestibulum. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Mauris volutpat arcu eu mi volutpat fermentum. Aenean vel dignissim orci. Vestibulum mollis elit vel tellus viverra dictum. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vivamus a mattis sem. Cras aliquam fermentum viverra.', 'Contato', 'http://localhost/dlinfo/contato', 'premium_v5.jpg', '2022-02-23 12:11:17', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `sts_homes_services`
--

CREATE TABLE `sts_homes_services` (
  `id` int(11) NOT NULL,
  `serv_title` varchar(220) COLLATE utf8mb4_unicode_ci NOT NULL,
  `serv_icon_one` varchar(44) COLLATE utf8mb4_unicode_ci NOT NULL,
  `serv_title_one` varchar(44) COLLATE utf8mb4_unicode_ci NOT NULL,
  `serv_desc_one` varchar(220) COLLATE utf8mb4_unicode_ci NOT NULL,
  `serv_icon_two` varchar(44) COLLATE utf8mb4_unicode_ci NOT NULL,
  `serv_title_two` varchar(44) COLLATE utf8mb4_unicode_ci NOT NULL,
  `serv_desc_two` varchar(220) COLLATE utf8mb4_unicode_ci NOT NULL,
  `serv_icon_three` varchar(44) COLLATE utf8mb4_unicode_ci NOT NULL,
  `serv_title_three` varchar(44) COLLATE utf8mb4_unicode_ci NOT NULL,
  `serv_desc_three` varchar(220) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `sts_homes_services`
--

INSERT INTO `sts_homes_services` (`id`, `serv_title`, `serv_icon_one`, `serv_title_one`, `serv_desc_one`, `serv_icon_two`, `serv_title_two`, `serv_desc_two`, `serv_icon_three`, `serv_title_three`, `serv_desc_three`, `created`, `modified`) VALUES
(1, 'Serviços', 'fa-solid fa-wifi', 'Wifi veloz', 'Sed et dui in ipsum sollicitudin efficitur quis sed elit volutpat.', 'fa-solid fa-rocket', 'Espaço inspirador', 'Sed et dui in ipsum sollicitudin efficitur quis sed elit volutpat.', 'fa-solid fa-handshake', 'Reuniões', 'Sed et dui in ipsum sollicitudin efficitur quis sed elit volutpat.', '2022-02-23 11:29:03', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `sts_homes_tops`
--

CREATE TABLE `sts_homes_tops` (
  `id` int(11) NOT NULL,
  `title_one_top` varchar(220) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_two_top` varchar(220) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_three_top` varchar(220) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_btn_top` varchar(220) COLLATE utf8mb4_unicode_ci NOT NULL,
  `txt_btn_top` varchar(44) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_top` varchar(220) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created` datetime NOT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `sts_homes_tops`
--

INSERT INTO `sts_homes_tops` (`id`, `title_one_top`, `title_two_top`, `title_three_top`, `link_btn_top`, `txt_btn_top`, `image_top`, `created`, `modified`) VALUES
(1, 'Temos a solução', 'que a sua empresa precisa', 'Podemos ajudar a sua empresa!', 'http://localhost/dlinfo/contato', 'Entre em Contato', 'topo.jpg', '2022-01-23 15:47:36', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `sts_situations`
--

CREATE TABLE `sts_situations` (
  `id` int(11) NOT NULL,
  `name` varchar(44) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `sts_situations`
--

INSERT INTO `sts_situations` (`id`, `name`, `created`, `modified`) VALUES
(1, 'Ativo', '2022-02-23 12:10:06', NULL),
(2, 'Inativo', '2022-02-23 12:10:06', NULL),
(3, 'Analise', '2022-02-23 12:10:25', NULL);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `sts_abouts_companies`
--
ALTER TABLE `sts_abouts_companies`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sts_situation_id` (`sts_situation_id`);

--
-- Índices para tabela `sts_contacts_msgs`
--
ALTER TABLE `sts_contacts_msgs`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `sts_contents_contacts`
--
ALTER TABLE `sts_contents_contacts`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `sts_footers`
--
ALTER TABLE `sts_footers`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `sts_homes_premiums`
--
ALTER TABLE `sts_homes_premiums`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `sts_homes_services`
--
ALTER TABLE `sts_homes_services`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `sts_homes_tops`
--
ALTER TABLE `sts_homes_tops`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `sts_situations`
--
ALTER TABLE `sts_situations`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `sts_abouts_companies`
--
ALTER TABLE `sts_abouts_companies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `sts_contacts_msgs`
--
ALTER TABLE `sts_contacts_msgs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT de tabela `sts_contents_contacts`
--
ALTER TABLE `sts_contents_contacts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `sts_footers`
--
ALTER TABLE `sts_footers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `sts_homes_premiums`
--
ALTER TABLE `sts_homes_premiums`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `sts_homes_services`
--
ALTER TABLE `sts_homes_services`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `sts_homes_tops`
--
ALTER TABLE `sts_homes_tops`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `sts_situations`
--
ALTER TABLE `sts_situations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `sts_abouts_companies`
--
ALTER TABLE `sts_abouts_companies`
  ADD CONSTRAINT `sts_abouts_companies_ibfk_1` FOREIGN KEY (`sts_situation_id`) REFERENCES `sts_situations` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
