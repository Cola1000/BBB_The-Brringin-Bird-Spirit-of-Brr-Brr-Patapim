/*M!999999\- enable the sandbox mode */ 
-- MariaDB dump 10.19-11.8.1-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: halobot
-- ------------------------------------------------------
-- Server version	11.8.1-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*M!100616 SET @OLD_NOTE_VERBOSITY=@@NOTE_VERBOSITY, NOTE_VERBOSITY=0 */;

--
-- Table structure for table `alamat`
--

DROP TABLE IF EXISTS `alamat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `alamat` (
  `id` uuid NOT NULL DEFAULT uuid(),
  `provinsi` varchar(100) NOT NULL,
  `kota` varchar(100) NOT NULL,
  `jalan` varchar(255) NOT NULL,
  `pasien_id` uuid NOT NULL,
  PRIMARY KEY (`id`),
  KEY `pasien_id` (`pasien_id`),
  CONSTRAINT `alamat_ibfk_1` FOREIGN KEY (`pasien_id`) REFERENCES `pasien` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alamat`
--

LOCK TABLES `alamat` WRITE;
/*!40000 ALTER TABLE `alamat` DISABLE KEYS */;
set autocommit=0;
INSERT INTO `alamat` VALUES
('7978c5e3-3b62-4154-af07-025df1a128f8','Sumatera Selatan','Prabumulih','Gg. Surapati No. 98','a73ad326-95c7-4339-820e-db362df4412b'),
('b4298f1a-0e8e-4379-a8b5-02b25f598665','DKI Jakarta','Denpasar','Gang Cihampelas No. 83','c8596929-f07d-44bc-83de-aa4078bdb6fd'),
('4c7c0451-bd2a-4ef6-aded-09f91080abde','Jawa Timur','Semarang','Jl. Jamika No. 5','e9e77078-d313-4ae3-a742-ec7e116fd303'),
('8ad9088d-e369-46db-bf84-0b92ac02f14f','Kalimantan Barat','Meulaboh','Gang Ahmad Dahlan No. 924','84e9d669-a532-4dcb-97c4-84360ba86e98'),
('32bf5869-995f-4ef5-a707-0ba6f5354920','Kepulauan Riau','Depok','Gg. Dipenogoro No. 5','e9e77078-d313-4ae3-a742-ec7e116fd303'),
('fc451e04-a344-481a-ae56-21d3241af512','Nusa Tenggara Barat','Probolinggo','Gg. M.T Haryono No. 036','0908ed3b-f84b-4956-a147-f5bb2ca04afa'),
('75f1779c-cd01-4b19-91f0-2232ee3ad5cc','Aceh','Kotamobagu','Gang Jend. A. Yani No. 669','ff6757ec-06de-45c6-b47e-f2bb7b4858e8'),
('ef0c21cd-e637-43d3-b8a3-228f0f44e87c','Jawa Barat','Tanjungbalai','Jl. Dipenogoro No. 22','0908ed3b-f84b-4956-a147-f5bb2ca04afa'),
('7e92705d-1646-4a1e-a389-3da8e7582018','Maluku Utara','Kota Administrasi Jakarta Selatan','Gang Rajawali Barat No. 4','72f0f95e-e087-4d4b-a04a-b49782eddde6'),
('23ae986e-9be7-45e1-b743-42968761d058','Sulawesi Selatan','Bogor','Jalan HOS. Cokroaminoto No. 890','83086da0-1925-4372-b223-8b40975a8f02'),
('7c1f7f9a-3c2b-4af5-bf11-49286239e740','Papua Barat','Dumai','Gang Cempaka No. 618','72f0f95e-e087-4d4b-a04a-b49782eddde6'),
('e144059e-1696-49a6-a3fb-4b5bdc26f10c','Bengkulu','Makassar','Gg. Pacuan Kuda No. 30','7f186afe-2b0a-44c1-901a-6b2b9de175f5'),
('dff2ed57-875e-4979-aa10-4c1a7ce4473d','Aceh','Pekanbaru','Gang R.E Martadinata No. 163','ff6757ec-06de-45c6-b47e-f2bb7b4858e8'),
('5b9f12cc-4411-4cb6-8e59-4c9767a8ff1d','Sulawesi Barat','Kota Administrasi Jakarta Timur','Jalan Pasir Koja No. 781','b55e12e4-6ed1-4dc4-aaad-80cefb461e5f'),
('3d030b77-ed9e-4ef4-b651-5173592c1a62','Gorontalo','Ambon','Gang Jayawijaya No. 8','84e9d669-a532-4dcb-97c4-84360ba86e98'),
('31479ffb-a9bc-4e14-a270-5878eefce61f','Sumatera Selatan','Pagaralam','Jalan Laswi No. 150','9f340e66-094d-4470-b4d9-0efdf5bb9026'),
('3f52a65c-f906-40d5-ad6c-5d7b58c2f4b0','Bali','Blitar','Jl. Ciumbuleuit No. 20','ff6757ec-06de-45c6-b47e-f2bb7b4858e8'),
('b46fe5f2-22cc-4e85-bf95-635abb0aaca9','Papua Barat','Tangerang','Gg. Rumah Sakit No. 10','e9e77078-d313-4ae3-a742-ec7e116fd303'),
('52f164c7-f06e-4fa6-8d94-68730b4febee','Maluku Utara','Gorontalo','Jalan W.R. Supratman No. 950','e9e77078-d313-4ae3-a742-ec7e116fd303'),
('8d4a0916-4866-496e-86ad-7d0b2a7ddadd','Sumatera Selatan','Banda Aceh','Jalan Asia Afrika No. 399','a73ad326-95c7-4339-820e-db362df4412b'),
('4d0857ee-4bc4-4d09-bbfd-8162829aa722','Sulawesi Utara','Manado','Gang Ahmad Dahlan No. 90','e9e77078-d313-4ae3-a742-ec7e116fd303'),
('b9c43125-22c3-4e2a-aff4-87c262df05c8','Kalimantan Selatan','Balikpapan','Jalan Rumah Sakit No. 0','71895757-10fb-4217-a4eb-ed7e94192582'),
('f9910822-75ad-46a3-9573-8bda4c131297','Jawa Barat','Bekasi','Gang Jend. Sudirman No. 11','9f340e66-094d-4470-b4d9-0efdf5bb9026'),
('0a41416c-61ee-446e-8eb9-8cb6a3236975','Sulawesi Barat','Pematangsiantar','Jl. Siliwangi No. 19','e9e77078-d313-4ae3-a742-ec7e116fd303'),
('13626f12-3256-4b52-a283-8cef3f7b633c','Sumatera Selatan','Sungai Penuh','Gang PHH. Mustofa No. 20','e9e77078-d313-4ae3-a742-ec7e116fd303'),
('00a7c423-ee50-4187-b365-9646fb8ee852','Nusa Tenggara Timur','Bengkulu','Gg. H.J Maemunah No. 316','e9e77078-d313-4ae3-a742-ec7e116fd303'),
('e6dbec3a-b988-4b37-90c0-96a9bac6c469','Maluku','Metro','Gg. Joyoboyo No. 2','9f340e66-094d-4470-b4d9-0efdf5bb9026'),
('61ad7529-3c11-4ece-986e-9bf42d390629','Kalimantan Utara','Pangkalpinang','Gang Dipenogoro No. 392','9f340e66-094d-4470-b4d9-0efdf5bb9026'),
('7c0be8ad-b8ee-4739-bda6-a2751f7d5e0e','Papua','Kota Administrasi Jakarta Timur','Jalan Yos Sudarso No. 17','7f186afe-2b0a-44c1-901a-6b2b9de175f5'),
('02eea9ef-d78c-4690-b908-a723aaed5815','Lampung','Banjar','Gang Antapani Lama No. 88','b1e6a427-0737-4eee-8907-37a913a3edfe'),
('23e3d647-0649-417c-afcf-a90b37454d08','Sumatera Barat','Lhokseumawe','Gg. Bangka Raya No. 291','e980fb54-a53c-4b8c-968c-17fd559846c4'),
('7b7e3fb4-001a-44c1-b152-acb6162b486f','Aceh','Tidore Kepulauan','Jalan Rungkut Industri No. 28','ff6757ec-06de-45c6-b47e-f2bb7b4858e8'),
('a45dc604-2172-4336-acd6-bb0ab5c43628','Sulawesi Barat','Kota Administrasi Jakarta Pusat','Jl. Jend. Sudirman No. 59','a73ad326-95c7-4339-820e-db362df4412b'),
('0b46e106-569c-4f07-89f3-bd5e8223ac59','Lampung','Salatiga','Gang Ahmad Yani No. 6','83086da0-1925-4372-b223-8b40975a8f02'),
('5ae9858c-66fe-4ccd-8aa7-c01679dff812','Kepulauan Bangka Belitung','Pangkalpinang','Jl. Asia Afrika No. 89','ff6757ec-06de-45c6-b47e-f2bb7b4858e8'),
('88392848-048c-40de-96bc-c1b5938fab07','Kalimantan Utara','Palembang','Gg. H.J Maemunah No. 6','ff6757ec-06de-45c6-b47e-f2bb7b4858e8'),
('1a0a480e-c3c6-4a48-a4f2-ca1d6e02aae0','Gorontalo','Pematangsiantar','Gg. Pasir Koja No. 474','5d927fdd-c7f6-4d3f-a459-b0a802dde2ce'),
('0ff676fa-5061-48c0-affc-d181f1143bbf','Gorontalo','Bekasi','Jalan Cihampelas No. 13','4015ac92-4175-48b1-8e8d-4977ff362906'),
('0da1b231-098c-4f7e-a0d9-d8ab6f933444','Sulawesi Tenggara','Makassar','Gang Jamika No. 54','c82c208f-56e1-44e3-8f8d-89b7f5f5806d'),
('4a9e525a-bc2a-4113-8710-da1db8120231','Jawa Tengah','Magelang','Jalan Kutisari Selatan No. 9','7d351403-6253-43ae-9746-7e7e4a8f20f8'),
('c5a3a93a-a558-4364-8ef8-da5e410c0ba6','Sulawesi Selatan','Tangerang','Jalan Abdul Muis No. 01','e980fb54-a53c-4b8c-968c-17fd559846c4'),
('cbbf43f2-042e-4c5e-993e-db0af42aa560','Maluku Utara','Bima','Jalan Kutisari Selatan No. 1','7d918b95-58d0-4e71-b459-ed19cd24ec17'),
('479dfd0e-66d4-4a9f-8951-dbb4c81c9b07','Sulawesi Selatan','Jayapura','Gg. Rumah Sakit No. 4','c82c208f-56e1-44e3-8f8d-89b7f5f5806d'),
('6d1d0268-543b-4591-9948-dcc4cbb8aa94','DKI Jakarta','Tual','Gg. Raya Setiabudhi No. 98','84e9d669-a532-4dcb-97c4-84360ba86e98'),
('956e13b8-4d92-4c4d-90bc-e74d5b09cdd1','Nusa Tenggara Barat','Pangkalpinang','Jl. Peta No. 51','c8596929-f07d-44bc-83de-aa4078bdb6fd'),
('04ea4acd-aee1-452d-9193-f03c92a07aed','Jambi','Bandung','Jalan Kiaracondong No. 47','5d927fdd-c7f6-4d3f-a459-b0a802dde2ce'),
('f425230d-96eb-4ab9-ba5e-f11945653422','Sumatera Selatan','Palopo','Gang Ronggowarsito No. 375','71895757-10fb-4217-a4eb-ed7e94192582'),
('12ce9274-4f26-41d8-b9fa-f171edf89e9e','Sulawesi Utara','Tangerang Selatan','Gang Ronggowarsito No. 52','72f0f95e-e087-4d4b-a04a-b49782eddde6'),
('07f9f129-6562-4579-93a2-f3ee355c3a95','Papua Barat','Kota Administrasi Jakarta Barat','Gg. Jend. A. Yani No. 8','4015ac92-4175-48b1-8e8d-4977ff362906'),
('0510219b-54a7-4822-b7b6-f54159a6e18e','Kalimantan Selatan','Banda Aceh','Gg. Yos Sudarso No. 893','e980fb54-a53c-4b8c-968c-17fd559846c4');
/*!40000 ALTER TABLE `alamat` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Table structure for table `baymin`
--

DROP TABLE IF EXISTS `baymin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `baymin` (
  `id` uuid NOT NULL DEFAULT uuid(),
  `firmware` varchar(20) NOT NULL,
  `pasien_id` uuid NOT NULL,
  PRIMARY KEY (`id`),
  KEY `pasien_id` (`pasien_id`),
  CONSTRAINT `baymin_ibfk_1` FOREIGN KEY (`pasien_id`) REFERENCES `pasien` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `baymin`
--

LOCK TABLES `baymin` WRITE;
/*!40000 ALTER TABLE `baymin` DISABLE KEYS */;
set autocommit=0;
INSERT INTO `baymin` VALUES
('abf548a8-7c5d-421c-b767-256e35fe42b9','2.0.1','c8596929-f07d-44bc-83de-aa4078bdb6fd'),
('0c9f52e0-05fb-4ad9-81d3-2b7916d187d3','1.0.0','0908ed3b-f84b-4956-a147-f5bb2ca04afa'),
('17c095b4-a679-4eef-b775-3b3b66688dc0','1.1.0','a73ad326-95c7-4339-820e-db362df4412b'),
('dd3ff45d-a013-4107-ad9d-3c39e62b854e','2.1.0','5eaee617-2793-4dac-9ed6-e15053adfc40'),
('d2c4bd3a-7986-4a99-be4b-523afb0bfdeb','1.2.3','b55e12e4-6ed1-4dc4-aaad-80cefb461e5f'),
('06385662-87fc-435a-86e7-58095fa1dce1','2.0.1','9f340e66-094d-4470-b4d9-0efdf5bb9026'),
('cb71b964-11e9-41bd-b490-60ca186f036a','1.1.0','7d918b95-58d0-4e71-b459-ed19cd24ec17'),
('db213ec5-0a89-4ed0-aff0-653e03d62264','1.2.3','7f186afe-2b0a-44c1-901a-6b2b9de175f5'),
('52b29850-f011-4e55-9796-69dda00579e1','2.1.0','4015ac92-4175-48b1-8e8d-4977ff362906'),
('a69e45a6-9529-48b0-868d-77cdbae38729','1.1.0','71895757-10fb-4217-a4eb-ed7e94192582'),
('db09191f-13c0-43e7-9529-79a564fb676e','2.1.0','c82c208f-56e1-44e3-8f8d-89b7f5f5806d'),
('bcaeeb06-07ce-4534-8254-81dae5cb50d7','1.0.0','84e9d669-a532-4dcb-97c4-84360ba86e98'),
('5bed2352-7bbf-449a-b58e-9757f59815a5','1.2.3','e9e77078-d313-4ae3-a742-ec7e116fd303'),
('e0778d25-70eb-410e-935c-9accf848bb59','2.0.1','ff6757ec-06de-45c6-b47e-f2bb7b4858e8'),
('99ad35e8-f45c-46ac-b4a4-a54a53abc69f','2.1.0','83086da0-1925-4372-b223-8b40975a8f02'),
('946b94a6-292c-452a-9748-b04c02f85462','2.0.1','b1e6a427-0737-4eee-8907-37a913a3edfe'),
('f2f8e4e1-4a8e-4231-b442-b7e5f8d5a0ef','1.2.3','7d351403-6253-43ae-9746-7e7e4a8f20f8'),
('9f67ab89-1175-4aa7-81b7-cc6aba557eaf','2.0.1','5d927fdd-c7f6-4d3f-a459-b0a802dde2ce'),
('a9056c9c-8141-4fde-88fb-e0490f7dc4c6','1.2.3','72f0f95e-e087-4d4b-a04a-b49782eddde6'),
('087f16f0-596f-4250-85f7-ecf130b11cb6','1.0.0','e980fb54-a53c-4b8c-968c-17fd559846c4');
/*!40000 ALTER TABLE `baymin` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Table structure for table `bekerja`
--

DROP TABLE IF EXISTS `bekerja`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `bekerja` (
  `id` uuid NOT NULL DEFAULT uuid(),
  `tenaga_medis_id` uuid NOT NULL,
  `departemen_id` uuid NOT NULL,
  PRIMARY KEY (`id`),
  KEY `tenaga_medis_id` (`tenaga_medis_id`),
  KEY `departemen_id` (`departemen_id`),
  CONSTRAINT `bekerja_ibfk_1` FOREIGN KEY (`tenaga_medis_id`) REFERENCES `tenaga_medis` (`id`),
  CONSTRAINT `bekerja_ibfk_2` FOREIGN KEY (`departemen_id`) REFERENCES `departemen` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bekerja`
--

LOCK TABLES `bekerja` WRITE;
/*!40000 ALTER TABLE `bekerja` DISABLE KEYS */;
set autocommit=0;
INSERT INTO `bekerja` VALUES
('869d56b8-f758-46ce-9241-00ed00768847','193b3e78-e9a5-4e61-a7f5-9848140dc15c','d1a322f6-1fd9-4d1b-84ff-53d2486afd4e'),
('f8a442f3-c86d-42c7-aa8a-025ce30479d9','4090387b-91b8-4a38-8b8b-43a9634a2f2a','14d6fd0f-467d-4b14-bc9d-e65e1ed5bdee'),
('76692aa8-b298-4b28-9f56-02d2cfa29623','23804906-5ca1-4620-988a-5efcec1ff0aa','eb13ea16-7f36-4610-86c3-f3916df40ff5'),
('700ad02e-7e6e-4172-a895-051655365429','d7d0c919-3fb6-49df-9d63-b2341b86ff92','74003b7d-5803-4f7b-a92f-01267ae520c7'),
('b1bef395-302b-4b4f-b920-06de49e25a65','39ed4aba-2d97-40f1-a067-f4eae260e9df','14d6fd0f-467d-4b14-bc9d-e65e1ed5bdee'),
('11fc9b47-eb1e-4b69-8e25-06fe1fed6521','54f83b49-1a17-43df-8ea7-0ead4c123a6b','99cdb4f5-347b-44f5-a235-bb21a992eedd'),
('aeed2698-5927-484b-b152-0776c1faca77','67855305-5216-4352-a340-47cd0de6cb73','e102fa6f-a06b-4f30-b4ea-c6b300ca4ca1'),
('c1eefe35-7f05-4f2b-9012-081a2b4bc5f5','0f9992ca-43c6-4b47-8a15-ee4a9c01ec74','e102fa6f-a06b-4f30-b4ea-c6b300ca4ca1'),
('8e83a099-d4c9-48a5-8468-0828e62e4291','4090387b-91b8-4a38-8b8b-43a9634a2f2a','76616417-fb56-4977-915a-7a340bc0bc45'),
('bcfe26a3-812e-4c5f-943e-0bf93aa4d3dc','8995b8e2-f6c7-4749-8aef-4304ed5daf5b','b27323e2-a0d8-40a9-a4f3-bbc9e0b2976c'),
('65bb2b82-bebd-47d3-aa41-10e80ca913ec','8b22fb86-ec11-497e-a11e-fd463e1f4c28','ec06cf79-2e5d-4d59-8f44-ee54a4af2ad9'),
('620a490f-e62e-4689-8b97-11b7d682af93','a7e7aca9-01ed-4fa4-9ea6-1a4604f42a91','a5616297-ba02-4372-8e63-1b665b182939'),
('3d09ed09-5d37-4f20-bd26-15e6b40d0857','f2e76021-0111-4cbd-93dd-3aa1f51e0d11','29f79610-e492-49a1-bdcc-c039c4bd2383'),
('3d722bc5-682d-441f-ac60-175cb02683a8','39ed4aba-2d97-40f1-a067-f4eae260e9df','ed9b41c4-cf79-4b11-a6d6-25a4e5bc7da3'),
('6ed129c9-3a5b-44cd-8c32-17fcd9ff51ce','e37361fd-0f8c-42cf-a14e-7faaa74c358c','187b06be-25e4-4ab0-9a5a-a2cd4bba5d18'),
('00737a38-7fee-4e32-834d-18c45d00f3a5','0f9992ca-43c6-4b47-8a15-ee4a9c01ec74','548e875c-d6e5-4ee4-a858-a1dc8ff55729'),
('1d32e75b-9761-4ca5-8178-1a1ba7a5aecc','504e977a-5ff3-4960-b066-3143e3881753','ed9b41c4-cf79-4b11-a6d6-25a4e5bc7da3'),
('b3955d5e-a19d-445b-871b-1d0ec556b992','a3691f68-3773-48e3-89a6-6ae6cd97bca3','f87895c2-fc8e-46ca-857c-0677b7ecb835'),
('faed0ece-47cf-4628-a652-1f2629682fe9','a7e7aca9-01ed-4fa4-9ea6-1a4604f42a91','847c6dd7-0cdf-436b-8d6b-cd58b81aecf5'),
('829fe763-5374-4a82-b040-1f816bed489c','0f9992ca-43c6-4b47-8a15-ee4a9c01ec74','74d7adfa-8aef-44de-8897-d5cab244c8e6'),
('76a3345b-8232-45c1-bd9e-227a8ffdd84a','40ea338a-cff4-448a-9295-afd3160d6aa4','f87895c2-fc8e-46ca-857c-0677b7ecb835'),
('55571c14-6d86-4323-be54-2422ca5ec93a','6ab545fd-8ff6-4279-8c00-cd54f46830a0','847c6dd7-0cdf-436b-8d6b-cd58b81aecf5'),
('2d588a63-ab53-4cd1-8484-2553ad6c6060','4090387b-91b8-4a38-8b8b-43a9634a2f2a','6145e76a-185f-4261-b645-b9f9883c3d57'),
('3ad9c65f-f47a-4c0d-9ea5-28e67340dd10','23804906-5ca1-4620-988a-5efcec1ff0aa','a5616297-ba02-4372-8e63-1b665b182939'),
('ea1d679a-165f-43c5-9561-2acab5951431','67855305-5216-4352-a340-47cd0de6cb73','7eb3e67f-fff0-4450-9338-e57a862fdd14'),
('446bfe9e-32d2-46e8-9791-2da83ab38e60','54f83b49-1a17-43df-8ea7-0ead4c123a6b','e102fa6f-a06b-4f30-b4ea-c6b300ca4ca1'),
('acf4fc81-deaa-4841-81c6-2ef7457f8549','4d844f44-c99c-4012-8fd6-ca64f499b836','e102fa6f-a06b-4f30-b4ea-c6b300ca4ca1'),
('b1c66518-cd63-45de-bd01-35f09c91c1c4','23804906-5ca1-4620-988a-5efcec1ff0aa','3e3bd5a0-0d4b-42d2-af9f-619d699eb638'),
('c2149e1f-74ff-40ec-8755-37a918301a9e','a7e7aca9-01ed-4fa4-9ea6-1a4604f42a91','7eb3e67f-fff0-4450-9338-e57a862fdd14'),
('3c804900-5b2e-4839-86cd-399ea8e4916e','a7e7aca9-01ed-4fa4-9ea6-1a4604f42a91','3e3bd5a0-0d4b-42d2-af9f-619d699eb638'),
('288c3d87-62b9-4b9f-b8f3-3c42eed24ec7','39ed4aba-2d97-40f1-a067-f4eae260e9df','1870d434-5708-47c8-8492-de9fe4640f97'),
('cdb99153-0f0c-4262-b01d-3d553c68253e','e37361fd-0f8c-42cf-a14e-7faaa74c358c','74003b7d-5803-4f7b-a92f-01267ae520c7'),
('d3409f16-bf1e-40ab-9986-423e2588e65e','e37361fd-0f8c-42cf-a14e-7faaa74c358c','ed9b41c4-cf79-4b11-a6d6-25a4e5bc7da3'),
('2f6f3e77-04cd-4ff5-87c3-471ebc0ccbbc','39ed4aba-2d97-40f1-a067-f4eae260e9df','0ac10e29-9b88-46ce-8ae7-f281b46b5950'),
('891e5259-fbca-4f5e-82ab-475ea59ee1e5','6d2a8d79-8268-49b5-9267-cfa6c6580739','ed9b41c4-cf79-4b11-a6d6-25a4e5bc7da3'),
('52fb09b1-f6d8-437d-854a-4996dbeebfe5','4090387b-91b8-4a38-8b8b-43a9634a2f2a','4b4cf248-d4e5-4ac2-98e1-d3e3d381f321'),
('3cbc9fb5-fee6-420d-9136-4a75bfd9e958','a7e7aca9-01ed-4fa4-9ea6-1a4604f42a91','f9689e7b-03ef-4010-b0ac-89b08cf6d655'),
('1b0b0ae6-9882-4d7a-8240-4c571d9629f7','6d2a8d79-8268-49b5-9267-cfa6c6580739','548e875c-d6e5-4ee4-a858-a1dc8ff55729'),
('74f3e176-2ff2-45dc-8809-4e58a326d084','40ea338a-cff4-448a-9295-afd3160d6aa4','847c6dd7-0cdf-436b-8d6b-cd58b81aecf5'),
('7c744a76-aa23-4750-92d6-4f1a7ec6c8d9','d7d0c919-3fb6-49df-9d63-b2341b86ff92','065ed134-bbfa-4dd6-913c-4306950cfde1'),
('73969dd8-7ef5-4e52-a67f-4f3c154b103d','15e0c266-9b9d-408d-8e5a-70493b1385b7','c6feb136-1169-4cec-bfa8-206552a141c3'),
('cea8dcf7-01e9-4b93-8fc8-50b583b63a8b','d7d0c919-3fb6-49df-9d63-b2341b86ff92','d3cd163f-511a-4ea7-bb19-fc4a1fcd4cf6'),
('a59772d7-555e-468f-bf4d-533403850e61','504e977a-5ff3-4960-b066-3143e3881753','0d25dc46-81ee-4483-aa1e-f2ff44e01e68'),
('32057f7b-4182-485a-9666-53ef1e827121','0f9992ca-43c6-4b47-8a15-ee4a9c01ec74','6b5dd82d-6563-43e8-a49c-7de8ce38aa6d'),
('dde95631-8d81-4d7a-b5a4-55f7542b1732','f2e76021-0111-4cbd-93dd-3aa1f51e0d11','e102fa6f-a06b-4f30-b4ea-c6b300ca4ca1'),
('29c35444-c7be-49b9-9770-5ae45119d548','a7e7aca9-01ed-4fa4-9ea6-1a4604f42a91','b27323e2-a0d8-40a9-a4f3-bbc9e0b2976c'),
('3662c16e-5757-49c9-b119-5cfb70a58ad0','67855305-5216-4352-a340-47cd0de6cb73','f807f084-87e7-495a-8b52-e63e4ff0c9a1'),
('334e4cd1-e148-40ad-84dd-61c621685867','67855305-5216-4352-a340-47cd0de6cb73','116c333e-0be2-4c11-b794-fb14ced48eec'),
('36339214-15b2-421c-a268-62134651137c','a3691f68-3773-48e3-89a6-6ae6cd97bca3','ca41f48e-7cf8-47dc-a764-b01563390728'),
('b6dcfe1b-aa86-4dc5-8b93-6220a27e3a67','6d2a8d79-8268-49b5-9267-cfa6c6580739','548e875c-d6e5-4ee4-a858-a1dc8ff55729'),
('7981fc37-2f12-4faa-a635-67cfe70ecbf9','39ed4aba-2d97-40f1-a067-f4eae260e9df','065ed134-bbfa-4dd6-913c-4306950cfde1'),
('5afab5a7-f0d9-4f9c-a37e-68210fba8102','67855305-5216-4352-a340-47cd0de6cb73','65fed12d-09fd-4eee-afb3-619cba2994ed'),
('1de770d1-17a3-4a30-a5ab-68449cdd056d','54f83b49-1a17-43df-8ea7-0ead4c123a6b','eb13ea16-7f36-4610-86c3-f3916df40ff5'),
('744e33e5-85ee-419b-aecc-6ae569584eb5','8b22fb86-ec11-497e-a11e-fd463e1f4c28','065ed134-bbfa-4dd6-913c-4306950cfde1'),
('52eca569-b737-4e60-886c-6bbda2d8487d','504e977a-5ff3-4960-b066-3143e3881753','3e3bd5a0-0d4b-42d2-af9f-619d699eb638'),
('06b65082-23ed-4cff-8ebb-6c2ce37d1eee','23804906-5ca1-4620-988a-5efcec1ff0aa','855fdd4f-5b5b-4ea7-bca6-b56f45733c33'),
('b90b1a75-eecc-4d03-a6ab-6c36f5e066dc','504e977a-5ff3-4960-b066-3143e3881753','7eb3e67f-fff0-4450-9338-e57a862fdd14'),
('6dec5c0a-57fa-4428-9809-6e899dbc6ce8','39ed4aba-2d97-40f1-a067-f4eae260e9df','b27323e2-a0d8-40a9-a4f3-bbc9e0b2976c'),
('539d4917-f7c3-47a4-8284-70ecb365c803','67855305-5216-4352-a340-47cd0de6cb73','065ed134-bbfa-4dd6-913c-4306950cfde1'),
('a30771cc-9959-4b96-9703-7416c64307d9','54f83b49-1a17-43df-8ea7-0ead4c123a6b','855fdd4f-5b5b-4ea7-bca6-b56f45733c33'),
('31fcdca0-c599-4686-8eb4-74643f4e6953','4090387b-91b8-4a38-8b8b-43a9634a2f2a','65fed12d-09fd-4eee-afb3-619cba2994ed'),
('7a4795d6-90ad-411b-b849-7503f96c9852','39ed4aba-2d97-40f1-a067-f4eae260e9df','29f79610-e492-49a1-bdcc-c039c4bd2383'),
('987197b7-4b16-4d8c-a14e-7d29b1444071','15e0c266-9b9d-408d-8e5a-70493b1385b7','74d7adfa-8aef-44de-8897-d5cab244c8e6'),
('ed57c25f-2024-4684-a9e9-803957d3071f','8b22fb86-ec11-497e-a11e-fd463e1f4c28','d3cd163f-511a-4ea7-bb19-fc4a1fcd4cf6'),
('4da550a7-c189-42a3-9d37-82a0905b0517','54f83b49-1a17-43df-8ea7-0ead4c123a6b','e3043019-45a4-4a8c-b35e-340888f58fca'),
('095d0b37-d6e7-4a82-afc9-839ad2cc1ace','504e977a-5ff3-4960-b066-3143e3881753','60f54ec3-8c3f-4ecf-b074-af870f838f34'),
('bd4fea5a-d50e-4aa3-b4ae-8434d8a5cbbc','40ea338a-cff4-448a-9295-afd3160d6aa4','87d3fcf9-3147-4cde-98f8-ce349ead314b'),
('5f1cbdd9-dec6-4c0d-9b95-84f788c9b22c','e37361fd-0f8c-42cf-a14e-7faaa74c358c','987960e2-d45c-47f4-914f-cce2e10f97e2'),
('c25c0bce-c97c-42cf-9079-85697ded3c28','6ab545fd-8ff6-4279-8c00-cd54f46830a0','7eb3e67f-fff0-4450-9338-e57a862fdd14'),
('144d50a2-8ff0-41b3-899a-899a10961e4f','67855305-5216-4352-a340-47cd0de6cb73','ec06cf79-2e5d-4d59-8f44-ee54a4af2ad9'),
('d611b020-f6bc-483b-8ba8-8c166bedd9ab','6ab545fd-8ff6-4279-8c00-cd54f46830a0','e1407db4-38fc-4b20-aa24-5b930274dbc8'),
('73054f0b-45f7-400d-b94f-8d17324f7161','6ab545fd-8ff6-4279-8c00-cd54f46830a0','7eb3e67f-fff0-4450-9338-e57a862fdd14'),
('e19387d6-db00-4e03-a556-8fe65eb33e46','40ea338a-cff4-448a-9295-afd3160d6aa4','f9689e7b-03ef-4010-b0ac-89b08cf6d655'),
('652723cb-0b9e-4017-999e-920ef52bf97d','6d2a8d79-8268-49b5-9267-cfa6c6580739','35f33550-b317-4d28-9d49-3b9c501f03ad'),
('6b80da06-e134-4228-a7df-9866f9bc4a4a','67855305-5216-4352-a340-47cd0de6cb73','e1407db4-38fc-4b20-aa24-5b930274dbc8'),
('316f419c-f0b0-484b-a023-99ae225d39d8','23804906-5ca1-4620-988a-5efcec1ff0aa','60f54ec3-8c3f-4ecf-b074-af870f838f34'),
('1a6e97ce-6c44-4be6-9a30-9b348d0f0d0d','e37361fd-0f8c-42cf-a14e-7faaa74c358c','3e3bd5a0-0d4b-42d2-af9f-619d699eb638'),
('37e0bed6-5162-4ddd-af8b-9e7c73956a8d','d7d0c919-3fb6-49df-9d63-b2341b86ff92','e3043019-45a4-4a8c-b35e-340888f58fca'),
('83672c12-6513-4a16-81ee-a5c912daba1b','54f83b49-1a17-43df-8ea7-0ead4c123a6b','e3043019-45a4-4a8c-b35e-340888f58fca'),
('4b3d85db-2b0f-4971-b623-a943eb43c3da','23804906-5ca1-4620-988a-5efcec1ff0aa','74003b7d-5803-4f7b-a92f-01267ae520c7'),
('c68d11bb-4046-49a6-a51a-aa0651537db5','39ed4aba-2d97-40f1-a067-f4eae260e9df','855fdd4f-5b5b-4ea7-bca6-b56f45733c33'),
('a136b5b9-51a3-4aa4-8aee-aad4b32c38f3','193b3e78-e9a5-4e61-a7f5-9848140dc15c','ca41f48e-7cf8-47dc-a764-b01563390728'),
('81890043-1c26-46c4-bc32-acbdd19519af','4090387b-91b8-4a38-8b8b-43a9634a2f2a','4520d2c0-3f6d-4c5a-aa25-1c0c818b3611'),
('8c23cd01-d4aa-4856-8430-b89392bca4d9','6d2a8d79-8268-49b5-9267-cfa6c6580739','987960e2-d45c-47f4-914f-cce2e10f97e2'),
('5a11c44c-8d52-41a5-b2a6-be04d9fff31f','39ed4aba-2d97-40f1-a067-f4eae260e9df','6145e76a-185f-4261-b645-b9f9883c3d57'),
('8f91062f-0c9d-43be-a4b8-cb41f14d0f67','a3691f68-3773-48e3-89a6-6ae6cd97bca3','74d7adfa-8aef-44de-8897-d5cab244c8e6'),
('069c9455-e028-4b18-8a2b-cf48270248ab','4090387b-91b8-4a38-8b8b-43a9634a2f2a','14d6fd0f-467d-4b14-bc9d-e65e1ed5bdee'),
('31375aff-83e4-4af4-9cb7-cf601e243d9c','6ab545fd-8ff6-4279-8c00-cd54f46830a0','ca41f48e-7cf8-47dc-a764-b01563390728'),
('a8659364-ed7c-42f0-b694-d0d94c36e0ed','67855305-5216-4352-a340-47cd0de6cb73','3e3bd5a0-0d4b-42d2-af9f-619d699eb638'),
('2374a0d8-1574-4b0c-9db3-d2c627495a60','193b3e78-e9a5-4e61-a7f5-9848140dc15c','d3cd163f-511a-4ea7-bb19-fc4a1fcd4cf6'),
('17c130b8-ed53-4b01-864f-d42e7efe8102','d7d0c919-3fb6-49df-9d63-b2341b86ff92','ba2d99e4-487d-4409-8f77-ba25d0efe185'),
('0c734f4c-63d7-48f4-9a8c-d80337553062','504e977a-5ff3-4960-b066-3143e3881753','67b49d75-50db-4c77-b5c8-0ee5e2fb7fdb'),
('5594c51d-e6ad-4259-ae3d-de8e5b683797','a3691f68-3773-48e3-89a6-6ae6cd97bca3','c69bcedb-4107-4790-8222-9a66fc2c197f'),
('e4bb2a55-b5e8-4da4-b3a9-dfa9bf31c807','8995b8e2-f6c7-4749-8aef-4304ed5daf5b','6b5dd82d-6563-43e8-a49c-7de8ce38aa6d'),
('6772bfa1-363d-401e-b23a-e169e1033000','0f9992ca-43c6-4b47-8a15-ee4a9c01ec74','8bac8ee6-6cfd-4715-82f4-6b1afc3c5a16'),
('0ae3aa04-e983-42f0-9055-e4980187f642','54f83b49-1a17-43df-8ea7-0ead4c123a6b','3e3bd5a0-0d4b-42d2-af9f-619d699eb638'),
('23fe3754-7024-4d7a-ad16-efa2ade1a2da','a7e7aca9-01ed-4fa4-9ea6-1a4604f42a91','87d3fcf9-3147-4cde-98f8-ce349ead314b'),
('1b8286ae-8bfc-4eda-b379-f1602ec70447','40ea338a-cff4-448a-9295-afd3160d6aa4','e3043019-45a4-4a8c-b35e-340888f58fca'),
('7d91828e-8587-4900-8856-f30d4a6d09d7','e37361fd-0f8c-42cf-a14e-7faaa74c358c','847c6dd7-0cdf-436b-8d6b-cd58b81aecf5'),
('bb1e7f2a-f1cb-4635-ad7d-f74fc527cc4b','0f9992ca-43c6-4b47-8a15-ee4a9c01ec74','ba2d99e4-487d-4409-8f77-ba25d0efe185');
/*!40000 ALTER TABLE `bekerja` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Table structure for table `departemen`
--

DROP TABLE IF EXISTS `departemen`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `departemen` (
  `id` uuid NOT NULL DEFAULT uuid(),
  `nama` varchar(100) NOT NULL,
  `gedung` varchar(100) NOT NULL,
  `rumah_sakit_id` uuid NOT NULL,
  PRIMARY KEY (`id`),
  KEY `rumah_sakit_id` (`rumah_sakit_id`),
  CONSTRAINT `departemen_ibfk_1` FOREIGN KEY (`rumah_sakit_id`) REFERENCES `rumah_sakit` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `departemen`
--

LOCK TABLES `departemen` WRITE;
/*!40000 ALTER TABLE `departemen` DISABLE KEYS */;
set autocommit=0;
INSERT INTO `departemen` VALUES
('f6ffe04b-0bcb-4bba-bb55-004074393ede','Nemo Department','D','509c5cdb-efee-48f0-a712-3dbe3c7cc3c7'),
('74003b7d-5803-4f7b-a92f-01267ae520c7','Porro Department','C','f81303c5-6de4-407f-aaf0-91d416b8745f'),
('f87895c2-fc8e-46ca-857c-0677b7ecb835','Harum Department','B','f81303c5-6de4-407f-aaf0-91d416b8745f'),
('67b49d75-50db-4c77-b5c8-0ee5e2fb7fdb','Ex Department','D','8382a98d-1113-47f6-8bf0-ae2b4524a639'),
('a5616297-ba02-4372-8e63-1b665b182939','Eveniet Department','A','6541dee4-ac5e-44aa-aa59-4183c9048434'),
('4520d2c0-3f6d-4c5a-aa25-1c0c818b3611','Modi Department','D','509c5cdb-efee-48f0-a712-3dbe3c7cc3c7'),
('c6feb136-1169-4cec-bfa8-206552a141c3','Autem Department','E','cfee9477-2b16-4f47-a476-05442a8e96a4'),
('e7cd02e0-e2ad-4f80-827c-255803c8d65b','Aspernatur Department','E','6541dee4-ac5e-44aa-aa59-4183c9048434'),
('ed9b41c4-cf79-4b11-a6d6-25a4e5bc7da3','Assumenda Department','D','16a34eb7-93ae-49eb-a1ab-33951089655d'),
('e3043019-45a4-4a8c-b35e-340888f58fca','Ducimus Department','D','8b1dfb1a-2167-4c8c-ab1f-d133100082c4'),
('35f33550-b317-4d28-9d49-3b9c501f03ad','Expedita Department','E','343734db-866f-4ecc-83ec-bdcc61493ec3'),
('065ed134-bbfa-4dd6-913c-4306950cfde1','Quo Department','D','795fcd0d-84e0-482d-a652-8ed5ba4f605c'),
('d1a322f6-1fd9-4d1b-84ff-53d2486afd4e','Ipsa Department','D','84c411aa-a720-411a-ac8b-1eff341e16c2'),
('e1407db4-38fc-4b20-aa24-5b930274dbc8','Repellendus Department','D','16a34eb7-93ae-49eb-a1ab-33951089655d'),
('65fed12d-09fd-4eee-afb3-619cba2994ed','Eveniet Department','C','89086a20-5211-4120-8a9b-c0e17a2647da'),
('3e3bd5a0-0d4b-42d2-af9f-619d699eb638','Explicabo Department','B','cd1c24b4-fe8d-4bcb-864a-00fb85058165'),
('8bac8ee6-6cfd-4715-82f4-6b1afc3c5a16','Sapiente Department','C','795fcd0d-84e0-482d-a652-8ed5ba4f605c'),
('76616417-fb56-4977-915a-7a340bc0bc45','Saepe Department','A','343734db-866f-4ecc-83ec-bdcc61493ec3'),
('6b5dd82d-6563-43e8-a49c-7de8ce38aa6d','Modi Department','B','cd1c24b4-fe8d-4bcb-864a-00fb85058165'),
('f9689e7b-03ef-4010-b0ac-89b08cf6d655','Quia Department','D','6014e5a9-ef04-4ad8-b110-3fdb588054c2'),
('7964645f-b637-4489-9d15-8d1a20fa4bed','Ab Department','B','16a34eb7-93ae-49eb-a1ab-33951089655d'),
('3741e35f-4b94-4067-998d-928020c1aa55','Id Department','D','cd1c24b4-fe8d-4bcb-864a-00fb85058165'),
('c69bcedb-4107-4790-8222-9a66fc2c197f','Ut Department','E','6541dee4-ac5e-44aa-aa59-4183c9048434'),
('548e875c-d6e5-4ee4-a858-a1dc8ff55729','Necessitatibus Department','D','d53aea05-c5d8-4a5f-9a42-26c53c7c4723'),
('187b06be-25e4-4ab0-9a5a-a2cd4bba5d18','Est Department','B','509c5cdb-efee-48f0-a712-3dbe3c7cc3c7'),
('60f54ec3-8c3f-4ecf-b074-af870f838f34','Iure Department','A','84c411aa-a720-411a-ac8b-1eff341e16c2'),
('ca41f48e-7cf8-47dc-a764-b01563390728','Harum Department','B','cd1c24b4-fe8d-4bcb-864a-00fb85058165'),
('855fdd4f-5b5b-4ea7-bca6-b56f45733c33','Culpa Department','A','8b1dfb1a-2167-4c8c-ab1f-d133100082c4'),
('2f311376-e104-4b94-b0d3-b84825ae00c7','Recusandae Department','C','cfee9477-2b16-4f47-a476-05442a8e96a4'),
('6145e76a-185f-4261-b645-b9f9883c3d57','Non Department','B','857d7aad-9153-4e39-832b-24695257d1ab'),
('ba2d99e4-487d-4409-8f77-ba25d0efe185','Dolor Department','B','6014e5a9-ef04-4ad8-b110-3fdb588054c2'),
('99cdb4f5-347b-44f5-a235-bb21a992eedd','Esse Department','B','16a34eb7-93ae-49eb-a1ab-33951089655d'),
('b27323e2-a0d8-40a9-a4f3-bbc9e0b2976c','Impedit Department','B','d53aea05-c5d8-4a5f-9a42-26c53c7c4723'),
('29f79610-e492-49a1-bdcc-c039c4bd2383','Ex Department','C','89086a20-5211-4120-8a9b-c0e17a2647da'),
('e102fa6f-a06b-4f30-b4ea-c6b300ca4ca1','Dicta Department','A','16a34eb7-93ae-49eb-a1ab-33951089655d'),
('987960e2-d45c-47f4-914f-cce2e10f97e2','Suscipit Department','E','343734db-866f-4ecc-83ec-bdcc61493ec3'),
('847c6dd7-0cdf-436b-8d6b-cd58b81aecf5','Non Department','A','343734db-866f-4ecc-83ec-bdcc61493ec3'),
('87d3fcf9-3147-4cde-98f8-ce349ead314b','Repellendus Department','B','857d7aad-9153-4e39-832b-24695257d1ab'),
('4b4cf248-d4e5-4ac2-98e1-d3e3d381f321','Sapiente Department','C','343734db-866f-4ecc-83ec-bdcc61493ec3'),
('74d7adfa-8aef-44de-8897-d5cab244c8e6','Facere Department','D','795fcd0d-84e0-482d-a652-8ed5ba4f605c'),
('1870d434-5708-47c8-8492-de9fe4640f97','Occaecati Department','B','795fcd0d-84e0-482d-a652-8ed5ba4f605c'),
('7eb3e67f-fff0-4450-9338-e57a862fdd14','Ad Department','D','d53aea05-c5d8-4a5f-9a42-26c53c7c4723'),
('f807f084-87e7-495a-8b52-e63e4ff0c9a1','Consequuntur Department','B','cfee9477-2b16-4f47-a476-05442a8e96a4'),
('14d6fd0f-467d-4b14-bc9d-e65e1ed5bdee','Expedita Department','A','6f72292a-c3ef-4550-ac96-e7d561ad8756'),
('ec06cf79-2e5d-4d59-8f44-ee54a4af2ad9','Assumenda Department','C','84c411aa-a720-411a-ac8b-1eff341e16c2'),
('0ac10e29-9b88-46ce-8ae7-f281b46b5950','Reprehenderit Department','D','6014e5a9-ef04-4ad8-b110-3fdb588054c2'),
('0d25dc46-81ee-4483-aa1e-f2ff44e01e68','Harum Department','C','cfee9477-2b16-4f47-a476-05442a8e96a4'),
('eb13ea16-7f36-4610-86c3-f3916df40ff5','Quis Department','B','509c5cdb-efee-48f0-a712-3dbe3c7cc3c7'),
('116c333e-0be2-4c11-b794-fb14ced48eec','Occaecati Department','E','b6d9bbf8-121d-4c3e-996d-956b7744ce6c'),
('d3cd163f-511a-4ea7-bb19-fc4a1fcd4cf6','Consequuntur Department','D','89086a20-5211-4120-8a9b-c0e17a2647da');
/*!40000 ALTER TABLE `departemen` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Table structure for table `dipesan`
--

DROP TABLE IF EXISTS `dipesan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `dipesan` (
  `id` uuid NOT NULL DEFAULT uuid(),
  `jumlah` int(11) NOT NULL,
  `pemesanan_obat_id` uuid NOT NULL,
  `obat_id` uuid NOT NULL,
  PRIMARY KEY (`id`),
  KEY `pemesanan_obat_id` (`pemesanan_obat_id`),
  KEY `obat_id` (`obat_id`),
  CONSTRAINT `dipesan_ibfk_1` FOREIGN KEY (`pemesanan_obat_id`) REFERENCES `pemesanan_obat` (`id`),
  CONSTRAINT `dipesan_ibfk_2` FOREIGN KEY (`obat_id`) REFERENCES `obat` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dipesan`
--

LOCK TABLES `dipesan` WRITE;
/*!40000 ALTER TABLE `dipesan` DISABLE KEYS */;
set autocommit=0;
INSERT INTO `dipesan` VALUES
('3f27d9ef-04f3-4b07-97ed-0252baebc203',9,'2b326b78-c1d0-4551-be06-f596632c0a7e','0c37d8bf-4322-4c55-8250-d0ddfc35c36e'),
('1e122b0e-f04c-41a6-9550-04399d9fe2f4',10,'dd367b72-dfc7-4e39-96da-cbab63db3609','5214c9b0-411c-482e-a5ef-f317299e33e1'),
('e36d142f-8f3a-4f97-ad29-07c998f09f75',4,'0b3d19e6-dbd5-4da4-8a55-713527b0e411','ec02bfe7-0f0a-4f37-8a21-dff4e3789cab'),
('b32c9e14-faee-44de-9466-0900d034b362',1,'edfbfe83-4650-41c1-bec4-3bb4e64d9cb0','fc3be195-7032-4966-80d2-2d7cb6eb8997'),
('d447f586-27c5-4453-9076-0f07e9ef8bc5',8,'00c1eee7-31d5-4d59-aec3-e35151040f88','41213eb6-3f64-4820-81da-b018688fd18f'),
('48e728d1-6be7-4168-b8c3-135280dd3941',4,'3316b63c-1d3b-47a8-a77c-b2ac0a44b827','8ef609b0-e0a5-4d6a-bcb5-920c814bd956'),
('55e91ec2-33f9-42e9-b621-158d9f38088e',5,'5da13c5d-b0c6-4f30-94b7-03f1100cedb5','0c37d8bf-4322-4c55-8250-d0ddfc35c36e'),
('62d223b2-1b8e-4fbb-84f3-15a30e480cff',6,'b33965d9-a600-4325-90ea-1e0f473d0ca8','5214c9b0-411c-482e-a5ef-f317299e33e1'),
('a699ad6e-5197-44c1-9e39-176337b9fb10',4,'ac4d1a4b-93f6-405e-a188-20139913df5e','2d2149b2-ea14-4408-95e6-57fb065176b3'),
('9bc4443b-5152-4554-934f-1b2ec50e846f',5,'a28a7951-5919-4ec7-8de9-a4bd4f8cc7d9','15adb03d-97ff-499f-a59b-8c177495aa0c'),
('e484eee3-ce09-46ea-bfb9-1b638807ceee',8,'f0ddeda2-4408-4533-b841-f8cd51881a51','c27e7307-76e6-4026-9301-70179cacbb72'),
('a4499a51-1f20-4f5a-8690-1e3574e9933c',2,'81e32cef-ed3f-4b61-a003-90d337ab7453','fc3be195-7032-4966-80d2-2d7cb6eb8997'),
('c52089f6-b841-4560-b816-1f09cea2ab5d',2,'16267f43-6315-4888-b810-25416e840aaf','fedf477c-5830-40db-a227-1509cce5a3b6'),
('883a5d33-13f6-4a81-aba8-1f9e7010889a',4,'a34893dc-af94-4fb0-b1c3-26b09c834abf','fedf477c-5830-40db-a227-1509cce5a3b6'),
('61b391c1-994a-48c2-bfa2-206824e64ae4',4,'f71d81c2-fba1-4a60-93a6-a7f9f2c32bde','15adb03d-97ff-499f-a59b-8c177495aa0c'),
('4b30d233-4183-41fd-9444-21bc6efe9cdf',6,'21ef67ce-2c03-46e6-94b9-838e6caf3f52','ec02bfe7-0f0a-4f37-8a21-dff4e3789cab'),
('4c3b2005-3591-4ec9-8bda-242ba947a611',9,'883f9817-d9f6-4cea-850d-7f66506d9d84','55d8b45d-0f9c-4bf6-a200-328ec4a71c7f'),
('23c20bc7-335c-4b45-8de4-25cac94136fe',7,'57b702ad-314f-423f-b95d-8e6539b959bb','5214c9b0-411c-482e-a5ef-f317299e33e1'),
('79de0589-ed44-409c-bdaf-260b31303d01',6,'f0e4bdb2-dc9b-4910-a766-4bb04410d18b','fedf477c-5830-40db-a227-1509cce5a3b6'),
('36a43cfc-0783-45c7-bba9-264006a15d33',2,'687462f3-bad7-4db6-80b4-f57340f09319','fedf477c-5830-40db-a227-1509cce5a3b6'),
('48ca36ad-6521-4b05-8976-297659de6146',1,'441c8f66-dece-4146-adac-94035fba8f9d','46ed1d40-3872-4d55-b060-9306548e79b2'),
('3b8b0a39-fdd2-4140-b5f4-2a3ccaa18630',7,'5da13c5d-b0c6-4f30-94b7-03f1100cedb5','41213eb6-3f64-4820-81da-b018688fd18f'),
('3930f5d8-e97f-48ec-ac3f-2abf57905bc4',3,'224d354d-cc27-49f0-acf6-1f42ab36d3b0','39abe7f2-a0bc-44b2-9725-f9abbff9e330'),
('7df7aabb-1fc7-4ceb-b202-2e66c574b50e',8,'71d4b353-3836-4ada-8c69-62d877106582','fedf477c-5830-40db-a227-1509cce5a3b6'),
('d6db282a-3f80-40c8-b9f6-314645ecdd90',10,'9bd63a36-8dde-4ac4-a191-fd17dafd19bd','8ef609b0-e0a5-4d6a-bcb5-920c814bd956'),
('27d245f4-9557-4780-9510-31ea6b1873b1',4,'c0726f03-35a9-4cb6-8a8e-801a125cd05d','8ef609b0-e0a5-4d6a-bcb5-920c814bd956'),
('e8de731d-fa6d-46bb-9b92-33acbf6fe115',2,'319a66c4-38d9-4fb5-9943-350b4a683fde','d872c37f-2822-4c6f-93d7-8f747e114645'),
('952c7628-c59b-4248-8bab-35eeac17eb63',5,'30520451-ac52-4346-b26d-c2914af47b0d','41213eb6-3f64-4820-81da-b018688fd18f'),
('24dd9a47-82f9-48fd-a88a-37bb12eadaac',1,'7046a163-a4a9-4a97-9ebc-b6a923feb1f2','fc3be195-7032-4966-80d2-2d7cb6eb8997'),
('0aae9fb6-6ad7-4413-aeb4-385c01e7a797',5,'95846aaf-f65b-4d91-a2cc-987352f80ab8','8ef609b0-e0a5-4d6a-bcb5-920c814bd956'),
('c2df3a5d-a3bf-4f42-be58-385cae36301d',6,'1b856017-0f0c-4517-a992-90f1b4f3fea6','c27e7307-76e6-4026-9301-70179cacbb72'),
('bf0a5f1f-19a6-4dcf-a01e-38ab3de0976c',3,'dee8571b-7141-4eea-a042-5579e65af806','fedf477c-5830-40db-a227-1509cce5a3b6'),
('a5af5fe9-694a-448f-95fe-3fe8eda14677',9,'30520451-ac52-4346-b26d-c2914af47b0d','b6ff30c1-5560-4469-85d9-124f63a52f25'),
('b9f09f82-65a3-4adc-903e-41a8a1c31d7d',3,'509d277e-5bde-4398-a52f-6cfc98dc7e15','15adb03d-97ff-499f-a59b-8c177495aa0c'),
('f7bb0e5b-01df-4997-bd42-42b3cc332085',8,'687462f3-bad7-4db6-80b4-f57340f09319','56c47aa9-0836-4c89-acdf-c00965e83ad4'),
('d4de83e3-9104-4c01-bb8e-44027a86b675',9,'0376a34c-bab9-4fc9-97ae-027466e2ec97','d5538452-9087-42ff-a72b-24590b4bd7e7'),
('8b5b79f1-b136-4631-a0c7-48fcb1660af1',1,'441c8f66-dece-4146-adac-94035fba8f9d','0c37d8bf-4322-4c55-8250-d0ddfc35c36e'),
('5875ebef-9c7b-4827-9be1-4c2b5d231098',1,'414a49bc-73ed-47a7-a640-829e9969f27d','41213eb6-3f64-4820-81da-b018688fd18f'),
('8f72a11e-afa4-4c8a-ab3a-4e86380565af',1,'4eab9e9c-2151-49fb-87f0-39eddbd98ae9','d872c37f-2822-4c6f-93d7-8f747e114645'),
('6cd074bb-986d-422c-8ac8-504819109d0b',1,'94d42eb6-8884-4bab-a3d5-43e38d835e85','41213eb6-3f64-4820-81da-b018688fd18f'),
('f4326a8e-e9fb-4184-bd67-52a5d6eef5c8',2,'b3a0131b-47ab-4ee6-baf2-481e75d67a8f','2d2149b2-ea14-4408-95e6-57fb065176b3'),
('30bca32d-9502-444d-921a-5323ae67cf55',8,'67bce88f-6996-46c8-b82e-691c7af90495','5214c9b0-411c-482e-a5ef-f317299e33e1'),
('6b5d620e-0a32-41c7-9d83-55db5b7289e6',6,'d72c78cb-7160-4a90-a31d-a0144b1f2e04','d872c37f-2822-4c6f-93d7-8f747e114645'),
('592bee3d-3b20-4d3c-a42e-560e0a143b99',10,'1512d10b-6ffd-4f42-a781-3e7fd65128a5','56c47aa9-0836-4c89-acdf-c00965e83ad4'),
('4882a52d-9ede-416d-a481-5aa6424ddd14',5,'f0e4bdb2-dc9b-4910-a766-4bb04410d18b','8ef609b0-e0a5-4d6a-bcb5-920c814bd956'),
('b99f8910-fd7e-4f61-96ba-5e17b2464fe4',8,'319a66c4-38d9-4fb5-9943-350b4a683fde','5214c9b0-411c-482e-a5ef-f317299e33e1'),
('6b1b7106-eec9-4b39-85c0-5f1104805e47',1,'319a66c4-38d9-4fb5-9943-350b4a683fde','fedf477c-5830-40db-a227-1509cce5a3b6'),
('e21fbdfe-4453-48a8-b63d-631da5e4a4bc',1,'6c4ad3c1-54ff-4a96-b656-ea747352c445','c27e7307-76e6-4026-9301-70179cacbb72'),
('592f31d3-8b74-4aec-ba73-6322325d9007',9,'88b36bc2-64b5-4664-b4dc-2880daa223e4','8ef609b0-e0a5-4d6a-bcb5-920c814bd956'),
('50be8efd-e4c4-417b-9a69-639c4b245648',9,'7046a163-a4a9-4a97-9ebc-b6a923feb1f2','56c47aa9-0836-4c89-acdf-c00965e83ad4'),
('431b727e-9fd6-4e0b-9de8-6474ea785d38',7,'eadfc0c5-2d12-4bbd-afb7-70e5c1be8f6c','2d2149b2-ea14-4408-95e6-57fb065176b3'),
('ba286ed7-5d7c-4f25-90fc-6610df129735',2,'94d42eb6-8884-4bab-a3d5-43e38d835e85','56c47aa9-0836-4c89-acdf-c00965e83ad4'),
('cb09bc97-b520-48bf-a6ac-674c482e12d3',2,'52058bf7-0713-4d5d-9a6e-622bae564690','46ed1d40-3872-4d55-b060-9306548e79b2'),
('72ea6813-d23c-4247-85fd-680ca203a4e7',7,'a57f0908-3ad5-4621-9c79-118981be3a61','2d2149b2-ea14-4408-95e6-57fb065176b3'),
('5439cfde-c990-443a-9877-6a1acaa921c6',9,'77865550-d265-4a2c-9331-07b9b321dce9','56c47aa9-0836-4c89-acdf-c00965e83ad4'),
('f1a54504-36b3-41d0-84f2-6a88185d8e35',5,'7046a163-a4a9-4a97-9ebc-b6a923feb1f2','0c37d8bf-4322-4c55-8250-d0ddfc35c36e'),
('17045517-6a1a-4b25-b29f-74dd30a6c68e',9,'d77f743d-2eec-47b6-a113-d832f86148b9','56c47aa9-0836-4c89-acdf-c00965e83ad4'),
('aa4ee6ea-a8cf-4508-aabe-761108810712',7,'eadfc0c5-2d12-4bbd-afb7-70e5c1be8f6c','27e86b75-c355-4b60-bd31-1f7b4a2dfe36'),
('d2e26e28-3786-4958-93c6-7adbadbc7fe0',5,'7046a163-a4a9-4a97-9ebc-b6a923feb1f2','41213eb6-3f64-4820-81da-b018688fd18f'),
('4e455944-5474-48de-844a-80c4666777ac',3,'319a66c4-38d9-4fb5-9943-350b4a683fde','46ed1d40-3872-4d55-b060-9306548e79b2'),
('26a76a89-d8ca-4f6d-b70b-81e4f0b15fde',1,'b3a0131b-47ab-4ee6-baf2-481e75d67a8f','27e86b75-c355-4b60-bd31-1f7b4a2dfe36'),
('111e94da-f3e9-44aa-8d22-883923ac53a4',4,'eadfc0c5-2d12-4bbd-afb7-70e5c1be8f6c','55d8b45d-0f9c-4bf6-a200-328ec4a71c7f'),
('7c042d6b-a15a-4ad0-ba21-8a14f9c1859e',6,'88b36bc2-64b5-4664-b4dc-2880daa223e4','55d8b45d-0f9c-4bf6-a200-328ec4a71c7f'),
('2af9cd29-38ce-40da-8765-8ab18bfb5a43',4,'102bf6fe-30a8-4c56-bd4f-8b84f9770a0a','c27e7307-76e6-4026-9301-70179cacbb72'),
('a3aba105-5771-44c2-b60b-8cd560da3563',4,'eadfc0c5-2d12-4bbd-afb7-70e5c1be8f6c','56c47aa9-0836-4c89-acdf-c00965e83ad4'),
('474e0d83-f7d7-48e6-b119-8d37a09d76b7',4,'eadfc0c5-2d12-4bbd-afb7-70e5c1be8f6c','56c47aa9-0836-4c89-acdf-c00965e83ad4'),
('c15feda0-a1e6-4f85-b02e-92a6c60314ab',3,'f0e4bdb2-dc9b-4910-a766-4bb04410d18b','0c37d8bf-4322-4c55-8250-d0ddfc35c36e'),
('80d81fc5-2a6c-4272-9bcb-9509bccb86fe',4,'0376a34c-bab9-4fc9-97ae-027466e2ec97','a363f6bd-ccd1-490c-8fcc-1f80ce389e5e'),
('0a376142-f108-4fd1-bc67-97473727bba3',1,'7046a163-a4a9-4a97-9ebc-b6a923feb1f2','d872c37f-2822-4c6f-93d7-8f747e114645'),
('c1339cf9-dbb4-4911-9aac-9bb975ce37fb',7,'f0e4bdb2-dc9b-4910-a766-4bb04410d18b','c27e7307-76e6-4026-9301-70179cacbb72'),
('8ef5c99b-f4b0-41b2-b9fa-9ec83d57b9e1',7,'ea75b4e3-71eb-4b3c-9f34-84a2a3768d37','fedf477c-5830-40db-a227-1509cce5a3b6'),
('bb1f975a-0104-4674-8d2f-9ed32cfebb2a',8,'6f275f35-2350-4ca5-80f6-2eec2382fccb','ec02bfe7-0f0a-4f37-8a21-dff4e3789cab'),
('6c109e5d-36c8-40d0-9781-9f2d48b2e101',6,'b823bdb7-220b-4967-9e32-ac702cad42b3','39abe7f2-a0bc-44b2-9725-f9abbff9e330'),
('95072c20-2a87-47d0-8ad0-a6ec0a2621ee',4,'0376a34c-bab9-4fc9-97ae-027466e2ec97','15adb03d-97ff-499f-a59b-8c177495aa0c'),
('2d39d890-9578-434f-80c9-a8f7bc824823',8,'90505c3d-f417-4915-bd4d-5f164cf1d3d7','27e86b75-c355-4b60-bd31-1f7b4a2dfe36'),
('d3f25d0c-d030-40b8-95d5-ac23d5da9e6f',7,'77865550-d265-4a2c-9331-07b9b321dce9','27e86b75-c355-4b60-bd31-1f7b4a2dfe36'),
('b6ec80bc-8cc5-44c0-8757-b0e492857888',9,'178bfad7-4c6f-42e0-9765-a5df827f52c3','27e86b75-c355-4b60-bd31-1f7b4a2dfe36'),
('0bd2d1aa-77f2-4fb1-b163-b19719ac37c6',1,'c12aa9eb-46bb-44ed-9a71-2b918eb3735c','fedf477c-5830-40db-a227-1509cce5a3b6'),
('9c88d470-4527-4802-b12f-b1b0437a2a3e',7,'0b3d19e6-dbd5-4da4-8a55-713527b0e411','5214c9b0-411c-482e-a5ef-f317299e33e1'),
('c05614e3-a071-4307-8084-b47602c149d2',4,'c16bb3a3-6915-4a38-be5e-c8c6ac8c5559','55d8b45d-0f9c-4bf6-a200-328ec4a71c7f'),
('7c4388a2-5690-4791-91b2-b7a69dcc1ab1',5,'69744905-75fc-4d46-aecd-479a60996950','fedf477c-5830-40db-a227-1509cce5a3b6'),
('c7b2895b-74c0-479c-9080-ba81f63172b2',8,'c0726f03-35a9-4cb6-8a8e-801a125cd05d','27e86b75-c355-4b60-bd31-1f7b4a2dfe36'),
('7878cc9b-55e7-4ea9-a4a6-bbd4559b3f84',5,'95846aaf-f65b-4d91-a2cc-987352f80ab8','fedf477c-5830-40db-a227-1509cce5a3b6'),
('b4f8df5a-e35f-44c7-9c74-c0423062dd70',6,'5da13c5d-b0c6-4f30-94b7-03f1100cedb5','41213eb6-3f64-4820-81da-b018688fd18f'),
('8887a1e6-9ccf-4fb1-8559-c3f926898cfb',10,'a57f0908-3ad5-4621-9c79-118981be3a61','46ed1d40-3872-4d55-b060-9306548e79b2'),
('96a87c5c-4b5b-4429-930c-c59d07bc36ca',1,'441c8f66-dece-4146-adac-94035fba8f9d','55d8b45d-0f9c-4bf6-a200-328ec4a71c7f'),
('65002007-57dd-489f-b3eb-cb790b6037cf',8,'52058bf7-0713-4d5d-9a6e-622bae564690','8ef609b0-e0a5-4d6a-bcb5-920c814bd956'),
('744b1a80-1e26-4ca9-a409-cd8d05472f1d',5,'5da13c5d-b0c6-4f30-94b7-03f1100cedb5','5214c9b0-411c-482e-a5ef-f317299e33e1'),
('42e5bd85-0f91-4a40-a581-cf65bee6329a',5,'485bf9ba-f8a1-4025-8ede-cc0c34b822e5','b6ff30c1-5560-4469-85d9-124f63a52f25'),
('803a424f-0fba-4979-8225-d00ba0a89484',5,'2b06c7b7-88b5-4016-9575-5e12d3e97282','46ed1d40-3872-4d55-b060-9306548e79b2'),
('c7bc34e7-45b2-400e-b452-d7ed500df161',6,'48f4c776-43e4-4786-9ff8-218b938f340f','5214c9b0-411c-482e-a5ef-f317299e33e1'),
('26bc3b88-1673-4b12-8f2a-db3a4dc197a2',5,'d72c78cb-7160-4a90-a31d-a0144b1f2e04','c27e7307-76e6-4026-9301-70179cacbb72'),
('46291be0-f8be-4b15-9512-dbde9b38bd7d',10,'ffe50336-c7ae-469b-b26a-c94e20f2535d','c27e7307-76e6-4026-9301-70179cacbb72'),
('35c1a46c-c1fb-48e2-a3c9-df4465693508',2,'b68c0e36-6715-4987-801e-6abf9d6619ce','5214c9b0-411c-482e-a5ef-f317299e33e1'),
('01b5ac0a-7c71-4961-ac61-dfb9d856ca3e',4,'441c8f66-dece-4146-adac-94035fba8f9d','8ef609b0-e0a5-4d6a-bcb5-920c814bd956'),
('4ffb4b79-8b41-4e01-96b3-e29ac652906d',1,'30520451-ac52-4346-b26d-c2914af47b0d','b6ff30c1-5560-4469-85d9-124f63a52f25'),
('5f8f97a0-b5d4-405a-9435-e2ced66d1a6b',1,'b33965d9-a600-4325-90ea-1e0f473d0ca8','fc3be195-7032-4966-80d2-2d7cb6eb8997'),
('7d74b8b3-9316-4495-abee-f5dd2d1011f9',1,'6f275f35-2350-4ca5-80f6-2eec2382fccb','0c37d8bf-4322-4c55-8250-d0ddfc35c36e'),
('cfd257ea-edb9-4587-879f-f6678e276f21',2,'67bce88f-6996-46c8-b82e-691c7af90495','56c47aa9-0836-4c89-acdf-c00965e83ad4'),
('b6a69ab1-6eee-4683-be1c-fdb3468e7d56',1,'95846aaf-f65b-4d91-a2cc-987352f80ab8','d872c37f-2822-4c6f-93d7-8f747e114645');
/*!40000 ALTER TABLE `dipesan` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Table structure for table `janji_temu`
--

DROP TABLE IF EXISTS `janji_temu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `janji_temu` (
  `id` uuid NOT NULL DEFAULT uuid(),
  `alasan_konsultasi` varchar(255) NOT NULL,
  `waktu_pelaksanaan` datetime NOT NULL,
  `tenaga_medis_id` uuid NOT NULL,
  `pasien_id` uuid NOT NULL,
  PRIMARY KEY (`id`),
  KEY `tenaga_medis_id` (`tenaga_medis_id`),
  KEY `pasien_id` (`pasien_id`),
  CONSTRAINT `janji_temu_ibfk_1` FOREIGN KEY (`tenaga_medis_id`) REFERENCES `tenaga_medis` (`id`),
  CONSTRAINT `janji_temu_ibfk_2` FOREIGN KEY (`pasien_id`) REFERENCES `pasien` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `janji_temu`
--

LOCK TABLES `janji_temu` WRITE;
/*!40000 ALTER TABLE `janji_temu` DISABLE KEYS */;
set autocommit=0;
INSERT INTO `janji_temu` VALUES
('a2dbb847-3b87-42ff-98c3-0184d22b3391','Odit labore error reiciendis deserunt dicta labore.','2026-04-12 10:08:20','4090387b-91b8-4a38-8b8b-43a9634a2f2a','72f0f95e-e087-4d4b-a04a-b49782eddde6'),
('4aacf6c8-acbc-4b1a-91d1-01f64e895272','Cupiditate amet ut distinctio.','2025-07-11 10:15:40','40ea338a-cff4-448a-9295-afd3160d6aa4','ff6757ec-06de-45c6-b47e-f2bb7b4858e8'),
('44a94f2f-deb5-4fb8-8390-03683e2c75e2','Nisi fugiat itaque eum natus inventore molestias.','2025-11-12 01:00:38','e37361fd-0f8c-42cf-a14e-7faaa74c358c','72f0f95e-e087-4d4b-a04a-b49782eddde6'),
('f5c5b90e-2c0b-4421-98ba-044810242f8f','Corporis maxime dignissimos non explicabo ducimus optio.','2025-12-06 09:01:48','6d2a8d79-8268-49b5-9267-cfa6c6580739','71895757-10fb-4217-a4eb-ed7e94192582'),
('6304d7e5-3f44-4dc2-9da4-055fb077884d','Sit quam sunt praesentium.','2025-11-22 00:31:33','4d844f44-c99c-4012-8fd6-ca64f499b836','83086da0-1925-4372-b223-8b40975a8f02'),
('0ad67896-afe4-4294-8071-060160907ce7','Optio eligendi ipsam ratione.','2025-08-20 19:17:49','4090387b-91b8-4a38-8b8b-43a9634a2f2a','b1e6a427-0737-4eee-8907-37a913a3edfe'),
('1df661ca-117b-49ba-af0f-06ab65ab9103','Unde earum possimus similique ducimus.','2026-05-14 07:16:10','54f83b49-1a17-43df-8ea7-0ead4c123a6b','71895757-10fb-4217-a4eb-ed7e94192582'),
('b49349b3-d4d8-466d-a4d1-07647ecd536e','Nostrum quae ipsam id nulla voluptatum voluptas.','2026-02-24 08:27:28','4d844f44-c99c-4012-8fd6-ca64f499b836','72f0f95e-e087-4d4b-a04a-b49782eddde6'),
('0992db5a-34f7-484c-a5b4-0b123599b423','Soluta itaque quod ipsum at optio.','2025-05-24 09:33:00','504e977a-5ff3-4960-b066-3143e3881753','c82c208f-56e1-44e3-8f8d-89b7f5f5806d'),
('409f2e79-7ade-4d12-b708-0c817f0a02a7','Dolorum corrupti molestiae possimus.','2026-03-16 20:42:07','504e977a-5ff3-4960-b066-3143e3881753','7f186afe-2b0a-44c1-901a-6b2b9de175f5'),
('267afb89-2cbc-4018-b30d-0d6e6261dc1e','Qui assumenda pariatur provident.','2025-10-24 16:30:55','a7e7aca9-01ed-4fa4-9ea6-1a4604f42a91','b55e12e4-6ed1-4dc4-aaad-80cefb461e5f'),
('635e220e-2be0-4ebd-b804-1029de1ed372','Culpa iusto cupiditate mollitia.','2026-02-23 08:16:26','4d844f44-c99c-4012-8fd6-ca64f499b836','ff6757ec-06de-45c6-b47e-f2bb7b4858e8'),
('4c3a7765-5b3e-4ea1-82b3-15eea3c83503','Non tempore quibusdam architecto ratione voluptates sequi omnis.','2025-06-30 06:47:19','0f9992ca-43c6-4b47-8a15-ee4a9c01ec74','a73ad326-95c7-4339-820e-db362df4412b'),
('26f91253-49fb-49b0-b35d-1baf1bbf761a','Necessitatibus eaque dignissimos inventore odit.','2025-11-21 16:18:38','a7e7aca9-01ed-4fa4-9ea6-1a4604f42a91','c8596929-f07d-44bc-83de-aa4078bdb6fd'),
('4c1f3bd9-9825-43bc-81b8-1f7650c5c1a7','Officia modi cumque.','2025-08-08 03:50:36','e37361fd-0f8c-42cf-a14e-7faaa74c358c','e9e77078-d313-4ae3-a742-ec7e116fd303'),
('50288fd4-9b99-4ab8-81f0-2445ca6caf4a','At labore exercitationem.','2025-10-28 18:57:29','a3691f68-3773-48e3-89a6-6ae6cd97bca3','83086da0-1925-4372-b223-8b40975a8f02'),
('a6ccf284-8040-4fe8-b4b2-273958f6fb4c','Odio ratione nihil quis quas molestias.','2026-05-13 11:36:56','e37361fd-0f8c-42cf-a14e-7faaa74c358c','a73ad326-95c7-4339-820e-db362df4412b'),
('7d5d8792-0975-4ff5-9d75-2d5af215e527','Quas nisi voluptatem excepturi.','2025-08-19 10:16:51','40ea338a-cff4-448a-9295-afd3160d6aa4','7d918b95-58d0-4e71-b459-ed19cd24ec17'),
('38a79946-df26-439b-ad6a-2de7574dbf60','Expedita provident blanditiis eos accusamus eos corrupti consequatur.','2025-11-10 08:39:56','8b22fb86-ec11-497e-a11e-fd463e1f4c28','ff6757ec-06de-45c6-b47e-f2bb7b4858e8'),
('2f73d328-1467-41ae-b4dc-2e5696e614f5','Numquam error laborum.','2025-11-19 08:26:53','67855305-5216-4352-a340-47cd0de6cb73','b1e6a427-0737-4eee-8907-37a913a3edfe'),
('bac64d75-3ea9-416b-b133-307b44b3922b','Numquam officiis in deserunt quod voluptatem architecto.','2025-09-19 00:33:53','54f83b49-1a17-43df-8ea7-0ead4c123a6b','0908ed3b-f84b-4956-a147-f5bb2ca04afa'),
('23c52e42-bf0b-4528-90e7-31782d052882','Eveniet fugit ipsum neque.','2026-03-15 16:07:11','4d844f44-c99c-4012-8fd6-ca64f499b836','0908ed3b-f84b-4956-a147-f5bb2ca04afa'),
('e6297f13-3712-4137-954f-31c3fe9304f0','Optio minima delectus.','2026-04-03 10:25:46','6d2a8d79-8268-49b5-9267-cfa6c6580739','9f340e66-094d-4470-b4d9-0efdf5bb9026'),
('303ea4af-573b-4040-868f-32190b449477','Aut iste quibusdam quos.','2026-04-23 17:25:41','8995b8e2-f6c7-4749-8aef-4304ed5daf5b','0908ed3b-f84b-4956-a147-f5bb2ca04afa'),
('807820c0-583b-4487-9998-35ce3cfb710d','Deleniti beatae pariatur numquam voluptas alias.','2026-04-20 08:19:15','a3691f68-3773-48e3-89a6-6ae6cd97bca3','71895757-10fb-4217-a4eb-ed7e94192582'),
('5f67e04e-cada-4120-afbc-381cafdd7bbf','Aspernatur mollitia rem neque nihil animi exercitationem nostrum.','2025-08-30 12:32:53','54f83b49-1a17-43df-8ea7-0ead4c123a6b','c8596929-f07d-44bc-83de-aa4078bdb6fd'),
('268cb4e9-4e7c-4795-b17b-41b4b3c0cf4f','Quas consequatur reprehenderit quaerat.','2026-01-24 18:32:48','67855305-5216-4352-a340-47cd0de6cb73','9f340e66-094d-4470-b4d9-0efdf5bb9026'),
('8bd2cd24-6330-4c9a-abd3-490db7fda135','Impedit reiciendis soluta repellat iure officia.','2025-12-23 00:37:35','39ed4aba-2d97-40f1-a067-f4eae260e9df','83086da0-1925-4372-b223-8b40975a8f02'),
('70a6edd9-3928-449b-a10a-4c8919a580f6','Quaerat aliquid labore ea nulla.','2025-12-19 11:52:33','67855305-5216-4352-a340-47cd0de6cb73','0908ed3b-f84b-4956-a147-f5bb2ca04afa'),
('3e4d2312-59af-4de0-9ce8-4e1d7dcdcdef','Culpa adipisci occaecati ipsa illo minima odit enim.','2025-10-07 08:32:17','504e977a-5ff3-4960-b066-3143e3881753','a73ad326-95c7-4339-820e-db362df4412b'),
('661accb0-515e-442a-b2d4-51a0130a7e5c','Dolorum impedit adipisci beatae.','2026-01-08 05:33:23','15e0c266-9b9d-408d-8e5a-70493b1385b7','7d918b95-58d0-4e71-b459-ed19cd24ec17'),
('b94447bd-569c-46fe-88ec-51d6eabb7f56','Nihil aliquid illum magni unde temporibus.','2026-03-12 21:25:07','67855305-5216-4352-a340-47cd0de6cb73','e9e77078-d313-4ae3-a742-ec7e116fd303'),
('5f5269c5-b96e-4563-8364-523edd9cc8e6','Ratione eligendi repellendus dicta soluta quia quisquam ipsum.','2026-03-07 03:06:07','54f83b49-1a17-43df-8ea7-0ead4c123a6b','b1e6a427-0737-4eee-8907-37a913a3edfe'),
('8d2f6e63-4d95-4d4b-a6ea-5416d58c4d37','Repudiandae ullam nobis architecto corporis consectetur doloremque.','2025-08-09 16:00:52','a7e7aca9-01ed-4fa4-9ea6-1a4604f42a91','4015ac92-4175-48b1-8e8d-4977ff362906'),
('d0c1e7f7-7a61-4c60-b67b-55c410ee480f','Aperiam culpa doloribus optio magni culpa tenetur.','2026-01-09 05:07:49','e37361fd-0f8c-42cf-a14e-7faaa74c358c','e9e77078-d313-4ae3-a742-ec7e116fd303'),
('9515fc15-c7c9-4a1f-9fca-5828d63aeb92','Veritatis eos architecto ipsa tempore at possimus.','2025-11-07 19:35:47','8b22fb86-ec11-497e-a11e-fd463e1f4c28','5d927fdd-c7f6-4d3f-a459-b0a802dde2ce'),
('837c7b2b-0ded-47db-8a2a-58e41cf0bc43','Ipsa cumque recusandae natus tenetur magni.','2025-12-06 03:58:48','4d844f44-c99c-4012-8fd6-ca64f499b836','4015ac92-4175-48b1-8e8d-4977ff362906'),
('da8d9c67-4de2-4909-b149-59bbc73e82d3','Ipsam fuga eius recusandae sit ullam repudiandae.','2025-11-24 16:48:09','e37361fd-0f8c-42cf-a14e-7faaa74c358c','7d918b95-58d0-4e71-b459-ed19cd24ec17'),
('e2ba5c57-710a-4c74-b6ba-5bf081774e25','Odio veniam quos eius.','2025-11-26 12:53:12','f2e76021-0111-4cbd-93dd-3aa1f51e0d11','7d918b95-58d0-4e71-b459-ed19cd24ec17'),
('98c993c3-7397-4e4a-a812-5ca9e8d76243','Quos dolore adipisci dicta maxime aliquam.','2025-09-25 20:03:53','a7e7aca9-01ed-4fa4-9ea6-1a4604f42a91','b55e12e4-6ed1-4dc4-aaad-80cefb461e5f'),
('9de61f73-188f-4cc3-b212-5d1f0b0ea03f','Dignissimos nihil sapiente commodi quam impedit.','2025-12-13 18:42:42','39ed4aba-2d97-40f1-a067-f4eae260e9df','84e9d669-a532-4dcb-97c4-84360ba86e98'),
('499d9b2c-2958-4e7f-9055-5fcd7d304f27','Non ipsam officia.','2025-12-12 19:27:38','4090387b-91b8-4a38-8b8b-43a9634a2f2a','9f340e66-094d-4470-b4d9-0efdf5bb9026'),
('9403b09b-f37f-491e-800b-6023c3355153','Sint veniam natus.','2025-10-02 09:51:28','6d2a8d79-8268-49b5-9267-cfa6c6580739','a73ad326-95c7-4339-820e-db362df4412b'),
('885ba6e8-36c4-4d5a-9ef5-62f4f2b466e3','Autem impedit itaque quas autem maiores ullam.','2025-11-22 12:47:41','a7e7aca9-01ed-4fa4-9ea6-1a4604f42a91','e9e77078-d313-4ae3-a742-ec7e116fd303'),
('f52c3da2-b89b-4241-af27-668d0b1791c0','Laborum odio eligendi veniam sed.','2025-10-21 14:46:39','193b3e78-e9a5-4e61-a7f5-9848140dc15c','c8596929-f07d-44bc-83de-aa4078bdb6fd'),
('4235b61f-53ec-4fc2-a2ba-66efa13cee83','Vero molestias magni voluptas illo laboriosam quas.','2025-11-15 00:55:45','39ed4aba-2d97-40f1-a067-f4eae260e9df','9f340e66-094d-4470-b4d9-0efdf5bb9026'),
('d77cacc1-d444-4b6c-82ff-687fcccb52ee','Et fuga exercitationem vero dicta porro.','2026-05-14 12:04:33','d7d0c919-3fb6-49df-9d63-b2341b86ff92','c82c208f-56e1-44e3-8f8d-89b7f5f5806d'),
('dc093a06-37ad-4caf-bdbd-6bec8c59e8e1','Cumque illum dolorum mollitia eos.','2025-07-20 23:39:08','40ea338a-cff4-448a-9295-afd3160d6aa4','7d918b95-58d0-4e71-b459-ed19cd24ec17'),
('657756ab-ea76-4d7c-84ef-6ca168016ace','Blanditiis distinctio dolores quasi.','2026-03-18 05:54:39','504e977a-5ff3-4960-b066-3143e3881753','84e9d669-a532-4dcb-97c4-84360ba86e98'),
('cde44dc4-50d3-4320-b0d7-747f065b567c','Odit enim veniam veritatis.','2025-07-14 06:31:23','a3691f68-3773-48e3-89a6-6ae6cd97bca3','0908ed3b-f84b-4956-a147-f5bb2ca04afa'),
('acff979b-6c1e-4daf-aacd-7602ed44b89b','Quos deleniti magnam eveniet aliquam.','2025-10-28 11:09:34','40ea338a-cff4-448a-9295-afd3160d6aa4','9f340e66-094d-4470-b4d9-0efdf5bb9026'),
('92b1d885-2b15-4c45-a68d-7849cc5a2724','Nihil soluta exercitationem repellat autem consequuntur voluptate hic.','2025-07-22 04:42:09','15e0c266-9b9d-408d-8e5a-70493b1385b7','c82c208f-56e1-44e3-8f8d-89b7f5f5806d'),
('185890f6-44f7-42f8-b04a-7958e5116f66','Facere quia a cum sit.','2026-02-27 05:49:35','e37361fd-0f8c-42cf-a14e-7faaa74c358c','b1e6a427-0737-4eee-8907-37a913a3edfe'),
('44ab6ffc-c3c5-48c6-b452-81595f0c7def','Excepturi est laboriosam saepe natus quam.','2026-05-05 15:18:44','6ab545fd-8ff6-4279-8c00-cd54f46830a0','c8596929-f07d-44bc-83de-aa4078bdb6fd'),
('3dab94c8-9c34-47fd-b751-854ced3b9836','Quo fugiat mollitia iusto odio corporis.','2025-11-20 01:25:46','193b3e78-e9a5-4e61-a7f5-9848140dc15c','c82c208f-56e1-44e3-8f8d-89b7f5f5806d'),
('ae3d635f-0fdb-4492-a699-86e91e7458e2','Nesciunt nemo modi ipsum aperiam.','2026-01-09 22:20:05','6d2a8d79-8268-49b5-9267-cfa6c6580739','e980fb54-a53c-4b8c-968c-17fd559846c4'),
('aaa5334e-a9f1-4731-9254-8b128c56443c','Nisi aspernatur atque praesentium mollitia perspiciatis ex.','2025-07-01 21:56:48','504e977a-5ff3-4960-b066-3143e3881753','ff6757ec-06de-45c6-b47e-f2bb7b4858e8'),
('e812c4da-a750-488b-9abc-8c20ebd5b95e','Quis facilis aut.','2025-11-26 12:36:12','23804906-5ca1-4620-988a-5efcec1ff0aa','ff6757ec-06de-45c6-b47e-f2bb7b4858e8'),
('b7d59662-7acb-46da-86b5-8cb9ce7dd449','Eius debitis voluptate nesciunt officiis aperiam assumenda.','2025-06-03 13:44:48','23804906-5ca1-4620-988a-5efcec1ff0aa','5eaee617-2793-4dac-9ed6-e15053adfc40'),
('5bc0473d-6d9c-4671-987d-8f2af33751bd','Ut nisi autem doloremque voluptatem.','2025-09-25 12:27:43','54f83b49-1a17-43df-8ea7-0ead4c123a6b','7f186afe-2b0a-44c1-901a-6b2b9de175f5'),
('79bf4b67-0d35-4232-ab7c-9049fb9ba6a6','Voluptatibus nisi magnam quam aliquam rem inventore.','2025-10-11 03:08:35','6d2a8d79-8268-49b5-9267-cfa6c6580739','c8596929-f07d-44bc-83de-aa4078bdb6fd'),
('e847a715-1cf3-4716-b5ba-912b84d2bae3','Soluta quam suscipit mollitia in dolorum cupiditate.','2025-12-05 12:59:25','67855305-5216-4352-a340-47cd0de6cb73','c8596929-f07d-44bc-83de-aa4078bdb6fd'),
('ab53d31e-8467-4866-8395-9141b4e23ab1','Natus non quia beatae amet.','2025-06-11 20:32:04','4090387b-91b8-4a38-8b8b-43a9634a2f2a','b55e12e4-6ed1-4dc4-aaad-80cefb461e5f'),
('a6f0ed1f-57d1-4b62-9b23-9237fbda1019','Voluptate dolorem at officia nobis similique est.','2026-04-18 14:44:20','23804906-5ca1-4620-988a-5efcec1ff0aa','72f0f95e-e087-4d4b-a04a-b49782eddde6'),
('8d2a7fa2-af86-43ed-b396-941411b46526','Dolorum consequuntur amet eligendi explicabo hic a.','2025-09-10 04:21:39','a7e7aca9-01ed-4fa4-9ea6-1a4604f42a91','ff6757ec-06de-45c6-b47e-f2bb7b4858e8'),
('640f8fe7-4658-4d7a-ac69-9594afc04afd','Omnis nostrum ex repudiandae dicta ullam.','2025-06-01 19:04:57','39ed4aba-2d97-40f1-a067-f4eae260e9df','7d351403-6253-43ae-9746-7e7e4a8f20f8'),
('48c8f519-e471-4882-9029-9a776b99bbb9','Rerum excepturi alias nihil iste.','2026-02-15 06:15:46','0f9992ca-43c6-4b47-8a15-ee4a9c01ec74','9f340e66-094d-4470-b4d9-0efdf5bb9026'),
('f302f61f-f505-491a-9213-9d9c87277c39','Officia error ducimus ad possimus.','2026-05-05 11:54:28','f2e76021-0111-4cbd-93dd-3aa1f51e0d11','7d918b95-58d0-4e71-b459-ed19cd24ec17'),
('eaacc838-e7c3-49e3-bec6-a54d32fa1121','Nostrum repellendus aspernatur doloribus consectetur.','2026-01-12 08:31:41','a3691f68-3773-48e3-89a6-6ae6cd97bca3','c82c208f-56e1-44e3-8f8d-89b7f5f5806d'),
('7d8d4676-b099-41f2-874a-ac35f4ad5409','Placeat cupiditate explicabo fugiat.','2026-02-03 07:21:32','a3691f68-3773-48e3-89a6-6ae6cd97bca3','a73ad326-95c7-4339-820e-db362df4412b'),
('7752e699-688d-40ef-8754-acf5c9d3e1d4','Et ea sint nobis doloribus ut.','2026-03-26 12:17:12','40ea338a-cff4-448a-9295-afd3160d6aa4','7d351403-6253-43ae-9746-7e7e4a8f20f8'),
('f9c177c7-2515-410e-87d5-ae147b436f65','Vitae repudiandae fugit sint rerum quasi iure eveniet.','2025-12-04 02:33:44','f2e76021-0111-4cbd-93dd-3aa1f51e0d11','0908ed3b-f84b-4956-a147-f5bb2ca04afa'),
('1664a658-e319-4872-b565-b1ce4f5015dc','Dignissimos ea sint voluptate consequatur.','2026-04-27 11:52:52','a7e7aca9-01ed-4fa4-9ea6-1a4604f42a91','0908ed3b-f84b-4956-a147-f5bb2ca04afa'),
('6914476e-7cfe-4cd2-b359-b4432b80498d','Temporibus quos quod ipsum.','2026-05-13 04:31:42','15e0c266-9b9d-408d-8e5a-70493b1385b7','b55e12e4-6ed1-4dc4-aaad-80cefb461e5f'),
('377791b3-81bf-400d-bc04-b6d32e87abc2','Aliquid ut iure odit ex repellat tempore.','2025-12-29 15:43:27','4d844f44-c99c-4012-8fd6-ca64f499b836','84e9d669-a532-4dcb-97c4-84360ba86e98'),
('ffd81992-85cf-4320-aeee-b8031640fd20','Hic in voluptates.','2026-05-13 19:24:50','193b3e78-e9a5-4e61-a7f5-9848140dc15c','5d927fdd-c7f6-4d3f-a459-b0a802dde2ce'),
('fe50663d-2f3d-406a-8343-ba839c59e517','Provident rerum culpa corporis repellat quisquam magnam veniam.','2026-05-04 09:19:10','6d2a8d79-8268-49b5-9267-cfa6c6580739','72f0f95e-e087-4d4b-a04a-b49782eddde6'),
('984a98b2-e5bf-4d3b-b1d2-bcb53a929c27','Libero vero alias doloremque inventore.','2026-01-30 10:39:20','a3691f68-3773-48e3-89a6-6ae6cd97bca3','4015ac92-4175-48b1-8e8d-4977ff362906'),
('18579e86-52dd-4bf8-ab54-be06ba26d88b','Sit quaerat odit at sint.','2026-02-26 08:23:53','504e977a-5ff3-4960-b066-3143e3881753','83086da0-1925-4372-b223-8b40975a8f02'),
('200ca29c-0a1b-414e-a84f-c02af81a4bd7','Expedita asperiores maxime neque inventore aut praesentium.','2026-02-16 07:43:39','4090387b-91b8-4a38-8b8b-43a9634a2f2a','7d351403-6253-43ae-9746-7e7e4a8f20f8'),
('c13cf1aa-1f94-4225-9e8c-c177a891601d','Deleniti exercitationem error quos ullam.','2025-07-01 03:51:09','6ab545fd-8ff6-4279-8c00-cd54f46830a0','9f340e66-094d-4470-b4d9-0efdf5bb9026'),
('6f7efdf6-aadb-4f0a-a4a2-c24c33a1b751','Iste eos ducimus odit similique accusamus perspiciatis.','2025-12-22 16:58:46','504e977a-5ff3-4960-b066-3143e3881753','83086da0-1925-4372-b223-8b40975a8f02'),
('d86ffe03-dc3e-460e-aa28-c6f2236c430a','Adipisci in exercitationem veniam reiciendis quo.','2026-04-01 05:07:41','4d844f44-c99c-4012-8fd6-ca64f499b836','e980fb54-a53c-4b8c-968c-17fd559846c4'),
('67212362-1148-4ea1-8980-c7c8fbde922b','Cumque saepe aperiam exercitationem iste blanditiis.','2025-11-08 12:06:54','a7e7aca9-01ed-4fa4-9ea6-1a4604f42a91','7d918b95-58d0-4e71-b459-ed19cd24ec17'),
('c424b44b-8aa8-4692-b842-cdebef641fc0','Minus aliquam commodi repudiandae.','2025-09-29 21:41:45','6d2a8d79-8268-49b5-9267-cfa6c6580739','c8596929-f07d-44bc-83de-aa4078bdb6fd'),
('316ca285-0efa-4905-823c-d3bd2a0ec33c','Ab pariatur cum eveniet ipsa.','2025-11-20 06:35:59','8995b8e2-f6c7-4749-8aef-4304ed5daf5b','7d351403-6253-43ae-9746-7e7e4a8f20f8'),
('c7c17bf1-d0e1-4443-bb55-d4fa5b46f532','Nobis doloribus quo sequi inventore.','2025-09-25 18:17:46','e37361fd-0f8c-42cf-a14e-7faaa74c358c','9f340e66-094d-4470-b4d9-0efdf5bb9026'),
('8c94b133-f6d3-4d0a-8ffe-d75ea24c1c2f','Vero adipisci fuga iure fugiat amet.','2026-01-24 19:34:29','15e0c266-9b9d-408d-8e5a-70493b1385b7','0908ed3b-f84b-4956-a147-f5bb2ca04afa'),
('8bf89ad6-0f6c-43b6-ad35-ddd9c6a240c3','Aliquid et at tenetur unde iste quia.','2025-12-18 06:10:48','15e0c266-9b9d-408d-8e5a-70493b1385b7','4015ac92-4175-48b1-8e8d-4977ff362906'),
('92702fff-5510-43eb-acb9-de3f9e898346','Enim vero hic laboriosam quis delectus.','2025-08-01 14:32:16','a7e7aca9-01ed-4fa4-9ea6-1a4604f42a91','e980fb54-a53c-4b8c-968c-17fd559846c4'),
('a79ce9dc-e46b-49f7-8d8e-de8354ac3c5b','Praesentium debitis neque expedita neque odio debitis tempore.','2025-10-05 21:32:17','0f9992ca-43c6-4b47-8a15-ee4a9c01ec74','e9e77078-d313-4ae3-a742-ec7e116fd303'),
('9aa94f81-4bcb-42c7-9915-df16d2d66bcd','Molestiae aut tenetur pariatur repellendus.','2025-07-25 11:52:33','39ed4aba-2d97-40f1-a067-f4eae260e9df','7f186afe-2b0a-44c1-901a-6b2b9de175f5'),
('e7970223-bac6-448b-9929-e5c3ceb8fcaf','Velit alias eveniet iste non in.','2025-10-26 09:54:15','a7e7aca9-01ed-4fa4-9ea6-1a4604f42a91','c82c208f-56e1-44e3-8f8d-89b7f5f5806d'),
('9091cfe7-5335-4985-b15f-e60287b35d62','Aperiam illo quibusdam rerum deserunt est.','2025-07-21 13:06:12','504e977a-5ff3-4960-b066-3143e3881753','7d918b95-58d0-4e71-b459-ed19cd24ec17'),
('90c8c932-f962-42e4-b939-e6bba360f4ed','Rem ipsum fugiat iure.','2026-04-10 20:42:15','23804906-5ca1-4620-988a-5efcec1ff0aa','c8596929-f07d-44bc-83de-aa4078bdb6fd'),
('aea7eca5-22dc-45cf-bc49-e9d833f8828e','Assumenda doloremque dolore quas.','2026-05-11 02:10:50','8995b8e2-f6c7-4749-8aef-4304ed5daf5b','b55e12e4-6ed1-4dc4-aaad-80cefb461e5f'),
('bbe18404-b7a2-4bbd-830a-ec0049f99122','Deserunt hic corrupti labore quia quasi.','2025-08-02 02:19:18','54f83b49-1a17-43df-8ea7-0ead4c123a6b','0908ed3b-f84b-4956-a147-f5bb2ca04afa'),
('9778fcd5-7015-45dc-a3e9-f54bc0f610e0','Alias maiores velit perferendis eaque magnam vel.','2025-11-07 09:20:38','f2e76021-0111-4cbd-93dd-3aa1f51e0d11','71895757-10fb-4217-a4eb-ed7e94192582'),
('a4dc08c4-e8be-42f6-a846-ffa60974424b','Quod dolorem quas beatae a.','2025-12-06 02:56:20','15e0c266-9b9d-408d-8e5a-70493b1385b7','5d927fdd-c7f6-4d3f-a459-b0a802dde2ce'),
('746bcd5b-424b-48de-a054-ffbccfb130ea','Ipsa inventore quae voluptatibus exercitationem.','2026-05-04 18:15:38','4090387b-91b8-4a38-8b8b-43a9634a2f2a','83086da0-1925-4372-b223-8b40975a8f02');
/*!40000 ALTER TABLE `janji_temu` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Table structure for table `komposisi_resep`
--

DROP TABLE IF EXISTS `komposisi_resep`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `komposisi_resep` (
  `id` uuid NOT NULL DEFAULT uuid(),
  `resep_id` uuid NOT NULL,
  `resep_item_id` uuid NOT NULL,
  PRIMARY KEY (`id`),
  KEY `resep_id` (`resep_id`),
  KEY `resep_item_id` (`resep_item_id`),
  CONSTRAINT `komposisi_resep_ibfk_1` FOREIGN KEY (`resep_id`) REFERENCES `resep` (`id`),
  CONSTRAINT `komposisi_resep_ibfk_2` FOREIGN KEY (`resep_item_id`) REFERENCES `resep_item` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `komposisi_resep`
--

LOCK TABLES `komposisi_resep` WRITE;
/*!40000 ALTER TABLE `komposisi_resep` DISABLE KEYS */;
set autocommit=0;
INSERT INTO `komposisi_resep` VALUES
('9d7f0757-3eaa-4f7e-8ab1-0173c3e8c132','bae4f242-a57c-485c-85dd-131dba3cf613','324a7523-1e5c-469b-8a25-bd1b9eb87a3b'),
('010fec85-8a26-4e7e-bbfc-01c08bce8d9e','41f0e0c8-2974-48ad-a6cc-30fbe303563f','b142646c-275a-466f-9b2d-69e5b3df9e87'),
('1fcf9827-319a-4cd7-b3cf-054f3d09ce99','b3df9efa-3b36-4574-802f-04e6b6dff1f7','42597f3f-f297-4005-8f31-332f16cec530'),
('876af820-fbc2-4a67-ae14-06fcd89f6fc9','d45560b5-28df-4a2b-b9a9-12f425971893','15cb4200-8243-43d7-9bfc-548c476a3eac'),
('5593bbf8-5cb8-400f-8ed3-0c31d494e6a6','2d6feaf4-f8b1-4ee3-b01f-6656a23b9b1d','443d1acd-9ab9-4f2d-88e9-2923fb9b1225'),
('7ff65ec0-f559-4fe1-b31f-0e7c0f2c023b','2d6feaf4-f8b1-4ee3-b01f-6656a23b9b1d','65a0c735-14ce-4c1d-b1e2-2889eded8682'),
('bb1132a9-e7fc-42aa-9d73-1483b199a16f','4a45a847-8a9b-489c-b704-cbef2d844164','144829b2-4464-4f31-9c2c-82d6af4fc06b'),
('e4866769-1a45-4a4c-8450-16b4f8ff9171','2f02051d-f7e8-439a-9c6a-851da1820935','ce62c574-0075-48d6-8189-70067b1b4cce'),
('3c62bf8a-0cb9-4490-8c26-1838b116a272','5a1757e7-3980-4b3b-8b17-a68e63dfafa0','42597f3f-f297-4005-8f31-332f16cec530'),
('2619e0f5-aeca-4052-a4c4-1891b50497c1','20c0e745-1282-4c1c-8e84-fad9bddc180d','f931d404-fff8-4aab-a6ad-621ff383f4e5'),
('bf589749-8598-4f91-ad39-241c89ffcc6b','220395f4-41e4-45be-bb2a-317a3c657351','103a0ce5-4552-4d49-841e-a47161d6fc07'),
('55c07271-2849-4a60-94d4-27d2251964b2','198cb0e5-ccf5-4df5-8a2f-1b0da8b0dddf','7ca6dfbe-5213-4048-8556-1e3180bad47b'),
('f1166da4-4351-4d0a-970c-2cc3e03a922d','ba3418c4-ae28-4e29-9c66-832f47125274','00ffa9dd-7067-4c99-a338-e986cf23fcd6'),
('4ce6a7dc-ca6d-4a1b-a96a-2eee4f6fc431','9cbb2f23-7318-49e8-a01b-68dbc594ae4b','ee7cd7a1-6a56-440d-a1b9-5724b42361f6'),
('44138beb-83f3-4745-88b3-35353fa4a223','9b5aa4c4-d430-423e-b775-ee7f1a6ae179','f03040e5-2ba0-4b87-afa4-78ca73728708'),
('cd19a5f5-ff28-4134-9faa-374e7275a121','f99808ee-69da-45bd-a947-40072325c832','443d1acd-9ab9-4f2d-88e9-2923fb9b1225'),
('8b2a417b-7b59-4e32-8773-3790b230cc50','534c9b30-f806-47ed-9831-c2b9e8a80bf2','4ce5d0f8-ee55-439e-96e2-f1872f6ca38e'),
('93c3dc4c-fb41-4697-a2e1-3ae681c54d22','2fb5ebf0-e384-4085-8efd-6440b4900294','9e42af31-594b-4e7e-8531-90f0917a630d'),
('0583af09-21ab-4738-aac0-3d2fce817f5a','48da4b3a-23b3-45a1-b511-27ed25413da7','144829b2-4464-4f31-9c2c-82d6af4fc06b'),
('08b3f2d5-5671-47e5-8cd2-3dadc883c8b3','ceb6aefb-6c33-4322-8ba9-2ae026f38610','d5718df8-b769-47e8-a231-33851f98aa78'),
('6d86a2ef-6e1d-4d4a-96c9-3e107afb2ca1','a0ca5bb4-cdad-4694-8df6-2c8177e5e170','9b011d96-ee19-4247-a7d2-a72064e4f2e9'),
('b53e0045-85f4-4ae4-8f7d-3f6bfd1d4344','ceb6aefb-6c33-4322-8ba9-2ae026f38610','bcdf1b31-a8d7-49cc-8c6c-e5a1944167ad'),
('51961093-fcad-4a49-964a-4266b5828f8f','534c9b30-f806-47ed-9831-c2b9e8a80bf2','633064c6-9adb-410a-b43f-80a1e9d3c3c4'),
('b15c8d38-a111-4928-ab28-4344b9999ce5','b31a769c-023b-4d06-9704-ab700d8eed99','aad8f9c1-1ea3-47a4-939f-a3a3d6f607c0'),
('71639536-8ab4-4d93-a922-43d558381116','5be3e5e1-214b-4711-ba43-294f3072c92a','13b59a60-63ca-44ef-a958-dadab843cdf7'),
('36034f68-d3c8-4813-95f8-4416ab89fd9c','ad66a88b-0c85-42ec-9eaf-ceb648196a5a','b142646c-275a-466f-9b2d-69e5b3df9e87'),
('ae30602a-3e56-4395-a86e-448fc90ae132','dadef492-39dc-4167-b1a0-2baabf6cd80f','d14140c0-79c9-41b3-961e-09f244b25a08'),
('5fbffd0d-f025-4f97-b0d1-4606896a1ab5','1d8a9539-f5c4-45f6-a80b-7fffb6030fcb','1e21f25f-de35-4ab8-8b06-408b7e29b16e'),
('ebd67c8a-8375-4fb6-bccc-4982a1885667','bae4f242-a57c-485c-85dd-131dba3cf613','d14140c0-79c9-41b3-961e-09f244b25a08'),
('42d08914-1093-496d-b1f8-4d1da6da0b5f','3628e613-609e-4c72-b748-37432acc8ecd','cd182b76-c62c-4a3c-b723-24e9a2b6ff37'),
('22ccb14d-c52f-4b33-8f29-4daa3117304b','1efd8e7b-289e-47a4-8cd0-a51d99d51234','aad8f9c1-1ea3-47a4-939f-a3a3d6f607c0'),
('cb7dfe9d-71a3-4288-9ca6-4fc65462cdb7','cfb51904-056e-425e-a56f-d9a59f8c1199','d14140c0-79c9-41b3-961e-09f244b25a08'),
('7165d281-a83f-4f30-a53f-557bf883bd54','78ed6d8f-2fc8-4d39-8dc4-53741e2819fa','7ca6dfbe-5213-4048-8556-1e3180bad47b'),
('5010860b-ff11-42e9-bca7-58c3acda8d2f','cfe7d19d-b180-45da-8e02-b15ce95e3192','633064c6-9adb-410a-b43f-80a1e9d3c3c4'),
('ed2f9c2b-87e3-4f22-b78a-5ac4ef8ed5b1','ef2ee873-4e1b-4847-b655-59e9e20cab49','0743c001-50fa-4cb3-a66b-214b0355f744'),
('5aebb8bc-d27c-47d9-b922-5fed2133f8d2','126707b3-99dd-490e-893d-059d616d86be','cae1f31c-d4e4-41f9-9919-c6c958885bea'),
('a8268e2b-cf76-497d-904e-606185bb1562','1326fdc9-86c5-4cdd-be0b-3c656defb765','4ce5d0f8-ee55-439e-96e2-f1872f6ca38e'),
('455546e8-78b1-44e5-8504-6514a1349c7e','6c08dcc9-f92e-435a-ba69-bd357d5d5828','f820d56f-23bc-483a-90b4-f12c1a8e37d2'),
('8419e608-f09d-4a2e-800d-651c665ac3a0','497e6bb6-ece8-474c-99c4-344ef55a2d79','633064c6-9adb-410a-b43f-80a1e9d3c3c4'),
('5146a04d-007a-4d81-8841-68abf6a68d4d','81a2f09e-066c-41ed-9bc6-135f7125ef48','f931d404-fff8-4aab-a6ad-621ff383f4e5'),
('c1257cfe-e996-4f7c-9edf-6a13127be5b2','2d6feaf4-f8b1-4ee3-b01f-6656a23b9b1d','65a0c735-14ce-4c1d-b1e2-2889eded8682'),
('942aa1a9-ba37-4775-a802-71496b356972','a0ca5bb4-cdad-4694-8df6-2c8177e5e170','1fca34ec-8c21-4504-a73c-237625c63f35'),
('01c7f2ab-ebcd-4145-981e-7215f93e6af3','6c08dcc9-f92e-435a-ba69-bd357d5d5828','a1e4334d-9620-4dd2-8ee6-c3ef31277173'),
('e617af39-9204-41d9-92da-72af34c54a0b','81a2f09e-066c-41ed-9bc6-135f7125ef48','a5007aac-9864-4690-b51a-febe2cbe0363'),
('7b7fe4c9-7e6c-44e1-8cc2-74b182af773a','b521368c-012a-47df-81b2-2a041050ece4','bcdf1b31-a8d7-49cc-8c6c-e5a1944167ad'),
('18ba2e82-6c4f-4584-b634-762ceb03af16','cfe7d19d-b180-45da-8e02-b15ce95e3192','4ce5d0f8-ee55-439e-96e2-f1872f6ca38e'),
('27ff37af-adf4-4210-92cd-798514b91d8d','c167c9ff-b143-40c5-8c5a-f9cb4a4c7b1d','b142646c-275a-466f-9b2d-69e5b3df9e87'),
('e8f916b2-be91-4e78-b693-7aad7d56f6d7','5be3e5e1-214b-4711-ba43-294f3072c92a','fae95a2a-f4a8-4ebf-9e21-2f3747b64768'),
('f7d6eedd-bade-4c80-9dca-7c87d7fb3d28','1efd8e7b-289e-47a4-8cd0-a51d99d51234','fb7277a4-19b7-4b21-a428-a0b88b59fd56'),
('4e31a51c-13ee-4b21-83ae-7eeddcc055cf','37d80df6-e4b0-4c62-8c24-21e92ff348ee','cd182b76-c62c-4a3c-b723-24e9a2b6ff37'),
('0d7f89f0-03de-45ea-bd62-7f7cc5452351','74ec4817-6983-422f-a141-ae1d8037b121','d84ec51d-bd79-4805-a9dc-3b3b3add12de'),
('accb613f-f7e2-4b6c-97d9-871ccd43f3de','48da4b3a-23b3-45a1-b511-27ed25413da7','13b59a60-63ca-44ef-a958-dadab843cdf7'),
('e833da42-8393-42ed-bc82-875905244d36','a0ca5bb4-cdad-4694-8df6-2c8177e5e170','1e21f25f-de35-4ab8-8b06-408b7e29b16e'),
('0a903cad-2219-4d1c-b8f6-8d7d2f4a9f72','81a2f09e-066c-41ed-9bc6-135f7125ef48','a79ecde7-24c0-4f41-a019-55bea1690b9e'),
('88a51c57-6df6-4d91-b461-90ab77da8997','81a2f09e-066c-41ed-9bc6-135f7125ef48','443d1acd-9ab9-4f2d-88e9-2923fb9b1225'),
('671ac70b-8b54-4c07-a932-924e46cf7e89','ba3418c4-ae28-4e29-9c66-832f47125274','1e21f25f-de35-4ab8-8b06-408b7e29b16e'),
('30f87fb2-b75d-4537-9421-967147c6f3dc','43364e78-9643-4028-bbb9-48a1474bc0a2','cd182b76-c62c-4a3c-b723-24e9a2b6ff37'),
('d55feafb-94e8-4d7c-b12d-97e2e64f3b4d','5b58968f-7c92-41c2-8644-d0cbece27b3d','182f2d37-046a-4ee2-97d9-ccf15dc6dd9b'),
('70278ea7-0830-4d70-91c1-9a3959ad413e','1d8a9539-f5c4-45f6-a80b-7fffb6030fcb','7ca6dfbe-5213-4048-8556-1e3180bad47b'),
('5028ee74-a482-41df-b57c-9e4cbed07de2','240167a8-3ce7-4ab3-b63d-b5642a30a0ab','589290f8-ff77-4ad2-97fb-a8795b124c53'),
('4a8805e5-8d98-4708-9e3c-9e94b772ffda','48da4b3a-23b3-45a1-b511-27ed25413da7','443d1acd-9ab9-4f2d-88e9-2923fb9b1225'),
('91cf9ac6-4d56-4250-bcfd-a0060a8c0c18','1828c36e-5638-4c9f-b6f1-79befa13bc72','be01c300-f05f-47d1-b1ce-ddf66b270076'),
('53bd0824-99df-4a9e-a7ba-a29a6e7f7d30','870c109e-1c3c-479e-800b-a514d76de501','1ddaac20-6c61-4909-997c-2c1e098a9a8b'),
('2ecd944e-a6a8-4e73-a112-a8f0cc336694','e0234551-9b60-49ca-93a9-c39792cbccac','a79ecde7-24c0-4f41-a019-55bea1690b9e'),
('e6709f13-a289-4311-b3cc-b15026fabd07','198cb0e5-ccf5-4df5-8a2f-1b0da8b0dddf','0743c001-50fa-4cb3-a66b-214b0355f744'),
('a33ac076-2d8f-469d-b67a-b241f3621bd5','5a1757e7-3980-4b3b-8b17-a68e63dfafa0','633064c6-9adb-410a-b43f-80a1e9d3c3c4'),
('25bef936-3d08-4246-93ff-b41e9f8a92d4','d903f26d-1dd7-40ef-80c1-739a987f0016','cae1f31c-d4e4-41f9-9919-c6c958885bea'),
('3cd457fc-f529-446c-baeb-b597bdd752bf','4a45a847-8a9b-489c-b704-cbef2d844164','4ce5d0f8-ee55-439e-96e2-f1872f6ca38e'),
('7f69171d-b14d-43db-98be-b6499a90027a','db7dda83-6c0a-4b6b-a125-b9c14eb259bc','9e42af31-594b-4e7e-8531-90f0917a630d'),
('bcee9aad-8f0c-430a-a265-b7a24cd6eaaf','317b92c7-566a-4a40-af39-1d0a70a632cf','589290f8-ff77-4ad2-97fb-a8795b124c53'),
('ae75d660-1427-44f1-ab4c-b892b2b443f3','1313eefe-399a-474c-87f8-749d4f9fb3e1','9b44fbc4-7dc3-453c-a1c8-2e4d0e8f6f6c'),
('fb81fba4-d111-41c9-9e18-bac90d095a11','fb06b95b-ed0e-48b5-bdf7-d703d5b9087f','a5007aac-9864-4690-b51a-febe2cbe0363'),
('024758df-e979-4389-8d5a-bb66444d621b','198cb0e5-ccf5-4df5-8a2f-1b0da8b0dddf','324a7523-1e5c-469b-8a25-bd1b9eb87a3b'),
('133ab454-bcbd-498a-a3bd-bc0f5032e7b7','41f0e0c8-2974-48ad-a6cc-30fbe303563f','bac482cc-3cdc-41b5-8c77-0df83916ed15'),
('344e2711-0f8a-40b0-8871-bf9f53f44e6c','3f66dbf4-4452-4745-9c2c-790f28bd0f19','9b011d96-ee19-4247-a7d2-a72064e4f2e9'),
('32917bb2-c5fc-4625-a539-c36021951082','fb06b95b-ed0e-48b5-bdf7-d703d5b9087f','3513001b-64bc-4902-ab65-e607623d3d24'),
('93145e29-323b-4da3-b540-c3caac361228','1d8a9539-f5c4-45f6-a80b-7fffb6030fcb','324a7523-1e5c-469b-8a25-bd1b9eb87a3b'),
('7320f38b-bc32-45be-abf7-c499d94eb9bb','317b92c7-566a-4a40-af39-1d0a70a632cf','fb7277a4-19b7-4b21-a428-a0b88b59fd56'),
('38b1edae-5a9c-45e2-9acb-c4b46e3bcc30','567b0db1-2591-4b8a-a8de-d1bf33571bde','1e21f25f-de35-4ab8-8b06-408b7e29b16e'),
('5515e3a6-b098-4fec-9ff0-c67b617e6e18','cfe7d19d-b180-45da-8e02-b15ce95e3192','aa6528ab-1471-4603-badc-f6d473c3b4ff'),
('28ee842f-2cd8-4998-af5c-c7f95fa99949','37d80df6-e4b0-4c62-8c24-21e92ff348ee','42597f3f-f297-4005-8f31-332f16cec530'),
('4b889355-f1a6-46f8-b58c-caa6ecd1196c','6f683bd2-1051-4817-b1d7-81a01ec9dbc3','182f2d37-046a-4ee2-97d9-ccf15dc6dd9b'),
('1fa971a4-12de-40da-8acf-cb50454332db','dadef492-39dc-4167-b1a0-2baabf6cd80f','a1e4334d-9620-4dd2-8ee6-c3ef31277173'),
('b2cef498-3a0a-44a8-aa57-cc29a3d45433','18c92f5b-5a75-454f-b05e-332fda37219c','a79ecde7-24c0-4f41-a019-55bea1690b9e'),
('43a4cfc1-cb1f-4dde-9596-d049b1ada42f','9cdaca46-2a9b-482a-9dca-6ec554be8bb5','3513001b-64bc-4902-ab65-e607623d3d24'),
('ba9d8464-17f5-464d-be67-d3d27594902d','026a796e-f19b-438b-a83f-ae1e5a7dd1b0','bac482cc-3cdc-41b5-8c77-0df83916ed15'),
('db6ed642-92ee-41e1-9453-d3f85a2969b5','ad66a88b-0c85-42ec-9eaf-ceb648196a5a','3513001b-64bc-4902-ab65-e607623d3d24'),
('d7143b97-afdc-4eef-88a3-d6f7d3f498c9','9b939114-5b42-48be-ab0b-e3dd3c4b5fe4','1fca34ec-8c21-4504-a73c-237625c63f35'),
('7e35efa2-b001-4662-81a1-d9e40c890928','451c6344-9e19-45ae-8d1f-0e36da4bef89','0743c001-50fa-4cb3-a66b-214b0355f744'),
('685e1faf-f7ed-4b0f-bedc-e02449384327','18c92f5b-5a75-454f-b05e-332fda37219c','be01c300-f05f-47d1-b1ce-ddf66b270076'),
('631c3228-2b0e-44bb-bb14-e4bca251fde4','cfe7d19d-b180-45da-8e02-b15ce95e3192','b142646c-275a-466f-9b2d-69e5b3df9e87'),
('7f0718b7-dbf6-4552-b31e-e7216cea9047','ad66a88b-0c85-42ec-9eaf-ceb648196a5a','182f2d37-046a-4ee2-97d9-ccf15dc6dd9b'),
('6fdbdf75-0c00-4b63-853a-f1d81284f5a4','5a4b22b6-d540-4f08-bbf2-62c71ab2d6fe','fb7277a4-19b7-4b21-a428-a0b88b59fd56'),
('18638ffe-c1b4-49ca-84d7-f1efeb8f866e','ad66a88b-0c85-42ec-9eaf-ceb648196a5a','cae1f31c-d4e4-41f9-9919-c6c958885bea'),
('54fa6124-bd48-4aa1-8e8b-f8d48130279a','d903f26d-1dd7-40ef-80c1-739a987f0016','f820d56f-23bc-483a-90b4-f12c1a8e37d2'),
('e8068c7e-9b5b-42d5-be24-f9d250a50c96','ba3418c4-ae28-4e29-9c66-832f47125274','9b011d96-ee19-4247-a7d2-a72064e4f2e9'),
('5bb9809e-1b4c-4199-b547-fa77cecabf00','ceb6aefb-6c33-4322-8ba9-2ae026f38610','589290f8-ff77-4ad2-97fb-a8795b124c53'),
('d0e561dc-2244-4bf7-b75c-fa8c1e92b6d1','52fccc90-f6ae-49ad-b3ca-2e9adbb23445','cae1f31c-d4e4-41f9-9919-c6c958885bea'),
('732b8311-6709-4f97-ba1a-fb0c42b6e812','b3a4ce1c-dec6-491a-939b-316042c54d23','1ddaac20-6c61-4909-997c-2c1e098a9a8b'),
('dd4f0546-4360-4c89-98f7-fe5e69be7808','9b939114-5b42-48be-ab0b-e3dd3c4b5fe4','9e42af31-594b-4e7e-8531-90f0917a630d');
/*!40000 ALTER TABLE `komposisi_resep` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Table structure for table `layanan_medis`
--

DROP TABLE IF EXISTS `layanan_medis`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `layanan_medis` (
  `id` uuid NOT NULL DEFAULT uuid(),
  `status` enum('belum dibayar','dijadwalkan','sedang berlangsung','selesai','dibatalkan') NOT NULL,
  `jenis_layanan` varchar(100) NOT NULL,
  `jadwal_layanan` date NOT NULL,
  `pasien_id` uuid NOT NULL,
  `rumah_sakit_id` uuid NOT NULL,
  PRIMARY KEY (`id`),
  KEY `pasien_id` (`pasien_id`),
  KEY `rumah_sakit_id` (`rumah_sakit_id`),
  CONSTRAINT `layanan_medis_ibfk_1` FOREIGN KEY (`pasien_id`) REFERENCES `pasien` (`id`),
  CONSTRAINT `layanan_medis_ibfk_2` FOREIGN KEY (`rumah_sakit_id`) REFERENCES `rumah_sakit` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `layanan_medis`
--

LOCK TABLES `layanan_medis` WRITE;
/*!40000 ALTER TABLE `layanan_medis` DISABLE KEYS */;
set autocommit=0;
INSERT INTO `layanan_medis` VALUES
('2db372ae-1a86-489b-8cad-06a3013460f3','sedang berlangsung','ICU','2025-10-08','5eaee617-2793-4dac-9ed6-e15053adfc40','6f72292a-c3ef-4550-ac96-e7d561ad8756'),
('da262c55-8d76-4c8c-8f5b-0760efad1472','selesai','Konsultasi','2025-11-14','b55e12e4-6ed1-4dc4-aaad-80cefb461e5f','795fcd0d-84e0-482d-a652-8ed5ba4f605c'),
('d2a029c9-c68d-46ca-b6b6-086f510e3668','sedang berlangsung','Konsultasi','2026-01-13','c82c208f-56e1-44e3-8f8d-89b7f5f5806d','857d7aad-9153-4e39-832b-24695257d1ab'),
('b710ebf0-5148-4dc8-932e-0ce285df5342','dibatalkan','Rawat Jalan','2025-06-08','7f186afe-2b0a-44c1-901a-6b2b9de175f5','343734db-866f-4ecc-83ec-bdcc61493ec3'),
('c3e2644a-8a79-4d5b-9a78-0dd4b3f072cc','dijadwalkan','Operasi','2026-02-05','a73ad326-95c7-4339-820e-db362df4412b','89086a20-5211-4120-8a9b-c0e17a2647da'),
('60c00333-2a3f-4214-a33d-0dff45d537c5','sedang berlangsung','UGD','2026-04-20','c8596929-f07d-44bc-83de-aa4078bdb6fd','84c411aa-a720-411a-ac8b-1eff341e16c2'),
('e84818b4-c68a-4764-a0ce-0f04a21b6e44','dijadwalkan','ICU','2026-02-20','9f340e66-094d-4470-b4d9-0efdf5bb9026','cd1c24b4-fe8d-4bcb-864a-00fb85058165'),
('79ad3be8-5391-4efe-a5a8-146779ba61fd','selesai','UGD','2025-07-04','7f186afe-2b0a-44c1-901a-6b2b9de175f5','6541dee4-ac5e-44aa-aa59-4183c9048434'),
('da8f15a2-7beb-4b8d-bb7b-157b0951c371','sedang berlangsung','Konsultasi','2025-06-08','9f340e66-094d-4470-b4d9-0efdf5bb9026','6541dee4-ac5e-44aa-aa59-4183c9048434'),
('4d720d74-0eae-4a77-9890-1c27c6e59217','sedang berlangsung','ICU','2025-07-11','e980fb54-a53c-4b8c-968c-17fd559846c4','cd1c24b4-fe8d-4bcb-864a-00fb85058165'),
('73629dd4-23fe-4610-934f-1c8610c74a76','sedang berlangsung','UGD','2025-07-06','7d918b95-58d0-4e71-b459-ed19cd24ec17','cd1c24b4-fe8d-4bcb-864a-00fb85058165'),
('916bd4bb-8b83-4176-a5ce-1dc3b8c3f4b3','dijadwalkan','ICU','2026-02-14','c8596929-f07d-44bc-83de-aa4078bdb6fd','8b1dfb1a-2167-4c8c-ab1f-d133100082c4'),
('109b473f-078c-45a3-ab87-1e8cd22222ae','selesai','UGD','2025-11-20','c8596929-f07d-44bc-83de-aa4078bdb6fd','cd1c24b4-fe8d-4bcb-864a-00fb85058165'),
('28ca00e2-cca2-419d-8693-215bbb3499e0','dijadwalkan','Rawat Jalan','2025-07-18','72f0f95e-e087-4d4b-a04a-b49782eddde6','cfee9477-2b16-4f47-a476-05442a8e96a4'),
('c6201698-1ddc-4cc8-b376-22dab69f4ab7','selesai','UGD','2026-03-22','7f186afe-2b0a-44c1-901a-6b2b9de175f5','8382a98d-1113-47f6-8bf0-ae2b4524a639'),
('2bddcdf9-bdcc-4584-ab67-28cae2412b11','dibatalkan','Konsultasi','2025-09-11','c8596929-f07d-44bc-83de-aa4078bdb6fd','d53aea05-c5d8-4a5f-9a42-26c53c7c4723'),
('14bef96b-b7c3-4e47-8790-29b0e6fd02b1','belum dibayar','Rawat Inap','2025-07-16','0908ed3b-f84b-4956-a147-f5bb2ca04afa','cd1c24b4-fe8d-4bcb-864a-00fb85058165'),
('d34124f9-94c7-483f-95c1-2ec0beb2f1b6','dijadwalkan','UGD','2025-06-23','71895757-10fb-4217-a4eb-ed7e94192582','cfee9477-2b16-4f47-a476-05442a8e96a4'),
('6eb87434-d4c6-4db7-ba42-309692d496a5','belum dibayar','Operasi','2025-09-06','c82c208f-56e1-44e3-8f8d-89b7f5f5806d','16a34eb7-93ae-49eb-a1ab-33951089655d'),
('41165560-cc84-4f1d-8e58-3269ee323e69','dijadwalkan','Rawat Inap','2025-12-24','ff6757ec-06de-45c6-b47e-f2bb7b4858e8','b6d9bbf8-121d-4c3e-996d-956b7744ce6c'),
('5c3e0346-6f22-42b6-9d52-35770ee69799','dijadwalkan','UGD','2026-03-08','71895757-10fb-4217-a4eb-ed7e94192582','89086a20-5211-4120-8a9b-c0e17a2647da'),
('d6667891-3305-4210-9a72-36caa3490f84','dijadwalkan','Operasi','2026-01-02','c8596929-f07d-44bc-83de-aa4078bdb6fd','343734db-866f-4ecc-83ec-bdcc61493ec3'),
('580067a8-1f02-47e4-a806-3708e10ca562','sedang berlangsung','Rawat Inap','2025-11-29','e9e77078-d313-4ae3-a742-ec7e116fd303','cd1c24b4-fe8d-4bcb-864a-00fb85058165'),
('4fed09aa-d7ea-4388-8369-3b003b422f81','selesai','ICU','2026-04-22','4015ac92-4175-48b1-8e8d-4977ff362906','857d7aad-9153-4e39-832b-24695257d1ab'),
('396e2604-a396-49a8-b7c7-3b894386dfe0','sedang berlangsung','Konsultasi','2025-08-19','84e9d669-a532-4dcb-97c4-84360ba86e98','509c5cdb-efee-48f0-a712-3dbe3c7cc3c7'),
('97a9bb3a-f93a-4d5e-af2a-3dded4afad4d','dijadwalkan','Konsultasi','2025-12-24','71895757-10fb-4217-a4eb-ed7e94192582','509c5cdb-efee-48f0-a712-3dbe3c7cc3c7'),
('3d9bfbab-4fa7-485a-aa7d-3f815dc3f6c9','sedang berlangsung','Rawat Jalan','2026-05-05','9f340e66-094d-4470-b4d9-0efdf5bb9026','cd1c24b4-fe8d-4bcb-864a-00fb85058165'),
('96f8fb8f-9dc8-41fe-8e92-415f85f6ee3f','sedang berlangsung','Konsultasi','2025-06-27','c8596929-f07d-44bc-83de-aa4078bdb6fd','84c411aa-a720-411a-ac8b-1eff341e16c2'),
('5b524d21-5c25-4997-a998-4170e4770d8b','dibatalkan','Operasi','2026-02-17','72f0f95e-e087-4d4b-a04a-b49782eddde6','16944228-dbf9-4c18-b7da-ac6c376c1a7e'),
('cd3a0372-2b8f-44e8-a8ed-445b2b4106a1','dibatalkan','Rawat Jalan','2026-05-15','9f340e66-094d-4470-b4d9-0efdf5bb9026','16944228-dbf9-4c18-b7da-ac6c376c1a7e'),
('189af2cc-1d15-4c67-b6dc-45258e311ff1','selesai','Rawat Jalan','2026-01-01','72f0f95e-e087-4d4b-a04a-b49782eddde6','16944228-dbf9-4c18-b7da-ac6c376c1a7e'),
('eff28906-6f12-4bd8-b12a-457e4a3f4ef4','selesai','Konsultasi','2025-12-21','72f0f95e-e087-4d4b-a04a-b49782eddde6','16944228-dbf9-4c18-b7da-ac6c376c1a7e'),
('a682cbdd-7a75-423c-b73c-4a861d391d83','dijadwalkan','Rawat Inap','2026-03-30','a73ad326-95c7-4339-820e-db362df4412b','6f72292a-c3ef-4550-ac96-e7d561ad8756'),
('6bcf3af8-31c9-469f-9abd-4ac36844b37c','belum dibayar','UGD','2025-08-17','c8596929-f07d-44bc-83de-aa4078bdb6fd','6f72292a-c3ef-4550-ac96-e7d561ad8756'),
('4632297b-4c93-4500-ae41-4d2515dcbe3b','belum dibayar','UGD','2026-05-14','c82c208f-56e1-44e3-8f8d-89b7f5f5806d','89086a20-5211-4120-8a9b-c0e17a2647da'),
('ded65259-93bc-43c5-8082-4e83aa4981dc','belum dibayar','UGD','2026-05-11','5eaee617-2793-4dac-9ed6-e15053adfc40','cd1c24b4-fe8d-4bcb-864a-00fb85058165'),
('445c1f0b-1784-4eba-bafe-534265fd7497','selesai','ICU','2025-07-01','b1e6a427-0737-4eee-8907-37a913a3edfe','795fcd0d-84e0-482d-a652-8ed5ba4f605c'),
('670081c9-7e2b-4153-8606-5ac75e000d7a','belum dibayar','ICU','2025-12-13','b55e12e4-6ed1-4dc4-aaad-80cefb461e5f','8382a98d-1113-47f6-8bf0-ae2b4524a639'),
('5dd7cbf9-a956-4dce-8d04-5add57562ec6','dibatalkan','Rawat Inap','2025-12-03','9f340e66-094d-4470-b4d9-0efdf5bb9026','8b1dfb1a-2167-4c8c-ab1f-d133100082c4'),
('e0100a02-b969-4967-ba08-5b1bca3fa41a','dibatalkan','UGD','2025-12-31','b1e6a427-0737-4eee-8907-37a913a3edfe','6541dee4-ac5e-44aa-aa59-4183c9048434'),
('5b3f3285-490a-4bfa-bc7f-5b9ffdbcf02b','dijadwalkan','Rawat Jalan','2026-01-11','5d927fdd-c7f6-4d3f-a459-b0a802dde2ce','15b1f792-3600-47d9-85db-ac7ba0525a9d'),
('fddb75bf-b408-4050-81f0-5c12e8552d32','selesai','Rawat Jalan','2025-08-21','4015ac92-4175-48b1-8e8d-4977ff362906','6014e5a9-ef04-4ad8-b110-3fdb588054c2'),
('1f1c4d87-36a2-4127-b89a-5d9329fb250a','selesai','Rawat Jalan','2026-05-13','c8596929-f07d-44bc-83de-aa4078bdb6fd','8b1dfb1a-2167-4c8c-ab1f-d133100082c4'),
('b566844f-2a92-4d40-8273-60695de552e4','selesai','Konsultasi','2026-04-18','ff6757ec-06de-45c6-b47e-f2bb7b4858e8','857d7aad-9153-4e39-832b-24695257d1ab'),
('b378dec7-baff-4ea4-b099-61c88bff17da','dibatalkan','UGD','2025-11-30','72f0f95e-e087-4d4b-a04a-b49782eddde6','d53aea05-c5d8-4a5f-9a42-26c53c7c4723'),
('6a40edc0-46d0-40f1-8468-651d414ca3c0','belum dibayar','ICU','2026-02-09','7f186afe-2b0a-44c1-901a-6b2b9de175f5','84c411aa-a720-411a-ac8b-1eff341e16c2'),
('8a56a0d1-b319-4a56-8c9f-67d1ed00247a','belum dibayar','Rawat Jalan','2026-03-25','c8596929-f07d-44bc-83de-aa4078bdb6fd','6f72292a-c3ef-4550-ac96-e7d561ad8756'),
('cbc661f4-ca4f-41ec-9ba3-69f1165740da','dijadwalkan','UGD','2025-11-13','ff6757ec-06de-45c6-b47e-f2bb7b4858e8','b6d9bbf8-121d-4c3e-996d-956b7744ce6c'),
('82584eb9-d4f8-431d-a0b2-6a68273095aa','selesai','Konsultasi','2025-06-20','b55e12e4-6ed1-4dc4-aaad-80cefb461e5f','16944228-dbf9-4c18-b7da-ac6c376c1a7e'),
('6fa74b44-f753-4977-a141-6ca148878e97','selesai','Operasi','2026-03-13','c82c208f-56e1-44e3-8f8d-89b7f5f5806d','6541dee4-ac5e-44aa-aa59-4183c9048434'),
('f7b3ab93-cfe3-491a-9476-71f1e377ea5e','dijadwalkan','Konsultasi','2026-04-09','5d927fdd-c7f6-4d3f-a459-b0a802dde2ce','795fcd0d-84e0-482d-a652-8ed5ba4f605c'),
('c7bc2d2f-18c3-41a1-9e51-72d11b7575d8','sedang berlangsung','ICU','2025-07-12','ff6757ec-06de-45c6-b47e-f2bb7b4858e8','76fe584d-03fb-4628-9914-1bc416e3996d'),
('afed775d-5437-4498-82d5-786694cb03bb','dibatalkan','Rawat Inap','2025-08-03','7f186afe-2b0a-44c1-901a-6b2b9de175f5','8382a98d-1113-47f6-8bf0-ae2b4524a639'),
('0fefc4c2-c88e-408f-92c4-7be2ddf0940c','dijadwalkan','Rawat Jalan','2025-11-26','7d351403-6253-43ae-9746-7e7e4a8f20f8','76fe584d-03fb-4628-9914-1bc416e3996d'),
('11a07da2-2461-4601-87b9-7d7359db322d','belum dibayar','Konsultasi','2025-12-29','c82c208f-56e1-44e3-8f8d-89b7f5f5806d','89086a20-5211-4120-8a9b-c0e17a2647da'),
('d6bb6f52-a564-4e33-870a-83a6e6fb7af4','selesai','ICU','2026-01-17','5eaee617-2793-4dac-9ed6-e15053adfc40','6014e5a9-ef04-4ad8-b110-3fdb588054c2'),
('fc870085-33b0-4ec2-89e5-84630a763258','dijadwalkan','UGD','2025-12-18','c8596929-f07d-44bc-83de-aa4078bdb6fd','509c5cdb-efee-48f0-a712-3dbe3c7cc3c7'),
('aa30b22a-5cd3-474a-be73-8870027e3883','dijadwalkan','UGD','2026-02-07','a73ad326-95c7-4339-820e-db362df4412b','cfee9477-2b16-4f47-a476-05442a8e96a4'),
('49b0b7e7-8e14-4065-be9c-8bf9c9c37b97','dijadwalkan','Rawat Inap','2025-09-13','a73ad326-95c7-4339-820e-db362df4412b','857d7aad-9153-4e39-832b-24695257d1ab'),
('cb95b09f-e488-49bf-993e-8c46a7996407','belum dibayar','Rawat Inap','2025-07-05','4015ac92-4175-48b1-8e8d-4977ff362906','cd1c24b4-fe8d-4bcb-864a-00fb85058165'),
('1d5b70aa-9e97-4c6d-a237-8e0144918f53','sedang berlangsung','Operasi','2025-06-03','0908ed3b-f84b-4956-a147-f5bb2ca04afa','795fcd0d-84e0-482d-a652-8ed5ba4f605c'),
('635bcd70-8b3a-43c8-82d8-8fd067a8410c','dijadwalkan','Operasi','2025-11-20','5d927fdd-c7f6-4d3f-a459-b0a802dde2ce','8382a98d-1113-47f6-8bf0-ae2b4524a639'),
('1d8e4b9e-da4e-4705-8aa4-9251dd8e042a','dibatalkan','UGD','2025-07-06','ff6757ec-06de-45c6-b47e-f2bb7b4858e8','cfee9477-2b16-4f47-a476-05442a8e96a4'),
('ab0fa925-8495-4ebd-8ea5-92dd4b3d3297','dijadwalkan','Rawat Inap','2026-02-21','ff6757ec-06de-45c6-b47e-f2bb7b4858e8','84c411aa-a720-411a-ac8b-1eff341e16c2'),
('4e2abab6-4b28-4dbd-ab47-96261bf2d890','belum dibayar','Rawat Inap','2026-02-09','72f0f95e-e087-4d4b-a04a-b49782eddde6','6f72292a-c3ef-4550-ac96-e7d561ad8756'),
('2d54e597-dd93-4ce3-b973-9661733e080f','selesai','Rawat Inap','2025-11-10','e980fb54-a53c-4b8c-968c-17fd559846c4','89086a20-5211-4120-8a9b-c0e17a2647da'),
('e11e9677-474a-4814-9db4-988ddbbae21a','sedang berlangsung','Operasi','2026-05-03','72f0f95e-e087-4d4b-a04a-b49782eddde6','8382a98d-1113-47f6-8bf0-ae2b4524a639'),
('369e55b6-2b3d-4052-8183-9ff9ca44a027','belum dibayar','Rawat Inap','2025-11-02','c8596929-f07d-44bc-83de-aa4078bdb6fd','343734db-866f-4ecc-83ec-bdcc61493ec3'),
('8b1e321d-5363-45e6-acf5-a58928475bd7','dibatalkan','ICU','2026-03-13','a73ad326-95c7-4339-820e-db362df4412b','84c411aa-a720-411a-ac8b-1eff341e16c2'),
('9bdc1037-026d-417d-af55-aacc498a2caa','sedang berlangsung','UGD','2025-07-12','7f186afe-2b0a-44c1-901a-6b2b9de175f5','d53aea05-c5d8-4a5f-9a42-26c53c7c4723'),
('137cf76a-c559-47dd-bb9d-b4147cb38f82','dijadwalkan','Rawat Jalan','2025-08-26','9f340e66-094d-4470-b4d9-0efdf5bb9026','b6d9bbf8-121d-4c3e-996d-956b7744ce6c'),
('d2921050-fb78-40ea-8312-baa75c4f4be2','dibatalkan','UGD','2025-10-24','4015ac92-4175-48b1-8e8d-4977ff362906','84c411aa-a720-411a-ac8b-1eff341e16c2'),
('3dd8e3db-b5a2-4f58-b6a2-bb6e53b060b6','sedang berlangsung','Operasi','2025-06-25','b55e12e4-6ed1-4dc4-aaad-80cefb461e5f','6014e5a9-ef04-4ad8-b110-3fdb588054c2'),
('f0505e39-e283-4c94-b28f-bbe53b1e3c63','belum dibayar','UGD','2025-11-30','7d918b95-58d0-4e71-b459-ed19cd24ec17','795fcd0d-84e0-482d-a652-8ed5ba4f605c'),
('d26adcdb-a284-4fd7-838e-bc3bd128dee0','dibatalkan','ICU','2025-11-22','c8596929-f07d-44bc-83de-aa4078bdb6fd','6014e5a9-ef04-4ad8-b110-3fdb588054c2'),
('7b94a0d8-12f4-4d22-973f-c123f54f5079','dijadwalkan','Rawat Inap','2026-05-08','83086da0-1925-4372-b223-8b40975a8f02','cd1c24b4-fe8d-4bcb-864a-00fb85058165'),
('e4cf0d7c-2a80-4e82-9693-c135eb344ad4','dijadwalkan','Rawat Inap','2026-02-06','ff6757ec-06de-45c6-b47e-f2bb7b4858e8','16a34eb7-93ae-49eb-a1ab-33951089655d'),
('f980c475-5d21-4aeb-8a6f-c551814c027e','dijadwalkan','ICU','2025-09-17','b55e12e4-6ed1-4dc4-aaad-80cefb461e5f','d53aea05-c5d8-4a5f-9a42-26c53c7c4723'),
('22af2ad8-5cab-44d5-80bd-cc04617d8006','dibatalkan','Rawat Jalan','2025-12-02','7d351403-6253-43ae-9746-7e7e4a8f20f8','b6d9bbf8-121d-4c3e-996d-956b7744ce6c'),
('d15daef0-263a-49da-bcae-d31059b084e9','dibatalkan','UGD','2026-02-25','5d927fdd-c7f6-4d3f-a459-b0a802dde2ce','795fcd0d-84e0-482d-a652-8ed5ba4f605c'),
('191439bb-f8f9-4a3a-a128-d89070746a2f','belum dibayar','Konsultasi','2026-03-24','83086da0-1925-4372-b223-8b40975a8f02','cfee9477-2b16-4f47-a476-05442a8e96a4'),
('5ee5d935-cf75-4991-b296-d8b997e9975a','sedang berlangsung','Konsultasi','2025-09-06','4015ac92-4175-48b1-8e8d-4977ff362906','795fcd0d-84e0-482d-a652-8ed5ba4f605c'),
('58b89ba8-383c-4bb4-aedc-d9d325d0a7b9','belum dibayar','Rawat Jalan','2025-11-12','b1e6a427-0737-4eee-8907-37a913a3edfe','6014e5a9-ef04-4ad8-b110-3fdb588054c2'),
('8103f9c7-f12c-4905-b195-dd631df72de8','selesai','Rawat Jalan','2026-02-24','83086da0-1925-4372-b223-8b40975a8f02','cd1c24b4-fe8d-4bcb-864a-00fb85058165'),
('9e66c3cf-2d8a-4c7c-a187-e1d53037c123','belum dibayar','Rawat Jalan','2026-04-21','83086da0-1925-4372-b223-8b40975a8f02','857d7aad-9153-4e39-832b-24695257d1ab'),
('5b69d412-b4cd-45ba-9190-e2ff31439f49','selesai','ICU','2025-06-08','c82c208f-56e1-44e3-8f8d-89b7f5f5806d','857d7aad-9153-4e39-832b-24695257d1ab'),
('4976e233-ec10-455e-a2d4-e3dd13f82f77','belum dibayar','ICU','2026-01-02','7d918b95-58d0-4e71-b459-ed19cd24ec17','b6d9bbf8-121d-4c3e-996d-956b7744ce6c'),
('06d4d7ec-66fb-4b51-9076-e67280e5b9ec','sedang berlangsung','Rawat Jalan','2026-02-28','5eaee617-2793-4dac-9ed6-e15053adfc40','6541dee4-ac5e-44aa-aa59-4183c9048434'),
('6dd2e804-5d47-4ccc-a62e-e7e2fa96c466','belum dibayar','Operasi','2025-11-29','b55e12e4-6ed1-4dc4-aaad-80cefb461e5f','16944228-dbf9-4c18-b7da-ac6c376c1a7e'),
('bf990688-1872-4a1f-98b6-e8e076517a3f','dibatalkan','Rawat Inap','2025-10-31','b1e6a427-0737-4eee-8907-37a913a3edfe','6f72292a-c3ef-4550-ac96-e7d561ad8756'),
('16f88438-2a85-4c49-8dda-eb60f7ca26f5','sedang berlangsung','Rawat Inap','2025-07-17','a73ad326-95c7-4339-820e-db362df4412b','6541dee4-ac5e-44aa-aa59-4183c9048434'),
('9df329b2-0ca3-4a28-8b65-ebbc8302d50a','sedang berlangsung','Konsultasi','2026-01-15','4015ac92-4175-48b1-8e8d-4977ff362906','cd1c24b4-fe8d-4bcb-864a-00fb85058165'),
('1435a814-9ea8-41b7-9b90-edff1b004513','dibatalkan','Rawat Inap','2025-10-25','0908ed3b-f84b-4956-a147-f5bb2ca04afa','16a34eb7-93ae-49eb-a1ab-33951089655d'),
('7fefa5c2-9bde-4d5f-a9dd-efad27ebb1c9','dijadwalkan','Rawat Inap','2026-02-12','a73ad326-95c7-4339-820e-db362df4412b','16944228-dbf9-4c18-b7da-ac6c376c1a7e'),
('e56c1fff-ea8b-4ebb-b311-f2e52d5f80e7','dibatalkan','Rawat Inap','2026-05-15','4015ac92-4175-48b1-8e8d-4977ff362906','343734db-866f-4ecc-83ec-bdcc61493ec3'),
('9c3a714a-c944-4b10-b754-fcc17cebc9fd','selesai','Operasi','2025-08-21','72f0f95e-e087-4d4b-a04a-b49782eddde6','795fcd0d-84e0-482d-a652-8ed5ba4f605c'),
('3d25d571-eefe-4aad-9991-fd50281cfe4c','selesai','Rawat Jalan','2025-08-16','c82c208f-56e1-44e3-8f8d-89b7f5f5806d','89086a20-5211-4120-8a9b-c0e17a2647da'),
('61017b49-6427-46e5-94fc-fd79a5725a41','dibatalkan','UGD','2025-09-13','72f0f95e-e087-4d4b-a04a-b49782eddde6','509c5cdb-efee-48f0-a712-3dbe3c7cc3c7'),
('2deefe64-eb92-43e8-945e-fe02b095c775','sedang berlangsung','ICU','2026-02-17','e9e77078-d313-4ae3-a742-ec7e116fd303','b6d9bbf8-121d-4c3e-996d-956b7744ce6c'),
('b830301b-980d-4e3e-a486-ffb9b0888ad1','dijadwalkan','Operasi','2026-02-05','b55e12e4-6ed1-4dc4-aaad-80cefb461e5f','857d7aad-9153-4e39-832b-24695257d1ab');
/*!40000 ALTER TABLE `layanan_medis` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Table structure for table `log_baymin`
--

DROP TABLE IF EXISTS `log_baymin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `log_baymin` (
  `id` uuid NOT NULL DEFAULT uuid(),
  `waktu_penggunaan` datetime NOT NULL,
  `jenis_tindakan` varchar(100) NOT NULL,
  `pasien_id` uuid NOT NULL,
  `baymin_id` uuid NOT NULL,
  PRIMARY KEY (`id`),
  KEY `pasien_id` (`pasien_id`),
  KEY `baymin_id` (`baymin_id`),
  CONSTRAINT `log_baymin_ibfk_1` FOREIGN KEY (`pasien_id`) REFERENCES `pasien` (`id`),
  CONSTRAINT `log_baymin_ibfk_2` FOREIGN KEY (`baymin_id`) REFERENCES `baymin` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `log_baymin`
--

LOCK TABLES `log_baymin` WRITE;
/*!40000 ALTER TABLE `log_baymin` DISABLE KEYS */;
set autocommit=0;
INSERT INTO `log_baymin` VALUES
('a98473ce-cc30-484f-aa58-01a2fcb4e5da','2025-03-22 17:44:22','Pengobatan','ff6757ec-06de-45c6-b47e-f2bb7b4858e8','f2f8e4e1-4a8e-4231-b442-b7e5f8d5a0ef'),
('24dc33ae-d528-48be-96b9-01f57c80247b','2025-03-08 06:55:38','Pemberian Obat','b1e6a427-0737-4eee-8907-37a913a3edfe','bcaeeb06-07ce-4534-8254-81dae5cb50d7'),
('414c97e6-adf8-42e4-a9e6-06be6964a9dd','2025-01-02 10:54:33','Monitoring','c82c208f-56e1-44e3-8f8d-89b7f5f5806d','17c095b4-a679-4eef-b775-3b3b66688dc0'),
('29b7f9bd-f738-4365-9aa3-08733479ce55','2024-11-14 21:50:41','Monitoring','83086da0-1925-4372-b223-8b40975a8f02','bcaeeb06-07ce-4534-8254-81dae5cb50d7'),
('e1d38bc3-b00d-484a-8864-0bfa0f8a9c1b','2024-10-10 20:11:09','Monitoring','e9e77078-d313-4ae3-a742-ec7e116fd303','087f16f0-596f-4250-85f7-ecf130b11cb6'),
('7556419b-62db-41e9-bb24-0c690ec6cd99','2024-11-06 17:42:08','Monitoring','b55e12e4-6ed1-4dc4-aaad-80cefb461e5f','e0778d25-70eb-410e-935c-9accf848bb59'),
('c3f569c6-1214-43d0-9f84-0fd828cfd207','2025-01-18 23:10:21','Konsultasi','7f186afe-2b0a-44c1-901a-6b2b9de175f5','f2f8e4e1-4a8e-4231-b442-b7e5f8d5a0ef'),
('0b99b257-b3e6-4595-86ce-1192383ddf3e','2024-05-27 12:39:40','Pemeriksaan','5eaee617-2793-4dac-9ed6-e15053adfc40','a9056c9c-8141-4fde-88fb-e0490f7dc4c6'),
('305685e2-b668-4440-99c2-1303dd04d282','2025-02-11 20:50:06','Pengobatan','83086da0-1925-4372-b223-8b40975a8f02','99ad35e8-f45c-46ac-b4a4-a54a53abc69f'),
('1e5e78ff-38ea-495d-b5ce-1627b170724e','2024-12-05 16:55:40','Monitoring','71895757-10fb-4217-a4eb-ed7e94192582','99ad35e8-f45c-46ac-b4a4-a54a53abc69f'),
('f37a0743-a16c-46e6-be04-1ee750356146','2024-09-28 01:04:46','Monitoring','4015ac92-4175-48b1-8e8d-4977ff362906','db09191f-13c0-43e7-9529-79a564fb676e'),
('d5714652-d4bd-4a38-883a-1ee8e4e2aec0','2025-03-01 09:47:46','Pengobatan','c82c208f-56e1-44e3-8f8d-89b7f5f5806d','0c9f52e0-05fb-4ad9-81d3-2b7916d187d3'),
('55c9ff4b-4e1c-4553-98a4-1f4ee5c28c13','2025-03-06 06:58:11','Konsultasi','b55e12e4-6ed1-4dc4-aaad-80cefb461e5f','52b29850-f011-4e55-9796-69dda00579e1'),
('9eba7cde-9ec6-4d05-8b3a-252a5fc7a854','2024-06-10 03:35:44','Pengobatan','a73ad326-95c7-4339-820e-db362df4412b','99ad35e8-f45c-46ac-b4a4-a54a53abc69f'),
('6818ccde-729e-4d38-b69c-2dc6115b7ddb','2024-10-02 06:03:34','Monitoring','5eaee617-2793-4dac-9ed6-e15053adfc40','db09191f-13c0-43e7-9529-79a564fb676e'),
('e74df1de-b511-41ab-87d3-2ecc1624e5a0','2024-07-13 10:57:32','Monitoring','c82c208f-56e1-44e3-8f8d-89b7f5f5806d','db09191f-13c0-43e7-9529-79a564fb676e'),
('189554b8-e42a-4c5a-8fe6-302e994cd61b','2024-11-19 05:38:20','Pemberian Obat','71895757-10fb-4217-a4eb-ed7e94192582','99ad35e8-f45c-46ac-b4a4-a54a53abc69f'),
('6cf86e5b-e464-4f17-966c-315dbd6fea40','2025-01-10 01:02:52','Monitoring','e9e77078-d313-4ae3-a742-ec7e116fd303','0c9f52e0-05fb-4ad9-81d3-2b7916d187d3'),
('08d152b4-258e-43d3-84b8-324e4f28f562','2024-09-16 21:04:32','Konsultasi','b55e12e4-6ed1-4dc4-aaad-80cefb461e5f','dd3ff45d-a013-4107-ad9d-3c39e62b854e'),
('6c450639-8cae-4c9a-ad6e-331472f6de69','2025-03-17 06:48:43','Pemberian Obat','5d927fdd-c7f6-4d3f-a459-b0a802dde2ce','087f16f0-596f-4250-85f7-ecf130b11cb6'),
('5e1d526a-3466-488c-85df-33c6c94ce874','2024-12-27 20:56:48','Konsultasi','0908ed3b-f84b-4956-a147-f5bb2ca04afa','087f16f0-596f-4250-85f7-ecf130b11cb6'),
('0e6641a0-82f6-4b49-b079-358bfb813bf0','2024-12-27 04:46:27','Pemeriksaan','e980fb54-a53c-4b8c-968c-17fd559846c4','a9056c9c-8141-4fde-88fb-e0490f7dc4c6'),
('469e8f23-5660-4682-8614-358ca3d1193d','2024-11-05 15:24:09','Konsultasi','b1e6a427-0737-4eee-8907-37a913a3edfe','5bed2352-7bbf-449a-b58e-9757f59815a5'),
('5891e1c9-a5b7-4ea5-8047-3722e408dd43','2025-04-26 13:34:27','Pengobatan','ff6757ec-06de-45c6-b47e-f2bb7b4858e8','bcaeeb06-07ce-4534-8254-81dae5cb50d7'),
('97f978b4-5ae6-4f59-9e1e-3d61cdfefb1d','2024-09-10 09:49:16','Pengobatan','7d351403-6253-43ae-9746-7e7e4a8f20f8','db09191f-13c0-43e7-9529-79a564fb676e'),
('3a607ce2-ea20-44c3-b9b9-48aecea77a32','2024-10-19 14:26:33','Monitoring','7f186afe-2b0a-44c1-901a-6b2b9de175f5','f2f8e4e1-4a8e-4231-b442-b7e5f8d5a0ef'),
('2272071a-938d-483a-8a22-5114cbc5c52a','2024-09-10 12:31:48','Pengobatan','b1e6a427-0737-4eee-8907-37a913a3edfe','17c095b4-a679-4eef-b775-3b3b66688dc0'),
('675a76f9-17c5-4b34-a803-53722e81d3e7','2025-04-18 10:17:54','Monitoring','c8596929-f07d-44bc-83de-aa4078bdb6fd','cb71b964-11e9-41bd-b490-60ca186f036a'),
('3a784ed3-ba70-49dc-aa89-56536ed4203c','2024-06-27 14:34:47','Pengobatan','a73ad326-95c7-4339-820e-db362df4412b','9f67ab89-1175-4aa7-81b7-cc6aba557eaf'),
('0376d062-a77a-4d9d-ad4e-58a86afa5a27','2024-08-31 13:37:16','Pemberian Obat','5d927fdd-c7f6-4d3f-a459-b0a802dde2ce','17c095b4-a679-4eef-b775-3b3b66688dc0'),
('07b99efc-7f91-4acc-a621-5a07213ddbc3','2025-03-16 09:45:58','Pemeriksaan','0908ed3b-f84b-4956-a147-f5bb2ca04afa','db213ec5-0a89-4ed0-aff0-653e03d62264'),
('93b7065a-b39b-4176-b8b6-5a48e051814e','2024-12-29 14:43:48','Konsultasi','5d927fdd-c7f6-4d3f-a459-b0a802dde2ce','db09191f-13c0-43e7-9529-79a564fb676e'),
('9f2c738f-ffcc-42b0-95a1-5bc877dd3faf','2024-07-21 06:07:39','Pengobatan','83086da0-1925-4372-b223-8b40975a8f02','087f16f0-596f-4250-85f7-ecf130b11cb6'),
('da69dfb6-d5d9-4ea8-b11b-5e78523859e9','2024-07-27 00:17:45','Pengobatan','b55e12e4-6ed1-4dc4-aaad-80cefb461e5f','52b29850-f011-4e55-9796-69dda00579e1'),
('45ead996-b17f-4185-a032-617e91400222','2024-06-15 16:24:55','Pemberian Obat','a73ad326-95c7-4339-820e-db362df4412b','17c095b4-a679-4eef-b775-3b3b66688dc0'),
('685a0061-f51e-4b86-8b31-61a28a1bf20e','2024-11-12 02:40:25','Pemeriksaan','84e9d669-a532-4dcb-97c4-84360ba86e98','d2c4bd3a-7986-4a99-be4b-523afb0bfdeb'),
('628d2955-37f7-4b6e-aea4-645d2d36e9a0','2024-12-31 07:54:44','Pemberian Obat','e980fb54-a53c-4b8c-968c-17fd559846c4','0c9f52e0-05fb-4ad9-81d3-2b7916d187d3'),
('2cbfe9a9-5a63-4566-8094-66e16ef769a8','2024-07-19 22:23:17','Monitoring','7d918b95-58d0-4e71-b459-ed19cd24ec17','e0778d25-70eb-410e-935c-9accf848bb59'),
('7b1c01d2-9a06-4020-9f52-697c7c02a947','2025-01-18 20:21:41','Pengobatan','c82c208f-56e1-44e3-8f8d-89b7f5f5806d','946b94a6-292c-452a-9748-b04c02f85462'),
('803fe14e-238b-44a2-9583-6a79160b38e5','2024-11-21 20:53:49','Pengobatan','4015ac92-4175-48b1-8e8d-4977ff362906','d2c4bd3a-7986-4a99-be4b-523afb0bfdeb'),
('5e18063e-086a-42a4-9977-6e3cdb294d5b','2024-11-28 19:23:43','Konsultasi','7d918b95-58d0-4e71-b459-ed19cd24ec17','52b29850-f011-4e55-9796-69dda00579e1'),
('7722bd40-2542-40cc-a9d8-6ec0e207baa7','2025-03-23 21:24:38','Pengobatan','7d351403-6253-43ae-9746-7e7e4a8f20f8','06385662-87fc-435a-86e7-58095fa1dce1'),
('592ca6e2-c05f-4ca0-aa22-75f8194e5cf9','2025-04-29 10:14:55','Konsultasi','a73ad326-95c7-4339-820e-db362df4412b','e0778d25-70eb-410e-935c-9accf848bb59'),
('fde7c9e8-3ebb-4ff4-a336-7740ca72b654','2024-12-29 07:53:41','Pemeriksaan','5d927fdd-c7f6-4d3f-a459-b0a802dde2ce','dd3ff45d-a013-4107-ad9d-3c39e62b854e'),
('d06db266-170c-46e1-834c-774bdbc090dd','2024-12-25 20:23:52','Pemberian Obat','b55e12e4-6ed1-4dc4-aaad-80cefb461e5f','06385662-87fc-435a-86e7-58095fa1dce1'),
('ad1be0fa-d387-459d-9881-7994acd4097a','2024-10-19 21:07:58','Konsultasi','ff6757ec-06de-45c6-b47e-f2bb7b4858e8','52b29850-f011-4e55-9796-69dda00579e1'),
('374a7a16-f870-4c58-a32b-7e14b0f9583d','2025-05-15 16:32:59','Monitoring','ff6757ec-06de-45c6-b47e-f2bb7b4858e8','0c9f52e0-05fb-4ad9-81d3-2b7916d187d3'),
('a2ffd902-caf9-42b2-ba81-7e6c1243b036','2024-12-06 10:47:49','Pengobatan','b1e6a427-0737-4eee-8907-37a913a3edfe','e0778d25-70eb-410e-935c-9accf848bb59'),
('467a6a6a-615b-4d41-ab1d-7ffaa23d1b3d','2024-10-20 06:29:08','Pengobatan','b1e6a427-0737-4eee-8907-37a913a3edfe','52b29850-f011-4e55-9796-69dda00579e1'),
('6798162a-6003-49c5-9be0-81e472fa62a7','2024-10-03 17:29:35','Pemberian Obat','5d927fdd-c7f6-4d3f-a459-b0a802dde2ce','9f67ab89-1175-4aa7-81b7-cc6aba557eaf'),
('f6e16084-c8d0-4de4-895b-87fab994183f','2025-05-06 23:33:16','Pemeriksaan','c8596929-f07d-44bc-83de-aa4078bdb6fd','087f16f0-596f-4250-85f7-ecf130b11cb6'),
('b1b901a4-94b7-4232-9268-897add351e7f','2025-02-16 05:00:49','Pemeriksaan','83086da0-1925-4372-b223-8b40975a8f02','a69e45a6-9529-48b0-868d-77cdbae38729'),
('80059f02-9772-4abc-a179-89875c538c10','2025-01-08 14:26:03','Pemeriksaan','c82c208f-56e1-44e3-8f8d-89b7f5f5806d','db09191f-13c0-43e7-9529-79a564fb676e'),
('d4778834-7d15-4a64-9c37-8d29c3d9f780','2024-12-05 18:47:42','Pemberian Obat','b55e12e4-6ed1-4dc4-aaad-80cefb461e5f','99ad35e8-f45c-46ac-b4a4-a54a53abc69f'),
('5f309da5-eb17-48a1-92c7-8d8356142015','2025-02-06 19:11:08','Monitoring','7d918b95-58d0-4e71-b459-ed19cd24ec17','52b29850-f011-4e55-9796-69dda00579e1'),
('e907bbbc-3b96-4730-bbff-8de4a88f76ad','2025-03-18 06:56:39','Monitoring','b55e12e4-6ed1-4dc4-aaad-80cefb461e5f','946b94a6-292c-452a-9748-b04c02f85462'),
('00fe483b-4995-4116-a1ef-8f554995c387','2025-02-12 14:13:01','Monitoring','7d351403-6253-43ae-9746-7e7e4a8f20f8','5bed2352-7bbf-449a-b58e-9757f59815a5'),
('d4fd7bb2-0968-484a-8ca1-9435890e664b','2025-01-08 18:42:19','Pemeriksaan','e9e77078-d313-4ae3-a742-ec7e116fd303','946b94a6-292c-452a-9748-b04c02f85462'),
('394d0c75-de41-4c9e-90ab-94a79322bc2b','2025-03-29 03:15:50','Pemeriksaan','c82c208f-56e1-44e3-8f8d-89b7f5f5806d','17c095b4-a679-4eef-b775-3b3b66688dc0'),
('d9df52d7-7f03-40a9-91a5-9506dcdf3802','2024-12-30 08:19:19','Pemberian Obat','0908ed3b-f84b-4956-a147-f5bb2ca04afa','5bed2352-7bbf-449a-b58e-9757f59815a5'),
('cd62de1c-4a2b-44ff-a18b-9659b412c6f5','2024-08-05 20:17:13','Pemeriksaan','5d927fdd-c7f6-4d3f-a459-b0a802dde2ce','52b29850-f011-4e55-9796-69dda00579e1'),
('8ed45bbb-daad-45ff-9613-9a54fa458132','2025-04-11 18:41:27','Pemberian Obat','83086da0-1925-4372-b223-8b40975a8f02','a9056c9c-8141-4fde-88fb-e0490f7dc4c6'),
('af247cd7-9ee5-4ff7-a40b-9a95c6163263','2025-04-06 07:18:12','Konsultasi','7d918b95-58d0-4e71-b459-ed19cd24ec17','0c9f52e0-05fb-4ad9-81d3-2b7916d187d3'),
('69cb897a-cd0e-422f-b64c-9c345cdb1e32','2024-05-24 02:32:57','Konsultasi','72f0f95e-e087-4d4b-a04a-b49782eddde6','06385662-87fc-435a-86e7-58095fa1dce1'),
('23b87f8e-9a3a-491f-8bb1-9f0a1d7cd6b7','2024-08-28 12:50:45','Pemeriksaan','a73ad326-95c7-4339-820e-db362df4412b','087f16f0-596f-4250-85f7-ecf130b11cb6'),
('f1a06543-c935-4248-ad85-9f754a70c0bc','2025-03-22 11:40:09','Monitoring','e9e77078-d313-4ae3-a742-ec7e116fd303','db09191f-13c0-43e7-9529-79a564fb676e'),
('aafd3949-da1b-4a47-9a2f-a14376156bc9','2024-11-15 18:36:46','Konsultasi','e9e77078-d313-4ae3-a742-ec7e116fd303','5bed2352-7bbf-449a-b58e-9757f59815a5'),
('ea7f4edd-6ec1-4ef8-9ec9-a5554a46b517','2025-05-16 14:40:08','Monitoring','9f340e66-094d-4470-b4d9-0efdf5bb9026','5bed2352-7bbf-449a-b58e-9757f59815a5'),
('8d3a5a42-8f44-4faa-9b6f-a90912313bc7','2024-09-30 21:15:51','Pemeriksaan','c8596929-f07d-44bc-83de-aa4078bdb6fd','e0778d25-70eb-410e-935c-9accf848bb59'),
('4e7aeeb0-bf9f-4bfe-ac32-abbdbe1d2524','2024-06-01 23:59:47','Pengobatan','84e9d669-a532-4dcb-97c4-84360ba86e98','dd3ff45d-a013-4107-ad9d-3c39e62b854e'),
('341f0b6c-bebe-496c-87bc-ad3996bf68a2','2024-09-15 05:51:15','Pemberian Obat','9f340e66-094d-4470-b4d9-0efdf5bb9026','52b29850-f011-4e55-9796-69dda00579e1'),
('7a756153-26fe-410a-9f09-b23d07187a5e','2025-02-02 16:42:24','Pemberian Obat','4015ac92-4175-48b1-8e8d-4977ff362906','52b29850-f011-4e55-9796-69dda00579e1'),
('4bc3f892-61b3-4887-8151-b5165aff3417','2024-08-12 06:39:34','Pengobatan','71895757-10fb-4217-a4eb-ed7e94192582','d2c4bd3a-7986-4a99-be4b-523afb0bfdeb'),
('aa1dbe43-97a7-47f3-b4d8-b8b885740c6f','2025-05-08 21:07:53','Monitoring','5eaee617-2793-4dac-9ed6-e15053adfc40','0c9f52e0-05fb-4ad9-81d3-2b7916d187d3'),
('0dcebbf7-c525-4485-ad9f-b915ccbf9a7e','2024-10-03 20:59:11','Pemberian Obat','7d918b95-58d0-4e71-b459-ed19cd24ec17','e0778d25-70eb-410e-935c-9accf848bb59'),
('ea5f3f13-54a7-4fd7-b77e-b9b6c7041c6e','2025-04-04 12:37:02','Pengobatan','5eaee617-2793-4dac-9ed6-e15053adfc40','0c9f52e0-05fb-4ad9-81d3-2b7916d187d3'),
('da97051c-9672-435b-8ea9-be28c6f6da52','2025-01-12 08:35:48','Pengobatan','7d918b95-58d0-4e71-b459-ed19cd24ec17','9f67ab89-1175-4aa7-81b7-cc6aba557eaf'),
('682002cb-3419-4549-a60c-be2fbff95423','2025-01-11 01:12:41','Pemberian Obat','83086da0-1925-4372-b223-8b40975a8f02','52b29850-f011-4e55-9796-69dda00579e1'),
('5c19691d-99f4-4803-8938-bf7d25798100','2025-01-25 13:03:46','Pengobatan','e980fb54-a53c-4b8c-968c-17fd559846c4','db09191f-13c0-43e7-9529-79a564fb676e'),
('cca625b2-b013-4b3a-b201-c0a117a00c9f','2025-02-08 02:55:00','Pemeriksaan','7d918b95-58d0-4e71-b459-ed19cd24ec17','0c9f52e0-05fb-4ad9-81d3-2b7916d187d3'),
('3e8893be-0adf-43af-8c4a-c30720c8a86d','2024-11-27 13:00:42','Pemeriksaan','7d351403-6253-43ae-9746-7e7e4a8f20f8','52b29850-f011-4e55-9796-69dda00579e1'),
('46808b8d-38b8-4143-851b-c7f76193ffe6','2025-03-30 18:59:53','Pemeriksaan','c8596929-f07d-44bc-83de-aa4078bdb6fd','0c9f52e0-05fb-4ad9-81d3-2b7916d187d3'),
('ee27e823-6fae-4f21-abb1-cb1d0867d123','2024-08-10 21:51:02','Pemberian Obat','c8596929-f07d-44bc-83de-aa4078bdb6fd','a69e45a6-9529-48b0-868d-77cdbae38729'),
('c37def4e-95e9-4a8e-92e9-d44afc8f97d4','2024-07-02 21:49:09','Monitoring','72f0f95e-e087-4d4b-a04a-b49782eddde6','dd3ff45d-a013-4107-ad9d-3c39e62b854e'),
('4aa62058-0268-4381-a115-d4fd2619fefb','2024-08-23 20:18:04','Konsultasi','83086da0-1925-4372-b223-8b40975a8f02','0c9f52e0-05fb-4ad9-81d3-2b7916d187d3'),
('11b946d6-2ee4-4521-a563-d87bd39490e0','2025-04-15 23:11:28','Pemeriksaan','e980fb54-a53c-4b8c-968c-17fd559846c4','06385662-87fc-435a-86e7-58095fa1dce1'),
('70c51662-8dee-490a-8c54-d983950208b1','2024-12-23 16:19:51','Pemberian Obat','71895757-10fb-4217-a4eb-ed7e94192582','db09191f-13c0-43e7-9529-79a564fb676e'),
('5cf00f34-b2b3-4272-ae1c-dc8c6c55e075','2024-05-18 01:28:29','Pemberian Obat','7d918b95-58d0-4e71-b459-ed19cd24ec17','dd3ff45d-a013-4107-ad9d-3c39e62b854e'),
('88b464a7-e745-4087-b63a-e14f38811d57','2024-05-25 01:08:53','Pemberian Obat','4015ac92-4175-48b1-8e8d-4977ff362906','946b94a6-292c-452a-9748-b04c02f85462'),
('3f35c422-18a2-476f-824d-e607fbeb9ca2','2024-09-08 09:00:48','Pemeriksaan','5eaee617-2793-4dac-9ed6-e15053adfc40','a69e45a6-9529-48b0-868d-77cdbae38729'),
('72c78bed-481b-4f29-955b-e71cfd8fa1b8','2025-04-27 16:56:35','Pengobatan','b1e6a427-0737-4eee-8907-37a913a3edfe','a9056c9c-8141-4fde-88fb-e0490f7dc4c6'),
('acc27295-b557-4958-997b-e872af704248','2024-08-10 17:21:08','Pengobatan','e9e77078-d313-4ae3-a742-ec7e116fd303','dd3ff45d-a013-4107-ad9d-3c39e62b854e'),
('01278e1a-a6c1-4c8b-a36e-ec694676472f','2024-06-20 16:52:23','Pemeriksaan','4015ac92-4175-48b1-8e8d-4977ff362906','abf548a8-7c5d-421c-b767-256e35fe42b9'),
('1c8c00fd-b3cb-4326-802b-eea47c5d0469','2024-09-05 00:00:37','Pengobatan','e980fb54-a53c-4b8c-968c-17fd559846c4','d2c4bd3a-7986-4a99-be4b-523afb0bfdeb'),
('63ebd588-3037-460f-b776-f0dab6260efe','2025-04-01 09:45:11','Pengobatan','b55e12e4-6ed1-4dc4-aaad-80cefb461e5f','17c095b4-a679-4eef-b775-3b3b66688dc0'),
('fd3db047-f24a-464b-bc96-f3efd477a406','2025-02-05 13:44:01','Pemeriksaan','5d927fdd-c7f6-4d3f-a459-b0a802dde2ce','f2f8e4e1-4a8e-4231-b442-b7e5f8d5a0ef'),
('5b67f969-7494-4b48-ad68-facae08a805e','2024-07-21 15:12:45','Pengobatan','0908ed3b-f84b-4956-a147-f5bb2ca04afa','db09191f-13c0-43e7-9529-79a564fb676e'),
('acaa6076-6bb4-4445-97dc-fbec48e28cf0','2024-06-16 21:42:19','Pemeriksaan','b1e6a427-0737-4eee-8907-37a913a3edfe','0c9f52e0-05fb-4ad9-81d3-2b7916d187d3'),
('8468a2c0-69b0-4fd4-b2bb-fd3c07b76062','2024-10-06 10:46:01','Pemeriksaan','7d918b95-58d0-4e71-b459-ed19cd24ec17','5bed2352-7bbf-449a-b58e-9757f59815a5'),
('dd8915dd-fe29-4e5e-8f59-ff51b180c39d','2024-07-31 11:51:20','Pemberian Obat','b55e12e4-6ed1-4dc4-aaad-80cefb461e5f','db09191f-13c0-43e7-9529-79a564fb676e');
/*!40000 ALTER TABLE `log_baymin` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Table structure for table `obat`
--

DROP TABLE IF EXISTS `obat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `obat` (
  `id` uuid NOT NULL DEFAULT uuid(),
  `nama` varchar(100) NOT NULL,
  `harga` int(11) NOT NULL,
  `label` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `obat`
--

LOCK TABLES `obat` WRITE;
/*!40000 ALTER TABLE `obat` DISABLE KEYS */;
set autocommit=0;
INSERT INTO `obat` VALUES
('b6ff30c1-5560-4469-85d9-124f63a52f25','Iure Vero',380448,'Obat Resep'),
('fedf477c-5830-40db-a227-1509cce5a3b6','Eum Architecto',344670,'Obat Resep'),
('0dfb67ee-7dc9-4ebb-9e2f-164c97f5ff66','Sapiente Maxime',77067,'Obat Keras'),
('27e86b75-c355-4b60-bd31-1f7b4a2dfe36','Maxime Ullam',294489,'Obat Resep'),
('a363f6bd-ccd1-490c-8fcc-1f80ce389e5e','Harum Saepe',141655,'Obat Resep'),
('d5538452-9087-42ff-a72b-24590b4bd7e7','Praesentium Libero',489778,'Obat Bebas'),
('fc3be195-7032-4966-80d2-2d7cb6eb8997','Numquam Nostrum',40409,'Obat Bebas'),
('55d8b45d-0f9c-4bf6-a200-328ec4a71c7f','Aspernatur Est',222801,'Obat Keras'),
('2d2149b2-ea14-4408-95e6-57fb065176b3','Distinctio Tempora',117549,'Obat Herbal'),
('c27e7307-76e6-4026-9301-70179cacbb72','Dignissimos Ipsam',334880,'Obat Keras'),
('15adb03d-97ff-499f-a59b-8c177495aa0c','Repellat Aspernatur',366436,'Obat Keras'),
('d872c37f-2822-4c6f-93d7-8f747e114645','Consectetur Inventore',51433,'Obat Bebas'),
('8ef609b0-e0a5-4d6a-bcb5-920c814bd956','Quam Quaerat',467593,'Obat Keras'),
('46ed1d40-3872-4d55-b060-9306548e79b2','Praesentium A',163192,'Obat Resep'),
('41213eb6-3f64-4820-81da-b018688fd18f','Expedita Libero',157622,'Obat Keras'),
('56c47aa9-0836-4c89-acdf-c00965e83ad4','Natus Optio',209723,'Obat Herbal'),
('0c37d8bf-4322-4c55-8250-d0ddfc35c36e','Ea Optio',396998,'Obat Keras'),
('ec02bfe7-0f0a-4f37-8a21-dff4e3789cab','Nulla Reiciendis',136969,'Obat Resep'),
('5214c9b0-411c-482e-a5ef-f317299e33e1','Consectetur Sed',383830,'Obat Keras'),
('39abe7f2-a0bc-44b2-9725-f9abbff9e330','Esse Ratione',41990,'Obat Bebas');
/*!40000 ALTER TABLE `obat` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Table structure for table `pasien`
--

DROP TABLE IF EXISTS `pasien`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `pasien` (
  `id` uuid NOT NULL DEFAULT uuid(),
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `nama_lengkap` varchar(100) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `nomor_telepon` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pasien`
--

LOCK TABLES `pasien` WRITE;
/*!40000 ALTER TABLE `pasien` DISABLE KEYS */;
set autocommit=0;
INSERT INTO `pasien` VALUES
('9f340e66-094d-4470-b4d9-0efdf5bb9026','syahrinifujiati@example.com','#ZbZ(ig@t2','Genta Pradipta','1996-07-19','(068) 269 1455'),
('e980fb54-a53c-4b8c-968c-17fd559846c4','usaputra@example.com','W@1AAa4dCZ','Hj. Keisha Safitri','1979-11-26','+62 (51) 841 3078'),
('b1e6a427-0737-4eee-8907-37a913a3edfe','samsul86@example.com','jv2(TXmg($','Adikara Napitupulu','1935-09-09','+62-897-189-7868'),
('4015ac92-4175-48b1-8e8d-4977ff362906','alambana28@example.net','#6TTdVpHq@','Zaenab Prastuti','2000-03-17','(0052) 345 3505'),
('7f186afe-2b0a-44c1-901a-6b2b9de175f5','kkurniawan@example.com','@yxNRO9^0t','Hj. Restu Wahyudin, S.E.','1985-12-30','+62-0323-626-0675'),
('7d351403-6253-43ae-9746-7e7e4a8f20f8','zulkarnaincahyono@example.net','l_3W+Mgx&p','Maida Jailani','1967-09-16','+62 (85) 458 5403'),
('b55e12e4-6ed1-4dc4-aaad-80cefb461e5f','darmajihassanah@example.com','$yuPIIaAO7','Yuliana Anggraini','1986-12-24','+62-024-506-2448'),
('84e9d669-a532-4dcb-97c4-84360ba86e98','virmanrajasa@example.org',')m!*+5LjkW','Humaira Namaga, S.E.','1966-11-04','0836370905'),
('c82c208f-56e1-44e3-8f8d-89b7f5f5806d','cemanikusmawati@example.net','*HQ4EUYh01','Sutan Usman Kuswandari, M.Farm','1980-07-01','0872525809'),
('83086da0-1925-4372-b223-8b40975a8f02','ssitumorang@example.org','D8^V5Epv&D','Ganjaran Prakasa','1981-07-31','0825589537'),
('c8596929-f07d-44bc-83de-aa4078bdb6fd','olga91@example.com','vrzPFEau@3','Cut Zelaya Hartati, S.Pd','1994-08-06','083 946 6717'),
('5d927fdd-c7f6-4d3f-a459-b0a802dde2ce','gzulaika@example.net','+r9VN0lcMu','dr. Qori Uyainah','1970-04-21','+62-0081-791-7109'),
('72f0f95e-e087-4d4b-a04a-b49782eddde6','ganep56@example.org','7!R2C9v^qP','Aswani Wahyuni','1961-04-27','+62 (042) 546 1969'),
('a73ad326-95c7-4339-820e-db362df4412b','makara88@example.com','O4G1fuDE*&','R. Darmaji Permata','1968-12-22','+62 (0488) 732-3696'),
('5eaee617-2793-4dac-9ed6-e15053adfc40','violet68@example.com','+5UOGstIvO','Iriana Thamrin','2005-05-04','(091) 757 4330'),
('e9e77078-d313-4ae3-a742-ec7e116fd303','raden30@example.org','92dyUJzk+w','R. Ihsan Novitasari','1992-04-10','(0168) 623 1547'),
('7d918b95-58d0-4e71-b459-ed19cd24ec17','ihsanyuniar@example.net','5Bg9WmOex%','Galang Sirait','2005-12-27','+62 (646) 948 0768'),
('71895757-10fb-4217-a4eb-ed7e94192582','agnes35@example.net','eVu3R4Feg(','Michelle Hutagalung','2003-07-12','+62 (0512) 311-8953'),
('ff6757ec-06de-45c6-b47e-f2bb7b4858e8','harja70@example.com','R#59Y^h)^(','Dariati Najmudin','1965-07-20','+62-048-482-1413'),
('0908ed3b-f84b-4956-a147-f5bb2ca04afa','sitompuloman@example.net','Q5W5VWnF(C','Tgk. Harto Hidayanto','1991-06-08','+62-0352-513-1241');
/*!40000 ALTER TABLE `pasien` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Table structure for table `pemesanan_obat`
--

DROP TABLE IF EXISTS `pemesanan_obat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `pemesanan_obat` (
  `id` uuid NOT NULL DEFAULT uuid(),
  `status` enum('belum dibayar','dijadwalkan','sedang berlangsung','selesai','dibatalkan') NOT NULL,
  `alamat_id` uuid NOT NULL,
  `rumah_sakit_id` uuid NOT NULL,
  PRIMARY KEY (`id`),
  KEY `alamat_id` (`alamat_id`),
  KEY `rumah_sakit_id` (`rumah_sakit_id`),
  CONSTRAINT `pemesanan_obat_ibfk_1` FOREIGN KEY (`alamat_id`) REFERENCES `alamat` (`id`),
  CONSTRAINT `pemesanan_obat_ibfk_2` FOREIGN KEY (`rumah_sakit_id`) REFERENCES `rumah_sakit` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pemesanan_obat`
--

LOCK TABLES `pemesanan_obat` WRITE;
/*!40000 ALTER TABLE `pemesanan_obat` DISABLE KEYS */;
set autocommit=0;
INSERT INTO `pemesanan_obat` VALUES
('18b1241f-80e6-45a7-9c2c-00ecfe0ba2a0','dibatalkan','7b7e3fb4-001a-44c1-b152-acb6162b486f','857d7aad-9153-4e39-832b-24695257d1ab'),
('0376a34c-bab9-4fc9-97ae-027466e2ec97','dijadwalkan','b46fe5f2-22cc-4e85-bf95-635abb0aaca9','343734db-866f-4ecc-83ec-bdcc61493ec3'),
('5da13c5d-b0c6-4f30-94b7-03f1100cedb5','belum dibayar','04ea4acd-aee1-452d-9193-f03c92a07aed','f81303c5-6de4-407f-aaf0-91d416b8745f'),
('77865550-d265-4a2c-9331-07b9b321dce9','selesai','cbbf43f2-042e-4c5e-993e-db0af42aa560','f81303c5-6de4-407f-aaf0-91d416b8745f'),
('e5dc2e34-4a93-4e3f-a68d-0886c0793c7e','dibatalkan','0b46e106-569c-4f07-89f3-bd5e8223ac59','6f72292a-c3ef-4550-ac96-e7d561ad8756'),
('7604f8b3-4a97-4ca7-bca5-0ac6378521e5','sedang berlangsung','b46fe5f2-22cc-4e85-bf95-635abb0aaca9','76fe584d-03fb-4628-9914-1bc416e3996d'),
('87c13583-f797-4bef-905e-0b4759f3d932','dibatalkan','7b7e3fb4-001a-44c1-b152-acb6162b486f','f81303c5-6de4-407f-aaf0-91d416b8745f'),
('62d8be12-cd5e-40eb-8336-0d79739943d3','belum dibayar','04ea4acd-aee1-452d-9193-f03c92a07aed','76fe584d-03fb-4628-9914-1bc416e3996d'),
('a57f0908-3ad5-4621-9c79-118981be3a61','sedang berlangsung','7c0be8ad-b8ee-4739-bda6-a2751f7d5e0e','857d7aad-9153-4e39-832b-24695257d1ab'),
('f6afc3b4-547a-4dff-8340-147a8aa086f7','selesai','23ae986e-9be7-45e1-b743-42968761d058','16944228-dbf9-4c18-b7da-ac6c376c1a7e'),
('44fc80ad-c007-4bcc-bce7-1be9a32a89c2','belum dibayar','13626f12-3256-4b52-a283-8cef3f7b633c','cfee9477-2b16-4f47-a476-05442a8e96a4'),
('382cba7c-bdd3-4526-8229-1df49f3ed34d','dibatalkan','479dfd0e-66d4-4a9f-8951-dbb4c81c9b07','6f72292a-c3ef-4550-ac96-e7d561ad8756'),
('b33965d9-a600-4325-90ea-1e0f473d0ca8','dijadwalkan','0ff676fa-5061-48c0-affc-d181f1143bbf','6f72292a-c3ef-4550-ac96-e7d561ad8756'),
('224d354d-cc27-49f0-acf6-1f42ab36d3b0','dijadwalkan','f425230d-96eb-4ab9-ba5e-f11945653422','857d7aad-9153-4e39-832b-24695257d1ab'),
('ac4d1a4b-93f6-405e-a188-20139913df5e','dibatalkan','e144059e-1696-49a6-a3fb-4b5bdc26f10c','6541dee4-ac5e-44aa-aa59-4183c9048434'),
('48f4c776-43e4-4786-9ff8-218b938f340f','sedang berlangsung','00a7c423-ee50-4187-b365-9646fb8ee852','15b1f792-3600-47d9-85db-ac7ba0525a9d'),
('71732b0a-e9a0-42a9-bcfb-2345ae863fe0','dijadwalkan','07f9f129-6562-4579-93a2-f3ee355c3a95','6f72292a-c3ef-4550-ac96-e7d561ad8756'),
('a5b7eb7c-d84a-4d68-9fa0-23a79df4c738','sedang berlangsung','0ff676fa-5061-48c0-affc-d181f1143bbf','76fe584d-03fb-4628-9914-1bc416e3996d'),
('aafc45d9-5e11-4a4a-848f-24623ea3ff91','sedang berlangsung','23ae986e-9be7-45e1-b743-42968761d058','795fcd0d-84e0-482d-a652-8ed5ba4f605c'),
('16267f43-6315-4888-b810-25416e840aaf','dijadwalkan','13626f12-3256-4b52-a283-8cef3f7b633c','343734db-866f-4ecc-83ec-bdcc61493ec3'),
('a34893dc-af94-4fb0-b1c3-26b09c834abf','selesai','00a7c423-ee50-4187-b365-9646fb8ee852','8382a98d-1113-47f6-8bf0-ae2b4524a639'),
('88b36bc2-64b5-4664-b4dc-2880daa223e4','dibatalkan','0ff676fa-5061-48c0-affc-d181f1143bbf','cfee9477-2b16-4f47-a476-05442a8e96a4'),
('c12aa9eb-46bb-44ed-9a71-2b918eb3735c','dibatalkan','e6dbec3a-b988-4b37-90c0-96a9bac6c469','cd1c24b4-fe8d-4bcb-864a-00fb85058165'),
('6e0ec5ec-beee-4837-962f-2cdda250afe4','belum dibayar','0b46e106-569c-4f07-89f3-bd5e8223ac59','8b1dfb1a-2167-4c8c-ab1f-d133100082c4'),
('537deef6-c107-4de1-9749-2e1fd98fbb03','dijadwalkan','6d1d0268-543b-4591-9948-dcc4cbb8aa94','b6d9bbf8-121d-4c3e-996d-956b7744ce6c'),
('6f275f35-2350-4ca5-80f6-2eec2382fccb','dijadwalkan','f9910822-75ad-46a3-9573-8bda4c131297','857d7aad-9153-4e39-832b-24695257d1ab'),
('96b2ecde-5680-4571-971f-30926222731c','belum dibayar','7c0be8ad-b8ee-4739-bda6-a2751f7d5e0e','f81303c5-6de4-407f-aaf0-91d416b8745f'),
('96d5fec4-ef08-491e-abfa-320ce42f9ac8','belum dibayar','07f9f129-6562-4579-93a2-f3ee355c3a95','16944228-dbf9-4c18-b7da-ac6c376c1a7e'),
('268bfb23-edc2-4a40-988e-35017e32586f','belum dibayar','4d0857ee-4bc4-4d09-bbfd-8162829aa722','16a34eb7-93ae-49eb-a1ab-33951089655d'),
('319a66c4-38d9-4fb5-9943-350b4a683fde','dijadwalkan','02eea9ef-d78c-4690-b908-a723aaed5815','cfee9477-2b16-4f47-a476-05442a8e96a4'),
('4eab9e9c-2151-49fb-87f0-39eddbd98ae9','dijadwalkan','5b9f12cc-4411-4cb6-8e59-4c9767a8ff1d','89086a20-5211-4120-8a9b-c0e17a2647da'),
('edfbfe83-4650-41c1-bec4-3bb4e64d9cb0','dijadwalkan','02eea9ef-d78c-4690-b908-a723aaed5815','15b1f792-3600-47d9-85db-ac7ba0525a9d'),
('1512d10b-6ffd-4f42-a781-3e7fd65128a5','dijadwalkan','02eea9ef-d78c-4690-b908-a723aaed5815','509c5cdb-efee-48f0-a712-3dbe3c7cc3c7'),
('94d42eb6-8884-4bab-a3d5-43e38d835e85','selesai','7b7e3fb4-001a-44c1-b152-acb6162b486f','6541dee4-ac5e-44aa-aa59-4183c9048434'),
('69744905-75fc-4d46-aecd-479a60996950','belum dibayar','7978c5e3-3b62-4154-af07-025df1a128f8','84c411aa-a720-411a-ac8b-1eff341e16c2'),
('b3a0131b-47ab-4ee6-baf2-481e75d67a8f','selesai','7e92705d-1646-4a1e-a389-3da8e7582018','6014e5a9-ef04-4ad8-b110-3fdb588054c2'),
('f0e4bdb2-dc9b-4910-a766-4bb04410d18b','dibatalkan','8d4a0916-4866-496e-86ad-7d0b2a7ddadd','6541dee4-ac5e-44aa-aa59-4183c9048434'),
('7405b6af-841c-40ac-b1cf-4f7dc7d5f7ed','dijadwalkan','32bf5869-995f-4ef5-a707-0ba6f5354920','6541dee4-ac5e-44aa-aa59-4183c9048434'),
('dee8571b-7141-4eea-a042-5579e65af806','belum dibayar','61ad7529-3c11-4ece-986e-9bf42d390629','16a34eb7-93ae-49eb-a1ab-33951089655d'),
('2b06c7b7-88b5-4016-9575-5e12d3e97282','sedang berlangsung','4d0857ee-4bc4-4d09-bbfd-8162829aa722','76fe584d-03fb-4628-9914-1bc416e3996d'),
('90505c3d-f417-4915-bd4d-5f164cf1d3d7','sedang berlangsung','0a41416c-61ee-446e-8eb9-8cb6a3236975','795fcd0d-84e0-482d-a652-8ed5ba4f605c'),
('469f0068-93d3-4d4c-a1db-5f29df9e348e','dibatalkan','0b46e106-569c-4f07-89f3-bd5e8223ac59','84c411aa-a720-411a-ac8b-1eff341e16c2'),
('52058bf7-0713-4d5d-9a6e-622bae564690','dijadwalkan','12ce9274-4f26-41d8-b9fa-f171edf89e9e','857d7aad-9153-4e39-832b-24695257d1ab'),
('71d4b353-3836-4ada-8c69-62d877106582','belum dibayar','479dfd0e-66d4-4a9f-8951-dbb4c81c9b07','76fe584d-03fb-4628-9914-1bc416e3996d'),
('67bce88f-6996-46c8-b82e-691c7af90495','selesai','52f164c7-f06e-4fa6-8d94-68730b4febee','b6d9bbf8-121d-4c3e-996d-956b7744ce6c'),
('b68c0e36-6715-4987-801e-6abf9d6619ce','belum dibayar','c5a3a93a-a558-4364-8ef8-da5e410c0ba6','cd1c24b4-fe8d-4bcb-864a-00fb85058165'),
('ce12d5fa-bdfa-4850-b91f-6c57f526a698','belum dibayar','cbbf43f2-042e-4c5e-993e-db0af42aa560','d53aea05-c5d8-4a5f-9a42-26c53c7c4723'),
('509d277e-5bde-4398-a52f-6cfc98dc7e15','dibatalkan','6d1d0268-543b-4591-9948-dcc4cbb8aa94','509c5cdb-efee-48f0-a712-3dbe3c7cc3c7'),
('eadfc0c5-2d12-4bbd-afb7-70e5c1be8f6c','dijadwalkan','5b9f12cc-4411-4cb6-8e59-4c9767a8ff1d','89086a20-5211-4120-8a9b-c0e17a2647da'),
('0b3d19e6-dbd5-4da4-8a55-713527b0e411','sedang berlangsung','8ad9088d-e369-46db-bf84-0b92ac02f14f','6541dee4-ac5e-44aa-aa59-4183c9048434'),
('883f9817-d9f6-4cea-850d-7f66506d9d84','sedang berlangsung','3d030b77-ed9e-4ef4-b651-5173592c1a62','d53aea05-c5d8-4a5f-9a42-26c53c7c4723'),
('c0726f03-35a9-4cb6-8a8e-801a125cd05d','dijadwalkan','75f1779c-cd01-4b19-91f0-2232ee3ad5cc','89086a20-5211-4120-8a9b-c0e17a2647da'),
('414a49bc-73ed-47a7-a640-829e9969f27d','dibatalkan','4d0857ee-4bc4-4d09-bbfd-8162829aa722','89086a20-5211-4120-8a9b-c0e17a2647da'),
('21ef67ce-2c03-46e6-94b9-838e6caf3f52','dibatalkan','0b46e106-569c-4f07-89f3-bd5e8223ac59','6541dee4-ac5e-44aa-aa59-4183c9048434'),
('41592dae-ac14-4e30-98e2-83bc46cbb400','dijadwalkan','4a9e525a-bc2a-4113-8710-da1db8120231','6f72292a-c3ef-4550-ac96-e7d561ad8756'),
('ea75b4e3-71eb-4b3c-9f34-84a2a3768d37','sedang berlangsung','61ad7529-3c11-4ece-986e-9bf42d390629','84c411aa-a720-411a-ac8b-1eff341e16c2'),
('102bf6fe-30a8-4c56-bd4f-8b84f9770a0a','dibatalkan','7c0be8ad-b8ee-4739-bda6-a2751f7d5e0e','76fe584d-03fb-4628-9914-1bc416e3996d'),
('57b702ad-314f-423f-b95d-8e6539b959bb','selesai','f9910822-75ad-46a3-9573-8bda4c131297','8b1dfb1a-2167-4c8c-ab1f-d133100082c4'),
('03e4c58c-7f78-4ab2-a43a-8f005b228d0a','sedang berlangsung','0b46e106-569c-4f07-89f3-bd5e8223ac59','16944228-dbf9-4c18-b7da-ac6c376c1a7e'),
('81e32cef-ed3f-4b61-a003-90d337ab7453','dibatalkan','0510219b-54a7-4822-b7b6-f54159a6e18e','cfee9477-2b16-4f47-a476-05442a8e96a4'),
('1b856017-0f0c-4517-a992-90f1b4f3fea6','dibatalkan','23ae986e-9be7-45e1-b743-42968761d058','795fcd0d-84e0-482d-a652-8ed5ba4f605c'),
('441c8f66-dece-4146-adac-94035fba8f9d','dijadwalkan','4c7c0451-bd2a-4ef6-aded-09f91080abde','343734db-866f-4ecc-83ec-bdcc61493ec3'),
('95846aaf-f65b-4d91-a2cc-987352f80ab8','sedang berlangsung','a45dc604-2172-4336-acd6-bb0ab5c43628','f81303c5-6de4-407f-aaf0-91d416b8745f'),
('e00da358-fb98-4f28-8332-9fb25ebc9873','dibatalkan','7c1f7f9a-3c2b-4af5-bf11-49286239e740','6f72292a-c3ef-4550-ac96-e7d561ad8756'),
('d72c78cb-7160-4a90-a31d-a0144b1f2e04','selesai','6d1d0268-543b-4591-9948-dcc4cbb8aa94','16944228-dbf9-4c18-b7da-ac6c376c1a7e'),
('ba629b32-2a9f-4b5b-b955-a252bbfddec2','belum dibayar','b9c43125-22c3-4e2a-aff4-87c262df05c8','857d7aad-9153-4e39-832b-24695257d1ab'),
('a28a7951-5919-4ec7-8de9-a4bd4f8cc7d9','belum dibayar','4c7c0451-bd2a-4ef6-aded-09f91080abde','15b1f792-3600-47d9-85db-ac7ba0525a9d'),
('178bfad7-4c6f-42e0-9765-a5df827f52c3','sedang berlangsung','7e92705d-1646-4a1e-a389-3da8e7582018','8382a98d-1113-47f6-8bf0-ae2b4524a639'),
('f71d81c2-fba1-4a60-93a6-a7f9f2c32bde','belum dibayar','02eea9ef-d78c-4690-b908-a723aaed5815','89086a20-5211-4120-8a9b-c0e17a2647da'),
('e0834db7-6496-456d-983b-aaa24896ebe0','belum dibayar','cbbf43f2-042e-4c5e-993e-db0af42aa560','509c5cdb-efee-48f0-a712-3dbe3c7cc3c7'),
('f4dc6c4e-53f6-4332-b0ae-abc32438262d','dibatalkan','1a0a480e-c3c6-4a48-a4f2-ca1d6e02aae0','89086a20-5211-4120-8a9b-c0e17a2647da'),
('b823bdb7-220b-4967-9e32-ac702cad42b3','dibatalkan','4a9e525a-bc2a-4113-8710-da1db8120231','16a34eb7-93ae-49eb-a1ab-33951089655d'),
('3316b63c-1d3b-47a8-a77c-b2ac0a44b827','belum dibayar','00a7c423-ee50-4187-b365-9646fb8ee852','84c411aa-a720-411a-ac8b-1eff341e16c2'),
('a74d995d-5cb2-449e-81e3-b4a81edc8e2c','selesai','0a41416c-61ee-446e-8eb9-8cb6a3236975','16944228-dbf9-4c18-b7da-ac6c376c1a7e'),
('7046a163-a4a9-4a97-9ebc-b6a923feb1f2','sedang berlangsung','8d4a0916-4866-496e-86ad-7d0b2a7ddadd','d53aea05-c5d8-4a5f-9a42-26c53c7c4723'),
('794b1ff0-25b5-43ab-a708-b8e8cbf5790b','selesai','7c0be8ad-b8ee-4739-bda6-a2751f7d5e0e','6f72292a-c3ef-4550-ac96-e7d561ad8756'),
('b2750313-2a05-427b-9526-b904a0d8bf7f','dibatalkan','00a7c423-ee50-4187-b365-9646fb8ee852','6541dee4-ac5e-44aa-aa59-4183c9048434'),
('30520451-ac52-4346-b26d-c2914af47b0d','dibatalkan','fc451e04-a344-481a-ae56-21d3241af512','89086a20-5211-4120-8a9b-c0e17a2647da'),
('c16bb3a3-6915-4a38-be5e-c8c6ac8c5559','dijadwalkan','f9910822-75ad-46a3-9573-8bda4c131297','76fe584d-03fb-4628-9914-1bc416e3996d'),
('ffe50336-c7ae-469b-b26a-c94e20f2535d','dibatalkan','13626f12-3256-4b52-a283-8cef3f7b633c','cd1c24b4-fe8d-4bcb-864a-00fb85058165'),
('dd367b72-dfc7-4e39-96da-cbab63db3609','selesai','f9910822-75ad-46a3-9573-8bda4c131297','15b1f792-3600-47d9-85db-ac7ba0525a9d'),
('485bf9ba-f8a1-4025-8ede-cc0c34b822e5','dijadwalkan','02eea9ef-d78c-4690-b908-a723aaed5815','16944228-dbf9-4c18-b7da-ac6c376c1a7e'),
('ccbc95fd-ce16-4b45-80dc-d3e8e775a61a','sedang berlangsung','b4298f1a-0e8e-4379-a8b5-02b25f598665','6014e5a9-ef04-4ad8-b110-3fdb588054c2'),
('ba109536-2d81-4cb0-a4c9-d499e284b589','dijadwalkan','0a41416c-61ee-446e-8eb9-8cb6a3236975','795fcd0d-84e0-482d-a652-8ed5ba4f605c'),
('736df00a-c670-475b-9406-d77525c9ccda','dijadwalkan','fc451e04-a344-481a-ae56-21d3241af512','16944228-dbf9-4c18-b7da-ac6c376c1a7e'),
('c594cc38-87f7-4be5-8f5e-d7fa88b90fa2','dibatalkan','7c0be8ad-b8ee-4739-bda6-a2751f7d5e0e','857d7aad-9153-4e39-832b-24695257d1ab'),
('d77f743d-2eec-47b6-a113-d832f86148b9','selesai','7b7e3fb4-001a-44c1-b152-acb6162b486f','343734db-866f-4ecc-83ec-bdcc61493ec3'),
('288ad1a6-3ca5-41db-a708-e1fb904a53f9','dibatalkan','ef0c21cd-e637-43d3-b8a3-228f0f44e87c','8382a98d-1113-47f6-8bf0-ae2b4524a639'),
('00c1eee7-31d5-4d59-aec3-e35151040f88','selesai','88392848-048c-40de-96bc-c1b5938fab07','cd1c24b4-fe8d-4bcb-864a-00fb85058165'),
('8c5385c0-ddd8-4fda-94b8-e74b5daa631e','dijadwalkan','4c7c0451-bd2a-4ef6-aded-09f91080abde','f81303c5-6de4-407f-aaf0-91d416b8745f'),
('cbb1fe95-beb8-4079-a26b-e7bc35180202','belum dibayar','0510219b-54a7-4822-b7b6-f54159a6e18e','16944228-dbf9-4c18-b7da-ac6c376c1a7e'),
('c71794fd-296e-4ced-9201-e8122d753f6c','dibatalkan','e144059e-1696-49a6-a3fb-4b5bdc26f10c','cfee9477-2b16-4f47-a476-05442a8e96a4'),
('6c4ad3c1-54ff-4a96-b656-ea747352c445','selesai','52f164c7-f06e-4fa6-8d94-68730b4febee','84c411aa-a720-411a-ac8b-1eff341e16c2'),
('1fd1f58f-6083-4194-a4ae-eb1cebf5f52a','selesai','8d4a0916-4866-496e-86ad-7d0b2a7ddadd','89086a20-5211-4120-8a9b-c0e17a2647da'),
('687462f3-bad7-4db6-80b4-f57340f09319','sedang berlangsung','4d0857ee-4bc4-4d09-bbfd-8162829aa722','6f72292a-c3ef-4550-ac96-e7d561ad8756'),
('2b326b78-c1d0-4551-be06-f596632c0a7e','dijadwalkan','00a7c423-ee50-4187-b365-9646fb8ee852','89086a20-5211-4120-8a9b-c0e17a2647da'),
('86f2a4c6-9e5e-4710-a6f5-f7d66fa5aeea','dijadwalkan','5ae9858c-66fe-4ccd-8aa7-c01679dff812','16944228-dbf9-4c18-b7da-ac6c376c1a7e'),
('f0ddeda2-4408-4533-b841-f8cd51881a51','dijadwalkan','e144059e-1696-49a6-a3fb-4b5bdc26f10c','15b1f792-3600-47d9-85db-ac7ba0525a9d'),
('16dd2cd8-0d54-4979-a464-f92eafb5c859','sedang berlangsung','02eea9ef-d78c-4690-b908-a723aaed5815','cfee9477-2b16-4f47-a476-05442a8e96a4'),
('9bd63a36-8dde-4ac4-a191-fd17dafd19bd','dibatalkan','8ad9088d-e369-46db-bf84-0b92ac02f14f','f81303c5-6de4-407f-aaf0-91d416b8745f');
/*!40000 ALTER TABLE `pemesanan_obat` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Table structure for table `resep`
--

DROP TABLE IF EXISTS `resep`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `resep` (
  `id` uuid NOT NULL DEFAULT uuid(),
  `janji_temu_id` uuid NOT NULL,
  PRIMARY KEY (`id`),
  KEY `janji_temu_id` (`janji_temu_id`),
  CONSTRAINT `resep_ibfk_1` FOREIGN KEY (`janji_temu_id`) REFERENCES `janji_temu` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `resep`
--

LOCK TABLES `resep` WRITE;
/*!40000 ALTER TABLE `resep` DISABLE KEYS */;
set autocommit=0;
INSERT INTO `resep` VALUES
('59f7f7bf-7b7a-4c68-a1e2-31b06bbbec86','a2dbb847-3b87-42ff-98c3-0184d22b3391'),
('52fccc90-f6ae-49ad-b3ca-2e9adbb23445','4aacf6c8-acbc-4b1a-91d1-01f64e895272'),
('4a45a847-8a9b-489c-b704-cbef2d844164','44a94f2f-deb5-4fb8-8390-03683e2c75e2'),
('ceb6aefb-6c33-4322-8ba9-2ae026f38610','f5c5b90e-2c0b-4421-98ba-044810242f8f'),
('220395f4-41e4-45be-bb2a-317a3c657351','6304d7e5-3f44-4dc2-9da4-055fb077884d'),
('e61d2083-2728-4a5c-99b5-7d33dde10660','0ad67896-afe4-4294-8071-060160907ce7'),
('4158db47-c10d-4dbe-aaf3-a4c4a22191c8','1df661ca-117b-49ba-af0f-06ab65ab9103'),
('198cb0e5-ccf5-4df5-8a2f-1b0da8b0dddf','b49349b3-d4d8-466d-a4d1-07647ecd536e'),
('41f0e0c8-2974-48ad-a6cc-30fbe303563f','0992db5a-34f7-484c-a5b4-0b123599b423'),
('2fb5ebf0-e384-4085-8efd-6440b4900294','409f2e79-7ade-4d12-b708-0c817f0a02a7'),
('78ed6d8f-2fc8-4d39-8dc4-53741e2819fa','267afb89-2cbc-4018-b30d-0d6e6261dc1e'),
('22c402e9-718a-4227-aa80-d5f9f6803faf','635e220e-2be0-4ebd-b804-1029de1ed372'),
('7dd1ad94-3ba1-49a7-80ec-2a8b25d40042','4c3a7765-5b3e-4ea1-82b3-15eea3c83503'),
('1828c36e-5638-4c9f-b6f1-79befa13bc72','26f91253-49fb-49b0-b35d-1baf1bbf761a'),
('7301e156-4874-499a-86e3-e726f788bce5','4c1f3bd9-9825-43bc-81b8-1f7650c5c1a7'),
('20c0e745-1282-4c1c-8e84-fad9bddc180d','50288fd4-9b99-4ab8-81f0-2445ca6caf4a'),
('534c9b30-f806-47ed-9831-c2b9e8a80bf2','a6ccf284-8040-4fe8-b4b2-273958f6fb4c'),
('451c6344-9e19-45ae-8d1f-0e36da4bef89','7d5d8792-0975-4ff5-9d75-2d5af215e527'),
('ae9fcff8-67ab-4ba6-be44-e07af3fe1a4a','38a79946-df26-439b-ad6a-2de7574dbf60'),
('43364e78-9643-4028-bbb9-48a1474bc0a2','2f73d328-1467-41ae-b4dc-2e5696e614f5'),
('db7dda83-6c0a-4b6b-a125-b9c14eb259bc','bac64d75-3ea9-416b-b133-307b44b3922b'),
('3628e613-609e-4c72-b748-37432acc8ecd','23c52e42-bf0b-4528-90e7-31782d052882'),
('c17b3cd0-be5f-4f42-9f7c-3e026e543af2','e6297f13-3712-4137-954f-31c3fe9304f0'),
('126707b3-99dd-490e-893d-059d616d86be','303ea4af-573b-4040-868f-32190b449477'),
('9b939114-5b42-48be-ab0b-e3dd3c4b5fe4','807820c0-583b-4487-9998-35ce3cfb710d'),
('317b92c7-566a-4a40-af39-1d0a70a632cf','5f67e04e-cada-4120-afbc-381cafdd7bbf'),
('337436ca-45fd-4a6c-8b86-dabdd9c09afc','268cb4e9-4e7c-4795-b17b-41b4b3c0cf4f'),
('5767ad24-b7a4-4bf7-9ab5-bce7c13d647f','8bd2cd24-6330-4c9a-abd3-490db7fda135'),
('2f02051d-f7e8-439a-9c6a-851da1820935','70a6edd9-3928-449b-a10a-4c8919a580f6'),
('6c08dcc9-f92e-435a-ba69-bd357d5d5828','3e4d2312-59af-4de0-9ce8-4e1d7dcdcdef'),
('27a46187-87b8-4cb6-b30b-5de7610f28fb','661accb0-515e-442a-b2d4-51a0130a7e5c'),
('b521368c-012a-47df-81b2-2a041050ece4','b94447bd-569c-46fe-88ec-51d6eabb7f56'),
('ed42d1fd-c9fa-4fa3-89eb-d4a0385307f2','5f5269c5-b96e-4563-8364-523edd9cc8e6'),
('9b5aa4c4-d430-423e-b775-ee7f1a6ae179','8d2f6e63-4d95-4d4b-a6ea-5416d58c4d37'),
('fb06b95b-ed0e-48b5-bdf7-d703d5b9087f','d0c1e7f7-7a61-4c60-b67b-55c410ee480f'),
('c3a99b79-e884-4542-a86d-82c30e37232f','9515fc15-c7c9-4a1f-9fca-5828d63aeb92'),
('e0234551-9b60-49ca-93a9-c39792cbccac','837c7b2b-0ded-47db-8a2a-58e41cf0bc43'),
('b3a4ce1c-dec6-491a-939b-316042c54d23','da8d9c67-4de2-4909-b149-59bbc73e82d3'),
('1313eefe-399a-474c-87f8-749d4f9fb3e1','e2ba5c57-710a-4c74-b6ba-5bf081774e25'),
('6f683bd2-1051-4817-b1d7-81a01ec9dbc3','98c993c3-7397-4e4a-a812-5ca9e8d76243'),
('9cdaca46-2a9b-482a-9dca-6ec554be8bb5','9de61f73-188f-4cc3-b212-5d1f0b0ea03f'),
('567b0db1-2591-4b8a-a8de-d1bf33571bde','499d9b2c-2958-4e7f-9055-5fcd7d304f27'),
('cfe7d19d-b180-45da-8e02-b15ce95e3192','9403b09b-f37f-491e-800b-6023c3355153'),
('2ae85824-4a29-416c-929a-b62f82cc6c9e','885ba6e8-36c4-4d5a-9ef5-62f4f2b466e3'),
('722d3e94-b866-46e0-a40d-c8759cb1c811','f52c3da2-b89b-4241-af27-668d0b1791c0'),
('5c1054dc-ae7b-4d2b-81bb-fdbda5dae5bc','4235b61f-53ec-4fc2-a2ba-66efa13cee83'),
('9cbb2f23-7318-49e8-a01b-68dbc594ae4b','d77cacc1-d444-4b6c-82ff-687fcccb52ee'),
('bae4f242-a57c-485c-85dd-131dba3cf613','dc093a06-37ad-4caf-bdbd-6bec8c59e8e1'),
('e73caa46-087d-4812-b60d-d809e91ecb7e','657756ab-ea76-4d7c-84ef-6ca168016ace'),
('9f0c1857-655a-4307-a3bb-72b619b900c4','cde44dc4-50d3-4320-b0d7-747f065b567c'),
('1d8a9539-f5c4-45f6-a80b-7fffb6030fcb','acff979b-6c1e-4daf-aacd-7602ed44b89b'),
('b3df9efa-3b36-4574-802f-04e6b6dff1f7','92b1d885-2b15-4c45-a68d-7849cc5a2724'),
('2c2c33e5-6da4-4d88-b81c-daf0cfe08cb6','185890f6-44f7-42f8-b04a-7958e5116f66'),
('dcb1affd-a278-4199-88dc-f554ca67fdad','44ab6ffc-c3c5-48c6-b452-81595f0c7def'),
('74ec4817-6983-422f-a141-ae1d8037b121','3dab94c8-9c34-47fd-b751-854ced3b9836'),
('ba3418c4-ae28-4e29-9c66-832f47125274','ae3d635f-0fdb-4492-a699-86e91e7458e2'),
('81a2f09e-066c-41ed-9bc6-135f7125ef48','aaa5334e-a9f1-4731-9254-8b128c56443c'),
('1a90b51e-25bf-4049-b95e-27230c0437b3','e812c4da-a750-488b-9abc-8c20ebd5b95e'),
('d45560b5-28df-4a2b-b9a9-12f425971893','b7d59662-7acb-46da-86b5-8cb9ce7dd449'),
('b31a769c-023b-4d06-9704-ab700d8eed99','5bc0473d-6d9c-4671-987d-8f2af33751bd'),
('1efd8e7b-289e-47a4-8cd0-a51d99d51234','79bf4b67-0d35-4232-ab7c-9049fb9ba6a6'),
('37d80df6-e4b0-4c62-8c24-21e92ff348ee','e847a715-1cf3-4716-b5ba-912b84d2bae3'),
('2d6feaf4-f8b1-4ee3-b01f-6656a23b9b1d','ab53d31e-8467-4866-8395-9141b4e23ab1'),
('ad66a88b-0c85-42ec-9eaf-ceb648196a5a','a6f0ed1f-57d1-4b62-9b23-9237fbda1019'),
('f99808ee-69da-45bd-a947-40072325c832','8d2a7fa2-af86-43ed-b396-941411b46526'),
('9b4cf828-e221-4709-8618-2534a240a36f','640f8fe7-4658-4d7a-ac69-9594afc04afd'),
('08bdb3bc-8174-4e1f-b8e3-38e856c7ed32','48c8f519-e471-4882-9029-9a776b99bbb9'),
('1be3dbb6-906f-4bdc-aa6b-f3abb608a290','f302f61f-f505-491a-9213-9d9c87277c39'),
('338ba7ae-4498-42aa-8b21-ac6a7de2b082','eaacc838-e7c3-49e3-bec6-a54d32fa1121'),
('ef2ee873-4e1b-4847-b655-59e9e20cab49','7d8d4676-b099-41f2-874a-ac35f4ad5409'),
('48da4b3a-23b3-45a1-b511-27ed25413da7','7752e699-688d-40ef-8754-acf5c9d3e1d4'),
('624e065b-51e7-47e4-99cc-5608f4fff273','f9c177c7-2515-410e-87d5-ae147b436f65'),
('945afe0c-f479-4f8f-9395-157294f58d93','1664a658-e319-4872-b565-b1ce4f5015dc'),
('0835426e-bc06-4026-992e-7adc853a4b95','6914476e-7cfe-4cd2-b359-b4432b80498d'),
('4f107061-d39e-47e8-95f7-ff6fca035e50','377791b3-81bf-400d-bc04-b6d32e87abc2'),
('a0ca5bb4-cdad-4694-8df6-2c8177e5e170','ffd81992-85cf-4320-aeee-b8031640fd20'),
('3f66dbf4-4452-4745-9c2c-790f28bd0f19','fe50663d-2f3d-406a-8343-ba839c59e517'),
('5adc3fdd-824a-4e5e-964d-204d7cea5cc0','984a98b2-e5bf-4d3b-b1d2-bcb53a929c27'),
('026a796e-f19b-438b-a83f-ae1e5a7dd1b0','18579e86-52dd-4bf8-ab54-be06ba26d88b'),
('870c109e-1c3c-479e-800b-a514d76de501','200ca29c-0a1b-414e-a84f-c02af81a4bd7'),
('240167a8-3ce7-4ab3-b63d-b5642a30a0ab','c13cf1aa-1f94-4225-9e8c-c177a891601d'),
('1326fdc9-86c5-4cdd-be0b-3c656defb765','6f7efdf6-aadb-4f0a-a4a2-c24c33a1b751'),
('5b58968f-7c92-41c2-8644-d0cbece27b3d','d86ffe03-dc3e-460e-aa28-c6f2236c430a'),
('cfb51904-056e-425e-a56f-d9a59f8c1199','67212362-1148-4ea1-8980-c7c8fbde922b'),
('497e6bb6-ece8-474c-99c4-344ef55a2d79','c424b44b-8aa8-4692-b842-cdebef641fc0'),
('44b39616-cd5a-4d0a-beca-6db551bcf1fe','316ca285-0efa-4905-823c-d3bd2a0ec33c'),
('18c92f5b-5a75-454f-b05e-332fda37219c','c7c17bf1-d0e1-4443-bb55-d4fa5b46f532'),
('5a1757e7-3980-4b3b-8b17-a68e63dfafa0','8c94b133-f6d3-4d0a-8ffe-d75ea24c1c2f'),
('5a4b22b6-d540-4f08-bbf2-62c71ab2d6fe','8bf89ad6-0f6c-43b6-ad35-ddd9c6a240c3'),
('4d578020-f9bf-42dc-a392-7b7547e43435','92702fff-5510-43eb-acb9-de3f9e898346'),
('c2b42038-4032-4e67-8973-2131a411cebc','a79ce9dc-e46b-49f7-8d8e-de8354ac3c5b'),
('565e85bf-a5c0-4525-9a7d-9c33c47b9012','9aa94f81-4bcb-42c7-9915-df16d2d66bcd'),
('1be600d6-10ea-4727-8460-6bff833fdb90','e7970223-bac6-448b-9929-e5c3ceb8fcaf'),
('cad0df5b-9236-4c4c-93e7-7dfec88a1510','9091cfe7-5335-4985-b15f-e60287b35d62'),
('d903f26d-1dd7-40ef-80c1-739a987f0016','90c8c932-f962-42e4-b939-e6bba360f4ed'),
('334122b9-86f9-4853-81e2-edae26b4a625','aea7eca5-22dc-45cf-bc49-e9d833f8828e'),
('7e0b4edc-1ade-41df-9698-2e37ec3a195f','bbe18404-b7a2-4bbd-830a-ec0049f99122'),
('c167c9ff-b143-40c5-8c5a-f9cb4a4c7b1d','9778fcd5-7015-45dc-a3e9-f54bc0f610e0'),
('5be3e5e1-214b-4711-ba43-294f3072c92a','a4dc08c4-e8be-42f6-a846-ffa60974424b'),
('dadef492-39dc-4167-b1a0-2baabf6cd80f','746bcd5b-424b-48de-a054-ffbccfb130ea');
/*!40000 ALTER TABLE `resep` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Table structure for table `resep_item`
--

DROP TABLE IF EXISTS `resep_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `resep_item` (
  `id` uuid NOT NULL,
  `dosis` varchar(100) DEFAULT NULL,
  `cara_pakai` varchar(255) DEFAULT NULL,
  `obat_id` uuid DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `obat_id` (`obat_id`),
  CONSTRAINT `resep_item_ibfk_1` FOREIGN KEY (`obat_id`) REFERENCES `obat` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `resep_item`
--

LOCK TABLES `resep_item` WRITE;
/*!40000 ALTER TABLE `resep_item` DISABLE KEYS */;
set autocommit=0;
INSERT INTO `resep_item` VALUES
('d14140c0-79c9-41b3-961e-09f244b25a08','1x3 tablet','Sesudah makan','5214c9b0-411c-482e-a5ef-f317299e33e1'),
('bac482cc-3cdc-41b5-8c77-0df83916ed15','2x1 tablet','Dioleskan','2d2149b2-ea14-4408-95e6-57fb065176b3'),
('750a74fe-b6a6-41d2-a848-1aa55f6b02a4','3x1 tablet','Sesudah makan','d872c37f-2822-4c6f-93d7-8f747e114645'),
('7ca6dfbe-5213-4048-8556-1e3180bad47b','4x3 tablet','Sesudah makan','c27e7307-76e6-4026-9301-70179cacbb72'),
('cea9d5f5-877a-4319-ba63-20c17e6c506d','4x2 tablet','Bersamaan dengan makan','55d8b45d-0f9c-4bf6-a200-328ec4a71c7f'),
('0743c001-50fa-4cb3-a66b-214b0355f744','2x3 tablet','Sesudah makan','15adb03d-97ff-499f-a59b-8c177495aa0c'),
('1fca34ec-8c21-4504-a73c-237625c63f35','3x3 tablet','Sebelum makan','39abe7f2-a0bc-44b2-9725-f9abbff9e330'),
('cd182b76-c62c-4a3c-b723-24e9a2b6ff37','1x3 tablet','Sesudah makan','0c37d8bf-4322-4c55-8250-d0ddfc35c36e'),
('65a0c735-14ce-4c1d-b1e2-2889eded8682','4x3 tablet','Dioleskan','0dfb67ee-7dc9-4ebb-9e2f-164c97f5ff66'),
('443d1acd-9ab9-4f2d-88e9-2923fb9b1225','4x2 tablet','Sesudah makan','ec02bfe7-0f0a-4f37-8a21-dff4e3789cab'),
('1ddaac20-6c61-4909-997c-2c1e098a9a8b','4x2 tablet','Sesudah makan','fc3be195-7032-4966-80d2-2d7cb6eb8997'),
('9b44fbc4-7dc3-453c-a1c8-2e4d0e8f6f6c','1x2 tablet','Sebelum makan','ec02bfe7-0f0a-4f37-8a21-dff4e3789cab'),
('fae95a2a-f4a8-4ebf-9e21-2f3747b64768','2x3 tablet','Dioleskan','2d2149b2-ea14-4408-95e6-57fb065176b3'),
('d0679720-0650-4c36-a05f-304a724c382b','4x3 tablet','Dioleskan','0c37d8bf-4322-4c55-8250-d0ddfc35c36e'),
('42597f3f-f297-4005-8f31-332f16cec530','2x3 tablet','Dioleskan','41213eb6-3f64-4820-81da-b018688fd18f'),
('d5718df8-b769-47e8-a231-33851f98aa78','3x1 tablet','Dioleskan','27e86b75-c355-4b60-bd31-1f7b4a2dfe36'),
('d84ec51d-bd79-4805-a9dc-3b3b3add12de','2x2 tablet','Sesudah makan','46ed1d40-3872-4d55-b060-9306548e79b2'),
('a8f03fa3-7d49-43a8-8cb8-3dda3f5fe084','4x3 tablet','Dikompres','56c47aa9-0836-4c89-acdf-c00965e83ad4'),
('42fe864d-c380-4aba-bbcb-3e0778dd0820','2x1 tablet','Dioleskan','8ef609b0-e0a5-4d6a-bcb5-920c814bd956'),
('1e21f25f-de35-4ab8-8b06-408b7e29b16e','1x3 tablet','Sebelum makan','56c47aa9-0836-4c89-acdf-c00965e83ad4'),
('15cb4200-8243-43d7-9bfc-548c476a3eac','1x1 tablet','Dikompres','c27e7307-76e6-4026-9301-70179cacbb72'),
('a79ecde7-24c0-4f41-a019-55bea1690b9e','2x1 tablet','Sebelum makan','0c37d8bf-4322-4c55-8250-d0ddfc35c36e'),
('ee7cd7a1-6a56-440d-a1b9-5724b42361f6','3x1 tablet','Dioleskan','0dfb67ee-7dc9-4ebb-9e2f-164c97f5ff66'),
('f931d404-fff8-4aab-a6ad-621ff383f4e5','3x3 tablet','Dioleskan','0dfb67ee-7dc9-4ebb-9e2f-164c97f5ff66'),
('b142646c-275a-466f-9b2d-69e5b3df9e87','3x3 tablet','Dioleskan','d5538452-9087-42ff-a72b-24590b4bd7e7'),
('ce62c574-0075-48d6-8189-70067b1b4cce','4x3 tablet','Dioleskan','46ed1d40-3872-4d55-b060-9306548e79b2'),
('f03040e5-2ba0-4b87-afa4-78ca73728708','4x1 tablet','Dikompres','46ed1d40-3872-4d55-b060-9306548e79b2'),
('633064c6-9adb-410a-b43f-80a1e9d3c3c4','2x3 tablet','Dioleskan','0dfb67ee-7dc9-4ebb-9e2f-164c97f5ff66'),
('144829b2-4464-4f31-9c2c-82d6af4fc06b','1x1 tablet','Dioleskan','d5538452-9087-42ff-a72b-24590b4bd7e7'),
('9e42af31-594b-4e7e-8531-90f0917a630d','1x3 tablet','Dioleskan','56c47aa9-0836-4c89-acdf-c00965e83ad4'),
('fb7277a4-19b7-4b21-a428-a0b88b59fd56','2x1 tablet','Sebelum makan','55d8b45d-0f9c-4bf6-a200-328ec4a71c7f'),
('aad8f9c1-1ea3-47a4-939f-a3a3d6f607c0','3x2 tablet','Sesudah makan','46ed1d40-3872-4d55-b060-9306548e79b2'),
('103a0ce5-4552-4d49-841e-a47161d6fc07','3x1 tablet','Dioleskan','8ef609b0-e0a5-4d6a-bcb5-920c814bd956'),
('9b011d96-ee19-4247-a7d2-a72064e4f2e9','3x3 tablet','Dioleskan','56c47aa9-0836-4c89-acdf-c00965e83ad4'),
('589290f8-ff77-4ad2-97fb-a8795b124c53','3x3 tablet','Sebelum makan','2d2149b2-ea14-4408-95e6-57fb065176b3'),
('ce95cbaf-4316-4c27-bc43-b6e0673bcc8a','1x2 tablet','Sesudah makan','46ed1d40-3872-4d55-b060-9306548e79b2'),
('324a7523-1e5c-469b-8a25-bd1b9eb87a3b','4x3 tablet','Bersamaan dengan makan','0dfb67ee-7dc9-4ebb-9e2f-164c97f5ff66'),
('a1e4334d-9620-4dd2-8ee6-c3ef31277173','1x3 tablet','Sesudah makan','2d2149b2-ea14-4408-95e6-57fb065176b3'),
('cae1f31c-d4e4-41f9-9919-c6c958885bea','2x3 tablet','Bersamaan dengan makan','39abe7f2-a0bc-44b2-9725-f9abbff9e330'),
('182f2d37-046a-4ee2-97d9-ccf15dc6dd9b','2x3 tablet','Dioleskan','b6ff30c1-5560-4469-85d9-124f63a52f25'),
('2036aa80-3374-4ce5-978a-cd988a07549d','2x2 tablet','Sebelum makan','27e86b75-c355-4b60-bd31-1f7b4a2dfe36'),
('13b59a60-63ca-44ef-a958-dadab843cdf7','1x1 tablet','Dikompres','b6ff30c1-5560-4469-85d9-124f63a52f25'),
('be01c300-f05f-47d1-b1ce-ddf66b270076','4x2 tablet','Sesudah makan','5214c9b0-411c-482e-a5ef-f317299e33e1'),
('bcdf1b31-a8d7-49cc-8c6c-e5a1944167ad','4x2 tablet','Dikompres','55d8b45d-0f9c-4bf6-a200-328ec4a71c7f'),
('3513001b-64bc-4902-ab65-e607623d3d24','4x1 tablet','Dioleskan','a363f6bd-ccd1-490c-8fcc-1f80ce389e5e'),
('00ffa9dd-7067-4c99-a338-e986cf23fcd6','3x1 tablet','Dikompres','15adb03d-97ff-499f-a59b-8c177495aa0c'),
('f820d56f-23bc-483a-90b4-f12c1a8e37d2','1x2 tablet','Dioleskan','a363f6bd-ccd1-490c-8fcc-1f80ce389e5e'),
('4ce5d0f8-ee55-439e-96e2-f1872f6ca38e','4x3 tablet','Sebelum makan','d872c37f-2822-4c6f-93d7-8f747e114645'),
('aa6528ab-1471-4603-badc-f6d473c3b4ff','3x2 tablet','Sebelum makan','39abe7f2-a0bc-44b2-9725-f9abbff9e330'),
('a5007aac-9864-4690-b51a-febe2cbe0363','4x1 tablet','Bersamaan dengan makan','b6ff30c1-5560-4469-85d9-124f63a52f25');
/*!40000 ALTER TABLE `resep_item` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Table structure for table `rumah_sakit`
--

DROP TABLE IF EXISTS `rumah_sakit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `rumah_sakit` (
  `id` uuid NOT NULL DEFAULT uuid(),
  `nama` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rumah_sakit`
--

LOCK TABLES `rumah_sakit` WRITE;
/*!40000 ALTER TABLE `rumah_sakit` DISABLE KEYS */;
set autocommit=0;
INSERT INTO `rumah_sakit` VALUES
('cd1c24b4-fe8d-4bcb-864a-00fb85058165','PT Suryono'),
('cfee9477-2b16-4f47-a476-05442a8e96a4','CV Hutasoit Uyainah'),
('76fe584d-03fb-4628-9914-1bc416e3996d','Perum Hastuti Wijayanti Tbk'),
('84c411aa-a720-411a-ac8b-1eff341e16c2','Perum Pratama (Persero) Tbk'),
('857d7aad-9153-4e39-832b-24695257d1ab','CV Pradipta Megantara (Persero) Tbk'),
('d53aea05-c5d8-4a5f-9a42-26c53c7c4723','CV Adriansyah Waluyo (Persero) Tbk'),
('16a34eb7-93ae-49eb-a1ab-33951089655d','Perum Nuraini'),
('509c5cdb-efee-48f0-a712-3dbe3c7cc3c7','CV Gunawan'),
('6014e5a9-ef04-4ad8-b110-3fdb588054c2','PD Prakasa (Persero) Tbk'),
('6541dee4-ac5e-44aa-aa59-4183c9048434','PD Hakim Tbk'),
('795fcd0d-84e0-482d-a652-8ed5ba4f605c','UD Gunawan Yolanda'),
('f81303c5-6de4-407f-aaf0-91d416b8745f','PD Santoso Jailani Tbk'),
('b6d9bbf8-121d-4c3e-996d-956b7744ce6c','UD Prabowo'),
('16944228-dbf9-4c18-b7da-ac6c376c1a7e','CV Anggriawan (Persero) Tbk'),
('15b1f792-3600-47d9-85db-ac7ba0525a9d','PT Dongoran Tbk'),
('8382a98d-1113-47f6-8bf0-ae2b4524a639','Perum Lailasari'),
('343734db-866f-4ecc-83ec-bdcc61493ec3','PD Namaga Hidayat'),
('89086a20-5211-4120-8a9b-c0e17a2647da','UD Prakasa Tbk'),
('8b1dfb1a-2167-4c8c-ab1f-d133100082c4','UD Fujiati Tbk'),
('6f72292a-c3ef-4550-ac96-e7d561ad8756','PD Mulyani Purwanti');
/*!40000 ALTER TABLE `rumah_sakit` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Table structure for table `tenaga_medis`
--

DROP TABLE IF EXISTS `tenaga_medis`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `tenaga_medis` (
  `id` uuid NOT NULL DEFAULT uuid(),
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `nama_lengkap` varchar(100) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `nomor_telepon` char(20) NOT NULL,
  `nikes` varchar(100) NOT NULL,
  `jenis_profesi` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `nikes` (`nikes`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tenaga_medis`
--

LOCK TABLES `tenaga_medis` WRITE;
/*!40000 ALTER TABLE `tenaga_medis` DISABLE KEYS */;
set autocommit=0;
INSERT INTO `tenaga_medis` VALUES
('54f83b49-1a17-43df-8ea7-0ead4c123a6b','qsitumorang@example.com','*J*4lKjt17','drg. Laila Haryanti, S.Kom','1986-03-05','+62 (0729) 432-7967','4787591760','Apoteker'),
('a7e7aca9-01ed-4fa4-9ea6-1a4604f42a91','ekaanggriawan@example.net','*3^LBCov98','Hasan Nasyidah, M.M.','1986-03-27','+62 (966) 120-8713','9813697618','Dokter Umum'),
('504e977a-5ff3-4960-b066-3143e3881753','gamblangsamosir@example.com','$GXFe_@3*6','Hj. Devi Irawan','1983-05-17','0865394180','777007291','Dokter Spesialis'),
('f2e76021-0111-4cbd-93dd-3aa1f51e0d11','rafidnababan@example.net','6_pmq3az^P','Puti Rahmi Mardhiyah','1987-07-08','+62 (032) 305 8083','3555877826','Apoteker'),
('8995b8e2-f6c7-4749-8aef-4304ed5daf5b','cemani28@example.net','$A4zLAnk44','Kania Kuswoyo','1982-10-05','0857560193','6823584603','Bidan'),
('4090387b-91b8-4a38-8b8b-43a9634a2f2a','fmegantara@example.org','_%aTyShIX3','Elma Oktaviani','1962-03-15','0841355390','94294180','Apoteker'),
('67855305-5216-4352-a340-47cd0de6cb73','ehutasoit@example.org','wvHGA^#U)9','Vinsen Pangestu','1991-02-28','+62-205-674-8206','4310070843','Bidan'),
('23804906-5ca1-4620-988a-5efcec1ff0aa','haryantijohan@example.net','je&7S2Y6S&','Yuliana Waluyo','1980-06-20','(0969) 164 0929','3676296822','Fisioterapis'),
('a3691f68-3773-48e3-89a6-6ae6cd97bca3','elonwinarsih@example.org','_Z^fUDJtm0','Hj. Fathonah Prasetya, M.Ak','1960-11-29','(0911) 262-5891','7629453110','Dokter Umum'),
('15e0c266-9b9d-408d-8e5a-70493b1385b7','ulisitorus@example.org','k_*4Ty+l$5','Jagapati Halim','1986-05-24','+62 (89) 548-9906','6613146013','Dokter Spesialis'),
('e37361fd-0f8c-42cf-a14e-7faaa74c358c','halima37@example.org','#f&NzEPpC5','Elisa Purwanti','1983-09-09','+62 (031) 519-9570','853345452','Fisioterapis'),
('193b3e78-e9a5-4e61-a7f5-9848140dc15c','safitridagel@example.org','$z8Vnz*r*B','Aisyah Winarsih','1985-06-16','+62 (0195) 121 5703','4264841655','Perawat'),
('40ea338a-cff4-448a-9295-afd3160d6aa4','elvin42@example.org','+c1B^!m@YH','Laksana Fujiati','1996-08-07','+62 (50) 564 1152','9106450875','Perawat'),
('d7d0c919-3fb6-49df-9d63-b2341b86ff92','wadi97@example.com','@fz^WFgku2','Gamanto Lazuardi','1991-07-07','+62-359-107-1493','851607397','Fisioterapis'),
('4d844f44-c99c-4012-8fd6-ca64f499b836','kharyanti@example.org','r6NSqD(G+h','KH. Saiful Laksmiwati, S.T.','1965-11-22','+62 (056) 414-2892','2320762869','Dokter Spesialis'),
('6ab545fd-8ff6-4279-8c00-cd54f46830a0','pradiptayulia@example.org','0hHeIf3L$7','dr. Vivi Dabukke, M.Kom.','1968-11-22','+62 (53) 151-5561','6372067215','Perawat'),
('6d2a8d79-8268-49b5-9267-cfa6c6580739','santosodaru@example.net','^nRyKzp^(8','Dalima Januar','1985-08-22','+62-012-206-9829','4196486000','Apoteker'),
('0f9992ca-43c6-4b47-8a15-ee4a9c01ec74','tarihorangabriella@example.net','%F3K_Vki!q','Tgk. Wira Maryati, M.Pd','1990-11-28','081 797 5731','1280944629','Fisioterapis'),
('39ed4aba-2d97-40f1-a067-f4eae260e9df','pancatampubolon@example.com','9v1bJBo4@N','Perkasa Suwarno','1967-08-16','(0203) 609 6865','5933631667','Dokter Umum'),
('8b22fb86-ec11-497e-a11e-fd463e1f4c28','ajimat86@example.net','_lsa$mFw8b','Titin Tamba, M.TI.','1983-10-22','(036) 369 2613','8948185848','Perawat');
/*!40000 ALTER TABLE `tenaga_medis` ENABLE KEYS */;
UNLOCK TABLES;
commit;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*M!100616 SET NOTE_VERBOSITY=@OLD_NOTE_VERBOSITY */;

-- Dump completed on 2025-05-16 22:35:10
