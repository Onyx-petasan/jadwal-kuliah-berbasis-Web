/*
Navicat MySQL Data Transfer

Source Server         : App
Source Server Version : 50717
Source Host           : localhost:3306
Source Database       : db_transit

Target Server Type    : MYSQL
Target Server Version : 50717
File Encoding         : 65001

Date: 2018-09-20 00:29:46
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for tb_admin
-- ----------------------------
DROP TABLE IF EXISTS `tb_admin`;
CREATE TABLE `tb_admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(30) NOT NULL,
  `password` varchar(50) NOT NULL,
  `nama` varchar(32) NOT NULL,
  `level` varchar(10) NOT NULL,
  `foto` varchar(120) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tb_admin
-- ----------------------------
INSERT INTO `tb_admin` VALUES ('1', 'admin', 'admin', 'Nanang Maulana armand', 'admin', '');
INSERT INTO `tb_admin` VALUES ('22', 'ananto', 'e5ea9b6d71086dfef3a15f726abcc5bf', 'ananto', 'Pilih Jaba', '');

-- ----------------------------
-- Table structure for tb_dosen
-- ----------------------------
DROP TABLE IF EXISTS `tb_dosen`;
CREATE TABLE `tb_dosen` (
  `id_dosen` int(11) NOT NULL AUTO_INCREMENT,
  `id_prodi` varchar(2) NOT NULL,
  `nip` varchar(15) NOT NULL,
  `dosen` varchar(100) NOT NULL,
  `hp` varchar(13) NOT NULL,
  `alamat` varchar(250) NOT NULL,
  PRIMARY KEY (`id_dosen`)
) ENGINE=InnoDB AUTO_INCREMENT=104 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tb_dosen
-- ----------------------------
INSERT INTO `tb_dosen` VALUES ('19', '33', '3301', 'Prof. Adhi S, M.Sc.,Ph.D.', '', '');
INSERT INTO `tb_dosen` VALUES ('20', '33', '3302', 'Fatsyahrina F, S.Si, M.T.', '', '');
INSERT INTO `tb_dosen` VALUES ('21', '33', '3303', 'Sofyan L,S. Kom., M.Kom.', '', '');
INSERT INTO `tb_dosen` VALUES ('22', '33', '3304', 'Drs. Rusdy A, M. Kom.', '', '');
INSERT INTO `tb_dosen` VALUES ('23', '33', '3305', 'Abba S.G., S.T., M.Cs.', '', '');
INSERT INTO `tb_dosen` VALUES ('24', '33', '3306', 'Eri Haryanto, S.Kom.', '', '');
INSERT INTO `tb_dosen` VALUES ('25', '33', '3307', 'Jemmy E.B., S.Kom., M.Eng.', '', '');
INSERT INTO `tb_dosen` VALUES ('26', '33', '3308', 'Jeffry A.P, S.T., M.M.', '', '');
INSERT INTO `tb_dosen` VALUES ('27', '33', '3309', 'Ryan A.S, S.Kom., M.Eng.', '', '');
INSERT INTO `tb_dosen` VALUES ('28', '33', '3310', 'Eko P., S.Si., M.T.', '', '');
INSERT INTO `tb_dosen` VALUES ('29', '33', '3311', 'Yumarlin MZ, S.Kom., M.Pd.', '', '');
INSERT INTO `tb_dosen` VALUES ('30', '33', '3312', 'Agustin S., S.Kom.', '', '');
INSERT INTO `tb_dosen` VALUES ('31', '33', '3313', 'Erry M Oki N., S.Kom.', '', '');
INSERT INTO `tb_dosen` VALUES ('32', '33', '3314', 'Sri R., S.Kom.', '', '');
INSERT INTO `tb_dosen` VALUES ('33', '31', '3101', 'Dr.Ir. H. Suharjanto, MSCE', '', '');
INSERT INTO `tb_dosen` VALUES ('34', '31', '3102', 'Dr. Ir. Edy S, M.T.', '', '');
INSERT INTO `tb_dosen` VALUES ('35', '31', '3103', 'Dr. Nindyo C.K, S.T., M.T.', '', '');
INSERT INTO `tb_dosen` VALUES ('36', '31', '3104', 'Ir. Ilham P, M.T.', '', '');
INSERT INTO `tb_dosen` VALUES ('37', '31', '3105', 'Dr. Tania E.B, S.T.,  M.T.', '', '');
INSERT INTO `tb_dosen` VALUES ('38', '31', '3106', 'Dr. Suwartanti, S.T., M.Sc.', '', '');
INSERT INTO `tb_dosen` VALUES ('39', '31', '3107', 'Arusmalem G, S.T., M.T.', '', '');
INSERT INTO `tb_dosen` VALUES ('40', '31', '3108', 'Ir. Bing S, M.T.', '', '');
INSERT INTO `tb_dosen` VALUES ('41', '31', '3109', 'Risdiyanto, S.T., M.T.', '', '');
INSERT INTO `tb_dosen` VALUES ('42', '31', '3110', 'Titiek W, S.T., M.T.', '', '');
INSERT INTO `tb_dosen` VALUES ('43', '31', '3111', 'Prasetya A, S.T., M.T.', '', '');
INSERT INTO `tb_dosen` VALUES ('46', '31', '3112', 'Ir. Subiantoro, M.T.', '', '');
INSERT INTO `tb_dosen` VALUES ('47', '32', '3201', 'Drs. Sukoco, M.Pd., MT.', '', '');
INSERT INTO `tb_dosen` VALUES ('49', '33', '3316', 'Yoseph K, SFK., M.Pd.', '', '');
INSERT INTO `tb_dosen` VALUES ('50', '33', '3317', 'Endang S., SH., H.Hum.', '', '');
INSERT INTO `tb_dosen` VALUES ('51', '33', '3318', 'Yayat H, S.Pd.I., M.Ag.', '', '');
INSERT INTO `tb_dosen` VALUES ('52', '33', '3319', 'Petrus S.W, MA', '', '');
INSERT INTO `tb_dosen` VALUES ('53', '33', '3320', 'Zulisi', '', '');
INSERT INTO `tb_dosen` VALUES ('54', '32', '3202', 'Ir. Supriyanto, MT.', '', '');
INSERT INTO `tb_dosen` VALUES ('55', '32', '3203', 'Ir. Juriah M, M.Sc.', '', '');
INSERT INTO `tb_dosen` VALUES ('56', '32', '3204', 'Ir. Syahril M, M.MT.', '', '');
INSERT INTO `tb_dosen` VALUES ('57', '32', '3205', 'Ir. Ismanto', '', '');
INSERT INTO `tb_dosen` VALUES ('58', '32', '3206', 'Joko W, ST., M.Eng.', '', '');
INSERT INTO `tb_dosen` VALUES ('59', '32', '3207', 'Sri Gati H, ST., MT.', '', '');
INSERT INTO `tb_dosen` VALUES ('60', '32', '3208', 'Sukamto, ST., MT.', '', '');
INSERT INTO `tb_dosen` VALUES ('61', '32', '3209', 'Yoseph K, ST.,MT.', '', '');
INSERT INTO `tb_dosen` VALUES ('62', '32', '3210', 'Petrus S. W., MA', '', '');
INSERT INTO `tb_dosen` VALUES ('63', '32', '3211', 'Eko P., Ssi., MT.', '', '');
INSERT INTO `tb_dosen` VALUES ('64', '32', '3212', 'Untoro B. S, ST., M.Eng.', '', '');
INSERT INTO `tb_dosen` VALUES ('65', '32', '3213', 'Dr. Eng. M. Syamsiro', '', '');
INSERT INTO `tb_dosen` VALUES ('66', '32', '3214', 'Titiek W., ST., MT.', '', '');
INSERT INTO `tb_dosen` VALUES ('67', '32', '3215', 'Dr. Ing. Suwartanti', '', '');
INSERT INTO `tb_dosen` VALUES ('68', '32', '3216', 'Bambang S., SH', '', '');
INSERT INTO `tb_dosen` VALUES ('69', '32', '3217', 'Yayat H., S.Pd.I., M.Ag', '', '');
INSERT INTO `tb_dosen` VALUES ('70', '32', '3218', 'Endang S., SH., M.Hum.', '', '');
INSERT INTO `tb_dosen` VALUES ('71', '32', '3219', 'Team Bahasa Inggris LIA', '', '');
INSERT INTO `tb_dosen` VALUES ('72', '32', '3220', 'Ir. Nuryosuwito., M.Eng.', '', '');
INSERT INTO `tb_dosen` VALUES ('74', '33', '33ad2', 'Olbers', '', '');
INSERT INTO `tb_dosen` VALUES ('75', '33', '33ad3', 'Ema N. H.', '', '');
INSERT INTO `tb_dosen` VALUES ('76', '33', '33ad4', 'Elfan L', '', '');
INSERT INTO `tb_dosen` VALUES ('77', '31', '3113', 'Teguh W., ST., MT.', '', '');
INSERT INTO `tb_dosen` VALUES ('78', '31', '3114', 'Buddewi S.,S.T.,MT.', '', '');
INSERT INTO `tb_dosen` VALUES ('79', '31', '3115', 'Nizar A. S.T.,M.Eng', '', '');
INSERT INTO `tb_dosen` VALUES ('80', '31', '3116', 'Prijambodo, S.T.,M.T.', '', '');
INSERT INTO `tb_dosen` VALUES ('81', '31', '3117', 'Zulisih Maryani, M.A.', '', '');
INSERT INTO `tb_dosen` VALUES ('82', '31', '3118', 'Yan Sujendro M. Ir', '', '');
INSERT INTO `tb_dosen` VALUES ('83', '31', '3119', 'LB LIA', '', '');
INSERT INTO `tb_dosen` VALUES ('84', '31', '3120', 'Edy Sriyono, Ir. MT., Dr.', '', '');
INSERT INTO `tb_dosen` VALUES ('85', '31', '3121', 'Sri H., S.H., M.Hum.', '', '');
INSERT INTO `tb_dosen` VALUES ('86', '31', '3122', 'Suharminanta, Ir., M.T.', '', '');
INSERT INTO `tb_dosen` VALUES ('87', '31', '3123', 'Sardi S.T., M.T.', '', '');
INSERT INTO `tb_dosen` VALUES ('88', '32', '3223', 'Sardi S.T.,M.T.', '', '');
INSERT INTO `tb_dosen` VALUES ('89', '31', '3124', 'Yoseph K, ST.,MT.', '', '');
INSERT INTO `tb_dosen` VALUES ('90', '33', '3300', 'Sri Rahayu, S. Kom', '', '');
INSERT INTO `tb_dosen` VALUES ('91', '31', '3125', 'Ir. Subeni, Ms', '', '');
INSERT INTO `tb_dosen` VALUES ('92', '31', '3126', 'Dr. Francisca RH, SH., M.Hum', '', '');
INSERT INTO `tb_dosen` VALUES ('93', '31', '3127', 'Petrus Setya Wibawa, MA', '', '');
INSERT INTO `tb_dosen` VALUES ('94', '31', '4000', 'Retno Purwandari, S.S., M.A.', '', '');
INSERT INTO `tb_dosen` VALUES ('95', '31', '2345', 'Sarju,ST', '', '');
INSERT INTO `tb_dosen` VALUES ('96', '31', '12345', 'suharyanto', '12321414124', 'm cklas dvlkds jkds fkljdsa');
INSERT INTO `tb_dosen` VALUES ('103', 'Te', '123as', 'mino', '', '');

-- ----------------------------
-- Table structure for tb_jadwalkuliah
-- ----------------------------
DROP TABLE IF EXISTS `tb_jadwalkuliah`;
CREATE TABLE `tb_jadwalkuliah` (
  `id_jadwalkuliah` int(11) NOT NULL,
  `kelas` varchar(15) NOT NULL,
  `hari` varchar(15) NOT NULL,
  `jam` time NOT NULL,
  `id_matakuliah` varchar(8) NOT NULL,
  `tgl` varchar(10) NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tb_jadwalkuliah
-- ----------------------------
INSERT INTO `tb_jadwalkuliah` VALUES ('47', 'A', 'Senin', '10:00:00', '16IF1204', '', 'Asli');
INSERT INTO `tb_jadwalkuliah` VALUES ('48', 'A', 'Senin', '08:00:00', 'IF33108', '', 'Asli');
INSERT INTO `tb_jadwalkuliah` VALUES ('49', 'A', 'Senin', '10:00:00', 'IF33104', '', 'Asli');
INSERT INTO `tb_jadwalkuliah` VALUES ('50', 'A', 'Senin', '08:00:00', 'IF52115', '', 'Asli');
INSERT INTO `tb_jadwalkuliah` VALUES ('52', 'A', 'Senin', '12:00:00', 'IF74102', '', 'Asli');
INSERT INTO `tb_jadwalkuliah` VALUES ('53', 'A', 'Selasa', '08:00:00', '16IF1209', '', 'Asli');
INSERT INTO `tb_jadwalkuliah` VALUES ('54', 'A', 'Selasa', '10:00:00', '16IF1203', '', 'Asli');
INSERT INTO `tb_jadwalkuliah` VALUES ('55', 'A', 'Selasa', '08:00:00', 'IF33110', '', 'Asli');
INSERT INTO `tb_jadwalkuliah` VALUES ('56', 'A', 'Selasa', '10:00:00', 'IF52114', '', 'Asli');
INSERT INTO `tb_jadwalkuliah` VALUES ('57', 'A', 'Selasa', '12:00:00', 'IF53207', '', 'Asli');
INSERT INTO `tb_jadwalkuliah` VALUES ('58', 'A', 'Selasa', '10:00:00', 'IF75101', '', 'Asli');
INSERT INTO `tb_jadwalkuliah` VALUES ('59', 'A', 'Rabu', '08:00:00', '16IF1302', '', 'Asli');
INSERT INTO `tb_jadwalkuliah` VALUES ('60', 'A', 'Rabu', '10:00:00', '16IF1206', '', 'Asli');
INSERT INTO `tb_jadwalkuliah` VALUES ('61', 'A', 'Rabu', '10:00:00', 'IF32109', '', 'Asli');
INSERT INTO `tb_jadwalkuliah` VALUES ('62', 'A', 'Rabu', '16:00:00', 'UN31102k', '', 'Asli');
INSERT INTO `tb_jadwalkuliah` VALUES ('63', 'A', 'Rabu', '08:00:00', 'IF53208', '', 'Asli');
INSERT INTO `tb_jadwalkuliah` VALUES ('64', 'A', 'Rabu', '10:00:00', 'IF53112', '', 'Asli');
INSERT INTO `tb_jadwalkuliah` VALUES ('65', 'A', 'Rabu', '10:00:00', 'IF73217', '', 'Asli');
INSERT INTO `tb_jadwalkuliah` VALUES ('66', 'A', 'Rabu', '12:00:00', 'IF74206', '', 'Asli');
INSERT INTO `tb_jadwalkuliah` VALUES ('67', 'A', 'Kamis', '10:00:00', '16IF1207', '', 'Asli');
INSERT INTO `tb_jadwalkuliah` VALUES ('68', 'A', 'Kamis', '08:00:00', 'UN31101i', '', 'Asli');
INSERT INTO `tb_jadwalkuliah` VALUES ('69', 'A', 'Kamis', '13:00:00', 'UN31102i', '', 'Asli');
INSERT INTO `tb_jadwalkuliah` VALUES ('70', 'A', 'Kamis', '10:00:00', 'IF54101', '', 'Asli');
INSERT INTO `tb_jadwalkuliah` VALUES ('71', 'A', 'Kamis', '08:00:00', 'IF73218', '', 'Asli');
INSERT INTO `tb_jadwalkuliah` VALUES ('72', 'A', 'Kamis', '12:00:00', 'IF75102', '', 'Asli');
INSERT INTO `tb_jadwalkuliah` VALUES ('73', 'A', 'Jumat', '10:00:00', '16UN1101', '', 'Asli');
INSERT INTO `tb_jadwalkuliah` VALUES ('74', 'A', 'Jumat', '08:00:00', 'IF33106', '', 'Asli');
INSERT INTO `tb_jadwalkuliah` VALUES ('75', 'A', 'Jumat', '10:00:00', 'IF54202', '', 'Asli');
INSERT INTO `tb_jadwalkuliah` VALUES ('76', 'A', 'Jumat', '13:00:00', 'IF72208', '', 'Asli');
INSERT INTO `tb_jadwalkuliah` VALUES ('77', 'B', 'Senin', '16:00:00', 'IF33104', '', 'Asli');
INSERT INTO `tb_jadwalkuliah` VALUES ('78', 'B', 'Senin', '18:00:00', '16IF1204', '', 'Asli');
INSERT INTO `tb_jadwalkuliah` VALUES ('79', 'B', 'Senin', '18:00:00', 'IF33106', '', 'Asli');
INSERT INTO `tb_jadwalkuliah` VALUES ('80', 'B', 'Senin', '16:00:00', 'IF52115', '', 'Asli');
INSERT INTO `tb_jadwalkuliah` VALUES ('82', 'B', 'Senin', '16:00:00', 'IF72208', '', 'Asli');
INSERT INTO `tb_jadwalkuliah` VALUES ('83', 'B', 'Selasa', '16:00:00', '16UN1101', '', 'Asli');
INSERT INTO `tb_jadwalkuliah` VALUES ('84', 'B', 'Selasa', '18:00:00', '16IF1206', '', 'Asli');
INSERT INTO `tb_jadwalkuliah` VALUES ('85', 'B', 'Selasa', '20:00:00', '16IF1203', '', 'Asli');
INSERT INTO `tb_jadwalkuliah` VALUES ('86', 'B', 'Selasa', '18:00:00', 'IF33108', '', 'Asli');
INSERT INTO `tb_jadwalkuliah` VALUES ('87', 'B', 'Selasa', '16:00:00', 'IF54101', '', 'Asli');
INSERT INTO `tb_jadwalkuliah` VALUES ('88', 'B', 'Selasa', '18:00:00', 'IF52114', '', 'Asli');
INSERT INTO `tb_jadwalkuliah` VALUES ('89', 'B', 'Selasa', '16:00:00', 'IF75102', '', 'Asli');
INSERT INTO `tb_jadwalkuliah` VALUES ('90', 'B', 'Rabu', '16:00:00', '16IF1209', '', 'Asli');
INSERT INTO `tb_jadwalkuliah` VALUES ('91', 'B', 'Rabu', '18:00:00', '16IF1302', '', 'Asli');
INSERT INTO `tb_jadwalkuliah` VALUES ('92', 'B', 'Rabu', '16:00:00', 'UN31102k', '', 'Asli');
INSERT INTO `tb_jadwalkuliah` VALUES ('93', 'B', 'Rabu', '18:00:00', 'IF32109', '', 'Asli');
INSERT INTO `tb_jadwalkuliah` VALUES ('94', 'B', 'Rabu', '18:00:00', 'IF53112', '', 'Asli');
INSERT INTO `tb_jadwalkuliah` VALUES ('95', 'B', 'Rabu', '16:00:00', 'IF53207', '', 'Asli');
INSERT INTO `tb_jadwalkuliah` VALUES ('96', 'B', 'Rabu', '16:00:00', 'IF73217', '', 'Asli');
INSERT INTO `tb_jadwalkuliah` VALUES ('97', 'B', 'Rabu', '18:00:00', 'IF74102', '', 'Asli');
INSERT INTO `tb_jadwalkuliah` VALUES ('98', 'B', 'Rabu', '20:00:00', 'IF75101', '', 'Asli');
INSERT INTO `tb_jadwalkuliah` VALUES ('99', 'B', 'Kamis', '16:00:00', '16IF1207', '', 'Asli');
INSERT INTO `tb_jadwalkuliah` VALUES ('101', 'B', 'Kamis', '18:00:00', 'IF33110', '', 'Asli');
INSERT INTO `tb_jadwalkuliah` VALUES ('102', 'B', 'Kamis', '16:00:00', 'IF54202', '', 'Asli');
INSERT INTO `tb_jadwalkuliah` VALUES ('103', 'B', 'Kamis', '18:00:00', 'IF53208', '', 'Asli');
INSERT INTO `tb_jadwalkuliah` VALUES ('104', 'B', 'Kamis', '16:00:00', 'IF74206', '', 'Asli');
INSERT INTO `tb_jadwalkuliah` VALUES ('105', 'B', 'Kamis', '18:00:00', 'IF73218', '', 'Asli');
INSERT INTO `tb_jadwalkuliah` VALUES ('106', 'A', 'Senin', '08:00:00', 'TM12101', '', 'Asli');
INSERT INTO `tb_jadwalkuliah` VALUES ('107', 'A', 'Senin', '11:00:00', 'TM13101', '', 'Asli');
INSERT INTO `tb_jadwalkuliah` VALUES ('108', 'A', 'Senin', '11:00:00', 'TM33106', '', 'Asli');
INSERT INTO `tb_jadwalkuliah` VALUES ('109', 'A', 'Senin', '08:00:00', 'TM53219', '', 'Asli');
INSERT INTO `tb_jadwalkuliah` VALUES ('111', 'A', 'Senin', '08:00:00', 'TM73236', '', 'Asli');
INSERT INTO `tb_jadwalkuliah` VALUES ('112', 'A', 'Selasa', '08:00:00', 'TM33214', '', 'Asli');
INSERT INTO `tb_jadwalkuliah` VALUES ('113', 'A', 'Selasa', '08:00:00', 'TM53107', '', 'Asli');
INSERT INTO `tb_jadwalkuliah` VALUES ('114', 'A', 'Selasa', '11:00:00', 'TM53217', '', 'Asli');
INSERT INTO `tb_jadwalkuliah` VALUES ('115', 'A', 'Selasa', '08:00:00', 'TM74101', '', 'Asli');
INSERT INTO `tb_jadwalkuliah` VALUES ('116', 'A', 'Rabu', '08:00:00', 'UN31101i', '', 'Asli');
INSERT INTO `tb_jadwalkuliah` VALUES ('117', 'A', 'Rabu', '10:00:00', 'TM12208', '', 'Asli');
INSERT INTO `tb_jadwalkuliah` VALUES ('118', 'A', 'Rabu', '08:00:00', 'TM33102', '', 'Asli');
INSERT INTO `tb_jadwalkuliah` VALUES ('119', 'A', 'Rabu', '10:00:00', '16IF1206', '', 'Asli');
INSERT INTO `tb_jadwalkuliah` VALUES ('120', 'A', 'Rabu', '16:00:00', 'UN31102k', '', 'Asli');
INSERT INTO `tb_jadwalkuliah` VALUES ('121', 'A', 'Rabu', '12:00:00', 'TM53223', '', 'Asli');
INSERT INTO `tb_jadwalkuliah` VALUES ('123', 'A', 'Rabu', '10:00:00', 'TM72217', '', 'Asli');
INSERT INTO `tb_jadwalkuliah` VALUES ('124', 'A', 'Rabu', '12:00:00', 'TM73240', '', 'Asli');
INSERT INTO `tb_jadwalkuliah` VALUES ('125', 'A', 'Kamis', '08:00:00', 'TM12104', '', 'Asli');
INSERT INTO `tb_jadwalkuliah` VALUES ('126', 'A', 'Kamis', '11:00:00', 'TM12106', '', 'Asli');
INSERT INTO `tb_jadwalkuliah` VALUES ('127', 'A', 'Kamis', '08:00:00', 'TM32103', '', 'Asli');
INSERT INTO `tb_jadwalkuliah` VALUES ('128', 'A', 'Kamis', '12:00:00', 'UN31102i', '', 'Asli');
INSERT INTO `tb_jadwalkuliah` VALUES ('129', 'A', 'Kamis', '14:00:00', 'TM53218', '', 'Asli');
INSERT INTO `tb_jadwalkuliah` VALUES ('130', 'A', 'Kamis', '12:00:00', 'TM53109', '', 'Asli');
INSERT INTO `tb_jadwalkuliah` VALUES ('131', 'A', 'Kamis', '08:00:00', 'TM63246', '', 'Asli');
INSERT INTO `tb_jadwalkuliah` VALUES ('132', 'A', 'Jumat', '13:00:00', 'TM13110', '', 'Asli');
INSERT INTO `tb_jadwalkuliah` VALUES ('133', 'A', 'Jumat', '08:00:00', 'TM32211', '', 'Asli');
INSERT INTO `tb_jadwalkuliah` VALUES ('134', 'A', 'Jumat', '13:00:00', 'TM53112', '', 'Asli');
INSERT INTO `tb_jadwalkuliah` VALUES ('135', 'A', 'Jumat', '08:00:00', 'TM73222', '', 'Asli');
INSERT INTO `tb_jadwalkuliah` VALUES ('136', 'B', 'Senin', '18:00:00', 'TM12104', '', 'Asli');
INSERT INTO `tb_jadwalkuliah` VALUES ('137', 'B', 'Senin', '20:00:00', 'TM12101', '', 'Asli');
INSERT INTO `tb_jadwalkuliah` VALUES ('138', 'B', 'Senin', '18:00:00', 'TM33214', '', 'Asli');
INSERT INTO `tb_jadwalkuliah` VALUES ('139', 'B', 'Senin', '16:00:00', 'TM53218', '', 'Asli');
INSERT INTO `tb_jadwalkuliah` VALUES ('140', 'B', 'Senin', '18:00:00', 'TM53219', '', 'Asli');
INSERT INTO `tb_jadwalkuliah` VALUES ('141', 'B', 'Senin', '16:00:00', 'TM73236', '', 'Asli');
INSERT INTO `tb_jadwalkuliah` VALUES ('142', 'B', 'Selasa', '16:00:00', 'TM12208', '', 'Asli');
INSERT INTO `tb_jadwalkuliah` VALUES ('143', 'B', 'Selasa', '18:00:00', 'TM13110', '', 'Asli');
INSERT INTO `tb_jadwalkuliah` VALUES ('144', 'B', 'Selasa', '18:00:00', '16IF1206', '', 'Asli');
INSERT INTO `tb_jadwalkuliah` VALUES ('145', 'B', 'Selasa', '20:00:00', 'TM33102', '', 'Asli');
INSERT INTO `tb_jadwalkuliah` VALUES ('146', 'B', 'Selasa', '16:00:00', 'TM53109', '', 'Asli');
INSERT INTO `tb_jadwalkuliah` VALUES ('147', 'B', 'Selasa', '18:00:00', 'TM53107', '', 'Asli');
INSERT INTO `tb_jadwalkuliah` VALUES ('148', 'B', 'Selasa', '16:00:00', 'TM73222', '', 'Asli');
INSERT INTO `tb_jadwalkuliah` VALUES ('149', 'B', 'Selasa', '18:00:00', 'TM63237', '', 'Asli');
INSERT INTO `tb_jadwalkuliah` VALUES ('150', 'B', 'Rabu', '16:00:00', 'TM12106', '', 'Asli');
INSERT INTO `tb_jadwalkuliah` VALUES ('151', 'B', 'Rabu', '18:00:00', 'TM13101', '', 'Asli');
INSERT INTO `tb_jadwalkuliah` VALUES ('153', 'B', 'Rabu', '18:00:00', 'TM33106', '', 'Asli');
INSERT INTO `tb_jadwalkuliah` VALUES ('154', 'B', 'Rabu', '16:00:00', 'TM53223', '', 'Asli');
INSERT INTO `tb_jadwalkuliah` VALUES ('155', 'B', 'Rabu', '20:00:00', 'TM53112', '', 'Asli');
INSERT INTO `tb_jadwalkuliah` VALUES ('156', 'B', 'Rabu', '18:00:00', 'TM73240', '', 'Asli');
INSERT INTO `tb_jadwalkuliah` VALUES ('157', 'B', 'Rabu', '20:00:00', 'TM72217', '', 'Asli');
INSERT INTO `tb_jadwalkuliah` VALUES ('159', 'B', 'Kamis', '16:00:00', 'TM32211', '', 'Asli');
INSERT INTO `tb_jadwalkuliah` VALUES ('160', 'B', 'Kamis', '18:00:00', 'TM32103', '', 'Asli');
INSERT INTO `tb_jadwalkuliah` VALUES ('162', 'B', 'Kamis', '18:00:00', 'TM53217', '', 'Asli');
INSERT INTO `tb_jadwalkuliah` VALUES ('164', 'B', 'Kamis', '18:00:00', 'TM74101', '', 'Asli');
INSERT INTO `tb_jadwalkuliah` VALUES ('165', 'A', 'Jumat', '14:00:00', 'TM53109', '', 'Asli');
INSERT INTO `tb_jadwalkuliah` VALUES ('171', 'B', 'Jumat', '16:00:00', 'TM53107c', '', 'Asli');
INSERT INTO `tb_jadwalkuliah` VALUES ('172', 'B', 'Jumat', '18:00:00', 'TM53223', '', 'Asli');
INSERT INTO `tb_jadwalkuliah` VALUES ('173', 'A', 'Sabtu', '12:00:00', 'TM53219', '', 'Asli');
INSERT INTO `tb_jadwalkuliah` VALUES ('174', 'A', 'Sabtu', '14:00:00', 'TM53218', '', 'Asli');
INSERT INTO `tb_jadwalkuliah` VALUES ('175', 'B', 'Sabtu', '16:00:00', 'TM74101', '', 'Asli');
INSERT INTO `tb_jadwalkuliah` VALUES ('176', 'B', 'Sabtu', '18:00:00', 'TM53217', '', 'Asli');
INSERT INTO `tb_jadwalkuliah` VALUES ('202', 'A', 'Senin', '08:00:00', '16IF1208', '', 'Asli');
INSERT INTO `tb_jadwalkuliah` VALUES ('204', 'A', 'Selasa', '10:00:00', 'IF33111', '', 'Asli');
INSERT INTO `tb_jadwalkuliah` VALUES ('205', 'A', 'Rabu', '13:00:00', 'IF33105', '', 'Asli');
INSERT INTO `tb_jadwalkuliah` VALUES ('206', 'A', 'Kamis', '12:00:00', '16IF1205', '', 'Asli');
INSERT INTO `tb_jadwalkuliah` VALUES ('207', 'A', 'Jumat', '13:00:00', 'IF33107', '', 'Asli');
INSERT INTO `tb_jadwalkuliah` VALUES ('208', 'A', 'Jumat', '16:30:00', 'IF53113', '', 'Asli');
INSERT INTO `tb_jadwalkuliah` VALUES ('209', 'A', 'Jumat', '08:00:00', 'IF53209', '', 'Asli');
INSERT INTO `tb_jadwalkuliah` VALUES ('210', 'B', 'Senin', '20:00:00', '16IF1205', '', 'Asli');
INSERT INTO `tb_jadwalkuliah` VALUES ('211', 'B', 'Selasa', '16:00:00', 'IF33111', '', 'Asli');
INSERT INTO `tb_jadwalkuliah` VALUES ('212', 'B', 'Kamis', '20:00:00', '16IF1208', '', 'Asli');
INSERT INTO `tb_jadwalkuliah` VALUES ('214', 'A', 'Jumat', '08:00:00', '16IF1210', '', 'Asli');
INSERT INTO `tb_jadwalkuliah` VALUES ('216', 'B', 'Kamis', '18:00:00', '16IF1210', '', 'Asli');
INSERT INTO `tb_jadwalkuliah` VALUES ('217', 'B', 'Kamis', '20:00:00', 'IF53209', '', 'Asli');
INSERT INTO `tb_jadwalkuliah` VALUES ('218', 'B', 'Jumat', '16:30:00', 'IF33105', '', 'Asli');
INSERT INTO `tb_jadwalkuliah` VALUES ('219', 'B', 'Jumat', '18:00:00', 'IF33107', '', 'Asli');
INSERT INTO `tb_jadwalkuliah` VALUES ('220', 'B', 'Jumat', '18:00:00', 'IF52116', '', 'Asli');
INSERT INTO `tb_jadwalkuliah` VALUES ('222', 'B', 'Jumat', '16:30:00', 'IF53113', '', 'Asli');
INSERT INTO `tb_jadwalkuliah` VALUES ('225', 'A', 'Senin', '08:00:00', 'TS12102', '', 'Asli');
INSERT INTO `tb_jadwalkuliah` VALUES ('226', 'A', 'Senin', '08:00:00', 'TS12106', '', 'Asli');
INSERT INTO `tb_jadwalkuliah` VALUES ('227', 'A', 'Senin', '10:00:00', '16TS1304', '', 'Asli');
INSERT INTO `tb_jadwalkuliah` VALUES ('228', 'A', 'Senin', '08:00:00', 'TS 53108', '', 'Asli');
INSERT INTO `tb_jadwalkuliah` VALUES ('229', 'A', 'Senin', '08:00:00', 'TS73214', '', 'Asli');
INSERT INTO `tb_jadwalkuliah` VALUES ('230', 'A', 'Senin', '10:00:00', 'TS33103', '', 'Asli');
INSERT INTO `tb_jadwalkuliah` VALUES ('231', 'A', 'Senin', '13:00:00', 'TS32116', '', 'Asli');
INSERT INTO `tb_jadwalkuliah` VALUES ('232', 'B', 'Selasa', '16:00:00', '16UN1101', '', 'Asli');
INSERT INTO `tb_jadwalkuliah` VALUES ('233', 'B', 'Selasa', '16:00:00', 'TS32116', '', 'Asli');
INSERT INTO `tb_jadwalkuliah` VALUES ('234', 'B', 'Selasa', '16:00:00', 'TS74201', '', 'Asli');
INSERT INTO `tb_jadwalkuliah` VALUES ('235', 'B', 'Selasa', '18:00:00', 'TS12106', '', 'Asli');
INSERT INTO `tb_jadwalkuliah` VALUES ('236', 'B', 'Selasa', '18:00:00', 'TS53203', '', 'Asli');
INSERT INTO `tb_jadwalkuliah` VALUES ('237', 'B', 'Selasa', '18:00:00', 'TS73216', '', 'Asli');
INSERT INTO `tb_jadwalkuliah` VALUES ('238', 'B', 'Selasa', '20:00:00', 'TS12101', '', 'Asli');
INSERT INTO `tb_jadwalkuliah` VALUES ('239', 'B', 'Selasa', '20:00:00', 'TS33103', '', 'Asli');
INSERT INTO `tb_jadwalkuliah` VALUES ('240', 'B', 'Selasa', '20:00:00', 'TS52122', '', 'Asli');
INSERT INTO `tb_jadwalkuliah` VALUES ('241', 'B', 'Selasa', '16:00:00', 'TS53205', '', 'Asli');
INSERT INTO `tb_jadwalkuliah` VALUES ('243', 'B', 'Senin', '16:00:00', '16TS1309', '', 'Asli');
INSERT INTO `tb_jadwalkuliah` VALUES ('244', 'B', 'Senin', '18:00:00', 'TS12104', '', 'Asli');
INSERT INTO `tb_jadwalkuliah` VALUES ('246', 'B', 'Senin', '16:00:00', 'TS32114', '', 'Asli');
INSERT INTO `tb_jadwalkuliah` VALUES ('247', 'B', 'Senin', '18:00:00', 'TS52204', '', 'Asli');
INSERT INTO `tb_jadwalkuliah` VALUES ('248', 'B', 'Senin', '16:00:00', 'TS53106', '', 'Asli');
INSERT INTO `tb_jadwalkuliah` VALUES ('249', 'B', 'Senin', '16:00:00', 'TS73211', '', 'Asli');
INSERT INTO `tb_jadwalkuliah` VALUES ('251', 'A', 'Senin', '13:00:00', 'TG13201', '', 'Asli');
INSERT INTO `tb_jadwalkuliah` VALUES ('252', 'A', 'Senin', '13:00:00', 'TS73216', '', 'Asli');
INSERT INTO `tb_jadwalkuliah` VALUES ('253', 'A', 'Senin', '13:00:00', 'TS73111', '', 'Asli');
INSERT INTO `tb_jadwalkuliah` VALUES ('254', 'A', 'Selasa', '08:00:00', 'TS12104', '', 'Asli');
INSERT INTO `tb_jadwalkuliah` VALUES ('257', 'A', 'Selasa', '10:00:00', 'TS12101', '', 'Asli');
INSERT INTO `tb_jadwalkuliah` VALUES ('259', 'A', 'Selasa', '08:00:00', 'TS32114', '', 'Asli');
INSERT INTO `tb_jadwalkuliah` VALUES ('260', 'A', 'Selasa', '13:00:00', 'TS32115', '', 'Asli');
INSERT INTO `tb_jadwalkuliah` VALUES ('263', 'A', 'Kamis', '10:00:00', 'UN11101i', '', 'Asli');
INSERT INTO `tb_jadwalkuliah` VALUES ('264', 'A', 'Kamis', '10:00:00', 'TS52204', '', 'Asli');
INSERT INTO `tb_jadwalkuliah` VALUES ('265', 'A', 'Kamis', '13:00:00', 'TS12101', '', 'Asli');
INSERT INTO `tb_jadwalkuliah` VALUES ('266', 'A', 'Kamis', '13:00:00', 'TS 53106', '', 'Asli');
INSERT INTO `tb_jadwalkuliah` VALUES ('267', 'A', 'Kamis', '13:00:00', 'TS73211', '', 'Asli');
INSERT INTO `tb_jadwalkuliah` VALUES ('268', 'A', 'Rabu', '07:30:00', '16IF1206', '', 'Asli');
INSERT INTO `tb_jadwalkuliah` VALUES ('269', 'A', 'Rabu', '08:00:00', 'TS33101', '', 'Asli');
INSERT INTO `tb_jadwalkuliah` VALUES ('270', 'A', 'Rabu', '08:00:00', 'TS73212', '', 'Asli');
INSERT INTO `tb_jadwalkuliah` VALUES ('271', 'A', 'Rabu', '10:00:00', '16TS1304', '', 'Asli');
INSERT INTO `tb_jadwalkuliah` VALUES ('272', 'A', 'Rabu', '10:00:00', 'TS53107', '', 'Asli');
INSERT INTO `tb_jadwalkuliah` VALUES ('273', 'A', 'Rabu', '13:00:00', 'TS32117', '', 'Asli');
INSERT INTO `tb_jadwalkuliah` VALUES ('274', 'A', 'Rabu', '13:00:00', 'TS53205', '', 'Asli');
INSERT INTO `tb_jadwalkuliah` VALUES ('284', 'B', 'Rabu', '16:00:00', 'UN11101k', '', 'Asli');
INSERT INTO `tb_jadwalkuliah` VALUES ('287', 'B', 'Rabu', '20:00:00', '16TS1304', '', 'Asli');
INSERT INTO `tb_jadwalkuliah` VALUES ('288', 'B', 'Rabu', '16:00:00', 'TS33101', '', 'Asli');
INSERT INTO `tb_jadwalkuliah` VALUES ('289', 'B', 'Rabu', '18:00:00', 'TS32115', '', 'Asli');
INSERT INTO `tb_jadwalkuliah` VALUES ('290', 'B', 'Rabu', '16:00:00', 'TS73212', '', 'Asli');
INSERT INTO `tb_jadwalkuliah` VALUES ('291', 'B', 'Rabu', '18:00:00', 'TS53107', '', 'Asli');
INSERT INTO `tb_jadwalkuliah` VALUES ('292', 'B', 'Rabu', '20:00:00', 'TS53204', '', 'Asli');
INSERT INTO `tb_jadwalkuliah` VALUES ('294', 'B', 'Kamis', '18:00:00', 'TS12102', '', 'Asli');
INSERT INTO `tb_jadwalkuliah` VALUES ('296', 'B', 'Kamis', '18:00:00', 'TS32117', '', 'Asli');
INSERT INTO `tb_jadwalkuliah` VALUES ('297', 'B', 'Kamis', '20:00:00', 'TS33102', '', 'Asli');
INSERT INTO `tb_jadwalkuliah` VALUES ('298', 'B', 'Kamis', '16:00:00', 'TS 53108', '', 'Asli');
INSERT INTO `tb_jadwalkuliah` VALUES ('299', 'B', 'Kamis', '18:00:00', 'TS52205', '', 'Asli');
INSERT INTO `tb_jadwalkuliah` VALUES ('300', 'B', 'Kamis', '18:00:00', 'TS73111', '', 'Asli');
INSERT INTO `tb_jadwalkuliah` VALUES ('301', 'B', 'Kamis', '16:00:00', 'TS74202', '', 'Asli');
INSERT INTO `tb_jadwalkuliah` VALUES ('302', 'A', 'Senin', '13:00:00', 'IF54201', '', 'Asli');
INSERT INTO `tb_jadwalkuliah` VALUES ('305', 'B', 'Senin', '18:00:00', 'IF54201', '', 'Asli');
INSERT INTO `tb_jadwalkuliah` VALUES ('306', 'A', 'Rabu', '08:00:00', 'TM74202', '', 'Asli');
INSERT INTO `tb_jadwalkuliah` VALUES ('307', 'B', 'Kamis', '16:00:00', 'TM74202', '', 'Asli');
INSERT INTO `tb_jadwalkuliah` VALUES ('308', 'A', 'Selasa', '13:00:00', 'TS52205', '', 'Asli');
INSERT INTO `tb_jadwalkuliah` VALUES ('309', 'A', 'Selasa', '08:00:00', 'TS53203', '', 'Asli');
INSERT INTO `tb_jadwalkuliah` VALUES ('310', 'B', 'Rabu', '16:00:00', 'UN31102i', '', 'Asli');
INSERT INTO `tb_jadwalkuliah` VALUES ('311', 'B', 'Rabu', '16:00:00', 'UN31102k', '', 'Asli');
INSERT INTO `tb_jadwalkuliah` VALUES ('312', 'B', 'Rabu', '16:00:00', 'UN31102i', '', 'Asli');
INSERT INTO `tb_jadwalkuliah` VALUES ('313', 'A', 'Jumat', '08:00:00', 'TS12106', '', 'Asli');
INSERT INTO `tb_jadwalkuliah` VALUES ('314', 'A', 'Jumat', '08:00:00', 'TS12102', '', 'Asli');
INSERT INTO `tb_jadwalkuliah` VALUES ('315', 'A', 'Jumat', '09:15:00', 'TS33102', '', 'Asli');
INSERT INTO `tb_jadwalkuliah` VALUES ('318', 'A', 'Jumat', '14:00:00', 'TS53204', '', 'Asli');
INSERT INTO `tb_jadwalkuliah` VALUES ('319', 'A', 'Jumat', '14:00:00', 'TS74202', '', 'Asli');
INSERT INTO `tb_jadwalkuliah` VALUES ('322', 'B', 'Rabu', '18:00:00', 'UN31102i', '', 'Asli');
INSERT INTO `tb_jadwalkuliah` VALUES ('324', 'B', 'Rabu', '16:00:00', 'UN31102i', '', 'Asli');
INSERT INTO `tb_jadwalkuliah` VALUES ('325', 'A', 'Kamis', '08:00:00', '16UN1110', '', 'Asli');
INSERT INTO `tb_jadwalkuliah` VALUES ('326', 'A', 'Kamis', '08:00:00', 'UN31102s', '', 'Asli');
INSERT INTO `tb_jadwalkuliah` VALUES ('327', 'B', 'Kamis', '16:00:00', 'UN31102s', '', 'Asli');
INSERT INTO `tb_jadwalkuliah` VALUES ('328', 'B', 'Kamis', '16:00:00', '16UN1110', '', 'Asli');
INSERT INTO `tb_jadwalkuliah` VALUES ('330', 'B', 'Senin', '20:00:00', 'TS000002', '', 'Asli');
INSERT INTO `tb_jadwalkuliah` VALUES ('331', 'B', 'Senin', '20:00:00', 'TS13201', '', 'Asli');
INSERT INTO `tb_jadwalkuliah` VALUES ('333', 'A', 'Selasa', '10:00:00', 'TS13201', '', 'Asli');
INSERT INTO `tb_jadwalkuliah` VALUES ('335', 'A', 'Rabu', '07:30:00', '16TS1309', '', 'Asli');
INSERT INTO `tb_jadwalkuliah` VALUES ('339', 'A', 'Selasa', '14:00:00', '16UN1106', '', 'Asli');
INSERT INTO `tb_jadwalkuliah` VALUES ('340', 'A', 'Selasa', '14:00:00', '16UN1107', '', 'Asli');
INSERT INTO `tb_jadwalkuliah` VALUES ('343', 'A', 'Rabu', '08:00:00', '', '', 'Asli');
INSERT INTO `tb_jadwalkuliah` VALUES ('344', 'A', 'Jumat', '08:00:00', 'TS74201', '', 'Asli');
INSERT INTO `tb_jadwalkuliah` VALUES ('345', 'A', 'Jumat', '00:00:00', 'TS52122', '', 'Asli');
INSERT INTO `tb_jadwalkuliah` VALUES ('347', 'A', 'Jumat', '10:00:00', 'TM53223', '', 'Asli');
INSERT INTO `tb_jadwalkuliah` VALUES ('349', 'A', 'Selasa', '08:00:00', 'TS12106', '', 'Asli');
INSERT INTO `tb_jadwalkuliah` VALUES ('351', 'A', 'Senin', '12:00:00', 'IF33109', '', 'Asli');
INSERT INTO `tb_jadwalkuliah` VALUES ('353', 'A', 'Jumat', '08:00:00', 'TS52122', '', 'Asli');
INSERT INTO `tb_jadwalkuliah` VALUES ('356', 'A', 'Senin', '13:00:00', 'TS13201', '', 'Asli');
INSERT INTO `tb_jadwalkuliah` VALUES ('357', 'A', 'Rabu', '08:00:00', '', '', 'Asli');
INSERT INTO `tb_jadwalkuliah` VALUES ('358', 'A', 'Jumat', '08:00:00', '', '', 'Asli');
INSERT INTO `tb_jadwalkuliah` VALUES ('359', 'A', 'Jumat', '08:00:00', '', '', 'Asli');
INSERT INTO `tb_jadwalkuliah` VALUES ('360', 'A', 'Selasa', '08:00:00', 'TS 52205', '', 'Asli');
INSERT INTO `tb_jadwalkuliah` VALUES ('361', 'A', 'Selasa', '13:00:00', 'TS 52205', '', 'Asli');
INSERT INTO `tb_jadwalkuliah` VALUES ('362', 'A', 'Kamis', '08:00:00', 'IF3215', '', 'Asli');

-- ----------------------------
-- Table structure for tb_jadwalkuliah222
-- ----------------------------
DROP TABLE IF EXISTS `tb_jadwalkuliah222`;
CREATE TABLE `tb_jadwalkuliah222` (
  `id_jadwal` int(11) NOT NULL AUTO_INCREMENT,
  `id_matakuliah` varchar(8) NOT NULL,
  `kelas` varchar(15) NOT NULL,
  `tanggal` datetime NOT NULL,
  `tgl` varchar(10) NOT NULL,
  `status` varchar(10) NOT NULL,
  PRIMARY KEY (`id_jadwal`)
) ENGINE=InnoDB AUTO_INCREMENT=363 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tb_jadwalkuliah222
-- ----------------------------
INSERT INTO `tb_jadwalkuliah222` VALUES ('47', '16IF1204', 'Kelas Pagi', '0000-00-00 00:00:00', '', 'Asli');
INSERT INTO `tb_jadwalkuliah222` VALUES ('48', 'IF33108', 'Kelas Pagi', '0000-00-00 00:00:00', '', 'Asli');
INSERT INTO `tb_jadwalkuliah222` VALUES ('49', 'IF33104', 'Kelas Pagi', '0000-00-00 00:00:00', '', 'Asli');
INSERT INTO `tb_jadwalkuliah222` VALUES ('50', 'IF52115', 'Kelas Pagi', '0000-00-00 00:00:00', '', 'Asli');
INSERT INTO `tb_jadwalkuliah222` VALUES ('52', 'IF74102', 'Kelas Pagi', '0000-00-00 00:00:00', '', 'Asli');
INSERT INTO `tb_jadwalkuliah222` VALUES ('53', '16IF1209', 'Kelas Pagi', '0000-00-00 00:00:00', '', 'Asli');
INSERT INTO `tb_jadwalkuliah222` VALUES ('54', '16IF1203', 'Kelas Pagi', '0000-00-00 00:00:00', '', 'Asli');
INSERT INTO `tb_jadwalkuliah222` VALUES ('55', 'IF33110', 'Kelas Pagi', '0000-00-00 00:00:00', '', 'Asli');
INSERT INTO `tb_jadwalkuliah222` VALUES ('56', 'IF52114', 'Kelas Pagi', '0000-00-00 00:00:00', '', 'Asli');
INSERT INTO `tb_jadwalkuliah222` VALUES ('57', 'IF53207', 'Kelas Pagi', '0000-00-00 00:00:00', '', 'Asli');
INSERT INTO `tb_jadwalkuliah222` VALUES ('58', 'IF75101', 'Kelas Pagi', '0000-00-00 00:00:00', '', 'Asli');
INSERT INTO `tb_jadwalkuliah222` VALUES ('59', '16IF1302', 'Kelas Pagi', '0000-00-00 00:00:00', '', 'Asli');
INSERT INTO `tb_jadwalkuliah222` VALUES ('60', '16IF1206', 'Kelas Pagi', '0000-00-00 00:00:00', '', 'Asli');
INSERT INTO `tb_jadwalkuliah222` VALUES ('61', 'IF32109', 'Kelas Pagi', '0000-00-00 00:00:00', '', 'Asli');
INSERT INTO `tb_jadwalkuliah222` VALUES ('62', 'UN31102k', 'Kelas Pagi', '0000-00-00 00:00:00', '', 'Asli');
INSERT INTO `tb_jadwalkuliah222` VALUES ('63', 'IF53208', 'Kelas Pagi', '0000-00-00 00:00:00', '', 'Asli');
INSERT INTO `tb_jadwalkuliah222` VALUES ('64', 'IF53112', 'Kelas Pagi', '0000-00-00 00:00:00', '', 'Asli');
INSERT INTO `tb_jadwalkuliah222` VALUES ('65', 'IF73217', 'Kelas Pagi', '0000-00-00 00:00:00', '', 'Asli');
INSERT INTO `tb_jadwalkuliah222` VALUES ('66', 'IF74206', 'Kelas Pagi', '0000-00-00 00:00:00', '', 'Asli');
INSERT INTO `tb_jadwalkuliah222` VALUES ('67', '16IF1207', 'Kelas Pagi', '0000-00-00 00:00:00', '', 'Asli');
INSERT INTO `tb_jadwalkuliah222` VALUES ('68', 'UN31101i', 'Kelas Pagi', '0000-00-00 00:00:00', '', 'Asli');
INSERT INTO `tb_jadwalkuliah222` VALUES ('69', 'UN31102i', 'Kelas Pagi', '0000-00-00 00:00:00', '', 'Asli');
INSERT INTO `tb_jadwalkuliah222` VALUES ('70', 'IF54101', 'Kelas Pagi', '0000-00-00 00:00:00', '', 'Asli');
INSERT INTO `tb_jadwalkuliah222` VALUES ('71', 'IF73218', 'Kelas Pagi', '0000-00-00 00:00:00', '', 'Asli');
INSERT INTO `tb_jadwalkuliah222` VALUES ('72', 'IF75102', 'Kelas Pagi', '0000-00-00 00:00:00', '', 'Asli');
INSERT INTO `tb_jadwalkuliah222` VALUES ('73', '16UN1101', 'Kelas Pagi', '0000-00-00 00:00:00', '', 'Asli');
INSERT INTO `tb_jadwalkuliah222` VALUES ('74', 'IF33106', 'Kelas Pagi', '0000-00-00 00:00:00', '', 'Asli');
INSERT INTO `tb_jadwalkuliah222` VALUES ('75', 'IF54202', 'Kelas Pagi', '0000-00-00 00:00:00', '', 'Asli');
INSERT INTO `tb_jadwalkuliah222` VALUES ('76', 'IF72208', 'Kelas Pagi', '0000-00-00 00:00:00', '', 'Asli');
INSERT INTO `tb_jadwalkuliah222` VALUES ('77', 'IF33104', 'Kelas Malam', '0000-00-00 00:00:00', '', 'Asli');
INSERT INTO `tb_jadwalkuliah222` VALUES ('78', '16IF1204', 'Kelas Malam', '0000-00-00 00:00:00', '', 'Asli');
INSERT INTO `tb_jadwalkuliah222` VALUES ('79', 'IF33106', 'Kelas Malam', '0000-00-00 00:00:00', '', 'Asli');
INSERT INTO `tb_jadwalkuliah222` VALUES ('80', 'IF52115', 'Kelas Malam', '0000-00-00 00:00:00', '', 'Asli');
INSERT INTO `tb_jadwalkuliah222` VALUES ('82', 'IF72208', 'Kelas Malam', '0000-00-00 00:00:00', '', 'Asli');
INSERT INTO `tb_jadwalkuliah222` VALUES ('83', '16UN1101', 'Kelas Malam', '0000-00-00 00:00:00', '', 'Asli');
INSERT INTO `tb_jadwalkuliah222` VALUES ('84', '16IF1206', 'Kelas Malam', '0000-00-00 00:00:00', '', 'Asli');
INSERT INTO `tb_jadwalkuliah222` VALUES ('85', '16IF1203', 'Kelas Malam', '0000-00-00 00:00:00', '', 'Asli');
INSERT INTO `tb_jadwalkuliah222` VALUES ('86', 'IF33108', 'Kelas Malam', '0000-00-00 00:00:00', '', 'Asli');
INSERT INTO `tb_jadwalkuliah222` VALUES ('87', 'IF54101', 'Kelas Malam', '0000-00-00 00:00:00', '', 'Asli');
INSERT INTO `tb_jadwalkuliah222` VALUES ('88', 'IF52114', 'Kelas Malam', '0000-00-00 00:00:00', '', 'Asli');
INSERT INTO `tb_jadwalkuliah222` VALUES ('89', 'IF75102', 'Kelas Malam', '0000-00-00 00:00:00', '', 'Asli');
INSERT INTO `tb_jadwalkuliah222` VALUES ('90', '16IF1209', 'Kelas Malam', '0000-00-00 00:00:00', '', 'Asli');
INSERT INTO `tb_jadwalkuliah222` VALUES ('91', '16IF1302', 'Kelas Malam', '0000-00-00 00:00:00', '', 'Asli');
INSERT INTO `tb_jadwalkuliah222` VALUES ('92', 'UN31102k', 'Kelas Malam', '0000-00-00 00:00:00', '', 'Asli');
INSERT INTO `tb_jadwalkuliah222` VALUES ('93', 'IF32109', 'Kelas Malam', '0000-00-00 00:00:00', '', 'Asli');
INSERT INTO `tb_jadwalkuliah222` VALUES ('94', 'IF53112', 'Kelas Malam', '0000-00-00 00:00:00', '', 'Asli');
INSERT INTO `tb_jadwalkuliah222` VALUES ('95', 'IF53207', 'Kelas Malam', '0000-00-00 00:00:00', '', 'Asli');
INSERT INTO `tb_jadwalkuliah222` VALUES ('96', 'IF73217', 'Kelas Malam', '0000-00-00 00:00:00', '', 'Asli');
INSERT INTO `tb_jadwalkuliah222` VALUES ('97', 'IF74102', 'Kelas Malam', '0000-00-00 00:00:00', '', 'Asli');
INSERT INTO `tb_jadwalkuliah222` VALUES ('98', 'IF75101', 'Kelas Malam', '0000-00-00 00:00:00', '', 'Asli');
INSERT INTO `tb_jadwalkuliah222` VALUES ('99', '16IF1207', 'Kelas Malam', '0000-00-00 00:00:00', '', 'Asli');
INSERT INTO `tb_jadwalkuliah222` VALUES ('101', 'IF33110', 'Kelas Malam', '0000-00-00 00:00:00', '', 'Asli');
INSERT INTO `tb_jadwalkuliah222` VALUES ('102', 'IF54202', 'Kelas Malam', '0000-00-00 00:00:00', '', 'Asli');
INSERT INTO `tb_jadwalkuliah222` VALUES ('103', 'IF53208', 'Kelas Malam', '0000-00-00 00:00:00', '', 'Asli');
INSERT INTO `tb_jadwalkuliah222` VALUES ('104', 'IF74206', 'Kelas Malam', '0000-00-00 00:00:00', '', 'Asli');
INSERT INTO `tb_jadwalkuliah222` VALUES ('105', 'IF73218', 'Kelas Malam', '0000-00-00 00:00:00', '', 'Asli');
INSERT INTO `tb_jadwalkuliah222` VALUES ('106', 'TM12101', 'Kelas Pagi', '0000-00-00 00:00:00', '', 'Asli');
INSERT INTO `tb_jadwalkuliah222` VALUES ('107', 'TM13101', 'Kelas Pagi', '0000-00-00 00:00:00', '', 'Asli');
INSERT INTO `tb_jadwalkuliah222` VALUES ('108', 'TM33106', 'Kelas Pagi', '0000-00-00 00:00:00', '', 'Asli');
INSERT INTO `tb_jadwalkuliah222` VALUES ('109', 'TM53219', 'Kelas Pagi', '0000-00-00 00:00:00', '', 'Asli');
INSERT INTO `tb_jadwalkuliah222` VALUES ('111', 'TM73236', 'Kelas Pagi', '0000-00-00 00:00:00', '', 'Asli');
INSERT INTO `tb_jadwalkuliah222` VALUES ('112', 'TM33214', 'Kelas Pagi', '0000-00-00 00:00:00', '', 'Asli');
INSERT INTO `tb_jadwalkuliah222` VALUES ('113', 'TM53107', 'Kelas Pagi', '0000-00-00 00:00:00', '', 'Asli');
INSERT INTO `tb_jadwalkuliah222` VALUES ('114', 'TM53217', 'Kelas Pagi', '0000-00-00 00:00:00', '', 'Asli');
INSERT INTO `tb_jadwalkuliah222` VALUES ('115', 'TM74101', 'Kelas Pagi', '0000-00-00 00:00:00', '', 'Asli');
INSERT INTO `tb_jadwalkuliah222` VALUES ('116', 'UN31101i', 'Kelas Pagi', '0000-00-00 00:00:00', '', 'Asli');
INSERT INTO `tb_jadwalkuliah222` VALUES ('117', 'TM12208', 'Kelas Pagi', '0000-00-00 00:00:00', '', 'Asli');
INSERT INTO `tb_jadwalkuliah222` VALUES ('118', 'TM33102', 'Kelas Pagi', '0000-00-00 00:00:00', '', 'Asli');
INSERT INTO `tb_jadwalkuliah222` VALUES ('119', '16IF1206', 'Kelas Pagi', '0000-00-00 00:00:00', '', 'Asli');
INSERT INTO `tb_jadwalkuliah222` VALUES ('120', 'UN31102k', 'Kelas Pagi', '0000-00-00 00:00:00', '', 'Asli');
INSERT INTO `tb_jadwalkuliah222` VALUES ('121', 'TM53223', 'Kelas Pagi', '0000-00-00 00:00:00', '', 'Asli');
INSERT INTO `tb_jadwalkuliah222` VALUES ('123', 'TM72217', 'Kelas Pagi', '0000-00-00 00:00:00', '', 'Asli');
INSERT INTO `tb_jadwalkuliah222` VALUES ('124', 'TM73240', 'Kelas Pagi', '0000-00-00 00:00:00', '', 'Asli');
INSERT INTO `tb_jadwalkuliah222` VALUES ('125', 'TM12104', 'Kelas Pagi', '0000-00-00 00:00:00', '', 'Asli');
INSERT INTO `tb_jadwalkuliah222` VALUES ('126', 'TM12106', 'Kelas Pagi', '0000-00-00 00:00:00', '', 'Asli');
INSERT INTO `tb_jadwalkuliah222` VALUES ('127', 'TM32103', 'Kelas Pagi', '0000-00-00 00:00:00', '', 'Asli');
INSERT INTO `tb_jadwalkuliah222` VALUES ('128', 'UN31102i', 'Kelas Pagi', '0000-00-00 00:00:00', '', 'Asli');
INSERT INTO `tb_jadwalkuliah222` VALUES ('129', 'TM53218', 'Kelas Pagi', '0000-00-00 00:00:00', '', 'Asli');
INSERT INTO `tb_jadwalkuliah222` VALUES ('130', 'TM53109', 'Kelas Pagi', '0000-00-00 00:00:00', '', 'Asli');
INSERT INTO `tb_jadwalkuliah222` VALUES ('131', 'TM63246', 'Kelas Pagi', '0000-00-00 00:00:00', '', 'Asli');
INSERT INTO `tb_jadwalkuliah222` VALUES ('132', 'TM13110', 'Kelas Pagi', '0000-00-00 00:00:00', '', 'Asli');
INSERT INTO `tb_jadwalkuliah222` VALUES ('133', 'TM32211', 'Kelas Pagi', '0000-00-00 00:00:00', '', 'Asli');
INSERT INTO `tb_jadwalkuliah222` VALUES ('134', 'TM53112', 'Kelas Pagi', '0000-00-00 00:00:00', '', 'Asli');
INSERT INTO `tb_jadwalkuliah222` VALUES ('135', 'TM73222', 'Kelas Pagi', '0000-00-00 00:00:00', '', 'Asli');
INSERT INTO `tb_jadwalkuliah222` VALUES ('136', 'TM12104', 'Kelas Malam', '0000-00-00 00:00:00', '', 'Asli');
INSERT INTO `tb_jadwalkuliah222` VALUES ('137', 'TM12101', 'Kelas Malam', '0000-00-00 00:00:00', '', 'Asli');
INSERT INTO `tb_jadwalkuliah222` VALUES ('138', 'TM33214', 'Kelas Malam', '0000-00-00 00:00:00', '', 'Asli');
INSERT INTO `tb_jadwalkuliah222` VALUES ('139', 'TM53218', 'Kelas Malam', '0000-00-00 00:00:00', '', 'Asli');
INSERT INTO `tb_jadwalkuliah222` VALUES ('140', 'TM53219', 'Kelas Malam', '0000-00-00 00:00:00', '', 'Asli');
INSERT INTO `tb_jadwalkuliah222` VALUES ('141', 'TM73236', 'Kelas Malam', '0000-00-00 00:00:00', '', 'Asli');
INSERT INTO `tb_jadwalkuliah222` VALUES ('142', 'TM12208', 'Kelas Malam', '0000-00-00 00:00:00', '', 'Asli');
INSERT INTO `tb_jadwalkuliah222` VALUES ('143', 'TM13110', 'Kelas Malam', '0000-00-00 00:00:00', '', 'Asli');
INSERT INTO `tb_jadwalkuliah222` VALUES ('144', '16IF1206', 'Kelas Malam', '0000-00-00 00:00:00', '', 'Asli');
INSERT INTO `tb_jadwalkuliah222` VALUES ('145', 'TM33102', 'Kelas Malam', '0000-00-00 00:00:00', '', 'Asli');
INSERT INTO `tb_jadwalkuliah222` VALUES ('146', 'TM53109', 'Kelas Malam', '0000-00-00 00:00:00', '', 'Asli');
INSERT INTO `tb_jadwalkuliah222` VALUES ('147', 'TM53107', 'Kelas Malam', '0000-00-00 00:00:00', '', 'Asli');
INSERT INTO `tb_jadwalkuliah222` VALUES ('148', 'TM73222', 'Kelas Malam', '0000-00-00 00:00:00', '', 'Asli');
INSERT INTO `tb_jadwalkuliah222` VALUES ('149', 'TM63237', 'Kelas Malam', '0000-00-00 00:00:00', '', 'Asli');
INSERT INTO `tb_jadwalkuliah222` VALUES ('150', 'TM12106', 'Kelas Malam', '0000-00-00 00:00:00', '', 'Asli');
INSERT INTO `tb_jadwalkuliah222` VALUES ('151', 'TM13101', 'Kelas Malam', '0000-00-00 00:00:00', '', 'Asli');
INSERT INTO `tb_jadwalkuliah222` VALUES ('153', 'TM33106', 'Kelas Malam', '0000-00-00 00:00:00', '', 'Asli');
INSERT INTO `tb_jadwalkuliah222` VALUES ('154', 'TM53223', 'Kelas Malam', '0000-00-00 00:00:00', '', 'Asli');
INSERT INTO `tb_jadwalkuliah222` VALUES ('155', 'TM53112', 'Kelas Malam', '0000-00-00 00:00:00', '', 'Asli');
INSERT INTO `tb_jadwalkuliah222` VALUES ('156', 'TM73240', 'Kelas Malam', '0000-00-00 00:00:00', '', 'Asli');
INSERT INTO `tb_jadwalkuliah222` VALUES ('157', 'TM72217', 'Kelas Malam', '0000-00-00 00:00:00', '', 'Asli');
INSERT INTO `tb_jadwalkuliah222` VALUES ('159', 'TM32211', 'Kelas Malam', '0000-00-00 00:00:00', '', 'Asli');
INSERT INTO `tb_jadwalkuliah222` VALUES ('160', 'TM32103', 'Kelas Malam', '0000-00-00 00:00:00', '', 'Asli');
INSERT INTO `tb_jadwalkuliah222` VALUES ('162', 'TM53217', 'Kelas Malam', '0000-00-00 00:00:00', '', 'Asli');
INSERT INTO `tb_jadwalkuliah222` VALUES ('164', 'TM74101', 'Kelas Malam', '0000-00-00 00:00:00', '', 'Asli');
INSERT INTO `tb_jadwalkuliah222` VALUES ('165', 'TM53109', 'Kelas Pagi', '0000-00-00 00:00:00', '', 'Asli');
INSERT INTO `tb_jadwalkuliah222` VALUES ('171', 'TM53107c', 'Kelas Malam', '0000-00-00 00:00:00', '', 'Asli');
INSERT INTO `tb_jadwalkuliah222` VALUES ('172', 'TM53223', 'Kelas Malam', '0000-00-00 00:00:00', '', 'Asli');
INSERT INTO `tb_jadwalkuliah222` VALUES ('173', 'TM53219', 'Kelas Pagi', '0000-00-00 00:00:00', '', 'Asli');
INSERT INTO `tb_jadwalkuliah222` VALUES ('174', 'TM53218', 'Kelas Pagi', '0000-00-00 00:00:00', '', 'Asli');
INSERT INTO `tb_jadwalkuliah222` VALUES ('175', 'TM74101', 'Kelas Malam', '0000-00-00 00:00:00', '', 'Asli');
INSERT INTO `tb_jadwalkuliah222` VALUES ('176', 'TM53217', 'Kelas Malam', '0000-00-00 00:00:00', '', 'Asli');
INSERT INTO `tb_jadwalkuliah222` VALUES ('202', '16IF1208', 'Kelas Pagi', '0000-00-00 00:00:00', '', 'Asli');
INSERT INTO `tb_jadwalkuliah222` VALUES ('204', 'IF33111', 'Kelas Pagi', '0000-00-00 00:00:00', '', 'Asli');
INSERT INTO `tb_jadwalkuliah222` VALUES ('205', 'IF33105', 'Kelas Pagi', '0000-00-00 00:00:00', '', 'Asli');
INSERT INTO `tb_jadwalkuliah222` VALUES ('206', '16IF1205', 'Kelas Pagi', '0000-00-00 00:00:00', '', 'Asli');
INSERT INTO `tb_jadwalkuliah222` VALUES ('207', 'IF33107', 'Kelas Pagi', '0000-00-00 00:00:00', '', 'Asli');
INSERT INTO `tb_jadwalkuliah222` VALUES ('208', 'IF53113', 'Kelas Pagi', '0000-00-00 00:00:00', '', 'Asli');
INSERT INTO `tb_jadwalkuliah222` VALUES ('209', 'IF53209', 'Kelas Pagi', '0000-00-00 00:00:00', '', 'Asli');
INSERT INTO `tb_jadwalkuliah222` VALUES ('210', '16IF1205', 'Kelas Malam', '0000-00-00 00:00:00', '', 'Asli');
INSERT INTO `tb_jadwalkuliah222` VALUES ('211', 'IF33111', 'Kelas Malam', '0000-00-00 00:00:00', '', 'Asli');
INSERT INTO `tb_jadwalkuliah222` VALUES ('212', '16IF1208', 'Kelas Malam', '0000-00-00 00:00:00', '', 'Asli');
INSERT INTO `tb_jadwalkuliah222` VALUES ('214', '16IF1210', 'Kelas Pagi', '0000-00-00 00:00:00', '', 'Asli');
INSERT INTO `tb_jadwalkuliah222` VALUES ('216', '16IF1210', 'Kelas Malam', '0000-00-00 00:00:00', '', 'Asli');
INSERT INTO `tb_jadwalkuliah222` VALUES ('217', 'IF53209', 'Kelas Malam', '0000-00-00 00:00:00', '', 'Asli');
INSERT INTO `tb_jadwalkuliah222` VALUES ('218', 'IF33105', 'Kelas Malam', '0000-00-00 00:00:00', '', 'Asli');
INSERT INTO `tb_jadwalkuliah222` VALUES ('219', 'IF33107', 'Kelas Malam', '0000-00-00 00:00:00', '', 'Asli');
INSERT INTO `tb_jadwalkuliah222` VALUES ('220', 'IF52116', 'Kelas Malam', '0000-00-00 00:00:00', '', 'Asli');
INSERT INTO `tb_jadwalkuliah222` VALUES ('222', 'IF53113', 'Kelas Malam', '0000-00-00 00:00:00', '', 'Asli');
INSERT INTO `tb_jadwalkuliah222` VALUES ('225', 'TS12102', 'Kelas Pagi', '0000-00-00 00:00:00', '', 'Asli');
INSERT INTO `tb_jadwalkuliah222` VALUES ('226', 'TS12106', 'Kelas Pagi', '0000-00-00 00:00:00', '', 'Asli');
INSERT INTO `tb_jadwalkuliah222` VALUES ('227', '16TS1304', 'Kelas Pagi', '0000-00-00 00:00:00', '', 'Asli');
INSERT INTO `tb_jadwalkuliah222` VALUES ('228', 'TS 53108', 'Kelas Pagi', '0000-00-00 00:00:00', '', 'Asli');
INSERT INTO `tb_jadwalkuliah222` VALUES ('229', 'TS73214', 'Kelas Pagi', '0000-00-00 00:00:00', '', 'Asli');
INSERT INTO `tb_jadwalkuliah222` VALUES ('230', 'TS33103', 'Kelas Pagi', '0000-00-00 00:00:00', '', 'Asli');
INSERT INTO `tb_jadwalkuliah222` VALUES ('231', 'TS32116', 'Kelas Pagi', '0000-00-00 00:00:00', '', 'Asli');
INSERT INTO `tb_jadwalkuliah222` VALUES ('232', '16UN1101', 'Kelas Malam', '0000-00-00 00:00:00', '', 'Asli');
INSERT INTO `tb_jadwalkuliah222` VALUES ('233', 'TS32116', 'Kelas Malam', '0000-00-00 00:00:00', '', 'Asli');
INSERT INTO `tb_jadwalkuliah222` VALUES ('234', 'TS74201', 'Kelas Malam', '0000-00-00 00:00:00', '', 'Asli');
INSERT INTO `tb_jadwalkuliah222` VALUES ('235', 'TS12106', 'Kelas Malam', '0000-00-00 00:00:00', '', 'Asli');
INSERT INTO `tb_jadwalkuliah222` VALUES ('236', 'TS53203', 'Kelas Malam', '0000-00-00 00:00:00', '', 'Asli');
INSERT INTO `tb_jadwalkuliah222` VALUES ('237', 'TS73216', 'Kelas Malam', '0000-00-00 00:00:00', '', 'Asli');
INSERT INTO `tb_jadwalkuliah222` VALUES ('238', 'TS12101', 'Kelas Malam', '0000-00-00 00:00:00', '', 'Asli');
INSERT INTO `tb_jadwalkuliah222` VALUES ('239', 'TS33103', 'Kelas Malam', '0000-00-00 00:00:00', '', 'Asli');
INSERT INTO `tb_jadwalkuliah222` VALUES ('240', 'TS52122', 'Kelas Malam', '0000-00-00 00:00:00', '', 'Asli');
INSERT INTO `tb_jadwalkuliah222` VALUES ('241', 'TS53205', 'Kelas Malam', '0000-00-00 00:00:00', '', 'Asli');
INSERT INTO `tb_jadwalkuliah222` VALUES ('243', '16TS1309', 'Kelas Malam', '0000-00-00 00:00:00', '', 'Asli');
INSERT INTO `tb_jadwalkuliah222` VALUES ('244', 'TS12104', 'Kelas Malam', '0000-00-00 00:00:00', '', 'Asli');
INSERT INTO `tb_jadwalkuliah222` VALUES ('246', 'TS32114', 'Kelas Malam', '0000-00-00 00:00:00', '', 'Asli');
INSERT INTO `tb_jadwalkuliah222` VALUES ('247', 'TS52204', 'Kelas Malam', '0000-00-00 00:00:00', '', 'Asli');
INSERT INTO `tb_jadwalkuliah222` VALUES ('248', 'TS53106', 'Kelas Malam', '0000-00-00 00:00:00', '', 'Asli');
INSERT INTO `tb_jadwalkuliah222` VALUES ('249', 'TS73211', 'Kelas Malam', '0000-00-00 00:00:00', '', 'Asli');
INSERT INTO `tb_jadwalkuliah222` VALUES ('251', 'TG13201', 'Kelas Pagi', '0000-00-00 00:00:00', '', 'Asli');
INSERT INTO `tb_jadwalkuliah222` VALUES ('252', 'TS73216', 'Kelas Pagi', '0000-00-00 00:00:00', '', 'Asli');
INSERT INTO `tb_jadwalkuliah222` VALUES ('253', 'TS73111', 'Kelas Pagi', '0000-00-00 00:00:00', '', 'Asli');
INSERT INTO `tb_jadwalkuliah222` VALUES ('254', 'TS12104', 'Kelas Pagi', '0000-00-00 00:00:00', '', 'Asli');
INSERT INTO `tb_jadwalkuliah222` VALUES ('257', 'TS12101', 'Kelas Pagi', '0000-00-00 00:00:00', '', 'Asli');
INSERT INTO `tb_jadwalkuliah222` VALUES ('259', 'TS32114', 'Kelas Pagi', '0000-00-00 00:00:00', '', 'Asli');
INSERT INTO `tb_jadwalkuliah222` VALUES ('260', 'TS32115', 'Kelas Pagi', '0000-00-00 00:00:00', '', 'Asli');
INSERT INTO `tb_jadwalkuliah222` VALUES ('263', 'UN11101i', 'Kelas Pagi', '0000-00-00 00:00:00', '', 'Asli');
INSERT INTO `tb_jadwalkuliah222` VALUES ('264', 'TS52204', 'Kelas Pagi', '0000-00-00 00:00:00', '', 'Asli');
INSERT INTO `tb_jadwalkuliah222` VALUES ('265', 'TS12101', 'Kelas Pagi', '0000-00-00 00:00:00', '', 'Asli');
INSERT INTO `tb_jadwalkuliah222` VALUES ('266', 'TS 53106', 'Kelas Pagi', '0000-00-00 00:00:00', '', 'Asli');
INSERT INTO `tb_jadwalkuliah222` VALUES ('267', 'TS73211', 'Kelas Pagi', '0000-00-00 00:00:00', '', 'Asli');
INSERT INTO `tb_jadwalkuliah222` VALUES ('268', '16IF1206', 'Kelas Pagi', '0000-00-00 00:00:00', '', 'Asli');
INSERT INTO `tb_jadwalkuliah222` VALUES ('269', 'TS33101', 'Kelas Pagi', '0000-00-00 00:00:00', '', 'Asli');
INSERT INTO `tb_jadwalkuliah222` VALUES ('270', 'TS73212', 'Kelas Pagi', '0000-00-00 00:00:00', '', 'Asli');
INSERT INTO `tb_jadwalkuliah222` VALUES ('271', '16TS1304', 'Kelas Pagi', '0000-00-00 00:00:00', '', 'Asli');
INSERT INTO `tb_jadwalkuliah222` VALUES ('272', 'TS53107', 'Kelas Pagi', '0000-00-00 00:00:00', '', 'Asli');
INSERT INTO `tb_jadwalkuliah222` VALUES ('273', 'TS32117', 'Kelas Pagi', '0000-00-00 00:00:00', '', 'Asli');
INSERT INTO `tb_jadwalkuliah222` VALUES ('274', 'TS53205', 'Kelas Pagi', '0000-00-00 00:00:00', '', 'Asli');
INSERT INTO `tb_jadwalkuliah222` VALUES ('284', 'UN11101k', 'Kelas Malam', '0000-00-00 00:00:00', '', 'Asli');
INSERT INTO `tb_jadwalkuliah222` VALUES ('287', '16TS1304', 'Kelas Malam', '0000-00-00 00:00:00', '', 'Asli');
INSERT INTO `tb_jadwalkuliah222` VALUES ('288', 'TS33101', 'Kelas Malam', '0000-00-00 00:00:00', '', 'Asli');
INSERT INTO `tb_jadwalkuliah222` VALUES ('289', 'TS32115', 'Kelas Malam', '0000-00-00 00:00:00', '', 'Asli');
INSERT INTO `tb_jadwalkuliah222` VALUES ('290', 'TS73212', 'Kelas Malam', '0000-00-00 00:00:00', '', 'Asli');
INSERT INTO `tb_jadwalkuliah222` VALUES ('291', 'TS53107', 'Kelas Malam', '0000-00-00 00:00:00', '', 'Asli');
INSERT INTO `tb_jadwalkuliah222` VALUES ('292', 'TS53204', 'Kelas Malam', '0000-00-00 00:00:00', '', 'Asli');
INSERT INTO `tb_jadwalkuliah222` VALUES ('294', 'TS12102', 'Kelas Malam', '0000-00-00 00:00:00', '', 'Asli');
INSERT INTO `tb_jadwalkuliah222` VALUES ('296', 'TS32117', 'Kelas Malam', '0000-00-00 00:00:00', '', 'Asli');
INSERT INTO `tb_jadwalkuliah222` VALUES ('297', 'TS33102', 'Kelas Malam', '0000-00-00 00:00:00', '', 'Asli');
INSERT INTO `tb_jadwalkuliah222` VALUES ('298', 'TS 53108', 'Kelas Malam', '0000-00-00 00:00:00', '', 'Asli');
INSERT INTO `tb_jadwalkuliah222` VALUES ('299', 'TS52205', 'Kelas Malam', '0000-00-00 00:00:00', '', 'Asli');
INSERT INTO `tb_jadwalkuliah222` VALUES ('300', 'TS73111', 'Kelas Malam', '0000-00-00 00:00:00', '', 'Asli');
INSERT INTO `tb_jadwalkuliah222` VALUES ('301', 'TS74202', 'Kelas Malam', '0000-00-00 00:00:00', '', 'Asli');
INSERT INTO `tb_jadwalkuliah222` VALUES ('302', 'IF54201', 'Kelas Pagi', '0000-00-00 00:00:00', '', 'Asli');
INSERT INTO `tb_jadwalkuliah222` VALUES ('305', 'IF54201', 'Kelas Malam', '0000-00-00 00:00:00', '', 'Asli');
INSERT INTO `tb_jadwalkuliah222` VALUES ('306', 'TM74202', 'Kelas Pagi', '0000-00-00 00:00:00', '', 'Asli');
INSERT INTO `tb_jadwalkuliah222` VALUES ('307', 'TM74202', 'Kelas Malam', '0000-00-00 00:00:00', '', 'Asli');
INSERT INTO `tb_jadwalkuliah222` VALUES ('308', 'TS52205', 'Kelas Pagi', '0000-00-00 00:00:00', '', 'Asli');
INSERT INTO `tb_jadwalkuliah222` VALUES ('309', 'TS53203', 'Kelas Pagi', '0000-00-00 00:00:00', '', 'Asli');
INSERT INTO `tb_jadwalkuliah222` VALUES ('310', 'UN31102i', 'Kelas Malam', '0000-00-00 00:00:00', '', 'Asli');
INSERT INTO `tb_jadwalkuliah222` VALUES ('311', 'UN31102k', 'Kelas Malam', '0000-00-00 00:00:00', '', 'Asli');
INSERT INTO `tb_jadwalkuliah222` VALUES ('312', 'UN31102i', 'Kelas Malam', '0000-00-00 00:00:00', '', 'Asli');
INSERT INTO `tb_jadwalkuliah222` VALUES ('313', 'TS12106', 'Kelas Pagi', '0000-00-00 00:00:00', '', 'Asli');
INSERT INTO `tb_jadwalkuliah222` VALUES ('314', 'TS12102', 'Kelas Pagi', '0000-00-00 00:00:00', '', 'Asli');
INSERT INTO `tb_jadwalkuliah222` VALUES ('315', 'TS33102', 'Kelas Pagi', '0000-00-00 00:00:00', '', 'Asli');
INSERT INTO `tb_jadwalkuliah222` VALUES ('318', 'TS53204', 'Kelas Pagi', '0000-00-00 00:00:00', '', 'Asli');
INSERT INTO `tb_jadwalkuliah222` VALUES ('319', 'TS74202', 'Kelas Pagi', '0000-00-00 00:00:00', '', 'Asli');
INSERT INTO `tb_jadwalkuliah222` VALUES ('322', 'UN31102i', 'Kelas Malam', '0000-00-00 00:00:00', '', 'Asli');
INSERT INTO `tb_jadwalkuliah222` VALUES ('324', 'UN31102i', 'Kelas Malam', '0000-00-00 00:00:00', '', 'Asli');
INSERT INTO `tb_jadwalkuliah222` VALUES ('325', '16UN1110', 'Kelas Pagi', '0000-00-00 00:00:00', '', 'Asli');
INSERT INTO `tb_jadwalkuliah222` VALUES ('326', 'UN31102s', 'Kelas Pagi', '0000-00-00 00:00:00', '', 'Asli');
INSERT INTO `tb_jadwalkuliah222` VALUES ('327', 'UN31102s', 'Kelas Malam', '0000-00-00 00:00:00', '', 'Asli');
INSERT INTO `tb_jadwalkuliah222` VALUES ('328', '16UN1110', 'Kelas Malam', '0000-00-00 00:00:00', '', 'Asli');
INSERT INTO `tb_jadwalkuliah222` VALUES ('330', 'TS000002', 'Kelas Malam', '0000-00-00 00:00:00', '', 'Asli');
INSERT INTO `tb_jadwalkuliah222` VALUES ('331', 'TS13201', 'Kelas Malam', '0000-00-00 00:00:00', '', 'Asli');
INSERT INTO `tb_jadwalkuliah222` VALUES ('333', 'TS13201', 'Kelas Pagi', '0000-00-00 00:00:00', '', 'Asli');
INSERT INTO `tb_jadwalkuliah222` VALUES ('335', '16TS1309', 'Kelas Pagi', '0000-00-00 00:00:00', '', 'Asli');
INSERT INTO `tb_jadwalkuliah222` VALUES ('339', '16UN1106', 'Kelas Pagi', '0000-00-00 00:00:00', '', 'Asli');
INSERT INTO `tb_jadwalkuliah222` VALUES ('340', '16UN1107', 'Kelas Pagi', '0000-00-00 00:00:00', '', 'Asli');
INSERT INTO `tb_jadwalkuliah222` VALUES ('343', '', 'Kelas Pagi', '0000-00-00 00:00:00', '', 'Asli');
INSERT INTO `tb_jadwalkuliah222` VALUES ('344', 'TS74201', 'Kelas Pagi', '0000-00-00 00:00:00', '', 'Asli');
INSERT INTO `tb_jadwalkuliah222` VALUES ('345', 'TS52122', 'Kelas Pagi', '0000-00-00 00:00:00', '', 'Asli');
INSERT INTO `tb_jadwalkuliah222` VALUES ('347', 'TM53223', 'Kelas Pagi', '0000-00-00 00:00:00', '', 'Asli');
INSERT INTO `tb_jadwalkuliah222` VALUES ('349', 'TS12106', 'Kelas Pagi', '0000-00-00 00:00:00', '', 'Asli');
INSERT INTO `tb_jadwalkuliah222` VALUES ('351', 'IF33109', 'Kelas Pagi', '0000-00-00 00:00:00', '', 'Asli');
INSERT INTO `tb_jadwalkuliah222` VALUES ('353', 'TS52122', 'Kelas Pagi', '0000-00-00 00:00:00', '', 'Asli');
INSERT INTO `tb_jadwalkuliah222` VALUES ('356', 'TS13201', 'Kelas Pagi', '0000-00-00 00:00:00', '', 'Asli');
INSERT INTO `tb_jadwalkuliah222` VALUES ('357', '', 'Kelas Pagi', '0000-00-00 00:00:00', '', 'Asli');
INSERT INTO `tb_jadwalkuliah222` VALUES ('358', '', 'Kelas Pagi', '0000-00-00 00:00:00', '', 'Asli');
INSERT INTO `tb_jadwalkuliah222` VALUES ('359', '', 'Kelas Pagi', '0000-00-00 00:00:00', '', 'Asli');
INSERT INTO `tb_jadwalkuliah222` VALUES ('360', 'TS 52205', 'Kelas Pagi', '0000-00-00 00:00:00', '', 'Asli');
INSERT INTO `tb_jadwalkuliah222` VALUES ('361', 'TS 52205', 'Kelas Pagi', '0000-00-00 00:00:00', '', 'Asli');
INSERT INTO `tb_jadwalkuliah222` VALUES ('362', 'IF3215', 'Kelas Pagi', '0000-00-00 00:00:00', '', 'Asli');

-- ----------------------------
-- Table structure for tb_matakuliah
-- ----------------------------
DROP TABLE IF EXISTS `tb_matakuliah`;
CREATE TABLE `tb_matakuliah` (
  `id_matakuliah` varchar(11) NOT NULL,
  `id_prodi` varchar(2) NOT NULL,
  `matakuliah` varchar(50) NOT NULL,
  `id_dosen` varchar(20) NOT NULL,
  `semester` char(1) NOT NULL,
  `sks` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tb_matakuliah
-- ----------------------------
INSERT INTO `tb_matakuliah` VALUES ('16IF1203', '33', 'Logika Algoritma', '22', '1', '3');
INSERT INTO `tb_matakuliah` VALUES ('16IF1302', '33', 'Olahraga dan Seni', '32', '1', '2');
INSERT INTO `tb_matakuliah` VALUES ('16IF1210', '33', 'Prak. Teknologi Informasi', '74', '1', '1');
INSERT INTO `tb_matakuliah` VALUES ('16IF1209', '33', 'Peng. Teknologi Informasi', '21', '1', '2');
INSERT INTO `tb_matakuliah` VALUES ('16IF1207', '33', 'Dasar Pemrograman', '27', '1', '3');
INSERT INTO `tb_matakuliah` VALUES ('16IF1208', '33', 'Prak. Dasar Pemrograman', '27', '1', '1');
INSERT INTO `tb_matakuliah` VALUES ('16IF1206', '33', 'Bahasa Inggris A2', '48', '1', '2');
INSERT INTO `tb_matakuliah` VALUES ('16IF1204', '33', 'Algoritma & Pemrograman', '25', '1', '2');
INSERT INTO `tb_matakuliah` VALUES ('16IF1205', '33', 'Prak. Algoritma Pemrograman', '20', '1', '1');
INSERT INTO `tb_matakuliah` VALUES ('16UN1101', '33', 'Bahasa Indonesia', '53', '1', '2');
INSERT INTO `tb_matakuliah` VALUES ('IF33111', '33', 'Prak. Pemr Berbasis Objek', '27', '3', '1');
INSERT INTO `tb_matakuliah` VALUES ('UN31102k', '33', 'Pendidikan Agama Katholik Gabung TS/TI', '49', '3', '2');
INSERT INTO `tb_matakuliah` VALUES ('UN31102i', '33', 'Pendidikan Agama Islam', '51', '3', '2');
INSERT INTO `tb_matakuliah` VALUES ('UN31102b', '33', 'Pendidikan Agama Budha', '20', '3', '2');
INSERT INTO `tb_matakuliah` VALUES ('UN31101i', '33', 'Basis Data II', '50', '3', '2');
INSERT INTO `tb_matakuliah` VALUES ('IF33110', '33', 'Pemr. Berorientasi Obyek', '27', '3', '2');
INSERT INTO `tb_matakuliah` VALUES ('IF33109', '33', 'Prak. Pemrograman WEB', '73', '3', '1');
INSERT INTO `tb_matakuliah` VALUES ('IF32109', '33', 'Matematika Diskret', '22', '3', '3');
INSERT INTO `tb_matakuliah` VALUES ('IF33104', '33', 'Basis Data II', '25', '3', '2');
INSERT INTO `tb_matakuliah` VALUES ('IF33105', '33', 'Prak. Basis Data II', '75', '3', '1');
INSERT INTO `tb_matakuliah` VALUES ('IF33106', '33', 'Sistem Operasi', '32', '3', '3');
INSERT INTO `tb_matakuliah` VALUES ('IF33107', '33', 'Prak. Sistem Operasi', '76', '3', '1');
INSERT INTO `tb_matakuliah` VALUES ('IF33108', '33', 'pemrograman web', '24', '3', '3');
INSERT INTO `tb_matakuliah` VALUES ('IF54202', '33', 'Teknik Penulisan & Presentasi', '20', '5', '2');
INSERT INTO `tb_matakuliah` VALUES ('IF54101', '33', 'Sistem Komputer Interaktif', '30', '5', '2');
INSERT INTO `tb_matakuliah` VALUES ('IF53209', '33', 'Prak. Desain dan Aplikasi WEB', '74', '5', '1');
INSERT INTO `tb_matakuliah` VALUES ('IF53113', '33', 'Prak. Jaringan Komputer', '20', '5', '1');
INSERT INTO `tb_matakuliah` VALUES ('IF53112', '33', 'Jaringan Komputer', '20', '5', '2');
INSERT INTO `tb_matakuliah` VALUES ('IF52116', '33', 'Prak. Metode Numerik', '74', '5', '1');
INSERT INTO `tb_matakuliah` VALUES ('IF52115', '33', 'Metode Numerik', '29', '5', '2');
INSERT INTO `tb_matakuliah` VALUES ('IF52114', '33', 'Etika Profesi', '21', '5', '2');
INSERT INTO `tb_matakuliah` VALUES ('IF53207', '33', 'Mikroprosesor', '28', '5', '3');
INSERT INTO `tb_matakuliah` VALUES ('IF53208', '33', 'Desain dan Aplikasi WEB', '24', '5', '2');
INSERT INTO `tb_matakuliah` VALUES ('IF74206', '33', 'Teknologi Multimedia', '20', '7', '2');
INSERT INTO `tb_matakuliah` VALUES ('IF75102', '33', 'Riset Teknologi dan Informasi', '20', '7', '3');
INSERT INTO `tb_matakuliah` VALUES ('IF75101', '33', 'Program Profesional', '25', '7', '3');
INSERT INTO `tb_matakuliah` VALUES ('IF74102', '33', 'Man. Proyek Perangkat Lunak', '25', '7', '3');
INSERT INTO `tb_matakuliah` VALUES ('IF73218', '33', 'Pend. Pancasila', '29', '7', '2');
INSERT INTO `tb_matakuliah` VALUES ('IF73217', '33', 'Fisika dasar', '90', '7', '2');
INSERT INTO `tb_matakuliah` VALUES ('IF72208', '33', 'Riset Operasi', '30', '7', '2');
INSERT INTO `tb_matakuliah` VALUES ('TM12101', '32', 'Kalkulus I', '47', '1', '3');
INSERT INTO `tb_matakuliah` VALUES ('TM13101', '32', 'Statika Struktur I', '60', '1', '3');
INSERT INTO `tb_matakuliah` VALUES ('UN11101', '32', 'Pendidikan Pancasila', '70', '1', '2');
INSERT INTO `tb_matakuliah` VALUES ('TM12208', '32', 'Pemrograman Komputer', '58', '1', '2');
INSERT INTO `tb_matakuliah` VALUES ('TM12106', '32', 'Menggambar Teknik', '54', '1', '2');
INSERT INTO `tb_matakuliah` VALUES ('TM13110', '32', 'Proses Produksi I', '57', '1', '3');
INSERT INTO `tb_matakuliah` VALUES ('TM33106', '32', 'Termodinamika Teknik', '59', '3', '3');
INSERT INTO `tb_matakuliah` VALUES ('TM33102', '32', 'Elemen Mesin I', '54', '3', '2');
INSERT INTO `tb_matakuliah` VALUES ('TM32107', '32', 'Bahasa Inggris', '71', '3', '2');
INSERT INTO `tb_matakuliah` VALUES ('UN31102', '32', 'Pendidikan Agama Katholik', '62', '3', '2');
INSERT INTO `tb_matakuliah` VALUES ('TM32103', '32', 'Matematika Teknik I', '64', '3', '3');
INSERT INTO `tb_matakuliah` VALUES ('UN31102m', '32', 'Pendidikan Agama Islam (Gabung TM/TI)', '20', '3', '2');
INSERT INTO `tb_matakuliah` VALUES ('TM32211', '32', 'Metalurgi Fisik', '55', '3', '3');
INSERT INTO `tb_matakuliah` VALUES ('TM33214', '32', 'Statika Struktur II', '60', '3', '3');
INSERT INTO `tb_matakuliah` VALUES ('TM53219', '32', 'Mesin Konversi Energi', '59', '5', '3');
INSERT INTO `tb_matakuliah` VALUES ('TM53221', '32', 'Gambar Teknik /Menggbr Rekayas', '58', '5', '2');
INSERT INTO `tb_matakuliah` VALUES ('TM53107', '32', 'Perpindahan Panas', '72', '5', '3');
INSERT INTO `tb_matakuliah` VALUES ('TM53217', '32', 'Teknik Kendali', '63', '5', '2');
INSERT INTO `tb_matakuliah` VALUES ('TM53223', '32', 'Teknologi Perpipaan', '65', '5', '2');
INSERT INTO `tb_matakuliah` VALUES ('TM53218', '32', 'Elemen Mesin III', '54', '5', '2');
INSERT INTO `tb_matakuliah` VALUES ('TM53109', '32', 'Dinamika', '55', '5', '2');
INSERT INTO `tb_matakuliah` VALUES ('TM53112', '32', 'Teknik Tenaga Listrik', '58', '5', '2');
INSERT INTO `tb_matakuliah` VALUES ('TM73236', '32', 'Pompa dan Kompresor', '72', '7', '3');
INSERT INTO `tb_matakuliah` VALUES ('TM74101', '32', 'Manajemen Industri', '56', '7', '3');
INSERT INTO `tb_matakuliah` VALUES ('TM72217', '32', 'Getaran Mekanis', '47', '7', '2');
INSERT INTO `tb_matakuliah` VALUES ('TM73240', '32', 'Pengecoran Logam', '55', '7', '3');
INSERT INTO `tb_matakuliah` VALUES ('TM63246', '32', 'Bahan Bakar dan Pembakaran', '65', '7', '3');
INSERT INTO `tb_matakuliah` VALUES ('TM73222', '32', 'Ekologi Industri', '66', '7', '3');
INSERT INTO `tb_matakuliah` VALUES ('TM12104', '32', 'Fisika Dasar I', '56', '1', '3');
INSERT INTO `tb_matakuliah` VALUES ('TM63237', '32', 'Pengangkat dan Alat Berat', '60', '6', '3');
INSERT INTO `tb_matakuliah` VALUES ('TM53107c', '32', 'Perpindahan Panas C', '65', '5', '3');
INSERT INTO `tb_matakuliah` VALUES ('16TS1304', '31', 'Gambar Teknik /Menggbr Rekayas', '20', '1', '2');
INSERT INTO `tb_matakuliah` VALUES ('TS12103', '31', 'Prak. Fisika Dasar', '39', '1', '2');
INSERT INTO `tb_matakuliah` VALUES ('TS12102', '31', 'Statika', '39', '1', '3');
INSERT INTO `tb_matakuliah` VALUES ('16UN1106', '31', 'Bahasa Indonesia A1', '81', '1', '2');
INSERT INTO `tb_matakuliah` VALUES ('16UN1110', '31', 'Pend. Pancasila (SMT.1)', '20', '1', '2');
INSERT INTO `tb_matakuliah` VALUES ('TG13201', '31', 'Ilmu Ukur Tanah/Geomatika', '35', '1', '1');
INSERT INTO `tb_matakuliah` VALUES ('TS13201', '31', 'Ilmu Ukur Tanah/ Geomatika', '91', '1', '2');
INSERT INTO `tb_matakuliah` VALUES ('TS12106', '31', 'Pengantar AMDAL/Ilmu Lingkungan', '38', '1', '2');
INSERT INTO `tb_matakuliah` VALUES ('TS12101', '31', 'Matematika Dasar', '41', '1', '2');
INSERT INTO `tb_matakuliah` VALUES ('UN11101i', '31', 'Pendidikan Agama Islam', '91', '1', '2');
INSERT INTO `tb_matakuliah` VALUES ('TS12104', '31', 'Fisika Dasar', '39', '1', '2');
INSERT INTO `tb_matakuliah` VALUES ('UN31102s', '31', 'Pend. Pancasila (SMT. 3)', '20', '3', '2');
INSERT INTO `tb_matakuliah` VALUES ('TS32114', '31', 'Kalkulus II', '82', '3', '3');
INSERT INTO `tb_matakuliah` VALUES ('TS32115', '31', 'Mekanika Bahan', '43', '3', '3');
INSERT INTO `tb_matakuliah` VALUES ('TS32116', '31', 'Mekanika Tanah I', '20', '3', '2');
INSERT INTO `tb_matakuliah` VALUES ('TS32117', '31', 'Struktur Bangunan', '40', '3', '3');
INSERT INTO `tb_matakuliah` VALUES ('TS33101', '31', 'Hidraulika ', '61', '3', '2');
INSERT INTO `tb_matakuliah` VALUES ('TS33102', '31', 'Geometrik Jalan/ P G J', '35', '3', '3');
INSERT INTO `tb_matakuliah` VALUES ('TS33103', '31', 'Struktur Fondasi Dangkal/Rekayasa Fondasi', '46', '3', '2');
INSERT INTO `tb_matakuliah` VALUES ('TS52122', '31', 'Pemrograman Komputer/Bhs Pemrograman', '91', '5', '2');
INSERT INTO `tb_matakuliah` VALUES ('TS52205', '31', 'Pend Pancasila (TI/TM)', '82', '5', '2');
INSERT INTO `tb_matakuliah` VALUES ('TS53106', '31', 'Struktur Rangka Baja', '40', '5', '2');
INSERT INTO `tb_matakuliah` VALUES ('TS53107', '31', 'Str Plat & Balok Btn/Str. Beton Bertulang', '20', '5', '2');
INSERT INTO `tb_matakuliah` VALUES ('TS53203', '31', 'Analisis Struktur Metode Matriks/Matriks TS', '59', '5', '3');
INSERT INTO `tb_matakuliah` VALUES ('TS53204', '31', 'Penyelidikan Tanah Dan Lokasi', '77', '5', '2');
INSERT INTO `tb_matakuliah` VALUES ('TS53205', '31', 'Pemrograman Komputer', '35', '5', '2');
INSERT INTO `tb_matakuliah` VALUES ('TS73212', '31', 'Drainasi', '20', '5', '2');
INSERT INTO `tb_matakuliah` VALUES ('TS52204', '31', 'Peraturan Perundangan Jasa Konstruksi', '20', '3', '2');
INSERT INTO `tb_matakuliah` VALUES ('TS 53106', '31', 'Struktur Baja I', '40', '5', '2');
INSERT INTO `tb_matakuliah` VALUES ('TS 53108', '31', 'Irigasi & Bangunan Air/Rekayas', '37', '5', '3');
INSERT INTO `tb_matakuliah` VALUES ('TS73111', '31', 'Perencanaan Perkerasan Jalan', '20', '7', '2');
INSERT INTO `tb_matakuliah` VALUES ('TS73211', '31', 'Bahan Lapis Keras', '20', '7', '2');
INSERT INTO `tb_matakuliah` VALUES ('TS74201', '31', 'Metode Pelak. & Pembongkaran Kons./MPB', '91', '7', '2');
INSERT INTO `tb_matakuliah` VALUES ('TS73214', '31', 'Teknik Pantai', '79', '7', '2');
INSERT INTO `tb_matakuliah` VALUES ('TS73216', '31', 'Penyusunan Rencana Anggaran Biaya', '20', '5', '3');
INSERT INTO `tb_matakuliah` VALUES ('TS74202', '31', 'Rek. & Perencanaan Pryk. /ManKons. Lanjut', '91', '7', '2');
INSERT INTO `tb_matakuliah` VALUES ('16TS1309', '31', 'Bahasa Inggris', '83', '1', '2');
INSERT INTO `tb_matakuliah` VALUES ('UN11101k', '31', 'Pendidikan Agama Kristen', '93', '1', '2');
INSERT INTO `tb_matakuliah` VALUES ('IF54201', '33', 'Kewirausahaan', '59', '5', '2');
INSERT INTO `tb_matakuliah` VALUES ('TM74202', '32', 'Kewirausahaan TM', '59', '7', '2');
INSERT INTO `tb_matakuliah` VALUES ('TS000002', '31', 'Kewirausahaan Jasa Konstruksi', '87', '7', '2');
INSERT INTO `tb_matakuliah` VALUES ('16UN1107', '31', 'Bahasa Indonesia A2', '94', '1', '2');
INSERT INTO `tb_matakuliah` VALUES ('TS 52205', '31', 'Ekonomi Teknik', '41', '5', '2');
INSERT INTO `tb_matakuliah` VALUES ('IF3215', '33', 'Sistem Pakar', '29', '7', '2');
INSERT INTO `tb_matakuliah` VALUES ('1qwe21', '33', 'private', '96', '7', '8');
INSERT INTO `tb_matakuliah` VALUES ('', 'Pi', '', 'Pilih dosen', 'P', '');

-- ----------------------------
-- Table structure for tb_prodi
-- ----------------------------
DROP TABLE IF EXISTS `tb_prodi`;
CREATE TABLE `tb_prodi` (
  `id_prodi` int(11) DEFAULT NULL,
  `prodi` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_prodi
-- ----------------------------
INSERT INTO `tb_prodi` VALUES ('31', 'Teknik Sipil');
INSERT INTO `tb_prodi` VALUES ('33', 'Teknik Informatika ');
INSERT INTO `tb_prodi` VALUES ('32', 'Teknik Mesin');

-- ----------------------------
-- Table structure for tb_ruangan
-- ----------------------------
DROP TABLE IF EXISTS `tb_ruangan`;
CREATE TABLE `tb_ruangan` (
  `id_ruangan` int(11) NOT NULL AUTO_INCREMENT,
  `ruang` varchar(35) NOT NULL,
  `lantai` varchar(15) NOT NULL,
  `kapasitas` varchar(6) NOT NULL,
  `fungsi` varchar(30) NOT NULL,
  PRIMARY KEY (`id_ruangan`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tb_ruangan
-- ----------------------------
INSERT INTO `tb_ruangan` VALUES ('17', 'R 1.16A', 'Lantai 1', '32', 'Ruang Teori');
INSERT INTO `tb_ruangan` VALUES ('18', 'R 1.16B', 'Lantai 1', '32', 'Ruang Teori');
INSERT INTO `tb_ruangan` VALUES ('19', 'R 1.16C', 'Lantai 1', '20', 'Ruang Teori');
INSERT INTO `tb_ruangan` VALUES ('20', 'R 1.21', 'Lantai 1', '40', 'Ruang Teori');
INSERT INTO `tb_ruangan` VALUES ('21', 'R 2.18', 'Lantai 2', '60', 'Ruang Teori');
INSERT INTO `tb_ruangan` VALUES ('22', 'R 2.19', 'Lantai 2', '40', 'Ruang Teori');
INSERT INTO `tb_ruangan` VALUES ('23', 'R 2.20', 'Lantai 2', '40', 'Ruang Teori');
INSERT INTO `tb_ruangan` VALUES ('24', 'R 4.05', 'Lantai 4', '30', 'Ruang Teori');
INSERT INTO `tb_ruangan` VALUES ('25', 'R 4.06', 'Lantai 4', '40', 'Ruang Teori');
INSERT INTO `tb_ruangan` VALUES ('26', 'Lab. Komputer', 'Lantai 3', '20', 'Ruang Praktikum');
INSERT INTO `tb_ruangan` VALUES ('27', 'Lab. Jaringan Komp & Internet', 'Lantai 3', '20', 'Ruang Praktikum');
INSERT INTO `tb_ruangan` VALUES ('28', 'Lab. Basis Data', 'Lantai 3', '20', 'Ruang Praktikum');
INSERT INTO `tb_ruangan` VALUES ('29', 'Lab. Digital', 'Lantai 3', '30', 'Ruang Praktikum');
INSERT INTO `tb_ruangan` VALUES ('30', 'Aula  KPH Purwokusumo', 'Lantai 2', '1000', 'Ruang Aula');
INSERT INTO `tb_ruangan` VALUES ('31', 'Multipurpose', 'Lantai 2', '500', 'Ruang Aula');
INSERT INTO `tb_ruangan` VALUES ('32', 'Exlusive Room', 'Lantai 2', '250', 'Ruang Aula');
INSERT INTO `tb_ruangan` VALUES ('33', 'R 4.01', 'Lantai 4', '20', 'Ruang Teori');
INSERT INTO `tb_ruangan` VALUES ('34', 'Lab. Proses Produksi', 'Basement', '30', 'Ruang Praktikum');
INSERT INTO `tb_ruangan` VALUES ('35', 'R 4.07', 'Lantai 4', '30', 'Ruang Teori');
INSERT INTO `tb_ruangan` VALUES ('36', 'R. 4. 08', 'Lantai 4', '20', 'Ruang Teori');
INSERT INTO `tb_ruangan` VALUES ('37', 'Transit FT (Absen)', 'Lantai 1', '10', 'Ruang Aula');
INSERT INTO `tb_ruangan` VALUES ('38', 'R. 4.03', 'Lantai 4', '80', 'Ruang Teori');
INSERT INTO `tb_ruangan` VALUES ('39', 'R. 4.02', 'Lantai 4', '60', 'Ruang Teori');
INSERT INTO `tb_ruangan` VALUES ('40', 'E-learning', 'Lantai 3', '40', 'Ruang Aula');
INSERT INTO `tb_ruangan` VALUES ('41', 'ada, mohon menunggu', 'Lantai Dasar', '1', 'Ruang Teori');
INSERT INTO `tb_ruangan` VALUES ('42', 'Transit (Kumpul Tugas+Absen)', 'Lantai 1', '15', 'Ruang Teori');
INSERT INTO `tb_ruangan` VALUES ('43', 'Transit (ambil Soal)', 'Lantai 1', '', 'Ruang Teori');
INSERT INTO `tb_ruangan` VALUES ('44', 'quiz', 'Lantai 2', '', 'Ruang Teori');
INSERT INTO `tb_ruangan` VALUES ('45', 'tunggu dulu!', 'Lantai 2', '50', 'Ruang Teori');
INSERT INTO `tb_ruangan` VALUES ('46', 'KUMPUL TUGAS (TRANSIT)', 'Lantai 1', '', 'Ruang Teori');
INSERT INTO `tb_ruangan` VALUES ('47', 'TRANSIT (KUMPUL TUGAS)', 'Pilih Lantai', '', 'Ruang Teori');
INSERT INTO `tb_ruangan` VALUES ('49', 'aabbcc', 'Lantai Dasar', '3', 'Ruang Aula');
INSERT INTO `tb_ruangan` VALUES ('50', 'aaabc', 'Lantai 3', '9', 'Ruang Praktikum');

-- ----------------------------
-- Table structure for tb_today
-- ----------------------------
DROP TABLE IF EXISTS `tb_today`;
CREATE TABLE `tb_today` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_matakuliah` varchar(30) NOT NULL,
  `keterangan` varchar(50) NOT NULL,
  `non_aktif` varchar(3) NOT NULL,
  `ruang` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tb_today
-- ----------------------------
INSERT INTO `tb_today` VALUES ('5', 'TM13110', 'Masuk di R 2.19', '15', 'R 2.19');
INSERT INTO `tb_today` VALUES ('9', 'TM53109', '', '15', '');
INSERT INTO `tb_today` VALUES ('11', 'IF53113', '', '16', '');
INSERT INTO `tb_today` VALUES ('17', 'TS53204', 'Masuk di R 2.20', '15', 'R 2.20');
INSERT INTO `tb_today` VALUES ('18', 'TS74202', '', '15', '');
INSERT INTO `tb_today` VALUES ('25', '', 'Masuk di R 2.18', '15', 'R 2.18');
SET FOREIGN_KEY_CHECKS=1;
