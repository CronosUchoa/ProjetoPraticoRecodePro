DROP DATABASE IF EXISTS fseletro;
CREATE DATABASE IF NOT EXISTS fseletro;
USE `fseletro`;

--tabela contatos
DROP TABLE IF EXISTS `mensagem`;
CREATE TABLE `mensagem` (
  `idMensagem` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(45) NOT NULL,
  `mensagem` varchar(245) NOT NULL,
  `data` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`idMensagem`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--tabela produtos
DROP TABLE IF EXISTS `produtos`;
CREATE TABLE `produtos` (
  `idproduto` int NOT NULL AUTO_INCREMENT,
  `categoria` varchar(45) NOT NULL,
  `descricao` varchar(150) NOT NULL,
  `preco` decimal(8,2) DEFAULT NULL,
  `precofinal` decimal(8,2) DEFAULT NULL,
  `imagem` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`idproduto`),
  KEY `fk_produtos_1_idx` (`categoria`,`descricao`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- produtos cadastrados
/*
-- Query: SELECT `produtos`.`idproduto`,
    `produtos`.`categoria`,
    `produtos`.`descricao`,
    `produtos`.`preco`,
    `produtos`.`precofinal`,
    `produtos`.`imagem`
FROM `fseletro`.`produtos`
LIMIT 0, 1000

-- Date: 2020-12-04 19:16
*/
INSERT INTO `` (`idproduto`,`categoria`,`descricao`,`preco`,`precofinal`,`imagem`) VALUES (1,'geladeira','Geladeira Frost Inverse 540 litros',10389.00,5019.00,'./imagens/geladeira.png');
INSERT INTO `` (`idproduto`,`categoria`,`descricao`,`preco`,`precofinal`,`imagem`) VALUES (2,'geladeira','Geladeira Frost 900 litros',10389.00,8019.00,'./imagens/geladeira.png');
INSERT INTO `` (`idproduto`,`categoria`,`descricao`,`preco`,`precofinal`,`imagem`) VALUES (3,'geladeira','Geladeira Frost turbo 1200 litros\n\n',15389.00,12019.00,'./imagens/geladeira.png');
INSERT INTO `` (`idproduto`,`categoria`,`descricao`,`preco`,`precofinal`,`imagem`) VALUES (4,'fogões','Fogão good',3389.00,2019.00,'./imagens/Fogao.webp');
INSERT INTO `` (`idproduto`,`categoria`,`descricao`,`preco`,`precofinal`,`imagem`) VALUES (5,'fogões','Fogão very good',7389.00,6019.00,'./imagens/Fogao.webp');
INSERT INTO `` (`idproduto`,`categoria`,`descricao`,`preco`,`precofinal`,`imagem`) VALUES (6,'microondas','Microondas very good',6389.00,3010.00,'./imagens/microondas.png');
INSERT INTO `` (`idproduto`,`categoria`,`descricao`,`preco`,`precofinal`,`imagem`) VALUES (7,'microondas','Microondas good',4389.00,2019.00,'./imagens/microondas.png');
INSERT INTO `` (`idproduto`,`categoria`,`descricao`,`preco`,`precofinal`,`imagem`) VALUES (8,'microondas','Microondas turbo brastem',7389.00,6019.00,'./imagens/microondas.png');
INSERT INTO `` (`idproduto`,`categoria`,`descricao`,`preco`,`precofinal`,`imagem`) VALUES (9,'Lavadoura de roupa','Lavadoura de Roupa very Good',5389.00,4019.00,'./imagens/LavaLouca.png');
INSERT INTO `` (`idproduto`,`categoria`,`descricao`,`preco`,`precofinal`,`imagem`) VALUES (10,'Lavadoura de roupa','Lavadoura de Roupa Good',3389.00,2019.00,'./imagens/LavaLouca.png');
INSERT INTO `` (`idproduto`,`categoria`,`descricao`,`preco`,`precofinal`,`imagem`) VALUES (11,'Lava-louça ','Lava-louça very Good',2389.00,1519.00,'./imagens/LavaLouca.png');
INSERT INTO `` (`idproduto`,`categoria`,`descricao`,`preco`,`precofinal`,`imagem`) VALUES (12,'Lava-louça ','Lava-louça Good',1389.00,519.00,'./imagens/LavaLouca.png');


--tabela pedidos
DROP TABLE IF EXISTS `pedidos`;
CREATE TABLE `pedidos` (
  `idpedidos` int NOT NULL AUTO_INCREMENT,
  `nomeCliente` varchar(100) NOT NULL,
  `endereco` varchar(200) NOT NULL,
  `telefone` int unsigned NOT NULL,
  `nomeProduto` varchar(100) NOT NULL,
  `valorUnitario` int unsigned NOT NULL,
  `quantidade` int unsigned NOT NULL,
  `valorTotal` int unsigned NOT NULL,
  PRIMARY KEY (`idpedidos`),
  UNIQUE KEY `telefone_UNIQUE` (`telefone`),
  CONSTRAINT `fk_pedidos_1` FOREIGN KEY (`idpedidos`) REFERENCES `produtos` (`idproduto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;



-- tabela pedidos
INSERT INTO `fseletro`.`pedidos`
(`idpedidos`,
`nomeCliente`,
`endereco`,
`telefone`,
`nomeProduto`,
`valorUnitario`,
`quantidade`,
`valorTotal`)
VALUES
(<{idpedidos: }>,
<{nomeCliente: }>,
<{endereco: }>,
<{telefone: }>,
<{nomeProduto: }>,
<{valorUnitario: }>,
<{quantidade: }>,
<{valorTotal: }>);