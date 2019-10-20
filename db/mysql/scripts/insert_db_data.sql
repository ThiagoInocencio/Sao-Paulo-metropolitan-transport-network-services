-- Copiando dados para a tabela spmtns.company: ~5 rows (aproximadamente)
DELETE FROM `company`;
/*!40000 ALTER TABLE `company` DISABLE KEYS */;
INSERT INTO `company` (`id_company`, `name`, `short_name`, `phone_number`) VALUES
	(1, 'Companhia do Metropolitano de São Paulo', 'Metrô', '0800 770 7722'),
	(2, 'Companhia Paulista de Trens Metropolitanos', 'CPTM', '0800 055 0121'),
	(3, 'Empresa Metropolitana de Transportes Urbanos de São Paulo', 'EMTU', '0800 724 0555'),
	(4, 'ViaQuatro', 'ViaQuatro', '0800 770 7100'),
	(5, 'ViaMobilidade', 'ViaMobilide', '0800 770 7106');
/*!40000 ALTER TABLE `company` ENABLE KEYS */;


-- Copiando dados para a tabela spmtns.line: ~13 rows (aproximadamente)
DELETE FROM `line`;
/*!40000 ALTER TABLE `line` DISABLE KEYS */;
INSERT INTO `line` (`line_id`, `name`, `number`, `color`, `id_company`) VALUES
	(1, 'Linha 1 - Azul', 1, '#0153a0', 1),
	(2, 'Linha 2 - Verde', 2, '#008061', 1),
	(3, 'Linha 3 - Vermelha', 3, '#ee3e34', 1),
	(4, 'Linha 4 - Amarela', 4, '#fed304', 4),
	(5, 'Linha 5 - Lilás', 5, '#784d9f', 5),
	(6, 'Linha 7 - Rubi', 7, '#9e1766', 2),
	(7, 'Linha 8 - Diamante', 8, '#9e9e93', 2),
	(8, 'Linha 9 - Esmeralda', 9, '#00a78e', 2),
	(9, 'Linha 10 - Turquesa', 10, '#007c8f', 2),
	(10, 'Linha 11 - Coral', 11, '#f04d22', 2),
	(11, 'Linha 12 - Safira', 12, '#083e89', 2),
	(12, 'Linha 13 - Jade', 13, '#00ab5b', 2),
	(13, 'Linha 15 - Prata', 15, '#858d90', 1);
/*!40000 ALTER TABLE `line` ENABLE KEYS */;