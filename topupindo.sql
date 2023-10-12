-- phpMyAdmin SQL Dump
-- version 4.9.11
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 05, 2023 at 07:40 PM
-- Server version: 10.5.17-MariaDB-cll-lve
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `topu7940_TopUPNeEtT3`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(55) NOT NULL,
  `password` varchar(250) NOT NULL,
  `status` enum('On','Off') NOT NULL,
  `date_create` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `status`, `date_create`) VALUES
(14, 'T0pUp1ndo', '$2y$10$sLuZ3a603jMeVCIB4RhBj.xKJcbMgYFdTOcJ0.ggdM95sxaj8iFV.', 'On', '2023-04-09 21:03:26');

-- --------------------------------------------------------

--
-- Table structure for table `banner`
--

CREATE TABLE `banner` (
  `id` int(11) NOT NULL,
  `image` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `banner`
--

INSERT INTO `banner` (`id`, `image`) VALUES
(84, '1680749611_acd1c9f356bcf305c843.webp');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `category` varchar(250) NOT NULL,
  `sort` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `category`, `sort`) VALUES
(41, 'Games', 1),
(55, 'Pulsa', 2),
(56, 'Voucher', 4),
(59, 'PLN', 5),
(61, 'Data', 3);

-- --------------------------------------------------------

--
-- Table structure for table `games`
--

