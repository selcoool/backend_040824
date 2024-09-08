-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 05, 2024 at 08:09 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project_airbnb_050824`
--

-- --------------------------------------------------------

--
-- Table structure for table `binhluan`
--

CREATE TABLE `binhluan` (
  `id` int(11) NOT NULL,
  `maPhong` int(11) NOT NULL,
  `maNguoiBinhLuan` int(11) NOT NULL,
  `ngayBinhLuan` varchar(255) DEFAULT NULL,
  `noiDung` varchar(255) DEFAULT NULL,
  `saoBinhLuan` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `binhluan`
--

INSERT INTO `binhluan` (`id`, `maPhong`, `maNguoiBinhLuan`, `ngayBinhLuan`, `noiDung`, `saoBinhLuan`) VALUES
(1, 1, 1, '2023-08-01', 'Amazing place, highly recommend!', 5),
(2, 2, 2, '2023-08-02', 'Very comfortable and great location.', 4),
(3, 3, 3, '2023-08-03', 'Perfect for families!', 5),
(4, 4, 4, '2023-08-04', 'Cozy and affordable.', 4),
(5, 5, 5, '2023-08-05', 'Great room with all amenities.', 5),
(6, 6, 6, '2023-08-06', 'Luxurious stay with beautiful views.', 5),
(7, 7, 7, '2023-08-07', 'Modern and well-equipped.', 4),
(8, 8, 8, '2023-08-08', 'Private and relaxing.', 5),
(9, 9, 9, '2023-08-09', 'Charming and well-maintained.', 4),
(10, 10, 10, '2023-08-10', 'Trendy and stylish.', 4);

-- --------------------------------------------------------

--
-- Table structure for table `datphong`
--

CREATE TABLE `datphong` (
  `id` int(11) NOT NULL,
  `maPhong` int(11) NOT NULL,
  `ngayDen` datetime DEFAULT NULL,
  `ngayDi` datetime DEFAULT NULL,
  `soLuongKhach` int(11) DEFAULT NULL,
  `maNguoiDung` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `datphong`
--

INSERT INTO `datphong` (`id`, `maPhong`, `ngayDen`, `ngayDi`, `soLuongKhach`, `maNguoiDung`) VALUES
(1, 1, '2024-08-10 14:00:00', '2024-08-15 12:00:00', 2, 1),
(2, 2, '2024-08-11 14:00:00', '2024-08-16 12:00:00', 2, 2),
(3, 3, '2024-08-12 14:00:00', '2024-08-17 12:00:00', 4, 3),
(4, 4, '2024-08-13 14:00:00', '2024-08-18 12:00:00', 1, 4),
(5, 5, '2024-08-14 14:00:00', '2024-08-19 12:00:00', 2, 5),
(6, 6, '2024-08-15 14:00:00', '2024-08-20 12:00:00', 2, 6),
(7, 7, '2024-08-16 14:00:00', '2024-08-21 12:00:00', 1, 7),
(8, 8, '2024-08-17 14:00:00', '2024-08-22 12:00:00', 2, 8),
(9, 9, '2024-08-18 14:00:00', '2024-08-23 12:00:00', 1, 9),
(10, 10, '2024-08-19 14:00:00', '2024-08-24 12:00:00', 1, 10);

-- --------------------------------------------------------

--
-- Table structure for table `nguoidung`
--

CREATE TABLE `nguoidung` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `pass_word` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `birth_day` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `role` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `nguoidung`
--

INSERT INTO `nguoidung` (`id`, `name`, `email`, `pass_word`, `phone`, `birth_day`, `gender`, `role`) VALUES
(1, 'John Doe', 'john.doe@example.com', 'password123', '1234567890', '1990-01-01', 'Male', 'user'),
(2, 'Jane Smith', 'jane.smith@example.com', 'password123', '2345678901', '1992-02-02', 'Female', 'user'),
(3, 'Alice Johnson', 'alice.johnson@example.com', 'password123', '3456789012', '1985-03-03', 'Female', 'user'),
(4, 'Bob Brown', 'bob.brown@example.com', 'password123', '4567890123', '1988-04-04', 'Male', 'user'),
(5, 'Charlie Davis', 'charlie.davis@example.com', 'password123', '5678901234', '1991-05-05', 'Male', 'user'),
(6, 'Eve White', 'eve.white@example.com', 'password123', '6789012345', '1989-06-06', 'Female', 'user'),
(7, 'Frank Black', 'frank.black@example.com', 'password123', '7890123456', '1993-07-07', 'Male', 'user'),
(8, 'Grace Green', 'grace.green@example.com', 'password123', '8901234567', '1987-08-08', 'Female', 'user'),
(9, 'Hank Blue', 'hank.blue@example.com', 'password123', '9012345678', '1994-09-09', 'Male', 'user'),
(10, 'Ivy Red', 'ivy.red@example.com', 'password123', '0123456789', '1995-10-10', 'Female', 'user');

-- --------------------------------------------------------

--
-- Table structure for table `phong`
--

CREATE TABLE `phong` (
  `id` int(11) NOT NULL,
  `tenPhong` varchar(255) DEFAULT NULL,
  `khach` int(11) NOT NULL,
  `phongNgu` int(11) DEFAULT NULL,
  `giuong` int(11) DEFAULT NULL,
  `phongTam` int(11) DEFAULT NULL,
  `moTa` varchar(255) DEFAULT NULL,
  `giaTien` int(11) DEFAULT NULL,
  `mayGiat` tinyint(1) DEFAULT NULL,
  `banLa` tinyint(1) DEFAULT NULL,
  `tivi` tinyint(1) DEFAULT NULL,
  `dieuHoa` tinyint(1) DEFAULT NULL,
  `wifi` tinyint(1) DEFAULT NULL,
  `bep` tinyint(1) DEFAULT NULL,
  `doXe` tinyint(1) DEFAULT NULL,
  `hoBoi` tinyint(1) DEFAULT NULL,
  `banUi` tinyint(1) DEFAULT NULL,
  `maViTri` int(11) NOT NULL,
  `hinhAnh` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `phong`
--

INSERT INTO `phong` (`id`, `tenPhong`, `khach`, `phongNgu`, `giuong`, `phongTam`, `moTa`, `giaTien`, `mayGiat`, `banLa`, `tivi`, `dieuHoa`, `wifi`, `bep`, `doXe`, `hoBoi`, `banUi`, `maViTri`, `hinhAnh`) VALUES
(1, 'Luxury Suite', 1, 2, 2, 1, 'A luxurious suite with sea view', 2000000, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 'luxury_suite.jpg'),
(2, 'Deluxe Room', 2, 1, 1, 1, 'A comfortable room with city view', 1500000, 0, 1, 1, 1, 1, 0, 1, 0, 1, 2, 'deluxe_room.jpg'),
(3, 'Family Villa', 3, 3, 3, 2, 'A spacious villa for the whole family', 3000000, 1, 1, 1, 1, 1, 1, 1, 1, 1, 3, 'family_villa.jpg'),
(4, 'Single Room', 4, 1, 1, 1, 'A cozy room for solo travelers', 1000000, 0, 0, 1, 1, 1, 0, 0, 0, 0, 4, 'single_room.jpg'),
(5, 'Double Room', 5, 1, 1, 1, 'A room with two beds', 1200000, 0, 1, 1, 1, 1, 0, 1, 0, 1, 5, 'double_room.jpg'),
(6, 'Penthouse Suite', 6, 2, 1, 1, 'A luxurious penthouse with panoramic views', 5000000, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, 'penthouse_suite.jpg'),
(7, 'Studio Apartment', 7, 1, 1, 1, 'A modern studio apartment', 1800000, 1, 1, 1, 1, 1, 1, 1, 1, 1, 7, 'studio_apartment.jpg'),
(8, 'Bungalow', 8, 2, 1, 1, 'A private bungalow', 2500000, 1, 1, 1, 1, 1, 1, 1, 1, 1, 8, 'bungalow.jpg'),
(9, 'Cottage', 9, 1, 1, 1, 'A charming cottage', 2200000, 1, 1, 1, 1, 1, 1, 1, 1, 1, 9, 'cottage.jpg'),
(10, 'Loft', 10, 1, 1, 1, 'A trendy loft', 1700000, 1, 1, 1, 1, 1, 1, 1, 1, 1, 10, 'loft.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `vitri`
--

CREATE TABLE `vitri` (
  `id` int(11) NOT NULL,
  `tenViTri` varchar(255) DEFAULT NULL,
  `tinhThanh` varchar(255) DEFAULT NULL,
  `quocGia` varchar(255) DEFAULT NULL,
  `hinhAnh` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `vitri`
--

INSERT INTO `vitri` (`id`, `tenViTri`, `tinhThanh`, `quocGia`, `hinhAnh`) VALUES
(1, 'Beachfront', 'Da Nang', 'Vietnam', 'beachfront.jpg'),
(2, 'City Center', 'Ho Chi Minh', 'Vietnam', 'city_center.jpg'),
(3, 'Mountain View', 'Sa Pa', 'Vietnam', 'mountain_view.jpg'),
(4, 'Riverside', 'Hoi An', 'Vietnam', 'riverside.jpg'),
(5, 'Old Quarter', 'Hanoi', 'Vietnam', 'old_quarter.jpg'),
(6, 'Countryside', 'Mai Chau', 'Vietnam', 'countryside.jpg'),
(7, 'Island Paradise', 'Phu Quoc', 'Vietnam', 'island_paradise.jpg'),
(8, 'Historic District', 'Hue', 'Vietnam', 'historic_district.jpg'),
(9, 'Beach Resort', 'Nha Trang', 'Vietnam', 'beach_resort.jpg'),
(10, 'Lakeside', 'Da Lat', 'Vietnam', 'lakeside.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `binhluan`
--
ALTER TABLE `binhluan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `maPhong` (`maPhong`),
  ADD KEY `maNguoiBinhLuan` (`maNguoiBinhLuan`);

