-- MariaDB dump 10.17  Distrib 10.4.11-MariaDB, for Linux (x86_64)
--
-- Host: localhost    Database: controle
-- ------------------------------------------------------
-- Server version	10.4.11-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `controle`
--

DROP TABLE IF EXISTS `controle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `controle` (
  `NOMEITEM` varchar(255) DEFAULT NULL,
  `LOCALIZACAO` varchar(255) DEFAULT NULL,
  `ORIGEM` varchar(255) DEFAULT NULL,
  `DESTINO` varchar(255) DEFAULT NULL,
  `TIPO` varchar(255) DEFAULT NULL,
  `QUANTIDADE` int(11) DEFAULT NULL,
  `DESCRICAO` varchar(255) DEFAULT NULL,
  `DATA` datetime DEFAULT NULL,
  `PATRIMONIO` varchar(255) DEFAULT NULL,
  `NR_SERIE` varchar(255) DEFAULT NULL,
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `MOTIVO` varchar(255) DEFAULT NULL,
  `PROTOCOLO` varchar(255) DEFAULT NULL,
  `gms` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `controle`
--

LOCK TABLES `controle` WRITE;
/*!40000 ALTER TABLE `controle` DISABLE KEYS */;
INSERT INTO `controle` VALUES ('bateria alcalina 9v.','Mateus Leme','Mateus Leme','null','Almoxarifado',0,'BATERIA ','2020-01-31 00:00:00','0','0\r',1,NULL,NULL,'4132'),('bateria botÃo de litio ','Colombo','Colombo','null','Almoxarifado',0,'BATERIA BOTÃO DE LITIO','2020-01-31 00:00:00','0','0\r',2,NULL,NULL,'20213'),('pilha alcalina tipo:aaa ','Colombo','Colombo','null','Almoxarifado',0,'PILHA ALCALINA TIPO:AAA ','2020-01-31 00:00:00','0','0\r',3,NULL,NULL,'40813'),('fone de ouvido headfone ','Colombo','Colombo','null','Almoxarifado',0,'FONE DE OUVIDO','2020-01-31 00:00:00','0','0\r',4,NULL,NULL,'18942'),('disco laser dvd-r ','Colombo','Colombo','null','Almoxarifado',0,'DVD-R','2020-01-31 00:00:00','0','0\r',5,NULL,NULL,'735'),('disco laser cd-r ','Colombo','Colombo','null','Almoxarifado',0,'CD-R','2020-01-31 00:00:00','0','0\r',6,NULL,NULL,'249'),('pad mouse ','Colombo','Colombo','null','Almoxarifado',0,'MOUSEPAD','2020-01-31 00:00:00','0','0\r',7,NULL,NULL,'1102'),('conector hub usb ','Colombo','Colombo','null','Almoxarifado',0,'HUB USB','2020-01-31 00:00:00','0','0\r',8,NULL,NULL,'9973'),('cabo extensor usb ','Colombo','Colombo','null','Almoxarifado',0,'CABO EXTENSOR USB','2020-01-31 00:00:00','0','0\r',9,NULL,NULL,'23538'),('fonte adaptador notebook ','Colombo','Colombo','null','Almoxarifado',0,'FONTE ADAPTADOR NOTEBOOK','2020-01-31 00:00:00','0','0\r',10,NULL,NULL,'23540'),('pen drive 8gb ','Colombo','Colombo','null','Almoxarifado',0,'PEN DRIVE 8GB','2020-01-31 00:00:00','0','0\r',11,NULL,NULL,'3470'),('pen drive 16 gb ','Colombo','Colombo','null','Almoxarifado',0,'PEN DRIVE 16 GB','2020-01-31 00:00:00','0','0\r',12,NULL,NULL,'39680'),('leitor e gravador de cartão de memória ','Colombo','Colombo','null','Almoxarifado',0,'LEITOR E GRAVADOR DE CARTÃO DE MEMÓRIA','2020-01-31 00:00:00','0','0\r',13,NULL,NULL,'40042'),('filtro de linha','Colombo','Colombo','null','Almoxarifado',0,'Filtro de Linha','2020-02-05 13:55:09','0','',16,NULL,NULL,''),('fita isolante','Mateus Leme','Mateus Leme','null','Almoxarifado',0,'Fita isolante','2020-02-12 13:33:28','0','0',17,NULL,NULL,'0');
/*!40000 ALTER TABLE `controle` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `controle_prot`
--

DROP TABLE IF EXISTS `controle_prot`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `controle_prot` (
  `NOMEITEM` varchar(255) DEFAULT NULL,
  `LOCALIZACAO` varchar(255) DEFAULT NULL,
  `ORIGEM` varchar(255) DEFAULT NULL,
  `DESTINO` varchar(255) DEFAULT NULL,
  `TIPO` varchar(255) DEFAULT NULL,
  `QUANTIDADE` int(11) DEFAULT NULL,
  `DESCRICAO` varchar(255) DEFAULT NULL,
  `DATA` datetime DEFAULT NULL,
  `PATRIMONIO` varchar(255) NOT NULL,
  `NR_SERIE` varchar(255) DEFAULT NULL,
  `MOTIVO` varchar(255) DEFAULT NULL,
  `PROTOCOLO` varchar(255) DEFAULT NULL,
  `gms` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`PATRIMONIO`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `controle_prot`
--

LOCK TABLES `controle_prot` WRITE;
/*!40000 ALTER TABLE `controle_prot` DISABLE KEYS */;
/*!40000 ALTER TABLE `controle_prot` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `garantia`
--

DROP TABLE IF EXISTS `garantia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `garantia` (
  `id` int(11) DEFAULT NULL,
  `data_ex` datetime DEFAULT NULL,
  `descricao` varchar(255) DEFAULT NULL,
  `data_ini` datetime DEFAULT NULL,
  `pat` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `garantia`
--

LOCK TABLES `garantia` WRITE;
/*!40000 ALTER TABLE `garantia` DISABLE KEYS */;
/*!40000 ALTER TABLE `garantia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `history`
--

DROP TABLE IF EXISTS `history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `history` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `NOMEITEM` varchar(255) DEFAULT NULL,
  `LOCALIZACAO` varchar(255) DEFAULT NULL,
  `ORIGEM` varchar(255) DEFAULT NULL,
  `DESTINO` varchar(255) DEFAULT NULL,
  `TIPO` varchar(255) DEFAULT NULL,
  `QUANTIDADE` int(11) DEFAULT NULL,
  `DESCRICAO` varchar(255) DEFAULT NULL,
  `DATA` datetime DEFAULT NULL,
  `PATRIMONIO` varchar(255) DEFAULT NULL,
  `NR_SERIE` varchar(255) DEFAULT NULL,
  `MOTIVO` varchar(255) DEFAULT NULL,
  `RESPONSAVEL` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `history`
--

LOCK TABLES `history` WRITE;
/*!40000 ALTER TABLE `history` DISABLE KEYS */;
/*!40000 ALTER TABLE `history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sedes`
--

DROP TABLE IF EXISTS `sedes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sedes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nomesede` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `endereco` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `nr` int(11) DEFAULT NULL,
  `cep` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `local` varchar(255) CHARACTER SET latin1 NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sedes`
--

LOCK TABLES `sedes` WRITE;
/*!40000 ALTER TABLE `sedes` DISABLE KEYS */;
INSERT INTO `sedes` VALUES (1,'Sede Central','Rua José Bonifácio',66,'80020-130','Bonifácio\r'),(2,'Núcleo Criminal-Ahú','Av. Anita Garibaldi',750,'80540-180','Ahú\r'),(3,'Santa Felicidade','Rua José Bonifácio',66,'80020-130','Santa Felicidade\r'),(4,'Boqueirão','Avenida Marechal Floriano Peixoto',8257,'80520-070','Boqueirão\r'),(5,'CIC','Rua Lodovico Kaminski',2525,'81260-282','CIC\r'),(6,'Pinheirinho','Avenida Winston Churchill',2471,'81150-050','Pinheirinho\r'),(7,'Casa da Mulher Brasileira','Av. Paraná',870,'80035-130','Cabral\r'),(8,'Juizado de Violência Doméstica ','Avenida João Gualberto',1073,'80030-001','Alto da Glória\r'),(9,'Vara da Infância e da Juventude','Rua da Glória',290,'80030-060','Centro Cívico\r'),(10,'Vara de adolescentes em conflito com a lei','Rua Pastor Manoel Virgílio de Souza',1310,'82810-140','Capão da Imbuia\r'),(11,'Vara de Infrações Penais','Av. Iguacu',750,'80230-020','Rebouças\r'),(12,'Tribunal do Juri','Rua Ernâni Santiago de Oliveira',268,'80530-100','Centro Cívico\r'),(13,'Segundo Grau de Jurisdição','Rua da Glória',393,'80030-060','Centro Cívico\r'),(14,'Fórum  São José dos Pinhais','Rua João Ângelo Cordeiro',0,'83005-570','Centro de São José dos Pinhais\r'),(15,'Guaratuba','Rua Tiago Pedroso',417,'83280-000','Guaratuba\r'),(16,'Umuarama','Rua Desembargador Munhoz de Mello',3792,'87501-180','Umuarama\r'),(17,'Cianorte','Avenida Maranhão',255,'87200-980','Cianorte\r'),(18,'Guarapuava','Avenida Manoel Ribas',2537,'85010-180','Guarapuava\r'),(19,'Ponta Grossa','Rua Doutor Leopoldo Guimarães da Cunha',300,'84035-310','Ponta Grossa\r'),(20,'Castro','Rua Padre Damaso',81,'84165-540','Castro\r'),(21,'Sede Apucarana','Travessa João Gurgel Macedo',100,'86800-710','Apucarana\r'),(22,'Londrina','Av. Bandeirantes',263,'86010-020','Londrina\r'),(23,'Sede Maringá','Av. Tiradentes',1289,'87013-344','Maringá\r'),(24,'Sede Cornélio Procópio','Rua Massudi Amim',165,'86300-000','Cornélio Procópio\r'),(25,'Sede Campo Mourão','Rua Duque de Caxias',786,'87305-320','Campo Mourão\r'),(26,'Sede Cascavel','Rua São Paulo',346,'85801-020','Cascavel\r'),(27,'Sede Foz do Iguaçu','Rua Antônio Raposo',923,'85851-090','Foz do Iguaçu\r'),(28,'Sede Francisco Beltrão','Rua Alagoas',655,'85601-080','Francisco Beltrão\r'),(29,'Sede União da Vitória','Rua Marechal Floriano Peixoto',0,'84600-000','União da Vitória\r'),(32,'Colombo',NULL,NULL,NULL,'Colombo'),(33,'Mateus Leme',NULL,NULL,NULL,'Mateus Leme');
/*!40000 ALTER TABLE `sedes` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-01-30 17:38:01
