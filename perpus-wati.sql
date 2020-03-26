/*
SQLyog Community v13.1.5  (64 bit)
MySQL - 10.4.8-MariaDB : Database - perpus-wati
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`perpus-wati` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `perpus-wati`;

/*Table structure for table `buku` */

DROP TABLE IF EXISTS `buku`;

CREATE TABLE `buku` (
  `buku_id` int(11) NOT NULL AUTO_INCREMENT,
  `buku_judul` varchar(100) DEFAULT NULL,
  `buku_penerbit` varchar(50) DEFAULT NULL,
  `buku_pengarang` varchar(50) DEFAULT NULL,
  `buku_tahun_terbit` year(4) DEFAULT NULL,
  `id_kategori` int(11) DEFAULT NULL,
  `buku_stok` int(11) DEFAULT NULL,
  PRIMARY KEY (`buku_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4;

/*Data for the table `buku` */

insert  into `buku`(`buku_id`,`buku_judul`,`buku_penerbit`,`buku_pengarang`,`buku_tahun_terbit`,`id_kategori`,`buku_stok`) values 
(1,'The Witcher 3','Graha Mulia','Adjie Susanto',2019,7,2),
(3,'The Witcher 2','Graha Mulia','Adjie Susanto',2139,7,3),
(4,'The Witcher','Graha Mulia','Adjie Susanto',2011,7,4),
(5,'Naruto','Shounen Jump','Masashi Kishimoto',2000,4,5),
(6,'Bleach','Shounen Jump','Tite Kubo',2000,4,7),
(7,'Matimatika Lanjut','Kemdikti','Ali Sarjo',2015,3,50);

/*Table structure for table `kategori` */

DROP TABLE IF EXISTS `kategori`;

CREATE TABLE `kategori` (
  `kategori_id` int(11) NOT NULL AUTO_INCREMENT,
  `kategori_nama` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`kategori_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4;

/*Data for the table `kategori` */

insert  into `kategori`(`kategori_id`,`kategori_nama`) values 
(1,'Sains'),
(3,'Matematika'),
(4,'Komik'),
(5,'Sejarah'),
(6,'Cerpen'),
(7,'Novel'),
(8,'Bahasa Indonesia');

/*Table structure for table `kelas` */

DROP TABLE IF EXISTS `kelas`;

CREATE TABLE `kelas` (
  `kelas_id` int(11) NOT NULL AUTO_INCREMENT,
  `kelas_nama` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`kelas_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4;

/*Data for the table `kelas` */

insert  into `kelas`(`kelas_id`,`kelas_nama`) values 
(1,'1A'),
(3,'1B'),
(4,'2A'),
(5,'2B'),
(6,'3A'),
(7,'3B');

/*Table structure for table `konfigurasi` */

DROP TABLE IF EXISTS `konfigurasi`;

CREATE TABLE `konfigurasi` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama_aplikasi` varchar(50) DEFAULT NULL,
  `denda` int(11) DEFAULT NULL,
  `waktu_denda` int(5) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

/*Data for the table `konfigurasi` */

insert  into `konfigurasi`(`id`,`nama_aplikasi`,`denda`,`waktu_denda`) values 
(1,'Perpus-SMPN 1 Sarjo',1000,3);

/*Table structure for table `pinjam` */

DROP TABLE IF EXISTS `pinjam`;

CREATE TABLE `pinjam` (
  `pinjam_id` int(11) NOT NULL AUTO_INCREMENT,
  `pinjam_nama` varchar(50) DEFAULT NULL,
  `pinjam_status` enum('siswa','guru') DEFAULT NULL,
  `id_buku` int(11) DEFAULT NULL,
  `id_buku2` int(11) DEFAULT NULL,
  `pinjam_tanggal` date DEFAULT NULL,
  `id_user` int(11) DEFAULT NULL,
  `id_kelas` int(11) DEFAULT NULL,
  `pinjam_status_kembali` enum('sudah dikembalikan','belum dikembalikan') DEFAULT NULL,
  `pinjam_tanggal_kembali` date DEFAULT NULL,
  `denda` int(11) DEFAULT NULL,
  PRIMARY KEY (`pinjam_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4;

/*Data for the table `pinjam` */

insert  into `pinjam`(`pinjam_id`,`pinjam_nama`,`pinjam_status`,`id_buku`,`id_buku2`,`pinjam_tanggal`,`id_user`,`id_kelas`,`pinjam_status_kembali`,`pinjam_tanggal_kembali`,`denda`) values 
(3,'Ahmat Arnal','siswa',4,0,'2019-12-16',1,1,'belum dikembalikan',NULL,NULL),
(4,'Andrian Maulana','siswa',5,NULL,'2019-12-27',1,3,'belum dikembalikan',NULL,NULL),
(5,'Yudha','siswa',3,0,'2019-12-28',1,3,'sudah dikembalikan','2019-12-29',NULL),
(6,'Himiko','siswa',3,1,'2019-12-28',1,3,'belum dikembalikan',NULL,NULL),
(8,'Merlin','guru',5,4,'2019-12-29',1,NULL,'sudah dikembalikan','2020-03-26',23000),
(11,'aaaa','siswa',3,0,'2019-12-31',1,1,'sudah dikembalikan','2019-12-31',NULL);

/*Table structure for table `pinjam_kelas` */

DROP TABLE IF EXISTS `pinjam_kelas`;

CREATE TABLE `pinjam_kelas` (
  `pinjam_id` int(11) NOT NULL AUTO_INCREMENT,
  `id_kelas` int(11) DEFAULT NULL,
  `pinjam_penanggung_jawab` varchar(50) DEFAULT NULL,
  `id_buku` int(11) DEFAULT NULL,
  `pinjam_jumlah_buku` int(5) DEFAULT NULL,
  `pinjam_tanggal` date DEFAULT NULL,
  `pinjam_status` enum('belum dikembalikan','sudah dikembalikan') DEFAULT NULL,
  `pinjam_tanggal_kembali` date DEFAULT NULL,
  `id_user` int(11) DEFAULT NULL,
  `denda` int(11) DEFAULT NULL,
  PRIMARY KEY (`pinjam_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;

/*Data for the table `pinjam_kelas` */

insert  into `pinjam_kelas`(`pinjam_id`,`id_kelas`,`pinjam_penanggung_jawab`,`id_buku`,`pinjam_jumlah_buku`,`pinjam_tanggal`,`pinjam_status`,`pinjam_tanggal_kembali`,`id_user`,`denda`) values 
(1,6,'Kartika',7,50,'2019-12-29','sudah dikembalikan','2020-03-26',1,50000),
(4,1,'Samsir',6,2,'2020-03-26','belum dikembalikan',NULL,1,NULL);

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `role` enum('Admin','Petugas') DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`) values 
(1,'admin','$2y$10$lJmSnBtucoM/Q5p7mkB2OuV6KfxkjeOel3V3aUWKZGrdnMbzotwIO','Admin'),
(2,'arnal','$2y$10$WBQ6ZaAU4bi3yV/iN59RMOLvDzU0xhBMKxaa0e0GVIzxSohD7UtNu','Petugas');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
