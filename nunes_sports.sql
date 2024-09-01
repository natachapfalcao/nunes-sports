-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 01/09/2024 às 02:16
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
-- Banco de dados: `nunes_sports`
--
CREATE DATABASE IF NOT EXISTS `nunes_sports` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
USE `nunes_sports`;

-- --------------------------------------------------------

--
-- Estrutura para tabela `produtos`
--

CREATE TABLE `produtos` (
  `codigo_produto` varchar(255) NOT NULL,
  `nome_produto` varchar(255) NOT NULL,
  `preco_produto` decimal(20,2) NOT NULL,
  `descricao_produto` varchar(300) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Despejando dados para a tabela `produtos`
--

INSERT INTO `produtos` (`codigo_produto`, `nome_produto`, `preco_produto`, `descricao_produto`) VALUES
('02', 'Havaianas Lual - Brasil', 59.99, 'Sandália modelo X, tamnhos de A a B, .....'),
('PR0001', 'Tênis Adidas Response Runner - Preto+Branco.', 229.99, 'Estilo e conforto nas corridas e no dia a dia. O tênis adidas Response Runner traz design esportivo leve e macio.'),
('PR0002', 'Camiseta Nike Dri-Fit - Azul', 129.99, 'Perfeita para atividades físicas e para o dia a dia, a Camiseta Nike Dri-Fit proporciona conforto e estilo.'),
('PR0003', 'Calça Puma Active - Cinza', 199.99, 'A Calça Puma Active é perfeita para treinos e atividades do dia a dia. Com um ajuste confortável e design moderno.'),
('PR0004', 'Bermuda Under Armour Sportstyle - Preto', 149.99, 'Ideal para atividades físicas e uso diário, a Bermuda Under Armour Sportstyle combina conforto e estilo.'),
('PR0005', 'Moletom Reebok Classic - Vermelho', 249.99, 'O Moletom Reebok Classic é a peça ideal para os dias frios. Com um design clássico e atemporal.'),
('PR0006', 'Shorts Asics Core - Preto', 119.99, 'Os Shorts Asics Core são a escolha certa para quem busca conforto durante os treinos. Com um design leve e funcional.'),
('PR0007', 'Tênis Mizuno Wave Prophecy - Azul+Preto', 599.99, 'O Tênis Mizuno Wave Prophecy oferece o máximo de conforto e suporte para corridas e caminhadas.'),
('PR0008', 'Top Esportivo Fila Racerback - Rosa', 89.99, 'O Top Esportivo Fila Racerback é ideal para treinos intensos. Com um design que oferece suporte e conforto.'),
('PR0009', 'Legging Adidas Alphaskin - Preto', 179.99, 'A Legging Adidas Alphaskin oferece compressão ideal para melhorar o desempenho nos treinos.'),
('PR0010', 'Boné New Era 9FORTY - Cinza', 99.99, 'O Boné New Era 9FORTY é a escolha perfeita para completar seu look casual. Com design clássico e moderno.'),
('PR0011', 'Tênis Asics - Laranja', 443.24, 'Este tênis é ideal para corridas, proporcionando leveza e conforto com um design moderno e aerodinâmico.'),
('PR0012', 'Shorts Puma - Rosa', 500.02, 'Camiseta feita com tecido respirável, ideal para treinos intensos e dias quentes.'),
('PR0013', 'Legging Fila - Preto', 235.12, 'Calça de compressão que melhora a circulação sanguínea e ajuda na recuperação muscular.'),
('PR0014', 'Legging Mizuno - Verde', 582.75, 'Bermuda com tecido de secagem rápida, perfeita para atividades ao ar livre.'),
('PR0015', 'Top Under Armour - Verde', 113.40, 'Moletom de algodão, confortável e estiloso, ideal para o uso casual em dias frios.'),
('PR0016', 'Tênis Under Armour - Rosa', 406.55, 'Shorts leves com forro interno, oferecem suporte e conforto durante a corrida.'),
('PR0017', 'Moletom Asics - Cinza', 513.92, 'Top esportivo com alta sustentação, ideal para atividades de alto impacto.'),
('PR0018', 'Tênis Under Armour - Laranja', 144.87, 'Legging com cintura alta, feita com tecido que se adapta ao corpo e oferece total liberdade de movimento.'),
('PR0019', 'Tênis Adidas - Laranja', 130.43, 'Boné com proteção UV, ideal para esportes ao ar livre, com ajuste perfeito.'),
('PR0020', 'Shorts Reebok - Laranja', 466.33, 'Tênis de caminhada com amortecimento reforçado, garantindo conforto em longas distâncias.'),
('PR0021', 'Tênis Adidas - Amarelo', 272.71, 'Camiseta com tecnologia antiodor, ideal para treinos prolongados.'),
('PR0022', 'Boné Puma - Amarelo', 361.87, 'Calça com zíperes nas laterais, proporcionando ajuste personalizado.'),
('PR0023', 'Shorts Nike - Laranja', 590.01, 'Bermuda térmica que mantém a temperatura corporal estável durante treinos no frio.'),
('PR0024', 'Shorts Under Armour - Verde', 203.75, 'Moletom com capuz ajustável, perfeito para aquecer antes e depois dos treinos.'),
('PR0025', 'Tênis Fila - Amarelo', 581.54, 'Shorts com bolsos laterais, práticos para levar pequenos objetos durante o exercício.'),
('PR0026', 'Camiseta Puma - Verde', 339.21, 'Top com tecido de compressão, oferecendo suporte e estabilidade.'),
('PR0027', 'Moletom Reebok - Rosa', 346.04, 'Legging com recortes estratégicos para ventilação e mobilidade.'),
('PR0028', 'Camiseta Nike - Amarelo', 375.58, 'Boné com aba curva, estilo clássico e funcionalidade para o dia a dia.'),
('PR0029', 'Top Nike - Preto', 499.64, 'Tênis para trilhas, com solado antiderrapante e proteção extra nos dedos.'),
('PR0030', 'Tênis Adidas - Cinza', 182.61, 'Camiseta sem mangas, ideal para treinos de musculação.'),
('PR0031', 'Tênis Nike - Verde', 99.88, 'Calça com bolsos de zíper, segurança para guardar chaves e pequenos objetos.'),
('PR0032', 'Tênis Under Armour - Azul', 153.01, 'Bermuda com tecido elástico, oferece total liberdade de movimento.'),
('PR0033', 'Tênis Puma - Amarelo', 145.36, 'Moletom com design ergonômico, ajusta-se perfeitamente ao corpo.'),
('PR0034', 'Legging Puma - Preto', 142.48, 'Shorts com cós elástico, conforto durante o uso prolongado.'),
('PR0035', 'Legging Puma - Preto', 327.91, 'Top esportivo respirável, ideal para manter a pele seca durante os treinos.'),
('PR0036', 'Tênis Puma - Cinza', 582.09, 'Legging com compressão média, ajuda na circulação e recuperação muscular.'),
('PR0037', 'Shorts Mizuno - Amarelo', 313.51, 'Boné ajustável, estilo versátil para qualquer ocasião.'),
('PR0038', 'Moletom Nike - Azul', 274.23, 'Tênis com amortecimento em gel, proporcionando conforto extra em cada passo.'),
('PR0039', 'Moletom Puma - Cinza', 330.43, 'Camiseta básica, indispensável no guarda-roupa de qualquer atleta.'),
('PR0040', 'Camiseta Reebok - Preto', 268.02, 'Calça com forro interno, ideal para corridas em dias frios.'),
('PR0041', 'Camiseta Puma - Azul', 110.08, 'Bermuda com design moderno, para treinos e uso casual.'),
('PR0042', 'Tênis Nike - Preto', 241.63, 'Moletom com acabamento fino, conforto e estilo em uma única peça.'),
('PR0043', 'Shorts Reebok - Amarelo', 237.57, 'Shorts com tecido leve, ideal para corridas de longa distância.'),
('PR0044', 'Tênis Nike - Preto', 375.74, 'Top com alças cruzadas nas costas, para melhor suporte e estilo.'),
('PR0045', 'Tênis Reebok - Preto', 338.84, 'Legging com estampa camuflada, estilo único para seus treinos.'),
('PR0046', 'Tênis Under Armour - Vermelho', 531.10, 'Boné com tecnologia de absorção de suor, ideal para dias quentes.'),
('PR0047', 'Shorts Fila - Laranja', 352.03, 'Tênis com palmilha anatômica, conforto em qualquer terreno.'),
('PR0048', 'Tênis Reebok - Preto', 520.96, 'Camiseta com proteção solar, ideal para esportes ao ar livre.'),
('PR0049', 'Shorts Fila - Preto', 277.11, 'Calça com tecido leve, conforto durante treinos e no dia a dia.'),
('PR0050', 'Tênis Reebok - Azul', 142.09, 'Bermuda com bolsos discretos, ideal para caminhadas.'),
('PR0051', 'Shorts Puma - Rosa', 369.32, 'Moletom com interior flanelado, perfeito para dias frios.'),
('PR0052', 'Moletom Under Armour - Vermelho', 431.58, 'Shorts com ajuste personalizado, ideal para diferentes tipos de treino.'),
('PR0053', 'Shorts Mizuno - Cinza', 424.30, 'Top com bojo removível, ajuste perfeito para qualquer atividade.'),
('PR0054', 'Calça Nike - Cinza', 414.70, 'Legging com costuras reforçadas, maior durabilidade e conforto.'),
('PR0055', 'Tênis Under Armour - Preto', 177.24, 'Boné com estampa moderna, estilo para seu look esportivo.'),
('PR0056', 'Shorts New Era - Preto', 186.93, 'Tênis com entressola em EVA, leveza e amortecimento.'),
('PR0057', 'Boné Mizuno - Verde', 239.01, 'Camiseta com design minimalista, perfeita para qualquer atividade.'),
('PR0058', 'Legging Puma - Laranja', 566.79, 'Calça com detalhes refletivos, segurança para treinos noturnos.'),
('PR0059', 'Calça Reebok - Verde', 265.27, 'Bermuda com ajuste na cintura, conforto para qualquer tipo de treino.'),
('PR0060', 'Camiseta Fila - Azul', 131.44, 'Moletom com zíper frontal, praticidade e estilo.'),
('PR0061', 'Shorts Reebok - Azul', 466.33, 'Tênis de caminhada com amortecimento reforçado, garantindo conforto em longas distâncias.'),
('PR0062', 'Tênis Adidas - Azul', 272.71, 'Camiseta com tecnologia antiodor, ideal para treinos prolongados.'),
('PR0063', 'Shorts Nike - Rosa', 590.01, 'Bermuda térmica que mantém a temperatura corporal estável durante treinos no frio.'),
('PR0064', 'Shorts Under Armour - Vermelho', 203.75, 'Moletom com capuz ajustável, perfeito para aquecer antes e depois dos treinos.'),
('PR0065', 'Tênis Fila - Azul', 581.54, 'Shorts com bolsos laterais, práticos para levar pequenos objetos durante o exercício.'),
('PR0066', 'Camiseta Puma - Vermelho', 339.21, 'Top com tecido de compressão, oferecendo suporte e estabilidade.'),
('PR0067', 'Moletom Reebok - Vermelho', 346.04, 'Legging com recortes estratégicos para ventilação e mobilidade.'),
('PR0068', 'Camiseta Nike - Vermelho', 375.58, 'Boné com aba curva, estilo clássico e funcionalidade para o dia a dia.'),
('PR0069', 'Top Nike - Cinza', 499.64, 'Tênis para trilhas, com solado antiderrapante e proteção extra nos dedos.'),
('PR0070', 'Tênis Adidas - Verde', 182.61, 'Camiseta sem mangas, ideal para treinos de musculação.'),
('PR0071', 'Tênis Nike - Azul', 99.88, 'Calça com bolsos de zíper, segurança para guardar chaves e pequenos objetos.'),
('PR0072', 'Tênis Under Armour - Amarelo', 153.01, 'Bermuda com tecido elástico, oferece total liberdade de movimento.'),
('PR0073', 'Tênis Puma - Preto', 145.36, 'Moletom com design ergonômico, ajusta-se perfeitamente ao corpo.'),
('PR0074', 'Legging Puma - Roxo', 142.48, 'Shorts com cós elástico, conforto durante o uso prolongado.'),
('PR0075', 'Legging Puma - Roxo', 327.91, 'Top esportivo respirável, ideal para manter a pele seca durante os treinos.'),
('PR0076', 'Tênis Puma - Roxo', 582.09, 'Legging com compressão média, ajuda na circulação e recuperação muscular.'),
('PR0077', 'Shorts Mizuno - Verde', 313.51, 'Boné ajustável, estilo versátil para qualquer ocasião.'),
('PR0078', 'Moletom Nike - Verde', 274.23, 'Tênis com amortecimento em gel, proporcionando conforto extra em cada passo.'),
('PR0079', 'Moletom Puma - Branco', 330.43, 'Camiseta básica, indispensável no guarda-roupa de qualquer atleta.'),
('PR0080', 'Camiseta Reebok - Roxo', 268.02, 'Calça com forro interno, ideal para corridas em dias frios.'),
('PR0081', 'Camiseta Puma - Laranja', 110.08, 'Bermuda com design moderno, para treinos e uso casual.'),
('PR0082', 'Tênis Nike - Verde', 241.63, 'Moletom com acabamento fino, conforto e estilo em uma única peça.'),
('PR0083', 'Shorts Reebok - Azul', 237.57, 'Shorts com tecido leve, ideal para corridas de longa distância.'),
('PR0084', 'Tênis Nike - Branco', 375.74, 'Top com alças cruzadas nas costas, para melhor suporte e estilo.'),
('PR0085', 'Tênis Reebok - Branco', 338.84, 'Legging com estampa camuflada, estilo único para seus treinos.'),
('PR0086', 'Tênis Under Armour - Rosa', 531.10, 'Boné com tecnologia de absorção de suor, ideal para dias quentes.'),
('PR0087', 'Shorts Fila - Cinza', 352.03, 'Tênis com palmilha anatômica, conforto em qualquer terreno.'),
('PR0088', 'Tênis Reebok - Verde', 520.96, 'Camiseta com proteção solar, ideal para esportes ao ar livre.'),
('PR0089', 'Shorts Fila - Verde', 277.11, 'Calça com tecido leve, conforto durante treinos e no dia a dia.'),
('PR0090', 'Tênis Reebok - Azul', 142.09, 'Bermuda com bolsos discretos, ideal para caminhadas.'),
('PR0091', 'Shorts Puma - Preto', 369.32, 'Moletom com interior flanelado, perfeito para dias frios.'),
('PR0092', 'Moletom Under Armour - Verde', 431.58, 'Shorts com ajuste personalizado, ideal para diferentes tipos de treino.'),
('PR0093', 'Shorts Mizuno - Branco', 424.30, 'Top com bojo removível, ajuste perfeito para qualquer atividade.'),
('PR0094', 'Calça Nike - Marrom', 414.70, 'Legging com costuras reforçadas, maior durabilidade e conforto.'),
('PR0095', 'Tênis Under Armour - Marrom', 177.24, 'Boné com estampa moderna, estilo para seu look esportivo.'),
('PR0096', 'Shorts New Era - Preto', 0.00, 'Tênis com entressola em EVA, leveza e amortecimento.'),
('PR0097', 'Boné Mizuno - Branco', 239.01, 'Camiseta com design minimalista, perfeita para qualquer atividade.'),
('PR0098', 'Legging Puma - Verde', 566.79, 'Calça com detalhes refletivos, segurança para treinos noturnos.'),
('PR0099', 'Calça Reebok - Vermelho', 265.27, 'Bermuda com ajuste na cintura, conforto para qualquer tipo de treino.'),
('PR0100', 'Camiseta Fila - Preto', 131.44, 'Moletom com zíper frontal, praticidade e estilo.');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `produtos`
--
ALTER TABLE `produtos`
  ADD PRIMARY KEY (`codigo_produto`);
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
  `id` int(10) UNSIGNED NOT NULL,
  `dbase` varchar(255) NOT NULL DEFAULT '',
  `user` varchar(255) NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `query` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Estrutura para tabela `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) NOT NULL,
  `col_name` varchar(64) NOT NULL,
  `col_type` varchar(64) NOT NULL,
  `col_length` text DEFAULT NULL,
  `col_collation` varchar(64) NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) DEFAULT '',
  `col_default` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Estrutura para tabela `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `column_name` varchar(64) NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `transformation` varchar(255) NOT NULL DEFAULT '',
  `transformation_options` varchar(255) NOT NULL DEFAULT '',
  `input_transformation` varchar(255) NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estrutura para tabela `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) NOT NULL,
  `settings_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Estrutura para tabela `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL,
  `export_type` varchar(10) NOT NULL,
  `template_name` varchar(64) NOT NULL,
  `template_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

--
-- Despejando dados para a tabela `pma__export_templates`
--

INSERT INTO `pma__export_templates` (`id`, `username`, `export_type`, `template_name`, `template_data`) VALUES
(1, 'root', 'database', 'nunes_sports', '{\"quick_or_custom\":\"quick\",\"what\":\"sql\",\"structure_or_data_forced\":\"0\",\"table_select[]\":\"produtos\",\"table_structure[]\":\"produtos\",\"table_data[]\":\"produtos\",\"aliases_new\":\"\",\"output_format\":\"sendit\",\"filename_template\":\"@DATABASE@\",\"remember_template\":\"on\",\"charset\":\"utf-8\",\"compression\":\"none\",\"maxsize\":\"\",\"codegen_structure_or_data\":\"data\",\"codegen_format\":\"0\",\"csv_separator\":\",\",\"csv_enclosed\":\"\\\"\",\"csv_escaped\":\"\\\"\",\"csv_terminated\":\"AUTO\",\"csv_null\":\"NULL\",\"csv_columns\":\"something\",\"csv_structure_or_data\":\"data\",\"excel_null\":\"NULL\",\"excel_columns\":\"something\",\"excel_edition\":\"win\",\"excel_structure_or_data\":\"data\",\"json_structure_or_data\":\"data\",\"json_unicode\":\"something\",\"latex_caption\":\"something\",\"latex_structure_or_data\":\"structure_and_data\",\"latex_structure_caption\":\"Estrutura da tabela @TABLE@\",\"latex_structure_continued_caption\":\"Estrutura da tabela @TABLE@ (continuação)\",\"latex_structure_label\":\"tab:@TABLE@-structure\",\"latex_relation\":\"something\",\"latex_comments\":\"something\",\"latex_mime\":\"something\",\"latex_columns\":\"something\",\"latex_data_caption\":\"Conteúdo da tabela @TABLE@\",\"latex_data_continued_caption\":\"Conteúdo da tabela @TABLE@ (continuação)\",\"latex_data_label\":\"tab:@TABLE@-data\",\"latex_null\":\"\\\\textit{NULL}\",\"mediawiki_structure_or_data\":\"structure_and_data\",\"mediawiki_caption\":\"something\",\"mediawiki_headers\":\"something\",\"htmlword_structure_or_data\":\"structure_and_data\",\"htmlword_null\":\"NULL\",\"ods_null\":\"NULL\",\"ods_structure_or_data\":\"data\",\"odt_structure_or_data\":\"structure_and_data\",\"odt_relation\":\"something\",\"odt_comments\":\"something\",\"odt_mime\":\"something\",\"odt_columns\":\"something\",\"odt_null\":\"NULL\",\"pdf_report_title\":\"\",\"pdf_structure_or_data\":\"structure_and_data\",\"phparray_structure_or_data\":\"data\",\"sql_include_comments\":\"something\",\"sql_header_comment\":\"\",\"sql_use_transaction\":\"something\",\"sql_compatibility\":\"NONE\",\"sql_structure_or_data\":\"structure_and_data\",\"sql_create_table\":\"something\",\"sql_auto_increment\":\"something\",\"sql_create_view\":\"something\",\"sql_procedure_function\":\"something\",\"sql_create_trigger\":\"something\",\"sql_backquotes\":\"something\",\"sql_type\":\"INSERT\",\"sql_insert_syntax\":\"both\",\"sql_max_query_size\":\"50000\",\"sql_hex_for_binary\":\"something\",\"sql_utc_time\":\"something\",\"texytext_structure_or_data\":\"structure_and_data\",\"texytext_null\":\"NULL\",\"xml_structure_or_data\":\"data\",\"xml_export_events\":\"something\",\"xml_export_functions\":\"something\",\"xml_export_procedures\":\"something\",\"xml_export_tables\":\"something\",\"xml_export_triggers\":\"something\",\"xml_export_views\":\"something\",\"xml_export_contents\":\"something\",\"yaml_structure_or_data\":\"data\",\"\":null,\"lock_tables\":null,\"as_separate_files\":null,\"csv_removeCRLF\":null,\"excel_removeCRLF\":null,\"json_pretty_print\":null,\"htmlword_columns\":null,\"ods_columns\":null,\"sql_dates\":null,\"sql_relation\":null,\"sql_mime\":null,\"sql_disable_fk\":null,\"sql_views_as_tables\":null,\"sql_metadata\":null,\"sql_create_database\":null,\"sql_drop_table\":null,\"sql_if_not_exists\":null,\"sql_simple_view_export\":null,\"sql_view_current_user\":null,\"sql_or_replace_view\":null,\"sql_truncate\":null,\"sql_delayed\":null,\"sql_ignore\":null,\"texytext_columns\":null}'),
(2, 'root', 'server', 'nunes_sports', '{\"quick_or_custom\":\"quick\",\"what\":\"sql\",\"db_select[]\":[\"nunes_sports\",\"phpmyadmin\"],\"aliases_new\":\"\",\"output_format\":\"sendit\",\"filename_template\":\"@SERVER@\",\"remember_template\":\"on\",\"charset\":\"utf-8\",\"compression\":\"none\",\"maxsize\":\"\",\"codegen_structure_or_data\":\"data\",\"codegen_format\":\"0\",\"csv_separator\":\",\",\"csv_enclosed\":\"\\\"\",\"csv_escaped\":\"\\\"\",\"csv_terminated\":\"AUTO\",\"csv_null\":\"NULL\",\"csv_columns\":\"something\",\"csv_structure_or_data\":\"data\",\"excel_null\":\"NULL\",\"excel_columns\":\"something\",\"excel_edition\":\"win\",\"excel_structure_or_data\":\"data\",\"json_structure_or_data\":\"data\",\"json_unicode\":\"something\",\"latex_caption\":\"something\",\"latex_structure_or_data\":\"structure_and_data\",\"latex_structure_caption\":\"Estrutura da tabela @TABLE@\",\"latex_structure_continued_caption\":\"Estrutura da tabela @TABLE@ (continuação)\",\"latex_structure_label\":\"tab:@TABLE@-structure\",\"latex_relation\":\"something\",\"latex_comments\":\"something\",\"latex_mime\":\"something\",\"latex_columns\":\"something\",\"latex_data_caption\":\"Conteúdo da tabela @TABLE@\",\"latex_data_continued_caption\":\"Conteúdo da tabela @TABLE@ (continuação)\",\"latex_data_label\":\"tab:@TABLE@-data\",\"latex_null\":\"\\\\textit{NULL}\",\"mediawiki_structure_or_data\":\"data\",\"mediawiki_caption\":\"something\",\"mediawiki_headers\":\"something\",\"htmlword_structure_or_data\":\"structure_and_data\",\"htmlword_null\":\"NULL\",\"ods_null\":\"NULL\",\"ods_structure_or_data\":\"data\",\"odt_structure_or_data\":\"structure_and_data\",\"odt_relation\":\"something\",\"odt_comments\":\"something\",\"odt_mime\":\"something\",\"odt_columns\":\"something\",\"odt_null\":\"NULL\",\"pdf_report_title\":\"\",\"pdf_structure_or_data\":\"data\",\"phparray_structure_or_data\":\"data\",\"sql_include_comments\":\"something\",\"sql_header_comment\":\"\",\"sql_use_transaction\":\"something\",\"sql_compatibility\":\"NONE\",\"sql_structure_or_data\":\"structure_and_data\",\"sql_create_table\":\"something\",\"sql_auto_increment\":\"something\",\"sql_create_view\":\"something\",\"sql_create_trigger\":\"something\",\"sql_backquotes\":\"something\",\"sql_type\":\"INSERT\",\"sql_insert_syntax\":\"both\",\"sql_max_query_size\":\"50000\",\"sql_hex_for_binary\":\"something\",\"sql_utc_time\":\"something\",\"texytext_structure_or_data\":\"structure_and_data\",\"texytext_null\":\"NULL\",\"yaml_structure_or_data\":\"data\",\"\":null,\"as_separate_files\":null,\"csv_removeCRLF\":null,\"excel_removeCRLF\":null,\"json_pretty_print\":null,\"htmlword_columns\":null,\"ods_columns\":null,\"sql_dates\":null,\"sql_relation\":null,\"sql_mime\":null,\"sql_disable_fk\":null,\"sql_views_as_tables\":null,\"sql_metadata\":null,\"sql_drop_database\":null,\"sql_drop_table\":null,\"sql_if_not_exists\":null,\"sql_simple_view_export\":null,\"sql_view_current_user\":null,\"sql_or_replace_view\":null,\"sql_procedure_function\":null,\"sql_truncate\":null,\"sql_delayed\":null,\"sql_ignore\":null,\"texytext_columns\":null}');

-- --------------------------------------------------------

--
-- Estrutura para tabela `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) NOT NULL,
  `tables` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Estrutura para tabela `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL DEFAULT '',
  `db` varchar(64) NOT NULL DEFAULT '',
  `table` varchar(64) NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estrutura para tabela `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) NOT NULL,
  `item_name` varchar(64) NOT NULL,
  `item_type` varchar(64) NOT NULL,
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Estrutura para tabela `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estrutura para tabela `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) NOT NULL,
  `tables` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Despejando dados para a tabela `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"nunes_sports\",\"table\":\"produtos\"}]');

-- --------------------------------------------------------

--
-- Estrutura para tabela `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) NOT NULL DEFAULT '',
  `master_table` varchar(64) NOT NULL DEFAULT '',
  `master_field` varchar(64) NOT NULL DEFAULT '',
  `foreign_db` varchar(64) NOT NULL DEFAULT '',
  `foreign_table` varchar(64) NOT NULL DEFAULT '',
  `foreign_field` varchar(64) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Estrutura para tabela `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL DEFAULT '',
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `search_name` varchar(64) NOT NULL DEFAULT '',
  `search_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Estrutura para tabela `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Estrutura para tabela `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `display_field` varchar(64) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estrutura para tabela `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) NOT NULL,
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL,
  `prefs` text NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

--
-- Despejando dados para a tabela `pma__table_uiprefs`
--

INSERT INTO `pma__table_uiprefs` (`username`, `db_name`, `table_name`, `prefs`, `last_update`) VALUES
('root', 'nunes_sports', 'produtos', '{\"sorted_col\":\"`produtos`.`codigo_produto` ASC\"}', '2024-08-30 12:34:46');

-- --------------------------------------------------------

--
-- Estrutura para tabela `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text NOT NULL,
  `schema_sql` text DEFAULT NULL,
  `data_sql` longtext DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estrutura para tabela `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Despejando dados para a tabela `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2024-09-01 00:16:01', '{\"Console\\/Mode\":\"collapse\",\"lang\":\"pt_BR\"}');

-- --------------------------------------------------------

--
-- Estrutura para tabela `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) NOT NULL,
  `tab` varchar(64) NOT NULL,
  `allowed` enum('Y','N') NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Estrutura para tabela `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) NOT NULL,
  `usergroup` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Índices para tabelas despejadas
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
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

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
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