--
-- Indexes for table `datphong`
--
ALTER TABLE `datphong`
  ADD PRIMARY KEY (`id`),
  ADD KEY `maPhong` (`maPhong`),
  ADD KEY `maNguoiDung` (`maNguoiDung`);

--
-- Indexes for table `nguoidung`
--
ALTER TABLE `nguoidung`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `phong`
--
ALTER TABLE `phong`
  ADD PRIMARY KEY (`id`),
  ADD KEY `khach` (`khach`),
  ADD KEY `maViTri` (`maViTri`);

--
-- Indexes for table `vitri`
--
ALTER TABLE `vitri`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `binhluan`
--
ALTER TABLE `binhluan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `datphong`
--
ALTER TABLE `datphong`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `nguoidung`
--
ALTER TABLE `nguoidung`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `phong`
--
ALTER TABLE `phong`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `vitri`
--
ALTER TABLE `vitri`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `binhluan`
--
ALTER TABLE `binhluan`
  ADD CONSTRAINT `binhluan_ibfk_1` FOREIGN KEY (`maPhong`) REFERENCES `phong` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `binhluan_ibfk_2` FOREIGN KEY (`maNguoiBinhLuan`) REFERENCES `nguoidung` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `datphong`
--
ALTER TABLE `datphong`
  ADD CONSTRAINT `datphong_ibfk_1` FOREIGN KEY (`maPhong`) REFERENCES `phong` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `datphong_ibfk_2` FOREIGN KEY (`maNguoiDung`) REFERENCES `nguoidung` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `phong`
--
ALTER TABLE `phong`
  ADD CONSTRAINT `phong_ibfk_1` FOREIGN KEY (`khach`) REFERENCES `nguoidung` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `phong_ibfk_2` FOREIGN KEY (`maViTri`) REFERENCES `vitri` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
