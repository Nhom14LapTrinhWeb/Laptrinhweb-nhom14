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
  `Mota` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Hinhanh` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Loaikhoahoc` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Tinhtrang` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `khoahoc`
--

INSERT INTO `khoahoc` (`Makhoahoc`, `Tenkhoahoc`, `Hocphi`, `Lichhoc`, `Thoigianmo`, `Thoigianketthuc`, `Tengiangvien`, `Mangonngu`, `Mota`, `Hinhanh`, `Loaikhoahoc`, `Tinhtrang`) VALUES
('KH01', 'Lập trình C++', 1000000, '12h30 Thứ 3,5,7', '2016-10-30', '2016-12-31', 'nguyenhadong', 'NN01', 'Lớp học C++', 'images/9.png', 'LKH01', 'TT01'),
('KH02', 'Lập trình C#', 500000, '18h Thứ 3,5,7', '2016-10-30', '2016-12-30', 'Nguyenvantien', 'NN02', 'Lớp học chuẩn bị mở', 'images/1.png', 'LKH01', 'TT02'),
('KH03', 'Lập trình PHP', 1000000, '12h30 Thứ 2,4,6', '2016-10-30', '2016-12-31', 'Nguyenvantien', 'NN03', 'Lớp PHP', 'images/3.png', 'LKH02', 'TT03'),
('KH04', 'Lập trình ASP', 1000000, '12h30 Thứ 3,5,7', '2016-10-30', '2016-12-30', 'nguyenhadong', 'NN04', 'Lớp ASP.NET', 'images/4.png', 'LKH02', 'TT02'),
('KH05', 'Lập trình IOS', 3000000, '14h Thứ 2,4,6', '2016-10-30', '2017-01-31', 'Nguyenvantien', 'NN06', 'Lớp học IOS', 'images/6.jpg', 'LKH03', 'TT01');

-- --------------------------------------------------------

--
-- Table structure for table `loaikhoahoc`
--

CREATE TABLE `loaikhoahoc` (
  `LoaiKH` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `Tenloai` varchar(20) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `loaikhoahoc`
--

INSERT INTO `loaikhoahoc` (`LoaiKH`, `Tenloai`) VALUES
('LKH01', 'Lập trình Cơ bản'),
('LKH02', 'Lập trình WEBSITE'),
('LKH03', 'Lập trình Di động'),
('LKH04', 'Lập trình Phần mềm');

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
('NN01', 'C++'),
('NN02', 'C#'),
('NN03', 'PHP'),
('NN04', 'ASP.NET'),
('NN05', 'Android'),
('NN06', 'IOS');

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
('admin', 'Tao la ad', '1990-01-27', 'My xuan', 'hung', '0963457892', '123', 'VT03'),
('huynhphihung', 'huỳnh phi hùng', '1995-06-29', 'gggggg', 'huynhphihung@gmail.com', '0963560780', '123', 'VT01'),
('nguyenhadong', 'Nguyễn hà đông', '2016-10-06', 'sài gòn', 'nguyenhadong@gmail.com', '0188497852', '123', 'VT02'),
('Nguyenvantien', 'nguyễn văn tiến', '1993-10-27', 'Sài gòn', 'nguyenvantien@gmail.com', '0964782159', '1234', 'VT02');

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
  ADD KEY `bainop_ibfk_1` (`Tentaikhoan`);

--
-- Indexes for table `baitap`
--
ALTER TABLE `baitap`
  ADD PRIMARY KEY (`Mabaitap`),
  ADD KEY `baitap_ibfk_1` (`Makhoahoc`);

--
-- Indexes for table `danhgia`
--
ALTER TABLE `danhgia`
  ADD PRIMARY KEY (`Tentaikhoan`,`Makhoahoc`,`MaGV`),
  ADD KEY `Danhgia_ibfk_2` (`Makhoahoc`),
  ADD KEY `Danhgia_ibfk_3` (`MaGV`);

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
  ADD KEY `khoahoc_ibfk_1` (`Mangonngu`),
  ADD KEY `khoahoc_ibfk_2` (`Tengiangvien`),
  ADD KEY `khoahoc_ibfk_3` (`Loaikhoahoc`);

--
-- Indexes for table `loaikhoahoc`
--
ALTER TABLE `loaikhoahoc`
  ADD PRIMARY KEY (`LoaiKH`,`Tenloai`),
  ADD KEY `loaikhoahoc_ibfk_1` (`Tenloai`);

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
  ADD KEY `taikhoan_ibfk_1` (`Mavaitro`);

--
-- Indexes for table `tailieu`
--
ALTER TABLE `tailieu`
  ADD PRIMARY KEY (`Matailieu`),
  ADD KEY `tailieu_ibfk_1` (`Maloaitailieu`),
  ADD KEY `tailieu_ibfk_2` (`Makhoahoc`);

--
-- Indexes for table `thamgia`
--
ALTER TABLE `thamgia`
  ADD PRIMARY KEY (`Tentaikhoan`,`Makhoahoc`),
  ADD KEY `thamgia_ibfk_2` (`Makhoahoc`);

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
  ADD CONSTRAINT `bainop_ibfk_1` FOREIGN KEY (`Tentaikhoan`) REFERENCES `taikhoan` (`Tentaikhoan`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `baitap`
--
ALTER TABLE `baitap`
  ADD CONSTRAINT `baitap_ibfk_1` FOREIGN KEY (`Makhoahoc`) REFERENCES `khoahoc` (`Makhoahoc`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `danhgia`
--
ALTER TABLE `danhgia`
  ADD CONSTRAINT `Danhgia_ibfk_1` FOREIGN KEY (`Tentaikhoan`) REFERENCES `taikhoan` (`Tentaikhoan`),
  ADD CONSTRAINT `Danhgia_ibfk_2` FOREIGN KEY (`Makhoahoc`) REFERENCES `khoahoc` (`Makhoahoc`),
  ADD CONSTRAINT `Danhgia_ibfk_3` FOREIGN KEY (`MaGV`) REFERENCES `taikhoan` (`Tentaikhoan`);

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
  ADD CONSTRAINT `khoahoc_ibfk_1` FOREIGN KEY (`Mangonngu`) REFERENCES `ngonngu` (`Mangonngu`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `khoahoc_ibfk_2` FOREIGN KEY (`Tengiangvien`) REFERENCES `taikhoan` (`Tentaikhoan`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `khoahoc_ibfk_3` FOREIGN KEY (`Loaikhoahoc`) REFERENCES `loaikhoahoc` (`LoaiKH`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `taikhoan`
--
ALTER TABLE `taikhoan`
  ADD CONSTRAINT `taikhoan_ibfk_1` FOREIGN KEY (`Mavaitro`) REFERENCES `vaitro` (`Mavaitro`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `tailieu`
--
ALTER TABLE `tailieu`
  ADD CONSTRAINT `tailieu_ibfk_1` FOREIGN KEY (`Maloaitailieu`) REFERENCES `loaitailieu` (`Maloai`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `tailieu_ibfk_2` FOREIGN KEY (`Makhoahoc`) REFERENCES `khoahoc` (`Makhoahoc`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `thamgia`
--
ALTER TABLE `thamgia`
  ADD CONSTRAINT `thamgia_ibfk_1` FOREIGN KEY (`Tentaikhoan`) REFERENCES `taikhoan` (`Tentaikhoan`),
  ADD CONSTRAINT `thamgia_ibfk_2` FOREIGN KEY (`Makhoahoc`) REFERENCES `khoahoc` (`Makhoahoc`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;