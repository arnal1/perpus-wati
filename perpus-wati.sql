/*
SQLyog Community v13.1.5  (64 bit)
MySQL - 10.4.8-MariaDB : Database - ppdb-sarjo
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`ppdb-sarjo` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `ppdb-sarjo`;

/*Table structure for table `formulir` */

DROP TABLE IF EXISTS `formulir`;

CREATE TABLE `formulir` (
  `id` int(15) NOT NULL AUTO_INCREMENT,
  `nama_siswa` varchar(50) NOT NULL,
  `jenis_kelamin` enum('Laki - laki','Perempuan') NOT NULL,
  `nisn` char(10) DEFAULT NULL,
  `nik` char(20) DEFAULT NULL,
  `tempat_lahir` varchar(30) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `agama_siswa` enum('Islam','Kristen / Protestan','Katholik','Hindu','Budha','Khonghucu','Kepercayaan Kepada Tuhan YME','Lainnya') NOT NULL,
  `is_wna` tinyint(1) NOT NULL,
  `nama_negara` varchar(50) DEFAULT NULL,
  `kebutuhan_khusus` enum('Tidak','Netra (A)','Rungu (B)','Grahita Ringan (C)','Grahita Sedang (C1)','Daksa Ringan (D)','Daksa Sedang (D1)','Laras (E)','Wicara (F)','Tuna Ganda (G)','Hiper Aktif (H)','Cerdas Istimewa (I)','Bakat Istimewa (J)','Kesulitan Belajar (K)','Narkoba (N)','Indigo (O)','Down Sindrome (P)','Autis (Q)') DEFAULT NULL,
  `alamat_siswa` text NOT NULL,
  `kode_pos` char(5) DEFAULT NULL,
  `lintang` varchar(50) DEFAULT NULL,
  `bujur` varchar(50) DEFAULT NULL,
  `tempat_tinggal` enum('Bersama Orang Tua','Wali','Kos','Asrama','Panti Asuhan','Lainnya') DEFAULT NULL,
  `moda_transportasi` enum('Jalan Kaki','Kendaraan Priadi','Kendaraan Umum/Angkot/Pete-pete','Jemputan Sekolah','Kereta Api','Ojek','Andong/Bendi/Sado/Dokar/Delman/Beca','Perahu Penyebrangan/Rakit/Getek','Lainnya') DEFAULT NULL,
  `nomor_kks` varchar(8) DEFAULT NULL,
  `anak_keberapa` int(2) DEFAULT NULL,
  `nomor_kps` varchar(15) DEFAULT NULL,
  `layak_pip` enum('Ya','Tidak') DEFAULT NULL,
  `nomor_kip` varchar(6) DEFAULT NULL,
  `nama_kip` varchar(50) DEFAULT NULL,
  `terima_fisik_kip` enum('Ya','Tidak','-') DEFAULT NULL,
  `alasan_layak_pip` enum('-','Pemegang PKH/KPS/KIP','Penerima BSM 2014','Yatim Piatu/Panti Asuhan/Panti Sosial','Dampak Bencana Alam','Pernah Drop OUT','Siswa Miskin/Rentan Miskin','Daerah Konflik','Keluarga Terpidana','Kelainan Fisik') DEFAULT NULL,
  `nomor_telepon` varchar(15) DEFAULT NULL,
  `nomor_hp` varchar(15) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `nama_ayah` varchar(50) DEFAULT NULL,
  `nik_ayah` char(20) DEFAULT NULL,
  `tahun_lahir_ayah` year(4) DEFAULT NULL,
  `pendidikan_ayah` enum('Tidak Sekolah','Putus SD','SD Sederajat','SMP Sederajat','SMA Sederajat','D1','D2','D3','D4/S1','S2','S3') NOT NULL,
  `pekerjaan_ayah` enum('Tidak Bekerja','Nelayan','Petani','Peternak','PNS/TNI/POLRI','Karyawan Swasta','Pedagang Kecil','Pedagang Besar','Wiraswasta','Wirausaha','Buruh','Pensiunan','Lain-lain','Meninggal Dunia') NOT NULL,
  `penghasilan_ayah` enum('-','Kurang dari 500.000','500.000 - 999.999','1 juta - 1.999.999','2 juta - 4.999.999','5 juta - 20 juta','Lebih dari 20 juta') NOT NULL,
  `nama_ibu` varchar(50) NOT NULL,
  `nik_ibu` char(20) NOT NULL,
  `tahun_lahir_ibu` year(4) NOT NULL,
  `pendidikan_ibu` enum('Tidak Sekolah','Putus SD','SD Sederajat','SMP Sederajat','SMA Sederajat','D1','D2','D3','D4/S1','S2','S3') NOT NULL,
  `pekerjaan_ibu` enum('Tidak Bekerja','Nelayan','Petani','Peternak','PNS/TNI/POLRI','Karyawan Swasta','Pedagang Kecil','Pedagang Besar','Wiraswasta','Wirausaha','Buruh','Pensiunan','Lain-lain','Meninggal Dunia') NOT NULL,
  `penghasilan_ibu` enum('-','Kurang dari 500.000','500.000 - 999.999','1 juta - 1.999.999','2 juta - 4.999.999','5 juta - 20 juta','Lebih dari 20 juta') NOT NULL,
  `nama_wali` varchar(50) DEFAULT NULL,
  `nik_wali` char(20) DEFAULT NULL,
  `tahun_lahir_wali` year(4) DEFAULT NULL,
  `pendidikan_wali` enum('Tidak Sekolah','Putus SD','SD Sederajat','SMP Sederajat','SMA Sederajat','D1','D2','D3','D4/S1','S2','S3') NOT NULL,
  `pekerjaan_wali` enum('Tidak Bekerja','Nelayan','Petani','Peternak','PNS/TNI/POLRI','Karyawan Swasta','Pedagang Kecil','Pedagang Besar','Wiraswasta','Wirausaha','Buruh','Pensiunan','Lain-lain','Meninggal Dunia') NOT NULL,
  `penghasilan_wali` enum('-','Kurang dari 500.000','500.000 - 999.999','1 juta - 1.999.999','2 juta - 4.999.999','5 juta - 20 juta','Lebih dari 20 juta') NOT NULL,
  `tinggi_badan` int(3) DEFAULT NULL,
  `berat_badan` int(3) DEFAULT NULL,
  `jumlah_saudara_kandung` int(2) DEFAULT NULL,
  `shun` varchar(255) DEFAULT NULL,
  `foto` varchar(255) DEFAULT NULL,
  `kartu_keluarga` varchar(255) DEFAULT NULL,
  `ktp` varchar(255) DEFAULT NULL,
  `akta_kelahiran` varchar(255) DEFAULT NULL,
  `status_pendaftaran` enum('Belum Diverifikasi','Diterima','Tidak Diterima') NOT NULL,
  `tanggal_pendaftaran` date DEFAULT NULL,
  PRIMARY KEY (`id`,`tempat_lahir`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

/*Data for the table `formulir` */

insert  into `formulir`(`id`,`nama_siswa`,`jenis_kelamin`,`nisn`,`nik`,`tempat_lahir`,`tanggal_lahir`,`agama_siswa`,`is_wna`,`nama_negara`,`kebutuhan_khusus`,`alamat_siswa`,`kode_pos`,`lintang`,`bujur`,`tempat_tinggal`,`moda_transportasi`,`nomor_kks`,`anak_keberapa`,`nomor_kps`,`layak_pip`,`nomor_kip`,`nama_kip`,`terima_fisik_kip`,`alasan_layak_pip`,`nomor_telepon`,`nomor_hp`,`email`,`nama_ayah`,`nik_ayah`,`tahun_lahir_ayah`,`pendidikan_ayah`,`pekerjaan_ayah`,`penghasilan_ayah`,`nama_ibu`,`nik_ibu`,`tahun_lahir_ibu`,`pendidikan_ibu`,`pekerjaan_ibu`,`penghasilan_ibu`,`nama_wali`,`nik_wali`,`tahun_lahir_wali`,`pendidikan_wali`,`pekerjaan_wali`,`penghasilan_wali`,`tinggi_badan`,`berat_badan`,`jumlah_saudara_kandung`,`shun`,`foto`,`kartu_keluarga`,`ktp`,`akta_kelahiran`,`status_pendaftaran`,`tanggal_pendaftaran`) values 
(6,'Ahmat Arnal Kastana','Laki - laki','0009321234','6112090906021104','Beringin Jaya','2019-11-13','Islam',0,'','Tidak','Jl. S Parman, RT 1, RW 2, Dusun Ratolene, Kelurahan Kasiguncu, Kecamatan Poso Pesisir','11111','','','Bersama Orang Tua','Kendaraan Priadi','',1,'',NULL,'','',NULL,'-',NULL,'082187893504','ahmatarnal@gmail.com','Suryono','6112090906021098',1957,'SMP Sederajat','Meninggal Dunia','-','Sumiati','6112090906021104',1975,'SMA Sederajat','Wiraswasta','2 juta - 4.999.999','','',0000,'Tidak Sekolah','Tidak Bekerja','',168,50,2,'shun_51d78ad.png','foto_797f78d.png','kk_b20d5ca.png','ktp_8e8a7c8.png','akta_9bc7571.png','Tidak Diterima','2019-12-13'),
(7,'Andrian Maulana','Laki - laki','0009321235','6112090906021104','Masamba','2019-12-18','Islam',0,'','Tidak','Jl. Trans Sulawesi, RT 1, RW 2, Dusun Ratolene, Kelurahan Kasiguncu, Kecamatan poso pesisir','12211','','','Bersama Orang Tua','Kendaraan Priadi','',2,'',NULL,'','',NULL,'-',NULL,'082187893502','divakhairil@gmail.com','Suryono','6112090906021104',1957,'SMP Sederajat','Wiraswasta','2 juta - 4.999.999','Sumiati','6112090906021104',1975,'SMA Sederajat','Wiraswasta','2 juta - 4.999.999','','',0000,'Tidak Sekolah','Tidak Bekerja','',167,52,2,'shun_93b637e.png','foto_5e86b2a.png','kk_bcaf988.png','ktp_e598c98.png','akta_88a11e2.png','Belum Diverifikasi','2019-12-11'),
(9,'Susanti','Perempuan','0009321239','6112090906021104','Surabaya','2019-12-03','Islam',0,'','Tidak','Jl. Kemanggisan, RT 5, RW 3, Dusun , Kelurahan Petobo, Kecamatan Palu timur','55555','','','Bersama Orang Tua','Kendaraan Priadi','',3,'',NULL,'','',NULL,'-','','082187893504','devilservantx@gmail.com','sukadi','6112090906021104',1957,'SMA Sederajat','Peternak','500.000 - 999.999','Suemi','6112090906021104',1986,'D3','PNS/TNI/POLRI','500.000 - 999.999','','',0000,'Tidak Sekolah','Tidak Bekerja','',180,80,8,'shun_b6ab0ef.png','foto_98b5507.png','kk_dd6f91e.png','ktp_fab76bc.png','akta_5c030ec.png','Tidak Diterima','2019-12-03');

/*Table structure for table `konfigurasi` */

DROP TABLE IF EXISTS `konfigurasi`;

CREATE TABLE `konfigurasi` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama_sekolah` varchar(30) DEFAULT NULL,
  `alamat_sekolah` varchar(50) DEFAULT NULL,
  `telepon_sekolah` char(12) DEFAULT NULL,
  `setdaftar` enum('Buka','Tutup') DEFAULT NULL,
  `setpengumuman` enum('Buka','Tutup') DEFAULT NULL,
  `nama_website` varchar(50) DEFAULT NULL,
  `keterangan` text DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

/*Data for the table `konfigurasi` */

insert  into `konfigurasi`(`id`,`nama_sekolah`,`alamat_sekolah`,`telepon_sekolah`,`setdaftar`,`setpengumuman`,`nama_website`,`keterangan`) values 
(1,'SMA Negeri 1 Sarjo','JL. H.Muh.Saleh, Kabupaten Mamuju Utara, Sulawesi ','082187893503','Buka','Buka','PPDB Sarjo','Halaman ini merupakan resmi Pendaftaran Peserta Didik Baru SMA Negeri 1 Sarjo. Untuk melakukan pendaftaran silahkan klik menu daftar atau jika sudah mendaftar silahkan cetak bukti pendaftarannya melalui menu print. Untuk informasi lebih lanjut bisa menghubungi Panitia PPDB melalui No.Tlp/HP berikut 082187893504. ');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) NOT NULL,
  `password` varchar(255) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `level` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`name`,`level`) values 
(1,'admin','$2y$10$IlDNdUZiADODrV1l.yf3V.i18oMX262IedklBo2tlWWWtSCXqJP2i','Ahmat Arnal Kastana',1);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
