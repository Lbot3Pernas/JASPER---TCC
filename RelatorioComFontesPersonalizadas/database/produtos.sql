-- MySQL dump 10.10
--
-- Host: localhost    Database: relatorios
-- ------------------------------------------------------
-- Server version	5.0.18-nt

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

CREATE DATABASE IF NOT EXISTS relatorios;



CREATE USER 'edson'@'localhost' IDENTIFIED BY 'trocar123';


GRANT ALL PRIVILEGES ON relatorios.* TO 'edson'@'localhost';


FLUSH PRIVILEGES;


USE relatorios;


--
-- Table structure for table `produtos`
--

DROP TABLE IF EXISTS `produtos`;
CREATE TABLE `produtos` (
  `ProdutoID` int(11) NOT NULL auto_increment,
  `ProdutoNome` varchar(60) NOT NULL,
  `CategoriaID` int(11) default NULL,
  `preco` double(10,2) default NULL,
  `UnidadesEmEstoque` smallint(6) default NULL,
  `Imagem` varchar(100) default NULL,
  PRIMARY KEY  (`ProdutoID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



--
-- Dumping data for table `produtos`
--


/*!40000 ALTER TABLE `produtos` DISABLE KEYS */;
LOCK TABLES `produtos` WRITE;
INSERT INTO `produtos` VALUES (1,'Chopp e Pêssego DRAFT & FRUIT',1,1.99,39,'chopp_pessego.jpg'),(2,'Chá com Pêssego',1,1.70,17,'cha_pessego.jpg'),(3,'Alho Especial Aperitivo',2,14.59,13,'alho_especial.jpg'),(4,'Molho à Bolonhesa',2,14.50,53,'molho_bolonhesa.jpg'),(5,'Aceto Italiano Bâlsâmico',2,21.35,0,'aceto_italiano.jpg'),(6,'Condimento à Base de Óleo para Peixe',2,16.20,120,'condimento_oleo_peixe.jpg'),(7,'Escova Dental COLGATE Micro Sonic',7,19.19,15,'escova.jpg'),(8,'Molho de Pimenta',2,2.46,6,'molho_pimenta.jpg'),(9,'Baby Beef de Alcatra Alcatra Bovina',6,18.65,29,'baby_beef.jpg'),(10,'Francês Baron Darignac',8,31.00,31,'vinho_frances.jpg'),(11,'Lombo Condimentado Fatiado',4,12.00,22,'lombo_condimentado.jpg'),(12,'Fondue de Chocolate Suiço',4,36.99,86,'fondue_chocolate_suico.jpg'),(13,'Nacional Tinto Cabernet Sauvignon',8,19.99,24,'vinho_tinto_nacional.jpg'),(14,'Esfoliante Pré-Shampoo',7,23.25,35,'esfoliante.jpg'),(15,'Cebola Triturada',2,4.55,39,'cebola_triturada.jpg'),(16,'Bolo Sabor Chocolate',3,8.49,29,'bolo_chocolate.jpg'),(17,'Coelho Congelado em Cortes',6,18.47,0,'coelho_congelado.jpg'),(18,'Nacional Branco Chardonnay',8,33.49,42,'vinho_branco_nacional.jpg'),(19,'Brigadeiro HAMNES',3,13.19,25,'brigadeiro_hamnes.jpg'),(20,'Croutons Sabor Alho',3,4.09,40,'croutons_alho.jpg'),(21,'Pão Italiano Filão Pré-Assado',3,4.05,3,'pao_italiano_filao.jpg'),(22,'Aspargos Verde',5,12.39,104,'aspargos.jpg'),(23,'Carne ao Vinho com Champignon',5,11.39,61,'carne_ao_vinho.jpg'),(24,'Refrigerante Critrus',1,2.20,20,'refrigerante_citrus.jpg'),(25,'Mini Bolo de Rolo sabor Recheio de Doce de Leite',3,2.23,76,'mini_bolo_sabor_leite.jpg'),(26,'Pão Sueco Light com Aveia',3,6.09,15,'pao_sueco.jpg'),(27,'Bolachinha de Coco',3,8.89,49,'bolachinha_coco.jpg'),(28,'Coloração Creme Acaju',7,19.19,26,'coloracao.jpg'),(29,'Lingüiça de Carne Suína',6,10.49,0,'linguica_suina.jpg'),(30,'Português Branco Albis',8,30.99,10,'vinho_portugues.jpg'),(31,'Chancliche sem Zattar no Óleo',4,19.59,0,'chancliche_oleo.jpg'),(32,'Manteiga Francesa sem Sal ',4,5.59,9,'manteiga_francesa.jpg'),(33,'Requeijão CATUPIRY',4,9.89,112,'requeijao_catupiry.jpg'),(34,'Cerveja Ruiva DEVASSA',1,3.40,111,'cerveja_ruiva.jpg'),(35,'Cerveja Escura',1,2.70,20,'cerveja_escura.jpg'),(36,'Português Porto Dona Antonia',8,105.99,112,'vinho_portugues_porto.jpg'),(37,'Cava Espanhola Rose',8,57.90,11,'cava_espanhola.jpg'),(38,'Chá Verde Sabor Limão',1,3.29,17,'cha_verde.jpg'),(39,'Refrigerante de Cola',1,3.19,69,'refrigerante_cola.jpg'),(40,'Espumante Brut CHANDON',8,39.99,123,'espumante_brut.jpg'),(41,'Italiano Branco Moscato D\' Asti BATASIOLO',8,29.90,85,'italiano_branco.jpg'),(42,'Sopa Americana de Cogumelo',5,8.99,26,'sopa_americana.jpg'),(43,'Café com Leite',1,10.60,17,'cafe_leite.jpg'),(44,'Molho de Tomate com Azeitonas',2,7.79,27,'molho_tomate_azeitonas.jpg'),(45,'Espumante Francês Brut SAUMUR MOUS',8,24.90,5,'espumante_frances.jpg'),(46,'Chileno Tinto Carmenère SANTA HELENA',8,22.60,95,'chileno_tinto.jpg'),(47,'Grissini Italiano',3,9.50,36,'grissini_italiano.jpg'),(48,'Pão Azimo',3,26.69,15,'pao_azimo.jpg'),(49,'Bolo de Torta de Limão',3,20.00,10,'bolo_torta_limao.jpg'),(50,'Bolo Americano com Castanha do Pará e Uva Passa',3,7.90,65,'bolo_americano_castanha.jpg'),(51,'Bloqueador Solar',7,23.99,20,'bloqueador_solar.jpg'),(52,'Amêndoa Americana Torrada e Salgada',5,17.89,38,'amendoas_americana.jpg'),(53,'Bacalhau',6,41.19,0,'bacalhau.jpg'),(54,'Lombo suíno temperado e congelado',6,18.89,21,'lombo_suino.jpg'),(55,'Assado de tira (costela bovina)',6,17.12,115,'assado_tira.jpg'),(56,'Batata Frita Sabor Bacon',5,8.99,21,'batata_frita_bacon.jpg'),(57,'Azeitona Argentina Fatiada',5,9.89,36,'azeitona_argentina.jpg'),(58,'Português Tinto Douro CALÇOS DO TANHA',8,90.99,62,'portugues_tinto_douro.jpg'),(59,'Ovas de Peixe Preto Chilena',4,55.00,79,'ovas_peixe.jpg'),(60,'Mini Chester Lanche',4,9.92,19,'mini_chester.jpg'),(61,'Vinagre Espanhol Branco com Alho',2,13.79,113,'vinagre_espanhol_branco.jpg'),(62,'Torrada Canapés',3,4.05,17,'torrada_canapes.jpg'),(63,'Molho Barbecue',2,17.19,24,'molho_barbecue.jpg'),(64,'Ervilha Extra Fina',5,5.59,22,'ervilha.jpg'),(65,'Pimenta Síria',2,7.49,76,'pimenta_siria.jpg'),(66,'Molho de Tomate Napolitana',2,13.99,4,'molho_tomate_napolitana.jpg'),(67,'Refrigerante de Limão e Tangerina',1,1.99,52,'refrigerante_limao.jpg'),(68,'Pão de Centeio',3,3.89,6,'pao_centeio.jpg'),(69,'Fondue Suíço de Queijo',4,28.99,26,'fondue_suico_queijo.jpg'),(70,'Suco concentrado de Uva',1,2.99,15,'suco_concentrado.jpg'),(71,'Queijo Buchete Cinza',4,20.89,26,'queijo_buchete.jpg'),(72,'Manteiga com Sal',4,6.99,14,'manteiga_sal.jpg'),(73,'Português Branco DÃO TERRAS ALTAS',8,21.99,101,'portugues_branco_terras_altas.jpg'),(74,'Deo Colônia',7,18.99,4,'deo_colonia.jpg'),(75,'Café à Vácuo Torrado e Moído Special',1,16.40,125,'cafe_special.jpg'),(76,'Bebida orgânica de guaraná e maçã',1,6.49,57,'bebida_organica.jpg'),(77,'Molho Americano de Taco',2,17.59,32,'molho_americano_taco.jpg');
UNLOCK TABLES;


