-- --------------------------------------------------------
-- Host:                         192.168.100.7
-- Server version:               5.5.50-MariaDB - MariaDB Server
-- Server OS:                    Linux
-- HeidiSQL Version:             12.3.0.6649
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

-- Dumping structure for table erecruit_ntc.agenda
CREATE TABLE IF NOT EXISTS `agenda` (
  `id_agenda` int(5) NOT NULL AUTO_INCREMENT,
  `tema` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `tema_seo` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `isi_agenda` text COLLATE latin1_general_ci NOT NULL,
  `tempat` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `pengirim` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `tgl_mulai` date NOT NULL,
  `tgl_selesai` date NOT NULL,
  `tgl_posting` date NOT NULL,
  `jam` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `username` varchar(50) COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`id_agenda`)
) ENGINE=MyISAM AUTO_INCREMENT=41 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- Dumping data for table erecruit_ntc.agenda: 5 rows
/*!40000 ALTER TABLE `agenda` DISABLE KEYS */;
INSERT INTO `agenda` (`id_agenda`, `tema`, `tema_seo`, `isi_agenda`, `tempat`, `pengirim`, `tgl_mulai`, `tgl_selesai`, `tgl_posting`, `jam`, `username`) VALUES
	(30, 'Seminar "Membangun Portal Berita ala Detik.com"', 'seminar-membangun-portal-berita-ala-detikcom', 'Seminar ini akan membahas tentang konsep, proses, dan implementasi dalam membangun portal berita sekelas detik.com.<br>', 'Lab. Universitas Atmajaya Yogyakarta', 'HMJ TI (081843092580)', '2009-03-14', '2009-03-14', '2009-01-31', '11.00 s/d 13.00 WIB', 'admin'),
	(31, 'Bedah Buku "Membongkar Trik Rahasia Master PHP"', 'bedah-buku-membongkar-trik-rahasia-master-php', 'Acara bedah buku terbaru dari Lukmanul Hakim yang berjudul Membongkar Trik Rahasia Para Master PHP.\r\n', 'Toko Buku Gramedia Sudirman', 'Enda (08192839849)', '2009-10-29', '2009-10-30', '2009-01-31', '08.00 s/d 12.00 WIB', 'joko'),
	(29, 'Workshop "3 Hari Menjadi Master PHP"', 'workshop-3-hari-menjadi-master-php', 'Workshop ini bertujuan untuk bla .. bla .. bla<br>', 'Jogja Expo Center', 'Adi (081893274848)', '2009-02-21', '2009-02-23', '2009-01-31', '15.00 s/d Selesai', 'sinto'),
	(36, 'Workshop VBA Programming for Excel', 'workshop-vba-programming-for-excel', 'Tes\r\n', 'Lab. Pusat Komputer UII', 'Aci (08189320984)', '2009-10-29', '2009-10-29', '2009-10-26', '09.00 s/d Selesai', 'wiro'),
	(38, 'Workshop Kolaborasi PHP dan jQuery', 'workshop-kolaborasi-php-dan-jquery', 'Materinya mengenai cara mengkolaborasikan pemrograman PHP dan jQuery', 'Hotel Santika Yogyakarta', 'Rendy (08787768768)', '2010-01-15', '2010-01-15', '2010-01-15', '09.00 s/d 16.00 WIB', 'admin');
/*!40000 ALTER TABLE `agenda` ENABLE KEYS */;

-- Dumping structure for table erecruit_ntc.album
CREATE TABLE IF NOT EXISTS `album` (
  `id_album` int(5) NOT NULL AUTO_INCREMENT,
  `jdl_album` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `album_seo` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `gbr_album` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `aktif` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'Y',
  PRIMARY KEY (`id_album`)
) ENGINE=MyISAM AUTO_INCREMENT=26 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- Dumping data for table erecruit_ntc.album: 6 rows
/*!40000 ALTER TABLE `album` DISABLE KEYS */;
INSERT INTO `album` (`id_album`, `jdl_album`, `album_seo`, `gbr_album`, `aktif`) VALUES
	(21, 'Kartun', 'kartun', '476928sonic.jpg', ''),
	(20, 'Pernikahan', 'pernikahan', '146667nikah.jpg', 'Y'),
	(18, 'Bayi', 'bayi', '246551silvestree.jpg', 'Y'),
	(12, 'Ilustrator', 'ilustrator', '987701family.jpg', 'Y'),
	(19, 'Binatang', 'binatang', '391479burung.jpg', 'Y'),
	(17, 'Arsitektur', 'arsitektur', '741638arche090.jpg', 'Y');
/*!40000 ALTER TABLE `album` ENABLE KEYS */;

