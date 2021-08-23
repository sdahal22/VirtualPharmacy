-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 26, 2020 at 01:57 AM
-- Server version: 10.3.22-MariaDB
-- PHP Version: 7.2.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `national_ndhdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_info`
--

CREATE TABLE `admin_info` (
  `admin_id` int(10) NOT NULL,
  `admin_name` varchar(100) NOT NULL,
  `admin_email` varchar(300) NOT NULL,
  `admin_password` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin_info`
--

INSERT INTO `admin_info` (`admin_id`, `admin_name`, `admin_email`, `admin_password`) VALUES
(1, 'Ravi Gyawali', 'ravi@gmail.com', '55eee474cb73cb626a0da2bdf8163473');

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `brand_id` int(100) NOT NULL,
  `brand_title` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`brand_id`, `brand_title`) VALUES
(1, 'Niko'),
(2, 'Aciloc'),
(3, 'BUSTOP FORTE'),
(4, 'Mylod - L'),
(5, 'AMLOD 5'),
(6, 'Mylod ATH'),
(7, 'Isolax'),
(8, 'Flexon '),
(24, 'Brucet'),
(25, 'Allegra'),
(26, 'Fenfex'),
(27, 'Flubact-500'),
(28, 'Flustaph'),
(29, 'Periflox 500'),
(31, 'Medomol 500'),
(32, 'De-cold'),
(33, 'Sinex'),
(34, 'Sinarest'),
(35, 'Thyronorm'),
(36, 'Coflam '),
(37, 'Dolopar'),
(38, 'Parafine extra'),
(39, 'Cetazox'),
(40, 'Myospaz'),
(41, 'Spas'),
(42, 'Belaspan'),
(43, 'Spaspain'),
(44, 'Anasen-500 DR'),
(45, 'Uclenac-SR'),
(46, 'Diclomol SR'),
(47, 'Difolen-100'),
(48, 'Codopar'),
(49, 'Codocet'),
(50, 'Nims'),
(51, 'Mypain-2'),
(52, 'Amace'),
(53, 'Febustat-40'),
(54, 'Fenfex 180'),
(55, 'Meftal-500'),
(67, 'Flubact '),
(68, 'Serpa-10'),
(69, 'P-Gut'),
(70, 'Pandip'),
(71, 'Forcef'),
(72, 'Devomine'),
(73, 'D-KOF'),
(74, 'TROCET'),
(75, 'GLYCOMET-GP1'),
(76, 'Oricitral'),
(77, 'TusQ-X'),
(78, 'TusQ-Dx'),
(79, 'SedoSolvin'),
(80, 'Nebanol'),
(81, 'BENZADINE'),
(82, 'CHX'),
(83, 'Rectified Spirit B.P.'),
(84, 'UROSOL'),
(85, 'Calamine Lotion I.P.'),
(86, 'Colicspam'),
(87, 'Dezacor'),
(88, 'MET'),
(89, 'MEDI'),
(90, 'Polxin-NZ'),
(91, 'Betadine'),
(92, 'HiOra'),
(93, 'COLDIN-P'),
(94, 'Ascoril-D'),
(95, 'ARSIL-DX'),
(96, 'Koflet'),
(97, 'Bronchodyne'),
(98, 'VASODRYL'),
(99, 'BETA-2'),
(100, 'UNITUS'),
(101, 'Protek'),
(102, 'SILVER CHLOR'),
(103, 'POTASSIUM PERMANGANATE'),
(104, 'RELEXON'),
(105, 'WORMEX'),
(106, 'DICLOTAL-GEL'),
(107, 'Moov'),
(108, 'Asgipyrin'),
(109, 'FAST RELIEF'),
(110, 'INTiCARE'),
(111, 'SALSA-40'),
(112, 'Delisprin75'),
(113, 'APET'),
(114, 'Cosoft'),
(115, 'Gripe Water'),
(116, 'Glycerine'),
(117, 'Derma Care'),
(118, 'POLIF'),
(119, 'Janma Ghunti'),
(120, 'ZENEGRA-50'),
(121, 'OVRAL L'),
(122, 'PANTA FAST-D SR'),
(123, 'PANPRAZ-D SR'),
(124, 'DEVOXIN-10'),
(125, 'CLAVAM 625'),
(127, 'OHM-20'),
(128, 'SYNTRAN-100'),
(129, 'GLYCERINE'),
(130, 'UNIVIT'),
(131, 'KAF-D'),
(132, 'SITAMET-SR 500'),
(133, 'ZEPHROL PLUS'),
(134, 'HYBRO'),
(135, 'NOKOF'),
(136, 'Aciloc 150'),
(137, 'R-Loc 150'),
(138, 'ORNADO'),
(140, 'TINDAMAX-500'),
(141, 'FEMITRONE'),
(142, 'GRAZI-500'),
(143, 'FLUCLASS-500'),
(144, 'ZANDU PANCHARISHTA'),
(145, 'Monoral'),
(146, 'ARYADINE 5'),
(147, 'CTZ'),
(148, 'FETINE'),
(150, 'ZELLAR'),
(151, 'AMOX-CTL'),
(152, 'CETLONG'),
(153, 'CLOVE OIL'),
(154, 'NILOCON WHITE'),
(156, 'TURPEX'),
(157, 'ITCAN 50'),
(158, 'BIFILAC'),
(159, 'BRICA-BM'),
(160, 'Bonnisan'),
(161, 'GENTBECLOCOT'),
(162, 'Teracort'),
(163, 'SONADERM-GM'),
(164, 'EXTINA'),
(165, 'BETAGEN -N'),
(166, 'KETOZ'),
(167, 'LULIVAN'),
(168, 'BETAGEN '),
(169, 'Teritop'),
(170, 'CLOBEN-G'),
(171, 'FUSKIN-B'),
(172, 'BIOLIN '),
(173, 'COGLO '),
(174, 'Kesh King'),
(175, 'Parachute'),
(176, 'Vasolino '),
(177, 'TIGER BALM'),
(178, 'Veet'),
(179, 'A-1'),
(180, 'Boro Plus'),
(181, 'LISTERINE'),
(182, 'PERMISOLE'),
(183, 'E 72'),
(184, 'DICIRAN'),
(185, 'OmeCAP-20'),
(186, 'Dexin '),
(187, 'ACECLO'),
(188, 'ACECLO SR'),
(189, 'Ontron 4'),
(190, 'Darolac'),
(191, 'OLECIN-500'),
(192, 'Cosy'),
(193, 'ZITOP-20DT'),
(194, 'ARMETRO-400'),
(195, 'DISPRIN'),
(196, 'Esmopraz '),
(197, 'Acitop'),
(198, 'ARCETRIN'),
(199, 'Esozol-40'),
(200, 'CHYMORAL FORTE'),
(201, 'ENZAR FORTE'),
(202, 'PANSAFE-D'),
(203, 'Esozol-20'),
(204, 'RAB-20'),
(205, 'ANTIKOF'),
(206, 'RABESTA-20'),
(207, 'MECOZOL-400'),
(208, 'SUPRAMOX-500'),
(209, 'Rite-O-Cef-CV'),
(210, 'Sez-1000'),
(211, 'ONEDA-500'),
(212, 'BACTOLAC-HP'),
(213, 'ORNIDA'),
(214, 'ALMOX-500'),
(215, 'Super CV 625'),
(217, 'MEGAPEN'),
(218, 'Ciprobid-500'),
(219, 'DIARLOCK FORTE'),
(220, 'PERIMOX-500'),
(221, 'Azitrox 250'),
(222, 'PERICEF 200'),
(223, 'CLINBACT-300'),
(224, 'BILIN-500'),
(225, 'CANDID'),
(226, 'Odomos'),
(227, 'Neurobion Forte'),
(228, 'ZINEP DT 10'),
(229, 'ZINEP DT 20'),
(230, 'MECOBAL 1.5'),
(231, 'TRANOSTAT'),
(232, 'PRELONE 10'),
(233, 'AZOMIDE'),
(234, 'IFOL'),
(235, 'Spirolac-12.5'),
(236, 'Tranov-500'),
(237, 'EVA-400'),
(238, 'CACHCAL'),
(239, 'FOL-XT'),
(240, 'FORMIN SR-1000'),
(241, 'SHELCAL-500'),
(242, 'FERON-XT'),
(243, 'FLUZ'),
(244, 'Frusal'),
(245, 'Stonil'),
(246, 'Diabin 0.2'),
(247, 'Diabin 0.3'),
(248, 'IVER DT'),
(249, 'VOGLI-0.3'),
(250, 'LAXIT'),
(251, 'CLOVIR 800'),
(252, 'INAR-75'),
(253, 'Spril-25'),
(254, 'AQUAZIDE 12.5'),
(255, 'DOXOBID-400'),
(256, 'Infect-V'),
(257, 'Carovit Gold'),
(258, 'ZORYL-M 1'),
(259, 'MYVIT-C'),
(260, 'Benperox'),
(261, 'ELOZ-100'),
(262, 'SYNTRAN-200'),
(263, 'CLAVAM 375'),
(264, 'Feminine'),
(265, 'SALFLU-250'),
(266, 'asthalin'),
(267, 'Seroflo 250'),
(268, 'Foracort-400'),
(269, 'beclate-200'),
(270, 'foracort-200'),
(271, 'serobid'),
(272, 'SUPRAMOX'),
(273, 'Pacimol'),
(274, 'WINMOL'),
(275, 'CETOPHEN'),
(276, 'Zonacef'),
(277, 'SolvinCold AF'),
(278, 'TusQ-P'),
(279, 'Alex Plus'),
(280, 'Sinus'),
(281, 'AMBRODIL'),
(282, 'AZITECH-200'),
(283, 'ZULID-100'),
(284, 'ATM 100'),
(285, 'NEOPEPTiNE'),
(286, 'MINTGARD'),
(287, 'SUCRAFIL'),
(288, 'COATZ'),
(289, 'OXYGEL'),
(290, 'CYCLOPAM'),
(291, 'PASMODIN'),
(292, 'Cebay'),
(293, 'Monoral 50'),
(294, 'Monoral 100'),
(295, 'Candid-B'),
(296, 'Itch Aid'),
(297, 'FUTIC'),
(298, 'D ACNE '),
(299, 'MUSPRIRE'),
(300, 'MUPIR'),
(301, 'Halobet'),
(302, 'EUKROMA'),
(303, 'Melacare'),
(304, 'Zytee RB'),
(305, 'ACLOV'),
(306, 'ORO HEAL'),
(307, 'OREX-Lo'),
(308, 'HiOra-SG'),
(309, 'Mofur'),
(310, 'Quadrajel'),
(311, 'ONO '),
(312, 'Cebay 100'),
(313, 'ONSTAL'),
(314, 'CLAVAM '),
(315, 'Mega-CV'),
(316, 'INDCLAV BID'),
(317, 'Enclave BID'),
(318, 'Motivac '),
(319, 'Pilex'),
(320, 'DIGENE'),
(321, 'Nasivion'),
(322, 't-zoline P'),
(323, 'Decomit'),
(324, 'Nazolin'),
(325, 'Evalax'),
(326, 'betnor'),
(327, 'Ciflox'),
(328, 'Moist Max'),
(329, 'Optha Care'),
(330, 'LUBREX'),
(331, 'Nicol'),
(332, 'Oflozest '),
(333, 'OpTob'),
(334, 'Krack'),
(335, 'Ocurest'),
(336, 'ANOMYCETIN'),
(337, 'OTOSOFT'),
(338, 'Otorex'),
(348, 'Mitel-40'),
(349, 'Spril F'),
(350, 'Q-pil 5'),
(351, 'Gluride 1'),
(352, 'Angizaar-H'),
(353, 'Astat 10'),
(354, 'GLYCOMET-850'),
(355, 'FORMET500'),
(356, 'Mylod AT'),
(357, 'FORMET 1000 SR'),
(358, 'OBICHECK 500'),
(359, 'KELZEM SR'),
(360, 'GLYCOMET-GP 0.5'),
(361, 'GLYCOMET-1 GM'),
(362, 'Gluride 2'),
(363, 'REFORM-1000 SR'),
(364, 'Gluride 3'),
(365, 'Siptin-M 850'),
(366, 'LINAGLIP-5'),
(367, 'AMFAST-L'),
(368, 'GLYCOMET-500 SR'),
(369, 'Amlospire-5'),
(370, 'Alpine 5'),
(371, 'Mylod 5'),
(372, 'AMLOD 2.5'),
(373, 'Amaryl 1mg'),
(375, 'ARBITEL-AM'),
(376, 'AMTAS 2.5'),
(377, 'Telma H'),
(378, 'AMTAS-5'),
(379, 'AMLOD-L'),
(380, 'Amcab-5'),
(381, 'REPACE H'),
(382, 'Veltam 0.4'),
(383, 'Sartel AM'),
(384, 'Telspire-20'),
(385, 'MOREASE SR'),
(386, 'Aztor 10'),
(387, 'Clopilet'),
(388, 'Arvast 10'),
(389, 'Olmat-40'),
(390, 'Astat 5'),
(391, 'Omnitan-50'),
(392, 'Atchol-10'),
(393, 'Myogrel-75'),
(394, 'Olmat-20'),
(395, 'Lintor 5'),
(396, 'Camlo-L'),
(397, 'Avas-20'),
(398, 'Fincar'),
(399, 'Clopid'),
(400, 'Lospo 50'),
(401, 'Avas -20'),
(402, 'ROUTIN 5'),
(403, 'Arvast 5'),
(404, 'Arbitel-20'),
(405, 'GABANTIN 300'),
(406, 'SARTEL-40'),
(407, 'Sartel H'),
(408, 'Avas-10'),
(409, 'Arbitel-80'),
(410, 'Telma 80H'),
(411, 'Telma-40'),
(412, 'MIRNITE-15'),
(413, 'MYOXIN-0.25'),
(414, 'Cardace-2.5'),
(415, 'RePACE-50'),
(416, 'Metapro-XL 50'),
(417, 'S-Amlong-2.5'),
(418, 'Metloc-12.5'),
(419, 'MINIL-20'),
(420, 'Metloc-XL-50'),
(421, 'Metloc-XL-12.5'),
(422, 'Mylod-LH'),
(423, 'AMFAST-5'),
(424, 'LIPICURE-20'),
(425, 'RePace-25'),
(426, 'TRIVIT '),
(427, 'Atenol-50'),
(428, 'Aztor-40'),
(429, 'URIBID'),
(430, 'TELLZY-80'),
(431, 'Zoryl-1'),
(432, 'ATECARD-D'),
(433, 'TENORIC-LD'),
(434, 'GRASOZOLE-40'),
(435, 'Amlong-2.5'),
(436, 'Zita Plus'),
(437, 'Myoside-4'),
(438, 'Aldactone'),
(439, 'NEXPRO FAST 40'),
(440, 'REVAS-50'),
(441, 'LOSAP-25'),
(442, 'ARBO-25'),
(443, 'AMLOD-LH'),
(444, 'TGR'),
(445, 'MONOTRATE-10'),
(446, 'ARBO'),
(447, 'CLAVIX'),
(448, 'DEZACOR-6'),
(449, 'ZINC-DT-20'),
(450, 'ANGIZEM-30'),
(451, 'IVER-DT'),
(452, 'DART'),
(453, 'AlfaPro-0.4'),
(454, 'Sinarest-S'),
(455, 'URELY'),
(456, 'SERZOL-V'),
(457, 'Ecosprin-75'),
(458, 'OMECID'),
(459, 'Te-De-V'),
(460, 'Tracid-500'),
(461, 'PRAZOPRESS-XL-2.5'),
(462, 'Isordil-5'),
(463, 'TELMI-80'),
(464, 'FLAVOX'),
(465, 'Siptin-M 1000'),
(466, 'MONKAST-10'),
(467, 'Sunaulo Gulaf'),
(468, 'SCALPE'),
(469, 'C-Sachet'),
(470, 'D.F.O. Spray'),
(471, 'Rectified Spirit B. P.'),
(472, 'Dancure-P'),
(473, 'CALADIL '),
(474, 'MediKer'),
(475, 'ALMOND SPLASH'),
(476, 'Olivel'),
(477, 'Vitro Naturals'),
(478, 'Farex'),
(479, 'NIVEA'),
(480, 'KEZOLE 2 Percent'),
(481, 'Hairzone'),
(482, 'Dermi COOL'),
(483, 'Dettol'),
(484, 'B-CORN'),
(485, 'Derma Moist'),
(486, 'Ray Shield'),
(487, 'Clean and Clear'),
(488, 'Stretch mark cream'),
(489, 'Joy Honey and Almonds'),
(490, 'COLGATE'),
(491, 'Closeup'),
(492, 'Acne Guard'),
(493, 'Sass-KTZ-Plus'),
(494, 'SENSODYNE'),
(495, 'Aactaril'),
(496, 'Koz'),
(497, 'Permix'),
(498, 'Lifeboy'),
(499, 'Rhumasyl Liniment'),
(500, 'Rumalaya Liniment - 60 ml'),
(501, 'Fenfex 120'),
(502, 'B-LONG'),
(503, 'ARFOLOC-5'),
(504, 'Folvin'),
(505, 'Eposoft'),
(506, 'Gulabari'),
(507, 'Pudin Hara Pearls'),
(508, 'Pudin Hara Fizz'),
(509, 'OMEE-G'),
(510, 'Koflet-SF'),
(511, 'Koflet-H'),
(512, 'Honitus'),
(513, 'Strepsils'),
(514, 'Gas-O-Fast'),
(515, 'Suremed'),
(516, 'NAVA JEEVAN'),
(517, 'e con'),
(518, 'PANTOP'),
(523, 'Q-pil 2.5'),
(524, 'Glibose-0.3'),
(525, 'OZOTEL'),
(526, 'Tamsulosin Hydrochloride'),
(527, 'Finasteride'),
(529, 'AMOL'),
(530, 'SIGAB-75'),
(531, 'SALMOL-4'),
(532, 'TELMI-40');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(10) NOT NULL,
  `p_id` int(10) NOT NULL,
  `ip_add` varchar(250) NOT NULL,
  `user_id` int(10) DEFAULT NULL,
  `qty` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `p_id`, `ip_add`, `user_id`, `qty`) VALUES
(397, 77, '103.124.96.171', 27, 50),
(409, 21, '103.124.96.171', -1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `cat_id` int(100) NOT NULL,
  `cat_title` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`cat_id`, `cat_title`) VALUES
(1, 'Minerals & Vit. Supplements'),
(2, 'Antibiotics'),
(3, 'Anti Helmenthics'),
(4, 'Anti Fungal'),
(5, 'Lipid Lowering Agent'),
(6, 'Diuretics'),
(7, 'Anti Viral '),
(8, 'Muscle Relaxant'),
(9, 'Anti Pyretic, Analgesic'),
(12, 'Laxative'),
(13, 'Anti Histamine'),
(14, 'Hormones'),
(19, 'Peptic Ulcer,  GERD'),
(20, 'Anti-emetic'),
(21, 'NSAID'),
(22, 'Anti Spasmodics'),
(24, 'Corticosteroids'),
(26, 'Anti Hypertensive'),
(27, 'Anti Diabetic'),
(29, 'Anti Fibrinolytics'),
(30, 'Altitude Sickness'),
(31, 'BPH'),
(32, 'Anti Platelet '),
(33, 'Cardiac Glycosides'),
(34, 'Anti-asthmatic'),
(35, 'Erectile dysfunction'),
(36, 'Neuropathic'),
(37, 'Anti Diarrheal'),
(38, 'Enzymes'),
(39, 'Alkalizer');

-- --------------------------------------------------------

--
-- Table structure for table `company`
--

CREATE TABLE `company` (
  `company_id` int(11) NOT NULL,
  `company_title` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `company`
--

INSERT INTO `company` (`company_id`, `company_title`) VALUES
(6, 'National Pharmaceuticals'),
(7, 'Sanofi India Ltd'),
(8, 'Taurus Pharma Pvt Ltd'),
(9, 'Curex pharmaceuticals Pvt.ltd'),
(10, 'Orion pharma ltd'),
(11, 'Medopharm'),
(12, 'Lomus pharmaceuticals Pvt ltd'),
(13, 'Time pharmaceuticals Pvt ltd'),
(14, 'Centaur pharmaceuticals Pvt ltd'),
(15, 'Abbott'),
(16, 'Apex pharmaceuticals Pvt ltd'),
(17, 'Micro labs ltd'),
(18, 'Umedica laboratories Pvt ltd'),
(19, 'Everest pharmaceutical pvt ltd'),
(21, 'Quest pharmaceutical pvt LTD'),
(22, 'Everest pharmaceutical pvt ltd'),
(23, 'Arya pharmalab pvt ltd'),
(24, 'Asian pharmaceutical pvt ltd'),
(26, 'Win-medicare Pvt ltd'),
(27, 'Gracure pharmaceutical ltd'),
(28, 'Quest pharmaceutical pvt LTD'),
(31, 'Siddhartha pharmaceutical pvt ltd'),
(32, 'Amtech Med pvt ltd'),
(33, 'Omnica laboratories Pvt ltd'),
(34, 'Taurus pharma Pvt ltd'),
(35, 'Blue cross laboratories Pvt ltd'),
(37, 'The Madras Pharmaceuticals'),
(38, 'Vijayadeep Laboratories Ltd'),
(39, 'Aristo Pharmaceuticals Pvt ltd'),
(40, 'USV Private Limited'),
(41, 'TTK HEALTHCARE LIMITED'),
(42, 'Ipca Laboratories Ltd'),
(43, 'Square Pharmaceuticals Ltd'),
(44, 'Deurali Janta Pharmaceuticals Pvt Ltd'),
(45, 'Supreme Healthcare Pvt Ltd'),
(46, 'Leben Laboratories Pvt Ltd'),
(47, 'UNIVERSAL Formulations Pvt Ltd'),
(48, 'The Himalaya Drug Company'),
(49, 'Glenmark pharmaceuticals ltd'),
(50, 'Nova Genetica Pvt Ltd'),
(51, 'MANOJ CHEMICAL WORKS'),
(52, 'Ozone Pharmaceuticals Ltd-Unit-II'),
(53, 'Reckitt Benckiser Healthcare India Pvt Ltd'),
(54, 'Emami Limited'),
(55, 'COSMONOVA'),
(56, 'Maruti Pharma Pvt Ltd'),
(57, 'BHASKAR Herbaceuticals Pvt Ltd'),
(58, 'OJAS HERBACEUTICALS PVT LTD'),
(59, 'Dabur India Limited'),
(60, 'ALKEM LABORATORIES LTD'),
(61, 'Pfizer Limited'),
(62, 'SUMY PHARMACEUTICALS PVT LTD'),
(63, 'Kajal Chemicals & Cosmetic Production Pvt Ltd'),
(64, 'Florid Laboratories Pvt Ltd'),
(65, 'NEPAL PHARMACEUTICALS LABORATORY PVT LTD'),
(66, 'National Healthcare Pvt Ltd'),
(67, 'HUKAM PHARMACEUTICALS PVT LTD'),
(68, 'CADILA PHARMACEUTICALS LIMITED'),
(69, 'CADILA Healthcare Limited'),
(70, 'CTL PHARMACEUTICALS PVT LTD'),
(71, 'Nepal CRS Company'),
(72, 'Shree Ram Pharmaceuticals Pvt Ltd'),
(73, 'TABLETS INDIA LIMITED'),
(74, 'BIOGAIN REMEDIES PVT LTD'),
(75, 'Vaishnavi Life Sciences Pvt Ltd'),
(76, 'INDOCO REMEDIES LTD'),
(77, 'CROIENT PHARMA PVT. LTD.'),
(78, 'Marico Ltd. '),
(79, 'True Derma S.A.'),
(80, 'Xiamen Tiger Medicals Co. Ltd.'),
(81, 'Alliance Pharmaceuticals Pvt Ltd '),
(82, 'EVA 400'),
(83, 'Johnson and Johnson Pvt Ltd '),
(84, 'RENATA LIMITED'),
(85, 'DCI Pharmaceuticals Pvt Ltd '),
(86, 'OMEGA Pharmaceuticals Pvt Ltd '),
(87, 'Windlas Biotech Pvt Limited'),
(88, 'Vega Pharmaceuticals Pvt Ltd '),
(89, 'Magnus Pharma Pvt Ltd '),
(90, 'Stallion Laboratories Pvt Ltd '),
(91, 'ALIVE Pharmaceuticals Pvt Ltd '),
(92, 'MERCK LIMITED'),
(93, 'Ohm Pharmaceuticals Pvt Ltd '),
(94, 'LINCOLN PHARMACEUTICALS LTD.'),
(95, 'CACHET PHARMACEUTICALS PVT LTD'),
(96, 'AGNUS Pharmaceuticals'),
(97, 'Pure and Cure Healthcare Pvt Ltd '),
(98, 'SUN PHARMA LABORATORIES LTD.'),
(99, 'BRUKEM LIFE CARE'),
(100, 'INTAS PHARMACEUTICALS LTD.'),
(101, 'The ACME Laboratories Ltd '),
(102, 'CIPLA LTD.'),
(103, 'RAPTAKOS, BRETT AND CO. Ltd'),
(104, 'Fourrts (india) Laboratories Pvt Limited'),
(105, 'Kasturi Pharmaceuticals Pvt Ltd '),
(106, 'YASH PHARMA LABORATORIES PVT LTD '),
(107, 'Aadee Remedies Pvt Ltd '),
(108, 'Abbot India Limited'),
(109, 'BEXIMCO PHARMACEUTICALS LTD '),
(110, 'SHIV PHARMACEUTICAL LABORATORIES '),
(111, 'MAX PHARMA PVT LTD '),
(115, 'Dr. Reddys Laboratories Limited'),
(116, 'MACLEODS PHARMACEUTICALS LTD'),
(117, 'Alembic Pharmaceuticals Ltd'),
(118, 'RPG LIFE SCIENCES LIMITED'),
(119, 'TORRENT PHARMACEUTICALS LTD '),
(120, 'MAPRA LABORATORIES PVT LTD'),
(121, 'Saga LABORATORIES '),
(122, 'S.R. DRUG LABORATORIES PVT LTD'),
(123, 'Psychotropics India Limited'),
(124, 'DERMAWIN PHARMACEUTICALS '),
(125, 'RL Corporation India'),
(126, 'VITRO MED HEALTHCARE'),
(127, 'NUTRICIA INTERNATIONAL PVT LTD'),
(128, 'Beiersdofr AG Hamburg Germany'),
(129, 'Avalon Cosmetics Pvt Ltd '),
(130, 'Pontika Aerotech Ltd'),
(131, 'Beeta Surgicals Pvt Ltd'),
(132, 'Ratnasagar Herbals Pvt Ltd'),
(133, 'Colgate- Palmolive India Ltd'),
(134, 'Unilever Nepal Ltd'),
(135, 'Rajvi biotech Pvt Ltd'),
(136, 'Global Health Care Products'),
(137, 'Sasa Pharma Solutions Pvt Ltd'),
(138, 'Contract manufacturing and Packaging cervices pty Ltd'),
(139, 'Accent Pharmaceuticals and diagnostics'),
(140, 'HLL LIFE CARE LIMITED'),
(144, 'PHARMACEUTICALS PVT. LTD.'),
(145, 'Mylan Laboratories Ltd'),
(146, 'Indchemie Health Specialities Pvt.Ltd');

-- --------------------------------------------------------

--
-- Table structure for table `email_info`
--

CREATE TABLE `email_info` (
  `email_id` int(100) NOT NULL,
  `email` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `logs`
--

CREATE TABLE `logs` (
  `id` int(11) NOT NULL,
  `user_id` varchar(50) NOT NULL,
  `action` varchar(50) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `med_frequency`
--

CREATE TABLE `med_frequency` (
  `frequency_id` int(11) NOT NULL,
  `frequency_title` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `med_frequency`
--

INSERT INTO `med_frequency` (`frequency_id`, `frequency_title`) VALUES
(1, 'OD (once daily)'),
(2, 'BID/ BD (two times a day)'),
(3, 'TDS / TID (Three times a Day'),
(4, 'QID (four times a day or 6 hourly)'),
(5, 'Weekly (One time in a week)'),
(6, 'Monthly (One time in a month)'),
(7, 'Every 3 Months (One time in 3 months)'),
(8, 'at Birth only'),
(9, 'STAT (Immediately)'),
(10, 'SOS (When necessary)'),
(13, 'HS (at bedtime)');

-- --------------------------------------------------------

--
-- Table structure for table `med_generic`
--

CREATE TABLE `med_generic` (
  `gen_id` int(11) NOT NULL,
  `gen_title` varchar(200) NOT NULL,
  `gen_descr` text NOT NULL,
  `gen_uses` text NOT NULL,
  `gen_se` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `med_generic`
--

INSERT INTO `med_generic` (`gen_id`, `gen_title`, `gen_descr`, `gen_uses`, `gen_se`) VALUES
(1, 'Paracetamol', 'Paracetamol (acetaminophen) is a pain reliever and a fever reducer. The exact mechanism of action of is not known.\r\n\r\nParacetamol is used to treat many conditions such as headache, muscle aches, arthritis, backache, toothaches, colds, and fevers. It relieves pain in mild arthritis but has no effect on the underlying inflammation and swelling of the joint.', 'This drug is used to treat mild to moderate pain (from headaches, menstrual periods, toothaches, backaches, osteoarthritis, or cold/flu aches and pains) and to reduce fever.', 'Low fever with nausea, stomach pain, and loss of appetite;      dark urine, clay-colored stools, or jaundice (yellowing of the skin or eyes).'),
(2, 'Amoxycillin', 'Amoxicillin is a penicillin antibiotic that fights bacteria. Amoxicillin is used to treat many different types of infection caused by bacteria, such as tonsillitis, bronchitis, pneumonia, and infections of the ear, nose, throat, skin, or urinary tract.', 'Amoxicillin is used to treat a wide variety of bacterial infections. This medication is a penicillin-type antibiotic. It works by stopping the growth of bacteria.', 'Nausea, vomiting, or diarrhea may occur. If any of these effects persist or worsen, tell your doctor or pharmacist promptly.'),
(3, 'Hydroxychlooroquine', 'Anti malarial drug', 'Malaria', 'Nausia, Vomitting, Headache'),
(6, 'Cefixime', 'Cefixime, an antibiotic, is a third-generation cephalosporin like ceftriaxone and cefotaxime. Cefixime is highly stable in the presence of beta-lactamase enzymes. As a result, many organisms resistant to penicillins and some cephalosporins due to the presence of beta-lactamases, may be susceptible to cefixime. The antibacterial effect of cefixime results from inhibition of mucopeptide synthesis in the bacterial cell wall.', 'Cefixime is used to treat a wide variety of bacterial infections. ', 'Stomach upset/pain, diarrhea, nausea, gas, headache, or dizziness may occur.'),
(7, 'Vitamin B Complex with C', 'B vitamins play a vital role in maintaining good health and well-being. As the building blocks of a healthy body, B vitamins have a direct impact on your energy levels, brain function, and cell metabolism.', 'Most people get enough B vitamins by eating a balanced diet. However, itï¿½s still possible to be deficient.  The following symptoms may be a sign that you are not getting enough B vitamins:      skin rashes     cracks around the mouth     scaly skin on the lips     swollen tongue     fatigue     weakness     anemia     confusion     irritability or depression     nausea     abdominal cramps     diarrhea     constipation     numbness or tingling in the feet and hands', 'Symptoms of a vitamin B complex overdose include:      excessive thirst     skin conditions     blurry vision     abdominal cramps     nausea     vomiting     increased urination     diarrhea     skin flushing'),
(11, 'Amlodipine', 'Amlodipine is used with or without other medications to treat high blood pressure. Lowering high blood pressure helps prevent strokes, heart attacks, and kidney problems. Amlodipine belongs to a class of drugs known as calcium channel blockers. It works by relaxing blood vessels so blood can flow more easily.\r\n\r\nAmlodipine is also used to prevent certain types of chest pain (angina). It may help to increase your ability to exercise and decrease the frequency of angina attacks. It should not be used to treat attacks of chest pain when they occur. Use other medications (such as sublingual nitroglycerin) to relieve attacks of chest pain as directed by your doctor.', 'Amlodipine is used with or without other medications to treat high blood pressure. Lowering high blood pressure helps prevent strokes, heart attacks, and kidney problems.', 'Dizziness, lightheadedness, swelling ankles/feet, or flushing may occur. '),
(12, 'Isabgul husk (Plantago ovata)- 30%', 'Isabgul husk (Plantago ovata)- 30%: Seeds are cooling, demulcent, mildly astringent, emollient, laxative and diuretic.\"', 'Constipation, piles', 'Loose motion, nausea '),
(13, 'Ibuprofen and Paracetamol combination', '\r\n\r\nFlexon Tablet is a combination of two medicines: Ibuprofen and Paracetamol / Acetaminophen.\r\n\r\nParacetamol exhibits analgesic action by peripheral blockage of painimpulse generation. It produces antipyresis by inhibiting the hypothalamic heat-regulating centre. Its weak anti-inflammatory activity is related to inhibition of prostaglandin synthesis in the CNS.\r\n\r\nIbuprofen is a non-selective inhibitor of an enzyme called cyclooxygenase (COX), which is required for the synthesis of prostaglandins via the arachidonic acid pathway. COX is needed to convert arachidonic acid to prostaglandin H2 (PGH2) in the body.\r\n', 'Flexon Tablet is used for pain relief and fever. It relieves pain in conditions like headache, mild migraine, muscle pain, dental pain, rheumatoid arthritis, ankylosing spondylitis, osteoarthritis, or painful menses.', 'Common Side Effects of Flexon are Heartburn, Indigestion, Nausea, Stomach pain.'),
(16, 'Flucloxacillin', 'Flucloxacillin is a penicillin beta-lactam antibiotic used in the treatment of bacterial infections caused by susceptible, usually gram-positive, organisms. The name \"penicillin\" can either refer to several variants of penicillin available, or to the group of antibiotics derived from the penicillins. Flucloxacillin has in vitro activity against gram-positive and gram-negative aerobic and anaerobic bacteria. The bactericidal activity of Flucloxacillin results from the inhibition of cell wall synthesis and is mediated through flucloxacillin binding to penicillin binding proteins (PBPs).', 'cystic fibrosis\r\ninfection of uncertain origin\r\nskin infections\r\nacne\r\nblepharospasm', 'diarrhea\r\nabdominal bloating'),
(24, 'Ranitidine', 'Ranitidine belongs to a group of drugs called histamine-2 blockers. It works by reducing the amount of acid your stomach produces.', 'Ranitidine is used to treat and prevent ulcers in the stomach and intestines. It also treats conditions in which the stomach produces too much acid.', 'Common ranitidine side effects may include:\r\n\r\nheadache (may be severe);\r\n\r\ndrowsiness, dizziness;\r\n\r\nsleep problems (insomnia);\r\n\r\ndecreased sex drive, impotence, or difficulty having an orgasm; or\r\n\r\nswollen or tender breasts (in men);\r\n\r\nnausea, vomiting, stomach pain; or\r\n\r\ndiarrhea, constipation.'),
(25, 'cefpodoxime', 'Cefpodoxime is an oral, third-generation cephalosporin antibiotic. It is active against most Gram-positive and Gram-negative organisms.', 'It works by fighting bacteria in your body. Cefpodoxime is used to treat infections caused by bacteria, including upper respiratory infections, ear infections, skin infections, and urinary tract infections.', 'More frequently reported side effects include: oral candidiasis, abdominal cramps, diarrhea, nausea, and vomiting. See below for a comprehensive list of adverse effects.\r\n'),
(27, 'Aciclovir', 'Aciclovir, also known as acyclovir, is an antiviral medication. It is primarily used for the treatment of herpes simplex virus infections, chickenpox, and shingles. Other uses include prevention of cytomegalovirus infections following transplant and severe complications of Epstein-Barr virus infection.', 'Acyclovir is used to treat infections caused by certain types of viruses. It treats cold sores around the mouth (caused by herpes simplex), shingles (caused by herpes zoster), and chickenpox.This medication is also used to treat outbreaks of genital herpes.', 'Nausea, diarrhea, headache, or vomiting may occur. '),
(28, 'Pantoprazole', 'Pantoprazole is a proton pump inhibitor that decreases the amount of acid produced in the stomach.', 'Pantoprazole is used to treat certain stomach and esophagus problems (such as acid reflux). It works by decreasing the amount of acid your stomach makes. This medication relieves symptoms such as heartburn, difficulty swallowing, and persistent cough. It helps heal acid damage to the stomach and esophagus, helps prevent ulcers, and may help prevent cancer of the esophagus. ', 'Headache or diarrhea may occur.'),
(29, 'Clotrimazole', 'Clotrimazole is an azole antifungal that works by preventing the growth of fungus.', 'Clotrimazole is used to treat skin infections such as athletes foot, jock itch, ringworm, and other fungal skin infections (candidiasis). This medication is also used to treat a skin condition known as pityriasis (tinea versicolor).', 'Burning, stinging, swelling, irritation, redness, pimple-like bumps, tenderness, or flaking of the treated skin may occur.'),
(30, 'Ornidazole', 'Ornidazole is an effective medicine to treat infections caused by protozoa and certain strains of anaerobic bacteria.\r\n', ' It is used to treat infections of the stomach, intestine, urinary tract and genital area. It is also used to prevent possible infections during a surgical procedure.', 'Upset stomach, nausea, diarrhea, headache, dizziness, lightheadedness, or trouble sleeping may occur. '),
(31, 'Ciprofloxacin', 'This medication is used to treat a variety of bacterial infections. Ciprofloxacin belongs to a class of drugs called quinolone antibiotics. It works by stopping the growth of bacteria.', 'It is used to treat bone and joint infections, intra abdominal infections, certain type of infectious diarrhea, respiratory tract infections, skin infections, typhoid fever, and urinary tract infections, among others.', 'Nausea, diarrhea, dizziness, lightheadedness, headache, or trouble sleeping may occur.'),
(32, 'Metronidazole', 'Metronidazole is an antibiotic that is used to treat a wide variety of infections. It works by stopping the growth of certain bacteria and parasites. This antibiotic treats only certain bacterial and parasitic infections. It will not work for viral infections ', ' It is used to treat bacterial infections of the skin, vagina, stomach, joints, or respiratory tract. The drug is sometimes used with other medicines to treat stomach ulcers.', 'Common side effects include nausea, a metallic taste, loss of appetite, and headaches. Occasionally seizures or allergies to the medication may occur.'),
(33, 'Azithromycin', 'Azithromycin is used to treat a wide variety of bacterial infections. It is a macrolide-type antibiotic. It works by stopping the growth of bacteria.\r\n\r\n', 'Azithromycin is used to treat many different types of infections caused by bacteria, such as respiratory infections, skin infections, ear infections, eye infections, and sexually transmitted diseases. ', 'It includes diarrhea or loose stools, nausea, abdominal pain, stomach upset, vomiting, constipation, dizziness .'),
(34, 'Ampicillin + Cloxacillin', 'Ampicillin and Cloxacillin are penicillin antibiotics that are used to treat or prevent many different types of  bacterial infections. Both ampicillin and cloxacillin are bactericidal antibiotics and act by interfering with the formation of new bacterial cell wall by dividing organisms.', 'It is used to treat or prevent infections such as bladder infections, pneumonia, gonorrhea, meningitis, or infections of the stomach or intestines.', 'Common side effects includes nausea, vomiting, diarrhea, rashes. Serious side effects includes allergic reactions such as flu-like symptoms, blisters, rashes and diarrhea with fever .'),
(35, 'Cefuroxime', 'Cefuroxime is a cephalosporin  antibiotic. It works by fighting bacteria in your body. It is used to treat many kinds of bacterial infections, including severe or life-threatening forms.', 'It is used to treat infections with susceptible bacteria including skin and middle ear infections, meningitis,  tonsillitis, throat infections, laryngitis, bronchitis, pneumonia, urinary tract infections, gonorrhea and Lyme disease.', ' Common side effects includes diarrhea, nausea, vomiting, unusual or unpleasant taste in  mouth.'),
(36, 'Secnidazole', 'Secnidazole is a second-generation 5-nitroimidazole antimicrobial. It is an antibiotic that works by stopping the growth of bacteria.\r\n', ' Secnidazole is  commonly used in women to treat bacterial vaginal infections.', 'Headache, nausea, diarrhea, or abdominal pain may occur. '),
(37, 'Clindamycin', 'Clindamycin is used to treat a wide variety of bacterial infections. It is an antibiotic that works by stopping the growth of bacteria.\r\nIt can also be used to treat some protozoal disesases, such as malaria. \r\n', 'Clindamycin is used for the treatment of a number of bacterial infections, including bone or joint infections, pelvic inflammatory disease, strep throat, pneumonia, middle ear infections, and endocarditis. It can also be used to treat acne, and some cases of methicillin-resistant Staphylococcus aureus.', 'Nausea, vomiting, or diarrhea may occur. Tell your doctor right away if you have any serious side effects, including: heartburn, joint pain/swelling, yellowing eyes/skin, dark urine.\r\nUse of this medication for prolonged or repeated periods may result in oral thrush or a new vaginal yeast infection.\r\n\r\n'),
(38, 'Tinidazole', 'Tinidazole is a drug used against bacterial and protozoan infections.  It works by stopping the growth of certain bacteria and parasites.', 'Tinidazole is an antibiotic that is used to treat certain types of vaginal infections (bacterial vaginosis, trichomoniasis). It is also used to treat certain types of parasite infections (giardiasis, amebiasis).', 'Bitter/metallic taste in the mouth, nausea, vomiting, upset stomach, stomach cramps/pain, loss of appetite, constipation, diarrhea, dizziness, or drowsiness may occur.'),
(39, 'Ondansetron', 'Ondansetron is in a class of medications called serotonin 5-HT3 receptor antagonists. It works by blocking the action of serotonin, a natural substance that may cause nausea and vomiting. It is an anti-emetic drug used to prevent nausea and vomiting  but it has no effect on vomiting caused by motion sickness.', 'Ondansetron is used to prevent nausea and vomiting that may be caused by surgery, cancer chemotherapy, or radiation treatment. It is also effective for treating gastroenteritis.', 'Its common side effects includes confusion, dizziness, fast heartbeat, fever, headache, shortness of breath and weakness. \r\nLess common side effects includes decrease in the frequency of urination, decrease in the urine volume, difficulty with passing urine and painful urination.'),
(40, 'Cetirizine', 'Cetirizine is an antihistamine used to relieve allergy symptoms.  It works by blocking a certain natural substance (histamine) that your body makes during an allergic reaction.Cetirizine does not prevent hives or prevent/treat a serious allergic reaction (such as anaphylaxis). ', '  Cetrizine is used to treat allergic rhinitis, dermatitis, and urticaria. It is also used to relieve allergy symptoms such as watery eyes, runny nose, itching eyes/nose, sneezing, hives, and itching.', 'Drowsiness, tiredness, and dry mouth may occur. Stomach pain may also occur, especially in children.'),
(41, 'Levocetirizine', 'Levocetirizine is an antihistamine. It works by blocking a certain natural substance (histamine) that your body makes during an allergic reaction. It is less sedating than older antihistamines. ', 'It is used to relieve allergy symptoms such as watery eyes, runny nose, itching eyes/nose, and sneezing. It is also used to relieve itching and hives. It is also used to treat the symptoms of seasonal and year-round allergies. ', 'Common side effects include sleepiness, dry mouth, cough, vomiting, and diarrhea.'),
(42, 'Diclofenac', ' Diclofenac is a nonsteroidal anti-inflammatory drug used to treat pain and inflammatory diseases such as gout.This medicine works by reducing substances in the body that cause pain and inflammation.', 'Diclofenac is used to relieve pain, swelling (inflammation), and joint stiffness caused by arthritis.  It is also used to trest pain and inflammatory disease such as gout.', 'The most common side effects are headaches, dizziness, stomach pain, feeling or being sick, diarrhoea, abdominal bleeding, swelling and rashes.'),
(43, 'Hyoscine Butylbromide', 'Hyoscine butylbromide is an antispasmodic medicine which is taken to relieve cramps in the stomach, intestines or bladder.  It works by relaxing some of the muscles in your gastrointestinal and urinary systems.', 'Hyoscine is a medication used to treat motion sickness and postoperative nausea and vomiting. It is also sometimes used before surgery to decrease saliva. It is also indicated for the treatment of abdominal pain associated with cramps induced by gastrointestinal spasms.', 'Common side effects include sleepiness, blurred vision, dilated pupils, and dry mouth.'),
(44, 'Aceclofenac', 'Aceclofenac is a nonsteroidal anti-inflammatory drug (NSAID) analog of diclofenac. ', 'It is used for the relief of pain and inflammation in rheumatoid arthritis, osteoarthritis and ankylosing spondylitis. ', 'Common side effects include headache, nausea, vomiting, epigastric pain, gastrointestinal irritation, gastrointestinal bleeding, rarely diarrhoea, disorientation, excitation, coma, drowsiness, dizziness, tinnitus, hypotension, respiratory depression, fainting, occasionally convulsions.'),
(45, 'Omeprazole', 'Omeprazole is a proton pump inhibitor that decreases the amount of acid produced in the stomach.. It works by decreasing the amount of acid your stomach makes. It relieves symptoms such as heartburn, difficulty swallowing, and persistent cough.', 'Omeprazole is a medication used in the treatment of gastroesophageal reflux disease, peptic ulcer disease, and Zollingerâ€“Ellison syndrome. It is also used to prevent upper gastrointestinal bleeding in people who are at high risk.', 'Headache or abdominal pain may occur. Serious side effects includes symptoms of a low magnesium blood level (such as unusually fast/slow/irregular heartbeat, persistent muscle spasms, seizures), signs of lupus (such as rash on nose and cheeks, new or worsening joint pain).'),
(46, 'Nimesulide', 'Nimesulide is a nonsteroidal anti-inflammatory drug with pain medication and fever reducing properties. ', 'It is used for the treatment of acute pain, the symptomatic treatment of osteoarthritis, and primary dysmenorrhoea in adolescents and adults above 12 years old. ', 'Common side effects may include liver problems, diarrhea., vomiting, skin rash, itchiness, dizziness, bitterness in mouth.'),
(47, 'Mefenamic Acid', ' Mefenamic Acid is a Non-steroidal anti-inflammatory (NSAID) medicine.  It is an analgesic, anti-inflammatory agent used in mild to moderate painful conditions in adult.', 'used to relieve pain associated with acute musculoskeletal disorders such as sprains, strains, injuries, osteoarthritis, rheumatoid arthritis, etc. It also relieves dental pain, post-operative, and post-partum pain. It helps to relieve pain and cramps during menstrual periods.', 'Common side effects include mild vomiting, stomach pain, nausea, headache, and dizziness.'),
(50, 'Dexamethasone', 'Dexamethasone is a type of corticosteroid medication.', 'Dexamethasone is used to treat conditions such as arthritis, blood/hormone/immune system disorders, allergic reactions, certain skin and eye conditions, breathing problems, certain bowel disorders, and certain cancers. It is also used as a test for an adrenal gland disorder (Cushings syndrome).', 'Stomach upset, headache, dizziness, menstrual changes, trouble sleeping, increased appetite, or weight gain may occur. '),
(51, 'Prednisolone', 'Prednisolone is a man-made form of a natural substance (corticosteroid hormone) made by the adrenal gland. ', 'It is used to treat conditions such as arthritis, blood problems, immune system disorders, skin and eye conditions, breathing problems, cancer, and severe allergies. It decreases your immune systems response to various diseases to reduce symptoms such as pain, swelling and allergic-type reactions.', 'Nausea, heartburn, headache, dizziness, menstrual period changes, trouble sleeping, increased sweating, or acne may occur.'),
(52, 'Amlodipine Besilate', ' Amlodipine belongs to a class of drugs known as calcium channel blockers. It works by relaxing blood vessels so blood can flow more easily.', 'Amlodipine is used with or without other medications to treat high blood pressure. Lowering high blood pressure helps prevent strokes, heart attacks, and kidney problems.\r\nAmlodipine is also used to prevent certain types of chest pain (angina). It may help to increase your ability to exercise and decrease the frequency of angina attacks.\r\n', 'Dizziness, lightheadedness, swelling ankles/feet, or flushing may occur. '),
(53, 'Metformin Hydrochloride', '\r\n\r\n\r\nMetformin is an oral diabetes medicine that helps control blood sugar levels.\r\n\r\n', 'Metformin is used together with diet and exercise to improve blood sugar control in adults with type 2 diabetes mellitus.\r\n\r\nMetformin is sometimes used together with insulin or other medications, but it is not for treating type 1 diabetes.', 'Common side effects  includes abdominal  discomfort,cough or hoarseness, decreased appetite, diarrhea, fast or shallow breathing, fever or chills, general feeling of discomfort, lower back or side pain, muscle pain or cramping, painful or difficult urination, sleepiness.'),
(54, 'Thyroxine Sodium', ' medicine used to treat an underactive thyroid gland (hypothyroidism). It replaces the hormone which was not being produced by your thyroid gland in sufficient quantity and helps regulate your bodyâ€™s energy and metabolism.\r\n', 'Hypothyroidism', 'Palpitations\r\nVomiting\r\nAnxiety\r\nDiarrhea\r\nFlushing (sense of warmth in the face, ears, neck and trunk)\r\nWeight loss\r\nNervousness\r\nRestlessness'),
(55, 'Spironolactone', 'Spironolactone is a potassium-sparing diuretic (water pill) that prevents your body from absorbing too much salt and keeps your potassium levels from getting too low.', 'Spironolactone is used to treat heart failure, high blood pressure (hypertension), or hypokalemia (low potassium levels in the blood).\r\nIt is also used to treat swelling (edema) caused by certain conditions (such as heart failure, liver disease) by removing excess fluid and improving symptoms such as breathing problems.', 'Drowsiness, dizziness, lightheadedness, stomach upset, diarrhea, nausea, vomiting, or headache may occur. '),
(56, 'Atorvastatin', ' Atorvastatin belongs to a group of drugs known as \"statins.\" It works by reducing the amount of cholesterol made by the liver.\r\n', 'Atorvastatin is used to prevent cardiovascular disease in those at high risk and treat abnormal lipid levels.', 'Commonly reported side effects of atorvastatin includes hemorrhagic stroke, arthralgia, diarrhea, and nasopharyngitis. Other side effects include: urinary tract infection, insomnia, limb pain, muscle spasm, musculoskeletal pain, myalgia, and nausea.'),
(57, 'Telmisartan', 'Telmisartan belongs to a class of drugs called angiotensin receptor blockers (ARBs). It works by relaxing blood vessels so blood can flow more easily.', 'Telmisartan is a medication used to treat high blood pressure, heart failure, and diabetic kidney disease.', 'Dizziness or lightheadedness may occur as your body adjusts to the medication.  Serious side effects includes fainting, symptoms of a high potassium blood level (such as muscle weakness, slow/irregular heartbeat).'),
(58, 'Rosuvastatin ', ' It belongs to a group of drugs known as \"statins.\" It works by reducing the amount of cholesterol made by the liver.', 'It is used to prevent cardiovascular disease in those at high risk and treat abnormal lipids. It is recommended to be used together with dietary changes, exercise, and weight loss. ', 'Mild memory problems or confusion, muscle problems, headache, pain, weakness, nausea and dizziness.'),
(59, 'Losartan Potassium', 'Losartan belongs to a class of drugs called angiotensin receptor blockers (ARBs). It works by relaxing blood vessels so that blood can flow more easily.', 'Losartan is used to treat high blood pressure (hypertension) and to help protect the kidneys from damage due to diabetes. It is also used to lower the risk of strokes in patients with high blood pressure and an enlarged heart. Lowering high blood pressure helps prevent strokes, heart attacks, and kidney problems', ' Backache, headache, muscle weakness and stuffy nose. Serious side effects include fainting, symptoms of a high potassium blood level (such as muscle weakness, slow/irregular heartbeat).'),
(60, 'Extracts of Herbals', 'It is clinically proven digestive tonic for newborn and infants. This medicine  is combination of  Dill oil-0.0018 ml plus 0.5mg of each of the following significant extracts: Guduchi (Tinospora Cordifolia), Pippali (Piper longum), Kasani (Cichorium intybus), Haritaki (Terminalia chebula), Brinjaasipha (Achillea millefolium), Himsra (Capparis spinosa), Amlaki (Embelica officinales), KKasamarda (Casia occidentalis), Ela (Elettria Cardamomum), Jhavuka (Tamarix Gallica), Gokshura (Tribulus Terrestris), Punarnava (Boerhaavia Diffusa).', 'It improves appetite, promotes weight gain and healthy growth, and keeps babies free from digestive upsets, gas, colic, gripes, diarrhea or constipation.', 'No recorded side effects.'),
(61, 'Enalapril Maleate', 'Enalapril belongs to a class of drugs known as ACE inhibitors. It works by relaxing blood vessels so blood can flow more easily. ', 'Enalapril is used to treat high blood pressure, diabetic kidney disease, and heart failure.  It is also used to treat congestive heart failure (CHF).', 'Dizziness, lightheadedness, or weakness may occur as your body adjusts to the medication. Dry cough may also occur. Serious side effects includes fainting, symptoms of a high potassium blood level (such as muscle weakness, slow/irregular heartbeat).'),
(62, 'Voglibose', 'Voglibose is an alpha-glucosidase inhibitor used for lowering post-prandial blood glucose levels in people with diabetes mellitus. Voglibose delays the absorption of glucose thereby reducing the risk of macrovascular complications. ', 'Type 2 Diabetes Mellitus', 'Flatulence, abdominal distension, diarrhea, pain, skin reactions, low blood sugar, increased LFT.\r\n\r\n'),
(63, 'Metoprolol Succinate / Tartrate', 'The main difference between metoprolol tartrate and metoprolol succinate is that metoprolol tartrate is only available as an immediate-release tablet which means it must be taken several times per day, whereas metoprolol succinate is an extended-release tablet that can be taken once a day.\r\nMetoprolol is a medication of the selective Î²â‚ receptor blocker type. This drug works by blocking the action of certain natural chemicals in your body (such as epinephrine) that affect the heart and blood vessels. This lowers heart rate, blood pressure, and strain on the heart.', 'It is used to treat high blood pressure, chest pain due to poor blood flow to the heart, and a number of conditions involving an abnormally fast heart rate. Lowering high blood pressure helps prevent strokes, heart attacks, and kidney problems.', 'Drowsiness, dizziness, tiredness, diarrhea, and slow heartbeat may occur. Decreased sexual ability has been reported rarely. This drug may reduce blood flow to your hands and feet, causing them to feel cold.'),
(64, 'Glimepiride', 'Glimepiride belongs to the class of drugs known as sulfonylureas. It lowers blood sugar by causing the release of your bodys natural insulin.', ' It is a medication used to treat diabetes mellitus type 2. ', 'Nausea and upset stomach may occur. Serious side effects, includes yellowish eyes/skin, stomach/abdominal pain, dark urine, unusual tiredness/weakness, easy bleeding/bruising, signs of infection (such as fever, persistent sore throat), mental/mood changes, unusual/sudden weight gain, seizures.'),
(65, 'Iron Polymaltose Complex and Folic Acid', ' Iron is an important mineral that the body needs to produce red blood cells and keep you in good health.', ' It is an iron supplement used to treat or prevent low blood levels of iron (such as those caused by anemia or pregnancy).', 'Constipation, diarrhea, stomach cramps, or upset stomach may occur. These effects are usually temporary and may disappear as your body adjusts to this medication.\r\nIron may cause your stools to turn black, an effect that is not harmful.\r\nSerious allergic reactions includes rash, itching/swelling (especially of the face/tongue/throat), severe dizziness, trouble breathing.\r\n\r\n'),
(66, 'Tranexamic Acid', 'Tranexamic acid works by helping the blood clot normally to prevent and stop prolonged bleeding. It belongs to a class of drugs known as anti-fibrinolytics.\r\n\r\n', 'It is used in people with a certain type of bleeding disorder (hemophilia) to prevent and reduce bleeding from having a tooth pulled (extraction). It is also used in people with other high-risk bleeding conditions to control bleeding at such times as after surgery or an injury, during heavy nosebleeds, or during heavy menstrual bleeding.\r\n\r\n', 'Nausea, vomiting, diarrhea, or dizziness may occur. In rare cases, tranexamic acid can cause serious side effects like anaphylaxis or eye problems. '),
(67, 'Vitamin E', 'Vitamin E is a vitamin that dissolves in fat.  It contains Tocopheryl acetate. Vitamin E is a powerful antioxidant that helps repair damaged cells.Vitamin E supplements may prevent coronary heart disease, support immune function, prevent inflammation, promote eye health, and lower the risk of cancer.\r\n', 'Vitamin E is used for treating vitamin E deficiency, which is rare, but can occur in people with certain genetic disorders (ataxia) and in very low-weight premature infants. It is used mainly to prevent or treat conditions like Neuropathies, skin and hair damage repair and improvement in cholesterol & hormonal balance. It is also effective for Alzheimer disease, anemia of chronic disease, beta thalessemia, extravasation, dysmenorrhea,G6PD deficiency, glomerulosclerosis, intracranial hemorrhage, male infertility, uveitis, sunburn, rheumatoid arthritis and many more', 'Vitamin E does not usually cause side effects when used in recommended doses.\r\nHowever, vitamin E may cause side effects if taken at high doses (400 units or more per day) or for a long period of time. In these situations, nausea, diarrhea, stomach cramps, tiredness, dizziness, blurred vision, and headache may rarely occur.'),
(68, 'Calcium and Vitamin D3 ', 'It is a calcium supplement tablet. This medicine works by neutralizing acids that provides relief from acid reflux and increases calcium absorption and phosphorus that is required for making bones stronger.', 'Used for treatment of calcium and vitamin D3 deficiency that helps to keep bones and teeth stronger and healthier, treatment of acidity problems,  osteoarthritis, rickets and helps for bone formation in children.', 'Common side effects include nausea, vomiting, constipation, increased thirst or urination, muscle weakness, bone pain, confusion, lack of energy  or feeling tired.'),
(69, 'Vitamin C', 'Vitamin C (also known as ascorbic acid) plays an important role in the body. It is needed to maintain the health of skin, cartilage, teeth, bone, and blood vessels. It is also used to protect your bodys cells from damage. It is known as an antioxidant.', 'Vitamin C is used for preventing and treating scurvy. It is also most commonly used for preventing and treating the common cold.', 'Diarrhea, nausea, vomiting, abdominal cramps/pain, or heartburn may occur. Amounts higher than 2000 mg daily are possibly unsafe and may cause a lot of side effects. These may include kidney stones and severe diarrhea. In people who have had a kidney stone, amounts greater than 1000 mg daily greatly increase the risk of kidney stone recurrence.'),
(70, 'Methylcobalamine', 'Methylcobalamin is a cobalamin, a form of vitamin Bâ‚â‚‚. It is important for the brain and nerves, and for the production of red blood cells.', 'Methylcobalamin is used to treat vitamin B12 deficiency. It is sometimes used in people with pernicious anemia, diabetes, and other neuropathies. ', 'Common effects from methylcobalamin may include anorexia, diarrhea, headache, nausea, vomiting, headache, itching, swelling, nervousness and involuntary movements.'),
(71, 'Itraconazole', 'Itraconazole is an antifungal medication. It belongs to a class of drugs known as azole antifungals. It works by stopping the growth of fungi. ', ' It is used in adults to treat infections caused by fungus. This includes infections in any part of the body including the lungs, mouth or throat, toenails, or fingernails.', 'Common side effects include nausea,vomiting, diarrhea, abdominal pain, rash, and headache. Serious side effects includes numbness/tingling of arms/legs, hearing loss, mental/mood changes (such as depression) and rarely liver disease.'),
(72, 'Dicyclomine Hydrochloride', 'This medication works by slowing the natural movements of the gut and by relaxing the muscles in the stomach and intestines. Dicyclomine belongs to a class of drugs known as anticholinergics/antispasmodics.', 'Dicyclomine is used to treat a certain type of intestinal problem called irritable bowel syndrome. It helps to reduce the symptoms of stomach and intestinal cramping. ', 'This medication works by slowing the natural movements of the gut and by relaxing the muscles in the stomach and intestines. Dicyclomine belongs to a class of drugs known as anticholinergics/antispasmodics.'),
(73, 'Dicyclomine hydrochloride+Simethicone', 'Dicyclomine is used to treat a certain type of intestinal problem called irritable bowel syndrome. It helps to reduce the symptoms of stomach and intestinal cramping. Dicyclomine belongs to a class of drugs known as anticholinergics/antispasmodics.\r\nSimethicone: This medicine is used to relieve symptoms of extra gas such as belching, bloating, and feelings of pressure/discomfort in the stomach/gut.', 'Dicylomine Hydrochloride :  This medication works by slowing the natural movements of the gut and by relaxing the muscles in the stomach and intestines.\r\nSimethicone :  Simethicone helps break up gas bubbles in the gut.', 'Dicylomine Hydrochloride :: Dizziness, drowsiness, lightheadedness, weakness, blurred vision, dry eyes, dry mouth, nausea, constipation, and abdominal bloating may occur. \r\n Simethicone: There are no reports of any side effects due to this medication.'),
(74, 'Fluconazole', ' It belongs to a class of drugs called azole antifungals. It works by stopping the growth of certain types of fungus.', 'Fluconazole is used to prevent and treat a variety of fungal and yeast infections including yeast infections of the vagina, mouth, throat, esophagus , abdomen , lungs, blood, and other organs. Fluconazole is also used to treat meningitis  caused by fungus.', 'Nausea, vomiting, diarrhea, stomach upset/pain, headache, dizziness, or hair loss may occur.'),
(75, 'Zinc Sulfate', 'Zinc is a mineral. Zinc is needed for the proper growth and maintenance of the human body. It is needed for immune function, wound healing, blood clotting, thyroid function and much more. ', 'Zinc is used for the treatment and prevention of zinc deficiency and its consequences, including stunted growth and acute diarrhea in children, slow wound healing, and Wilsons disease. Zinc is also used for many other conditions including common cold, eye vision, diabetes, depression, male infertility and many more.', 'It may cause nausea, vomiting, diarrhea, metallic taste, kidney and stomach damage, and other side effects. Zinc is possibly safe when taken by mouth in doses greater than 40 mg daily. High doses above the recommended amounts might cause fever, coughing, stomach pain, fatigue, and many other problems. '),
(76, 'Esomeprazole Magnesium', 'Esomeprazole belongs to a class of drugs known as proton pump inhibitors (PPIs).  It works by decreasing the amount of acid your stomach makes.', 'Esomeprazole is used to treat certain stomach and esophagus problems (such as acid reflux, ulcers).  It relieves symptoms such as heartburn, difficulty swallowing, and persistent cough. This medication helps heal acid damage to the stomach and esophagus, helps prevent ulcers, and may help prevent cancer of the esophagus. ', 'Headache or abdominal pain may occur.  Serious side effects  includes symptoms of a low magnesium blood level (such as unusually fast/slow/irregular heartbeat, persistent muscle spasms, seizures), signs of lupus (such as rash on nose and cheeks, new or worsening joint pain).'),
(77, 'Rabeprazole', ' Rabeprazole belongs to a class of drugs known as proton pump inhibitors (PPIs).It works by decreasing the amount of acid your stomach makes. ', 'Rabeprazole is used to treat certain stomach and esophagus problems (such as acid reflux, ulcers).  It relieves symptoms such as heartburn, difficulty swallowing, and persistent cough. This medication helps heal acid damage to the stomach and esophagus, helps prevent ulcers, and may help prevent cancer of the esophagus. ', 'Headache may occur. Serious side effects includes symptoms of a low magnesium blood level (such as unusually fast/slow/irregular heartbeat, persistent muscle spasms, seizures), signs of lupus (such as rash on nose and cheeks, new or worsening joint pain).'),
(78, 'Acetazolamide', 'Acetazolamide belongs to a class of drugs known as carbonic anhydrase inhibitors. It works by decreasing the production of fluid inside the eye. ', 'Acetazolamide is used to prevent and reduce the symptoms of altitude sickness. This medication can decrease headache, tiredness, nausea, dizziness, and shortness of breath that can occur when you climb quickly to high altitudes.  It is also used with other medications to treat high pressure inside the eye due to certain types of glaucoma and also treats certain types of seizures. It is also used to decrease a buildup of body fluids (edema) caused by heart failure or certain medications.', 'Dizziness, lightheadedness, or increased urination may occur, especially during the first few days as your body adjusts to the medication. Blurred vision, dry mouth, drowsiness, loss of appetite, nausea, vomiting, diarrhea, or changes in taste may also occur. '),
(79, 'Norethisterone', 'Femitrone contains Norethisterone as the active ingredient which is a progestin (female hormones). It works as part of hormone replacement therapy by replacing the amount of oestrogen in the uterus. It works to bring on menstruation by replacing the natural progesterone that some women are missing.\r\norethisterone works by converting the endometrium from the proliferative to the secretory phase.\r\n It delays onset of periods and controls abnormal uterine bleeding and also has contraceptive effects due to negative feedback inhibition of pituitary gonadotropin thus preventing ovulation.', 'Femitrone is used in heavy menstrual bleeding, pain during menstruation, endometriosis and breast cancer.\r\nIt is also mainly used for postponement of menstruation.\r\n', 'Common Side Effects are Headache, Dizziness, Breast tenderness, Nausea, Irregular menstrual cycle, Ovarian cysts.\r\n\r\n'),
(80, ' Ethinylestradiol + Levonorgestrel', 'It is a combined oral contraceptive pill. It works by preventing the release of egg (ovulation) and affecting sperm movement in the womb to prevent its union with the egg. It also changes the lining of the womb and renders it unsuitable for pregnancy.Combined pills contain two synthetic hormones â€“ estrogen and progesterone (Ethinylestradiol-30mcg + Levonorgestrel-150 mcg)  and are available in low-dose formulas. ', ' It is used for contraception.', 'Nausea, Stomach pain, Headache, Weight gain, Breast pain, Irregular uterine bleeding\r\n\r\n'),
(81, 'Levonorgestrel+Ethinylestradiol+Ferrous Fumarate', 'It contains 21 hormonal tablets and 7 Iron tablets with composition of each beige colored tablet containing Levonorgestrel B.P 0.15mg, Ethinylestradiol B.P. 0.03mg; and ach brown colored tablet contains Ferrous Fumarate 75mg.\r\nThis combination hormone medication is used to prevent pregnancy. It contains 2 hormones: levonorgestrel (a progestin) and ethinyl estradiol (an estrogen). It works mainly by preventing the release of an egg (ovulation) during your menstrual cycle. It also makes vaginal fluid thicker to help prevent sperm from reaching an egg (fertilization) and changes the lining of the uterus (womb) to prevent attachment of a fertilized egg.\r\nFerrous Fumarate is a type of iron.\r\n\r\n\r\n', 'Used as contraception in preventing pregnancy, make periods more regular, decrease blood loss and painful periods, decrease the risk of ovarian cysts, and also treat acne.\r\nFerrous fumarate is used to treat iron deficiency anemia ', 'Nausea, vomiting, headache, abdominal cramps/bloating, breast tenderness, swelling of the ankles/feet (retaining fluid), or weight change may occur. Irregular periods, spotting  and increased blood pressure may also occur.\r\nBlack tarry or bloody stools, stmach upset, fever may occur with ferrous fumarate. '),
(82, 'Ferrous Ascorbate and Folic Acid', 'Ferrous ascorbate is a synthetic form of iron and vitamin C which works an antianemic agent.. Folic acid is a vitamin of the B Complex group\r\nwhich helps your body produce and maintain new cells, and also helps prevent changes to DNA that may lead to cancer.', 'Ferrous Ascorbate and Folic Acid is used to treat Iron Deficiency Anemia, to improve iron utilization and is also given to pregnant women to prevent spina bifida in an unborn fetus.', 'GI upset, black stools, abdominal discomfort or pain, bronchospasm may occur.\r\n\r\n'),
(83, 'Ferrous Ascorbate + Folic Acid + Zinc Sulphate', 'Ferrous ascorbate is a synthetic form of iron and vitamin C which works an antianemic agent.. \r\nFolic acid is a vitamin of the B Complex group which helps your body produce and maintain new cells, and also helps prevent changes to DNA that may lead to cancer and also helps prevents birth defects.\r\nZinc is essential for normal iron metabolism and prevention of anemia, prevent pre-term delivery, provide immunity in both mother and child,  and for healthy growth pf baby.', ' It is used to treat iron deficiency anemia, during pregnancy as an iron supplement where the daily iron requirement may double,  menorrhagia,  used in inadequate iron intake and promote adequate growth of infants and adolescents', 'Side effects of iron, folic acid and zinc supplementation are mild and transient. These include epigastric pain, nausea, constipation, vomiting, diarrhoea, heart burn, etc.\r\n\r\n'),
(84, 'Linagliptin', 'Linagliptin is an oral anti-diabetic drug belonging to a class of medications called dipeptidyl peptidase-4 (DPP-4) inhibitors. It works by increasing the amounts of certain natural substances that lower blood sugar when it is high. Incretins help to control blood sugar by increasing insulin release, especially after a meal. They also decrease the amount of sugar your liver makes.\r\n\r\n', 'It is used by people with type 2 diabetes to control high blood sugar.  ', 'Common side effects includes dizziness, fast heartbeat, headcahe, nausea, seizures,etc. Serious side effects  includes joint pain, unusual skin blisters, signs of heart failure (such as shortness of breath, swelling ankles/feet, unusual tiredness, unusual/sudden weight gain).'),
(85, 'Finasteride', 'Finasteride is in a class of medications called 5-alpha reductase inhibitors. This medication works by decreasing the amount of a natural body hormone (DHT) that causes growth of the prostate.', 'It is mainlyused to treat an enlarged prostate or hair loss in men. It can also be used to treat excessive hair growth in women and as a part of hormone therapy for transgender women.', 'Its side effects includes impotence, loss of interest in sex, trouble having an orgasm, abnormal ejaculation, swelling in your hands or feet, swelling or tenderness in your breasts, dizziness, weakness,feeling like you might pass out,headache, runny nose, or skin rash.'),
(86, 'Tamsulosin Hydrochloride', 'Tamsulosin belongs to a class of drugs known as alpha blockers.\r\nIt does not shrink the prostate, but it works by relaxing the muscles in the prostate and the bladder.', 'Tamsulosin is used by men to treat the symptoms of an enlarged prostate (benign prostatic hyperplasia-BPH) such as difficulty in beginning the flow of urine, weak stream, and the need to urinate often or urgently (including during the middle of the night).. ', 'Dizziness, lightheadedness, drowsiness, runny/stuffy nose, or ejaculation problems may occur.\r\n'),
(87, 'Atenolol', 'Atenolol  is a beta-blocker that affects the heart and circulation .It works by blocking the action of certain natural chemicals in your body, such as epinephrine, on the heart and blood vessels. This effect lowers the heart rate, blood pressure, and strain on the heart.', 'Atenolol is primarily used to treat high blood pressure and heart-associated chest pain. \r\nLowering high blood pressure helps prevent strokes, heart attacks, and kidney problems.', 'Common side effects includes cardiac failure, bradycardia, dizziness, fatigue, nausea and cold extremity may occur. '),
(88, 'Olmesartan Medoxomil', 'Olmesartan belongs to a class of drugs called angiotensin receptor blockers (ARBs). It works by relaxing blood vessels so that blood can flow more easily.', 'Olmesartan is used to treat high blood pressure (hypertension). Lowering high blood pressure helps prevent strokes, heart attacks, and kidney problems. ', 'Common side effects includes back pain, bronchitis, diarrhea, headache, blood in your urine, high blood sugar, high triglycerides, flu-like symptoms, such as fever and body aches, sore throat, runny nose, and sinus infection.\r\n'),
(89, 'Clopidogrel Bisulphate ', 'Clopidogrel is an antiplatelet drug. Clopidogrel works by blocking platelets from sticking together and prevents them from forming harmful clots. It helps keep blood flowing smoothly in your body.', 'Clopidogrel is used to prevent heart attacks and strokes in persons with heart disease (recent heart attack), recent stroke, or blood circulation disease (peripheral vascular disease).\r\nIt is also used with aspirin to treat new/worsening chest pain (new heart attack, unstable angina) and to keep blood vessels open and prevent blood clots after certain procedures (such as cardiac stent).', 'Easy bleeding/bruising, itchy skin, stomach upset/pain, diarrhea, and constipation may occur.'),
(90, 'Ramipril', 'Ramipril is an ACE inhibitor and works by relaxing blood vessels so that blood can flow more easily', 'Ramipril is used to treat high blood pressure (hypertension). Lowering high blood pressure helps prevent strokes, heart attacks, and kidney problems. Ramipril is also used to improve survival after a heart attack. ', 'Dizziness, lightheadedness, or tiredness may occur as your body adjusts to the medication. Dry cough may also occur.'),
(91, 'Propranolol Hydrochloride', 'Propranolol is a beta-blocker. This drug works by blocking the action of certain natural chemicals in your body (such as epinephrine) that affect the heart and blood vessels. This effect reduces heart rate, blood pressure, and strain on the heart.\r\n\r\n', 'Propranolol is used to treat tremors, angina (chest pain), hypertension (high blood pressure), heart rhythm disorders, and other heart or circulatory conditions. It is also used to treat or prevent heart attack, and to reduce the severity and frequency of migraine headaches.', 'Dizziness, lightheadedness, or tiredness may occur as your body adjusts to the medication. Nausea/vomiting, stomach pain, vision changes, trouble sleeping, and unusual dreams may also occur. '),
(92, 'Prazosin Hydrochloride', 'Prazosin belongs to a class of medications called alpha blockers. It works by relaxing and widening blood vessels so blood can flow more easily.', 'Prazosin is used with or without other medications to treat high blood pressure. Lowering high blood pressure helps prevent strokes, heart attacks, and kidney problems.\r\n\r\n', 'Headache, drowsiness, tiredness, weakness, blurred vision, nausea, vomiting, diarrhea, or constipation may occur as the body adjusts to the medication. '),
(93, 'Digoxin', 'Digoxin belongs to a class of medications called cardiac glycosides. It works by affecting certain minerals (sodium and potassium) inside heart cells. This reduces strain on the heart and helps it maintain a normal, steady, and strong heartbeat.\r\n\r\n', 'Digoxin is a medication used to treat heart failure and  various heart conditions such as atrial fibrillation, atrial flutter, and heart failure.', 'Nausea, vomiting, headache, dizziness, loss of appetite, and diarrhea may occur.\r\nSerious side effects includes weakness, mental/mood changes, vision changes (, enlarged/tender breasts in men.'),
(94, 'Aspirin', 'Aspirin, also known as acetylsalicylic acid is a salicylate and a nonsteroidal anti-inflammatory drug (NSAID). It works by blocking a certain natural substance in your body to reduce pain and swelling.', 'Aspirin is used to treat pain, and reduce fever or inflammation. It is sometimes used to treat or prevent heart attacks, strokes, and chest pain (angina).', 'Common side effects includes dyspepsia, epigastric discomfort, heartburn, and nausea. Serious side effects, includes easy bruising/bleeding, difficulty hearing, ringing in the ears, signs of kidney problems (such as change in the amount of urine), persistent or severe nausea/vomiting, unexplained tiredness, dizziness, dark urine, yellowing eyes/skin.');
INSERT INTO `med_generic` (`gen_id`, `gen_title`, `gen_descr`, `gen_uses`, `gen_se`) VALUES
(95, 'Ivermectin', ' Ivermectin belongs to a class of drugs known as antihelmintics. It works by paralyzing and killing parasites.', 'Ivermectin is a medication used to treat many types of parasite infestations. This includes head lice, scabies, river blindness, strongyloidiasis, trichuriasis, ascariasis, and lymphatic filariasis.', 'Headache, dizziness, muscle pain, nausea, or diarrhea may occur. Serious side effects includes neck/back pain, swelling face/arms/hands/feet, chest pain, fast heartbeat, confusion, seizures, loss of consciousness.'),
(96, 'Itopride Hydrochloride', ' Is a prokinetic benzamide derivative unlike domperidone. These drugs inhibit dopamine and acetylcholine esterase enzyme and have a gastrokinetic effect.Itopride effectively increases movement of food and facilitates emptying of the stomach. ', 'It is used for the treatment of Gastroesophageal Reflux Disease, Functional Dyspepsia, and other associated motility disorders.', 'Its side effects includes  diarrhea, abdominal pain, headache, nausea, decrease in white blood cells and platelets count, gynacomastia, allergic skin reaction, increased liver enzyme levels, jaundice.\r\n'),
(97, 'Indomethacin', 'This medication is known as a nonsteroidal anti-inflammatory drug (NSAID). It works by blocking the production of certain natural substances in the body such as prostaglandin that cause inflammation. This effect helps to decrease swelling and pain.', 'Indomethacin is used to relieve pain, swelling, and joint stiffness caused by arthritis, gout, bursitis, and tendonitis. It is also used to relieve pain from various other conditions. ', 'Upset stomach, heartburn, headache, high blood pressure drowsiness, or dizziness may occur.'),
(98, 'Naproxen', 'This medication is known as a nonsteroidal anti-inflammatory drug (NSAID). It works by blocking your bodys production of certain natural substances that cause inflammation.', 'Naproxen is used to relieve pain from various conditions such as headache, muscle aches, tendonitis, dental pain, and menstrual cramps. It also reduces pain, swelling, and joint stiffness caused by arthritis, bursitis, and gout attacks.', 'Upset stomach, nausea, heartburn, headache, high blood pressure, drowsiness, or dizziness may occur.  Serious side effects includes easy bruising/bleeding, difficult/painful swallowing, hearing changes, mental/mood changes, signs of kidney problems, unexplained stiff neck, vision changes, symptoms of heart failure.'),
(99, 'Montelukast', 'Montelukast belongs to a class of drugs called leukotriene receptor antagonists. \r\nLeukotriene receptor antagonists help decrease inflammation and nasal congestion. This can help prevent reactions to triggers by keeping the airways to your lungs open. This helps improve symptoms of asthma as well as seasonal and year-round allergies. It also helps prevent breathing problems during or after exercise.\r\n\r\n', 'Montelukast  is used to prevent and treat symptoms of asthma and seasonal or year-round allergies. It can also be used to prevent exercise-induced bronchoconstriction (EIB).', 'Common side effects includes upper respiratory infection, fever, headache, sore throat, cough, stomach pain, diarrhea, earache or ear infection, flu, runny nose, sinus infection, bed-wetting in children.\r\n'),
(100, 'Promethazine Theoclate', 'Promethazine is in a group of drugs called phenothiazines . It works by changing the actions of chemicals in your brain. Promethazine also acts as an antihistamine. It blocks the effects of the naturally occurring chemical histamine in your body.\r\n\r\nPromethazine is a first-generation antihistamine.', 'It is used to treat or prevent nausea and vomiting caused by anesthesia or surgery, certain types of allergic reactions, pain caused by surgery or childbirth, and to sedate patients before surgery or medical procedures.  It may help with some symptoms associated with the common cold.', 'Drowsiness, dizziness, constipation, blurred vision, or dry mouth may occur.'),
(101, 'Fexofenadine Hydrochloride', 'It is an anti-histamine that works by blocking a certain natural substance (histamine) that your body makes during an allergic reaction', 'It is used to relieve allergy symptoms such as watery eyes, runny nose, itching eyes/nose, sneezing, hives, and itching.', 'Cough, fever, or stomach upset may occur. '),
(102, 'Flavoxate Hydrochloride', ' Flavoxate is an anticholinergic with antimuscarinic effects. It is a smooth-muscle relaxant which works by relaxing the muscles in the bladder. ', 'This medication is used to treat certain bladder/urinary tract symptoms. It is indicated for symptomatic relief of dysuria, urgency, nocturia, suprapubic pain, frequency and incontinence as may occur in cystitis, prostatitis, urethritis, urethrocystitis/urethrotrigonitis.  ', 'Nausea, vomiting, dry mouth, headache, drowsiness, dizziness, blurred vision, and nervousness may occur. '),
(103, 'Amlodipine Besilate + Losartan Potassium', 'It is a combination of  amlodipine and losartan used when  high blood presssure is not effectively controlled by monotherapy.  Losartan belongs to a group of medicines called â€œangiotensin-II receptor antagonistsâ€ which lower blood pressure by relaxing the blood vessels.Amlodipine belongs to a group of substances called â€œcalcium channel blockersâ€. Amlodipine stops calcium from moving into the blood vessel wall which stops the blood vessels from tightening thereby also reducing blood pressure. The actions of both these substances contribute to stopping the tightening of blood vessels, so that blood vessels relax and blood pressure decreases.', 'Mylod L tablets are used for the treatment of high blood pressure (hypertension) in patients who are already taking losartan and amlodipine at these doses, instead of taking two medicines separately.', 'Somnolence, dizziness, headache, ankle swelling, oedema, flushing, palpitations, abdominal pain, nausea, low blood pressure, debility, fatigue may occur.'),
(104, 'Amlodipine Besylate + Atenolol', 'It is a combination of Amlodipine and Atenolol to control high blood pressure  not effectively controlled by monotherapy. Amlodipine is a calcium channel blocker which works by relaxing blood vessels while atenolol is a beta blocker that works specifically on the heart to slow down the heart rate. Together, they make the heart more efficient at pumping blood throughout the body.', 'Mylod AT-H Tablet is used in the treatment of high blood pressure.\r\n\r\n', 'Common side effects includes sleepiness, headache, ankle swelling, flushing (sense of warmth in the face, ears, neck and trunk), slow heart rate, palpitations, nausea, edema (swelling), constipation, tiredness, cold extremities may occur.\r\n\r\n'),
(105, 'Losartan Potassium + Hydrochlorothiazide', 'It is a combination  of Losartan Potassium and Hydrochlorothiazide.  Losartan is an angiotension receptor blocker that keeps blood vessels from narrowing, which lowers blood pressure and improves blood flow and hydrochlorothiazide is a diuretic that helps prevent your body from absorbing too much salt, which can cause fluid retention.\r\n', 'It is used to lower high blood pressure (hypertension) and lower the chance of stroke in patients with high blood pressure and a heart problem called left ventricular hypertrophy (LVH)', 'Common side effects includes nausea, taste change, upset stomach, increased urination, diarrhea, headache, dizziness, weakness, decreased blood pressure, increased blood uric acid, increased blood lipid level, glucose intolerance, electrolyte imbalance.'),
(106, 'Telmisartan and Hydrochlorothiazide', 'It is a combination of telmisartan and hydrochlorothiazide  used as a second line therapy to control blood pressure. Telmisartan is an angiotensin receptor blocker (ARB). It works by blocking the hormone angiotensin thereby relaxing blood vessels. This allows the blood to flow more smoothly and the heart to pump more efficiently. Hydrochlorothiazide is a diuretic that removes extra water and certain electrolytes from the body. Over time it also relaxes blood vessels and improves blood flow.', 'It us used to treat hypertension. It is also effective in reducing the risk of serious conditions such a stroke, heart attacks, heart conditions and even death.', 'Common side effects includes nausea, fatigue, dizziness, diarrhea, abdominal pain, headache, frequent urination, sinus inflammation, flu-like symptoms, upper respiratory tract infection.'),
(107, 'Telmisartan + Amlodipine Besylate', 'It is a combination of Telmisartan and Amlodipine besilate . Telmisartan belongs to a class of drugs called angiotensin receptor blockers  and amlodipine is a calcium channel blocker  that works by widening and dilating the blood vessels, which relaxes them. It also helps the kidney flush out excess salt and water, thus reducing the blood pressure. ', 'It is used to treat high blood pressure. It is also effective in reducing the risk of serious conditions such a stroke, heart attacks, heart conditions and even death.', 'Common side effects includes sleepiness, ankle swelling, headache, flushing (sense of warmth in the face, ears, neck and trunk), dizziness, tiredness, palpitations, upset stomach, increased potassium level in blood.'),
(108, 'Metformin Hydrochloride + Glimepiride', ' It belongs to a category of medicines known as anti-diabetic drugs. It is a combination of  Metformin Hydrochloride and Glimepiride. Metformin is an oral diabetes medicine that lowers sugar and helps insulin work better. Glimepiride belongs to the class of drugs known as sulfonylureas which raises insulin levels and helps tissues respond better to the insulin. ', 'Used in Type 11 Diabetes to control blood sugar level. Controlling high blood sugar helps prevent kidney damage, blindness, nerve problems, loss of limbs, and sexual function problems. Proper control of diabetes may also lessen your risk of a heart attack or stroke. ', 'Common side effects includes hypoglycemia, taste change, nausea, diarrhea\r\nstomach pain, headache, upper respiratory tract infection.'),
(109, 'Sitagliptin Phosphate Monohydrate + Metformin Hydrochloride', 'It is a combination of Sitagliptin Phosphate Monohydrate and  Metformin Hydrochloride.Sitagliptin is in a class of medications called dipeptidyl peptidase-4 (DPP-4) inhibitors. that works by increasing levels of natural substances called incretins. Incretins help to control blood sugar by increasing insulin release, especially after a meal. They also decrease the amount of sugar your liver makes.\r\nMetformin belongs to a class of drugs called biguanides. Metformin works by reducing the amount of glucose (sugar) made by your liver, decreasing the amount of glucose your body absorbs and increasing the effect of insulin on your body', 'It is an effective first choice medicine used to control high blood glucose levels in patients with type II diabetes.', 'Common side effects includes upset stomach., diarrhea, headache, stomach pain., upper respiratory infection., stuffy or runny nose and sore throat.\r\n'),
(110, 'S-Amlodipine Besilate', 'It is a calcium channel blocker which helps to lower blood pressure and reduce the workload of the heart. This helps prevent heart attacks and strokes.\r\nIn hypertensive patients not controlled on prior BB and ACEI/ARB therapy, addition of (S)-amlodipine besylate at half the dose of conventional amlodipine provides better tolerability with reduced incidence of peripheral edema, and equal antihypertensive efficacy compared to amlodipine given at usual doses.', 'It is a medicine used to treat high blood pressure (hypertension) and to prevent angina (heart-related chest pain).', 'Dizziness, headache, palpitations, flushing, ankle swelling, edema, fatigue may occur.'),
(111, 'Lactulose', 'It is an osmotic laxative that works by pulling water  into the bowel to soften stool and making it easier to pass .Lactulose is a colonic acidifier that works by decreasing the amount of ammonia in the blood. It is a man-made  non-absorbable sugar solution. ', 'Lactulose is used in the treatment of constipation and hepatic encephalopathy. ', 'Gas, bloating, burping, stomach rumbling/pain, nausea, and cramps may occur.\r\nSerious side effects includes diarrhea, vomiting, muscle cramps/weakness, irregular heartbeat, mental/mood changes, seizures.\r\n\r\n'),
(112, 'Gabapentin', 'Gabapentin is known as an anticonvulsant or antiepileptic drug.  It affects chemicals and nerves in the body that are involved in the cause of seizures and some types of pain.', 'It is used to treat partial seizures, neuropathic pain, hot flashes, and restless legs syndrome.', 'Commonly reported side effects of gabapentin include ataxia, dizziness, drowsiness, fatigue, fever, nystagmus disorder, sedated state, and viral infection. Other side effects include: blurred vision, diplopia, peripheral edema, tremor, amblyopia, irritability, and xerostomia. '),
(113, 'Sildenafil', 'Sildenafil belongs to a group of medicines called phosphodiesterase 5 (PDE5) inhibitors. Sildenafil works by increasing blood flow to the penis to help a man get and keep an erection.  It usually starts to work within 30-60 minutes .\r\nApart from this, it also helps relax blood vessels in the chest which increases the blood supply to the lungs and reduces the workload of the heart.\r\n\r\n', 'Sildenafil is used to treat male sexual function problems (impotence or erectile dysfunction-ED). It is also used to treat pulmonary arterial hypertension.', 'Dizziness, headache, flushing, or stomach upset may occur. Vision changes such as increased sensitivity to light, blurred vision, or trouble telling blue and green colors apart may also occur. \r\n\r\n'),
(114, 'Bisacodyl', ' Bisacodyl is known as a stimulant laxative. It works by increasing the movement of the intestines, helping the stool to come out.', 'Bisacodyl is used to treat constipation. It may also be used to clean out the intestines before a bowel examination/surgery. ', 'Stomach/abdominal pain or cramping, nausea, diarrhea, or weakness may occur. Serious side effects includes persistent nausea/vomiting/diarrhea, muscle cramps/weakness, irregular heartbeat, dizziness, fainting, decreased urination, mental/mood changes .'),
(115, 'Pregabalin', 'Pregabalin belongs to a class of drugs called anticonvulsants which work by calming the damaged or overactive nerves in your body that may cause pain or seizures.\r\n', ' Pregabalin is a medication used to treat epilepsy, neuropathic pain, fibromyalgia, restless leg syndrome, and generalized anxiety disorder.', ' It may cause dizziness, sleepiness, trouble concentrating, blurry vision, dry mouth, weight gain, swelling of your hands or feet.'),
(116, 'Domperidone', 'Domperidone is an antiemetic, gastric prokinetic agent, and galactagogue.This medication increases movement through the digestive system.\r\n Domperidone works by blocking the messages that pass between your digestive system and your brain.It causes the muscles at the entrance of your stomach to tighten and the muscles at the exit of your stomach to relax. This makes you less likely to be sick (vomit).\r\nDomperidone also blocks messages between parts of your brain called the chemoreceptor trigger zone (CTZ) and the vomiting centre. This stops you feeling sick (nauseous) and prevents you from vomiting.', ' It is used to treat symptoms of stomach disorders. It may also be used to prevent nausea and vomiting caused by certain medications. It is also used to treeat stomach pain and GERD.', ' Headache, dizziness, dry mouth, nervousness, flushing, or irritability, trouble sleeping, stomach cramps, hot flashes and leg cramps may occur. '),
(117, 'Salbutamol', 'Salbutamol is a selective beta2-adrenoceptor agonist. At therapeutic doses, it acts on the beta 2-adrenoceptors of bronchial smooth muscle, with little or no action on the ÃŸ1-adrenoceptors of cardiac muscle. Salbutamol provides short acting (4-6 hours) bronchodilatation with a fast onset (within 5 minutes) in reversible airways obstruction. It also has an anti-inflammatory effect on mast cells causing inhibition of release of bronchoconstrictor mediators including histamine, neutrophil chemotactive factor (NCF) and prostaglandin D2.', 'Salbutamol is indicated as a bronchodilator for use in Asthma, Chronic Bronchitis, Emphysema and other conditions associated with airways obstruction.', 'Salbutamol may cause fine tremor of skeletal muscles (particularly the hands), palpitations and muscle cramps. Tachycardia, tenseness, headaches and peripheral vasodilatation have been reported after large doses.'),
(120, 'Hydrochlorothiazide ', 'This medication is used to treat high blood pressure. Lowering high blood pressure helps prevent strokes, heart attacks, and kidney problems. Hydrochlorothiazide belongs to a class of drugs known as diuretics.', 'visible water retention\r\naccumulation of fluid resulting from chronic heart failure\r\nfluid in the lungs due to chronic heart failure\r\nhigh blood pressure\r\nprevention of calcium-containing kidney stones\r\ndiabetes insipidus', 'Upset stomach, dizziness, or headache may occur as your body adjusts to the medication. '),
(121, 'Nitrofurantoin', 'Nitrofurantoin is an antibiotic that fights bacteria in the body.', 'Nitrofurantoin is used to treat urinary tract infections.', 'Changes in facial skin color\r\nchest pain\r\nchills\r\ncough\r\nfever\r\ngeneral feeling of discomfort or illness\r\nhives\r\nhoarseness\r\nitching\r\njoint or muscle pain\r\nshortness of breath\r\nskin rash\r\nsudden trouble in swallowing or breathing\r\nswelling of the face, mouth, hands, or feet\r\ntroubled breathing'),
(122, 'Probiotic', 'Darolac is a probiotic which contains Lactobacillus acidophilus, Lactobacillus rhamnosus, Bifidobacterium longum, Saccharomyces boulardii. It helps to restores useful bacteria which then lessens the symptoms of abdominal pain, bloating and diarrhea.\r\nIt mainly works by killing and suppressing harmful bacteria in the body. At the same time it minimises the destruction of good bacteria and reduces the excessive secretion of water and electrolytes in the gut.', 'It is used to treat diarrhea caused due to infections, antibiotics, etc. It is also used to relieve symptoms of digestive disorders such as irritable bowel syndrome, inflammatory bowel disease, stomach ulcers, constipation, indigestion, etc.', 'Common side effects include dizziness, bloating and stomach discomfort, gastro intestinal infection, difficulty in breathing, gas and rarely fungemia.'),
(123, 'Levofloxacin', 'This medication belongs to a class of drugs known as quinolone antibiotics. It works by stopping the growth of bacteria.', 'Levofloxacin is used to treat a variety of bacterial infections including acute bacterial sinusitis, pneumonia, H. pylori, urinary tract infections, chronic prostatitis, and some types of gastroenteritis.. ', 'Nausea, diarrhea, headache, dizziness, lightheadedness, constipation or trouble sleeping may occur. '),
(124, 'Pancreatin + Sodium Tauroglycocholate', 'It contains a balance formula of natural enzymes and other digestive factors (Pancreatin + Sodium Tauroglycocholate) that provides comfort after meals and improves everyday digestion. It is a combination of the pancreatic enzyme.  ', 'Indigestion, flatulence, anorexia, dyspepsia, abdominal pain, bloating, hepatic and pancreatic insufficiency, cystic fibrosis of pancreas, post operative digestive upsets and convalescence.\r\nIt can also be used to manage digestion related problems that occur when the pancreas has been surgically removed.', 'Nausea, constipation, stomach pain, bloating, and diarrhea may occur. '),
(125, 'Serratiopeptidase', 'It is an enzyme isolated from bacteria found in silkworms. It is a proteolytic enzyme, meaning it breaks down proteins into smaller components called amino acids. It has an anti-inflammatory and mucolytic agent.', ' It is is used for painful conditions including back pain, osteoarthritis, rheumatoid arthritis, osteoporosis, fibromyalgia, carpel tunnel syndrome, migraine headache, and tension headache.It is also used for conditions that involve pain and swelling , atherosclerosis, breast engorgement, fibrocystic breast disease.\r\nOther uses include treatment of diabetes, leg ulcers, asthma, and pus accumulation (empyema).\r\n', 'It may include skin reactions, muscle and joint pain, poor appetite, nausea, stomach pain, cough,blood clotting disturbances.'),
(126, 'Amoxycillin + Clavulanic acid', 'It is a penicillin-type of antibiotic that helps your body fight infections caused by bacteria.It is a combination of amoxicillin and  Clavulanic acid. Amoxycillin interferes with the growth and division process of the bacterial cell wall while clavulanic acid ensures extended anti-bacterial activity. ', 'This combination is used to treat bacterial infections of the lungs and airways, middle ear, sinuses, skin, urinary tract, stomach ulcers and febrile neutropenia.', 'Vomiting, rashes, fatigue, weakness,  nausea, and diarrhea may occur.'),
(127, 'Disodium Hydrogen Citrate', 'It is mainly used as an alkalizing agent. Disodium Hydrogen Citrate is a urine alkalizer. It works by increasing the pH of urine which makes it less acidic. This helps the kidneys get rid of excess uric acid, thereby preventing gout and certain types of kidney stones.', 'It is mainly used for the treatment of urinary tract infections, painful or difficult urination, kidney stones, urinary acidosis, urinary tract infection, micturition etc.', 'Common side effects includes diarrhea, nausea and vomiting, tiredness, frequent urge to urinate, unpleasant taste, stomach cramps, flatulence, change in mood.\r\n'),
(128, 'Hydrocortisone', 'Hydrocortisone belongs to a class of drugs called glucocorticoids or adrenocorticoids. \r\nIt is a steroid hormone that blocks certain proteins in your body. It works to decrease swelling and stop your immune system from reacting to different triggers.\r\nIt also affects how your body uses and stores carbohydrates, proteins, and fats and how your body balances water and electrolytes.\r\n\r\n', 'It  is used to treat a variety of skin conditions (e.g., insect bites, poison oak/ivy, eczema, dermatitis, allergies, rash, itching of the outer female genitals, anal itching). Hydrocortisone reduces the swelling, itching, and redness that can occur in these types of conditions.\r\nIt  is also used to treat adrenocortical deficiency, swelling and inflammation, and to slow down your immune system.', 'It may cause headache, muscle weakness, skin problems such as acne or thin, shiny skin.\r\n'),
(130, 'Ketorolac Tromethamine + Benzalkonium Chloride', ' Ketorolac belongs to a class of drugs known as nonsteroidal anti-inflammatory drugs (NSAIDs). It works by blocking certain natural substances in your body to reduce pain and swelling.', 'It  is used to relieve eye pain, burning, and stinging following a certain type of corrective eye surgery (corneal refractive surgery). ', 'It may temporarily sting or burn your eyes for 1-2 minutes when applied. Eye redness and headache may also occur.  Serious side effects includes vision changes, eye pain, bleeding inside the eye.'),
(131, 'Ofloxacin + Benzalkonium Chloride', ' Ofloxacin belongs to a class of drugs called quinolone antibiotics. It works by stopping the growth of bacteria.', '\r\nIt is used to treat external infections of eye and ear caused by susceptible bacteria.\r\n\r\n\r\n', 'This medication may temporarily sting or burn your eyes for a minute or two when applied. Temporary blurred vision, eye discomfort, itching, redness, dryness, tearing, feeling as if something is in your eye, or sensitivity to light may occur. '),
(132, 'Chloramphenicol + Chlorbutol', 'This medicine is an antibacterial drug that works by binding to bacterial ribosomes. Therefore, blocking the bacterial synthesis of protein at an early stage. It destroys or slows down the growth of bacteria.', 'It is used to treat bacterial eye infection (superficial ocular infections), inflammation of the conjunctiva (bacterial conjunctivitis.', 'Temporary blurred vision, burning, stinging, or redness may occur.'),
(133, 'Tobramycin Sulphate + Tobramycin + Benzalkonium Chloride', 'It is a broad-spectrum type of antibiotic effective in killing many types of bacteria. It stops the growth of bacteria and thereby helps to cure the underlying infection. ', 'It is used to treat bacterial infections of the eye (eg. conjunctivitis) and the eyelids (e.g. blepharitis). It may also help to prevent an infection after an eye injury or surgery.', 'Temporary eye/ear irritation, burning sensation, itching, and redness may occur.'),
(134, 'Betamethasone Sodium Phosphate + Neomycin Sulphate + Thiomersal', 'Betamethasone is a glucocorticoid that works by stopping the bodys reaction to the allergen by reducing irritation and swelling. Neomycin  is an antibacterial that stops the growth of bacteria. It works by reducing inflammation; preventing the bacterial growth by stopping the production of essential protein in the bacterial cells; works as a preservative and with its antibacterial properties;', 'Betamethasone  is  used for the treatment, control and  prevention of  external ear infections, wounds, antibacterial, cuts, skin inflammation, itch or rash, eye infections and many more.\r\n', ' It may cause skin atrophy, burning, itching, irritation, allergic contact dermatitis, hypertrichosis, milia, damage to ear, sensitivity to light, blurred vision.'),
(135, 'Sodium Carboxymethylcellulose + Stabilised Oxychloro Complex', 'It is an eye lubricant or artificial tears  that helps to keep the eye lubricated and provides temporary relief from burning and discomfort due to dryness of the eye.', 'It is used to relieve dry eyes.  It also helps to soothe the irritation and burning seen in dry eyes by maintaining proper lubrication of the eyes.', 'It may cause blurred or altered vision, redness or irritation, stinging in the eyes and sometimes pain in the eye. '),
(136, 'Phenylephrine Hydrochloride + Naphazoline Hydrochloride + Menthol + Camphor + Benzalkonium Chloride', 'It is a combination of two medicines: Naphazoline and phenylephrine which relieve eye itching/discomfort caused by seasonal allergies. Naphazoline is a sympathomimetic-alpha 1 medicine which also narrows the blood vessels in the eye, thereby reducing redness and swelling. Phenylephrine is a decongestant which tightens the blood vessels in the eye. This decreases the production of fluid in the eye and increases its drainage.', 'It is used to treat allergic diseases of the eye. It relieves redness and swelling of the eye and provides temporary relief from burning and discomfort.', ' Common side effects include stinging, blurred vision, eye pain, and photophobia at the application site.'),
(137, 'Halobetasol Propionate ', 'It is a steroid that works by blocking the production of certain chemical messengers (prostaglandins) that make the skin red, swollen and itchy.', 'It is used to treat redness, itching, swelling, and irritation associated with skin conditions such as eczema, dermatitis, psoriasis, insect bites, and severe allergies.', 'It may cause blisters under the skin, burning or tingling sensation of skin, headache,  itchy and dry skin, easy bruising of skin, unusually warm skin and lightening of skin at the area of application.\r\n'),
(138, 'Flurbiprofen Sodium + Hydroxypropyl Methylcellulose + Phenylmercuric Nitrate', 'Flurbiprofen belongs to a class of drugs known as nonsteroidal anti-inflammatory drugs (NSAIDs). It works by reducing hormones that cause inflammation and pain in the body.', 'It is used before certain types of eye surgery (such as cataract removal) as it prevents the pupil of the eye from narrowing that makes it easier for the doctor to examine the inside of the eye, to remove the cataract, and to replace it with a new lens. ', 'Stinging/burning , increase or decrease in size of pupil may occur. Serious side effects may include  eye pain, decreased vision, bleeding in the eye (increased redness in the eye).'),
(139, 'Polyvinyl Alcohol + Povidone + Chlorbutol', 'It is a  lubricant that keeps the eye moist, help to protect the eye from injury and infection, and decrease symptoms of dry eyes such as burning, itching, and feeling as if something is in the eye.\r\nIt mainly contains Povidone and Polyvinyl Alcohol. \r\nPolyvinyl alcohol is used to increase the viscosity and thereby prolonging contact time of the Povidone within the eye.\r\nPovidone (polyvinylpyrrolidone) helps to retain the tears on the cornea longer. It acts as artificial tears to help ease dryness and soreness associated with dry eye conditions.', 'It is used to relieve dry, irritated eyes which may result from exposure to wind, sun, heating/air conditioning, computer use/reading, and certain medications.', 'Blurred vision, minor burning/stinging/irritation may temporarily occur. '),
(140, 'Paradichlorobenzene + Benzocaine + Chlorbutol + Turpentine Oil', ' It is a combination of four medicines: Benzocaine, Chlorbutol, Paradichlorobenzene and Turpentine Oil. Benzocaine is a local anesthetic. It works by blocking pain signals from the nerves to brain which decreases sensation of pain. Chlorbutol is a preservative. Paradichlorobenzene is an ear wax softener which dissolves the ear wax while exerting antibacterial and antifungal actions. Turpentine Oil is a lubricant.', 'It is used to treat pain in the ear. It helps in dissolving the ear wax. It provides relief from the pain due to hardened wax by softening it. It is also used to treat ear infection (Otitis Media).', 'No known side effects have been reported yet.'),
(141, 'Clotrimazole + Lignocaine Hydrochloride', 'It  is a combination of two medicines: Lidocaine/Lignocaine and Clotrimazole, which treats ear infections. Lidocaine/Lignocaine is a local anesthetic which works by blocking pain signals from the nerves to brain, thereby decreasing pain sensation in the ear. Clotrimazole is an antifungal which stops the growth of fungi in the ear by preventing them from forming their own protective covering.', 'It  is used for the treatment of fungal infections in the ear (Otomycosis). It also relieves the ear pain caused due to the infection.', 'It may cause ringing or buzzing in the ears, decrease/loss of hearing, ear discomfort, burning, irritation, itching and redness in ear.\r\n'),
(142, 'Ciprofloxacin Hydrochloride + Benzalkonium Chloride', ' Ciprofloxacin belongs to a class of drugs called quinolone antibiotics. It works by stopping the growth of bacteria.', 'It is used to treat bacterial eye infections. ', 'It  may temporarily sting or burn your eyes for a minute or two when applied. Eye discomfort, itching, redness, tearing, eyelid crusting, feeling as if something is in your eye, blurred vision, a bad taste in your mouth, or sensitivity to light may occur. '),
(143, 'Madhu + Amla + Haldi + Tulsi + Satapatri + Vibhitaki + Ajwain + Kapoora + Phenyl Mercuric Nitrate', ' It is a unique ayurvedic proprietary product which have antimicrobial, anti-inflammatory, antihistaminic, analgesic and antioxidant properties, which make it effective and useful in cases infective eye diseases and inflammatory ophthalmic disorders. Cinnamomum Camphora and Emblica Officinalis in it provide cooling sensation and help to reduce irritation, redness and burning sensation. Other ingredients provide relief from eyestrain and eye congestion.', ' It is indicated in all types of eye infections and inflammatory disorders such as conjunctivitis, Inflammatory ophthalmic disorders, eyestrain, excessive lacrimation, dry eyes, computer vision syndrome.', 'No known side effects have been reported yet.');

-- --------------------------------------------------------

--
-- Table structure for table `med_packaging`
--

CREATE TABLE `med_packaging` (
  `pack_id` int(11) NOT NULL,
  `pack_title` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `med_packaging`
--

INSERT INTO `med_packaging` (`pack_id`, `pack_title`) VALUES
(1, 'Per Strip'),
(3, 'Plastic bottle of 100 ml'),
(8, 'Plastic bottle of 50 ml'),
(9, 'Glass bottle of 100 ml'),
(10, 'Plastic bottle of 150 ml'),
(14, 'Per pack'),
(16, 'Plastic bottle of 90 ml '),
(17, 'Glass bottle of 90 ml'),
(18, 'Glass bottle of 15 ml'),
(19, 'Glass bottle of 30 ml '),
(20, 'Plastic bottle of 60 ml'),
(21, 'Plastic bottle of 15 ml'),
(22, 'Plastic bottle of 30 ml'),
(23, 'Plastic bottle of 25 ml'),
(24, 'Tube of 10g'),
(25, 'Tube of 15g'),
(27, 'Plastic bottle of 10 ml'),
(28, 'Plastic bottle of 5 ml');

-- --------------------------------------------------------

--
-- Table structure for table `med_preparation`
--

CREATE TABLE `med_preparation` (
  `preparation_id` int(11) NOT NULL,
  `preparation_title` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `med_preparation`
--

INSERT INTO `med_preparation` (`preparation_id`, `preparation_title`) VALUES
(1, 'Tablet'),
(2, 'Capsule'),
(3, 'Syrup'),
(4, 'Powder'),
(5, 'Ointment'),
(6, 'Eye ointment'),
(7, 'Eye drop'),
(8, 'Ear drop'),
(9, 'Eye/Ear drop'),
(10, 'Nasal spray'),
(11, 'Oral suspension'),
(12, 'Liquid'),
(13, 'Drops'),
(14, 'Dry syrup'),
(15, 'Nasal solution '),
(16, 'Gel'),
(17, 'Suspension'),
(18, 'Enema'),
(19, 'Hair oil'),
(20, 'Oil'),
(21, 'Spray'),
(22, 'Mouth gargle'),
(23, 'Lotion'),
(24, 'Soap'),
(25, 'Mouth wash'),
(27, 'Mouth Paint');

-- --------------------------------------------------------

--
-- Table structure for table `med_products`
--

CREATE TABLE `med_products` (
  `product_id` int(11) NOT NULL,
  `product_brand` varchar(200) NOT NULL,
  `product_title` varchar(200) NOT NULL,
  `product_generic` varchar(200) NOT NULL,
  `product_company` int(200) NOT NULL,
  `product_cat` varchar(200) NOT NULL,
  `product_prep` varchar(200) NOT NULL,
  `product_pack_qty` int(15) NOT NULL,
  `product_pack` varchar(200) NOT NULL,
  `product_stren` varchar(200) NOT NULL,
  `product_freq` varchar(200) NOT NULL,
  `product_route` varchar(200) NOT NULL,
  `product_price` int(100) NOT NULL,
  `product_m_price` int(100) NOT NULL,
  `product_avail_qty` varchar(100) NOT NULL,
  `product_exp_dat` date NOT NULL,
  `product_keyword` varchar(200) NOT NULL,
  `product_flag` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `med_products`
--

INSERT INTO `med_products` (`product_id`, `product_brand`, `product_title`, `product_generic`, `product_company`, `product_cat`, `product_prep`, `product_pack_qty`, `product_pack`, `product_stren`, `product_freq`, `product_route`, `product_price`, `product_m_price`, `product_avail_qty`, `product_exp_dat`, `product_keyword`, `product_flag`) VALUES
(15, '27', 'Flubact-500', '16', 9, '2', '2', 10, '1', '1', '4', '1', 190, 200, '120', '2021-06-30', 'Antibiotics,flubact, flucloxacillin', 1),
(18, '214', 'ALMOX-500', '2', 60, '2', '2', 10, '1', '1', '3', '1', 80, 85, '200', '2021-10-30', 'amoxycillin, almox,antibiotic,penicillin', 1),
(19, '220', 'PERIMOX-500', '2', 44, '2', '2', 10, '1', '1', '3', '1', 75, 80, '200', '2021-09-30', 'antibiotic, amoxycillin, penicillin', 1),
(20, '151', 'AMOX-CTL', '2', 70, '2', '3', 1, '16', '34', '3', '1', 85, 90, '200', '2020-11-30', 'amoxycillin,antibiotic,penicillin, syrup, amox-ctl', 1),
(21, '272', 'SUPRAMOX', '2', 23, '2', '14', 1, '17', '34', '3', '1', 120, 125, '100', '2021-08-30', 'amoxycillin, supramox, antibiotic, penicillin', 1),
(22, '2', 'Aciloc', '24', 68, '19', '1', 30, '1', '44', '1', '1', 35, 36, '1000', '2021-12-30', 'ranitidine, aciloc, gastic ', 1),
(25, '293', 'Monoral 50', '25', 39, '2', '14', 1, '19', '45', '2', '1', 115, 120, '10', '2020-10-30', 'antibiotic, monoral, cefpodoxime,', 1),
(26, '294', 'Monoral 100', '25', 39, '2', '14', 1, '19', '46', '2', '1', 225, 232, '10', '2020-11-30', 'monoral, antibiotic, cefphalosporin', 1),
(27, '251', 'CLOVIR 800', '27', 70, '7', '1', 10, '1', '27', '2', '1', 255, 265, '400', '2021-01-30', 'Anti viral, aciclovir, clovir', 1),
(28, '70', 'Pandip', '28', 38, '19', '1', 10, '1', '43', '2', '1', 75, 80, '200', '2021-08-30', 'pantoprazole, pandip, ppi, gastritis, gastric irritation', 1),
(29, '69', 'P-Gut', '28', 37, '19', '1', 10, '1', '43', '2', '1', 75, 80, '300', '2021-06-21', 'p-gut, pantoprazole, gastritis, ppi', 1),
(30, '518', 'PANTOP', '28', 24, '19', '1', 10, '1', '43', '2', '1', 75, 80, '599', '2022-11-30', 'pantop, pantoprazole, gastritis, ppi', 1),
(31, '197', 'Acitop', '28', 39, '19', '1', 10, '1', '43', '2', '1', 75, 80, '200', '2021-08-30', 'acitop, pantoprazole, ppi, gastritis', 1),
(32, '225', 'CANDID', '29', 49, '4', '27', 1, '23', '48', '3', '1', 200, 208, '100', '2022-01-30', 'candid mouth paint, candid, clotrimazole, antifungal', 1),
(33, '138', 'ORNADO', '30', 32, '2', '1', 10, '1', '1', '3', '1', 95, 100, '200', '2021-10-30', 'Ornado, ornidazole, antidiarrrheal, antibiotics, antiamebic, anti-protozoal, stomach upset', 1),
(34, '218', 'Ciprobid-500', '31', 69, '2', '1', 10, '1', '1', '2', '1', 93, 96, '200', '2020-09-30', 'ciprobid, ciprofloxacin, antibiotics, quinolones.', 1),
(35, '207', 'MECOZOL-400', '32', 81, '2', '1', 10, '1', '7', '3', '1', 28, 30, '500', '2021-08-30', 'antibiotic, anti-protozoal, anti-diarrheal, mecozol, metronidazole, stomach infections.', 1),
(36, '221', 'Azitrox 250', '33', 8, '2', '1', 6, '1', '3', '1', '1', 100, 105, '200', '2021-01-20', 'azithromycin, azitrox 250, antibiotic, macrolide, strep throat.', 1),
(37, '224', 'BILIN-500', '34', 27, '2', '1', 10, '1', '49', '4', '1', 115, 120, '500', '2020-09-30', 'antibiotic, penicillin, bilin-500, ampicillin, cloxacillin.', 1),
(38, '71', 'Forcef', '35', 39, '2', '1', 10, '1', '1', '2', '1', 742, 747, '200', '2022-02-28', 'antibiotic, forcef, cefuroxime, cephalosporin.', 1),
(39, '210', 'Sez-1000', '36', 12, '2', '1', 2, '1', '2', '1', '1', 95, 100, '200', '2021-06-30', 'Sez 1000, secnidazole, antibiotic, vaginal infection.', 1),
(40, '223', 'CLINBACT-300', '37', 24, '2', '1', 10, '1', '50', '4', '1', 545, 550, '200', '2020-08-30', 'clindamycin, clinbact-300, antibiotic.', 1),
(41, '140', 'TINDAMAX-500', '38', 8, '2', '1', 10, '1', '1', '1', '1', 45, 50, '200', '2021-03-30', 'Tinidazole, tindamax-500, antibiotic, antiprotozoal.', 1),
(42, '189', 'Ontron 4', '39', 32, '20', '1', 10, '1', '51', '3', '1', 70, 75, '200', '2020-06-30', 'Ontron 4, ondansetron, anti-emetic.', 1),
(43, '147', 'CTZ', '40', 65, '13', '1', 14, '1', '52', '1', '1', 40, 45, '500', '2021-11-30', 'anti-histamine, anti-allergic, cetrizine, ctz', 1),
(44, '74', 'TROCET', '41', 8, '13', '1', 10, '1', '15', '1', '1', 55, 61, '200', '2021-10-30', 'Anti-histamine, anti allergic, Trocet, levocetirizine. ', 1),
(45, '47', 'Difolen-100', '42', 27, '21', '1', 10, '1', '5', '2', '1', 60, 65, '200', '2021-12-30', 'NSAID, anti inflammatory, difolen-100, diclofenac, analgesic.', 1),
(46, '52', 'Amace', '44', 32, '21', '1', 10, '1', '5', '2', '1', 45, 50, '200', '2020-06-30', 'Aceclofenac, Amace, anti-inflammatory, analgesic, NSAID.', 1),
(48, '185', 'OmeCAP-20', '45', 32, '19', '2', 10, '1', '53', '2', '1', 35, 40, '200', '2020-07-30', 'Omecap-20, omeprazole, proron pump inhibitors, gastritis', 1),
(49, '50', 'Nims', '46', 24, '21', '1', 14, '1', '10', '2', '1', 40, 45, '500', '2022-08-30', 'Nimesulide, nims, NSAID, analgesic.', 1),
(50, '55', 'Meftal-500', '47', 35, '21', '1', 10, '1', '1', '2', '1', 35, 40, '500', '2022-04-30', 'Meftal, mefenamic acid, NSAID, Menstrual cramps, analgesic.', 1),
(51, '298', 'D ACNE ', '37', 49, '2', '5', 1, '24', '54', '1', '5', 210, 216, '40', '2021-10-30', 'clindamycin, antibiotic ointment, derma ointment, D Acne, Acne Care Cream, Acne Cream, Acne', 1),
(52, '186', 'Dexin ', '50', 12, '24', '1', 10, '1', '22', '1', '1', 18, 20, '200', '2022-01-30', 'Dexamethasone, dexin, corticosteroids, steroids', 1),
(53, '232', 'PRELONE 10', '51', 12, '24', '1', 10, '1', '52', '1', '1', 32, 35, '100', '2021-08-30', 'Prelone, Prednisolone, Corticosteroids, Steroids', 1),
(54, '5', 'AMLOD 5', '11', 65, '26', '1', 14, '1', '15', '1', '1', 65, 70, '200', '2022-12-30', 'Amlod-5, amlodipine, calcium channel blockers, anti hypertensive.', 1),
(55, '240', 'FORMIN SR-1000', '53', 65, '27', '1', 10, '1', '2', '2', '1', 55, 60, '200', '2021-12-30', 'Formin-SR 1000, Metformin, Oral hypoglycemic drugs, anti diabetic drugs.', 1),
(56, '35', 'Thyronorm', '54', 15, '14', '1', 100, '14', '9', '1', '1', 205, 206, '5', '2021-09-30', 'thyroxine, hypothyroidisim, thyronorm, hormones', 1),
(57, '35', 'Thyronorm', '54', 15, '14', '1', 100, '14', '107', '1', '1', 260, 265, '5', '2021-02-02', 'thyroxine, hypothyroidisim, thyronorm,  hormones', 1),
(58, '253', 'Spril-25', '55', 12, '6', '1', 10, '1', '26', '1', '1', 28, 30, '200', '2021-10-30', 'Spril 25, spironolactone, diuretic, water-pill.', 1),
(59, '35', 'Thyronorm', '54', 15, '14', '1', 100, '14', '59', '1', '1', 280, 285, '3', '2021-05-30', 'thyroxine, hypothyroidisim, thyronorm,  hormones', 1),
(60, '35', 'Thyronorm', '54', 15, '14', '1', 100, '14', '108', '1', '1', 270, 275, '3', '2021-04-30', 'thyroxine, hypothyroidisim, thyronorm, hormones', 1),
(61, '35', 'Thyronorm', '54', 15, '14', '1', 100, '1', '10', '1', '1', 250, 255, '2', '2021-04-30', 'thyroxine, hypothyroidisim, thyronorm, hormones', 1),
(62, '397', 'Avas-20', '56', 17, '5', '1', 10, '1', '1', '1', '1', 203, 206, '150', '2022-01-30', 'Atorvastatin, Avas-20, Statin, Cardiac drug, lipid lowering agent.', 1),
(63, '363', 'REFORM-1000 SR', '53', 89, '27', '1', 10, '1', '2', '1', '1', 55, 60, '150', '2021-09-30', 'Reform-1000 SR, Metformin, Oral hypoglycemic drugs, anti diabetic drugs.', 1),
(64, '358', 'OBICHECK 500', '53', 13, '27', '1', 10, '1', '1', '1', '1', 18, 20, '200', '2021-07-30', 'Obichek 500, Metformin, Oral hypoglycemic drugs, anti diabetic drugs.', 1),
(65, '370', 'Alpine 5', '11', 12, '26', '1', 14, '1', '1', '1', '1', 65, 70, '120', '2021-02-28', 'Alpine-5, amlodipine, calcium channel blockers, anti hypertensive.', 1),
(66, '348', 'Mitel-40', '57', 66, '26', '1', 10, '1', '1', '1', '1', 115, 120, '120', '2021-09-30', 'Mitel-40, telmisartan, anti hypertensive, ACE inhibitors.', 1),
(67, '402', 'ROUTIN 5', '58', 70, '5', '1', 10, '1', '15', '1', '1', 96, 100, '100', '2021-03-30', 'Routin-5, rosuvastatin, statins, lipid lowering agent, cardiac drug.', 1),
(68, '415', 'RePACE-50', '59', 98, '26', '1', 10, '1', '4', '1', '1', 72, 78, '150', '2022-09-30', 'Repace 50, Losartan potassium, anti hypertensive, ACE inhibitors.', 1),
(69, '523', 'Q-pil 2.5', '61', 21, '26', '1', 10, '1', '16', '1', '1', 20, 23, '100', '2021-03-30', 'Q-pil 2.5, ACE inhibitors, enalapril, anti hypertensive.', 1),
(70, '524', 'Glibose-0.3', '62', 65, '27', '1', 28, '1', '25', '3', '1', 415, 420, '100', '2021-09-30', 'Glibose 0.3, voglibose, anti diabetic, alpha glucosidase inhibitor', 1),
(71, '418', 'Metloc-12.5', '63', 21, '26', '1', 10, '1', '58', '2', '1', 26, 30, '100', '2021-02-28', 'Metloc 12.5, Metoprolol, anti hypertensive, beta blockers', 1),
(72, '362', 'Gluride 2', '64', 21, '27', '1', 10, '1', '55', '1', '1', 82, 86, '150', '2021-11-30', 'Gluride 2, glimepiride, anti diabetic, oral hypoglycemic, alpha glucosidase inhibitor, diabetes mellitus', 1),
(73, '234', 'IFOL', '65', 21, '1', '1', 10, '1', '63', '1', '1', 90, 95, '200', '2021-07-30', 'Ifol, iron supplement, folic acid, anemia, vitamin and minerals, iron ploymaltose complex and folic acid', 1),
(74, '231', 'TRANOSTAT', '66', 52, '29', '1', 10, '1', '1', '2', '1', 280, 285, '200', '2022-06-30', 'Tranostat, tranexamic acid, anti fibrinolytics, bleeding disorders', 1),
(75, '236', 'Tranov-500', '66', 50, '29', '1', 10, '1', '1', '2', '1', 245, 250, '200', '2021-12-30', 'Tranov-500, tranexamic acid, anti fibrinolytics, bleeding disorders', 1),
(76, '237', 'EVA-400', '67', 21, '1', '2', 10, '1', '7', '2', '1', 60, 65, '150', '2022-01-30', 'Eva 400, vitamin E, tocopherol, vitamins , antioxidant.', 1),
(77, '259', 'MYVIT-C', '69', 144, '1', '1', 10, '1', '1', '2', '1', 70, 75, '100', '2022-02-28', 'Myvit C, vitamin C, ascorbic acid, vitamins and supplements, antinoxidant', 1),
(78, '230', 'MECOBAL 1.5', '70', 93, '1', '1', 10, '1', '1', '1', '1', 195, 200, '100', '2020-07-30', 'Methylcobalamine, mecobal 1.5, vitamin B12, vitamins and supplements, neuropathy', 1),
(79, '261', 'ELOZ-100', '71', 56, '4', '2', 4, '1', '5', '1', '1', 135, 140, '100', '2021-06-30', 'Anti fungal, eloz-100, itraconazole, itchiness.', 1),
(81, '41', 'Spas', '43', 21, '22', '1', 10, '1', '52', '3', '1', 115, 120, '900', '2020-09-30', 'anti spasmodic, spas, hyoscine', 1),
(82, '42', 'Belaspan', '43', 22, '22', '1', 10, '1', '52', '3', '1', 145, 150, '150', '2022-08-30', 'anti spasmodic, spas, hyoscine, belaspan', 1),
(83, '43', 'Spaspain', '72', 23, '22', '1', 10, '1', '53', '2', '1', 38, 40, '200', '2022-10-30', 'anti spasmodic, spas, dicyclomine, spaspain', 1),
(84, '290', 'CYCLOPAM', '73', 76, '22', '17', 1, '22', '75', '2', '1', 80, 82, '10', '2022-02-28', 'anti spasmodic, spas, dicyclomine,  cyclopam, simethicone', 1),
(85, '290', 'CYCLOPAM', '73', 76, '22', '13', 1, '1', '76', '2', '1', 63, 66, '29', '2021-07-30', 'anti spasmodic, spas, dicyclomine,  cyclopam, simethicone', 1),
(86, '291', 'PASMODIN', '73', 44, '22', '13', 1, '21', '76', '2', '1', 58, 60, '10', '2021-02-28', 'anti spasmodic, spas, dicyclomine, simethicone, pasmodin', 1),
(87, '241', 'SHELCAL-500', '68', 97, '1', '1', 15, '1', '1', '2', '1', 115, 120, '150', '2021-03-30', 'Shelcal-500, calcium and vitamin D3, vitamins and minerals supplements.', 1),
(88, '3', 'BUSTOP FORTE', '7', 23, '1', '2', 250, '1', '109', '2', '1', 85, 90, '500', '2020-12-30', 'bustop forte, vitamin B complex a', 1),
(90, '128', 'SYNTRAN-100', '71', 23, '4', '2', 4, '1', '5', '1', '1', 175, 180, '100', '2021-05-30', 'Syntran-100, itraconazole, anti fungal, allergy.', 1),
(91, '243', 'FLUZ', '74', 16, '4', '2', 1, '1', '44', '5', '1', 22, 25, '100', '2020-10-30', 'Fluz, fluconazole, anti fungal, allergy', 1),
(92, '211', 'ONEDA-500', '30', 91, '2', '1', 10, '1', '1', '2', '1', 95, 100, '100', '2020-05-30', 'Oneda-500, ornidazole, antidiarrrheal, antibiotics, antiamebic, anti-protozoal, stomach upset', 1),
(93, '193', 'ZITOP-20DT', '75', 23, '1', '1', 10, '1', '53', '2', '1', 38, 40, '100', '2020-06-30', 'Zitop-20DT, zinc sulfate, zinc, anti diarrheal, vitamins and minerals.', 1),
(94, '203', 'Esozol-20', '76', 21, '19', '1', 10, '1', '53', '2', '1', 68, 70, '100', '2021-01-30', 'Esozol 20, esomeprazole magnesium, ppi, gastritis, gastric irritation', 1),
(95, '196', 'Esmopraz ', '76', 32, '19', '1', 10, '1', '43', '2', '1', 95, 100, '80', '2021-02-28', 'Esmopraz, esomeprazole magnesium, ppi, gastritis, gastric irritation', 1),
(96, '199', 'Esozole-40', '76', 21, '19', '1', 10, '1', '43', '2', '1', 95, 100, '100', '2021-01-30', 'Esozol 40, esomeprazole magnesium, ppi, gastritis, gastric irritation', 1),
(97, '206', 'RABESTA-20', '77', 90, '19', '1', 10, '1', '53', '1', '1', 96, 100, '200', '2021-11-30', 'Rabesta-20, rabeprazole, PPI, gastritis,ulcer', 1),
(98, '233', 'AZOMIDE', '78', 94, '30', '1', 10, '1', '3', '10', '1', 92, 96, '100', '2021-08-30', 'Azomide, acetazolamide, carbonic anhydrase inhibitors, high altitude sickness, mountain sickness', 1),
(99, '141', 'FEMITRONE', '79', 12, '14', '1', 10, '1', '15', '1', '1', 96, 100, '150', '2021-08-30', 'Femitrone, norethisterone, hormones, postpone/delay periods', 1),
(100, '154', 'NILOCON WHITE', '80', 145, '14', '1', 28, '1', '110', '1', '1', 58, 60, '200', '2020-12-30', 'Ethinyl estadiol+levonorgestrol, nilocon white, contraceptive, hormones', 1),
(101, '121', 'OVRAL L', '80', 61, '14', '1', 21, '1', '111', '1', '1', 110, 115, '50', '2022-03-30', 'Ethinyl estadiol+levonorgestrol, ovral L, contraceptive, hormones', 1),
(102, '467', 'Sunaulo Gulaf', '81', 140, '14', '1', 28, '1', '112', '1', '1', 18, 20, '200', '2023-04-30', 'Ethinyl estadiol+levonorgestrol+ferrous fumarate, sunaulo gulaf, contraceptive, hormones, bleeding', 1),
(103, '242', 'FERON-XT', '82', 70, '1', '1', 10, '1', '113', '1', '1', 96, 100, '0', '2020-06-30', 'Feron XT, iron supplement, folic acid, anemia, vitamin and minerals, ferrous ascorbate and folic acid', 1),
(104, '239', 'FOL-XT', '83', 96, '1', '1', 10, '1', '115', '1', '1', 155, 160, '50', '2021-01-30', 'FOL-XT, iron supplement, folic acid, zinc supplement, anemia, vitamin and minerals, ferrous ascorbate, folic acidand zinc sulphate', 1),
(105, '425', 'RePace-25', '59', 98, '26', '1', 10, '1', '26', '1', '1', 42, 45, '100', '2022-09-30', 'Repace 25, Losartan potassium, anti hypertensive, ACE inhibitors.', 1),
(106, '391', 'Omnitan-50', '59', 116, '26', '1', 10, '1', '4', '1', '1', 75, 78, '50', '2020-09-30', 'Omnitan-50, Losartan potassium, anti hypertensive, ACE inhibitors', 1),
(107, '400', 'Lospo 50', '59', 12, '26', '1', 14, '1', '4', '1', '1', 100, 105, '60', '2021-11-30', 'Lospo-50, Losartan potassium, anti hypertensive, ACE inhibitors.', 1),
(108, '384', 'Telspire-20', '57', 45, '26', '1', 10, '1', '53', '1', '1', 65, 70, '30', '2021-02-28', 'Telspire-20, telmisartan, anti hypertensive, ACE inhibitors.', 1),
(109, '408', 'Avas-10', '56', 17, '26', '1', 10, '1', '52', '1', '1', 105, 108, '100', '2021-08-30', 'Atorvastatin, Avas-10, Statin, Cardiac drug, lipid lowering agent.', 1),
(110, '424', 'LIPICURE-20', '56', 100, '26', '1', 15, '1', '53', '1', '1', 305, 310, '100', '2022-07-30', 'Atorvastatin, Lipicure-20, Statin, Cardiac drug, lipid lowering agent.', 1),
(111, '386', 'Aztor 10', '56', 98, '26', '1', 10, '1', '52', '1', '1', 125, 130, '10', '2021-05-30', 'Atorvastatin, Aztor-10, Statin, Cardiac drug, lipid lowering agent.', 1),
(112, '353', 'Astat 10', '56', 21, '26', '1', 10, '1', '52', '1', '1', 105, 110, '50', '2022-01-30', 'Atorvastatin, Astat-10, Statin, Cardiac drug, lipid lowering agent.', 1),
(113, '390', 'Astat 5', '56', 21, '26', '1', 10, '1', '15', '1', '1', 65, 70, '30', '2021-04-30', 'Atorvastatin, Astat-5, Statin, Cardiac drug, lipid lowering agent.', 1),
(114, '392', 'Atchol-10', '56', 39, '26', '1', 10, '1', '52', '1', '1', 35, 40, '30', '2021-10-30', 'Atorvastatin, Atchol-10, Statin, Cardiac drug, lipid lowering agent.', 1),
(115, '423', 'AMFAST-5', '52', 88, '26', '1', 10, '1', '15', '1', '1', 46, 50, '30', '2021-04-30', 'Amfast-5, amlodipine, calcium channel blockers, anti hypertensive.', 1),
(116, '350', 'Q-pil 5', '61', 21, '26', '1', 10, '1', '15', '1', '1', 36, 40, '30', '2021-07-30', 'Q-pil 5, ACE inhibitors, enalapril, anti hypertensive.', 1),
(117, '388', 'Arvast 10', '58', 100, '26', '1', 15, '1', '52', '1', '1', 296, 301, '20', '2021-01-30', 'Arvast-10, rosuvastatin, statins, lipid lowering agent, cardiac drug.', 1),
(118, '403', 'Arvast 5', '58', 100, '26', '1', 10, '1', '15', '1', '1', 122, 126, '20', '2022-07-30', 'Arvast-5, rosuvastatin, statins, lipid lowering agent, cardiac drug.', 1),
(119, '404', 'Arbitel-20', '57', 17, '26', '1', 10, '1', '53', '1', '1', 60, 65, '20', '2021-04-30', 'Arbitel-20, telmisartan, anti hypertensive, ACE inhibitors.', 1),
(120, '409', 'Arbitel-80', '57', 17, '26', '1', 10, '1', '116', '1', '1', 165, 170, '40', '2021-02-28', 'Arbitel-40, telmisartan, anti hypertensive, ACE inhibitors.', 1),
(121, '525', 'OZOTEL', '57', 52, '26', '1', 10, '1', '43', '1', '1', 30, 35, '50', '2021-09-30', 'Ozotel, telmisartan, anti hypertensive, ACE inhibitors.', 1),
(122, '406', 'SARTEL-40', '57', 100, '26', '1', 15, '1', '43', '1', '1', 170, 173, '50', '2021-02-28', 'Sartel-40, telmisartan, anti hypertensive, ACE inhibitors.', 1),
(123, '371', 'Mylod 5', '52', 21, '26', '1', 10, '1', '15', '1', '1', 72, 75, '100', '2021-01-30', 'Mylod-5, amlodipine, calcium channel blockers, anti hypertensive.', 1),
(124, '361', 'GLYCOMET-1 GM', '53', 40, '27', '1', 15, '1', '2', '1', '1', 86, 90, '80', '2021-09-30', 'Glycomet-1 GM, Metformin, Oral hypoglycemic drugs, anti diabetic drugs.', 1),
(125, '354', 'GLYCOMET-850', '53', 40, '27', '1', 10, '1', '65', '1', '1', 45, 48, '60', '2021-04-30', 'Glycomet-850, Metformin, Oral hypoglycemic drugs, anti diabetic drugs.', 1),
(126, '368', 'GLYCOMET-500 SR', '53', 40, '27', '1', 20, '1', '1', '1', '1', 65, 70, '30', '2021-07-30', 'Glycomet-500 SR, Metformin, Oral hypoglycemic drugs, anti diabetic drugs.', 1),
(127, '355', 'FORMET500', '53', 12, '27', '1', 10, '1', '1', '1', '1', 18, 20, '100', '2021-11-30', 'Formet-500, Metformin, Oral hypoglycemic drugs, anti diabetic drugs.', 1),
(128, '364', 'Gluride 3', '64', 21, '27', '1', 10, '1', '57', '1', '1', 110, 112, '10', '2020-06-30', 'Gluride 3, glimepiride, anti diabetic, oral hypoglycemic, alpha glucosidase inhibitor, diabetes mellitus', 1),
(129, '373', 'Amaryl 1mg', '64', 7, '27', '1', 30, '1', '56', '1', '1', 155, 160, '40', '2021-10-30', 'Amaryl 1mg, glimepiride, anti diabetic, oral hypoglycemic, alpha glucosidase inhibitor, diabetes mellitus', 1),
(130, '369', 'Amlospire-5', '52', 45, '26', '1', 14, '1', '15', '1', '1', 80, 85, '3', '2020-06-30', 'Amlospire-5, amlodipine, calcium channel blockers, anti hypertensive.', 1),
(131, '376', 'AMTAS 2.5', '52', 100, '26', '1', 30, '1', '16', '1', '1', 65, 70, '50', '2021-05-30', 'Amtas-2.5, amlodipine, calcium channel blockers, anti hypertensive.', 1),
(132, '378', 'AMTAS-5', '52', 100, '26', '1', 30, '1', '15', '1', '1', 125, 130, '60', '2021-05-30', 'Amtas-5, amlodipine, calcium channel blockers, anti hypertensive.', 1),
(133, '372', 'AMLOD 2.5', '52', 65, '26', '1', 14, '1', '1', '1', '1', 46, 51, '30', '2020-09-30', 'Amlod-2.5, amlodipine, calcium channel blockers, anti hypertensive.', 1),
(134, '380', 'Amcab-5', '52', 44, '26', '1', 10, '1', '15', '1', '1', 48, 50, '0', '2020-04-30', 'Amcab-5, amlodipine, calcium channel blockers, anti hypertensive.', 1),
(135, '204', 'RAB-20', '77', 89, '19', '1', 10, '1', '53', '1', '1', 96, 100, '60', '2020-10-30', 'Rab-20, rabeprazole, PPI, gastritis,ulcer', 1),
(136, '395', 'Lintor 5', '84', 21, '27', '1', 10, '1', '15', '1', '1', 195, 200, '60', '2021-11-30', 'Lintor, Linagliptin, anti diabetic, oral hypoglycemic drugs, diabetes mellitus', 1),
(137, '366', 'LINAGLIP-5', '84', 24, '27', '1', 10, '1', '15', '1', '1', 195, 200, '30', '2021-03-30', 'Linaglip, Linagliptin, anti diabetic, oral hypoglycemic drugs, diabetes mellitus', 1),
(138, '398', 'Fincar', '85', 102, '31', '1', 10, '1', '15', '1', '1', 255, 260, '30', '2022-02-28', 'Fincar. finasteride, 5-alpha reductase inhibitors, enlarged prostate, BPH, hair loss', 1),
(139, '382', 'Veltam 0.4', '86', 100, '31', '1', 15, '1', '117', '1', '1', 211, 206, '50', '2022-03-30', 'Veltam 0.4, tamsulosin hydrochloride, alpha blockers, BPH, enlarged prostate', 1),
(140, '453', 'AlfaPro-0.4', '86', 44, '31', '1', 10, '1', '117', '1', '1', 146, 150, '40', '2021-08-30', 'Alfapro 0.4, tamsulosin hydrochloride, alpha blockers, BPH, enlarged prostate', 1),
(141, '427', 'Atenol-50', '87', 21, '26', '1', 15, '1', '4', '1', '1', 56, 60, '50', '2021-06-30', 'Atenol 50, atenolol, anti hypertensive, beta blockers, hypertension', 1),
(142, '389', 'Olmat-40', '88', 17, '26', '1', 10, '1', '43', '1', '1', 245, 250, '60', '2021-01-30', 'Olmat-40, olmesartan, angiotensin receptor blockers, hypertension, anti hypertensive', 1),
(143, '394', 'Olmat-20', '88', 17, '26', '1', 10, '1', '53', '1', '1', 136, 141, '0', '2020-05-30', 'Olmat-20, olmesartan, angiotensin receptor blockers, hypertension, anti hypertensive', 1),
(144, '387', 'Clopilet', '89', 98, '32', '1', 15, '1', '23', '1', '1', 178, 182, '10', '2021-09-30', 'Clopilet, clopidogrel, ant', 1),
(145, '399', 'Clopid', '89', 21, '32', '1', 15, '1', '23', '1', '1', 160, 165, '10', '2021-08-30', 'Clopid, clopidogrel, anti- platelet, stroke', 1),
(146, '393', 'Myogrel-75', '89', 66, '32', '1', 10, '1', '23', '1', '1', 116, 110, '20', '2021-03-30', 'Myogrel-75, clopidogrel, anti- platelet, stroke', 1),
(147, '416', 'Metapro-XL 50', '63', 17, '26', '1', 15, '1', '118', '1', '1', 76, 80, '40', '2021-09-30', 'Metapro-XL 50, Metoprolol succinate/tartrate, anti hypertensive, beta blockers', 1),
(148, '414', 'Cardace-2.5', '90', 7, '26', '1', 15, '1', '16', '1', '1', 120, 125, '50', '2021-10-30', 'Cardace 2.5, ramipril, ACE inhibitors, anti hypertensive, hypertension', 1),
(149, '419', 'MINIL-20', '91', 24, '26', '1', 10, '1', '53', '1', '1', 28, 30, '80', '2021-03-30', 'Minil-20, propranolol hydrochloride, beta blockers, anti hypertensive, hypertension', 1),
(150, '461', 'PRAZOPRESS-XL-2.5', '92', 98, '26', '1', 30, '1', '16', '1', '1', 382, 388, '50', '2021-06-30', 'Prazopress XL 25, prazosin hydrochloride, anti hypertensive, alpha blockers, hypertension', 1),
(151, '413', 'MYOXIN-0.25', '93', 88, '33', '1', 10, '1', '94', '1', '1', 28, 30, '40', '2021-07-30', 'Digoxin, myoxin-0.25, cardiac glycoside, cardiac drugs, heart failure, irregular heartbeat', 1),
(152, '357', 'FORMET 1000 SR', '53', 12, '27', '1', 10, '1', '2', '1', '1', 56, 60, '80', '2021-05-30', 'Formet-1000SR, Metformin, Oral hypoglycemic drugs, anti diabetic drugs.', 1),
(153, '457', 'Ecosprin-75', '94', 40, '21', '1', 14, '1', '23', '1', '1', 6, 10, '80', '2021-07-30', 'Ecosprin-75, aspirin, NSAID, pain, inflammation', 1),
(154, '112', 'Delisprin75', '94', 39, '21', '1', 14, '1', '23', '1', '1', 6, 8, '30', '2020-10-30', 'Delisprin-75, aspirin, NSAID, pain, inflammation', 1),
(155, '36', 'Coflam ', '1', 6, '1', '1', 10, '1', '1', '1', '1', 9, 10, '100', '2022-02-01', 'ok xa ta testing done', 1),
(156, '248', 'IVER DT', '95', 91, '3', '1', 4, '1', '119', '1', '1', 85, 90, '100', '2021-05-30', 'Iver DT, ivermectin, anti-helminthic, anti parasite', 1),
(157, '157', 'ITCAN 50', '96', 19, '19', '1', 10, '1', '4', '2', '1', 65, 70, '80', '2021-07-30', 'ITCAN 50, itopride hydrochloride, gastritis, gastroprokinetic', 1),
(158, '411', 'Telma-40', '57', 49, '26', '1', 30, '1', '43', '1', '1', 345, 350, '80', '2021-04-30', 'Telma-40, telmisartan, anti hypertensive, ACE inhibitors.', 1),
(159, '44', 'Anasen-500 DR', '98', 24, '21', '1', 10, '1', '1', '2', '1', 96, 100, '80', '2021-07-30', 'Anasen-500 DR, naproxen, NSAID, anti-inflammatory, pain, arthritis', 1),
(160, '252', 'INAR-75', '97', 67, '21', '2', 10, '1', '23', '2', '1', 176, 180, '100', '2021-06-30', ' Inar-75, naproxen, NSAID, anti-inflammatory, pain, arthritis', 1),
(161, '466', 'MONKAST-10', '99', 44, '34', '1', 10, '1', '52', '1', '1', 176, 180, '100', '2021-08-30', 'Monkast-10, montelukast, anti asthmatic, leukotriene receptor antagonist, asthma', 1),
(162, '72', 'Devomine', '100', 12, '13', '1', 10, '1', '26', '2', '1', 46, 50, '100', '2022-10-30', 'Devomine, promethazine, anti-histamine, vomiting', 1),
(163, '54', 'Fenfex 180', '101', 8, '13', '1', 10, '1', '19', '2', '1', 160, 165, '200', '2021-10-30', 'Fenfex 180, fexofenadine, anti-histamine, allergy', 1),
(164, '25', 'Allegra', '101', 7, '13', '1', 10, '1', '18', '2', '1', 260, 270, '200', '2021-08-30', 'Allegra, Fexofenadine, Anti histamine, allergy', 1),
(165, '25', 'Allegra', '101', 7, '13', '1', 10, '1', '19', '2', '1', 300, 308, '200', '2021-06-30', 'Allegra, Fexofenadine, Anti histamine, allergy', 1),
(166, '501', 'Fenfex 120', '101', 8, '13', '1', 10, '1', '18', '2', '1', 130, 135, '10', '2020-10-30', 'Fenfex, Fexofenadine, Anti histamine, allergy', 1),
(167, '264', 'Feminine', '79', 93, '14', '1', 14, '1', '15', '1', '1', 136, 140, '200', '2021-05-30', 'Feminine, norethisterone, hormones, postpone delay periods', 1),
(168, '458', 'OMECID', '45', 121, '19', '2', 15, '1', '53', '2', '1', 56, 61, '100', '2020-12-30', 'Omecid, omeprazole, proton pump inhibitors, gastritis', 1),
(169, '213', 'ORNIDA', '30', 39, '2', '1', 10, '1', '1', '2', '1', 146, 149, '100', '2022-07-30', 'Ornida, ornidazole, antidiarrrheal, antibiotics, antiamebic, anti-protozoal, stomach upset', 1),
(170, '188', 'ACECLO SR', '44', 39, '21', '1', 10, '1', '6', '2', '1', 87, 83, '5', '2020-02-28', 'Aceclofenac, Aciclo SR, anti-inflammatory, analgesic, NSAID.', 1),
(171, '187', 'ACECLO', '44', 39, '21', '1', 10, '1', '5', '2', '1', 63, 65, '100', '2021-03-30', 'Aceclofenac, Aciclo, anti-inflammatory, analgesic, NSAID.', 1),
(172, '455', 'URELY', '102', 120, '8', '1', 10, '1', '6', '2', '1', 250, 256, '29', '2020-10-30', 'Urely, flavoxate hydrochloride, anti cholinergic, anti muscarinic, muscle relaxant, urinary incontinence', 1),
(173, '381', 'REPACE H', '105', 98, '26', '1', 10, '1', '124', '1', '1', 170, 175, '120', '2022-09-30', 'Repace H, Losartan potassium, Hydrochlorothiazide, anti hypertensive, ACE inhibitors, diuretics', 1),
(174, '4', 'Mylod - L', '103', 21, '26', '1', 15, '1', '121', '1', '1', 190, 185, '200', '2021-07-30', 'Mylod-L, amlodipine besilate, losartan potassium, calcium channel blockers, anti hypertensive, angiotensin receptor blockers, hypertension', 1),
(175, '356', 'Mylod AT', '104', 21, '26', '1', 15, '1', '121', '1', '1', 115, 120, '200', '2021-09-30', 'Mylod AT, amlodipine besylate, atenolol,beta blockers, anti hypertensive, hypertension.', 1),
(176, '258', 'ZORYL-M 1', '108', 100, '27', '1', 20, '1', '125', '1', '1', 270, 275, '100', '2022-06-30', 'Zoryl M1, Metformin Hydrochloride, Glimepiride, Oral hypoglycemic drugs, anti diabetic drugs, diabetes', 1),
(177, '407', 'Sartel H', '106', 100, '26', '1', 15, '1', '122', '1', '1', 331, 336, '100', '2021-06-30', 'Sartel H, telmisartan, Hydrochlorothiazide, anti hypertensive, ACE inhibitors, Diuretics.', 1),
(178, '383', 'Sartel AM', '107', 100, '26', '1', 15, '1', '123', '1', '1', 298, 302, '100', '2021-11-30', 'Sartel AM, telmisartan, amlodipine besylate, anti hypertensive, ACE inhibitors, calcium channel blockers, hypertension', 1),
(179, '377', 'Telma H', '106', 49, '26', '1', 100, '1', '122', '1', '1', 320, 325, '0', '2021-04-30', 'Telma H, telmisartan, hydrochlorothiazide, anti hypertensive, ACE inhibitors, hypertension, diuretic', 1),
(180, '463', 'TELMI-80', '57', 65, '26', '1', 15, '1', '116', '1', '1', 195, 200, '0', '2021-08-30', 'Telmi-80, telmisartan, anti hypertensive, ACE inhibitors, hypertension', 1),
(181, '375', 'ARBITEL-AM', '107', 17, '26', '1', 10, '1', '123', '1', '1', 190, 195, '10', '2021-04-30', 'Arbitel AM, telmisartan, amlodipine besylate, anti hypertensive, ACE inhibitors, calcium channel blockers, hypertension', 1),
(182, '410', 'Telma 80H', '106', 49, '26', '1', 15, '1', '128', '1', '1', 535, 540, '0', '2021-04-30', 'Telma 80-H, telmisartan, hydrochlorothiazide, anti hypertensive, ACE inhibitors, hypertension, diuretic', 1),
(183, '365', 'Siptin-M 850', '109', 21, '27', '1', 10, '1', '126', '1', '1', 265, 270, '50', '2021-12-30', 'Siptin-M 850, Sitagliptin, Metformin, anti diabetic, diabetes', 1),
(184, '465', 'Siptin-M 1000', '109', 21, '27', '1', 10, '1', '127', '1', '1', 275, 280, '50', '2021-12-30', 'Siptin-M 1000, Sitagliptin, Metformin, anti diabetic, diabetes', 1),
(185, '75', 'GLYCOMET-GP1', '108', 40, '27', '1', 15, '1', '125', '1', '1', 150, 155, '100', '2021-05-30', 'Glycomet-GP 1, Metformin Hydrochloride, Glimepiride, Oral hypoglycemic drugs, anti diabetic drugs, diabetes', 1),
(186, '360', 'GLYCOMET-GP 0.5', '108', 40, '27', '1', 10, '1', '129', '1', '1', 72, 76, '80', '2021-05-30', 'Glycomet-GP 0.5, Metformin Hydrochloride, Glimepiride, Oral hypoglycemic drugs, anti diabetic drugs, diabetes', 1),
(187, '359', 'KELZEM SR', '109', 66, '27', '1', 10, '1', '131', '1', '1', 255, 260, '50', '2021-02-28', 'Kelzem SR, Sitagliptin, Metformin, anti diabetic, diabetes', 1),
(188, '132', 'SITAMET-SR 500', '109', 65, '27', '1', 10, '1', '131', '1', '1', 255, 260, '100', '2022-01-30', 'Sitamet SR 500, Sitagliptin, Metformin, anti diabetic, diabetes', 1),
(189, '367', 'AMFAST-L', '103', 88, '26', '1', 10, '1', '121', '1', '1', 116, 120, '30', '2021-11-30', 'Amfast-L, amlodipine besilate, losartan potassium, calcium channel blockers, anti hypertensive, angiotensin receptor blockers, hypertension', 1),
(190, '396', 'Camlo-L', '103', 66, '26', '1', 10, '1', '121', '1', '1', 116, 120, '50', '2020-11-30', 'Camlo-L, amlodipine besilate, losartan potassium, calcium channel blockers, anti hypertensive, angiotensin receptor blockers, hypertension', 1),
(191, '422', 'Mylod-LH', '103', 21, '26', '1', 10, '1', '95', '1', '1', 86, 90, '50', '2022-02-28', 'Mylod-LH, amlodipine besilate, losartan potassium, calcium channel blockers, anti hypertensive, angiotensin receptor blockers, hypertension', 1),
(192, '379', 'AMLOD-L', '103', 65, '26', '1', 14, '1', '121', '1', '1', 165, 170, '50', '2021-10-30', 'Amlod-L, amlodipine besilate, losartan potassium, calcium channel blockers, anti hypertensive, angiotensin receptor blockers, hypertension', 1),
(193, '417', 'S-Amlong-2.5', '110', 17, '26', '1', 10, '1', '16', '1', '1', 75, 80, '5', '2020-06-30', 'S-Amlong 2.5, S-Amlodipine besilate, calcium channel blockers, anti hypertensive.', 1),
(194, '529', 'AMOL', '1', 16, '9', '1', 10, '1', '1', '3', '1', 9, 10, '2000', '2022-10-30', 'amol, paracetamol, cetamol, analgesic, anti pyretic, headache, fever, pain', 1),
(195, '31', 'Medomol 500', '1', 11, '9', '1', 10, '1', '1', '3', '1', 9, 10, '200', '2022-10-30', 'medomol, paracetamol, cetamol, analgesic, anti pyretic, headache, fever, pain', 1),
(196, '8', 'Flexon ', '13', 39, '21', '1', 15, '1', '1', '3', '1', 28, 30, '2000', '2022-09-30', 'Flexon, anti-inflammatory, paracetamol, Ibuprofen, analgesic, anti pyretic, headache, fever, pain, NSAID', 1),
(197, '8', 'Flexon ', '13', 39, '21', '3', 1, '20', '47', '3', '1', 30, 35, '100', '2022-11-30', 'Flexon syrup, anti-inflammatory, paracetamol, Ibuprofen, analgesic, anti pyretic, headache, fever, pain, NSAID', 1),
(198, '275', 'CETOPHEN', '1', 12, '9', '3', 1, '20', '36', '3', '1', 28, 30, '100', '2022-11-30', 'Cetophen, paracetamol, cetamol, analgesic, anti pyretic, headache, fever', 1),
(199, '274', 'WINMOL', '1', 70, '9', '3', 1, '20', '36', '3', '1', 28, 30, '300', '2021-08-30', 'Winmol, paracetamol, cetamol, analgesic, anti pyretic, headache, fever', 1),
(200, '273', 'Pacimol', '1', 42, '9', '3', 1, '20', '36', '3', '1', 28, 30, '100', '2021-08-30', 'Pacimol, paracetamol, cetamol, analgesic, anti pyretic, headache, fever', 1),
(201, '1', 'Niko', '1', 66, '9', '13', 1, '21', '37', '3', '1', 24, 25, '39', '2022-02-28', 'Niko drops, paracetamol, cetamol, analgesic, anti pyretic, headache, fever', 1),
(202, '325', 'Evalax', '111', 93, '12', '3', 1, '3', '90', '2', '1', 196, 200, '10', '2021-06-30', 'Evalax, Lactulose, Laxative, stool softener, constipation', 1),
(203, '405', 'GABANTIN 300', '112', 98, '36', '2', 10, '1', '50', '1', '1', 251, 256, '30', '2022-09-30', 'Gabantin 300, gabapentin, anti convulsant, anti-epileptic, neuropathic pain, seizures', 1),
(204, '120', 'ZENEGRA-50', '113', 60, '35', '1', 4, '1', '4', '10', '1', 140, 145, '70', '2021-02-28', 'Zenegra-50, Sildenafil, erectile dysfunction', 1),
(205, '250', 'LAXIT', '114', 24, '12', '1', 10, '1', '15', '13', '1', 28, 30, '30', '2021-09-30', 'Bisacodyl, Laxit, Laxative, stool softener, constipation', 1),
(206, '530', 'SIGAB-75', '115', 31, '36', '2', 10, '1', '23', '1', '1', 146, 150, '40', '2021-11-30', 'SIGAB-75, pregabalin, anti convulsant, anti-epileptic, neuropathic pain, seizures', 1),
(207, '192', 'Cosy', '116', 10, '20', '1', 10, '1', '52', '2', '1', 58, 60, '50', '2021-07-30', 'Cosy, domperidone, anti emetic, gastrokinetic, GERD, vomiting', 1),
(208, '531', 'SALMOL-4', '117', 19, '34', '1', 10, '1', '51', '1', '1', 19, 20, '22', '2022-07-30', 'Salmol 4, anti asthma, salbutamol, salbutamol sulphate', 1),
(209, '443', 'AMLOD-LH', '103', 65, '26', '1', 14, '1', '133', '1', '1', 95, 98, '140', '2021-04-30', 'amlod lh, amlodipine , losartan, anti hypertensive', 1),
(210, '532', 'TELMI-40', '57', 65, '26', '1', 10, '1', '43', '1', '1', 125, 130, '50', '2022-02-28', 'Telmi-40, telmisartan, anti hypertensive, ACE inhibitors, hypertension', 1),
(211, '254', 'AQUAZIDE 12.5', '120', 98, '6', '1', 10, '1', '58', '1', '1', 18, 19, '100', '2021-03-30', 'Hydrochlorothiazide, aquazide, diuritics, anti hypertensive', 1),
(212, '429', 'URIBID', '121', 100, '2', '1', 15, '1', '5', '2', '1', 275, 280, '60', '2021-04-30', 'uribid, nitrofurantin, antibiotic, uti ', 1),
(213, '190', 'Darolac', '122', 39, '37', '2', 10, '1', '134', '2', '1', 138, 142, '2', '2020-05-30', 'Darolac, probiotic, anti diarrheal, diarrhea', 1),
(214, '191', 'OLECIN-500', '123', 27, '2', '1', 10, '1', '1', '2', '1', 116, 120, '50', '2021-05-30', 'Olecin-500, levofloxacin, antibiotic, fluoroquinolone', 1),
(215, '201', 'ENZAR FORTE', '124', 87, '38', '1', 15, '1', '136', '2', '1', 160, 163, '100', '2021-11-30', 'Enzar Forte, indigestion, pancreatin, enzymes', 1),
(216, '68', 'Serpa-10', '125', 24, '38', '1', 10, '1', '52', '2', '1', 98, 100, '10', '2021-04-30', 'Serpa-10, Serratiopeptidase, enzymes, pain and inflammation', 1),
(217, '125', 'CLAVAM 625', '126', 60, '2', '1', 10, '1', '137', '3', '1', 300, 315, '60', '2021-02-28', 'Clavam 625, amoxicillin and potassium clavulanate, antibiotics, penicillin, infections', 1),
(218, '263', 'CLAVAM 375', '126', 60, '2', '1', 10, '1', '138', '3', '1', 300, 304, '5', '2020-10-30', 'Clavam 375, amoxicillin and potassium clavulanate, antibiotics, penicillin, infections', 1),
(219, '315', 'Mega-CV', '126', 39, '2', '4', 1, '20', '139', '3', '1', 180, 184, '30', '2021-07-30', 'Mega-CV, amoxicillin and potassium clavulanate, antibiotics, penicillin, infections', 1),
(220, '314', 'CLAVAM ', '126', 60, '2', '14', 1, '22', '140', '3', '1', 90, 94, '10', '2020-10-30', 'Clavam , amoxicillin and potassium clavulanate, antibiotics, penicillin, infections', 1),
(221, '316', 'INDCLAV BID', '126', 146, '2', '14', 1, '22', '139', '2', '1', 90, 95, '20', '2021-01-30', 'INDCLAV BID , amoxicillin and potassium clavulanate, antibiotics, penicillin, infections', 1),
(222, '262', 'SYNTRAN-200', '71', 23, '4', '2', 4, '1', '6', '1', '1', 295, 300, '50', '2021-06-30', 'Syntran-200, itraconazole, anti fungal, allergy.', 1),
(223, '86', 'Colicspam', '73', 46, '22', '11', 1, '19', '75', '2', '1', 47, 48, '10', '2022-02-28', 'Colicspam, dicyclomine, simethicone, anti spasmodic, abdominal pain, colic', 1),
(224, '76', 'Oricitral', '127', 41, '39', '3', 1, '3', '141', '3', '1', 92, 96, '20', '2021-08-30', 'Oricitral, disodium hydrogen citrate, alkalizer, UTI, burning micturition', 1),
(225, '162', 'Teracort', '128', 74, '14', '5', 1, '25', '143', '2', '5', 128, 130, '30', '2020-12-30', 'Teracort, hydrocortisone, hormones, steroid, swelling, itching', 1);

-- --------------------------------------------------------

--
-- Table structure for table `med_route`
--

CREATE TABLE `med_route` (
  `route_id` int(11) NOT NULL,
  `route_title` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `med_route`
--

INSERT INTO `med_route` (`route_id`, `route_title`) VALUES
(1, 'Per oral (PO)'),
(2, 'I.M or I.V. (Intra muscular or intra venous)'),
(3, 'SC (Sub cutaneous)'),
(4, 'PR (Per rectal)'),
(5, 'P-A-A (apply locally)'),
(6, 'I.M. (Intra Muscular)'),
(7, 'I.V. (Intra venous)'),
(8, 'Sub Liguial'),
(9, 'Per vegina (PV)');

-- --------------------------------------------------------

--
-- Table structure for table `med_strength`
--

CREATE TABLE `med_strength` (
  `strength_id` int(11) NOT NULL,
  `strength_title` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `med_strength`
--

INSERT INTO `med_strength` (`strength_id`, `strength_title`) VALUES
(1, '500 mg'),
(2, '1000 mg'),
(3, '250 mg'),
(4, '50 mg'),
(5, '100 mg'),
(6, '200 mg'),
(7, '400 mg'),
(8, '2000 mg'),
(9, '50 mcg'),
(10, '100 mcg'),
(15, '5 mg'),
(16, '2.5 mg'),
(17, '500+400 mg'),
(18, '120 mg'),
(19, '180 mg'),
(20, '50 mcg'),
(22, '0.5 mg'),
(23, '75 mg'),
(24, '0.2 mg'),
(25, '0.3mg'),
(26, '25mg'),
(27, '800mg'),
(33, '10gm'),
(34, '125mg'),
(36, '125mg/5 ml'),
(37, '150mg/ml'),
(38, '2.5mg/5ml'),
(39, '200mg/5ml'),
(40, '400mg/10ml'),
(41, '15 gm'),
(42, '5 gm'),
(43, '40 mg'),
(44, '150 mg'),
(45, '50mg/5ml'),
(46, '100mg/ 5ml'),
(47, '100+125mg/5ml'),
(48, '1 Percent W/V'),
(49, '250mg + 250mg'),
(50, '300 mg'),
(51, '4mg'),
(52, '10mg'),
(53, '20mg'),
(54, '1 Percent W/W'),
(55, '2mg'),
(56, '1mg'),
(57, '3mg'),
(58, '12.5mg'),
(59, '12.5mcg'),
(60, '1gm'),
(61, '2gm'),
(62, '1500mcg'),
(63, '100mg+1mg'),
(64, '850mg+50mg'),
(65, '850mg'),
(66, '1000mg+ 50mg'),
(67, '1mg+2.5mg+125mg/5ml'),
(68, '15mg+5mg+2mg/5ml'),
(69, '7.5mg+25 mg+1mg/5 ml'),
(70, '4mg+5mg+2mg/5 ml'),
(71, '2mg+4mg/5 ml'),
(72, '1.5 mg+ 4mg/5ml'),
(73, '2.5mg+8mg/5ml'),
(74, '30m+2m+1m+50m/5ml'),
(75, '10mg+40mg/5ml'),
(76, '10mg+40mg/ml'),
(77, '200mg+28.5mg/5 ml'),
(78, '2mg/5ml '),
(79, '100mg+125mg/5ml'),
(80, '2.5mg+1mg/ml'),
(81, '2.5mg+2mg/ml'),
(82, '7.5mg/ml'),
(83, '5mg/5ml '),
(84, '250mg+ 250mg+50mg/5ml'),
(85, '800mg+50mg+20mg/10 ml'),
(86, '0.65 percent W/V'),
(87, '0.01mg/ml'),
(88, '0.025/ml'),
(89, '0.05mg/ml'),
(90, '10gm/15ml'),
(91, '5 mg+50mg'),
(92, '50mg+12.5mg'),
(93, '2.5mg+25mg'),
(94, '0.25mg'),
(95, '5mg+25mg'),
(96, '500mg+50mg'),
(97, '500mg+1mg'),
(98, '500mg+0.5mg'),
(99, '50mg+20mg'),
(101, '40mg+30mg'),
(102, '1L-AU'),
(103, '500mg+400mg'),
(104, '250mg+500mg'),
(105, '4mg+10mg+500mg'),
(106, '250mg+250mg'),
(107, '25mcg'),
(108, '75mcg'),
(109, '100mg+150mg'),
(110, '30mcg+150mcg'),
(111, '0.03mg+0.15mg'),
(112, '0.15mg+0.03mg+75mg'),
(113, '100mg+1.5mg'),
(115, '100mg+0.95mg+22.5mg'),
(116, '80mg'),
(117, '0.4mg'),
(118, '47.5mg+50mg'),
(119, '6mg'),
(120, '2.5mg+25mg'),
(121, '5mg+50mg'),
(122, '40mg+12.5mg'),
(123, '40mg+5mg'),
(124, '50mg+12.5mg'),
(125, '500mg+1mg'),
(126, '50mg+850mg'),
(127, '50 mg+1000mg'),
(128, '80mg+12.5mg'),
(129, '500mg+0.5mg'),
(130, '50mg '),
(131, '50mg+500mg'),
(132, '400mg+325mg'),
(133, '2.5+ 25 mg'),
(134, '2.5 billion cells'),
(135, '170 mg '),
(136, '170 mg + 65 mg'),
(137, '500mg + 125mg'),
(138, '250mg + 125mg'),
(139, '200mg + 28.5mg per 5ml'),
(140, '125mg + 31.25mg per 5ml'),
(141, '1.38 g'),
(143, '1.0 %'),
(145, '37% + 13% + 13% + 13% + 11% + 6.50% + 6% + 0.50%'),
(146, '10 mg + 0.075 mg'),
(147, '4 mg + 0.06 mg'),
(148, '0.1% + 0.5% + 0.005%'),
(149, '14 mg + 6 mg + 5 mg'),
(150, '0.3% + 0.02%'),
(151, '0.5% + 0.005%'),
(152, '0.457% + 0.3% + 0.02%'),
(153, '0.4% + 0.5%'),
(154, '0.3mg + 2.5mg + 0.02mg'),
(155, '0.12% + 0.05% + 0.005% + 0.01% + 0.01%'),
(156, '1% + 2%'),
(157, '0.3% + 0.01%'),
(158, '2% + 2.7% + 5% + 15%'),
(159, '1% + 0.01%');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `order_pro_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `trx_id` varchar(255) NOT NULL,
  `p_status` varchar(20) NOT NULL,
  `received_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `orders_info`
--

CREATE TABLE `orders_info` (
  `order_id` int(10) NOT NULL,
  `user_id` int(11) NOT NULL,
  `f_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `zip` int(10) NOT NULL,
  `cardname` varchar(255) NOT NULL,
  `cardnumber` varchar(20) NOT NULL,
  `expdate` varchar(255) NOT NULL,
  `prod_count` int(15) DEFAULT NULL,
  `total_amt` int(15) DEFAULT NULL,
  `cvv` int(5) NOT NULL,
  `order_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `order_declined`
--

CREATE TABLE `order_declined` (
  `id` int(11) NOT NULL,
  `order_pro_id` int(11) NOT NULL,
  `declined_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `order_delivered`
--

CREATE TABLE `order_delivered` (
  `id` int(11) NOT NULL,
  `order_pro_id` int(11) NOT NULL,
  `delivered_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order_delivered`
--

INSERT INTO `order_delivered` (`id`, `order_pro_id`, `delivered_date`) VALUES
(9, 115, '2020-05-23 07:14:59');

-- --------------------------------------------------------

--
-- Table structure for table `order_prepared`
--

CREATE TABLE `order_prepared` (
  `id` int(11) NOT NULL,
  `order_pro_id` int(11) NOT NULL,
  `prep_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order_prepared`
--

INSERT INTO `order_prepared` (`id`, `order_pro_id`, `prep_date`) VALUES
(17, 115, '2020-05-23 07:14:29');

-- --------------------------------------------------------

--
-- Table structure for table `order_products`
--

CREATE TABLE `order_products` (
  `order_pro_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `qty` int(15) DEFAULT NULL,
  `amt` int(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `order_transit`
--

CREATE TABLE `order_transit` (
  `id` int(11) NOT NULL,
  `order_pro_id` int(11) NOT NULL,
  `transit_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order_transit`
--

INSERT INTO `order_transit` (`id`, `order_pro_id`, `transit_date`) VALUES
(10, 115, '2020-05-23 07:14:44');

-- --------------------------------------------------------

--
-- Table structure for table `product_images`
--

CREATE TABLE `product_images` (
  `img_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_image` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product_images`
--

INSERT INTO `product_images` (`img_id`, `product_id`, `product_image`) VALUES
(47, 49, '1589013418_Nims_100_1.jpeg'),
(48, 49, '1589012778_Nims_100_2.jpeg'),
(49, 49, '1589012820_Nims_100_0.jpeg'),
(50, 49, '1589012830_Nims_100_3.jpeg'),
(52, 29, '1589634818_PGUT_40_0.jpeg'),
(53, 29, '1589634841_PGUT_40_1.jpeg'),
(54, 29, '1589634862_PGUT_40_2.jpeg'),
(55, 50, '1589634956_Meftal_500_1.jpeg'),
(56, 50, '1589635003_Meftal_500_0.jpeg'),
(57, 50, '1589635028_Meftal_500_2.jpeg'),
(58, 30, '1589718844_pantop_40_0.jpeg'),
(59, 30, '1589718873_Pantop_40_1.jpeg'),
(60, 30, '1589719132_Pantop_40_2.jpeg'),
(61, 30, '1589719133_Pantop_40_2.jpeg'),
(62, 18, '1589719631_Almox_500_0.jpeg'),
(63, 18, '1589719641_Almox_500_1.jpeg'),
(64, 18, '1589719650_Almox_500_2.jpeg'),
(65, 18, '1589719843_Almox_500_3.jpeg'),
(66, 15, '1589720396_Flubact_500_0.jpeg'),
(67, 15, '1589720406_Flubact_500_1.jpeg'),
(68, 15, '1589720421_Flubact_500_2.jpeg'),
(69, 19, '1589721308_Perimos_500_2.jpeg'),
(70, 19, '1589721335_Perimox_500_3.jpeg'),
(71, 19, '1589721347_Perimox_500_1.jpeg'),
(72, 19, '1589721485_Perimox_500_0.jpeg'),
(73, 25, '1589778368_Monoral_50_0.jpeg'),
(74, 25, '1589778419_Monoral_50_1.jpeg'),
(75, 26, '1589778464_Monoral_100_1.jpeg'),
(76, 26, '1589778502_Monoral_100_0.jpeg'),
(77, 20, '1589778747_Amox_CLT_syp_0.jpeg'),
(78, 20, '1589778756_Amox_CTL_sype_1.jpeg'),
(79, 22, '1589778819_Aciloc_150_0.jpeg'),
(80, 22, '1589778828_Aciloc_150_1.jpeg'),
(81, 21, '1589779199_Supramox_syp_0.jpeg'),
(82, 21, '1589779212_Supramox_syp_1.jpeg'),
(83, 22, '1589779296_Aciloc_150_2.jpeg'),
(84, 28, '1589779656_Pandip_40_0.jpeg'),
(85, 28, '1589779665_Pandip_40_2.jpeg'),
(86, 28, '1589779679_Pandip_40_1.jpeg'),
(87, 27, '1589779760_Clovir_800_0.jpeg'),
(88, 27, '1589779774_Clovir_800_1.jpeg'),
(89, 27, '1589779786_Clovir_800_2.jpeg'),
(90, 33, '1589780080_Ornado_500_0.jpeg'),
(91, 33, '1589780089_Ornado_500_1.jpeg'),
(92, 33, '1589780097_Ornado_500_2.jpeg'),
(93, 35, '1589780337_Mecozole_400_0.jpeg'),
(94, 35, '1589780356_Mecozole_400_1.jpeg'),
(95, 35, '1589780378_Mecozole_400_2.jpeg'),
(96, 34, '1589780499_Ciprobid_500_2.jpeg'),
(97, 34, '1589780515_Cprobid_500_1.jpeg'),
(98, 34, '1589780533_Ciprobid_500_0.jpeg'),
(99, 32, '1589781089_Candid_mouthPaint_0.jpeg'),
(100, 32, '1589781109_Candid_mouthpaint_1.jpeg'),
(101, 31, '1589781187_Acitop_40_1.jpeg'),
(102, 31, '1589781202_Acitop_40_2.jpeg'),
(103, 31, '1589781224_Acitop_40_0.jpeg'),
(104, 36, '1589781302_Azithrox_250_2.jpeg'),
(105, 36, '1589781364_Azithrox_250_1.jpeg'),
(106, 36, '1589781381_Azithrox_250_0.jpeg'),
(107, 37, '1589781438_Bilin_500_0.jpeg'),
(108, 37, '1589781448_Bilin_500_0.jpeg'),
(109, 37, '1589781512_Bilin_500_1.jpeg'),
(110, 37, '1589781521_Bilin_500_2.jpeg'),
(111, 44, '1589781647_Trocet_5_1.jpeg'),
(112, 44, '1589781658_Trocet_5_0.jpeg'),
(113, 44, '1589781678_Torcet_5_2.jpeg'),
(114, 38, '1589781734_Forcef_500_1.jpeg'),
(115, 38, '1589781744_Forcef_500_2.jpeg'),
(116, 38, '1589781752_Forcef_500_0.jpeg'),
(117, 39, '1589781894_Sez_1000_1.jpeg'),
(118, 39, '1589781924_Sez_1000_2.jpeg'),
(119, 39, '1589781945_Sez+1000+0.jpeg'),
(120, 45, '1589781988_Defolen_100_1.jpeg'),
(121, 45, '1589782015_Defolen_100_0.jpeg'),
(122, 45, '1589782036_Defolen_100_2.jpeg'),
(123, 40, '1589782215_Clinbact_300_2.jpeg'),
(124, 40, '1589782225_Clinbact_300_0.jpeg'),
(125, 40, '1589782235_Clinbact_300_1.jpeg'),
(126, 40, '1589782253_Clinbact_300_0.jpeg'),
(127, 43, '1589782346_CTZ_10_0.jpeg'),
(128, 43, '1589782360_CTZ_10_1.jpeg'),
(129, 43, '1589782373_CTZ_10_2.jpeg'),
(130, 41, '1589782444_Tindamax_500_0.jpeg'),
(131, 41, '1589782470_Tindamax_500_1.jpeg'),
(132, 41, '1589782479_Tindamax_500_2.jpeg'),
(133, 42, '1589782570_Ontron_4_0.jpeg'),
(134, 42, '1589782579_Ontron_4_1.jpeg'),
(135, 42, '1589782587_Ontron_4_2.jpeg'),
(136, 219, '1590138198_Megs_CV_DrySyrup_1.jpeg'),
(137, 219, '1590138305_Mega_CV_DrySyrup_0.jpeg'),
(138, 52, '1590138575_Dexin_10_0.jpeg'),
(139, 52, '1590138585_Deixin_10_2.jpeg'),
(140, 52, '1590138592_Dexin_10_1.jpeg'),
(141, 220, '1590138623_Clavam_drysyrup_1.jpeg'),
(142, 220, '1590138629_Clavan_drySyrup_0.jpeg'),
(143, 55, '1590138688_Formin-1000-sr-2.jpeg'),
(144, 55, '1590138697_Formin-sr-1000-1.jpeg'),
(145, 55, '1590138704_Formin-Sr-1000_0.jpeg'),
(146, 53, '1590138731_Prelon-10-1.jpeg'),
(147, 53, '1590138738_Prelon-10_0.jpeg'),
(148, 53, '1590138746_Prelon-10-2.jpeg'),
(149, 48, '1590138781_Omcap-20-1.jpeg'),
(150, 48, '1590138790_OmCap-20-2.jpeg'),
(151, 48, '1590138796_OmeCap-20-0.jpeg'),
(152, 51, '1590139581_DAcne.jpeg'),
(153, 51, '1590139588_DAcne-1.jpeg'),
(154, 61, '1590139826_Thyronorm_100_0.jpeg'),
(155, 59, '1590139848_Thyronorm12.5_0.jpeg'),
(156, 57, '1590139875_Thyronorm_25_0.jpeg'),
(157, 56, '1590139894_Thyronorm_50_0.jpeg'),
(158, 54, '1590140006_amlod_5_1.jpeg'),
(159, 54, '1590140012_Amlod_5_0.jpeg'),
(160, 54, '1590140016_Amlod_5_2.jpeg'),
(161, 66, '1590140235_Mitel_40_0.jpeg'),
(162, 66, '1590140245_Mitel_40_1.jpeg'),
(163, 66, '1590140254_Mitel_40_2.jpeg'),
(164, 64, '1590140289_Obichek_500_2.jpeg'),
(165, 64, '1590140297_Obichek_50_1.jpeg'),
(166, 64, '1590140305_Obichek_500_0.jpeg'),
(167, 63, '1590140338_Reform_1000-SR-_1.jpeg'),
(168, 63, '1590140350_Reform_1000_SR_0.jpeg'),
(169, 63, '1590140358_Reform_1000-SR_2.jpeg'),
(170, 221, '1590140388_Indclav-bid-dry-syrup-1.jpeg'),
(171, 221, '1590140393_Indclav_BID_0.jpeg'),
(172, 67, '1590140480_Routine_5_0.jpeg'),
(173, 67, '1590140500_Routine_5_1.jpeg'),
(174, 67, '1590140520_Routine_5_2.jpeg'),
(175, 65, '1590140573_Alpine_5_0.jpeg'),
(176, 65, '1590140594_Alpine_5_1.jpeg'),
(177, 65, '1590140605_Alpine_5_2.jpeg'),
(178, 58, '1590145360_Spril_25_0.jpeg'),
(179, 58, '1590145374_Spril_25_1.jpeg'),
(180, 58, '1590145394_Spril_25_2.jpeg'),
(181, 62, '1590145723_Avas_20_2.jpeg'),
(182, 62, '1590145729_Avas_20_1.jpeg'),
(183, 62, '1590145733_Avas_20_0.jpeg'),
(184, 60, '1590145917_Thyronorm_75_0.jpeg'),
(185, 79, '1590146765_Eloz_100_1.jpeg'),
(186, 79, '1590146772_Eloz_100_0.jpeg'),
(187, 79, '1590146778_Eloz_100_2.jpeg'),
(188, 78, '1590146904_mecobal_1.5_0.jpeg'),
(189, 78, '1590146910_mecobal_1.5_1.jpeg'),
(190, 78, '1590146916_mecobal_1.5_2.jpeg'),
(191, 72, '1590147048_Gluride_2_0.jpeg'),
(192, 72, '1590147054_Gluride_2_1.jpeg'),
(193, 72, '1590147059_Gluride_2_2.jpeg'),
(194, 69, '1590147081_Q_Pil_2.5_0.jpeg'),
(195, 69, '1590147085_Q_Pil_2.5_1.jpeg'),
(196, 73, '1590147166_ifol_0.jpeg'),
(197, 73, '1590147171_ifol_1.jpeg'),
(198, 73, '1590147175_ifol_2.jpeg'),
(199, 70, '1590147266_Glibose_0.3_0.jpeg'),
(200, 70, '1590147275_Glibose_0.3_1.jpeg'),
(201, 70, '1590147280_Glibose_0.3_2.jpeg'),
(202, 68, '1590147360_repace_50_0.jpeg'),
(203, 68, '1590147365_repace_50_1.jpeg'),
(204, 68, '1590147369_repace_50_2.jpeg'),
(205, 77, '1590147460_my_vit_c_0.jpeg'),
(206, 77, '1590147468_my_vit_c_1.jpeg'),
(207, 75, '1590147645_Tranov_500_0.jpeg'),
(208, 75, '1590147657_Tranov_500_1.jpeg'),
(209, 74, '1590147683_Tranostat_1.jpeg'),
(210, 74, '1590147708_Tranostat_0.jpeg'),
(211, 71, '1590147729_Metloc_12.5_1.jpeg'),
(212, 71, '1590147744_Metloc_12.5_2.jpeg'),
(213, 71, '1590147765_Metloc_12.5_0.jpeg'),
(214, 81, '1590147888_spas_10_1.jpeg'),
(215, 81, '1590147894_spas_10_2.jpeg'),
(216, 81, '1590147899_spas_10_0.jpeg'),
(217, 86, '1590148486_Pasmodin_drop_0.jpeg'),
(218, 86, '1590148495_Pasmodin_Drop_1.jpeg'),
(219, 84, '1590148523_Cyclopam_syspension_0.jpeg'),
(220, 85, '1590148545_Cyclopam_drop_0.jpeg'),
(221, 85, '1590148553_Cyclopam_drop_1.jpeg'),
(222, 88, '1590148590_Bustop_fort_0.jpeg'),
(223, 88, '1590148599_Bustop_fort_1.jpeg'),
(224, 88, '1590148614_Bustop_fort_2.jpeg'),
(225, 82, '1590148633_Belaspan_10_0.jpeg'),
(226, 82, '1590148640_Belaspan_01.jpeg'),
(227, 82, '1590148644_Belaspan_02.jpeg'),
(228, 91, '1590148673_Fluz_01.jpeg'),
(229, 91, '1590148682_Fluz_02.jpeg'),
(230, 91, '1590148688_Fluz_03.jpeg'),
(231, 83, '1590148713_Spaspain_0.jpeg'),
(232, 83, '1590148720_Spaspain_1.jpeg'),
(233, 83, '1590148728_Spaspain_2.jpeg'),
(234, 92, '1590148763_Oneda_500_02.jpeg'),
(235, 90, '1590149072_Syntran_100_0.jpeg'),
(236, 90, '1590149078_Syntran_100_1.jpeg'),
(237, 90, '1590149084_Syntran_100_2.jpeg'),
(238, 93, '1590149752_Zitop_20DT_0.jpeg'),
(239, 93, '1590149760_Zitop_20DT_1.jpeg'),
(240, 93, '1590149765_Zitop_20_DT2.jpeg'),
(241, 84, '1590149876_Cyclopam_Suspension_1.jpeg'),
(242, 222, '1590151443_Syntran_200_0.jpeg'),
(243, 222, '1590151449_Syntran_200_1.jpeg'),
(244, 222, '1590151455_Syntran_200_3.jpeg'),
(245, 46, '1590151495_Amace_100_1.jpeg'),
(246, 87, '1590151542_Shelcal_500_2.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `user_info`
--

CREATE TABLE `user_info` (
  `user_id` int(10) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `email` varchar(300) NOT NULL,
  `password` varchar(300) NOT NULL,
  `mobile` varchar(10) NOT NULL,
  `address1` varchar(300) NOT NULL,
  `address2` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_info`
--

INSERT INTO `user_info` (`user_id`, `first_name`, `last_name`, `email`, `password`, `mobile`, `address1`, `address2`) VALUES
(15, 'Ravi', 'Voldy', 'ravi.voldy@gmail.com', '123456789', '9803941444', 'Bayavu coloni, Kohima', 'North East'),
(26, 'Man', 'Bahadur', 'man@gmail.com', 'pokhara123', '9898989898', 'Pokhara', 'Gandaki'),
(27, 'Rem ', 'Pandey', 'rem@gmail.com', 'pokhara123', '9804164176', 'Pokhara', 'Gandaki');

--
-- Triggers `user_info`
--
DELIMITER $$
CREATE TRIGGER `after_user_info_insert` AFTER INSERT ON `user_info` FOR EACH ROW BEGIN 
INSERT INTO user_info_backup VALUES(new.user_id,new.first_name,new.last_name,new.email,new.password,new.mobile,new.address1,new.address2);
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `user_info_backup`
--

CREATE TABLE `user_info_backup` (
  `user_id` int(10) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `email` varchar(300) NOT NULL,
  `password` varchar(300) NOT NULL,
  `mobile` varchar(10) NOT NULL,
  `address1` varchar(300) NOT NULL,
  `address2` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_info_backup`
--

INSERT INTO `user_info_backup` (`user_id`, `first_name`, `last_name`, `email`, `password`, `mobile`, `address1`, `address2`) VALUES
(12, 'Ravi', 'Voldy', 'ravi,voldy@gmail.com', '123456789', '9803941444', 'Pokhara', 'Gandaki'),
(14, 'Madhu Sudhan', 'Dahal', 'mdahal143@gmail.com', '123456788', '9856063144', 'Ranigunj', 'Sarlahi'),
(17, 'Roma', 'Dahal', 'roma@gmail.com', 'pokhara123', '9846026811', 'Lakeside, Pokhara', 'Street no46'),
(18, 'Sulochana', 'Karki', 'sulo@gmail.com', '123456', '9856026811', 'Pokhara', 'Nepal'),
(19, 'Sunil', 'Dahal', 's@gmail.com', 'pokhara123', '1234567890', 'Ranigunj', 'Sarlahi'),
(20, 'Sunita', 'Adhikari', 'sunita@gmail.com', 'pokhara123', '9846053772', 'Lekhnath', 'Pokhara'),
(21, 'Richa', 'Gyawali', 'richupichu25@gmail.com', 'pakalamanu', '9806725898', 'Lakeside, Nepal', 'Pokhara'),
(22, 'Alu', 'Paddhe', 'alu@padhe.jad', 'pokhara123', '9898989898', 'Pokhara', 'Lakeside'),
(23, 'Ok', 'Sungh', 'ok@gmail.com', 'pokhara123', '9898989898', 'Pokhara', 'Gandaki'),
(24, 'Ok', 'Xa ta', 'ku@g.com', '123456789', '9898989898', 'Pokhara', 'Lakeside, D'),
(25, 'With success', 'message', 'success@gmail.com', 'pokhara123', '9898989898', 'Pokhara', 'Lakeside, D'),
(26, 'Man', 'Mani', 'man@gmail.com', 'pokhara123', '9898989898', 'Pokhara', 'Gandaki'),
(27, 'Rem ', 'Pandey', 'rem@gmail.com', 'pokhara123', '9804164176', 'Pokhara', 'Gandaki'),
(28, 'Payel ', 'Dev', 'payal@gmail.com', 'pokhara123', '9865055656', 'Ranipahad', 'Ilahabad');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_info`
--
ALTER TABLE `admin_info`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`brand_id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `company`
--
ALTER TABLE `company`
  ADD PRIMARY KEY (`company_id`);

--
-- Indexes for table `email_info`
--
ALTER TABLE `email_info`
  ADD PRIMARY KEY (`email_id`);

--
-- Indexes for table `logs`
--
ALTER TABLE `logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `med_frequency`
--
ALTER TABLE `med_frequency`
  ADD PRIMARY KEY (`frequency_id`);

--
-- Indexes for table `med_generic`
--
ALTER TABLE `med_generic`
  ADD PRIMARY KEY (`gen_id`);

--
-- Indexes for table `med_packaging`
--
ALTER TABLE `med_packaging`
  ADD PRIMARY KEY (`pack_id`);

--
-- Indexes for table `med_preparation`
--
ALTER TABLE `med_preparation`
  ADD PRIMARY KEY (`preparation_id`);

--
-- Indexes for table `med_products`
--
ALTER TABLE `med_products`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `med_route`
--
ALTER TABLE `med_route`
  ADD PRIMARY KEY (`route_id`);

--
-- Indexes for table `med_strength`
--
ALTER TABLE `med_strength`
  ADD PRIMARY KEY (`strength_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders_info`
--
ALTER TABLE `orders_info`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `order_declined`
--
ALTER TABLE `order_declined`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_delivered`
--
ALTER TABLE `order_delivered`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_prepared`
--
ALTER TABLE `order_prepared`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_products`
--
ALTER TABLE `order_products`
  ADD PRIMARY KEY (`order_pro_id`),
  ADD KEY `order_products` (`order_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `order_transit`
--
ALTER TABLE `order_transit`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_images`
--
ALTER TABLE `product_images`
  ADD PRIMARY KEY (`img_id`);

--
-- Indexes for table `user_info`
--
ALTER TABLE `user_info`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `user_info_backup`
--
ALTER TABLE `user_info_backup`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_info`
--
ALTER TABLE `admin_info`
  MODIFY `admin_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `brand_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=537;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=472;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `cat_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `company`
--
ALTER TABLE `company`
  MODIFY `company_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=149;

--
-- AUTO_INCREMENT for table `email_info`
--
ALTER TABLE `email_info`
  MODIFY `email_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `logs`
--
ALTER TABLE `logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `med_frequency`
--
ALTER TABLE `med_frequency`
  MODIFY `frequency_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `med_generic`
--
ALTER TABLE `med_generic`
  MODIFY `gen_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=144;

--
-- AUTO_INCREMENT for table `med_packaging`
--
ALTER TABLE `med_packaging`
  MODIFY `pack_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `med_preparation`
--
ALTER TABLE `med_preparation`
  MODIFY `preparation_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `med_products`
--
ALTER TABLE `med_products`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=227;

--
-- AUTO_INCREMENT for table `med_route`
--
ALTER TABLE `med_route`
  MODIFY `route_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `med_strength`
--
ALTER TABLE `med_strength`
  MODIFY `strength_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=160;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT for table `order_declined`
--
ALTER TABLE `order_declined`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `order_delivered`
--
ALTER TABLE `order_delivered`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `order_prepared`
--
ALTER TABLE `order_prepared`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `order_products`
--
ALTER TABLE `order_products`
  MODIFY `order_pro_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=177;

--
-- AUTO_INCREMENT for table `order_transit`
--
ALTER TABLE `order_transit`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `product_images`
--
ALTER TABLE `product_images`
  MODIFY `img_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=247;

--
-- AUTO_INCREMENT for table `user_info`
--
ALTER TABLE `user_info`
  MODIFY `user_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
