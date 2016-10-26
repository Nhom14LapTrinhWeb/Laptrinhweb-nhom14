-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Oct 26, 2016 at 04:45 PM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 7.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hoclaptrinhonline`
--

-- --------------------------------------------------------

--
-- Table structure for table `bainop`
--

CREATE TABLE `bainop` (
  `Tentaikhoan` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Mabaitap` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `Diem` float DEFAULT NULL,
  `Thoigiannop` date DEFAULT NULL,
  `mota` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `baitap`
--

CREATE TABLE `baitap` (
  `Mabaitap` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `Tenbaitap` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Noidung` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Hannop` date DEFAULT NULL,
  `Makhoahoc` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `danhgia`
--

CREATE TABLE `danhgia` (
  `Tentaikhoan` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Makhoahoc` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `MaGV` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Noidung` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `gv_nn`
--

CREATE TABLE `gv_nn` (
  `Mangonngu` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `Tentaikhoan` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `khoahoc`
--

CREATE TABLE `khoahoc` (
  `Makhoahoc` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `Tenkhoahoc` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Hocphi` int(11) DEFAULT NULL,
  `Lichhoc` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Thoigianmo` date DEFAULT NULL,
  `Thoigianketthuc` date DEFAULT NULL,
  `Tengiangvien` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Mangonngu` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Mota` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `khoahoc`
--

INSERT INTO `khoahoc` (`Makhoahoc`, `Tenkhoahoc`, `Hocphi`, `Lichhoc`, `Thoigianmo`, `Thoigianketthuc`, `Tengiangvien`, `Mangonngu`, `Mota`) VALUES
('KH01', 'Lập trình C++', 0, '18h Thứ 2,4,6', '2016-10-30', '2016-12-30', 'tre', 'NN01', 'Lớp học sắp mở rồi');

-- --------------------------------------------------------

--
-- Table structure for table `loaitailieu`
--

CREATE TABLE `loaitailieu` (
  `Maloai` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `Tenloai` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Mota` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ngonngu`
--

CREATE TABLE `ngonngu` (
  `Mangonngu` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `Tenngonngu` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `ngonngu`
--

INSERT INTO `ngonngu` (`Mangonngu`, `Tenngonngu`) VALUES
('NN01', 'C++');

-- --------------------------------------------------------

--
-- Table structure for table `taikhoan`
--

CREATE TABLE `taikhoan` (
  `Tentaikhoan` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Hoten` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Ngaysinh` date DEFAULT NULL,
  `Diachi` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Email` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SDT` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Matkhau` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Mavaitro` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `taikhoan`
--

INSERT INTO `taikhoan` (`Tentaikhoan`, `Hoten`, `Ngaysinh`, `Diachi`, `Email`, `SDT`, `Matkhau`, `Mavaitro`) VALUES
('abc', 'a b c', '1990-12-06', 'abcxyz', 'huynhphihung', '0963560780', '123', 'VT01'),
('tre', 'fggfgf ', '2016-10-06', 'gggggg', 'qqqqqqqqqqq', '45456456456', '123', 'VT02');

-- --------------------------------------------------------

--
-- Table structure for table `tailieu`
--

CREATE TABLE `tailieu` (
  `Matailieu` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `Tentailieu` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Link` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Maloaitailieu` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Makhoahoc` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `thamgia`
--

CREATE TABLE `thamgia` (
  `Tentaikhoan` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Makhoahoc` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `Diemtong` float DEFAULT NULL,
  `Tinhtranghocphi` int(11) DEFAULT NULL,
  `Trangthai` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vaitro`
--

CREATE TABLE `vaitro` (
  `Mavaitro` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `Tenvaitro` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `vaitro`
--

INSERT INTO `vaitro` (`Mavaitro`, `Tenvaitro`) VALUES
('VT01', 'học viên'),
('VT02', 'giảng viên'),
('VT03', 'quản trị viên');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bainop`
--
ALTER TABLE `bainop`
  ADD PRIMARY KEY (`Mabaitap`),
  ADD KEY `Tentaikhoan` (`Tentaikhoan`);

--
-- Indexes for table `baitap`
--
ALTER TABLE `baitap`
  ADD PRIMARY KEY (`Mabaitap`),
  ADD KEY `Makhoahoc` (`Makhoahoc`);

--
-- Indexes for table `danhgia`
--
ALTER TABLE `danhgia`
  ADD PRIMARY KEY (`Tentaikhoan`,`Makhoahoc`,`MaGV`),
  ADD KEY `MaGV` (`MaGV`),
  ADD KEY `Makhoahoc` (`Makhoahoc`);

--
-- Indexes for table `gv_nn`
--
ALTER TABLE `gv_nn`
  ADD PRIMARY KEY (`Mangonngu`,`Tentaikhoan`),
  ADD KEY `Tentaikhoan` (`Tentaikhoan`);

--
-- Indexes for table `khoahoc`
--
ALTER TABLE `khoahoc`
  ADD PRIMARY KEY (`Makhoahoc`),
  ADD KEY `Mangonngu` (`Mangonngu`),
  ADD KEY `khoahoc_ibfk_2` (`Tengiangvien`);

--
-- Indexes for table `loaitailieu`
--
ALTER TABLE `loaitailieu`
  ADD PRIMARY KEY (`Maloai`);

--
-- Indexes for table `ngonngu`
--
ALTER TABLE `ngonngu`
  ADD PRIMARY KEY (`Mangonngu`);

--
-- Indexes for table `taikhoan`
--
ALTER TABLE `taikhoan`
  ADD PRIMARY KEY (`Tentaikhoan`),
  ADD KEY `Mavaitro` (`Mavaitro`);

--
-- Indexes for table `tailieu`
--
ALTER TABLE `tailieu`
  ADD PRIMARY KEY (`Matailieu`),
  ADD KEY `Maloaitailieu` (`Maloaitailieu`),
  ADD KEY `Makhoahoc` (`Makhoahoc`);

--
-- Indexes for table `thamgia`
--
ALTER TABLE `thamgia`
  ADD PRIMARY KEY (`Tentaikhoan`,`Makhoahoc`),
  ADD KEY `Makhoahoc` (`Makhoahoc`);

--
-- Indexes for table `vaitro`
--
ALTER TABLE `vaitro`
  ADD PRIMARY KEY (`Mavaitro`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `bainop`
--
ALTER TABLE `bainop`
  ADD CONSTRAINT `bainop_ibfk_1` FOREIGN KEY (`Tentaikhoan`) REFERENCES `taikhoan` (`Tentaikhoan`);

--
-- Constraints for table `baitap`
--
ALTER TABLE `baitap`
  ADD CONSTRAINT `baitap_ibfk_1` FOREIGN KEY (`Makhoahoc`) REFERENCES `khoahoc` (`Makhoahoc`);

--
-- Constraints for table `danhgia`
--
ALTER TABLE `danhgia`
  ADD CONSTRAINT `danhgia_ibfk_1` FOREIGN KEY (`Tentaikhoan`) REFERENCES `taikhoan` (`Tentaikhoan`),
  ADD CONSTRAINT `danhgia_ibfk_2` FOREIGN KEY (`MaGV`) REFERENCES `taikhoan` (`Tentaikhoan`),
  ADD CONSTRAINT `danhgia_ibfk_3` FOREIGN KEY (`Makhoahoc`) REFERENCES `khoahoc` (`Makhoahoc`);

--
-- Constraints for table `gv_nn`
--
ALTER TABLE `gv_nn`
  ADD CONSTRAINT `gv_nn_ibfk_1` FOREIGN KEY (`Mangonngu`) REFERENCES `ngonngu` (`Mangonngu`),
  ADD CONSTRAINT `gv_nn_ibfk_2` FOREIGN KEY (`Tentaikhoan`) REFERENCES `taikhoan` (`Tentaikhoan`);

--
-- Constraints for table `khoahoc`
--
ALTER TABLE `khoahoc`
  ADD CONSTRAINT `khoahoc_ibfk_1` FOREIGN KEY (`Mangonngu`) REFERENCES `ngonngu` (`Mangonngu`),
  ADD CONSTRAINT `khoahoc_ibfk_2` FOREIGN KEY (`Tengiangvien`) REFERENCES `taikhoan` (`Tentaikhoan`);

--
-- Constraints for table `taikhoan`
--
ALTER TABLE `taikhoan`
  ADD CONSTRAINT `taikhoan_ibfk_1` FOREIGN KEY (`Mavaitro`) REFERENCES `vaitro` (`Mavaitro`);

--
-- Constraints for table `tailieu`
--
ALTER TABLE `tailieu`
  ADD CONSTRAINT `tailieu_ibfk_1` FOREIGN KEY (`Maloaitailieu`) REFERENCES `loaitailieu` (`Maloai`),
  ADD CONSTRAINT `tailieu_ibfk_2` FOREIGN KEY (`Makhoahoc`) REFERENCES `khoahoc` (`Makhoahoc`);

--
-- Constraints for table `thamgia`
--
ALTER TABLE `thamgia`
  ADD CONSTRAINT `thamgia_ibfk_1` FOREIGN KEY (`Tentaikhoan`) REFERENCES `taikhoan` (`Tentaikhoan`),
  ADD CONSTRAINT `thamgia_ibfk_2` FOREIGN KEY (`Makhoahoc`) REFERENCES `khoahoc` (`Makhoahoc`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