-- Dumping structure for table erecruit_ntc.banner
CREATE TABLE IF NOT EXISTS `banner` (
  `id_banner` int(5) NOT NULL AUTO_INCREMENT,
  `judul` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `url` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `gambar` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `tgl_posting` date NOT NULL,
  PRIMARY KEY (`id_banner`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- Dumping data for table erecruit_ntc.banner: 1 rows
/*!40000 ALTER TABLE `banner` DISABLE KEYS */;
INSERT INTO `banner` (`id_banner`, `judul`, `url`, `gambar`, `tgl_posting`) VALUES
	(4, 'Fresh Book', 'https://members.phpmu.com', 'banner_phpmu.png', '2009-02-05');
/*!40000 ALTER TABLE `banner` ENABLE KEYS */;

-- Dumping structure for table erecruit_ntc.berita
CREATE TABLE IF NOT EXISTS `berita` (
  `id_berita` int(5) NOT NULL AUTO_INCREMENT,
  `id_kategori` int(5) NOT NULL,
  `username` varchar(30) COLLATE latin1_general_ci NOT NULL,
  `judul` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `judul_seo` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `headline` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'Y',
  `isi_berita` text COLLATE latin1_general_ci NOT NULL,
  `hari` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `tanggal` date NOT NULL,
  `jam` time NOT NULL,
  `gambar` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `dibaca` int(5) NOT NULL DEFAULT '1',
  `tag` varchar(100) COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`id_berita`)
) ENGINE=MyISAM AUTO_INCREMENT=146 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- Dumping data for table erecruit_ntc.berita: 2 rows
/*!40000 ALTER TABLE `berita` DISABLE KEYS */;
INSERT INTO `berita` (`id_berita`, `id_kategori`, `username`, `judul`, `judul_seo`, `headline`, `isi_berita`, `hari`, `tanggal`, `jam`, `gambar`, `dibaca`, `tag`) VALUES
	(72, 22, 'USR0000003', 'Staff Kasir Finance', 'staff-kasir-finance', 'Y', '<p>Ibarat karena nila setitik, rusak susu sebelanga. Dan di kolam susu inilah tampaknya warga dunia tengah menunggu kapan giliran nila itu datang yang akan benar-benar melumpuhkan sendi perekonomian di negaranya masing-masing, tak terkecuali kita di Indonesia.<br />\r\n<br />\r\nDan kini kita paham bahwa kondisi yang cukup serius kali ini memang awalnya bermula dari krisis nasional di AS, yang kemudian menyebar dengan cepat ke seluruh dunia. Namun jelas bahwa ia bukanlah penyebab utamanya seperti yang dituding oleh sejumlah media (lihat &#39;Runtuhnya Pusat Kapitalisme&#39;, Editorial Harian Radar Bogor, 27/09/08).<br />\r\n<br />\r\nYang menjadi benang merah dari rentetan krisis ini justru adalah penerapan globalisasi dimana roda perekonomian banyak negara di dunia digantungkan. Sebab dalam sistem ekonomi global yang tengah dipraktikkan banyak negara saat ini, krisis yang dialami suatu negara akan menular bak virus ke negara-negara lain, khususnya bila krisis itu bermula dari negara-negara maju dan yang punya otoritas dalam peta perkonomian dunia.<br />\r\n<br />\r\nMeski belum memiliki definisi yang mapan, istilah globalisasi banyak dihubungkan dengan peningkatan keterkaitan dan ketergantungan antarbangsa dan antarmanusia di seluruh dunia dunia melalui perdagangan, investasi, perjalanan, budaya populer, dan bentuk-bentuk interaksi yang lain sehingga batas-batas suatu negara menjadi bias (wikipedia.com).<br />\r\n<br />\r\nDi alam globalisasi inilah, kesalingbergantungan antara negara satu dengan negara lain terjalin begitu kuat. Dengan begitu, sebuah negara yang telah maju diharapkan akan merangsang perekonomian negara-negara yang sedang berkembang lewat sistem pasar bebas yang saling terhubung dan kompetitif. Tak heran bila globalisasi dipercaya akan mampu membawa kemaslahatan pada segenap umat manusia di dunia.<br />\r\n<br />\r\nSebuah niat yang kedengarannya cukup mulia memang. Dan sejak diterapkan pada era 80-an, globalisasi menjadi sistem ekonomi (mencakup juga aspek sosial, budaya, dan komunikasi) yang populer di banyak negara. Tak terkecuali bagi negara kita tercinta yang kala itu berada di bawah rezim Orde Baru.<br />\r\n<br />\r\nTapi dengan adanya krisis global ini, untuk pertama kalinya kita disadarkan, betapa sistem globalisasi yang tengah dipraktikkan kebanyakan negara saat ini, ternyata juga berpotensi membawa umat manusia pada krisis berkepanjangan. Ditambah lagi betapa globalisasi ekonomi dunia kian hari kita lihat semu dan banal, yakni di mana triliunan dollar AS diperjualbelikan dan dipermainkan di pasar modal, tetapi hanya sebagian saja diantaranya yang benar-benar menyentuh sektor riil.<br />\r\n<br />\r\nDengan kondisi kesalingterhubungan dan kesalingbergantungan inilah globalisasi ekonomi menciptakan budaya ekonomi sebagai jaringan terbuka (open network) yang rawan terhadap kemacetan di suatu titik jaringan dan serangan virus ke seluruh jaringan. Serangan virus (semisal kemacetan likuiditas) di sebuah titik jaringan (seperti AS) dengan cepat menjalar ke seluruh jejaring global tanpa ada yang tersisa.<br />\r\n<br />\r\nMaka di titik ini pulalah kita sadar betapa Indonesia sebagai salah satu peserta yang turut serta dalam sistem ekonomi global, cukup rentan terkena dampak krisis ini.<br />\r\n<br />\r\nSejatinya, krisis global ini memang lebih banyak berpengaruh pada industri keuangan, khususnya pasar modal. Ruang gerak pasar modal itu sendiri belum meluas bagi usaha dan bisnis yang dijalankan bagi kebanyakan masyarakat Indonesia.<br />\r\n<br />\r\nBisa disimak bahwa roda perekonomian di Kota Bogor sendiri lebih banyak digerakkan oleh sektor riil dan usaha kecil menengah (UKM). Kebanyakan dari mereka menjalankan usaha yang tak memiliki persinggungan langsung dengan investor, juga dikerjakan oleh SDM dari dalam negeri sendiri.<br />\r\n<br />\r\nKarenanya, kita selaku warga Bogor patut menjadikan peristiwa krisis global saat ini sebagai momentum dalam mendukung segenap pelaku bisnis dan UKM kota Bogor. Sebab, sejarah negeri ini telah membuktikan bahwa para pelaku bisnis dan UKM-lah yang mampu bertahan ketika krisis menerpa Indonesia di tahun 1998.<br />\r\n<br />\r\nDan kepada merekalah kita bisa berharap krisis global kali ini takkan mampir ke Indonesia. (sumber: http://prys3107.blogspot.com/)</p>\r\n', 'Jumat', '2023-03-03', '11:01:08', '44amerika.jpg', 0, ''),
	(145, 38, 'USR0000003', 'Operator Produksi Stamping Welding', 'operator-produksi-stamping-welding', 'Y', '<p>Konten lowongan pekerjaan bagian stamping disini. Job desc sebagai berikut :</p>\r\n\r\n<ol>\r\n	<li>WNI</li>\r\n	<li>KTP Asli</li>\r\n</ol>\r\n', 'Rabu', '2023-03-08', '09:06:24', '', 0, '');
/*!40000 ALTER TABLE `berita` ENABLE KEYS */;

-- Dumping structure for table erecruit_ntc.download
CREATE TABLE IF NOT EXISTS `download` (
  `id_download` int(5) NOT NULL AUTO_INCREMENT,
  `judul` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `nama_file` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `tgl_posting` date NOT NULL,
  `hits` int(3) NOT NULL,
  PRIMARY KEY (`id_download`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- Dumping data for table erecruit_ntc.download: 6 rows
/*!40000 ALTER TABLE `download` DISABLE KEYS */;
INSERT INTO `download` (`id_download`, `judul`, `nama_file`, `tgl_posting`, `hits`) VALUES
	(3, 'Membuat Shopping Cart dengan PHP', 'shopping cart.pdf', '2009-02-17', 3),
	(5, 'Skrip Captcha', 'captcha.rar', '2009-02-06', 2),
	(1, 'Kalender Tahun 2009', 'kalender2009.rar', '2009-02-06', 8),
	(8, 'Wallpaper PHP', 'PHP_weapon.jpg', '2009-10-28', 4),
	(9, 'Slide  Pemrograman VBA Excell', 'Excell_VBA.ppt', '2009-11-03', 10),
	(12, 'TES', '131_Penawaran_PT_Nusa_Toyotetsu.pdf', '2023-03-01', 1);
/*!40000 ALTER TABLE `download` ENABLE KEYS */;

-- Dumping structure for table erecruit_ntc.gallery
CREATE TABLE IF NOT EXISTS `gallery` (
  `id_gallery` int(5) NOT NULL AUTO_INCREMENT,
  `id_album` int(5) NOT NULL,
  `jdl_gallery` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `gallery_seo` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `keterangan` text COLLATE latin1_general_ci NOT NULL,
  `gbr_gallery` varchar(100) COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`id_gallery`)
) ENGINE=MyISAM AUTO_INCREMENT=57 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- Dumping data for table erecruit_ntc.gallery: 21 rows
/*!40000 ALTER TABLE `gallery` DISABLE KEYS */;
INSERT INTO `gallery` (`id_gallery`, `id_album`, `jdl_gallery`, `gallery_seo`, `keterangan`, `gbr_gallery`) VALUES
	(3, 12, 'Duduk di Sofa', 'duduk-di-sofa', 'Sekeluarga sedang duduk di sofa.', '27587family sofa.jpg'),
	(4, 12, 'Didepan Rumah', 'didepan-rumah', 'Sekeluarga sedang berada di ladang.', '258819family field.jpg'),
	(5, 12, 'Keluarga Bahagia', 'keluarga-bahagia', 'Si anak memperlihatkan lukisan.', '697448family.jpg'),
	(7, 19, 'Lebah', 'lebah', 'Lebah besar terbang.', '322906lebah.jpg'),
	(8, 17, 'Bangunan Jepang', 'bangunan-jepang', 'Bangunan khas jepang', '370422arche037.jpg'),
	(9, 17, 'Candi Merang', 'candi-merang', 'Bangunan candi khas kerajaan', '346527arche014.jpg'),
	(10, 18, 'Cukur Janggut', 'cukur-janggut', 'Bayi unik sedang cukur rambut', '892395macho4.jpg'),
	(11, 18, 'Push Up', 'push-up', 'Bayi unik sedang melakukan push-up', '991546macho1.jpg'),
	(12, 19, 'Kuda Nyengir', 'kuda-nyengir', 'Gini nih kalau kuda lagi nyengir.', '658447kuda.jpg'),
	(13, 21, 'Super Mario Bross', 'super-mario-bross', 'Game klasik 3D Mario Bross.', '601318mario bros.jpg'),
	(32, 21, 'Naruto', 'naruto', 'Kartun ninja jepang Naruto', '45440naruto.jpg'),
	(15, 21, 'Superman', 'superman', 'Superman kecil mau beraksi', '689147superman.jpg'),
	(27, 21, 'Sonic', 'sonic', 'Sonic and Friend', '152618sonic.jpg'),
	(31, 21, 'Kungfu Panda', 'kungfu-panda', 'Jack Black', '550598panda2.jpg'),
	(33, 21, 'Maskot Euro 2008', 'maskot-euro-2008', 'Trix dan Flix di Euro 2008', '816528mascot.jpg'),
	(14, 21, 'Harry Potter', 'harry-potter', 'Game Harry Potter', '735687potter.jpg'),
	(42, 21, 'Avatar', 'avatar', 'Eng si Gundul Avatar', '874877avatar.jpg'),
	(16, 21, 'Shrek', 'shrek', 'Film 3D Shrek 2', '527801shrek06_800.jpg'),
	(44, 21, 'Kenshin', 'kenshin', 'Kenshin Himura', '494110himura.jpg'),
	(45, 21, 'Sun Goku', 'sun-goku', 'Goku Cilik', '266845goku.JPG'),
	(46, 21, 'Virtual Girl', 'virtual-girl', 'Gadis Cantik 3D', '837921Girl.jpg');
/*!40000 ALTER TABLE `gallery` ENABLE KEYS */;

-- Dumping structure for table erecruit_ntc.halamanstatis
CREATE TABLE IF NOT EXISTS `halamanstatis` (
  `id_halaman` int(5) NOT NULL AUTO_INCREMENT,
  `judul` varchar(100) NOT NULL,
  `isi_halaman` text NOT NULL,
  `tgl_posting` date NOT NULL,
  `gambar` varchar(100) NOT NULL,
  PRIMARY KEY (`id_halaman`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

-- Dumping data for table erecruit_ntc.halamanstatis: 4 rows
/*!40000 ALTER TABLE `halamanstatis` DISABLE KEYS */;
INSERT INTO `halamanstatis` (`id_halaman`, `judul`, `isi_halaman`, `tgl_posting`, `gambar`) VALUES
	(1, 'Profil Perusahaan', '<p>\\r\\n<strong>Bukulokomedia.com</strong> merupakan website resmi dari penerbit\\r\\nLokomedia yang bermarkas di Jl. Jambon. Perum. Pesona Alam Hijau 2 Blok B-4 Kricak, Jatimulyo, Yogyakarta\\r\\n55242. Dirintis pertama kali oleh Lukmanul Hakim pada tanggal 14 Maret\\r\\n2008.<br>\\r\\n<br>\\r\\nProduk unggulan dari penerbit Lokomedia adalah buku-buku serta aksesoris bertema Web, terutama PHP (PHP: Hypertext Preprocessor) yang merupakan pemrograman Internet paling handal saat ini.\\r\\n</p>', '2016-10-19', 'gedungku.jpg'),
	(2, 'Visi dan Misi', '<p>\r\nVisi :\r\n</p>\r\n<p>\r\n&nbsp;\r\n</p>\r\n<p>\r\n&nbsp;\r\n</p>\r\n<p>\r\nMisi :\r\n</p>\r\n<p>\r\n&nbsp;\r\n</p>\r\n', '2010-05-31', ''),
	(3, 'Struktur Organisasi', '<p>Isikan struktur organisasi di bagian ini</p>\r\n', '2017-05-10', ''),
	(7, 'TES', '<p>TES</p>\r\n', '2023-03-03', '');
/*!40000 ALTER TABLE `halamanstatis` ENABLE KEYS */;

-- Dumping structure for table erecruit_ntc.hubungi
CREATE TABLE IF NOT EXISTS `hubungi` (
  `id_hubungi` int(5) NOT NULL AUTO_INCREMENT,
  `nama` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `email` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `subjek` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `pesan` text COLLATE latin1_general_ci NOT NULL,
  `tanggal` date NOT NULL,
  PRIMARY KEY (`id_hubungi`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- Dumping data for table erecruit_ntc.hubungi: 5 rows
/*!40000 ALTER TABLE `hubungi` DISABLE KEYS */;
INSERT INTO `hubungi` (`id_hubungi`, `nama`, `email`, `subjek`, `pesan`, `tanggal`) VALUES
	(1, 'Ariawan', 'ariawan@gmail.com', 'Mohon Informasi', 'Mohon informasi mengenai pena yang diterbitkan oleh Lokomedia.', '2008-02-10'),
	(8, 'lukman', 'lukman@bukulokomedia.com', 'kontak kami', 'tes modul hubungi kami', '2010-05-16'),
	(10, 'Robby Prihandaya', 'robby.prihandaya@gmail.com', 'PHPMU.Com and Team', 'Siahkan meninggalkan Pesan / Komentar / Masukan anda agar kami bisa memberikan pelayanan yang lebih baik lagi, Terima kasih.', '2018-11-01'),
	(11, 'Robby Prihandaya', 'robby.prihandaya1@gmail.com', 'PHPMU.Com and Team', 'Siahkan meninggalkan Pesan / Komentar / Masukan anda agar kami bisa memberikan pelayanan yang lebih baik lagi, Terima kasih.', '2018-11-01'),
	(12, 'ARIF', 'inside.man108@gmail.com', 'TES', 'TES TIS TOS TUS', '2023-03-01');
/*!40000 ALTER TABLE `hubungi` ENABLE KEYS */;

-- Dumping structure for table erecruit_ntc.identitas
CREATE TABLE IF NOT EXISTS `identitas` (
  `id_identitas` int(5) NOT NULL AUTO_INCREMENT,
  `nama_website` varchar(100) NOT NULL,
  `alamat_website` varchar(100) NOT NULL,
  `meta_deskripsi` varchar(250) NOT NULL,
  `meta_keyword` varchar(250) NOT NULL,
  `favicon` varchar(50) NOT NULL,
  PRIMARY KEY (`id_identitas`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- Dumping data for table erecruit_ntc.identitas: 1 rows
/*!40000 ALTER TABLE `identitas` DISABLE KEYS */;
INSERT INTO `identitas` (`id_identitas`, `nama_website`, `alamat_website`, `meta_deskripsi`, `meta_keyword`, `favicon`) VALUES
	(1, 'NTC Online Recruitment', 'http://hris.ntc.co.id/recruitment', 'Portal rekrutmen karyawan online nusa toyotetsu corporation', 'lowongak kerja ntc, loker ntc, jobstreet, rekrutmen ntc', 'favicon.ico');
/*!40000 ALTER TABLE `identitas` ENABLE KEYS */;

-- Dumping structure for table erecruit_ntc.kategori
CREATE TABLE IF NOT EXISTS `kategori` (
  `id_kategori` int(5) NOT NULL AUTO_INCREMENT,
  `nama_kategori` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `kategori_seo` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `aktif` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'Y',
  PRIMARY KEY (`id_kategori`)
) ENGINE=MyISAM AUTO_INCREMENT=41 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- Dumping data for table erecruit_ntc.kategori: 13 rows
/*!40000 ALTER TABLE `kategori` DISABLE KEYS */;
INSERT INTO `kategori` (`id_kategori`, `nama_kategori`, `kategori_seo`, `aktif`) VALUES
	(19, 'IT', 'it', 'Y'),
	(2, 'HRD', 'hrd', 'Y'),
	(22, 'Finance', 'finance', 'Y'),
	(23, 'Accounting', 'accounting', 'Y'),
	(32, 'Sales', 'sales', 'Y'),
	(31, 'Training & ISO', 'training--iso', 'Y'),
	(33, 'Purchasing', 'purchasing', 'Y'),
	(34, 'Engineering', 'engineering', 'Y'),
	(35, 'Quality', 'quality', 'Y'),
	(36, 'Stamping', 'stamping', 'Y'),
	(37, 'Production Control', 'production-control', 'Y'),
	(38, 'Driver', 'driver', 'Y'),
	(39, 'Security', 'security', 'Y');
/*!40000 ALTER TABLE `kategori` ENABLE KEYS */;

-- Dumping structure for table erecruit_ntc.mainmenu
CREATE TABLE IF NOT EXISTS `mainmenu` (
  `id_main` int(5) NOT NULL AUTO_INCREMENT,
  `nama_menu` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `link` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `aktif` enum('Y','N') NOT NULL DEFAULT 'Y',
  `adminmenu` enum('Y','N') NOT NULL,
  PRIMARY KEY (`id_main`)
) ENGINE=MyISAM AUTO_INCREMENT=61 DEFAULT CHARSET=latin1;

-- Dumping data for table erecruit_ntc.mainmenu: 14 rows
/*!40000 ALTER TABLE `mainmenu` DISABLE KEYS */;
INSERT INTO `mainmenu` (`id_main`, `nama_menu`, `link`, `aktif`, `adminmenu`) VALUES
	(2, 'Beranda', '', 'Y', 'N'),
	(3, 'Profil', '#', 'Y', 'N'),
	(4, 'Agenda', 'agenda', 'Y', 'N'),
	(5, 'Berita', '#', 'Y', 'N'),
	(6, 'Download', 'download', 'Y', 'N'),
	(7, 'Galeri Foto', 'gallery', 'Y', 'N'),
	(8, 'Hubungi Kami', 'hubungi', 'Y', 'N'),
	(14, 'Setting Web', '', 'N', 'Y'),
	(15, 'Setting Menu', '', 'N', 'Y'),
	(16, 'Job Management', '', 'N', 'Y'),
	(54, 'Hubungi Kami', 'administrator/pesanmasuk', 'N', 'Y'),
	(53, 'Interaksi', '', 'N', 'Y'),
	(52, 'Media', '', 'N', 'Y'),
	(59, 'Banner', 'administrator/banner', 'N', 'Y');
/*!40000 ALTER TABLE `mainmenu` ENABLE KEYS */;

-- Dumping structure for table erecruit_ntc.modul
CREATE TABLE IF NOT EXISTS `modul` (
  `id_modul` int(5) NOT NULL AUTO_INCREMENT,
  `nama_modul` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `link` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `static_content` text COLLATE latin1_general_ci NOT NULL,
  `gambar` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `publish` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'Y',
  `status` enum('user','admin') COLLATE latin1_general_ci NOT NULL,
  `aktif` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'Y',
  `urutan` int(5) NOT NULL,
  `link_seo` varchar(50) COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`id_modul`)
) ENGINE=MyISAM AUTO_INCREMENT=62 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- Dumping data for table erecruit_ntc.modul: 31 rows
/*!40000 ALTER TABLE `modul` DISABLE KEYS */;
INSERT INTO `modul` (`id_modul`, `nama_modul`, `link`, `static_content`, `gambar`, `publish`, `status`, `aktif`, `urutan`, `link_seo`) VALUES
	(2, 'Manajemen User', 'user', '', '', 'N', 'user', 'Y', 1, ''),
	(18, 'Berita', 'berita', '', '', 'Y', 'user', 'Y', 6, 'semua-berita.html'),
	(19, 'Banner', 'banner', '', '', 'Y', 'admin', 'Y', 9, ''),
	(37, 'Profil', 'profil', '<b>Bukulokomedia.com</b> merupakan website resmi dari penerbit Lokomedia yang bermarkas di Jl. Arwana No.24 Minomartani Yogyakarta 55581. Dirintis pertama kali oleh Lukmanul Hakim pada tanggal 14 Maret 2008.<br><br>Produk unggulan dari penerbit Lokomedia adalah buku-buku serta aksesoris bertema PHP (<span style="font-weight: bold; font-style: italic;">PHP: Hypertext Preprocessor</span>) yang merupakan pemrograman Internet paling handal saat ini.\r\n', 'gedungku.jpg', 'N', 'admin', 'N', 3, 'profil-kami.html'),
	(10, 'Manajemen Modul', 'modul', '', '', 'N', 'admin', 'Y', 2, ''),
	(31, 'Kategori', 'kategori', '', '', 'Y', 'admin', 'Y', 5, ''),
	(33, 'Poling', 'poling', '', '', 'Y', 'admin', 'Y', 10, ''),
	(34, 'Tag (Label)', 'tag', '', '', 'N', 'admin', 'Y', 7, ''),
	(35, 'Komentar', 'komentar', '', '', 'Y', 'admin', 'Y', 8, ''),
	(36, 'Download', 'download', '', '', 'Y', 'admin', 'Y', 11, 'semua-download.html'),
	(40, 'Hubungi Kami', 'hubungi', '', '', 'Y', 'admin', 'Y', 12, 'hubungi-kami.html'),
	(41, 'Agenda', 'agenda', '', '', 'Y', 'user', 'Y', 31, 'semua-agenda.html'),
	(42, 'Shoutbox', 'shoutbox', '', '', 'Y', 'admin', 'Y', 13, ''),
	(43, 'Album', 'album', '', '', 'N', 'admin', 'Y', 14, ''),
	(44, 'Galeri Foto', 'galerifoto', '', '', 'Y', 'admin', 'Y', 15, ''),
	(45, 'Templates', 'templates', '', '', 'N', 'admin', 'Y', 16, ''),
	(46, 'Kata Jelek', 'katajelek', '', '', 'N', 'admin', 'Y', 17, ''),
	(47, 'RSS', '-', '', '', 'Y', 'admin', 'N', 18, ''),
	(48, 'YM', '-', '', '', 'Y', 'admin', 'N', 19, ''),
	(49, 'Indeks Berita', '-', '', '', 'Y', 'admin', 'N', 20, ''),
	(50, 'Kalender', '-', '', '', 'Y', 'admin', 'N', 21, ''),
	(51, 'Statistik User', '-', '', '', 'Y', 'admin', 'N', 22, ''),
	(52, 'Pencarian', '-', '', '', 'Y', 'admin', 'N', 23, ''),
	(53, 'Berita Teratas', '-', '', '', 'Y', 'admin', 'N', 24, ''),
	(54, 'Arsip Berita', '-', '', '', 'Y', 'admin', 'N', 25, ''),
	(55, 'Berita Sebelumnya', '-', '', '', 'Y', 'admin', 'N', 26, ''),
	(60, 'Sekilas Info', '?module=sekilasinfo', '', '', 'Y', 'admin', 'Y', 13, ''),
	(57, 'Menu Utama', '?module=menuutama', '', '', 'Y', 'admin', 'Y', 28, ''),
	(58, 'Sub Menu', '?module=submenu', '', '', 'Y', 'admin', 'Y', 29, ''),
	(59, 'Halaman Statis', '?module=halamanstatis', '', '', 'Y', 'admin', 'Y', 30, ''),
	(61, 'Identitas Website', '?module=identitas', '', '', 'N', 'admin', 'Y', 4, '');
/*!40000 ALTER TABLE `modul` ENABLE KEYS */;

-- Dumping structure for table erecruit_ntc.poling
CREATE TABLE IF NOT EXISTS `poling` (
  `id_poling` int(5) NOT NULL AUTO_INCREMENT,
  `pilihan` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `status` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `rating` int(5) NOT NULL DEFAULT '0',
  `aktif` enum('Y','N') COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`id_poling`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- Dumping data for table erecruit_ntc.poling: 5 rows
/*!40000 ALTER TABLE `poling` DISABLE KEYS */;
INSERT INTO `poling` (`id_poling`, `pilihan`, `status`, `rating`, `aktif`) VALUES
	(1, 'Internet Explorer', 'Jawaban', 24, 'Y'),
	(2, 'Mozilla Firefox', 'Jawaban', 81, 'Y'),
	(3, 'Google Chrome', 'Jawaban', 21, 'Y'),
	(4, 'Opera', 'Jawaban', 22, 'Y'),
	(8, 'Apa Browser Favorit Anda?', 'Pertanyaan', 0, 'Y');
/*!40000 ALTER TABLE `poling` ENABLE KEYS */;

-- Dumping structure for table erecruit_ntc.sekilasinfo
CREATE TABLE IF NOT EXISTS `sekilasinfo` (
  `id_sekilas` int(5) NOT NULL AUTO_INCREMENT,
  `info` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `tgl_posting` date NOT NULL,
  `gambar` varchar(100) COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`id_sekilas`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- Dumping data for table erecruit_ntc.sekilasinfo: 5 rows
/*!40000 ALTER TABLE `sekilasinfo` DISABLE KEYS */;
INSERT INTO `sekilasinfo` (`id_sekilas`, `info`, `tgl_posting`, `gambar`) VALUES
	(1, 'Anak yang mengalami gangguan tidur, cenderung memakai obat2an dan alkohol berlebih saat dewasa.', '2010-04-11', 'news5.jpg'),
	(2, 'WHO merilis, 30 persen anak-anak di dunia kecanduan menonton televisi dan bermain komputer.', '2010-04-11', 'news4.jpg'),
	(3, 'Menurut peneliti di Detroit, orang yang selalu tersenyum lebar cenderung hidup lebih lama.', '2010-04-11', 'news3.jpg'),
	(4, 'Menurut United Stated Trade Representatives, 25% obat yang beredar di Indonesia adalah palsu.', '2010-04-11', 'news2.jpg'),
	(5, 'Presiden AS Barack Obama memesan Nasi Goreng di restoran Bali langsung dari Amerika', '2010-04-11', 'news1.jpg');
/*!40000 ALTER TABLE `sekilasinfo` ENABLE KEYS */;

-- Dumping structure for table erecruit_ntc.shoutbox
CREATE TABLE IF NOT EXISTS `shoutbox` (
  `id_shoutbox` int(5) NOT NULL AUTO_INCREMENT,
  `nama` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `website` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `pesan` text COLLATE latin1_general_ci NOT NULL,
  `tanggal` date NOT NULL,
  `jam` time NOT NULL,
  `aktif` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'Y',
  PRIMARY KEY (`id_shoutbox`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- Dumping data for table erecruit_ntc.shoutbox: 3 rows
/*!40000 ALTER TABLE `shoutbox` DISABLE KEYS */;
INSERT INTO `shoutbox` (`id_shoutbox`, `nama`, `website`, `pesan`, `tanggal`, `jam`, `aktif`) VALUES
	(1, 'lukman', 'lukman.com', 'tes :-) aja ;-D ha ha ha <:D>', '2009-11-02', '00:00:00', 'Y'),
	(2, 'hakim', 'hakim.com', 'tes :-) aja ;-D ha ha ha <:D>\r\ndfa\r\nfdas\r\nfdsa\r\nfdasf\r\n:-(', '2009-11-02', '00:00:00', 'Y'),
	(5, 'iin', 'uin-suka.ac.id', 'tes aja euy ;-D boiii', '2016-10-20', '08:21:39', 'Y');
/*!40000 ALTER TABLE `shoutbox` ENABLE KEYS */;

-- Dumping structure for table erecruit_ntc.statistik
CREATE TABLE IF NOT EXISTS `statistik` (
  `ip` varchar(20) NOT NULL DEFAULT '',
  `tanggal` date NOT NULL,
  `hits` int(10) NOT NULL DEFAULT '1',
  `online` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Dumping data for table erecruit_ntc.statistik: 142 rows
/*!40000 ALTER TABLE `statistik` DISABLE KEYS */;
INSERT INTO `statistik` (`ip`, `tanggal`, `hits`, `online`) VALUES
	('127.0.0.2', '2009-09-11', 1, '1252681630'),
	('127.0.0.1', '2009-09-11', 17, '1252734209'),
	('127.0.0.3', '2009-09-12', 8, '1252817594'),
	('127.0.0.1', '2009-10-24', 8, '1256381921'),
	('127.0.0.1', '2009-10-26', 108, '1256620074'),
	('127.0.0.1', '2009-10-27', 52, '1256686769'),
	('127.0.0.1', '2009-10-28', 124, '1256792223'),
	('127.0.0.1', '2009-10-29', 9, '1256828032'),
	('127.0.0.1', '2009-10-31', 3, '1257047101'),
	('127.0.0.1', '2009-11-01', 85, '1257113554'),
	('127.0.0.1', '2009-11-02', 11, '1257207543'),
	('127.0.0.1', '2009-11-03', 165, '1257292312'),
	('127.0.0.1', '2009-11-04', 59, '1257403499'),
	('127.0.0.1', '2009-11-05', 10, '1257433172'),
	('127.0.0.1', '2009-11-11', 13, '1258006911'),
	('127.0.0.1', '2009-11-12', 10, '1258048069'),
	('127.0.0.1', '2009-11-14', 14, '1258222519'),
	('127.0.0.1', '2009-11-17', 2, '1258473856'),
	('127.0.0.1', '2009-11-19', 16, '1258635469'),
	('127.0.0.1', '2009-11-21', 4, '1258863505'),
	('127.0.0.1', '2009-11-25', 3, '1259216216'),
	('127.0.0.1', '2009-11-26', 1, '1259222467'),
	('127.0.0.1', '2009-11-30', 11, '1259651841'),
	('127.0.0.1', '2009-12-02', 9, '1259746407'),
	('127.0.0.1', '2009-12-03', 17, '1259906128'),
	('127.0.0.1', '2009-12-10', 69, '1260423794'),
	('127.0.0.1', '2009-12-12', 26, '1260560082'),
	('127.0.0.1', '2009-12-11', 5, '1260508621'),
	('127.0.0.1', '2009-12-13', 8, '1260716786'),
	('127.0.0.1', '2009-12-14', 9, '1260772698'),
	('127.0.0.1', '2009-12-15', 9, '1260837158'),
	('127.0.0.1', '2009-12-16', 7, '1260905627'),
	('127.0.0.1', '2009-12-17', 48, '1261026791'),
	('127.0.0.1', '2009-12-18', 11, '1261088534'),
	('127.0.0.1', '2009-12-22', 3, '1261477278'),
	('127.0.0.1', '2009-12-25', 2, '1261686043'),
	('127.0.0.1', '2009-12-26', 29, '1261835507'),
	('127.0.0.1', '2009-12-27', 7, '1261920445'),
	('127.0.0.1', '2009-12-28', 3, '1261965611'),
	('127.0.0.1', '2009-12-29', 21, '1262024011'),
	('127.0.0.1', '2009-12-30', 24, '1262146708'),
	('127.0.0.1', '2010-01-01', 12, '1262286131'),
	('127.0.0.1', '2010-01-03', 38, '1262529325'),
	('127.0.0.1', '2010-01-12', 89, '1263264291'),
	('127.0.0.1', '2010-01-14', 54, '1263482540'),
	('127.0.0.1', '2010-01-15', 57, '1263506901'),
	('127.0.0.1', '2010-02-11', 30, '1265831568'),
	('127.0.0.1', '2010-02-13', 2, '1266032303'),
	('127.0.0.1', '2010-02-14', 3, '1266115347'),
	('127.0.0.1', '2010-02-15', 15, '1266195235'),
	('127.0.0.1', '2010-02-18', 1, '1266499945'),
	('127.0.0.1', '2010-02-22', 5, '1266856332'),
	('127.0.0.1', '2010-02-25', 46, '1267103145'),
	('127.0.0.1', '2010-05-12', 10, '1273654648'),
	('127.0.0.1', '2010-05-16', 195, '1274026185'),
	('127.0.0.1', '2010-05-17', 2, '1274029517'),
	('127.0.0.1', '2010-05-19', 1, '1274279374'),
	('127.0.0.1', '2010-05-27', 16, '1274967085'),
	('127.0.0.1', '2010-05-30', 4, '1275192045'),
	('127.0.0.1', '2010-05-31', 13, '1275271939'),
	('127.0.0.1', '2010-06-05', 1, '1275676869'),
	('127.0.0.1', '2010-06-06', 2, '1275842170'),
	('127.0.0.1', '2010-06-15', 3, '1276572924'),
	('127.0.0.1', '2010-06-22', 206, '1277221605'),
	('127.0.0.1', '2010-08-02', 17, '1280754660'),
	('127.0.0.1', '2010-08-20', 7, '1282285305'),
	('127.0.0.1', '2010-08-30', 21, '1283185430'),
	('127.0.0.1', '2010-08-31', 53, '1283207455'),
	('127.0.0.1', '2010-09-02', 133, '1283402651'),
	('127.0.0.1', '2010-09-05', 35, '1283702206'),
	('127.0.0.1', '2010-09-13', 10, '1284370291'),
	('127.0.0.1', '2010-09-17', 12, '1284662303'),
	('127.0.0.1', '2010-09-22', 2, '1285091212'),
	('127.0.0.1', '2010-09-23', 47, '1285254071'),
	('127.0.0.1', '2010-09-26', 32, '1285512806'),
	('127.0.0.1', '2010-09-27', 48, '1285529871'),
	('127.0.0.1', '2011-01-19', 18, '1295395096'),
	('127.0.0.1', '2011-01-21', 6, '1295580166'),
	('127.0.0.1', '2011-01-22', 3, '1295639704'),
	('127.0.0.1', '2011-01-25', 2, '1295895420'),
	('127.0.0.1', '2011-01-27', 20, '1296145564'),
	('127.0.0.1', '2011-01-28', 5, '1296150116'),
	('127.0.0.1', '2011-02-01', 10, '1296555613'),
	('127.0.0.1', '2011-02-02', 1, '1296657225'),
	('127.0.0.1', '2011-02-05', 3, '1296875908'),
	('127.0.0.1', '2011-02-07', 5, '1297090649'),
	('127.0.0.1', '2011-02-09', 182, '1297254341'),
	('127.0.0.1', '2011-02-10', 268, '1297355704'),
	('127.0.0.1', '2011-02-16', 6, '1297824002'),
	('127.0.0.1', '2011-02-17', 2, '1297945065'),
	('127.0.0.1', '2011-12-28', 12, '1325081007'),
	('127.0.0.1', '2011-12-29', 13, '1325167281'),
	('127.0.0.1', '2011-12-31', 34, '1325296088'),
	('127.0.0.1', '2012-01-02', 1, '1325449458'),
	('127.0.0.1', '2012-01-03', 55, '1325601219'),
	('127.0.0.1', '2012-01-04', 1, '1325630436'),
	('127.0.0.1', '2012-02-08', 86, '1328720292'),
	('127.0.0.1', '2012-02-09', 110, '1328798857'),
	('127.0.0.1', '2012-02-10', 87, '1328871532'),
	('127.0.0.1', '2012-02-11', 16, '1328899301'),
	('127.0.0.1', '2012-03-31', 87, '1333186737'),
	('127.0.0.1', '2012-04-01', 69, '1333248528'),
	('127.0.0.1', '2012-04-02', 9, '1333338582'),
	('127.0.0.1', '2012-04-03', 31, '1333456570'),
	('127.0.0.1', '2012-04-04', 2, '1333498207'),
	('127.0.0.1', '2012-04-05', 5, '1333628029'),
	('127.0.0.1', '2012-04-08', 22, '1333871463'),
	('127.0.0.1', '2012-04-09', 109, '1333972788'),
	('127.0.0.1', '2012-04-10', 70, '1334024998'),
	('127.0.0.1', '2012-05-01', 8, '1335889888'),
	('127.0.0.1', '2012-05-02', 17, '1335935829'),
	('127.0.0.1', '2012-05-27', 6, '1338133681'),
	('127.0.0.1', '2012-05-29', 22, '1338304361'),
	('127.0.0.1', '2012-05-30', 5, '1338389383'),
	('127.0.0.1', '2012-05-31', 5, '1338408772'),
	('127.0.0.1', '2012-06-01', 5, '1338567612'),
	('127.0.0.1', '2012-07-01', 10, '1341152776'),
	('127.0.0.1', '2012-07-29', 12, '1343572702'),
	('127.0.0.1', '2012-07-30', 15, '1343658587'),
	('127.0.0.1', '2012-07-31', 179, '1343743877'),
	('127.0.0.1', '2012-08-03', 11, '1344000498'),
	('127.0.0.1', '2012-08-08', 28, '1344364863'),
	('127.0.0.1', '2012-08-09', 7, '1344477542'),
	('127.0.0.1', '2012-08-10', 1, '1344601882'),
	('::1', '2016-10-18', 6, '1476804903'),
	('::1', '2016-10-19', 8, '1476875211'),
	('::1', '2016-10-20', 3, '1476945959'),
	('::1', '2016-10-29', 317, '1477747478'),
	('::1', '2016-10-30', 1, '1477784305'),
	('::1', '2017-05-09', 20, '1494349047'),
	('::1', '2017-05-10', 237, '1494421263'),
	('::1', '2017-07-03', 159, '1499045917'),
	('::1', '2018-11-01', 326, '1541067947'),
	('::1', '2019-05-20', 17, '1558354951'),
	('::1', '2019-05-26', 17, '1558830830'),
	('127.0.0.1', '2023-03-01', 15, '1677656068'),
	('::1', '2023-03-01', 2, '1677641054'),
	('127.0.0.1', '2023-03-02', 2, '1677736828'),
	('::1', '2023-03-02', 4, '1677745847'),
	('192.168.100.141', '2023-03-02', 3, '1677737632'),
	('192.168.100.1', '2023-03-02', 3, '1677744528'),
	('::1', '2023-03-03', 3, '1677807553');
/*!40000 ALTER TABLE `statistik` ENABLE KEYS */;

-- Dumping structure for table erecruit_ntc.submenu
CREATE TABLE IF NOT EXISTS `submenu` (
  `id_sub` int(5) NOT NULL AUTO_INCREMENT,
  `nama_sub` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `link_sub` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `id_main` int(5) NOT NULL,
  `id_submain` int(11) NOT NULL,
  `aktif` enum('Y','N') NOT NULL DEFAULT 'Y',
  `adminsubmenu` enum('Y','N') NOT NULL,
  PRIMARY KEY (`id_sub`)
) ENGINE=MyISAM AUTO_INCREMENT=31 DEFAULT CHARSET=latin1;

-- Dumping data for table erecruit_ntc.submenu: 23 rows
/*!40000 ALTER TABLE `submenu` DISABLE KEYS */;
INSERT INTO `submenu` (`id_sub`, `nama_sub`, `link_sub`, `id_main`, `id_submain`, `aktif`, `adminsubmenu`) VALUES
	(2, 'Visi dan Misi', 'page/detail/visi-dan-misi', 3, 0, 'Y', 'N'),
	(3, 'Struktur Organisasi', 'page/detail/struktur-organisasi', 3, 0, 'Y', 'N'),
	(4, 'Ekonomi', 'berita/kategori/ekonomi', 5, 0, 'N', 'N'),
	(5, 'Hiburan', 'berita/kategori/hiburan', 5, 0, 'Y', 'N'),
	(6, 'Olahraga', 'berita/kategori/olahraga', 5, 0, 'Y', 'N'),
	(7, 'Politik', 'berita/kategori/politik', 5, 0, 'Y', 'N'),
	(8, 'Teknologi', 'berita/kategori/teknologi', 5, 0, 'Y', 'N'),
	(11, 'Manajemen Modul', 'administrator/manajemenmodul', 14, 0, 'N', 'Y'),
	(10, 'Identitas Web', 'administrator/identitaswebsite', 14, 0, 'N', 'Y'),
	(12, 'Manajemen User', 'administrator/manajemenuser', 14, 0, 'N', 'Y'),
	(13, 'Manajemen Template', 'administrator/templatewebsite', 14, 0, 'N', 'Y'),
	(14, 'Menu Utama', 'administrator/menuutama', 15, 0, 'N', 'Y'),
	(15, 'Sub Menu', 'administrator/submenu', 15, 0, 'N', 'Y'),
	(16, 'Department', 'administrator/department', 16, 0, 'N', 'Y'),
	(17, 'Job', 'administrator/job', 16, 0, 'N', 'Y'),
	(19, 'Halaman Statis', 'administrator/halamanbaru', 16, 0, 'N', 'Y'),
	(22, 'Album', 'administrator/album', 52, 0, 'N', 'Y'),
	(23, 'Galeri Foto', 'administrator/galeri', 52, 0, 'N', 'Y'),
	(24, 'Download', 'administrator/download', 52, 0, 'N', 'Y'),
	(25, 'Agenda', 'administrator/agenda', 53, 0, 'N', 'Y'),
	(26, 'Poling', 'administrator/polling', 53, 0, 'N', 'Y'),
	(27, 'Sekilas Info', 'administrator/sekilasinfo', 53, 0, 'N', 'Y'),
	(30, 'ShoutBox', 'administrator/shoutbox', 53, 0, 'N', 'Y');
/*!40000 ALTER TABLE `submenu` ENABLE KEYS */;

-- Dumping structure for table erecruit_ntc.templates
CREATE TABLE IF NOT EXISTS `templates` (
  `id_templates` int(5) NOT NULL AUTO_INCREMENT,
  `judul` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `pembuat` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `folder` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `aktif` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  PRIMARY KEY (`id_templates`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- Dumping data for table erecruit_ntc.templates: 9 rows
/*!40000 ALTER TABLE `templates` DISABLE KEYS */;
INSERT INTO `templates` (`id_templates`, `judul`, `pembuat`, `folder`, `aktif`) VALUES
	(1, 'Standar', 'Lukmanul Hakim', 'templates/standar', 'N'),
	(2, 'Building', 'Lukmanul Hakim', 'templates/building', 'N'),
	(3, 'eL jQuery', 'Lukmanul Hakim', 'templates/eljquery', 'N'),
	(4, 'eL jQuery versi 2', 'Lukmanul Hakim', 'templates/eljquery2', 'N'),
	(5, 'eL jQuery ala Yahoo', 'Lukmanul Hakim', 'templates/eljquery-yahoo', 'N'),
	(7, 'Sandbox', 'Ahmad Nugraha', 'templates/sandbox', 'N'),
	(8, 'Just Simple Blue', 'Dian Pamungkas', 'templates/blue', 'N'),
	(10, 'Poeji', 'Puji Kartono', 'templates/poeji', 'N'),
	(12, 'PHPMU.Com - Template Lokomedia Codeigniter', 'Robby Prihandaya', 'phpmu-ciek', 'Y');
/*!40000 ALTER TABLE `templates` ENABLE KEYS */;

-- Dumping structure for table erecruit_ntc.users
CREATE TABLE IF NOT EXISTS `users` (
  `username` varchar(10) COLLATE latin1_general_ci NOT NULL,
  `password` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `nama_lengkap` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `email` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `no_telp` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `level` varchar(20) COLLATE latin1_general_ci NOT NULL DEFAULT 'user',
  `blokir` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  `id_session` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `tgl_lahir` date NOT NULL,
  `ktp` varchar(16) COLLATE latin1_general_ci DEFAULT NULL,
  `alamat` text COLLATE latin1_general_ci,
  PRIMARY KEY (`username`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- Dumping data for table erecruit_ntc.users: 2 rows
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`username`, `password`, `nama_lengkap`, `email`, `no_telp`, `level`, `blokir`, `id_session`, `tgl_lahir`, `ktp`, `alamat`) VALUES
	('USR0000001', '21232f297a57a5a743894a0e4a801fc3', 'Administrator', 'admin@detik.com', '08238923846', 'admin', 'Y', '0c9c1eab3ad959fb52bceca3c9c933fb', '0000-00-00', NULL, NULL),
	('USR0000002', '21232f297a57a5a743894a0e4a801fc3', 'Joni Iskandar', 'inside.man108@gmail.com', '123455', 'user', 'Y', '05d7d1b319a06263f7a60295d181b951', '0000-00-00', '123456789', '');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