CREATE TABLE `games` (
  `id` int(11) NOT NULL,
  `games` varchar(100) NOT NULL,
  `category` varchar(250) NOT NULL,
  `image` varchar(250) NOT NULL,
  `slug` varchar(200) NOT NULL,
  `target` varchar(100) NOT NULL,
  `sort` int(11) NOT NULL,
  `content` longtext NOT NULL,
  `status` enum('On','Off') NOT NULL,
  `check_status` enum('Y','N') NOT NULL,
  `check_code` varchar(55) NOT NULL,
  `subtitle` varchar(200) NOT NULL,
  `subdescription` varchar(200) NOT NULL,
  `subimage` varchar(250) NOT NULL,
  `infoimage` varchar(250) NOT NULL,
  `code` varchar(55) NOT NULL,
  `provider` varchar(55) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `games`
--

INSERT INTO `games` (`id`, `games`, `category`, `image`, `slug`, `target`, `sort`, `content`, `status`, `check_status`, `check_code`, `subtitle`, `subdescription`, `subimage`, `infoimage`, `code`, `provider`) VALUES
(1, 'MOBILE LEGENDS', 'Games', 'mobile-legends-games.webp', 'mobile-legends', 'default', 1, '', 'On', 'Y', 'mobilelegend', '', '', '', '', 'MOBILE LEGENDS', 'DF'),
(2, 'FREE FIRE', 'Games', 'free-fire-games.webp', 'free-fire', 'default', 1, '', 'On', 'Y', 'freefire', '', '', '', '', 'FREE FIRE', 'DF'),
(3, 'Valorant', 'Games', 'valorant-games.webp', 'valorant', 'default', 0, '', 'On', 'N', '', '', '', '', '', 'Valorant', 'DF'),
(4, 'Call of Duty MOBILE', 'Games', 'call-of-duty-mobile-games.webp', 'call-of-duty-mobile', 'default', 0, '', 'On', 'N', '', '', '', '', '', 'Call of Duty MOBILE', 'DF'),
(5, 'Genshin Impact', 'Games', 'genshin-impact-games.webp', 'genshin-impact', 'default', 0, '', 'On', 'N', '', '', '', '', '', 'Genshin Impact', 'DF'),
(6, 'PUBG MOBILE', 'Games', 'pubg-mobile-games.webp', 'pubg-mobile', 'default', 0, '', 'On', 'N', '', '', '', '', '', 'PUBG MOBILE', 'DF'),
(7, 'ARENA OF VALOR', 'Games', 'arena-of-valor-games.webp', 'arena-of-valor', 'default', 0, '', 'On', 'N', '', '', '', '', '', 'ARENA OF VALOR', 'DF'),
(8, 'Lords Mobile', 'Games', 'lords-mobile-games.webp', 'lords-mobile', 'default', 0, '', 'On', 'N', '', '', '', '', '', 'Lords Mobile', 'DF'),
(9, 'Speed Drifters', 'Games', 'speed-drifters.webp', 'speed-drifters', 'default', 0, '', 'On', 'N', '', '', '', '', '', 'Speed Drifters', 'DF'),
(10, 'LifeAfter Credits', 'Games', 'lifeafter-games.webp', 'lifeafter-credits', 'default', 0, '', 'On', 'N', '', '', '', '', '', 'LifeAfter Credits', 'DF'),
(11, 'Marvel Super War', 'Games', 'marvel-super-war-games.webp', 'marvel-super-war', 'default', 0, '', 'On', 'N', '', '', '', '', '', 'Marvel Super War', 'DF'),
(12, 'HAGO', 'Games', 'hago-games.webp', 'hago', 'default', 0, '', 'On', 'N', '', '', '', '', '', 'HAGO', 'DF'),
(13, 'Tom and Jerry : Chase', 'Games', 'tom-and-jerry-chase-games.webp', 'tom-and-jerry-chase', 'default', 0, '', 'On', 'N', '', '', '', '', '', 'Tom and Jerry : Chase', 'DF'),
(14, 'DRAGON RAJA - SEA', 'Games', 'dragon-raja-sea-games.webp', 'dragon-raja-sea', 'default', 0, '', 'On', 'N', '', '', '', '', '', 'DRAGON RAJA - SEA', 'DF'),
(15, 'Light of Thel', 'Games', 'light-of-thel-games.webp', 'light-of-thel', 'default', 0, '', 'On', 'N', '', '', '', '', '', 'Light of Thel', 'DF'),
(16, 'League of Legends Wild Rift', 'Games', 'league-of-legends-wild-rift-games.webp', 'league-of-legends-wild-rift', 'default', 0, '', 'On', 'N', '', '', '', '', '', 'League of Legends Wild Rift', 'DF'),
(17, 'YS 6 Mobile VNG', 'Games', 'ys-6-mobile-vng-games.webp', 'ys-6-mobile-vng', 'default', 0, '', 'On', 'N', '', '', '', '', '', 'YS 6 Mobile VNG', 'DF'),
(18, 'Hyper Front', 'Games', 'hyper-front-games.webp', 'hyper-front', 'default', 0, '', 'On', 'N', '', '', '', '', '', 'Hyper Front', 'DF'),
(19, 'Super Sus', 'Games', 'super-sus-games.webp', 'super-sus', 'default', 0, '', 'On', 'N', '', '', '', '', '', 'Super Sus', 'DF'),
(20, 'Sky Children of the Light', 'Games', 'sky-children-of-the-light-games.webp', 'sky-children-of-the-light', 'default', 0, '', 'On', 'N', '', '', '', '', '', 'Sky Children of the Light', 'DF'),
(21, 'MU ORIGIN 3', 'Games', 'mu-origin-3-asia-games.webp', 'mu-origin-3', 'default', 0, '', 'On', 'N', '', '', '', '', '', 'MU ORIGIN 3', 'DF'),
(22, 'Stumble Guys', 'Games', 'stumble-guys-google-play-games.webp', 'stumble-guys', 'default', 0, '', 'On', 'N', '', '', '', '', '', 'Stumble Guys', 'DF'),
(23, 'Honkai Impact 3', 'Games', 'honkai-impact-3-games.webp', 'honkai-impact-3', 'default', 0, '', 'On', 'N', '', '', '', '', '', 'Honkai Impact 3', 'DF'),
(24, 'Ragnarok Origin', 'Games', 'ragnarok-origin-games.webp', 'ragnarok-origin', 'default', 0, '', 'On', 'N', '', '', '', '', '', 'Ragnarok Origin', 'DF'),
(25, 'Revelation Infinite Journey', 'Games', 'revelation-mobile-games.webp', 'revelation-infinite-journey', 'default', 0, '', 'On', 'N', '', '', '', '', '', 'Revelation Infinite Journey', 'DF'),
(26, 'Ace Racer', 'Games', 'ace-racer-games.webp', 'ace-racer', 'default', 0, '', 'On', 'N', '', '', '', '', '', 'Ace Racer', 'DF'),
(27, 'Luna New World', 'Games', 'luna-online-new-world-games.webp', 'luna-new-world', 'default', 0, '', 'On', 'N', '', '', '', '', '', 'Luna New World', 'DF'),
(28, 'GOOGLE PLAY INDONESIA', 'Voucher', 'voucher-google-play-games.webp', 'google-play-indonesia', 'default', 0, '', 'On', 'N', '', '', '', '', '', 'GOOGLE PLAY INDONESIA', 'DF'),
(29, 'Razer Gold', 'Voucher', 'voucher-razer-gold-games.webp', 'razer-gold', 'default', 0, '', 'On', 'N', '', '', '', '', '', 'Razer Gold', 'DF'),
(30, 'POINT BLANK', 'Voucher', 'point-blank-games.webp', 'point-blank', 'default', 0, '', 'On', 'N', '', '', '', '', '', 'POINT BLANK', 'DF'),
(31, 'Unipin Voucher', 'Voucher', 'unipin-vouicher-games.webp', 'unipin-voucher', 'default', 0, '', 'On', 'N', '', '', '', '', '', 'Unipin Voucher', 'DF'),
(32, 'Nintendo eShop', 'Voucher', 'voucher-nintendo-games.webp', 'nintendo-eshop', 'default', 0, '', 'On', 'N', '', '', '', '', '', 'Nintendo eShop', 'DF'),
(33, 'XBOX', 'Voucher', 'xbox-gift-card-games.webp', 'xbox', 'default', 0, '', 'On', 'N', '', '', '', '', '', 'XBOX', 'DF'),
(34, 'Roblox', 'Voucher', 'voucher-roblox-games.webp', 'roblox', 'default', 0, '', 'On', 'N', '', '', '', '', '', 'Roblox', 'DF'),
(35, 'GARENA', 'Voucher', 'voucher-garena-shells-games.webp', 'garena', 'default', 0, '', 'On', 'N', '', '', '', '', '', 'GARENA', 'DF'),
(36, 'Steam Wallet (IDR)', 'Voucher', 'steam-wallet-code-indonesia-games.webp', 'steam-wallet-idr', 'default', 0, '', 'On', 'N', '', '', '', '', '', 'Steam Wallet (IDR)', 'DF'),
(37, 'TELKOMSEL', 'Pulsa', 'telkomsel-games.webp', 'telkomsel', 'default', 0, '', 'On', 'N', '', '', '', '', '', 'TELKOMSEL', 'DF'),
(38, 'INDOSAT', 'Pulsa', 'indosat-games.webp', 'indosat', 'default', 0, '', 'On', 'N', '', '', '', '', '', 'INDOSAT', 'DF'),
(39, 'AXIS', 'Pulsa', 'axis-games.webp', 'axis', 'default', 0, '', 'On', 'N', '', '', '', '', '', 'AXIS', 'DF'),
(40, 'SMARTFREN', 'Pulsa', 'smartfren-games.webp', 'smartfren', 'default', 0, '', 'On', 'N', '', '', '', '', '', 'SMARTFREN', 'DF'),
(41, 'TRI', 'Pulsa', 'tri-games.webp', 'tri', 'default', 0, '', 'On', 'N', '', '', '', '', '', 'TRI', 'DF'),
(42, 'XL', 'Pulsa', 'xl-games.webp', 'xl', 'default', 0, '', 'On', 'N', '', '', '', '', '', 'XL', 'DF'),
(43, 'PLN', 'PLN', 'pln.webp', 'pln', 'default', 0, '', 'On', 'N', '', '', '', '', '', 'PLN', 'DF'),
(44, 'Tower of Fantasy', 'Games', 'tower-of-fantasy-games.webp', 'tower-of-fantasy-games', 'default', 0, '', 'On', 'N', '', '', '', '', '', 'Tower of Fantasy', 'DF'),
(45, 'Goddess of Victory Nikke', 'Games', 'goddess-of-victory-nikke-games.webp', 'goddess-of-victory-nikke-games', 'default', 0, '', 'On', 'N', '', '', '', '', '', 'Goddess of Victory Nikke', 'DF'),
(46, 'PUBG MOBILE', 'Voucher', 'pubg-mobile-games.webp', 'pubg-mobile-voucher', 'default', 0, '', 'On', 'N', '', '', '', '', '', 'PUBG MOBILE', 'DF'),
(47, 'TELKOMSEL', 'Data', 'telkomsel-games.webp', 'telkomsel-data', 'default', 0, '', 'On', 'N', '', '', '', '', '', 'TELKOMSEL', 'DF'),
(48, 'INDOSAT', 'Data', 'indosat-games.webp', 'indosat-data', 'default', 0, '', 'On', 'N', '', '', '', '', '', 'INDOSAT', 'DF'),
(49, 'AXIS', 'Data', 'axis-games.webp', 'axis-data', 'default', 0, '', 'On', 'N', '', '', '', '', '', 'AXIS', 'DF'),
(50, 'SMARTFREN', 'Data', 'smartfren-games.webp', 'smartfren-data', 'default', 0, '', 'On', 'N', '', '', '', '', '', 'SMARTFREN', 'DF'),
(51, 'TRI', 'Data', 'tri-games.webp', 'tri-data', 'default', 0, '', 'On', 'N', '', '', '', '', '', 'TRI', 'DF'),
(52, 'XL', 'Data', 'xl-games.webp', 'xl-data', 'default', 0, '', 'On', 'N', '', '', '', '', '', 'XL', 'DF');

-- --------------------------------------------------------

--
-- Table structure for table `method`
--

CREATE TABLE `method` (
  `id` int(11) NOT NULL,
  `method` varchar(55) NOT NULL,
  `image` varchar(250) NOT NULL,
  `uniq` enum('Y','N') NOT NULL,
  `provider` varchar(100) NOT NULL,
  `code` varchar(55) NOT NULL,
  `rek` varchar(250) NOT NULL,
  `instruksi` longtext NOT NULL,
  `status` enum('On','Off') NOT NULL,
  `type` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `method`
--

INSERT INTO `method` (`id`, `method`, `image`, `uniq`, `provider`, `code`, `rek`, `instruksi`, `status`, `type`) VALUES
(1, 'QRIS', '1680271346_45308e162823f6dbf650.jpg', 'N', 'Tripay', 'QRISC', '', '&lt;p&gt;Cara melakukan pembayaran e-wallet dengan 1 HP :&lt;/p&gt;\r\n\r\n&lt;ol&gt;\r\n	&lt;li&gt;Screenshot QR code pembayaran&lt;/li&gt;\r\n	&lt;li&gt;Buka e-wallet&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; (ovo/gopay/dana/shopee/link aj)&lt;/li&gt;\r\n	&lt;li&gt;Tekan tombol scan&lt;/li&gt;\r\n	&lt;li&gt;Pilih upload gambar atau ambil gambar dari gallery&lt;/li&gt;\r\n	&lt;li&gt;Lalu pilih gambar yang tadi di screenshot&lt;/li&gt;\r\n	&lt;li&gt;Lakukan pembayaran&lt;/li&gt;\r\n	&lt;li&gt;Diamond akan langsung masuk, silahkan dicek di game&lt;/li&gt;\r\n&lt;/ol&gt;', 'On', 'QRIS'),
(2, 'OVO', '1654748030_b0f3ce8f5560eb546634.png', 'N', 'Tripay', 'OVO', '', '&lt;ol&gt;\n	&lt;li&gt;Klik tombol &lt;strong&gt;&amp;#39;Bayar Sekarang&amp;#39;&lt;/strong&gt;&lt;/li&gt;\n	&lt;li&gt;Klik tombol Lanjutkan Pembayaran&lt;/li&gt;\n	&lt;li&gt;Periksa&amp;nbsp;&lt;strong&gt;aplikasi OVO&lt;/strong&gt;&amp;nbsp;di Ponsel Anda&lt;/li&gt;\n	&lt;li&gt;Akan muncul prompt transaksi. Pastikan data transaksi sudah sesuai&lt;/li&gt;\n	&lt;li&gt;Klik tombol&amp;nbsp;&lt;strong&gt;Bayar&lt;/strong&gt;&lt;/li&gt;\n	&lt;li&gt;Transaksi selesai. Simpan bukti pembayaran Anda&lt;/li&gt;\n&lt;/ol&gt;', 'On', 'E-Wallet'),
(4, 'BRI TRANSFER (Proses Manual)', '1654748626_76660b20fba6fba74d2c.png', 'Y', 'Manual', '', '-', '', 'Off', 'Bank Transfer'),
(5, 'BNI TRANSFER (Proses Manual)', '1654748638_ef950ca4a74933350a2a.png', 'Y', 'Manual', '', '-', '&lt;p&gt;Silahkan melakukan pembayaran dengan melakukan transfer ke rekening diatas, sesuai Nominal yang tertera. Rekening atas nama ADUN STORE&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;Transfer&amp;nbsp;dengan jumlah yang tepat hingga ke satuan Rupiahnya,&amp;nbsp;&lt;/strong&gt;&lt;/p&gt;', 'Off', 'Bank Transfer'),
(6, 'Shopee Pay', '1662460874_0c071b7564e1995a2c88.png', 'N', 'Tripay', 'SHOPEEPAY', '-', '&lt;p&gt;Silahkan melakukan pembayaran dengan melakukan transfer ke rekening diatas, sesuai Nominal yang tertera. Rekening atas nama ADUN STORE&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;Transfer&amp;nbsp;dengan jumlah yang tepat hingga ke satuan Rupiahnya,&amp;nbsp;&lt;/strong&gt;&lt;/p&gt;', 'On', 'E-Wallet'),
(7, 'BSI VIRTUAL ACCOUNT', '1654747759_5c3634dc136591ae07ec.png', 'N', 'Tripay', 'BSIVA', '', '&lt;ol&gt;\r\n	&lt;li&gt;Masuk ke aplikasi BSI Mobile Anda&lt;/li&gt;\r\n	&lt;li&gt;Pilih menu&amp;nbsp;&lt;strong&gt;Bayar&lt;/strong&gt;&lt;/li&gt;\r\n	&lt;li&gt;Pilih menu&amp;nbsp;&lt;strong&gt;Institusi&lt;/strong&gt;&lt;/li&gt;\r\n	&lt;li&gt;Pada opsi Nama Institusi, pilih&amp;nbsp;&lt;strong&gt;9042 Win Pay&lt;/strong&gt;&lt;/li&gt;\r\n	&lt;li&gt;Masukkan kode bayar virtual account&lt;/li&gt;\r\n	&lt;li&gt;Klik&amp;nbsp;&lt;strong&gt;Selanjutnya&lt;/strong&gt;&lt;/li&gt;\r\n	&lt;li&gt;Masukkan PIN Anda&lt;/li&gt;\r\n	&lt;li&gt;Klik&amp;nbsp;&lt;strong&gt;Selanjutnya&lt;/strong&gt;&lt;/li&gt;\r\n	&lt;li&gt;Akan ditampikan detail transaksi, pastikan sudah sesuai&lt;/li&gt;\r\n	&lt;li&gt;Klik&amp;nbsp;&lt;strong&gt;Selanjutnya&lt;/strong&gt;&lt;/li&gt;\r\n	&lt;li&gt;Transaksi selesai, simpan bukti pembayaran Anda&lt;/li&gt;\r\n&lt;/ol&gt;', 'On', 'Virtual Account'),
(8, 'BNI VIRTUAL ACCOUNT', '1654747663_361252a9e71f20ca8b7a.png', 'N', 'Tripay', 'BNIVA', '', '&lt;ol&gt;\r\n	&lt;li&gt;Akses BNI Mobile Banking melalui handphone.&lt;/li&gt;\r\n	&lt;li&gt;Masukkan &lt;em&gt;User ID &lt;/em&gt;dan &lt;em&gt;password.&lt;/em&gt;&lt;/li&gt;\r\n	&lt;li&gt;Pilih menu &lt;strong&gt;Transfer&lt;/strong&gt;.&lt;/li&gt;\r\n	&lt;li&gt;Pilih menu &lt;strong&gt;Virtual Account Billing&lt;/strong&gt;, lalu pilih rekening debet.&lt;/li&gt;\r\n	&lt;li&gt;Masukkan nomor Virtual Account Anda pada menu &lt;strong&gt;Input Baru&lt;/strong&gt;.&lt;/li&gt;\r\n	&lt;li&gt;Tagihan yang harus dibayarkan akan muncul pada layar konfirmasi.&lt;/li&gt;\r\n	&lt;li&gt;Konfirmasi transaksi dan masukkan Password Transaksi.&lt;/li&gt;\r\n	&lt;li&gt;Pembayaran Anda Telah Berhasil.&lt;/li&gt;\r\n&lt;/ol&gt;', 'On', 'Virtual Account'),
(9, 'PERMATA VIRTUAL ACCOUNT', '1654748334_3051ded225b1859541c4.png', 'N', 'Tripay', 'PERMATAVA', '', '&lt;ol&gt;\r\n	&lt;li&gt;Silahkan login mobile banking yang dimiliki Permata Bank&lt;/li&gt;\r\n	&lt;li&gt;Lalu klik Menu Pembayaran Tagihan dan pilih Menu Virtual Account&lt;/li&gt;\r\n	&lt;li&gt;Kemudian pilih Tagihan Anda dan pilih Daftar Tagihan Baru&lt;/li&gt;\r\n	&lt;li&gt;Masukkan nomor rekening dengan nomor Virtual Account Anda (contoh: 7810202001539202) sebagai Nomor Tagihan. Apabila selesai silahkan klik Konfirmasi&lt;/li&gt;\r\n	&lt;li&gt;Masukkan Nama Pengingat setelah itu klik Lanjut. Apabila selesai silahkan klik Konfirmasi&lt;/li&gt;\r\n	&lt;li&gt;Masukkan jumlah nominal tagihan sesuai dengan invoice. Apabila selesai silahkan klik Konfirmasi&lt;/li&gt;\r\n	&lt;li&gt;Masukkan Response Code dan klik Konfirmasi apabila telah selesai&lt;/li&gt;\r\n	&lt;li&gt;Proses transfer telah selesai&lt;/li&gt;\r\n&lt;/ol&gt;', 'On', 'Virtual Account'),
(10, 'MANDIRI', '1654747903_c36c3301db79a529a741.png', 'N', 'Manual', 'MANDIRIVA', '-', '&lt;ol&gt;\r\n	&lt;li&gt;\r\n	&lt;p&gt;Lakukan pembayaran ke nomer rekening Mandiri&amp;nbsp;di bawah ini :&lt;/p&gt;\r\n\r\n	&lt;table border=&quot;1&quot; cellpadding=&quot;1&quot; cellspacing=&quot;1&quot; style=&quot;width:500px&quot;&gt;\r\n		&lt;caption&gt;TUJUAN PEMBAYARAN&lt;/caption&gt;\r\n		&lt;tbody&gt;\r\n			&lt;tr&gt;\r\n				&lt;td&gt;METODE PEMBAYARAN&lt;/td&gt;\r\n				&lt;td&gt;-&lt;/td&gt;\r\n			&lt;/tr&gt;\r\n			&lt;tr&gt;\r\n				&lt;td&gt;NOMER REKENING&lt;/td&gt;\r\n				&lt;td&gt;-&lt;/td&gt;\r\n			&lt;/tr&gt;\r\n			&lt;tr&gt;\r\n				&lt;td&gt;NAMA&lt;/td&gt;\r\n				&lt;td&gt;-&lt;/td&gt;\r\n			&lt;/tr&gt;\r\n		&lt;/tbody&gt;\r\n	&lt;/table&gt;\r\n	&amp;nbsp;\r\n\r\n	&lt;p&gt;Silahkan melakukan pembayaran dengan melakukan transfer ke rekening diatas, dan ada biaya tambahan yaitu biaya kode unik,&lt;/p&gt;\r\n\r\n	&lt;p&gt;contoh nya kita beli diamond dengan harga 45.000 dan ada biaya kode uniknya sebesar 55 jadi total yang harus di bayar adalah 45.055&lt;/p&gt;\r\n\r\n	&lt;p&gt;jadi silahkan transfer sesuai jumlah dan jangan salah kalau salah total sistem kita tidak bisa membaca otomatis.&amp;nbsp;&lt;/p&gt;\r\n\r\n	&lt;p&gt;&lt;strong&gt;Transfer&amp;nbsp;dengan jumlah yang tepat hingga ke satuan Rupiahnya,&amp;nbsp;&lt;/strong&gt;&lt;/p&gt;\r\n	&lt;/li&gt;\r\n&lt;/ol&gt;', 'Off', 'Virtual Account'),
(11, 'BRI VIRTUAL ACCOUNT', '1680351819_fab9919bc4bf9d0393b4.jpg', 'N', 'Tripay', 'BRIVA', '', '&lt;ol&gt;\r\n	&lt;li&gt;Login ke mobile banking&lt;/li&gt;\r\n	&lt;li&gt;Tekan menu &amp;ldquo;Pembayaran&amp;rdquo;&lt;/li&gt;\r\n	&lt;li&gt;Kemudian pilih menu &amp;ldquo;BRIVA&amp;rdquo;&lt;/li&gt;\r\n	&lt;li&gt;Masukkan nomor BRI Virtual Account Anda beserta jumlah pembayaran&lt;/li&gt;\r\n	&lt;li&gt;Masukkan nomor PIN Anda&lt;/li&gt;\r\n	&lt;li&gt;Tekan &amp;ldquo;OK&amp;rdquo; untuk melanjutkan transaksi&lt;/li&gt;\r\n	&lt;li&gt;Transaksi berhasil&lt;/li&gt;\r\n	&lt;li&gt;Setelah beberapa saat, Anda akan menerima SMS konfirmasi&lt;/li&gt;\r\n&lt;/ol&gt;', 'On', 'Virtual Account'),
(12, 'INDOMARET', '1654747984_186dea58029f6d391184.png', 'N', 'Tripay', 'INDOMARET', '', '&lt;ol&gt;\n	&lt;li&gt;Datang ke gerai Indomaret&lt;/li&gt;\n	&lt;li&gt;Sampaikan ke kasir ingin melakukan pembayaran&amp;nbsp;&lt;strong&gt;Linkita&lt;/strong&gt;&lt;/li&gt;\n	&lt;li&gt;Berikan kode bayar &amp;nbsp;ke kasir&lt;/li&gt;\n	&lt;li&gt;Bayar sesuai jumlah yang diinfokan oleh kasir&lt;/li&gt;\n	&lt;li&gt;Simpan struk bukti pembayaran Anda&lt;/li&gt;\n&lt;/ol&gt;', 'On', 'Convenience Store'),
(13, 'ALFAMART', '1654747423_98aa253fe2c9a2098148.png', 'N', 'Tripay', 'ALFAMART', '', '&lt;ol&gt;\n	&lt;li&gt;Datang ke Alfamart&lt;/li&gt;\n	&lt;li&gt;Sampaikan ke kasir ingin melakukan pembayaran Plasamall&lt;/li&gt;\n	&lt;li&gt;Berikan kode bayar &amp;nbsp;ke kasir&lt;/li&gt;\n	&lt;li&gt;Bayar sesuai jumlah yang diinfokan oleh kasir&lt;/li&gt;\n	&lt;li&gt;Simpan struk bukti pembayaran Anda&lt;/li&gt;\n&lt;/ol&gt;', 'On', 'Convenience Store'),
(14, 'ALFAMIDI', '1654747483_d0dab20e8a32e2f6d867.png', 'N', 'Tripay', 'ALFAMIDI', '', '&lt;ol&gt;\n	&lt;li&gt;Datang ke Alfamidi&lt;/li&gt;\n	&lt;li&gt;Sampaikan ke kasir ingin melakukan pembayaran Plasamall&lt;/li&gt;\n	&lt;li&gt;Berikan kode bayar &amp;nbsp;ke kasir&lt;/li&gt;\n	&lt;li&gt;Bayar sesuai jumlah yang diinfokan oleh kasir&lt;/li&gt;\n	&lt;li&gt;Simpan struk bukti pembayaran Anda&lt;/li&gt;\n&lt;/ol&gt;', 'On', 'Convenience Store'),
(179, 'BCAVA', '1680271278_87663cd7f1a155149508.png', 'N', 'Tripay', 'BCAVA', 'BCAVA', '', 'On', 'Virtual Account');

-- --------------------------------------------------------

--
-- Table structure for table `mutasi`
--

CREATE TABLE `mutasi` (
  `id` int(11) NOT NULL,
  `bank` varchar(100) NOT NULL,
  `keterangan` longtext NOT NULL,
  `status` varchar(100) NOT NULL,
  `jumlah` bigint(20) NOT NULL,
  `saldo` bigint(20) NOT NULL,
  `date_create` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `order_id` varchar(100) NOT NULL,
  `username` varchar(55) NOT NULL,
  `wa` varchar(250) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product` varchar(250) NOT NULL,
  `price` bigint(20) NOT NULL,
  `user_id` varchar(250) NOT NULL,
  `zone_id` varchar(250) NOT NULL,
  `nickname` varchar(250) NOT NULL,
  `method_id` int(11) NOT NULL,
  `method` varchar(100) NOT NULL,
  `games` varchar(100) NOT NULL,
  `games_id` int(11) NOT NULL,
  `status` enum('Pending','Processing','Success','Canceled','Expired','Finished') NOT NULL,
  `ket` longtext NOT NULL,
  `payment_code` varchar(100) NOT NULL,
  `provider` varchar(100) NOT NULL,
  `date` varchar(100) NOT NULL,
  `date_create` datetime NOT NULL,
  `date_process` datetime NOT NULL,
  `voucher` varchar(200) NOT NULL,
  `payment_type` varchar(200) DEFAULT NULL,
  `payment_gateway` varchar(200) NOT NULL,
  `method_code` varchar(100) NOT NULL,
  `raw_price` bigint(20) NOT NULL,
  `trx_id` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `order_id`, `username`, `wa`, `product_id`, `product`, `price`, `user_id`, `zone_id`, `nickname`, `method_id`, `method`, `games`, `games_id`, `status`, `ket`, `payment_code`, `provider`, `date`, `date_create`, `date_process`, `voucher`, `payment_type`, `payment_gateway`, `method_code`, `raw_price`, `trx_id`) VALUES
(1, 'INV20230410961766', 'adigunawan828', '085381259307', 100, 'Telkomsel 10.000', 11033, '085381259307', '1', '', 1, 'QRIS', 'TELKOMSEL', 37, 'Canceled', 'IP Anda tidak kami kenali: 185.229.118.51', 'https://tripay.co.id/qr/T103048233241GXMAC', 'DF', '2023-04-10', '2023-04-10 13:54:15', '2023-04-10 13:54:15', '', 'QRIS', 'Tripay', 'QRISC', 10030, 'INV20230410961766'),
(2, 'INV20230410553646', 'adigunawan828', '085381259307', 475, 'Telkomsel 5.000', 5500, '085381259307', '1', '', 10001, 'Saldo Akun', 'TELKOMSEL', 37, 'Success', '03021500000563712835', 'Saldo Akun', 'DF', '2023-04-10', '2023-04-10 15:12:39', '2023-04-10 15:12:39', '', '', 'Balance', 'Balance', 5000, 'INV20230410553646'),
(3, 'INV20230414917218', '', '082351508360', 236, 'Free Fire 100 Diamond', 14171, '2475721145', '1', '', 1, 'QRIS', 'FREE FIRE', 2, 'Pending', 'Menunggu Pembayaran', 'https://tripay.co.id/qr/T1030483172416L0ED', 'DF', '2023-04-14', '2023-04-14 10:44:42', '2023-04-14 10:44:42', '', 'QRIS', 'Tripay', 'QRISC', 12883, 'INV20230414917218'),
(4, 'INV20230417784957', '', '082241760324', 154, 'MOBILELEGEND - 28 Diamond', 7205, '248949285(9303)', '1', '', 1, 'QRIS', 'MOBILE LEGENDS', 1, 'Canceled', 'Jumlah Digit Kurang Atau Lebih', 'https://tripay.co.id/qr/T103048377874CL6PO', 'DF', '2023-04-17', '2023-04-17 01:06:09', '2023-04-17 01:06:09', '', 'QRIS', 'Tripay', 'QRISC', 6550, 'INV20230417784957'),
(5, 'INV20230417881128', '', '089892092267', 83, 'MOBILELEGEND - 5 Diamond', 1551, '467046651/2370', '1', '', 1, 'QRIS', 'MOBILE LEGENDS', 1, 'Pending', 'Menunggu Pembayaran', 'https://tripay.co.id/qr/T103048399314SGBF0', 'DF', '2023-04-17', '2023-04-17 21:17:55', '2023-04-17 21:17:55', '', 'QRIS', 'Tripay', 'QRISC', 1410, 'INV20230417881128'),
(6, 'INV20230421765598', '', '085256501481', 224, 'MOBILELEGEND - 86 Diamond', 20615, '734470718(8942)', '1', '', 13, 'ALFAMART', 'MOBILE LEGENDS', 1, 'Pending', 'Menunggu Pembayaran', '21332000067187', 'DF', '2023-04-21', '2023-04-21 15:52:54', '2023-04-21 15:52:54', '', 'Convenience Store', 'Tripay', 'ALFAMART', 18741, 'INV20230421765598'),
(7, 'INV20230421859368', '', '085256501481', 326, 'MOBILELEGEND - 429 Diamond', 102410, '734470718(8942)', '1', '', 13, 'ALFAMART', 'MOBILE LEGENDS', 1, 'Pending', 'Menunggu Pembayaran', '21332000067195', 'DF', '2023-04-21', '2023-04-21 15:57:33', '2023-04-21 15:57:33', '', 'Convenience Store', 'Tripay', 'ALFAMART', 93100, 'INV20230421859368'),
(8, 'INV20230421248853', '', '085256501481', 268, 'MOBILELEGEND - 172 Diamond', 41296, '734470718(8942)', '1', '', 13, 'ALFAMART', 'MOBILE LEGENDS', 1, 'Pending', 'Menunggu Pembayaran', '21332000067199', 'DF', '2023-04-21', '2023-04-21 15:58:17', '2023-04-21 15:58:17', '', 'Convenience Store', 'Tripay', 'ALFAMART', 37542, 'INV20230421248853'),
(9, 'INV20230422442110', '', '087733667733', 224, 'MOBILELEGEND - 86 Diamond', 20615, '6781995898704', '1', '', 6, 'Shopee Pay', 'MOBILE LEGENDS', 1, 'Canceled', 'Produk sedang Gangguan (Non Aktif)', 'https://tripay.co.id/checkout/T103048592116JVAWO', 'DF', '2023-04-22', '2023-04-22 18:12:26', '2023-04-22 18:12:26', '', 'E-Wallet', 'Tripay', 'SHOPEEPAY', 18741, 'INV20230422442110'),
(10, 'INV20230429452917', '', '085381259307', 78, 'Telkomsel 5.000', 5500, '085381259307', '1', '', 1, 'QRIS', 'TELKOMSEL', 37, 'Success', '03040800000927750408', 'https://tripay.co.id/qr/T103048799438F7IVR', 'DF', '2023-04-29', '2023-04-29 14:31:49', '2023-04-29 14:31:49', '', 'QRIS', 'Tripay', 'QRISC', 5000, 'INV20230429452917'),
(11, 'INV20230505563896', 'adigunawan828', '085381259307', 279, 'Telkomsel 200.000', 215930, '085381259307', '1', '', 10001, 'Saldo Akun', 'TELKOMSEL', 37, 'Success', '03046800001049364848', 'Saldo Akun', 'DF', '2023-05-05', '2023-05-05 18:42:01', '2023-05-05 18:42:01', '', '', 'Balance', 'Balance', 196000, 'INV20230505563896'),
(12, 'INV20230505563854', 'adigunawan828', '085381259307', 217, 'Telkomsel 75.000', 80603, '085381259307', '1', '', 10001, 'Saldo Akun', 'TELKOMSEL', 37, 'Success', '03046100001049391541', 'Saldo Akun', 'DF', '2023-05-05', '2023-05-05 18:42:49', '2023-05-05 18:42:49', '', '', 'Balance', 'Balance', 73605, 'INV20230505563854'),
(13, 'INV20230505582379', 'adigunawan828', '085381259307', 129, 'Telkomsel 15.000', 16473, '085381259307', '1', '', 10001, 'Saldo Akun', 'TELKOMSEL', 37, 'Success', '03046600001049397996', 'Saldo Akun', 'DF', '2023-05-05', '2023-05-05 18:43:21', '2023-05-05 18:43:21', '', '', 'Balance', 'Balance', 14975, 'INV20230505582379'),
(14, 'INV20230505617286', 'adigunawan828', '085381259307', 78, 'Telkomsel 5.000', 5500, '085381259307', '1', '', 10001, 'Saldo Akun', 'TELKOMSEL', 37, 'Success', '03046200001049492632', 'Saldo Akun', 'DF', '2023-05-05', '2023-05-05 18:43:40', '2023-05-05 18:43:40', '', '', 'Balance', 'Balance', 5000, 'INV20230505617286');

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

CREATE TABLE `post` (
  `id` int(11) NOT NULL,
  `title` varchar(250) NOT NULL,
  `image` varchar(250) NOT NULL,
  `category` varchar(250) NOT NULL,
  `content` longtext NOT NULL,
  `date_create` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `price`
--

CREATE TABLE `price` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `method_id` int(11) NOT NULL,
  `price` bigint(20) NOT NULL,
  `level` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `games_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `product` varchar(250) NOT NULL,
  `price` bigint(20) NOT NULL,
  `provider` varchar(250) NOT NULL,
  `sku` varchar(250) NOT NULL,
  `status` enum('On','Off') NOT NULL,
  `sort` int(11) NOT NULL,
  `check_status` enum('Y','N') NOT NULL,
  `check_code` varchar(55) NOT NULL,
  `price_silver` bigint(20) NOT NULL,
  `price_gold` bigint(20) NOT NULL,
  `image` varchar(250) NOT NULL,
  `min` int(11) NOT NULL,
  `max` int(11) NOT NULL,
  `raw_price` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `games_id`, `category_id`, `product`, `price`, `provider`, `sku`, `status`, `sort`, `check_status`, `check_code`, `price_silver`, `price_gold`, `image`, `min`, `max`, `raw_price`) VALUES
(1, 2, 0, 'Free Fire Membership Mingguan', 29527, 'DF', 'ffm1', 'On', 1, 'N', '', 0, 0, '', 0, 0, 27237),
(2, 44, 0, 'Tower of Fantasy Basic Pass', 132000, 'DF', 'tof4', 'On', 1, 'N', '', 0, 0, '', 0, 0, 120000),
(3, 44, 0, 'Tower of Fantasy Monthly Pass', 64900, 'DF', 'tof2', 'On', 2, 'N', '', 0, 0, '', 0, 0, 59000),
(4, 44, 0, 'Tower of Fantasy Adventure Pack', 64900, 'DF', 'tof3', 'On', 3, 'N', '', 0, 0, '', 0, 0, 59000),
(5, 44, 0, 'Tower of Fantasy Rookie Supplies', 13200, 'DF', 'tof1', 'On', 4, 'N', '', 0, 0, '', 0, 0, 12000),
(6, 5, 0, 'Genshin Impact Blessing of the Welkin Moon', 64570, 'DF', 'gi1', 'On', 1, 'N', '', 0, 0, '', 0, 0, 56830),
(7, 14, 0, 'Dragon Raja Investment Fund', 219019, 'DF', 'drs1', 'On', 1, 'N', '', 0, 0, '', 0, 0, 199108),
(8, 14, 0, 'Dragon Raja Investment Fund II', 289769, 'DF', 'drs2', 'On', 2, 'N', '', 0, 0, '', 0, 0, 263426),
(9, 1, 0, 'MOBILE LEGENDS Twilight Pass', 138606, 'DF', 'mlm2', 'Off', 1, 'N', '', 0, 0, '', 0, 0, 126882),
(10, 25, 0, 'Revelation Infinite Journey Newbie Pack', 9292, 'DF', 'rij2', 'On', 1, 'N', '', 0, 0, '', 0, 0, 8447),
(11, 44, 0, 'Tower of Fantasy Collectors Edition Pass', 261250, 'DF', 'tof6', 'On', 5, 'N', '', 0, 0, '', 0, 0, 237500),
(12, 2, 0, 'Free Fire Membership Bulanan', 88875, 'DF', 'ffm2', 'On', 2, 'N', '', 0, 0, '', 0, 0, 82595),
(13, 44, 0, 'Tower of Fantasy Upgrade Pass', 146300, 'DF', 'tof5', 'On', 6, 'N', '', 0, 0, '', 0, 0, 133000),
(14, 51, 0, 'Tri Data 1 GB / 30 Hari', 7082, 'DF', 'dtri1', 'On', 1, 'N', '', 0, 0, '', 0, 0, 6750),
(15, 47, 0, 'Telkomsel Data 1 GB + 2 GB Game / 30 Hari', 26136, 'DF', 'dtsel10', 'On', 5, 'N', '', 0, 0, '', 0, 0, 23760),
(16, 43, 0, 'PLN 1.000.000', 1099995, 'DF', 'pln5', 'On', 1, 'N', '', 0, 0, '', 0, 0, 1000025),
(17, 18, 0, 'Hyper Front SEA 1.280 Star Quartz', 292710, 'DF', 'hf3', 'On', 2, 'N', '', 0, 0, '', 0, 0, 266100),
(18, 18, 0, 'Hyper Front SEA 1.980 Star Quartz', 439120, 'DF', 'hf4', 'On', 1, 'N', '', 0, 0, '', 0, 0, 399200),
(19, 19, 0, 'Super Sus 1.060 Golder Star', 102289, 'DF', 'ss4', 'On', 1, 'N', '', 0, 0, '', 0, 0, 94980),
(20, 52, 0, 'XL Data 1 GB / 30 Hari', 8190, 'DF', 'dxl1', 'On', 1, 'N', '', 0, 0, '', 0, 0, 7425),
(21, 37, 0, 'Telkomsel 1.000.000', 1074183, 'DF', 'tsel13', 'On', 1, 'N', '', 0, 0, '', 0, 0, 976530),
(22, 38, 0, 'Indosat 1.000.000', 1019150, 'DF', 'isat12', 'On', 2, 'N', '', 0, 0, '', 0, 0, 926500),
(23, 42, 0, 'Xl 1.000.000', 1093180, 'DF', 'xl12', 'On', 2, 'N', '', 0, 0, '', 0, 0, 993800),
(24, 47, 0, 'Telkomsel Data 1 GB + 5 GB Videomax / 30 Hari', 26175, 'DF', 'dtsel1', 'On', 2, 'N', '', 0, 0, '', 0, 0, 23795),
(25, 47, 0, 'Telkomsel Data 1 GB + 500 MB Youtube / 30 Hari', 26521, 'DF', 'dtsel9', 'On', 3, 'N', '', 0, 0, '', 0, 0, 24110),
(26, 29, 0, 'Razer Gold 1.000.000', 1039528, 'DF', 'vrg7', 'On', 1, 'N', '', 0, 0, '', 0, 0, 945025),
(27, 47, 0, 'Telkomsel Data 1 GB + 5 GB Ruang Guru / 30 Hari', 28078, 'DF', 'dtsel5', 'On', 4, 'N', '', 0, 0, '', 0, 0, 25525),
(28, 50, 0, 'Smartfren Data 1 GB / 3 Hari', 4180, 'DF', 'dsmar1', 'On', 1, 'N', '', 0, 0, '', 0, 0, 3800),
(29, 48, 0, 'Indosat 1 GB / 30 Hari', 8800, 'DF', 'disat1', 'On', 1, 'N', '', 0, 0, '', 0, 0, 7995),
(30, 49, 0, 'Axis Data 1 GB / 30 Hari', 8465, 'DF', 'daxis2', 'On', 1, 'N', '', 0, 0, '', 0, 0, 7690),
(31, 47, 0, 'Telkomsel Data 2 GB + 10 GB Ruang Guru / 30 Hari', 47053, 'DF', 'dtsel6', 'On', 6, 'N', '', 0, 0, '', 0, 0, 42775),
(32, 49, 0, 'Axis Data 2 GB / 30 Hari', 17380, 'DF', 'daxis3', 'On', 2, 'N', '', 0, 0, '', 0, 0, 15860),
(33, 52, 0, 'XL Data 2 GB / 30 Hari', 16748, 'DF', 'dxl2', 'On', 3, 'N', '', 0, 0, '', 0, 0, 15225),
(34, 19, 0, 'Super Sus 2.180 Golder Star', 212839, 'DF', 'ss5', 'On', 2, 'N', '', 0, 0, '', 0, 0, 199450),
(35, 48, 0, 'Indosat 2 GB / 30 Hari', 16940, 'DF', 'disat2', 'On', 3, 'N', '', 0, 0, '', 0, 0, 15400),
(36, 51, 0, 'Tri Data 2 GB / 30 Hari', 14164, 'DF', 'dtri2', 'On', 2, 'N', '', 0, 0, '', 0, 0, 13500),
(37, 47, 0, 'Telkomsel Data 2 GB + 1.5 GB Youtube / 30 Hari', 54999, 'DF', 'dtsel7', 'On', 7, 'N', '', 0, 0, '', 0, 0, 49999),
(38, 50, 0, 'Smartfren 2 GB / 7 Hari', 8118, 'DF', 'dsmar2', 'On', 2, 'N', '', 0, 0, '', 0, 0, 7380),
(39, 21, 0, 'MU ORIGIN 3 - 7.000 Divine Diamonds', 1663200, 'DF', 'mo6', 'On', 1, 'N', '', 0, 0, '', 0, 0, 1512000),
(40, 23, 0, 'Honkai Impact 3 Monthly Card', 78485, 'DF', 'hi3', 'Off', 3, 'N', '', 0, 0, '', 0, 0, 71350),
(41, 23, 0, 'Honkai Impact 3 330 B-Chips', 78485, 'DF', 'hi5', 'Off', 4, 'N', '', 0, 0, '', 0, 0, 71350),
(42, 23, 0, 'Honkai Impact 3 330 Crystals', 78485, 'DF', 'hi4', 'Off', 1, 'N', '', 0, 0, '', 0, 0, 71350),
(43, 23, 0, 'Honkai Impact 3 65 B-Chips', 15703, 'DF', 'hi2', 'Off', 2, 'N', '', 0, 0, '', 0, 0, 14275),
(44, 23, 0, 'Honkai Impact 3 65 Crystals', 15703, 'DF', 'hi1', 'Off', 5, 'N', '', 0, 0, '', 0, 0, 14275),
(45, 21, 0, 'MU ORIGIN 3 - 2.100 Divine Diamonds', 502150, 'DF', 'mo4', 'On', 3, 'N', '', 0, 0, '', 0, 0, 456500),
(46, 21, 0, 'MU ORIGIN 3 - 3.500 Divine Diamonds', 831270, 'DF', 'mo5', 'On', 2, 'N', '', 0, 0, '', 0, 0, 755700),
(47, 49, 0, 'Axis Data 3 GB / 30 Hari', 25861, 'DF', 'daxis4', 'On', 3, 'N', '', 0, 0, '', 0, 0, 23510),
(48, 21, 0, 'MU ORIGIN 3 - 1.050 Divine Diamonds', 242220, 'DF', 'mo3', 'On', 4, 'N', '', 0, 0, '', 0, 0, 220200),
(49, 21, 0, 'MU ORIGIN 3 - 350 Divine Diamonds', 82830, 'DF', 'mo2', 'On', 5, 'N', '', 0, 0, '', 0, 0, 75300),
(50, 21, 0, 'MU ORIGIN 3 - 70 Divine Diamonds', 17050, 'DF', 'mo1', 'On', 6, 'N', '', 0, 0, '', 0, 0, 15500),
(51, 52, 0, 'XL Data 3 GB / 30 Hari', 24778, 'DF', 'dxl3', 'On', 4, 'N', '', 0, 0, '', 0, 0, 22525),
(52, 18, 0, 'Hyper Front SEA 3.280 Star Quartz', 731940, 'DF', 'hf5', 'On', 3, 'N', '', 0, 0, '', 0, 0, 665400),
(53, 23, 0, 'Honkai Impact 3 710 Crystals', 155909, 'DF', 'hi6', 'Off', 7, 'N', '', 0, 0, '', 0, 0, 141735),
(54, 23, 0, 'Honkai Impact 3 990 B-Chips', 242000, 'DF', 'hi7', 'Off', 6, 'N', '', 0, 0, '', 0, 0, 220000),
(55, 23, 0, 'Honkai Impact 3 1430 Crystals', 330000, 'DF', 'hi8', 'Off', 8, 'N', '', 0, 0, '', 0, 0, 300000),
(56, 32, 0, 'Voucher Nintendo eShop 3 Months Membership', 153755, 'DF', 'vne5', 'On', 1, 'N', '', 0, 0, '', 0, 0, 139777),
(57, 47, 0, 'Telkomsel Data 3 GB + 12 GB Videomax / 30 Hari', 55660, 'DF', 'dtsel2', 'On', 8, 'N', '', 0, 0, '', 0, 0, 50600),
(58, 51, 0, 'Tri Data 3 GB / 30 Hari', 16143, 'DF', 'dtri3', 'On', 3, 'N', '', 0, 0, '', 0, 0, 14675),
(59, 48, 0, 'Indosat 3 GB / 30 Hari', 18475, 'DF', 'disat3', 'On', 4, 'N', '', 0, 0, '', 0, 0, 16750),
(60, 23, 0, 'Honkai Impact 3 1320 B-Chips', 330000, 'DF', 'hi9', 'Off', 9, 'N', '', 0, 0, '', 0, 0, 300000),
(61, 27, 0, 'Luna New World 3.750 Koin', 15833, 'DF', 'lnw1', 'On', 1, 'N', '', 0, 0, '', 0, 0, 14394),
(62, 50, 0, 'Smartfren 3 GB / 7 Hari', 11110, 'DF', 'dsmar3', 'On', 3, 'N', '', 0, 0, '', 0, 0, 10100),
(63, 23, 0, 'Honkai Impact 3 1980 B-Chips', 459250, 'DF', 'hi10', 'Off', 11, 'N', '', 0, 0, '', 0, 0, 417500),
(64, 23, 0, 'Honkai Impact 3 3860 Crystals', 773135, 'DF', 'hi12', 'Off', 12, 'N', '', 0, 0, '', 0, 0, 702850),
(65, 23, 0, 'Honkai Impact 3 3300 B-Chips', 773135, 'DF', 'hi11', 'Off', 10, 'N', '', 0, 0, '', 0, 0, 702850),
(66, 52, 0, 'XL Data 4 GB / 30 Hari', 33138, 'DF', 'dxl4', 'On', 5, 'N', '', 0, 0, '', 0, 0, 30125),
(67, 47, 0, 'Telkomsel Data 4 GB + 2 GB Youtube / 30 Hari', 55000, 'DF', 'dtsel8', 'On', 9, 'N', '', 0, 0, '', 0, 0, 50000),
(68, 48, 0, 'Indosat 4 GB / 30 Hari', 27605, 'DF', 'disat4', 'On', 5, 'N', '', 0, 0, '', 0, 0, 25250),
(69, 41, 0, 'Three 5.000', 5957, 'DF', 'tri1', 'On', 5, 'N', '', 0, 0, '', 0, 0, 5415),
(70, 42, 0, 'Xl 5.000', 6402, 'DF', 'xl1', 'On', 6, 'N', '', 0, 0, '', 0, 0, 5814),
(71, 28, 0, 'Google Play Rp. 5.000 INDONESIA REGION', 5748, 'DF', 'gpi1', 'On', 1, 'N', '', 0, 0, '', 0, 0, 5225),
(72, 34, 0, 'Roblox 5 USD', 83050, 'DF', 'vrbx1', 'On', 1, 'N', '', 0, 0, '', 0, 0, 75500),
(73, 19, 0, 'Super Sus 5.600 Golder Star', 536206, 'DF', 'ss6', 'On', 3, 'N', '', 0, 0, '', 0, 0, 503360),
(74, 48, 0, 'Indosat 5 GB / 30 Hari', 30305, 'DF', 'disat5', 'On', 7, 'N', '', 0, 0, '', 0, 0, 27550),
(75, 12, 0, 'Hago 5 Diamonds', 1705, 'DF', 'hg1', 'On', 1, 'N', '', 0, 0, '', 0, 0, 1550),
(76, 52, 0, 'XL Data 5 GB / 30 Hari', 41267, 'DF', 'dxl5', 'On', 7, 'N', '', 0, 0, '', 0, 0, 37515),
(77, 51, 0, 'Tri Data 5 GB / 30 Hari', 29370, 'DF', 'dtri4', 'On', 4, 'N', '', 0, 0, '', 0, 0, 26700),
(78, 37, 0, 'Telkomsel 5.000', 5500, 'DF', 'tsel0', 'On', 10, 'N', '', 0, 0, '', 0, 0, 5000),
(79, 38, 0, 'Indosat 5.000', 6127, 'DF', 'isat0', 'On', 6, 'N', '', 0, 0, '', 0, 0, 5530),
(80, 39, 0, 'Axis 5.000', 6320, 'DF', 'axis0', 'On', 3, 'N', '', 0, 0, '', 0, 0, 5770),
(81, 33, 0, 'XBOX $5', 84700, 'DF', 'xbox1', 'On', 1, 'N', '', 0, 0, '', 0, 0, 77000),
(82, 40, 0, 'Smartfren 5.000', 5379, 'DF', 'smar0', 'On', 4, 'N', '', 0, 0, '', 0, 0, 4890),
(83, 1, 0, 'MOBILELEGEND - 5 Diamond', 1551, 'DF', 'ml1', 'On', 2, 'N', '', 0, 0, '', 0, 0, 1425),
(84, 17, 0, 'YS 6 Mobile 680 Emelas', 137995, 'DF', 'ymv3', 'On', 4, 'N', '', 0, 0, '', 0, 0, 125450),
(85, 18, 0, 'Hyper Front SEA 6.480 Star Quartz', 1464100, 'DF', 'hf6', 'On', 4, 'N', '', 0, 0, '', 0, 0, 1331000),
(86, 17, 0, 'YS 6 Mobile 300 Emelas', 61710, 'DF', 'ymv2', 'On', 3, 'N', '', 0, 0, '', 0, 0, 56100),
(87, 17, 0, 'YS 6 Mobile 60 Emelas', 12579, 'DF', 'ymv1', 'On', 2, 'N', '', 0, 0, '', 0, 0, 11435),
(88, 17, 0, 'YS 6 Mobile 1.280 Emelas', 258170, 'DF', 'ymv4', 'On', 5, 'N', '', 0, 0, '', 0, 0, 234700),
(89, 17, 0, 'YS 6 Mobile 1.980 Emelas', 397155, 'DF', 'ymv5', 'On', 6, 'N', '', 0, 0, '', 0, 0, 361050),
(90, 17, 0, 'YS 6 Mobile 3.280 Emelas', 626010, 'DF', 'ymv6', 'On', 7, 'N', '', 0, 0, '', 0, 0, 569100),
(91, 17, 0, 'YS 6 Mobile 4.880 Emelas', 939510, 'DF', 'ymv7', 'On', 8, 'N', '', 0, 0, '', 0, 0, 854100),
(92, 17, 0, 'YS 6 Mobile 6.480 Emelas', 1117160, 'DF', 'ymv8', 'On', 1, 'N', '', 0, 0, '', 0, 0, 1015600),
(93, 36, 0, 'Steam Wallet Code Rp 6.000', 6600, 'DF', 'swi1', 'On', 1, 'N', '', 0, 0, '', 0, 0, 6000),
(94, 47, 0, 'Telkomsel Data 7 GB + 28 GB Videomax / 30 Hari', 110110, 'DF', 'dtsel3', 'On', 11, 'N', '', 0, 0, '', 0, 0, 100100),
(95, 27, 0, 'Luna New World 7.500 Koin', 31671, 'DF', 'lnw2', 'On', 2, 'N', '', 0, 0, '', 0, 0, 28792),
(96, 48, 0, 'Indosat 7 GB / 30 Hari', 38500, 'DF', 'disat6', 'On', 8, 'N', '', 0, 0, '', 0, 0, 35000),
(97, 48, 0, 'Indosat 8 GB / 30 Hari', 42900, 'DF', 'disat7', 'On', 9, 'N', '', 0, 0, '', 0, 0, 39000),
(98, 52, 0, 'XL Data 8 GB / 30 Hari', 65478, 'DF', 'dxl6', 'On', 8, 'N', '', 0, 0, '', 0, 0, 59525),
(99, 36, 0, 'Steam Wallet Code Rp 8.000', 8626, 'DF', 'swi2', 'On', 2, 'N', '', 0, 0, '', 0, 0, 7842),
(100, 48, 0, 'Indosat 9 GB / 30 Hari', 40948, 'DF', 'disat8', 'On', 10, 'N', '', 0, 0, '', 0, 0, 37225),
(101, 47, 0, 'Telkomsel COMBO 10 GB / 30 Hari', 99000, 'DF', 'dtsel11', 'On', 12, 'N', '', 0, 0, '', 0, 0, 90000),
(102, 2, 0, 'Free Fire 10 Diamond', 1782, 'DF', 'ff2', 'Off', 4, 'N', '', 0, 0, '', 0, 0, 1650),
(103, 28, 0, 'Google Play Rp. 10.000 INDONESIA REGION', 11248, 'DF', 'gpi2', 'On', 2, 'N', '', 0, 0, '', 0, 0, 10230),
(104, 41, 0, 'Three 10.000', 11226, 'DF', 'tri2', 'On', 7, 'N', '', 0, 0, '', 0, 0, 10205),
(105, 42, 0, 'Xl 10.000', 11814, 'DF', 'xl2', 'On', 9, 'N', '', 0, 0, '', 0, 0, 10740),
(106, 9, 0, 'Speed Drifters 10 Diamonds', 2134, 'DF', 'sd1', 'On', 1, 'N', '', 0, 0, '', 0, 0, 1940),
(107, 50, 0, 'Smartfren 10 GB / 30 Hari', 35200, 'DF', 'dsmar4', 'On', 5, 'N', '', 0, 0, '', 0, 0, 32000),
(108, 40, 0, 'Smartfren 10.000', 10775, 'DF', 'smar1', 'On', 6, 'N', '', 0, 0, '', 0, 0, 9795),
(109, 12, 0, 'Hago 10 Diamonds', 3295, 'DF', 'hg2', 'On', 2, 'N', '', 0, 0, '', 0, 0, 2995),
(110, 29, 0, 'Razer Gold 10.000', 10401, 'DF', 'vrg1', 'On', 2, 'N', '', 0, 0, '', 0, 0, 9455),
(111, 33, 0, 'XBOX $10', 167200, 'DF', 'xbox2', 'On', 2, 'N', '', 0, 0, '', 0, 0, 152000),
(112, 37, 0, 'Telkomsel 10.000', 11033, 'DF', 'tsel1', 'On', 13, 'N', '', 0, 0, '', 0, 0, 10030),
(113, 34, 0, 'Roblox 10 USD', 167228, 'DF', 'vrbx2', 'Off', 2, 'N', '', 0, 0, '', 0, 0, 152025),
(114, 48, 0, 'Indosat 10 GB / 30 Hari', 53900, 'DF', 'disat9', 'On', 11, 'N', '', 0, 0, '', 0, 0, 49000),
(115, 32, 0, 'Voucher Nintendo eShop $10', 156750, 'DF', 'vne1', 'On', 2, 'N', '', 0, 0, '', 0, 0, 142500),
(116, 31, 0, 'Voucher Unipin 10.000', 10153, 'DF', 'univ1', 'On', 1, 'N', '', 0, 0, '', 0, 0, 9230),
(117, 52, 0, 'XL Data 10 GB / 30 Hari', 58049, 'DF', 'dxl7', 'On', 10, 'N', '', 0, 0, '', 0, 0, 52772),
(118, 51, 0, 'Tri Data 10 GB / 30 Hari', 46173, 'DF', 'dtri5', 'On', 6, 'N', '', 0, 0, '', 0, 0, 41975),
(119, 38, 0, 'Indosat 12.000', 13068, 'DF', 'isat1', 'On', 12, 'N', '', 0, 0, '', 0, 0, 11880),
(120, 36, 0, 'Steam Wallet Code Rp 12.000', 12964, 'DF', 'swi3', 'On', 3, 'N', '', 0, 0, '', 0, 0, 11838),
(121, 27, 0, 'Luna New World 12.500 Koin', 52767, 'DF', 'lnw3', 'On', 3, 'N', '', 0, 0, '', 0, 0, 47970),
(122, 32, 0, 'Voucher Nintendo eShop 12 Months Membership', 380172, 'DF', 'vne6', 'On', 3, 'N', '', 0, 0, '', 0, 0, 345611),
(123, 1, 0, 'MOBILELEGEND - 14 Diamond', 3574, 'DF', 'ml2', 'On', 3, 'N', '', 0, 0, '', 0, 0, 3217),
(124, 39, 0, 'Axis 15.000', 16456, 'DF', 'axis1', 'On', 4, 'N', '', 0, 0, '', 0, 0, 14960),
(125, 42, 0, 'Xl 15.000', 16297, 'DF', 'xl3', 'Off', 11, 'N', '', 0, 0, '', 0, 0, 14815),
(126, 20, 0, 'Sky Children of the Light 15 Lilin', 93720, 'DF', 'scott1', 'On', 1, 'N', '', 0, 0, '', 0, 0, 85200),
(127, 51, 0, 'Tri Data 15 GB / 30 Hari', 62728, 'DF', 'dtri6', 'On', 8, 'N', '', 0, 0, '', 0, 0, 57025),
(128, 47, 0, 'Telkomsel Data 15 GB + 40 GB Videomax / 30 Hari', 165853, 'DF', 'dtsel4', 'On', 14, 'N', '', 0, 0, '', 0, 0, 150775),
(129, 37, 0, 'Telkomsel 15.000', 16473, 'DF', 'tsel2', 'On', 15, 'N', '', 0, 0, '', 0, 0, 14975),
(130, 12, 0, 'Hago 15 Diamonds', 4884, 'DF', 'hg3', 'On', 3, 'N', '', 0, 0, '', 0, 0, 4440),
(131, 33, 0, 'XBOX $15', 249700, 'DF', 'xbox3', 'On', 3, 'N', '', 0, 0, '', 0, 0, 227000),
(132, 52, 0, 'XL Data 15 GB / 30 Hari', 90228, 'DF', 'dxl8', 'On', 12, 'N', '', 0, 0, '', 0, 0, 82025),
(133, 28, 0, 'Google Play Rp. 20.000 INDONESIA REGION', 22248, 'DF', 'gpi3', 'On', 3, 'N', '', 0, 0, '', 0, 0, 20225),
(134, 12, 0, 'Hago 20 Diamonds', 6474, 'DF', 'hg4', 'On', 4, 'N', '', 0, 0, '', 0, 0, 5885),
(135, 38, 0, 'Indosat 20.000', 21560, 'DF', 'isat2', 'On', 13, 'N', '', 0, 0, '', 0, 0, 19500),
(136, 41, 0, 'Three 20.000', 21573, 'DF', 'tri3', 'On', 9, 'N', '', 0, 0, '', 0, 0, 19956),
(137, 29, 0, 'Razer Gold 20.000', 20680, 'DF', 'vrg2', 'On', 3, 'N', '', 0, 0, '', 0, 0, 18910),
(138, 31, 0, 'Voucher Unipin 20.000', 20312, 'DF', 'univ2', 'On', 2, 'N', '', 0, 0, '', 0, 0, 18465),
(139, 32, 0, 'Voucher Nintendo eShop $20', 297000, 'DF', 'vne2', 'On', 4, 'N', '', 0, 0, '', 0, 0, 270000),
(140, 40, 0, 'Smartfren 20.000', 21571, 'DF', 'smar2', 'On', 7, 'N', '', 0, 0, '', 0, 0, 19610),
(141, 51, 0, 'Tri Data 20 GB / 30 Hari', 74003, 'DF', 'dtri7', 'On', 10, 'N', '', 0, 0, '', 0, 0, 67275),
(142, 52, 0, 'XL Data 20 GB / 30 Hari', 99028, 'DF', 'dxl9', 'On', 13, 'N', '', 0, 0, '', 0, 0, 90025),
(143, 2, 0, 'Free Fire 20 Diamond', 3630, 'DF', 'ff3', 'On', 5, 'N', '', 0, 0, '', 0, 0, 3291),
(144, 27, 0, 'Luna New World 25.000 Koin', 105507, 'DF', 'lnw4', 'On', 4, 'N', '', 0, 0, '', 0, 0, 95915),
(145, 39, 0, 'Axis 25.000', 27346, 'DF', 'axis2', 'On', 5, 'N', '', 0, 0, '', 0, 0, 24860),
(146, 9, 0, 'Speed Drifters 25 Diamonds', 5335, 'DF', 'sd2', 'On', 2, 'N', '', 0, 0, '', 0, 0, 4850),
(147, 40, 0, 'Smartfren 25.000', 26994, 'DF', 'smar3', 'On', 8, 'N', '', 0, 0, '', 0, 0, 24540),
(148, 2, 0, 'Free Fire 25 Diamond', 4431, 'DF', 'ff4', 'On', 6, 'N', '', 0, 0, '', 0, 0, 4087),
(149, 12, 0, 'Hago 25 Diamonds', 8063, 'DF', 'hg5', 'On', 5, 'N', '', 0, 0, '', 0, 0, 7330),
(150, 42, 0, 'Xl 25.000', 27071, 'DF', 'xl4', 'On', 14, 'N', '', 0, 0, '', 0, 0, 24610),
(151, 33, 0, 'XBOX $25', 401500, 'DF', 'xbox4', 'On', 4, 'N', '', 0, 0, '', 0, 0, 365000),
(152, 34, 0, 'Roblox 25 USD', 414068, 'DF', 'vrbx3', 'Off', 3, 'N', '', 0, 0, '', 0, 0, 376425),
(153, 37, 0, 'Telkomsel 25.000', 27280, 'DF', 'tsel3', 'On', 16, 'N', '', 0, 0, '', 0, 0, 24820),
(154, 1, 0, 'MOBILELEGEND - 28 Diamond', 7205, 'DF', 'ml3', 'On', 4, 'N', '', 0, 0, '', 0, 0, 6524),
(155, 37, 0, 'Telkomsel 30.000', 32753, 'DF', 'tsel4', 'On', 17, 'N', '', 0, 0, '', 0, 0, 29925),
(156, 50, 0, 'Smartfren 30 GB / 30 Hari', 72105, 'DF', 'dsmar5', 'On', 9, 'N', '', 0, 0, '', 0, 0, 65550),
(157, 39, 0, 'Axis 30.000', 32876, 'DF', 'axis3', 'On', 6, 'N', '', 0, 0, '', 0, 0, 29887),
(158, 12, 0, 'Hago 30 Diamonds', 9653, 'DF', 'hg6', 'On', 6, 'N', '', 0, 0, '', 0, 0, 8775),
(159, 51, 0, 'Tri Data 30 GB / 30 Hari', 71528, 'DF', 'dtri8', 'On', 11, 'N', '', 0, 0, '', 0, 0, 65425),
(160, 20, 0, 'Sky Children of the Light 30 Lilin + 5 Bonus', 189200, 'DF', 'scott2', 'On', 2, 'N', '', 0, 0, '', 0, 0, 172000),
(161, 2, 0, 'Free Fire 30 Diamond', 5315, 'DF', 'ff5', 'On', 7, 'N', '', 0, 0, '', 0, 0, 4903),
(162, 52, 0, 'XL Data 30 GB / 30 Hari', 137528, 'DF', 'dxl10', 'On', 15, 'N', '', 0, 0, '', 0, 0, 125025),
(163, 42, 0, 'XL 30.000', 32687, 'DF', 'xl5', 'On', 16, 'N', '', 0, 0, '', 0, 0, 29715),
(164, 38, 0, 'Indosat 30.000', 32098, 'DF', 'isat3', 'On', 14, 'N', '', 0, 0, '', 0, 0, 28990),
(165, 4, 0, 'Call of Duty Mobile 31 CP', 4950, 'DF', 'cod1', 'Off', 1, 'N', '', 0, 0, '', 0, 0, 4500),
(166, 35, 0, 'Voucher Garena 33 Shell', 9851, 'DF', 'vgs1', 'On', 1, 'N', '', 0, 0, '', 0, 0, 9140),
(167, 32, 0, 'Voucher Nintendo eShop $35', 511500, 'DF', 'vne3', 'On', 5, 'N', '', 0, 0, '', 0, 0, 465000),
(168, 12, 0, 'Hago 40 Diamonds', 12837, 'DF', 'hg7', 'On', 7, 'N', '', 0, 0, '', 0, 0, 11670),
(169, 2, 0, 'Free Fire 40 Diamond', 7085, 'DF', 'ff6', 'On', 8, 'N', '', 0, 0, '', 0, 0, 6536),
(170, 7, 0, 'AOV 40 Vouchers', 9796, 'DF', 'aov1', 'On', 1, 'N', '', 0, 0, '', 0, 0, 9205),
(171, 25, 0, 'Revelation Infinite Journey 40 + 6 Jade', 9407, 'DF', 'rij1', 'Off', 2, 'N', '', 0, 0, '', 0, 0, 8552),
(172, 37, 0, 'Telkomsel 40.000', 43890, 'DF', 'tsel5', 'On', 18, 'N', '', 0, 0, '', 0, 0, 39900),
(173, 1, 0, 'MOBILELEGEND - 42 Diamond', 10472, 'DF', 'ml4', 'On', 5, 'N', '', 0, 0, '', 0, 0, 9525),
(174, 12, 0, 'Hago 45 Diamonds', 14427, 'DF', 'hg8', 'On', 8, 'N', '', 0, 0, '', 0, 0, 13115),
(175, 36, 0, 'Steam Wallet Code Rp 45.000', 49500, 'DF', 'swi4', 'On', 4, 'N', '', 0, 0, '', 0, 0, 45000),
(176, 38, 0, 'Indosat 50.000', 53185, 'DF', 'isat4', 'On', 15, 'N', '', 0, 0, '', 0, 0, 48000),
(177, 37, 0, 'Telkomsel 50.000', 54516, 'DF', 'tsel6', 'On', 19, 'N', '', 0, 0, '', 0, 0, 49560),
(178, 43, 0, 'PLN 50.000', 53064, 'DF', 'pln1', 'On', 2, 'N', '', 0, 0, '', 0, 0, 48240),
(179, 32, 0, 'Voucher Nintendo eShop $50', 726000, 'DF', 'vne4', 'On', 6, 'N', '', 0, 0, '', 0, 0, 660000),
(180, 33, 0, 'XBOX $50', 803000, 'DF', 'xbox5', 'On', 5, 'N', '', 0, 0, '', 0, 0, 730000),
(181, 27, 0, 'Luna New World 50.000 Koin', 210984, 'DF', 'lnw5', 'On', 5, 'N', '', 0, 0, '', 0, 0, 191804),
(182, 2, 0, 'Free Fire 50 Diamond', 7085, 'DF', 'ff7', 'On', 9, 'N', '', 0, 0, '', 0, 0, 6536),
(183, 12, 0, 'Hago 50 Diamonds', 16016, 'DF', 'hg9', 'On', 9, 'N', '', 0, 0, '', 0, 0, 14560),
(184, 31, 0, 'Voucher Unipin 50.000', 50710, 'DF', 'univ3', 'On', 3, 'N', '', 0, 0, '', 0, 0, 46100),
(185, 39, 0, 'Axis 50.000', 54692, 'DF', 'axis4', 'On', 7, 'N', '', 0, 0, '', 0, 0, 49720),
(186, 28, 0, 'Google Play Rp. 50.000 INDONESIA REGION', 55248, 'DF', 'gpi4', 'On', 4, 'N', '', 0, 0, '', 0, 0, 50225),
(187, 29, 0, 'Razer Gold 50.000', 52003, 'DF', 'vrg3', 'On', 4, 'N', '', 0, 0, '', 0, 0, 47275),
(188, 51, 0, 'Tri Data 50 GB / 30 Hari', 119777, 'DF', 'dtri9', 'On', 12, 'N', '', 0, 0, '', 0, 0, 108888),
(189, 42, 0, 'Xl 50.000', 54010, 'DF', 'xl6', 'On', 17, 'N', '', 0, 0, '', 0, 0, 49080),
(190, 40, 0, 'Smartfren 50.000', 53323, 'DF', 'smar4', 'On', 10, 'N', '', 0, 0, '', 0, 0, 48475),
(191, 41, 0, 'Three 50.000', 53020, 'DF', 'tri4', 'On', 13, 'N', '', 0, 0, '', 0, 0, 48200),
(192, 6, 0, 'PUBG MOBILE 50 UC', 9859, 'DF', 'pm1', 'On', 1, 'N', '', 0, 0, '', 0, 0, 9510),
(193, 48, 0, 'Indosat 50 GB / 30 Hari', 131999, 'DF', 'disat10', 'On', 16, 'N', '', 0, 0, '', 0, 0, 119999),
(194, 2, 0, 'Free Fire 55 Diamond', 7971, 'DF', 'ff8', 'On', 10, 'N', '', 0, 0, '', 0, 0, 7352),
(195, 11, 0, 'Marvel Super War 55 Star Credits', 14850, 'DF', 'msw1', 'On', 1, 'N', '', 0, 0, '', 0, 0, 13500),
(196, 9, 0, 'Speed Drifters 56 Diamonds', 10043, 'DF', 'sd3', 'On', 3, 'N', '', 0, 0, '', 0, 0, 9130),
(197, 1, 0, 'MOBILELEGEND - 56 Diamond', 14190, 'DF', 'ml5', 'On', 6, 'N', '', 0, 0, '', 0, 0, 12847),
(198, 26, 0, 'Ace Racer 60 Tokens', 13050, 'DF', 'ar1', 'On', 1, 'N', '', 0, 0, '', 0, 0, 12065),
(199, 5, 0, 'Genshin Impact 60 Genesis Crystals', 12672, 'DF', 'gi2', 'On', 2, 'N', '', 0, 0, '', 0, 0, 11300),
(200, 45, 0, 'Goddess of Victory Nikke 60 + 1 Gems', 13750, 'DF', 'govn1', 'On', 1, 'N', '', 0, 0, '', 0, 0, 12500),
(201, 46, 0, 'Voucher PUBG Mobile 60 UC', 17712, 'DF', 'pubgm1', 'On', 2, 'N', '', 0, 0, '', 0, 0, 16102),
(202, 18, 0, 'Hyper Front SEA 60 Star Quartz', 14528, 'DF', 'hf1', 'On', 5, 'N', '', 0, 0, '', 0, 0, 13207),
(203, 40, 0, 'Smartfren 60.000', 64460, 'DF', 'smar5', 'On', 11, 'N', '', 0, 0, '', 0, 0, 58600),
(204, 44, 0, 'Tower of Fantasy 60 Tanium Southeast Asia', 12760, 'DF', 'tofsa1', 'On', 7, 'N', '', 0, 0, '', 0, 0, 11600),
(205, 36, 0, 'Steam Wallet Code Rp 60.000', 66000, 'DF', 'swi5', 'On', 5, 'N', '', 0, 0, '', 0, 0, 60000),
(206, 20, 0, 'Sky Children of the Light 60 Lilin + 12 Bonus', 396000, 'DF', 'scott3', 'On', 3, 'N', '', 0, 0, '', 0, 0, 360000),
(207, 12, 0, 'Hago 60 Diamonds', 19195, 'DF', 'hg10', 'On', 10, 'N', '', 0, 0, '', 0, 0, 17450),
(208, 13, 0, 'Tom and Jerry: Chase 60 Diamond', 14938, 'DF', 'taj1', 'On', 1, 'N', '', 0, 0, '', 0, 0, 13580),
(209, 4, 0, 'Call of Duty Mobile 62 CP', 9900, 'DF', 'cod2', 'Off', 2, 'N', '', 0, 0, '', 0, 0, 9110),
(210, 10, 0, 'LifeAfter 65 Credits', 14256, 'DF', 'lac1', 'On', 1, 'N', '', 0, 0, '', 0, 0, 12960),
(211, 35, 0, 'Voucher Garena 66 Shell', 19960, 'DF', 'vgs2', 'On', 2, 'N', '', 0, 0, '', 0, 0, 18280),
(212, 8, 0, 'Lords Mobile 67 Diamonds', 9335, 'DF', 'lom1', 'On', 1, 'N', '', 0, 0, '', 0, 0, 8486),
(213, 1, 0, 'MOBILELEGEND - 70 Diamond', 17457, 'DF', 'ml6', 'On', 7, 'N', '', 0, 0, '', 0, 0, 15850),
(214, 12, 0, 'Hago 70 Diamonds', 22374, 'DF', 'hg11', 'On', 11, 'N', '', 0, 0, '', 0, 0, 20340),
(215, 2, 0, 'Free Fire 70 Diamond', 9741, 'DF', 'ff9', 'On', 11, 'N', '', 0, 0, '', 0, 0, 9005),
(216, 6, 0, 'PUBG MOBILE 70 UC', 14751, 'DF', 'pm2', 'On', 3, 'N', '', 0, 0, '', 0, 0, 13410),
(217, 37, 0, 'Telkomsel 75.000', 80603, 'DF', 'tsel7', 'On', 20, 'N', '', 0, 0, '', 0, 0, 73605),
(218, 41, 0, 'Three 75.000', 79943, 'DF', 'tri5', 'On', 14, 'N', '', 0, 0, '', 0, 0, 72675),
(219, 27, 0, 'Luna New World 75.000 Koin', 316463, 'DF', 'lnw6', 'On', 6, 'N', '', 0, 0, '', 0, 0, 287694),
(220, 14, 0, 'Dragon Raja 76 Coupons', 17120, 'DF', 'drs3', 'On', 3, 'N', '', 0, 0, '', 0, 0, 15564),
(221, 2, 0, 'Free Fire 80 Diamond', 11510, 'DF', 'ff10', 'On', 12, 'N', '', 0, 0, '', 0, 0, 10618),
(222, 12, 0, 'Hago 80 Diamonds', 25553, 'DF', 'hg12', 'On', 12, 'N', '', 0, 0, '', 0, 0, 23230),
(223, 38, 0, 'Indosat 80.000', 84700, 'DF', 'isat5', 'On', 17, 'N', '', 0, 0, '', 0, 0, 76400),
(224, 1, 0, 'MOBILELEGEND - 86 Diamond', 20615, 'DF', 'ml7', 'On', 8, 'N', '', 0, 0, '', 0, 0, 19000),
(225, 36, 0, 'Steam Wallet Code Rp 90.000', 99000, 'DF', 'swi6', 'On', 6, 'N', '', 0, 0, '', 0, 0, 90000),
(226, 12, 0, 'Hago 90 Diamonds', 28749, 'DF', 'hg13', 'On', 13, 'N', '', 0, 0, '', 0, 0, 26135),
(227, 7, 0, 'AOV 90 Vouchers', 19591, 'DF', 'aov2', 'On', 2, 'N', '', 0, 0, '', 0, 0, 18410),
(228, 15, 0, 'Light of Thel 90 Crystals', 13629, 'DF', 'lot1', 'On', 1, 'N', '', 0, 0, '', 0, 0, 12390),
(229, 14, 0, 'Dragon Raja 90 Coupons', 18660, 'DF', 'drs4', 'On', 4, 'N', '', 0, 0, '', 0, 0, 16964),
(230, 2, 0, 'Free Fire 90 Diamond', 13280, 'DF', 'ff11', 'On', 13, 'N', '', 0, 0, '', 0, 0, 12250),
(231, 2, 0, 'Free Fire 95 Diamond', 14166, 'DF', 'ff12', 'On', 14, 'N', '', 0, 0, '', 0, 0, 13067),
(232, 29, 0, 'Razer Gold 100.000', 103978, 'DF', 'vrg4', 'On', 5, 'N', '', 0, 0, '', 0, 0, 94525),
(233, 31, 0, 'Voucher Unipin 100.000', 101393, 'DF', 'univ4', 'On', 4, 'N', '', 0, 0, '', 0, 0, 92175),
(234, 28, 0, 'Google Play Rp. 100.000 INDONESIA REGION', 110248, 'DF', 'gpi5', 'On', 5, 'N', '', 0, 0, '', 0, 0, 100250),
(235, 19, 0, 'Super Sus 100 Golder Star', 10131, 'DF', 'ss1', 'On', 4, 'N', '', 0, 0, '', 0, 0, 9550),
(236, 2, 0, 'Free Fire 100 Diamond', 14171, 'DF', 'ff13', 'On', 15, 'N', '', 0, 0, '', 0, 0, 13072),
(237, 37, 0, 'Telkomsel 100.000', 107800, 'DF', 'tsel8', 'On', 21, 'N', '', 0, 0, '', 0, 0, 97550),
(238, 6, 0, 'PUBG MOBILE 100 UC', 19723, 'DF', 'pm3', 'On', 4, 'N', '', 0, 0, '', 0, 0, 17930),
(239, 39, 0, 'Axis 100.000', 108213, 'DF', 'axis5', 'On', 8, 'N', '', 0, 0, '', 0, 0, 98720),
(240, 12, 0, 'Hago 100 Diamonds', 31928, 'DF', 'hg14', 'On', 14, 'N', '', 0, 0, '', 0, 0, 29025),
(241, 41, 0, 'Three 100.000', 105317, 'DF', 'tri6', 'On', 15, 'N', '', 0, 0, '', 0, 0, 95743),
(242, 42, 0, 'Xl 100.000', 107795, 'DF', 'xl7', 'On', 18, 'N', '', 0, 0, '', 0, 0, 97995),
(243, 43, 0, 'PLN 100.000', 109940, 'DF', 'pln2', 'On', 3, 'N', '', 0, 0, '', 0, 0, 100025),
(244, 38, 0, 'Indosat 100.000', 105270, 'DF', 'isat6', 'On', 18, 'N', '', 0, 0, '', 0, 0, 95000),
(245, 40, 0, 'Smartfren 100.000', 106079, 'DF', 'smar6', 'On', 12, 'N', '', 0, 0, '', 0, 0, 96435),
(246, 25, 0, 'Revelation Infinite Journey 110 + 17 Jade', 23519, 'DF', 'rij3', 'Off', 3, 'N', '', 0, 0, '', 0, 0, 21381),
(247, 1, 0, 'MOBILELEGEND - 112 Diamond', 27902, 'DF', 'ml8', 'Off', 9, 'N', '', 0, 0, '', 0, 0, 25365),
(248, 9, 0, 'Speed Drifters 112 Diamonds', 20086, 'DF', 'sd4', 'On', 4, 'N', '', 0, 0, '', 0, 0, 18260),
(249, 2, 0, 'Free Fire 120 Diamond', 16826, 'DF', 'ff14', 'On', 16, 'N', '', 0, 0, '', 0, 0, 15521),
(250, 22, 0, 'Stumble Guys 120 Stumble Token Powered by Google Play', 45805, 'DF', 'sg3', 'On', 1, 'N', '', 0, 0, '', 0, 0, 41641),
(251, 45, 0, 'Goddess of Victory Nikke 120 + 3 Gems', 27500, 'DF', 'govn2', 'On', 2, 'N', '', 0, 0, '', 0, 0, 25000),
(252, 36, 0, 'Steam Wallet Code Rp 120.000', 132000, 'DF', 'swi7', 'On', 7, 'N', '', 0, 0, '', 0, 0, 120000),
(253, 4, 0, 'Call of Duty Mobile 127 CP', 19800, 'DF', 'cod3', 'Off', 3, 'N', '', 0, 0, '', 0, 0, 18000),
(254, 2, 0, 'Free Fire 130 Diamond', 18596, 'DF', 'ff15', 'On', 17, 'N', '', 0, 0, '', 0, 0, 17154),
(255, 8, 0, 'Lords Mobile 134 Diamonds', 18656, 'DF', 'lom2', 'On', 2, 'N', '', 0, 0, '', 0, 0, 16960),
(256, 1, 0, 'MOBILELEGEND - 140 Diamond', 34903, 'DF', 'ml9', 'On', 10, 'N', '', 0, 0, '', 0, 0, 31735),
(257, 2, 0, 'Free Fire 140 Diamond', 19481, 'DF', 'ff16', 'On', 18, 'N', '', 0, 0, '', 0, 0, 17970),
(258, 2, 0, 'Free Fire 145 Diamond', 20367, 'DF', 'ff17', 'On', 19, 'N', '', 0, 0, '', 0, 0, 18786),
(259, 12, 0, 'Hago 150 Diamonds', 47823, 'DF', 'hg15', 'On', 15, 'N', '', 0, 0, '', 0, 0, 43475),
(260, 38, 0, 'Indosat 150.000', 157058, 'DF', 'isat7', 'On', 19, 'N', '', 0, 0, '', 0, 0, 142975),
(261, 20, 0, 'Sky Children of the Light 150 Lilin + 40 Bonus', 954800, 'DF', 'scott4', 'On', 4, 'N', '', 0, 0, '', 0, 0, 868000),
(262, 42, 0, 'Xl 150.000', 163598, 'DF', 'xl8', 'On', 19, 'N', '', 0, 0, '', 0, 0, 148725),
(263, 28, 0, 'Google Play Rp. 150.000 INDONESIA REGION', 165055, 'DF', 'gpi6', 'On', 6, 'N', '', 0, 0, '', 0, 0, 150050),
(264, 37, 0, 'Telkomsel 150.000', 162250, 'DF', 'tsel9', 'On', 22, 'N', '', 0, 0, '', 0, 0, 147800),
(265, 2, 0, 'Free Fire 150 Diamond', 21251, 'DF', 'ff18', 'On', 20, 'N', '', 0, 0, '', 0, 0, 19603),
(266, 2, 0, 'Free Fire 160 Diamond', 23021, 'DF', 'ff19', 'On', 21, 'N', '', 0, 0, '', 0, 0, 21235),
(267, 35, 0, 'Voucher Garena 165 Shell', 52195, 'DF', 'vgs3', 'Off', 3, 'N', '', 0, 0, '', 0, 0, 47450),
(268, 1, 0, 'MOBILELEGEND - 172 Diamond', 41296, 'DF', 'ml10', 'Off', 11, 'N', '', 0, 0, '', 0, 0, 38005),
(269, 13, 0, 'Tom and Jerry: Chase 180 Diamond', 44814, 'DF', 'taj2', 'On', 2, 'N', '', 0, 0, '', 0, 0, 40740),
(270, 2, 0, 'Free Fire 190 Diamond', 26561, 'DF', 'ff20', 'On', 22, 'N', '', 0, 0, '', 0, 0, 25317),
(271, 29, 0, 'Razer Gold 200.000', 207928, 'DF', 'vrg5', 'On', 6, 'N', '', 0, 0, '', 0, 0, 189025),
(272, 41, 0, 'Three 200.000', 214198, 'DF', 'tri7', 'On', 16, 'N', '', 0, 0, '', 0, 0, 195725),
(273, 8, 0, 'Lords Mobile 200 Diamonds', 28919, 'DF', 'lom3', 'On', 3, 'N', '', 0, 0, '', 0, 0, 29570),
(274, 12, 0, 'Hago 200 Diamonds', 63718, 'DF', 'hg16', 'On', 16, 'N', '', 0, 0, '', 0, 0, 57925),
(275, 42, 0, 'Xl 200.000', 218048, 'DF', 'xl9', 'On', 19, 'N', '', 0, 0, '', 0, 0, 198225),
(276, 38, 0, 'Indosat 200.000', 204050, 'DF', 'isat8', 'On', 20, 'N', '', 0, 0, '', 0, 0, 185500),
(277, 2, 0, 'Free Fire 200 Diamond', 28331, 'DF', 'ff21', 'On', 23, 'N', '', 0, 0, '', 0, 0, 26134),
(278, 39, 0, 'Axis 200.000', 218763, 'DF', 'axis6', 'On', 9, 'N', '', 0, 0, '', 0, 0, 198875),
(279, 37, 0, 'Telkomsel 200.000', 215930, 'DF', 'tsel10', 'On', 23, 'N', '', 0, 0, '', 0, 0, 196000),
(280, 43, 0, 'PLN 200.000', 219940, 'DF', 'pln3', 'On', 4, 'N', '', 0, 0, '', 0, 0, 200025),
(281, 2, 0, 'Free Fire 210 Diamond', 29216, 'DF', 'ff22', 'On', 24, 'N', '', 0, 0, '', 0, 0, 26950),
(282, 6, 0, 'PUBG MOBILE 210 UC', 40315, 'DF', 'pm4', 'On', 5, 'N', '', 0, 0, '', 0, 0, 36675),
(283, 12, 0, 'Hago 225 Diamonds', 71665, 'DF', 'hg17', 'On', 17, 'N', '', 0, 0, '', 0, 0, 65150),
(284, 25, 0, 'Revelation Infinite Journey 230 + 35 Jade', 46754, 'DF', 'rij4', 'On', 4, 'N', '', 0, 0, '', 0, 0, 42504),
(285, 7, 0, 'AOV 230 Vouchers', 48978, 'DF', 'aov3', 'On', 3, 'N', '', 0, 0, '', 0, 0, 46025),
(286, 36, 0, 'Steam Wallet Code Rp 250.000', 275000, 'DF', 'swi8', 'On', 8, 'N', '', 0, 0, '', 0, 0, 250000),
(287, 26, 0, 'Ace Racer 250 Tokens', 63828, 'DF', 'ar2', 'Off', 2, 'N', '', 0, 0, '', 0, 0, 58025),
(288, 38, 0, 'Indosat 250.000', 254870, 'DF', 'isat9', 'On', 21, 'N', '', 0, 0, '', 0, 0, 231700),
(289, 12, 0, 'Hago 250 Diamonds', 79613, 'DF', 'hg18', 'On', 18, 'N', '', 0, 0, '', 0, 0, 72375),
(290, 2, 0, 'Free Fire 250 Diamond', 35428, 'DF', 'ff23', 'On', 25, 'N', '', 0, 0, '', 0, 0, 32680),
(291, 22, 0, 'Stumble Guys 250 Gems Powered by Google Play', 14583, 'DF', 'sg1', 'On', 2, 'N', '', 0, 0, '', 0, 0, 13257),
(292, 1, 0, 'MOBILELEGEND - 257 Diamond', 62035, 'DF', 'ml11', 'Off', 12, 'N', '', 0, 0, '', 0, 0, 56395),
(293, 11, 0, 'Marvel Super War 275 Star Credits', 71500, 'DF', 'msw2', 'On', 2, 'N', '', 0, 0, '', 0, 0, 65000),
(294, 2, 0, 'Free Fire 280 Diamond', 40737, 'DF', 'ff24', 'On', 26, 'N', '', 0, 0, '', 0, 0, 35945),
(295, 9, 0, 'Speed Drifters 282 Diamonds', 49803, 'DF', 'sd5', 'On', 5, 'N', '', 0, 0, '', 0, 0, 45275),
(296, 1, 0, 'MOBILELEGEND - 296 Diamond', 73480, 'DF', 'ml12', 'On', 13, 'N', '', 0, 0, '', 0, 0, 66149),
(297, 37, 0, 'Telkomsel 300.000', 325050, 'DF', 'tsel11', 'On', 24, 'N', '', 0, 0, '', 0, 0, 294500),
(298, 5, 0, 'Genshin Impact 300+30 Genesis Crystals', 64570, 'DF', 'gi3', 'On', 3, 'N', '', 0, 0, '', 0, 0, 57390),
(299, 3, 0, 'Valorant 300 Points', 32989, 'DF', 'valo1', 'On', 1, 'N', '', 0, 0, '', 0, 0, 29850),
(300, 44, 0, 'Tower of Fantasy 300 Tanium + 20 Dark Crystal Southeast Asia', 64900, 'DF', 'tofsa2', 'On', 8, 'N', '', 0, 0, '', 0, 0, 59000),
(301, 28, 0, 'Google Play Rp. 300.000 INDONESIA REGION', 330055, 'DF', 'gpi7', 'On', 7, 'N', '', 0, 0, '', 0, 0, 300050),
(302, 18, 0, 'Hyper Front SEA 300 Star Quartz', 73150, 'DF', 'hf2', 'On', 6, 'N', '', 0, 0, '', 0, 0, 66500),
(303, 2, 0, 'Free Fire 300 Diamond', 42507, 'DF', 'ff25', 'On', 27, 'N', '', 0, 0, '', 0, 0, 39210),
(304, 41, 0, 'Three 300.000', 321659, 'DF', 'tri8', 'On', 17, 'N', '', 0, 0, '', 0, 0, 292417),
(305, 38, 0, 'Indosat 300.000', 312101, 'DF', 'isat10', 'On', 22, 'N', '', 0, 0, '', 0, 0, 283728),
(306, 13, 0, 'Tom and Jerry: Chase 300 Diamond', 74690, 'DF', 'taj3', 'On', 3, 'N', '', 0, 0, '', 0, 0, 67900),
(307, 31, 0, 'Voucher Unipin 300.000', 304123, 'DF', 'univ5', 'On', 5, 'N', '', 0, 0, '', 0, 0, 276475),
(308, 42, 0, 'Xl 300.000', 328053, 'DF', 'xl10', 'On', 20, 'N', '', 0, 0, '', 0, 0, 298230),
(309, 19, 0, 'Super Sus 310 Golder Star', 28501, 'DF', 'ss2', 'On', 5, 'N', '', 0, 0, '', 0, 0, 27040),
(310, 4, 0, 'Call of Duty Mobile 320 CP', 49500, 'DF', 'cod4', 'Off', 4, 'N', '', 0, 0, '', 0, 0, 45525),
(311, 45, 0, 'Goddess of Victory Nikke 320 + 10 Gems', 68750, 'DF', 'govn3', 'On', 3, 'N', '', 0, 0, '', 0, 0, 62500),
(312, 46, 0, 'Voucher PUBG Mobile 325 UC', 88241, 'DF', 'pubgm2', 'On', 7, 'N', '', 0, 0, '', 0, 0, 80219),
(313, 35, 0, 'Voucher Garena 330 Shell', 98835, 'DF', 'vgs4', 'Off', 4, 'N', '', 0, 0, '', 0, 0, 89850),
(314, 10, 0, 'LifeAfter 330 Credits', 70950, 'DF', 'lac2', 'On', 2, 'N', '', 0, 0, '', 0, 0, 64500),
(315, 8, 0, 'Lords Mobile 335 Diamonds', 46651, 'DF', 'lom4', 'On', 4, 'N', '', 0, 0, '', 0, 0, 42410),
(316, 14, 0, 'Dragon Raja 337 Coupons', 69963, 'DF', 'drs5', 'On', 5, 'N', '', 0, 0, '', 0, 0, 63603),
(317, 1, 0, 'MOBILELEGEND - 344 Diamond', 81290, 'DF', 'ml13', 'Off', 14, 'N', '', 0, 0, '', 0, 0, 73900),
(318, 2, 0, 'Free Fire 350 Diamond', 48703, 'DF', 'ff26', 'On', 28, 'N', '', 0, 0, '', 0, 0, 44925),
(319, 2, 0, 'Free Fire 355 Diamond', 48675, 'DF', 'ff27', 'On', 29, 'N', '', 0, 0, '', 0, 0, 44800),
(320, 36, 0, 'Steam Wallet Code Rp 400.000', 440000, 'DF', 'swi9', 'On', 9, 'N', '', 0, 0, '', 0, 0, 400000),
(321, 41, 0, 'Three 400.000', 426399, 'DF', 'tri9', 'On', 18, 'N', '', 0, 0, '', 0, 0, 387635),
(322, 2, 0, 'Free Fire 400 Diamond', 55810, 'DF', 'ff28', 'On', 30, 'N', '', 0, 0, '', 0, 0, 51366),
(323, 3, 0, 'Valorant 420 Points', 52348, 'DF', 'valo2', 'On', 2, 'N', '', 0, 0, '', 0, 0, 47589),
(324, 16, 0, 'League of Legends Wild Rift 420 Wild Cores', 49390, 'DF', 'lol1', 'On', 1, 'N', '', 0, 0, '', 0, 0, 44900),
(325, 2, 0, 'Free Fire 425 Diamond', 58465, 'DF', 'ff29', 'On', 31, 'N', '', 0, 0, '', 0, 0, 53810),
(326, 1, 0, 'MOBILELEGEND - 429 Diamond', 102410, 'DF', 'ml14', 'On', 15, 'N', '', 0, 0, '', 0, 0, 95000),
(327, 15, 0, 'Light of Thel 450 Crystals', 67753, 'DF', 'lot2', 'On', 2, 'N', '', 0, 0, '', 0, 0, 61594),
(328, 14, 0, 'Dragon Raja 456 Coupons', 102684, 'DF', 'drs6', 'On', 6, 'N', '', 0, 0, '', 0, 0, 93349),
(329, 25, 0, 'Revelation Infinite Journey 460 + 49 Jade', 93509, 'DF', 'rij5', 'On', 5, 'N', '', 0, 0, '', 0, 0, 85008),
(330, 7, 0, 'AOV 470 Vouchers', 97928, 'DF', 'aov4', 'On', 4, 'N', '', 0, 0, '', 0, 0, 92025),
(331, 2, 0, 'Free Fire 475 Diamond', 65517, 'DF', 'ff30', 'On', 32, 'N', '', 0, 0, '', 0, 0, 60436),
(332, 38, 0, 'Indosat 500.000', 510070, 'DF', 'isat11', 'On', 23, 'N', '', 0, 0, '', 0, 0, 463700),
(333, 49, 0, 'Axis Data 500 MB / 30 Hari', 5060, 'DF', 'daxis1', 'On', 10, 'N', '', 0, 0, '', 0, 0, 4600),
(334, 6, 0, 'PUBG MOBILE 500 UC', 98010, 'DF', 'pm6', 'On', 8, 'N', '', 0, 0, '', 0, 0, 89100),
(335, 31, 0, 'Voucher Unipin 500.000', 506853, 'DF', 'univ6', 'On', 6, 'N', '', 0, 0, '', 0, 0, 460775),
(336, 37, 0, 'Telkomsel 500.000', 544649, 'DF', 'tsel12', 'On', 25, 'N', '', 0, 0, '', 0, 0, 498575),
(337, 29, 0, 'Razer Gold 500.000', 519778, 'DF', 'vrg6', 'On', 7, 'N', '', 0, 0, '', 0, 0, 472525),
(338, 42, 0, 'Xl 500.000', 546700, 'DF', 'xl11', 'On', 21, 'N', '', 0, 0, '', 0, 0, 497000),
(339, 43, 0, 'PLN 500.000', 549995, 'DF', 'pln4', 'On', 5, 'N', '', 0, 0, '', 0, 0, 500025),
(340, 28, 0, 'Google Play Rp. 500.000 INDONESIA REGION', 550055, 'DF', 'gpi8', 'On', 8, 'N', '', 0, 0, '', 0, 0, 500050),
(341, 41, 0, 'Three 500.000', 535719, 'DF', 'tri10', 'On', 19, 'N', '', 0, 0, '', 0, 0, 487017),
(342, 2, 0, 'Free Fire 500 Diamond', 69058, 'DF', 'ff31', 'On', 33, 'N', '', 0, 0, '', 0, 0, 63701),
(343, 2, 0, 'Free Fire 510 Diamond', 70828, 'DF', 'ff32', 'On', 34, 'N', '', 0, 0, '', 0, 0, 65334),
(344, 1, 0, 'MOBILELEGEND - 514 Diamond', 124014, 'DF', 'ml15', 'Off', 16, 'N', '', 0, 0, '', 0, 0, 112740),
(345, 19, 0, 'Super Sus 520 Golder Star', 50336, 'DF', 'ss3', 'On', 6, 'N', '', 0, 0, '', 0, 0, 47240),
(346, 2, 0, 'Free Fire 545 Diamond', 75252, 'DF', 'ff33', 'On', 35, 'N', '', 0, 0, '', 0, 0, 69416),
(347, 10, 0, 'LifeAfter 558 Credits', 116050, 'DF', 'lac3', 'On', 3, 'N', '', 0, 0, '', 0, 0, 105500),
(348, 2, 0, 'Free Fire 565 Diamond', 77908, 'DF', 'ff34', 'On', 36, 'N', '', 0, 0, '', 0, 0, 71865),
(349, 11, 0, 'Marvel Super War 565 Star Credits', 148500, 'DF', 'msw3', 'On', 3, 'N', '', 0, 0, '', 0, 0, 135000),
(350, 9, 0, 'Speed Drifters 579 Diamonds', 99578, 'DF', 'sd6', 'On', 6, 'N', '', 0, 0, '', 0, 0, 90525),
(351, 36, 0, 'Steam Wallet Code Rp 600.000', 658900, 'DF', 'swi10', 'On', 10, 'N', '', 0, 0, '', 0, 0, 599000),
(352, 2, 0, 'Free Fire 600 Diamond', 83808, 'DF', 'ff35', 'On', 37, 'N', '', 0, 0, '', 0, 0, 77307),
(353, 1, 0, 'MOBILELEGEND - 600 Diamond', 144536, 'DF', 'ml16', 'Off', 17, 'N', '', 0, 0, '', 0, 0, 133178),
(354, 13, 0, 'Tom and Jerry: Chase 600 Diamond', 149380, 'DF', 'taj4', 'On', 4, 'N', '', 0, 0, '', 0, 0, 135800),
(355, 3, 0, 'Valorant 625 Points', 65879, 'DF', 'valo3', 'On', 3, 'N', '', 0, 0, '', 0, 0, 59790),
(356, 2, 0, 'Free Fire 635 Diamond', 87643, 'DF', 'ff36', 'On', 38, 'N', '', 0, 0, '', 0, 0, 80845),
(357, 4, 0, 'Call of Duty Mobile 640 CP', 99000, 'DF', 'cod5', 'Off', 5, 'N', '', 0, 0, '', 0, 0, 91025),
(358, 46, 0, 'Voucher PUBG Mobile 660 UC', 176268, 'DF', 'pubgm3', 'On', 9, 'N', '', 0, 0, '', 0, 0, 160244),
(359, 8, 0, 'Lords Mobile 670 Diamonds', 93269, 'DF', 'lom5', 'On', 5, 'N', '', 0, 0, '', 0, 0, 84790),
(360, 26, 0, 'Ace Racer 680 Tokens', 159528, 'DF', 'ar3', 'Off', 3, 'N', '', 0, 0, '', 0, 0, 145025),
(361, 3, 0, 'Valorant 700 Points', 83617, 'DF', 'valo4', 'On', 4, 'N', '', 0, 0, '', 0, 0, 76015),
(362, 6, 0, 'PUBG MOBILE 700 UC', 132237, 'DF', 'pm7', 'On', 10, 'N', '', 0, 0, '', 0, 0, 120215),
(363, 16, 0, 'League of Legends Wild Rift 700 Wild Cores', 82280, 'DF', 'lol2', 'On', 2, 'N', '', 0, 0, '', 0, 0, 74800),
(364, 1, 0, 'MOBILELEGEND - 706 Diamond', 165550, 'DF', 'ml17', 'Off', 18, 'N', '', 0, 0, '', 0, 0, 150500),
(365, 2, 0, 'Free Fire 720 Diamond', 96938, 'DF', 'ff37', 'On', 39, 'N', '', 0, 0, '', 0, 0, 90000),
(366, 45, 0, 'Goddess of Victory Nikke 720 + 120 Gems', 136950, 'DF', 'govn4', 'On', 4, 'N', '', 0, 0, '', 0, 0, 124500),
(367, 22, 0, 'Stumble Guys 800 Gems Powered by Google Play', 38277, 'DF', 'sg2', 'On', 3, 'N', '', 0, 0, '', 0, 0, 34797),
(368, 2, 0, 'Free Fire 800 Diamond', 108910, 'DF', 'ff38', 'On', 40, 'N', '', 0, 0, '', 0, 0, 100239),
(369, 14, 0, 'Dragon Raja 820 Coupons', 171122, 'DF', 'drs7', 'On', 7, 'N', '', 0, 0, '', 0, 0, 155565),
(370, 1, 0, 'MOBILELEGEND - 875 Diamond', 205305, 'DF', 'ml18', 'On', 19, 'N', '', 0, 0, '', 0, 0, 189189),
(371, 15, 0, 'Light of Thel 900 Crystals', 143000, 'DF', 'lot3', 'On', 3, 'N', '', 0, 0, '', 0, 0, 130000),
(372, 25, 0, 'Revelation Infinite Journey 920 + 138 Jade', 187018, 'DF', 'rij6', 'On', 6, 'N', '', 0, 0, '', 0, 0, 170016),
(373, 2, 0, 'Free Fire 930 Diamond', 127468, 'DF', 'ff40', 'On', 41, 'N', '', 0, 0, '', 0, 0, 117581),
(374, 7, 0, 'AOV 950 Vouchers', 198000, 'DF', 'aov5', 'On', 5, 'N', '', 0, 0, '', 0, 0, 184025),
(375, 1, 0, 'MOBILELEGEND - 963 Diamond', 227127, 'DF', 'ml19', 'Off', 20, 'N', '', 0, 0, '', 0, 0, 209279),
(376, 44, 0, 'Tower of Fantasy 980 Tanium + 110 Dark Crystal Southeast Asia', 190300, 'DF', 'tofsa3', 'On', 9, 'N', '', 0, 0, '', 0, 0, 173000),
(377, 5, 0, 'Genshin Impact 980+110 Genesis Crystals', 193270, 'DF', 'gi4', 'On', 4, 'N', '', 0, 0, '', 0, 0, 171700),
(378, 14, 0, 'Dragon Raja 988 Coupons', 186523, 'DF', 'drs8', 'On', 8, 'N', '', 0, 0, '', 0, 0, 169566),
(379, 6, 0, 'PUBG MOBILE 1000 UC', 188898, 'DF', 'pm8', 'On', 11, 'N', '', 0, 0, '', 0, 0, 171725),
(380, 8, 0, 'Lords Mobile 1045 Diamonds', 161601, 'DF', 'lom6', 'On', 6, 'N', '', 0, 0, '', 0, 0, 146910),
(381, 2, 0, 'Free Fire 1075 Diamond', 146080, 'DF', 'ff43', 'On', 42, 'N', '', 0, 0, '', 0, 0, 134450),
(382, 10, 0, 'LifeAfter 1108 Credits', 217800, 'DF', 'lac4', 'On', 4, 'N', '', 0, 0, '', 0, 0, 198000),
(383, 3, 0, 'Valorant 1125 Points', 115280, 'DF', 'valo5', 'On', 5, 'N', '', 0, 0, '', 0, 0, 104600),
(384, 25, 0, 'Revelation Infinite Journey 1150 + 173 Jade', 233772, 'DF', 'rij7', 'On', 7, 'N', '', 0, 0, '', 0, 0, 212520),
(385, 11, 0, 'Marvel Super War 1155 Star Credits', 295900, 'DF', 'msw4', 'On', 4, 'N', '', 0, 0, '', 0, 0, 269000),
(386, 1, 0, 'MOBILELEGEND - 1159 Diamond', 280977, 'DF', 'ml20', 'Off', 21, 'N', '', 0, 0, '', 0, 0, 254877),
(387, 26, 0, 'Ace Racer 1180 Tokens', 302528, 'DF', 'ar4', 'Off', 4, 'N', '', 0, 0, '', 0, 0, 275025),
(388, 13, 0, 'Tom and Jerry: Chase 1200 Diamond', 239360, 'DF', 'taj5', 'On', 5, 'N', '', 0, 0, '', 0, 0, 217600),
(389, 30, 0, 'Voucher 1200 PB Cash', 9881, 'DF', 'pb1', 'On', 1, 'N', '', 0, 0, '', 0, 0, 8983),
(390, 9, 0, 'Speed Drifters 1230 Diamonds', 209055, 'DF', 'sd7', 'On', 7, 'N', '', 0, 0, '', 0, 0, 190050),
(391, 22, 0, 'Stumble Guys 1300 Stumble Token Powered by Google Play', 382506, 'DF', 'sg6', 'On', 4, 'N', '', 0, 0, '', 0, 0, 347733),
(392, 4, 0, 'Call of Duty Mobile 1373 CP', 196900, 'DF', 'cod6', 'Off', 6, 'N', '', 0, 0, '', 0, 0, 179000),
(393, 16, 0, 'League of Legends Wild Rift 1375 Wild Cores', 153670, 'DF', 'lol3', 'On', 3, 'N', '', 0, 0, '', 0, 0, 139700),
(394, 3, 0, 'Valorant 1375 Points', 157014, 'DF', 'valo6', 'On', 6, 'N', '', 0, 0, '', 0, 0, 142740),
(395, 25, 0, 'Revelation Infinite Journey 1380 + 207 Jade', 280526, 'DF', 'rij8', 'On', 8, 'N', '', 0, 0, '', 0, 0, 255024),
(396, 1, 0, 'MOBILELEGEND - 1412 Diamond', 333300, 'DF', 'ml21', 'Off', 22, 'N', '', 0, 0, '', 0, 0, 304406),
(397, 7, 0, 'AOV 1430 Vouchers', 293728, 'DF', 'aov6', 'On', 6, 'N', '', 0, 0, '', 0, 0, 276025),
(398, 45, 0, 'Goddess of Victory Nikke 1500 + 260 Gems', 273900, 'DF', 'govn5', 'On', 5, 'N', '', 0, 0, '', 0, 0, 249000),
(399, 4, 0, 'Call of Duty Mobile 1584 CP', 295350, 'DF', 'cod7', 'Off', 7, 'N', '', 0, 0, '', 0, 0, 268500),
(400, 22, 0, 'Stumble Guys 1600 Gems + 75 Stumble Token Powered by Google Play', 67168, 'DF', 'sg4', 'On', 5, 'N', '', 0, 0, '', 0, 0, 61062),
(401, 25, 0, 'Revelation Infinite Journey 1610 + 242 Jade', 327281, 'DF', 'rij9', 'On', 9, 'N', '', 0, 0, '', 0, 0, 297528),
(402, 3, 0, 'Valorant 1650 Points', 164670, 'DF', 'valo7', 'On', 7, 'N', '', 0, 0, '', 0, 0, 149450),
(403, 1, 0, 'MOBILELEGEND - 1669 Diamond', 393773, 'DF', 'ml22', 'Off', 23, 'N', '', 0, 0, '', 0, 0, 361482),
(404, 14, 0, 'Dragon Raja 1699 Coupons', 342216, 'DF', 'drs9', 'On', 9, 'N', '', 0, 0, '', 0, 0, 311105),
(405, 6, 0, 'PUBG MOBILE 1750 UC', 333493, 'DF', 'pm9', 'On', 12, 'N', '', 0, 0, '', 0, 0, 303175),
(406, 11, 0, 'Marvel Super War 1765 Star Credits', 451550, 'DF', 'msw5', 'On', 5, 'N', '', 0, 0, '', 0, 0, 410500),
(407, 46, 0, 'Voucher PUBG Mobile 1800 UC', 440458, 'DF', 'pubgm4', 'On', 13, 'N', '', 0, 0, '', 0, 0, 400416),
(408, 13, 0, 'Tom and Jerry: Chase 1800 Diamond', 448140, 'DF', 'taj6', 'On', 6, 'N', '', 0, 0, '', 0, 0, 407400),
(409, 15, 0, 'Light of Thel 1800 Crystals', 275000, 'DF', 'lot4', 'On', 4, 'N', '', 0, 0, '', 0, 0, 250000),
(410, 1, 0, 'MOBILELEGEND - 1830 Diamond', 441511, 'DF', 'ml23', 'On', 24, 'N', '', 0, 0, '', 0, 0, 401374),
(411, 9, 0, 'Speed Drifters 1845 Diamonds', 313555, 'DF', 'sd8', 'On', 8, 'N', '', 0, 0, '', 0, 0, 285050),
(412, 5, 0, 'Genshin Impact 1980+260 Genesis Crystals', 418000, 'DF', 'gi5', 'On', 5, 'N', '', 0, 0, '', 0, 0, 383000),
(413, 44, 0, 'Tower of Fantasy 1980 Tanium + 270 Dark Crystal Southeast Asia', 419543, 'DF', 'tofsa4', 'On', 10, 'N', '', 0, 0, '', 0, 0, 381403),
(414, 2, 0, 'Free Fire 2000 Diamond', 280863, 'DF', 'ff46', 'On', 43, 'N', '', 0, 0, '', 0, 0, 263900),
(415, 1, 0, 'MOBILELEGEND - 2010 Diamond', 479449, 'DF', 'ml24', 'On', 25, 'N', '', 0, 0, '', 0, 0, 439525),
(416, 8, 0, 'Lords Mobile 2011 Diamonds', 279763, 'DF', 'lom7', 'On', 7, 'N', '', 0, 0, '', 0, 0, 254330),
(417, 4, 0, 'Call of Duty Mobile 2059 CP', 297000, 'DF', 'cod8', 'Off', 8, 'N', '', 0, 0, '', 0, 0, 275000),
(418, 8, 0, 'Lords Mobile 2090 Diamonds', 323158, 'DF', 'lom8', 'On', 8, 'N', '', 0, 0, '', 0, 0, 293780),
(419, 1, 0, 'MOBILELEGEND - 2195 Diamond', 497189, 'DF', 'ml25', 'Off', 26, 'N', '', 0, 0, '', 0, 0, 451990),
(420, 10, 0, 'LifeAfter 2268 Credits', 434500, 'DF', 'lac5', 'On', 5, 'N', '', 0, 0, '', 0, 0, 395000),
(421, 25, 0, 'Revelation Infinite Journey 2300 + 345 Jade', 467544, 'DF', 'rij10', 'On', 10, 'N', '', 0, 0, '', 0, 0, 425040),
(422, 45, 0, 'Goddess of Victory Nikke 2300 + 400 Gems', 407000, 'DF', 'govn7', 'On', 6, 'N', '', 0, 0, '', 0, 0, 370000),
(423, 7, 0, 'AOV 2390 Vouchers', 489528, 'DF', 'aov7', 'On', 7, 'N', '', 0, 0, '', 0, 0, 460025),
(424, 30, 0, 'Voucher 2400 PB Cash', 19767, 'DF', 'pb2', 'On', 2, 'N', '', 0, 0, '', 0, 0, 17970),
(425, 3, 0, 'Valorant 2400 Points', 262224, 'DF', 'valo8', 'On', 8, 'N', '', 0, 0, '', 0, 0, 238385),
(426, 16, 0, 'League of Legends Wild Rift 2400 Wild Cores', 251900, 'DF', 'lol4', 'On', 4, 'N', '', 0, 0, '', 0, 0, 229000),
(427, 6, 0, 'PUBG MOBILE 2500 UC', 472203, 'DF', 'pm10', 'On', 14, 'N', '', 0, 0, '', 0, 0, 429275),
(428, 14, 0, 'Dragon Raja 2553 Coupons', 466265, 'DF', 'drs10', 'On', 10, 'N', '', 0, 0, '', 0, 0, 423877),
(429, 26, 0, 'Ace Racer 2880 Tokens', 748028, 'DF', 'ar5', 'Off', 5, 'N', '', 0, 0, '', 0, 0, 680025),
(430, 11, 0, 'Marvel Super War 2950 Star Credits', 724900, 'DF', 'msw6', 'On', 6, 'N', '', 0, 0, '', 0, 0, 659000),
(431, 13, 0, 'Tom and Jerry: Chase 3000 Diamond', 746900, 'DF', 'taj7', 'On', 7, 'N', '', 0, 0, '', 0, 0, 679000),
(432, 1, 0, 'MOBILELEGEND - 3073 Diamond', 703896, 'DF', 'ml26', 'Off', 27, 'N', '', 0, 0, '', 0, 0, 639905),
(433, 9, 0, 'Speed Drifters 3134 Diamonds', 522555, 'DF', 'sd9', 'On', 9, 'N', '', 0, 0, '', 0, 0, 475050),
(434, 25, 0, 'Revelation Infinite Journey 3220 + 483 Jade', 654562, 'DF', 'rij11', 'On', 11, 'N', '', 0, 0, '', 0, 0, 595056),
(435, 44, 0, 'Tower of Fantasy 3280 Tanium + 530 Dark Crystal Southeast Asia', 682000, 'DF', 'tofsa5', 'On', 11, 'N', '', 0, 0, '', 0, 0, 620000),
(436, 5, 0, 'Genshin Impact 3280+600 Genesis Crystals', 644820, 'DF', 'gi6', 'On', 6, 'N', '', 0, 0, '', 0, 0, 572200),
(437, 8, 0, 'Lords Mobile 3352 Diamonds', 466257, 'DF', 'lom9', 'On', 9, 'N', '', 0, 0, '', 0, 0, 423870),
(438, 3, 0, 'Valorant 3400 Points', 327800, 'DF', 'valo9', 'On', 9, 'N', '', 0, 0, '', 0, 0, 297900),
(439, 10, 0, 'LifeAfter 3468 Credits', 680900, 'DF', 'lac6', 'On', 6, 'N', '', 0, 0, '', 0, 0, 619000),
(440, 6, 0, 'PUBG MOBILE 3500 UC', 613855, 'DF', 'pm11', 'On', 15, 'N', '', 0, 0, '', 0, 0, 558050),
(441, 4, 0, 'Call of Duty Mobile 3564 CP', 495000, 'DF', 'cod9', 'Off', 9, 'N', '', 0, 0, '', 0, 0, 450000),
(442, 14, 0, 'Dragon Raja 3589 Coupons', 652760, 'DF', 'drs11', 'On', 11, 'N', '', 0, 0, '', 0, 0, 593418),
(443, 46, 0, 'Voucher PUBG Mobile 3850 UC', 880809, 'DF', 'pubgm5', 'On', 16, 'N', '', 0, 0, '', 0, 0, 800735),
(444, 16, 0, 'League of Legends Wild Rift 4000 Wild Cores', 416570, 'DF', 'lol5', 'On', 5, 'N', '', 0, 0, '', 0, 0, 378700),
(445, 3, 0, 'Valorant 4000 Points', 418330, 'DF', 'valo10', 'On', 10, 'N', '', 0, 0, '', 0, 0, 380300),
(446, 6, 0, 'PUBG MOBILE 4200 UC', 781664, 'DF', 'pm12', 'On', 17, 'N', '', 0, 0, '', 0, 0, 710604),
(447, 45, 0, 'Goddess of Victory Nikke 4200 + 1000 Gems', 763400, 'DF', 'govn8', 'On', 7, 'N', '', 0, 0, '', 0, 0, 694000),
(448, 1, 0, 'MOBILELEGEND - 4396 Diamond', 994972, 'DF', 'ml27', 'Off', 28, 'N', '', 0, 0, '', 0, 0, 904520),
(449, 15, 0, 'Light of Thel 4500 Crystals', 715000, 'DF', 'lot5', 'On', 5, 'N', '', 0, 0, '', 0, 0, 650000),
(450, 25, 0, 'Revelation Infinite Journey 4600 + 690 Jade', 935088, 'DF', 'rij12', 'On', 12, 'N', '', 0, 0, '', 0, 0, 850080),
(451, 7, 0, 'AOV 4800 Vouchers', 979028, 'DF', 'aov8', 'On', 8, 'N', '', 0, 0, '', 0, 0, 920025),
(452, 6, 0, 'PUBG MOBILE 5000 UC', 897160, 'DF', 'pm13', 'On', 18, 'N', '', 0, 0, '', 0, 0, 815600),
(453, 22, 0, 'Stumble Guys 5000 Gems + 275 Stumble Token Powered by Google Play', 151806, 'DF', 'sg5', 'On', 6, 'N', '', 0, 0, '', 0, 0, 138005),
(454, 14, 0, 'Dragon Raja 5161 Coupons', 1026592, 'DF', 'drs12', 'On', 12, 'N', '', 0, 0, '', 0, 0, 933265),
(455, 1, 0, 'MOBILELEGEND - 5532 Diamond', 1244837, 'DF', 'ml28', 'Off', 29, 'N', '', 0, 0, '', 0, 0, 1131670),
(456, 10, 0, 'LifeAfter 5768 Credits', 1100000, 'DF', 'lac7', 'On', 7, 'N', '', 0, 0, '', 0, 0, 1000000),
(457, 26, 0, 'Ace Racer 5880 Tokens', 1430138, 'DF', 'ar6', 'Off', 6, 'N', '', 0, 0, '', 0, 0, 1300125),
(458, 30, 0, 'Voucher 6000 PB Cash', 49302, 'DF', 'pb3', 'On', 3, 'N', '', 0, 0, '', 0, 0, 44820),
(459, 11, 0, 'Marvel Super War 6000 Star Credits', 1430000, 'DF', 'msw7', 'On', 7, 'N', '', 0, 0, '', 0, 0, 1300000),
(460, 13, 0, 'Tom and Jerry: Chase 6000 Diamond', 1493800, 'DF', 'taj8', 'On', 8, 'N', '', 0, 0, '', 0, 0, 1358000),
(461, 1, 0, 'MOBILELEGEND - 6050 Diamond', 1405551, 'DF', 'ml29', 'On', 30, 'N', '', 0, 0, '', 0, 0, 1277549),
(462, 45, 0, 'Goddess of Victory Nikke 6200 + 1500 Gems', 1089000, 'DF', 'govn9', 'On', 8, 'N', '', 0, 0, '', 0, 0, 990000),
(463, 9, 0, 'Speed Drifters 6279 Diamonds', 1045055, 'DF', 'sd10', 'On', 10, 'N', '', 0, 0, '', 0, 0, 950050),
(464, 5, 0, 'Genshin Impact 6480+1600 Genesis Crystals', 1298000, 'DF', 'gi7', 'On', 7, 'N', '', 0, 0, '', 0, 0, 1159600),
(465, 44, 0, 'Tower of Fantasy 6480 Tanium + 1300 Dark Crystal Southeast Asia', 1303500, 'DF', 'tofsa6', 'On', 12, 'N', '', 0, 0, '', 0, 0, 1185000),
(466, 3, 0, 'Valorant 7000 Points', 656700, 'DF', 'valo11', 'On', 11, 'N', '', 0, 0, '', 0, 0, 596800),
(467, 6, 0, 'PUBG MOBILE 7000 UC', 1305260, 'DF', 'pm14', 'On', 19, 'N', '', 0, 0, '', 0, 0, 1186600),
(468, 2, 0, 'Free Fire 7290 Diamond', 973528, 'DF', 'ff47', 'On', 44, 'N', '', 0, 0, '', 0, 0, 898025),
(469, 14, 0, 'Dragon Raja 7546 Coupons', 1398738, 'DF', 'drs13', 'On', 13, 'N', '', 0, 0, '', 0, 0, 1271580),
(470, 4, 0, 'Call of Duty Mobile 7656 CP', 990000, 'DF', 'cod10', 'Off', 10, 'N', '', 0, 0, '', 0, 0, 900000),
(471, 1, 0, 'MOBILELEGEND - 7727 Diamond', 1699033, 'DF', 'ml30', 'On', 31, 'N', '', 0, 0, '', 0, 0, 1603623),
(472, 10, 0, 'LifeAfter 7768 Credits', 1452000, 'DF', 'lac8', 'On', 8, 'N', '', 0, 0, '', 0, 0, 1320000),
(473, 46, 0, 'Voucher PUBG Mobile 8100 UC', 1761510, 'DF', 'pubgm6', 'On', 20, 'N', '', 0, 0, '', 0, 0, 1601373),
(474, 16, 0, 'League of Legends Wild Rift 8150 Wild Cores', 822800, 'DF', 'lol6', 'On', 6, 'N', '', 0, 0, '', 0, 0, 748000),
(475, 3, 0, 'Valorant 8150 Points', 838090, 'DF', 'valo12', 'On', 12, 'N', '', 0, 0, '', 0, 0, 770000),
(476, 6, 0, 'PUBG MOBILE 8800 UC', 1624239, 'DF', 'pm15', 'On', 21, 'N', '', 0, 0, '', 0, 0, 1476581),
(477, 15, 0, 'Light of Thel 9000 Crystals', 1430000, 'DF', 'lot6', 'On', 6, 'N', '', 0, 0, '', 0, 0, 1300000),
(478, 14, 0, 'Dragon Raja 9056 Coupons', 1684571, 'DF', 'drs14', 'On', 14, 'N', '', 0, 0, '', 0, 0, 1531428);
INSERT INTO `product` (`id`, `games_id`, `category_id`, `product`, `price`, `provider`, `sku`, `status`, `sort`, `check_status`, `check_code`, `price_silver`, `price_gold`, `image`, `min`, `max`, `raw_price`) VALUES
(479, 25, 0, 'Revelation Infinite Journey 9200 + 1380 Jade', 1870176, 'DF', 'rij13', 'On', 13, 'N', '', 0, 0, '', 0, 0, 1700160),
(480, 1, 0, 'MOBILELEGEND - 9288 Diamond', 2070365, 'DF', 'ml31', 'Off', 32, 'N', '', 0, 0, '', 0, 0, 1882150),
(481, 4, 0, 'Call of Duty Mobile 10560 CP', 1980000, 'DF', 'cod11', 'Off', 11, 'N', '', 0, 0, '', 0, 0, 1800000),
(482, 30, 0, 'Voucher 12000 PB Cash', 98497, 'DF', 'pb4', 'On', 4, 'N', '', 0, 0, '', 0, 0, 89543),
(483, 14, 0, 'Dragon Raja 15092 Coupons', 2797449, 'DF', 'drs15', 'On', 15, 'N', '', 0, 0, '', 0, 0, 2543135),
(484, 30, 0, 'Voucher 24000 PB Cash', 196955, 'DF', 'pb5', 'On', 5, 'N', '', 0, 0, '', 0, 0, 179050),
(485, 4, 0, 'Call of Duty Mobile 26400 CP', 5225055, 'DF', 'cod12', 'On', 12, 'N', '', 0, 0, '', 0, 0, 4750050),
(486, 30, 0, 'Voucher 36000 PB Cash', 293700, 'DF', 'pb6', 'On', 6, 'N', '', 0, 0, '', 0, 0, 267000),
(487, 2, 0, 'Free Fire 36500 Diamond', 5060000, 'DF', 'ff48', 'Off', 45, 'N', '', 0, 0, '', 0, 0, 4600000),
(488, 4, 0, 'Call of Duty Mobile 52800 CP', 10296220, 'DF', 'cod13', 'On', 13, 'N', '', 0, 0, '', 0, 0, 9360200),
(489, 30, 0, 'Voucher 60000 PB Cash', 495000, 'DF', 'pb7', 'On', 7, 'N', '', 0, 0, '', 0, 0, 450000),
(490, 2, 0, 'Free Fire 73100 Diamond', 9900000, 'DF', 'ff49', 'Off', 46, 'N', '', 0, 0, '', 0, 0, 9000000),
(491, 23, 0, 'Honkai Impact 3 8088 Crystals', 1599664, 'DF', 'hi14', 'On', 13, 'N', '', 0, 0, '', 0, 0, 1454240),
(492, 2, 0, 'Free Fire 5 Diamond', 908, 'DF', 'ff1', 'On', 3, 'N', '', 0, 0, '', 0, 0, 820),
(493, 6, 0, 'PUBG MOBILE 250 UC', 49253, 'DF', 'pm5', 'On', 6, 'N', '', 0, 0, '', 0, 0, 46512);

-- --------------------------------------------------------

--
-- Table structure for table `testimoni`
--

CREATE TABLE `testimoni` (
  `id` int(11) NOT NULL,
  `testimoni` varchar(250) NOT NULL,
  `image` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `testimoni`
--

INSERT INTO `testimoni` (`id`, `testimoni`, `image`) VALUES
(34, 'Mantab! Proses Cepat 100% legal dan aman! Recommended! ', '1680364226_edaaf8b6346dc1ebacb2.png'),
(35, 'Admin respon cepat dan joki proses sangat cepat! Auto WS thankyou TCnt', '1680364377_98012c62655771e4bbc6.png'),
(36, 'mantab langsung dapat notif darii whatsapp memang recommended!!', '1680455960_b6dc3953f3747e583fb2.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `topup`
--

CREATE TABLE `topup` (
  `id` int(11) NOT NULL,
  `topup_id` varchar(55) NOT NULL,
  `username` varchar(250) NOT NULL,
  `method_id` int(11) NOT NULL,
  `method` varchar(250) NOT NULL,
  `amount` bigint(20) NOT NULL,
  `status` enum('Pending','Success','Canceled') NOT NULL,
  `payment_code` varchar(500) NOT NULL,
  `date_create` datetime NOT NULL,
  `payment_type` varchar(200) DEFAULT NULL,
  `method_code` varchar(100) NOT NULL,
  `payment_gateway` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(55) NOT NULL,
  `password` varchar(250) NOT NULL,
  `balance` bigint(20) NOT NULL,
  `wa` varchar(100) NOT NULL,
  `status` enum('On','Off') NOT NULL,
  `date_create` datetime NOT NULL,
  `ref` varchar(100) NOT NULL,
  `ref_by` varchar(100) NOT NULL,
  `level` enum('Member','Silver','Gold') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `utility`
--

CREATE TABLE `utility` (
  `id` int(11) NOT NULL,
  `u_key` varchar(250) NOT NULL,
  `u_value` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `utility`
--

INSERT INTO `utility` (`id`, `u_key`, `u_value`) VALUES
(1, 'web-title', 'Layanan Top Up Games No 1 di Indonesia'),
(2, 'web-name', 'Topup Indo'),
(3, 'web-logo', '1680749597_8aacf9ce469c214a0479.png'),
(4, 'web-keywords', 'TOPUPINDO'),
(5, 'web-description', '<p>Tempat <a href=\"https://topupindo.net/\">top up game termurah</a>, tercepat, dan terpercaya di Indonesia. Proses Otomatis gak sampai 1 menit membuat Anda betah <a href=\"https://topupindo.net/\">Top Up disini</a>. Tersedia berbagai macam pembayaran Transfer Bank, E-Wallet, Scan QR, Alfamart, &amp; Indomart yg pasti memudahkan anda untuk bertransaksi.</p>\r\n'),
(6, 'tripay-key', 'GANTI'),
(7, 'tripay-private', 'GANTI'),
(8, 'tripay-merchant', 'GANTI'),
(9, 'digi-user', 'GANTI'),
(10, 'digi-key', 'GANTI'),
(11, 'ag-merchant', 'GANTI'),
(12, 'ag-secret', 'GANTI'),
(13, 'license', 'A9mNbl=ZloA0SllZHanZ0-09A'),
(14, 'sm-wa', 'https://topupindo.net/'),
(15, 'sm-ig', 'https://topupindo.net/'),
(16, 'sm-yt', 'https://topupindo.net/'),
(17, 'sm-tw', 'https://topupindo.net/'),
(18, 'sm-fb', 'https://topupindo.net/'),
(19, 'pay_balance', 'Y'),
(20, 'page_sk', '<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><strong><span style=\"font-size:12.0pt\">Terms and Conditions</span></strong></span></span></p>\r\n\r\n<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\">Welcome to <a href=\"https://topupindo.net/\">TOPUPINDO</a>!</span></span></span></p>\r\n\r\n<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\">These terms and conditions outline the rules and regulations for the use of &nbsp;TOPUPINDO&#39;s Website, located at <a href=\"https://topupindo.net/\">https://</a></span><span style=\"font-size:12.0pt\"><a href=\"https://topupindo.net/\">topupindo.net</a>.</span></span></span></p>\r\n\r\n<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\">By accessing this website we assume you accept these terms and conditions. Do not continue to use TOPUPINDO if you do not agree to take all of the terms and conditions stated on this page.</span></span></span></p>\r\n\r\n<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\">The following terminology applies to these Terms and Conditions, Privacy Statement and Disclaimer Notice and all Agreements: &quot;Client&quot;, &quot;You&quot; and &quot;Your&quot; refers to you, the person log on this website and compliant to the Company&rsquo;s terms and conditions. &quot;The Company&quot;, &quot;Ourselves&quot;, &quot;We&quot;, &quot;Our&quot; and &quot;Us&quot;, refers to our Company. &quot;Party&quot;, &quot;Parties&quot;, or &quot;Us&quot;, refers to both the Client and ourselves. All terms refer to the offer, acceptance and consideration of payment necessary to undertake the process of our assistance to the Client in the most appropriate manner for the express purpose of meeting the Client&rsquo;s needs in respect of provision of the Company&rsquo;s stated services, in accordance with and subject to, prevailing law of Netherlands. Any use of the above terminology or other words in the singular, plural, capitalization and/or he/she or they, are taken as interchangeable and therefore as referring to same.</span></span></span></p>\r\n\r\n<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><strong><span style=\"font-size:12.0pt\">Cookies</span></strong></span></span></p>\r\n\r\n<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\">We employ the use of cookies. By accessing TOPUPINDO, you agreed to use cookies in agreement with the TOPUPINDO&#39;s Privacy Policy.</span></span></span></p>\r\n\r\n<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\">Most interactive websites use cookies to let us retrieve the user&rsquo;s details for each visit. Cookies are used by our website to enable the functionality of certain areas to make it easier for people visiting our website. Some of our affiliate/advertising partners may also use cookies.</span></span></span></p>\r\n\r\n<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><strong><span style=\"font-size:12.0pt\">License</span></strong></span></span></p>\r\n\r\n<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\">Unless otherwise stated, TOPUPINDO and/or its licensors own the intellectual property rights for all material on TOPUPINDO. All intellectual property rights are reserved. You may access this from TOPUPINDO for your own personal use subjected to restrictions set in these terms and conditions.</span></span></span></p>\r\n\r\n<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\">You must not:</span></span></span></p>\r\n\r\n<ul>\r\n	<li><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\">Republish material from TOPUPINDO</span></span></span></li>\r\n	<li><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\">Sell, rent or sub-license material from TOPUPINDO</span></span></span></li>\r\n	<li><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\">Reproduce, duplicate or copy material from TOPUPINDO</span></span></span></li>\r\n	<li><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\">Redistribute content from TOPUPINDO</span></span></span></li>\r\n</ul>\r\n\r\n<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\">This Agreement shall begin on the date hereof. Our Terms and Conditions were created with the help of the </span><a href=\"https://seosecret.id/privacy-policy-generator\"><span style=\"font-size:12.0pt\">TermsFeed Free Terms and Conditions Generator</span></a><span style=\"font-size:12.0pt\">.</span></span></span></p>\r\n\r\n<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\">Parts of this website offer an opportunity for users to post and exchange opinions and information in certain areas of the website. TOPUPINDO does not filter, edit, publish or review Comments prior to their presence on the website. Comments do not reflect the views and opinions of TOPUPINDO,its agents and/or affiliates. Comments reflect the views and opinions of the person who post their views and opinions. To the extent permitted by applicable laws, TOPUPINDO shall not be liable for the Comments or for any liability, damages or expenses caused and/or suffered as a result of any use of and/or posting of and/or appearance of the Comments on this website.</span></span></span></p>\r\n\r\n<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\">TOPUPINDO reserves the right to monitor all Comments and to remove any Comments which can be considered inappropriate, offensive or causes breach of these Terms and Conditions.</span></span></span></p>\r\n\r\n<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\">You warrant and represent that:</span></span></span></p>\r\n\r\n<ul>\r\n	<li><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\">You are entitled to post the Comments on our website and have all necessary licenses and consents to do so;</span></span></span></li>\r\n	<li><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\">The Comments do not invade any intellectual property right, including without limitation copyright, patent or trademark of any third party;</span></span></span></li>\r\n	<li><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\">The Comments do not contain any defamatory, libelous, offensive, indecent or otherwise unlawful material which is an invasion of privacy</span></span></span></li>\r\n	<li><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\">The Comments will not be used to solicit or promote business or custom or present commercial activities or unlawful activity.</span></span></span></li>\r\n</ul>\r\n\r\n<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\">You hereby grant TOPUPINDO a non-exclusive license to use, reproduce, edit and authorize others to use, reproduce and edit any of your Comments in any and all forms, formats or media.</span></span></span></p>\r\n\r\n<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><strong><span style=\"font-size:12.0pt\">Hyperlinking to our Content</span></strong></span></span></p>\r\n\r\n<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\">The following organizations may link to our Website without prior written approval:</span></span></span></p>\r\n\r\n<ul>\r\n	<li><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\">Government agencies;</span></span></span></li>\r\n	<li><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\">Search engines;</span></span></span></li>\r\n	<li><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\">News organizations;</span></span></span></li>\r\n	<li><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\">Online directory distributors may link to our Website in the same manner as they hyperlink to the Websites of other listed businesses; and</span></span></span></li>\r\n	<li><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\">System wide Accredited Businesses except soliciting non-profit organizations, charity shopping malls, and charity fundraising groups which may not hyperlink to our Web site.</span></span></span></li>\r\n</ul>\r\n\r\n<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\">These organizations may link to our home page, to publications or to other Website information so long as the link: (a) is not in any way deceptive; (b) does not falsely imply sponsorship, endorsement or approval of the linking party and its products and/or services; and (c) fits within the context of the linking party&rsquo;s site.</span></span></span></p>\r\n\r\n<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\">We may consider and approve other link requests from the following types of organizations:</span></span></span></p>\r\n\r\n<ul>\r\n	<li><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\">commonly-known consumer and/or business information sources;</span></span></span></li>\r\n	<li><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\">dot.com community sites;</span></span></span></li>\r\n	<li><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\">associations or other groups representing charities;</span></span></span></li>\r\n	<li><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\">online directory distributors;</span></span></span></li>\r\n	<li><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\">internet portals;</span></span></span></li>\r\n	<li><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\">accounting, law and consulting firms; and</span></span></span></li>\r\n	<li><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\">educational institutions and trade associations.</span></span></span></li>\r\n</ul>\r\n\r\n<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\">We will approve link requests from these organizations if we decide that: (a) the link would not make us look unfavorably to ourselves or to our accredited businesses; (b) the organization does not have any negative records with us; (c) the benefit to us from the visibility of the hyperlink compensates the absence of TOPUPINDO; and (d) the link is in the context of general resource information.</span></span></span></p>\r\n\r\n<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\">These organizations may link to our home page so long as the link: (a) is not in any way deceptive; (b) does not falsely imply sponsorship, endorsement or approval of the linking party and its products or services; and (c) fits within the context of the linking party&rsquo;s site.</span></span></span></p>\r\n\r\n<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\">If you are one of the organizations listed in paragraph 2 above and are interested in linking to our website, you must inform us by sending an e-mail to TOPUPINDO. Please include your name, your organization name, contact information as well as the URL of your site, a list of any URLs from which you intend to link to our Website, and a list of the URLs on our site to which you would like to link. Wait 2-3 weeks for a response.</span></span></span></p>\r\n\r\n<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\">Approved organizations may hyperlink to our Website as follows:</span></span></span></p>\r\n\r\n<ul>\r\n	<li><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\">By use of our corporate name; or</span></span></span></li>\r\n	<li><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\">By use of the uniform resource locator being linked to; or</span></span></span></li>\r\n	<li><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\">By use of any other description of our Website being linked to that makes sense within the context and format of content on the linking party&rsquo;s site.</span></span></span></li>\r\n</ul>\r\n\r\n<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\">No use of TOPUPINDO&#39;s logo or other artwork will be allowed for linking absent a trademark license agreement.</span></span></span></p>\r\n\r\n<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><strong><span style=\"font-size:12.0pt\">iFrames</span></strong></span></span></p>\r\n\r\n<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\">Without prior approval and written permission, you may not create frames around our Webpages that alter in any way the visual presentation or appearance of our Website.</span></span></span></p>\r\n\r\n<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><strong><span style=\"font-size:12.0pt\">Content Liability</span></strong></span></span></p>\r\n\r\n<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\">We shall not be hold responsible for any content that appears on your Website. You agree to protect and defend us against all claims that is rising on your Website. No link(s) should appear on any Website that may be interpreted as libelous, obscene or criminal, or which infringes, otherwise violates, or advocates the infringement or other violation of, any third party rights.</span></span></span></p>\r\n\r\n<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><strong><span style=\"font-size:12.0pt\">Your Privacy</span></strong></span></span></p>\r\n\r\n<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\">Please read Privacy Policy</span></span></span></p>\r\n\r\n<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><strong><span style=\"font-size:12.0pt\">Reservation of Rights</span></strong></span></span></p>\r\n\r\n<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\">We reserve the right to request that you remove all links or any particular link to our Website. You approve to immediately remove all links to our Website upon request. We also reserve the right to amen these terms and conditions and it&rsquo;s linking policy at any time. By continuously linking to our Website, you agree to be bound to and follow these linking terms and conditions.</span></span></span></p>\r\n\r\n<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><strong><span style=\"font-size:12.0pt\">Removal of links from our website</span></strong></span></span></p>\r\n\r\n<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\">If you find any link on our Website that is offensive for any reason, you are free to contact and inform us any moment. We will consider requests to remove links but we are not obligated to or so or to respond to you directly.</span></span></span></p>\r\n\r\n<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\">We do not ensure that the information on this website is correct, we do not warrant its completeness or accuracy; nor do we promise to ensure that the website remains available or that the material on the website is kept up to date.</span></span></span></p>\r\n\r\n<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><strong><span style=\"font-size:12.0pt\">Disclaimer</span></strong></span></span></p>\r\n\r\n<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\">To the maximum extent permitted by applicable law, we exclude all representations, warranties and conditions relating to our website and the use of this website. Nothing in this disclaimer will:</span></span></span></p>\r\n\r\n<ul>\r\n	<li><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\">limit or exclude our or your liability for death or personal injury;</span></span></span></li>\r\n	<li><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\">limit or exclude our or your liability for fraud or fraudulent misrepresentation;</span></span></span></li>\r\n	<li><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\">limit any of our or your liabilities in any way that is not permitted under applicable law; or</span></span></span></li>\r\n	<li><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\">exclude any of our or your liabilities that may not be excluded under applicable law.</span></span></span></li>\r\n</ul>\r\n\r\n<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\">The limitations and prohibitions of liability set in this Section and elsewhere in this disclaimer: (a) are subject to the preceding paragraph; and (b) govern all liabilities arising under the disclaimer, including liabilities arising in contract, in tort and for breach of statutory duty.</span></span></span></p>\r\n\r\n<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\">As long as the website and the information and services on the website are provided free of charge, we will not be liable for any loss or damage of any nature.</span></span></span></p>\r\n'),
(22, 'cm_key', '-'),
(23, 'cm_rek', '-'),
(24, 'wa_token', '-'),
(25, 'cm_rek_bni', '-'),
(80, 'wapi_api', 'GANTI'),
(81, 'wapi_device', 'GANTI');

-- --------------------------------------------------------

--
-- Table structure for table `voucher`
--

CREATE TABLE `voucher` (
  `id` int(11) NOT NULL,
  `voucher` varchar(100) NOT NULL,
  `diskon` int(11) NOT NULL,
  `min` bigint(20) NOT NULL,
  `max_diskon` bigint(20) NOT NULL,
  `max_use` int(11) NOT NULL,
  `type_produk` varchar(100) NOT NULL,
  `produk` varchar(200) NOT NULL,
  `status` varchar(250) NOT NULL,
  `date_create` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banner`
--
ALTER TABLE `banner`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `games`
--
ALTER TABLE `games`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `method`
--
ALTER TABLE `method`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mutasi`
--
ALTER TABLE `mutasi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `price`
--
ALTER TABLE `price`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `testimoni`
--
ALTER TABLE `testimoni`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `topup`
--
ALTER TABLE `topup`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `utility`
--
ALTER TABLE `utility`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `voucher`
--
ALTER TABLE `voucher`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `banner`
--
ALTER TABLE `banner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `games`
--
ALTER TABLE `games`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `method`
--
ALTER TABLE `method`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=180;

--
-- AUTO_INCREMENT for table `mutasi`
--
ALTER TABLE `mutasi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `post`
--
ALTER TABLE `post`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `price`
--
ALTER TABLE `price`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=494;

--
-- AUTO_INCREMENT for table `testimoni`
--
ALTER TABLE `testimoni`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `topup`
--
ALTER TABLE `topup`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `utility`
--
ALTER TABLE `utility`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

--
-- AUTO_INCREMENT for table `voucher`
--
ALTER TABLE `voucher`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
