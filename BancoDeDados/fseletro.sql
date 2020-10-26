-- MySQL dump 10.13  Distrib 8.0.21, for Linux (x86_64)
--
-- Host: 0.0.0.0    Database: fseletro
-- ------------------------------------------------------
-- Server version	8.0.21

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `pedidos`
--

DROP TABLE IF EXISTS `pedidos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
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
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pedidos`
--

LOCK TABLES `pedidos` WRITE;
/*!40000 ALTER TABLE `pedidos` DISABLE KEYS */;
/*!40000 ALTER TABLE `pedidos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `produtos`
--

DROP TABLE IF EXISTS `produtos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
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
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `produtos`
--

LOCK TABLES `produtos` WRITE;
/*!40000 ALTER TABLE `produtos` DISABLE KEYS */;
INSERT INTO `produtos` VALUES (1,'geladeira','Geladeira Frost Inverse 540 litros',10389.00,5019.00,'./imagens/geladeira.png'),(2,'geladeira','Geladeira Frost 900 litros',10389.00,8019.00,'./imagens/geladeira.png'),(3,'geladeira','Geladeira Frost turbo 1200 litros\n\n',15389.00,12019.00,'./imagens/geladeira.png'),(4,'fogões','Fogão good',3389.00,2019.00,'./imagens/Fogao.webp'),(5,'fogões','Fogão very good',7389.00,6019.00,'./imagens/Fogao.webp'),(6,'microondas','Microondas very good',6389.00,3010.00,'./imagens/microondas.png'),(7,'microondas','Microondas good',4389.00,2019.00,'./imagens/microondas.png'),(8,'microondas','Microondas turbo brastem',7389.00,6019.00,'./imagens/microondas.png'),(9,'Lavadoura de roupa','Lavadoura de Roupa very Good',5389.00,4019.00,'./imagens/LavaLouca.png'),(10,'Lavadoura de roupa','Lavadoura de Roupa Good',3389.00,2019.00,'./imagens/LavaLouca.png'),(11,'Lava-louça ','Lava-louça very Good',2389.00,1519.00,'./imagens/LavaLouca.png'),(12,'Lava-louça ','Lava-louça Good',1389.00,519.00,'./imagens/LavaLouca.png');
/*!40000 ALTER TABLE `produtos` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-10-26 19:21:21
