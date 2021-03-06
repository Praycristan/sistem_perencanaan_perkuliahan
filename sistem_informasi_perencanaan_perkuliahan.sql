-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 06 Jul 2020 pada 05.21
-- Versi server: 10.4.11-MariaDB
-- Versi PHP: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sistem_informasi_perencanaan_perkuliahan`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_baak`
--

CREATE TABLE `tbl_baak` (
  `id` varchar(20) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `pass` varchar(50) NOT NULL,
  `role_id` enum('2') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_baak`
--

INSERT INTO `tbl_baak` (`id`, `nama`, `email`, `pass`, `role_id`) VALUES
('baak', 'BAAK', 'gajsga@gmail.com', 'f6edb4c31cf9be5ce497d12251a9d29e', '2');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_dosen`
--

CREATE TABLE `tbl_dosen` (
  `kode_dosen` varchar(19) NOT NULL,
  `nama_dosen` varchar(50) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `no_telp` varchar(16) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_dosen`
--

INSERT INTO `tbl_dosen` (`kode_dosen`, `nama_dosen`, `email`, `no_telp`) VALUES
('001', 'A. Ferico Octaviansyah, S.Kom., M.Kom.', '', ''),
('002', 'Ade Surahman, M.Kom', '', ''),
('003', 'Agus Ambarwari, M.Kom.', '', ''),
('004', 'Ajeng Savitri Puspaningrum,M.Kom.', '', ''),
('005', 'Dedi Darwis, S.Kom., M.Kom., MOS., MTA.', '', ''),
('006', 'Donaya Pasha, S.Kom., M.Kom.', '', ''),
('007', 'Dyah Ayu Megawaty, S.Kom., M.Kom.', '', ''),
('008', 'Faruk Ulum, S.T., M.T.I.', '', ''),
('009', 'Heni Sulistiani, S.Kom., M.Kom.', '', ''),
('010', 'Imam Ahmad, S.Kom., M.Kom.', '', ''),
('011', 'M. Najib Dwi Satria, S.Kom., M.T.', '', ''),
('012', 'Neneng, S.Kom., M.Kom.', '', ''),
('013', 'Novia Utami Putri, S.T.', '', ''),
('014', 'Qadhli Jafar Adrian, M.I.T.', '', ''),
('015', 'Saniati, S.ST., M.T.', '', ''),
('016', 'Sanriomi Sintaro, M.Kom.', '', ''),
('017', 'Temi Ardiansyah, S.Kom.', '', ''),
('018', 'Yusra Fernando, S.Kom., M.Kom.', '', ''),
('019', 'Zaenal Abidin, S.Si., M.T.', '', ''),
('020', 'Adi Sucipto, S.Kom., M.T.', '', ''),
('021', 'Agus Mulyanto, S.Kom., M.T., M.Sc.', '', ''),
('022', 'Amarudin, S.Kom., M.Eng.', '', ''),
('023', 'Edi Wahyudi, S.Kom.', '', ''),
('024', 'Jupriyadi, S.Kom., M.T.', '', ''),
('025', 'S. Samsugi, S.Kom., M.Eng.', '', ''),
('026', 'Sampurna Dadi Riskiono, M.Eng.', '', ''),
('027', 'Wajiran, S.T., M.T.', '', ''),
('028', 'Permata, M.Si.', '', ''),
('029', 'Putri Sukma Dewi, S.Pd., M.Pd.', '', ''),
('030', 'Siti Romlah, S.Si., M.Si.', '', ''),
('031', 'Very Hendra Saputra, S.Pd. Si., M.Pd.', '', ''),
('032', 'Achmad yudi Wahyudin, S.pd., M.Pd.', '', ''),
('033', 'Fenni Yufantria, S.E., Ak., M.Ak.', '', ''),
('034', 'Aditya Gumantan, S.Pd., M.Pd.', '', ''),
('035', 'Ardian Cahyadi, M.Pd.', '', ''),
('036', 'Dayu Rika, S.Pd., M.Pd.', '', ''),
('037', 'Agus Budianto, S.Kom.', '', ''),
('038', 'rrr', '', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_jadwal`
--

CREATE TABLE `tbl_jadwal` (
  `id_jdwl` int(11) NOT NULL,
  `kode_kelas` int(10) NOT NULL,
  `npm` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_jadwal`
--

INSERT INTO `tbl_jadwal` (`id_jdwl`, `kode_kelas`, `npm`) VALUES
(48, 29, '1811010008'),
(49, 29, '1711010008'),
(50, 29, '1611010008'),
(51, 29, '1511010008'),
(53, 36, '1811010008'),
(54, 41, '1811010008'),
(56, 33, '1811010008');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_kaprodi`
--

CREATE TABLE `tbl_kaprodi` (
  `id` varchar(20) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `pass` varchar(50) NOT NULL,
  `role_id` enum('1') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_kaprodi`
--

INSERT INTO `tbl_kaprodi` (`id`, `nama`, `email`, `pass`, `role_id`) VALUES
('kaprodi', 'Kaprodi', 'winarto_zing@yahoo.com', '3c13922905d2bc454cc35e665335e2fd', '1');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_kelas`
--

CREATE TABLE `tbl_kelas` (
  `id` int(11) NOT NULL,
  `kode_kelompok` int(3) NOT NULL,
  `kode_mk` varchar(20) NOT NULL,
  `kode_dosen` varchar(20) NOT NULL,
  `angkatan` varchar(3) NOT NULL,
  `nama_kelas` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_kelas`
--

INSERT INTO `tbl_kelas` (`id`, `kode_kelompok`, `kode_mk`, `kode_dosen`, `angkatan`, `nama_kelas`) VALUES
(29, 1, 'TIF001-19', '001', '18', 'IF 18 A'),
(30, 1, 'TIF001-19', '001', '18', 'IF 18 B'),
(31, 1, 'TIF002-19', '001', '18', 'IF 18 A'),
(32, 1, 'TIF002-19', '001', '18', 'IF 18 B'),
(33, 1, 'TIF003-19', '002', '15', 'IF 15 A'),
(34, 1, 'TIF003-19', '002', '15', 'IF 15 B'),
(35, 1, 'TIF004-19', '002', '16', 'IF 16 A'),
(36, 1, 'TIF004-19', '002', '16', 'IF 16 B'),
(37, 1, 'TIF004-19', '002', '16', 'IF 16 C'),
(38, 1, 'TIF005-19', '002', '18', 'IF 17 A'),
(39, 1, 'TIF005-19', '002', '17', 'IF 17 B'),
(40, 1, 'TIF006-19', '002', '16', 'IF 16 A'),
(41, 1, 'TIF006-19', '002', '16', 'IF 16 B'),
(42, 1, 'TIF006-19', '002', '16', 'IF 16 C'),
(43, 1, 'TIF006-19', '002', '16', 'IF 16 D');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_kelompok`
--

CREATE TABLE `tbl_kelompok` (
  `kode_kelompok` int(11) NOT NULL,
  `nama_kelompok` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_kelompok`
--

INSERT INTO `tbl_kelompok` (`kode_kelompok`, `nama_kelompok`) VALUES
(1, 'Kelompok Ilmu Komputer dan Pemrograman'),
(2, 'Kelompok Jaringan Komputer, Komunikasi Data, Troubleshooting, Sistem Cerdas');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_mahasiswa`
--

CREATE TABLE `tbl_mahasiswa` (
  `npm` varchar(20) NOT NULL,
  `nama_mhs` varchar(50) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `no_telp` varchar(50) NOT NULL,
  `angkatan` varchar(2) NOT NULL,
  `pass` varchar(50) NOT NULL,
  `role_id` enum('3') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_mahasiswa`
--

INSERT INTO `tbl_mahasiswa` (`npm`, `nama_mhs`, `email`, `no_telp`, `angkatan`, `pass`, `role_id`) VALUES
('1511010008', 'Ujang', '', '-', '15', '6e32bdc9fe252c6d8c60bca4bdae4737', '3'),
('1611010008', 'Joni', '', '-', '16', 'ac87219217d5ac8d006a5f047042fbbc', '3'),
('1711010008', 'Adi', '', '-', '17', 'b775062e8381f88ca9f431c3f97dd8e7', '3'),
('1811010008', 'Winarto', 'winarto.1811010008@mail.darmajaya.ac.id', '0218717006', '18', '579ed24c6e3993daddaee2f604fca230', '3');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_matakuliah`
--

CREATE TABLE `tbl_matakuliah` (
  `kode_mk` varchar(19) NOT NULL,
  `nama_mk` varchar(50) NOT NULL,
  `sks` int(2) NOT NULL,
  `angkatan` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_matakuliah`
--

INSERT INTO `tbl_matakuliah` (`kode_mk`, `nama_mk`, `sks`, `angkatan`) VALUES
('TIF001-19', 'Dasar-Dasar Pemrograman (Gel. 1)', 2, '18'),
('TIF002-19', 'Praktikum Pemrograman I (Gel. 1)', 1, '18'),
('TIF003-19', 'Proyek Perangkat Lunak', 3, '15'),
('TIF004-19', 'Pemrograman Mobile ', 3, '16'),
('TIF005-19', 'Interaksi Manusia Komputer', 2, '17'),
('TIF006-19', 'Grafika Komputer (Teori)', 2, '16'),
('TIF007-19', 'Sistem Paralel dan Terdistribusi', 3, '16'),
('TIF008-19', 'Sistem Operasi', 3, '17'),
('TIF009-19', 'Organisasi dan Arsitektur Komputer', 4, '18'),
('TIF010-19', 'Kriptografi', 2, '16'),
('TIF011-19', 'Socio-Informatika dan Profesionalisme (E-Learning)', 2, '16'),
('TIF012-19', 'Metodologi Penelitian Ilmu Komputer', 2, '16'),
('TIF013-19', 'Sistem Informasi Lanjut', 2, '15'),
('TIF014-19', 'Rekayasa Perangkat Lunak', 2, '16'),
('TIF015-19', 'Manajemen Basis Data', 2, '17'),
('TIF016-19', 'Administrasi Jaringan Komputer', 3, '15'),
('TIF017-19', 'Dasar-Dasar Pemrograman', 2, '18'),
('TIF018-19', 'Praktikum Pemrograman I', 1, '18'),
('TIF019-19', 'Sistem Informasi', 2, '16'),
('TIF020-19', 'Organisasi dan Arsitektur Komputer (Gel 1)', 4, '18'),
('TIF021-19', 'Sistem Multimedia (Teori)', 2, '15'),
('TIF022-19', 'Komunikasi Data', 3, '17'),
('TIF023-19', 'Analisis dan Strategi Algoritma', 2, '17'),
('TIF024-19', 'Pemrograman Berorientasi Objek', 3, '17'),
('TIF025-19', 'Pengantar Teknologi Informasi (E-Learning) (Gel 1)', 2, '18'),
('TIF026-19', 'Temu Kembali Informasi', 3, '16'),
('TIF028-19', 'Keamanan Jaringan', 3, '16'),
('TIF029-19', 'Troubleshooting & Administrasi Sistem', 3, '17'),
('TIF030-19', 'Logika Informatika', 2, '18'),
('TIF031-19', 'Logika Informatika (Gel 1)', 2, '18'),
('TIF032-19', 'Matematika', 2, '18'),
('TIF033-19', 'Matematika (Gel 1)', 2, '18'),
('TIF034-19', 'Bahasa Inggris II', 2, '17'),
('TIF035-19', 'Dasar-Dasar Akuntansi', 4, '18'),
('TIF036-19', 'Pendidikan Jasmani dan Olahraga', 2, '18'),
('TIF037-19', 'Pendidikan Jasmani dan Olahraga (Gel 1)', 2, '18'),
('TIF038-19', 'Pancasila dan Kewarganegaraan (Gel 1)', 3, '18'),
('TIF039-19', 'Aplikasi Komputer (Gel 1)', 2, '18'),
('TIF040-19', 'Aplikasi Komputer', 2, '18');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_pengumuman`
--

CREATE TABLE `tbl_pengumuman` (
  `id` int(11) NOT NULL,
  `judul` text NOT NULL,
  `tanggal` date NOT NULL,
  `konten` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_pengumuman`
--

INSERT INTO `tbl_pengumuman` (`id`, `judul`, `tanggal`, `konten`) VALUES
(12, 'Francis Ajak Milenial Lampung Kuliah di Luar Negeri dengan Daftar di Darmajaya', '2020-07-05', '  <p style=\"margin-right: 0px; margin-bottom: 9px; margin-left: 0px; color: rgb(102, 102, 102); font-family: Roboto, sans-serif; text-align: justify;\">BANDARLAMPUNG – Mahasiswa asing asal Kenya, Francis Mukemba Mwau mengajak milenial di Lampung dan Indonesia untuk mengejar beasiswa kuliah ke luar negeri.</p><p style=\"margin-right: 0px; margin-bottom: 9px; margin-left: 0px; color: rgb(102, 102, 102); font-family: Roboto, sans-serif; text-align: justify;\">Hal ini disampaikannya dalam webinar International Office Institut Informatika dan Bisnis (IIB) Darmajaya dengan topik Kuliah di Luar Negeri? Bisa! melalui zoom meeting Senin, (29/6/20).</p><p style=\"margin-right: 0px; margin-bottom: 9px; margin-left: 0px; color: rgb(102, 102, 102); font-family: Roboto, sans-serif; text-align: justify;\">Francis mengatakan untuk mendapatkan kesempatan kuliah di luar negeri dengan mendaftar melalui beasiswa. “Kita bisa melihat melalui website untuk mengirimkan persyaratan dalam mendaftar kuliah di luar negeri dengan mendapatkan beasiswa,” ucap dia dengan bahasa Inggrisnya.</p><p style=\"margin-right: 0px; margin-bottom: 9px; margin-left: 0px; color: rgb(102, 102, 102); font-family: Roboto, sans-serif; text-align: justify;\">Menurutnya, beberapa persyaratan yang harus disiapkan untuk mendaftar beasiswa. “Biodata diri, berkas akademik, pasport, dan surat rekomendasi. Dengan memperoleh beasiswa juga kita dapat berkembang dan suka dengan kebudayaan di Indonesia. Di Lampung kalian juga berkesempatan kuliah di luar negeri dengan gabung di IIB Darmajaya melalui program internasional,” ungkapnya.</p><p style=\"margin-right: 0px; margin-bottom: 9px; margin-left: 0px; color: rgb(102, 102, 102); font-family: Roboto, sans-serif; text-align: justify;\">Franc –biasa dia disapa – menerangkan selama di Indonesia dirinya telah banyak mempelajari beberapa bahasa. “Di Indonesia dapat mempelajari bahasa Sunda, Jawa, Lampung dan lainnya,” ujarnya.</p><p style=\"margin-right: 0px; margin-bottom: 9px; margin-left: 0px; color: rgb(102, 102, 102); font-family: Roboto, sans-serif; text-align: justify;\">Kuliah di IIB Darmajaya, Franc memperoleh beasiswa dalam Program Pascasarjana Manajemen. “Saya mendapatkan beasiswa dari IIB Darmajaya. Untuk bahasa, juga memang sulit awalnya tetapi kita berusaha pasti bisa,” tuturnya.</p><p style=\"margin-right: 0px; margin-bottom: 9px; margin-left: 0px; color: rgb(102, 102, 102); font-family: Roboto, sans-serif; text-align: justify;\">Sementara, Daffa Iqbal Rahmatullah juga membagikan pengalamannya dapat kuliah di luar negeri dengan kesempatan kuliah di IIB Darmajaya. “Saya tidak pernah menyangka dapat kuliah di luar negeri tapi harus mempunyai mimpi sehingga dapat diwujudkan,” ucapnya.</p><p style=\"margin-right: 0px; margin-bottom: 9px; margin-left: 0px; color: rgb(102, 102, 102); font-family: Roboto, sans-serif; text-align: justify;\">Mahasiswa Sistem Informasi IIB Darmajaya ini menerangkan untuk kesempatan yang didapatkannya tersebut dengan seleksi. “Saya ikut seleksi bersama mahasiswa IIB Darmajaya lain. Sebelumnya juga saya tidak begitu lancar dalam berbahasa Inggris tetapi karena usaha gigih dapat berbicara,” ujarnya.</p><p style=\"margin-right: 0px; margin-bottom: 9px; margin-left: 0px; color: rgb(102, 102, 102); font-family: Roboto, sans-serif; text-align: justify;\">Daffa –biasa dia disapa – menjelaskan banyak manfaat yang diperoleh dari kuliah di luar negeri. “Mempelajari budaya mereka dan bahasanya. Saya dapat banyak belajar dengan mahasiswa asing lainnya ketika di Nantong Vocational University (NTVU) Tiongkok,” bebernya.</p><p style=\"margin-right: 0px; margin-bottom: 9px; margin-left: 0px; color: rgb(102, 102, 102); font-family: Roboto, sans-serif; text-align: justify;\">Selain itu, pengetahuan yang diperoleh juga semakin bertambah. “Kesempatan kuliah di luar negeri cuma dapat diperoleh di Darmajaya. Jadi buat teman-teman yang ingin kuliah di luar negeri dapat mendaftar menjadi mahasiswa IIB Darmajaya,” tutupnya.</p>');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_perencanaan`
--

CREATE TABLE `tbl_perencanaan` (
  `id_tmp` int(11) NOT NULL,
  `npm` varchar(20) NOT NULL,
  `kode_kelas` int(3) NOT NULL,
  `angkatan` varchar(3) NOT NULL,
  `status` enum('Di proses') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_perencanaan`
--

INSERT INTO `tbl_perencanaan` (`id_tmp`, `npm`, `kode_kelas`, `angkatan`, `status`) VALUES
(78, '1811010009', 40, '18', 'Di proses'),
(81, '1811010008', 34, '18', 'Di proses'),
(82, '1811010008', 38, '18', 'Di proses');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tbl_baak`
--
ALTER TABLE `tbl_baak`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tbl_dosen`
--
ALTER TABLE `tbl_dosen`
  ADD PRIMARY KEY (`kode_dosen`);

--
-- Indeks untuk tabel `tbl_jadwal`
--
ALTER TABLE `tbl_jadwal`
  ADD PRIMARY KEY (`id_jdwl`),
  ADD KEY `fk_kelas` (`kode_kelas`),
  ADD KEY `fk_npm` (`npm`);

--
-- Indeks untuk tabel `tbl_kaprodi`
--
ALTER TABLE `tbl_kaprodi`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tbl_kelas`
--
ALTER TABLE `tbl_kelas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_mk` (`kode_mk`),
  ADD KEY `fk_dosen` (`kode_dosen`),
  ADD KEY `fk_kelompok` (`kode_kelompok`);

--
-- Indeks untuk tabel `tbl_kelompok`
--
ALTER TABLE `tbl_kelompok`
  ADD PRIMARY KEY (`kode_kelompok`);

--
-- Indeks untuk tabel `tbl_mahasiswa`
--
ALTER TABLE `tbl_mahasiswa`
  ADD PRIMARY KEY (`npm`);

--
-- Indeks untuk tabel `tbl_matakuliah`
--
ALTER TABLE `tbl_matakuliah`
  ADD PRIMARY KEY (`kode_mk`);

--
-- Indeks untuk tabel `tbl_pengumuman`
--
ALTER TABLE `tbl_pengumuman`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tbl_perencanaan`
--
ALTER TABLE `tbl_perencanaan`
  ADD PRIMARY KEY (`id_tmp`),
  ADD KEY `fk_kode_kelas` (`kode_kelas`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tbl_jadwal`
--
ALTER TABLE `tbl_jadwal`
  MODIFY `id_jdwl` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT untuk tabel `tbl_kelas`
--
ALTER TABLE `tbl_kelas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT untuk tabel `tbl_kelompok`
--
ALTER TABLE `tbl_kelompok`
  MODIFY `kode_kelompok` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `tbl_pengumuman`
--
ALTER TABLE `tbl_pengumuman`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT untuk tabel `tbl_perencanaan`
--
ALTER TABLE `tbl_perencanaan`
  MODIFY `id_tmp` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `tbl_jadwal`
--
ALTER TABLE `tbl_jadwal`
  ADD CONSTRAINT `fk_kelas` FOREIGN KEY (`kode_kelas`) REFERENCES `tbl_kelas` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_npm` FOREIGN KEY (`npm`) REFERENCES `tbl_mahasiswa` (`npm`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `tbl_kelas`
--
ALTER TABLE `tbl_kelas`
  ADD CONSTRAINT `fk_dosen` FOREIGN KEY (`kode_dosen`) REFERENCES `tbl_dosen` (`kode_dosen`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_kelompok` FOREIGN KEY (`kode_kelompok`) REFERENCES `tbl_kelompok` (`kode_kelompok`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_mk` FOREIGN KEY (`kode_mk`) REFERENCES `tbl_matakuliah` (`kode_mk`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `tbl_perencanaan`
--
ALTER TABLE `tbl_perencanaan`
  ADD CONSTRAINT `fk_kode_kelas` FOREIGN KEY (`kode_kelas`) REFERENCES `tbl_kelas` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
