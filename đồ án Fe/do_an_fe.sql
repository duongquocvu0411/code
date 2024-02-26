-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th9 19, 2023 lúc 04:34 AM
-- Phiên bản máy phục vụ: 10.4.28-MariaDB
-- Phiên bản PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `do_an_fe`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `accountlogin`
--

CREATE TABLE `accountlogin` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `accountlogin`
--

INSERT INTO `accountlogin` (`id`, `email`, `password`, `created_at`, `updated_at`) VALUES
(2, 'quocvu0411@gmail.com', '$2y$10$IIBOhddL1HNEB8H50YwCG.G7CRYj6ezZl6XD1QDDg23HKM81xC6Wy', '2023-09-14 21:11:38', '2023-09-14 21:11:38'),
(3, 'admin@gmail.com', '$2y$10$QAF8AMBKV4vzi1Q8iOl67e4kCW/rHQsWIpJv9qJztf.yphcxuZ0ku', '2023-09-16 21:28:16', '2023-09-16 21:28:16');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `accountlogins`
--

CREATE TABLE `accountlogins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `title` text NOT NULL,
  `size` text NOT NULL,
  `gia` int(11) NOT NULL,
  `soluong` int(11) NOT NULL,
  `tong` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `dkdn_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `cart`
--

INSERT INTO `cart` (`id`, `title`, `size`, `gia`, `soluong`, `tong`, `product_id`, `dkdn_id`) VALUES
(31, 'Đầm xòe xanh peplum phối tay voan DH3639', 'XXL', 299, 1, 299000, 6, 14),
(32, 'Đầm đen peplum phối cổ hồng', 'XXL', 299, 1, 299000, 9, 11),
(36, 'Chân váy đen phối nơ eo', 'XL', 269, 1, 269000, 16, 14),
(37, 'Đầm xòe xanh peplum phối tay voan DH3639', 'XL', 299, 1, 299000, 6, 14),
(39, 'Chân váy kem sữa xếp ly', 'XXL', 269, 1, 269000, 17, 14),
(40, 'Chân váy kem sữa xếp ly', 'S', 269, 1, 269000, 17, 14),
(41, 'Đầm xòe xanh đá tà bóng', 'XL', 299, 1, 299000, 8, 14),
(46, 'Chân váy đen phối nơ eo', 'L', 269, 1, 269000, 16, 11),
(48, 'Đầm đen peplum phối cổ hồng', 'XL', 299, 1, 299000, 9, 8),
(49, 'Đầm đen peplum phối cổ hồng', 'L', 299, 1, 299000, 9, 11),
(50, 'Sơ mi hoa xanh cổ nhún đính hoa', 'XXL', 269, 1, 269000, 14, 11),
(51, 'Đầm xòe xanh đá tà bóng', 'L', 299, 1, 299000, 8, 11),
(53, 'Đầm xòe xanh đá tà bóng', 'L', 299, 1, 299000, 8, 6),
(54, 'Đầm ôm đen phối cổ nơ cách điệu', 'L', 299, 3, 897000, 10, 6),
(55, 'Đầm đen peplum phối cổ hồng', 'XL', 299, 1, 299000, 9, 6),
(56, 'Đầm xòe xanh peplum phối tay voan DH3639', 'XXL', 299, 1, 299000, 6, 4),
(57, 'Đầm đen peplum phối cổ hồng', 'XXL', 299, 1, 299000, 9, 7),
(58, 'Sơ mi trắng tay lỡ xếp ly ngực', 'XXL', 269, 1, 269000, 12, 7),
(199, 'Đầm xoè voan xanh đính hoa ngực', 'S', 399, 1, 399000, 24, 39),
(200, 'Chân váy xoè xanh đính túi giả 2 bên', 'S', 269, 1, 269000, 18, 39),
(201, 'Đầm xòe xanh peplum phối tay voan DH3639', 'S', 299, 1, 299000, 6, 39);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `category`
--

CREATE TABLE `category` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `namecategory` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `category`
--

INSERT INTO `category` (`id`, `namecategory`) VALUES
(1, 'váy đầm công sở'),
(2, 'sơ mi nữ'),
(3, 'Sơ mi nam'),
(5, 'Quần tây nam'),
(7, 'Xả hàng');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `checkouts`
--

CREATE TABLE `checkouts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sanpham` text NOT NULL,
  `sotien` int(11) NOT NULL,
  `nganhang` text NOT NULL,
  `madonhang` int(11) NOT NULL,
  `dkdn_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `checkouts`
--

INSERT INTO `checkouts` (`id`, `sanpham`, `sotien`, `nganhang`, `madonhang`, `dkdn_id`) VALUES
(80, 'Đầm ôm đen phối cổ nơ cách điệu', 329000, 'Techcombank', 716, 39),
(81, 'Đầm ôm đen phối cổ nơ cách điệu', 329000, 'BacABank', 78, 39),
(82, 'Đầm ôm đen phối cổ nơ cách điệu', 329000, 'Eximbank', 749, 39),
(83, 'Đầm ôm đen phối cổ nơ cách điệu', 329000, 'BacABank', 472, 39),
(84, 'Đầm ôm đen phối cổ nơ cách điệu', 329000, 'IVB', 758, 39),
(85, 'Đầm ôm đen phối cổ nơ cách điệu', 329000, 'Maritime Bank', 385, 39),
(86, 'Đầm ôm đen phối cổ nơ cách điệu', 329000, 'VietinBank', 49, 39),
(87, 'Đầm ôm đen phối cổ nơ cách điệu', 329000, 'BIDV', 744, 39),
(88, 'Đầm ôm đen phối cổ nơ cách điệu', 329000, 'Vietcombank', 877, 39),
(89, 'Đầm ôm đen phối cổ nơ cách điệu', 329000, 'TPBank', 378, 39),
(90, 'Đầm ôm đen phối cổ nơ cách điệu', 329000, 'ACB', 961, 39),
(91, 'Đầm ôm đen phối cổ nơ cách điệu', 329000, 'Sacombank', 764, 39),
(92, 'Đầm ôm đen phối cổ nơ cách điệu', 329000, 'SCB', 890, 39),
(93, 'Đầm ôm đen phối cổ nơ cách điệu', 329000, 'Kienlongbank', 807, 39),
(94, 'Đầm ôm đen phối cổ nơ cách điệu', 329000, 'OCB', 506, 39),
(95, 'Đầm ôm đen phối cổ nơ cách điệu', 329000, 'BIDV', 380, 39),
(96, 'Đầm ôm đen phối cổ nơ cách điệu', 329000, 'DongA Bank', 572, 39),
(97, 'Đầm ôm đen phối cổ nơ cách điệu', 329000, 'OCB', 572, 39),
(98, 'Đầm ôm đen phối cổ nơ cách điệu', 329000, 'Kienlongbank', 114, 39),
(99, 'Đầm ôm đen phối cổ nơ cách điệu', 329000, 'SCB', 233, 39),
(100, 'Đầm ôm đen phối cổ nơ cách điệu', 329000, 'Vietcombank', 692, 39),
(101, 'Đầm ôm đen phối cổ nơ cách điệu', 329000, 'SCB', 635, 39),
(102, 'Đầm ôm đen phối cổ nơ cách điệu', 329000, 'Techcombank', 82, 39),
(103, 'Đầm ôm đen phối cổ nơ cách điệu', 329000, 'OCB', 759, 39),
(104, 'Đầm ôm đen phối cổ nơ cách điệu', 329000, 'BIDV', 161, 39),
(105, 'Đầm ôm đen phối cổ nơ cách điệu', 329000, 'BIDV', 161, 39),
(106, 'Đầm ôm đen phối cổ nơ cách điệu', 329000, 'VIB', 33, 39),
(107, 'Đầm ôm đen phối cổ nơ cách điệu', 329000, 'SCB', 855, 39),
(108, 'Đầm ôm đen phối cổ nơ cách điệu', 329000, 'DongA Bank', 983, 39),
(109, 'Đầm ôm đen phối cổ nơ cách điệu', 329000, 'PGBank', 258, 39),
(110, 'Đầm ôm đen phối cổ nơ cách điệu', 329000, 'Techcombank', 335, 39),
(111, 'Đầm ôm đen phối cổ nơ cách điệu', 329000, 'Maritime Bank', 944, 39),
(112, 'Đầm ôm đen phối cổ nơ cách điệu', 329000, 'SCB', 814, 39),
(113, 'Đầm ôm đen phối cổ nơ cách điệu', 329000, 'Kienlongbank', 614, 39),
(114, 'Đầm ôm đen phối cổ nơ cách điệu', 329000, 'PGBank', 3, 39),
(115, 'Đầm ôm đen phối cổ nơ cách điệu', 329000, 'VIB', 312, 39),
(116, 'Đầm ôm đen phối cổ nơ cách điệu', 329000, 'VIB', 31, 39),
(117, 'Đầm ôm đen phối cổ nơ cách điệu', 329000, 'Techcombank', 649, 39),
(118, 'Đầm ôm đen phối cổ nơ cách điệu', 329000, 'SCB', 47, 39),
(119, 'Đầm ôm đen phối cổ nơ cách điệu', 329000, 'SCB', 858, 39),
(120, 'Đầm ôm đen phối cổ nơ cách điệu', 329000, 'PGBank', 410, 39),
(121, 'Đầm ôm đen phối cổ nơ cách điệu', 329000, 'SCB', 300, 39),
(122, 'Đầm ôm đen phối cổ nơ cách điệu', 329000, 'NamABank', 676, 39),
(123, 'Đầm ôm đen phối cổ nơ cách điệu', 329000, 'Techcombank', 553, 39),
(124, 'Đầm ôm đen phối cổ nơ cách điệu', 329000, 'VIB', 378, 39),
(125, 'Đầm ôm đen phối cổ nơ cách điệu', 329000, 'PGBank', 679, 39),
(126, 'Đầm ôm đen phối cổ nơ cách điệu', 329000, 'NamABank', 5, 39),
(127, 'Đầm ôm đen phối cổ nơ cách điệu', 329000, 'Techcombank', 987, 39),
(128, 'Đầm ôm đen phối cổ nơ cách điệu', 329000, 'SCB', 776, 39),
(129, 'Đầm ôm đen phối cổ nơ cách điệu', 329000, 'Vietcombank', 22, 39),
(130, 'Đầm ôm đen phối cổ nơ cách điệu', 329000, 'PGBank', 380, 39),
(131, 'Đầm ôm đen phối cổ nơ cách điệu', 329000, 'VIB', 911, 39),
(132, 'Đầm ôm đen phối cổ nơ cách điệu', 329000, 'NCB', 789, 39),
(133, 'Đầm xoè voan xanh đính hoa ngực, Đầm xoè voan xanh đính hoa ngực, Chân váy đen phối nơ eo, Chân váy đen phối nơ eo', 1366000, 'NamABank', 467, 30),
(134, 'Đầm xoè voan xanh đính hoa ngực, Đầm xoè voan xanh đính hoa ngực, Chân váy đen phối nơ eo, Chân váy đen phối nơ eo', 1366000, 'MSB', 243, 30),
(135, 'Đầm xoè voan xanh đính hoa ngực', 429000, 'PGBank', 292, 30),
(136, 'Đầm xoè voan xanh đính hoa ngực', 429000, 'SCB', 467, 30),
(137, 'Đầm xoè voan xanh đính hoa ngực', 429000, 'NCB', 140, 30),
(138, 'Đầm ôm đen phối cổ nơ cách điệu', 329000, 'NCB', 130, 30),
(139, 'Đầm ôm đen phối cổ nơ cách điệu', 329000, 'NCB', 193, 30),
(140, 'Đầm ôm đen phối cổ nơ cách điệu', 329000, 'NCB', 919, 39),
(141, 'Đầm ôm đen phối cổ nơ cách điệu', 329000, 'NCB', 947, 39),
(142, 'Đầm ôm đen phối cổ nơ cách điệu', 329000, 'NCB', 57, 39),
(143, 'Đầm ôm đen phối cổ nơ cách điệu', 329000, 'NCB', 373, 39),
(144, 'Đầm ôm đen phối cổ nơ cách điệu', 329000, 'NCB', 193, 39),
(145, 'Đầm ôm đen phối cổ nơ cách điệu', 329000, 'NCB', 465, 39),
(146, 'Đầm ôm đen phối cổ nơ cách điệu', 329000, 'NCB', 772, 39),
(147, 'Đầm ôm đen phối cổ nơ cách điệu', 329000, 'NCB', 844, 39),
(148, 'Đầm ôm đen phối cổ nơ cách điệu', 329000, 'NCB', 927, 39),
(149, 'Đầm ôm đen phối cổ nơ cách điệu', 329000, 'NCB', 892, 39),
(150, 'Đầm ôm đen phối cổ nơ cách điệu', 329000, 'NCB', 125, 39),
(151, 'Đầm ôm đen phối cổ nơ cách điệu', 329000, 'NCB', 667, 39),
(152, 'Đầm ôm đen phối cổ nơ cách điệu', 329000, 'NCB', 109, 39),
(153, 'Đầm ôm đen phối cổ nơ cách điệu', 329000, 'NCB', 832, 39),
(154, 'Đầm ôm đen phối cổ nơ cách điệu', 329000, 'NCB', 135, 30),
(155, 'Đầm xoè voan xanh đính hoa ngực', 429000, 'NCB', 224, 39),
(156, 'Đầm ôm đen phối cổ nơ cách điệu', 329000, 'NCB', 320, 30),
(157, 'Đầm xoè voan xanh đính hoa ngực, Chân váy xoè xanh đính túi giả 2 bên, Đầm xòe xanh peplum phối tay voan DH3639', 997000, 'NCB', 129, 39),
(158, 'Đầm xoè voan xanh đính hoa ngực, Chân váy xoè xanh đính túi giả 2 bên, Đầm xòe xanh peplum phối tay voan DH3639', 997000, 'NCB', 861, 39),
(159, 'Đầm xoè voan xanh đính hoa ngực, Chân váy xoè xanh đính túi giả 2 bên, Đầm xòe xanh peplum phối tay voan DH3639', 997000, 'NCB', 134, 39),
(160, 'Đầm xoè voan xanh đính hoa ngực, Chân váy xoè xanh đính túi giả 2 bên, Đầm xòe xanh peplum phối tay voan DH3639', 997000, 'NCB', 333, 39),
(161, 'Đầm xoè voan xanh đính hoa ngực, Chân váy xoè xanh đính túi giả 2 bên, Đầm xòe xanh peplum phối tay voan DH3639', 997000, 'NCB', 997, 39),
(162, 'Đầm xoè voan xanh đính hoa ngực, Chân váy xoè xanh đính túi giả 2 bên, Đầm xòe xanh peplum phối tay voan DH3639', 997000, 'NCB', 736, 39),
(163, 'Đầm xoè voan xanh đính hoa ngực, Chân váy xoè xanh đính túi giả 2 bên, Đầm xòe xanh peplum phối tay voan DH3639', 997000, 'NCB', 623, 39),
(164, 'Đầm xoè voan xanh đính hoa ngực, Chân váy xoè xanh đính túi giả 2 bên, Đầm xòe xanh peplum phối tay voan DH3639', 997000, 'NCB', 188, 39),
(165, 'Đầm ôm đen phối cổ nơ cách điệu', 329000, 'NCB', 611, 30),
(166, 'Đầm ôm đen phối cổ nơ cách điệu', 329000, 'NCB', 596, 30),
(167, 'Đầm ôm đen phối cổ nơ cách điệu', 329000, 'NCB', 94, 30),
(168, 'Đầm ôm đen phối cổ nơ cách điệu', 329000, 'NCB', 484, 30),
(169, 'Đầm ôm đen phối cổ nơ cách điệu', 329000, 'NCB', 761, 30),
(170, 'Đầm ôm đen phối cổ nơ cách điệu', 329000, 'NCB', 633, 30),
(171, 'Đầm ôm đen phối cổ nơ cách điệu', 329000, 'NCB', 243, 30),
(172, 'Đầm xoè voan xanh đính hoa ngực', 429000, 'NCB', 589, 30),
(173, 'Đầm xoè voan xanh đính hoa ngực', 429000, 'NCB', 177, 30),
(174, 'Đầm xoè voan xanh đính hoa ngực', 429000, 'NCB', 395, 30),
(175, 'Đầm xoè voan xanh đính hoa ngực', 429000, 'NCB', 52, 30),
(176, 'Đầm xoè voan xanh đính hoa ngực', 429000, 'NCB', 830, 30),
(177, 'Chân váy xoè xanh đính túi giả 2 bên', 299000, 'NCB', 177, 30),
(178, 'Chân váy xoè xanh đính túi giả 2 bên', 299000, 'NCB', 664, 30),
(179, 'Chân váy xoè xanh đính túi giả 2 bên', 299000, 'NCB', 889, 30),
(180, 'Chân váy xoè xanh đính túi giả 2 bên', 299000, 'NCB', 194, 30),
(181, 'Chân váy xoè xanh đính túi giả 2 bên', 299000, 'NCB', 286, 30),
(182, 'Chân váy xoè xanh đính túi giả 2 bên', 299000, 'NCB', 345, 30),
(183, 'Chân váy xoè xanh đính túi giả 2 bên', 299000, 'NCB', 754, 30),
(184, 'Chân váy xoè xanh đính túi giả 2 bên', 299000, 'NCB', 665, 30),
(185, 'Đầm xoè voan xanh đính hoa ngực', 429000, 'NCB', 487, 30),
(186, 'Đầm xoè xanh cổ vịt cổ giọt lệ DH3539', 329000, 'NCB', 258, 30),
(187, 'Đầm xoè voan xanh đính hoa ngực', 429000, 'NCB', 594, 30),
(188, 'Đầm xoè voan xanh đính hoa ngực', 429000, 'NCB', 708, 30),
(189, 'Đầm xoè voan xanh đính hoa ngực', 429000, 'NCB', 860, 30),
(190, 'Đầm xoè voan xanh đính hoa ngực', 429000, 'NCB', 789, 30),
(191, 'Đầm xoè voan xanh đính hoa ngực', 429000, 'NCB', 832, 30),
(192, 'Đầm xoè voan xanh đính hoa ngực', 429000, 'NCB', 832, 30),
(193, 'Đầm xoè voan xanh đính hoa ngực, Chân váy xoè xanh đính túi giả 2 bên, Đầm xòe xanh peplum phối tay voan DH3639', 997000, 'NCB', 521, 39),
(194, 'Đầm xoè voan xanh đính hoa ngực, Chân váy xoè xanh đính túi giả 2 bên, Đầm xòe xanh peplum phối tay voan DH3639', 997000, 'NCB', 521, 39),
(195, 'Đầm ôm đen phối cổ nơ cách điệu, Đầm xoè xanh cổ vịt cổ giọt lệ DH3539', 628000, 'NCB', 950, 31),
(196, 'Đầm xoè voan xanh đính hoa ngực', 429000, 'NCB', 95, 31),
(197, 'Đầm xoè voan xanh đính hoa ngực', 429000, 'NCB', 208, 30),
(198, 'Đầm xoè voan xanh đính hoa ngực', 429000, 'NCB', 861, 30),
(199, 'Đầm xoè voan xanh đính hoa ngực', 429000, 'NCB', 883, 30),
(200, 'Đầm xoè voan xanh đính hoa ngực', 429000, 'NCB', 509, 30),
(201, 'Đầm xoè voan xanh đính hoa ngực', 429000, 'NCB', 220, 30),
(202, 'Đầm xoè xanh cổ vịt cổ giọt lệ DH3539', 329000, 'NCB', 676, 30),
(203, 'Đầm xoè xanh cổ vịt cổ giọt lệ DH3539', 329000, 'NCB', 625, 30),
(204, 'Đầm ôm đen phối cổ nơ cách điệu', 329000, 'NCB', 645, 30),
(205, 'Đầm ôm đen phối cổ nơ cách điệu', 329000, 'NCB', 668, 30),
(206, 'Đầm xoè voan xanh đính hoa ngực', 429000, 'NCB', 834, 30),
(207, 'Đầm xòe caro công sở phối chân váy đen DH3691', 329000, 'NCB', 865, 30),
(208, 'Đầm xòe caro công sở phối chân váy đen DH3691, Đầm xoè voan xanh đính hoa ngực', 728000, 'NCB', 322, 30),
(209, 'Đầm xòe caro công sở phối chân váy đen DH3691, Đầm xoè voan xanh đính hoa ngực', 728000, 'NCB', 980, 30),
(210, 'Đầm xòe caro công sở phối chân váy đen DH3691, Đầm xoè voan xanh đính hoa ngực', 728000, 'NCB', 847, 30),
(211, 'Đầm xoè voan xanh đính hoa ngực', 429000, 'NCB', 77, 30),
(212, 'Đầm xoè voan xanh đính hoa ngực', 429000, 'NCB', 736, 30),
(213, 'Đầm xoè voan xanh đính hoa ngực', 429000, 'NCB', 25, 30),
(214, 'Đầm xoè voan xanh đính hoa ngực', 429000, 'NCB', 178, 30),
(215, 'Đầm xoè voan xanh đính hoa ngực', 429000, 'BIDV', 178, 30),
(216, 'Đầm xoè voan xanh đính hoa ngực', 429000, 'NCB', 341, 30),
(217, 'Đầm xoè xanh cổ vịt cổ giọt lệ DH3539', 329000, 'NCB', 476, 30),
(218, 'Đầm xoè voan xanh đính hoa ngực', 429000, 'NCB', 333, 30),
(219, 'Đầm xoè voan xanh đính hoa ngực', 429000, 'NCB', 333, 30),
(220, 'Đầm xoè voan xanh đính hoa ngực', 429000, 'NCB', 333, 30),
(221, 'Đầm xoè voan xanh đính hoa ngực', 429000, 'NCB', 452, 30),
(222, 'Đầm xoè voan xanh đính hoa ngực', 429000, 'NCB', 121, 30),
(223, 'Đầm xoè voan xanh đính hoa ngực', 429000, 'NCB', 582, 30),
(224, 'Đầm xoè voan xanh đính hoa ngực', 429000, 'NCB', 928, 30),
(225, 'Đầm xoè voan xanh đính hoa ngực', 429000, 'NCB', 393, 30),
(226, 'Đầm xoè voan xanh đính hoa ngực', 429000, 'NCB', 192, 30),
(227, 'Đầm xoè voan xanh đính hoa ngực', 429000, 'NCB', 919, 30),
(228, 'Đầm xoè voan xanh đính hoa ngực', 429000, 'NCB', 452, 30),
(229, 'Đầm xoè voan xanh đính hoa ngực', 429000, 'NCB', 526, 30),
(230, 'Đầm xòe xanh đá tà bóng', 329000, 'NCB', 907, 30),
(231, 'Đầm xoè voan xanh đính hoa ngực', 429000, 'NCB', 904, 30),
(232, 'Đầm ôm đen phối cổ nơ cách điệu', 329000, 'NCB', 53, 30),
(233, 'Đầm xoè voan xanh đính hoa ngực, Chân váy xoè xanh đính túi giả 2 bên, Đầm xòe xanh peplum phối tay voan DH3639', 997000, 'NCB', 545, 39),
(234, 'Đầm xoè voan xanh đính hoa ngực', 429000, 'NCB', 513, 31),
(235, 'Đầm ôm đen phối cổ nơ cách điệu', 329000, 'NCB', 876, 31),
(236, 'Đầm xòe xanh đá tà bóng', 329000, 'NCB', 394, 31),
(237, 'Chân váy xoè xanh xếp ly 1 bên', 299000, 'NCB', 12, 31),
(238, 'Chân váy xoè xanh xếp ly 1 bên', 299000, 'NCB', 667, 31),
(239, 'Đầm đen peplum phối cổ hồng', 329000, 'NCB', 7208, 31),
(240, 'Đầm ôm đen phối cổ nơ cách điệu', 329000, 'NCB', 7839, 30),
(241, 'Đầm ôm đen phối cổ nơ cách điệu', 329000, 'NCB', 1223, 30),
(242, 'Đầm ôm đen phối cổ nơ cách điệu', 329000, 'NCB', 4949, 30),
(243, 'Đầm xoè xanh cổ vịt cổ giọt lệ DH3539', 329000, 'NCB', 1862, 30),
(244, 'Đầm xoè voan xanh đính hoa ngực', 1227000, 'NCB', 8037, 30),
(245, 'Đầm xoè voan xanh đính hoa ngực', 429000, 'NCB', 1332, 30),
(246, 'Đầm xoè xanh cổ vịt cổ giọt lệ DH3539', 329000, 'NCB', 1099, 30),
(247, 'Đầm xoè voan xanh đính hoa ngực', 429000, 'NCB', 6307, 30),
(248, 'Sơ mi hoa xanh cổ nhún đính hoa', 299000, 'NCB', 483, 30),
(249, 'Đầm đen peplum phối cổ hồng, Đầm xoè voan xanh đính hoa ngực', 728000, 'NCB', 5511, 31);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `detail`
--

CREATE TABLE `detail` (
  `id` int(11) NOT NULL,
  `tinhtrang` text NOT NULL,
  `chatlieu` text NOT NULL,
  `themanhsp` text NOT NULL,
  `product_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `detail`
--

INSERT INTO `detail` (`id`, `tinhtrang`, `chatlieu`, `themanhsp`, `product_id`) VALUES
(10, 'còn hàng', 'Vải Tuyết hàn cao cấp Chất vải co giãn nhẹ, mềm mại, độ dày vừa phải 1 lớp', 'Thiết kế kiểu dáng peplum xòe, chiết eo giả trên rốn, lên dáng chuẩn xinh Thiết kế peplum che khuyết điểm vòng 2, chi tiết cổ nơ xinh xắn Phù hợp môi trường công sở cũng như dạo phố', 6),
(11, 'còn hàng', 'Vải Mango phối tuyết hàn cao cấp Chất vải co giãn nhẹ, mềm mại, độ dày vừa phải 1 lớp', 'Thiết kế kiểu dáng đầm xòe, lên dáng chuẩn xinh, che khuyết điểm tốt Thân trên caro, cổ bẻ dáng V, ngực đính cúc và nơ trang trí, khóa sau tiện lợi, đầm dài 95 - 98cm tùy size  Phù hợp môi trường công sở, đi chơi cũng như dạo phố', 7),
(12, 'còn hàng', 'Vải Tuyết hàn cao cấp Chất vải co giãn 2 chiều nhẹ, mềm mại, độ dày vừa phải 1 lớp', 'Thiết kế dáng xòe, đường eo trên rốn, che khuyết điểm tốt Cổ tròn, đính cúc 1 bên xếp ly độc lạ, đai eo đính liền, thân dưới xếp ly lệch 1 bên độc đáo Đầm khóa sau tiện lợi, dài 95 - 98cm tùy size Phù hợp môi trường công sở, đi chơi cũng như dạo phố', 8),
(13, 'còn hàng', 'Vải Tuyết hàn cao cấp Chất vải co giãn 2 chiều nhẹ, mềm mại, độ dày vừa phải 1 lớp', 'Thiết kế kiểu dáng bút chì, thiết kế peplum xòe, đường eo trên rốn, lên dáng chuẩn xinh tôn dáng Cúc bọc trang trí, nơ cổ đính liền, khóa sau, dài 95 - 98cm tùy size Phù hợp môi trường công sở cũng như dạo phố', 9),
(14, 'còn hàng', 'Vải Tuyết hàn cao cấp Chất vải co giãn 2 chiều nhẹ, mềm mại, độ dày vừa phải 1 lớp', 'Thiết kế kiểu dáng bút chì ôm cơ thể, đường eo trên rốn, tôn da tôn dáng Cổ tròn, viền caro, đính nơ lệch trang trí, cúc bọc đính lệch, khóa sau, dài 95 - 98cm tùy size Phù hợp môi trường công sở cũng như dạo phố', 10),
(15, 'còn hàng', 'Vải Trượt thái cao cấp Chất vải co giãn nhẹ (1-2cm), mềm mại, độ dày vừa phải 1 lớp', 'Thiết kế kiểu dáng xòe, chiết eo giả trên rốn, lên dáng chuẩn xinh Tông màu xanh cổ vịt sang trọng, kết hợp thiết kế cổ giọt lệ xinh xắn Phù hợp môi trường công sở cũng như dạo phố', 11),
(16, 'còn hàng', 'Vải Chéo thái cao cấp Chất vải co giãn nhẹ (1-2 cm), mềm mại, độ dày vừa phải 1 lớp', 'Sơ mi trơn, màu hồng basic dáng xuông, dễ mặc, dễ phối đồ Cổ chữ V, cúc ngọc trang trí đính chết, dài 57 - 60cm tùy size Tông màu nhẹ nhàng phù hợp đi làm, đi chơi hoặc xuống phố', 12),
(17, 'còn hàng', 'Vải Voan hàn cao cấp Chất vải co giãn nhẹ (1-2 cm), mềm mại, độ dày vừa phải 2 lớp', 'Sơ mi hoa nhí basic dáng xuông, dễ mặc, dễ phối đồ Cổ đính nơ, dài 57 - 60cm tùy size Tông màu nhẹ nhàng phù hợp đi làm, đi chơi hoặc xuống phố', 13),
(18, 'còn hàng', 'Vải Voan hàn cao cấp Chất vải co giãn nhẹ (1-2 cm), mềm mại, độ dày vừa phải 2 lớp', 'Sơ mi hao nhí dáng xuông, dễ mặc, dễ phối đồ Cổ chữ V đính hoa thủ công, dài 57 - 60cm tùy size Tông màu nhẹ nhàng phù hợp đi làm, đi chơi hoặc xuống phố', 14),
(19, 'còn hàng', 'Vải Voan hàn cao cấp Chất vải co giãn nhẹ (1-2 cm), mềm mại, độ dày vừa phải 2 lớp', 'Sơ mi hoa nhí xanh dễ mặc, dễ phối đồ Cổ chữ V phối nơ, dài 57 - 60cm tùy size Tông màu nhẹ nhàng phù hợp đi làm, đi chơi hoặc xuống phố', 15),
(20, 'còn hàng', 'Vải Tuyết hàn cao cấp Chất vải co giãn nhẹ (1-2 cm), mềm mại, độ dày vừa phải 1 lớp', 'Thiết kế kiểu dáng ôm không kén dáng, dễ phồi đồ và kèm phụ kiện Chiết nơ eo, cạp eo trên rốn, khóa sau, dài 62 - 65cm tùy size Phù hợp môi trường công sở cũng như dạo phố', 16),
(21, 'còn hàng', 'Vải Tuyết hàn cao cấp Chất vải co giãn nhẹ (1-2 cm), mềm mại, độ dày vừa phải 1 lớp', 'Thiết kế kiểu dáng xếp ly xòe nữ tính, không kén dáng, dễ phồi đồ và kèm phụ kiện Cạp eo trên rốn, khóa sau, dài 65 - 70cm tùy size Phù hợp môi trường công sở cũng như dạo phố', 17),
(22, 'còn hàng', 'Vải Tuyết hàn cao cấp Chất vải co giãn nhẹ (1-2 cm), mềm mại, độ dày vừa phải 1 lớp', 'Thiết kế kiểu dáng xòe nữ tính, không kén dáng, dễ phồi đồ và kèm phụ kiện Hoa thêu dưới, cạp eo trên rốn, khóa sau, dài 65 - 70cm tùy size Phù hợp môi trường công sở cũng như dạo phố', 18),
(23, 'còn hàng', 'Vải Tuyết hàn cao cấp Chất vải co giãn nhẹ (1-2 cm), mềm mại, độ dày vừa phải 1 lớp', 'Thiết kế kiểu dáng xòe nữ tính, không kén dáng, dễ phồi đồ và kèm phụ kiện Cạp eo trên rốn, khóa sau, dài 65 - 70cm tùy size Phù hợp môi trường công sở cũng như dạo phố', 19),
(24, 'còn hàng', 'rthsrtjjsrtj', 'khánh sky', 20),
(27, 'còn hàng', 'Tơ nhật cao cấp- là Chất không nhăn, mặc lên Form, tôn dáng, hợp với công sở Chất vải co giãn 2 chiều nhẹ, mềm mại, độ dày vừa phải 2 lớp', 'Thiết kế đầm xoè, đường eo trên rốn, che khuyết điểm tốt Cổ V phối hoa, đầm khóa sau tiện lợi, dài 90-97cm tùy size Phù hợp môi trường công sở, đi chơi cũng như dạo phố', 24),
(28, 'còn hàng', 'Vải chéo thái cao cấp Chất vải co giãn nhẹ (1-2 cm), mềm mại, độ dày vừa phải', 'Sơ mi cổ đức dài tay, dài 50-55cm tùy size Tông màu nhẹ nhàng phù hợp đi làm, đi chơi hoặc xuống phố', 23),
(29, '2', 'akjdgsaj', 'khong6 co', 30),
(30, '10', 'không có', 'Không nhăn', 32),
(31, '10', 'không có', 'Không nhăn', 33),
(32, '10', 'không có', 'Không nhăn', 34),
(33, '10', 'không có', 'Không nhăn', 35),
(34, '10', 'không có', 'Không nhăn', 36),
(35, '10', 'không có', 'Không nhăn', 37),
(36, '10', 'không có', 'khong6 co', 38),
(37, '10', 'không có', 'Không nhăn', 40),
(38, '10', 'không có', 'Không nhăn', 41),
(39, '10', 'akjdgsaj', 'Không nhăn', 42),
(40, '2', 'sadsad', 'khong6 co', 43);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `dkdn`
--

CREATE TABLE `dkdn` (
  `id` int(11) NOT NULL,
  `email` text NOT NULL,
  `password` text NOT NULL,
  `name` text NOT NULL,
  `sdt` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `dkdn`
--

INSERT INTO `dkdn` (`id`, `email`, `password`, `name`, `sdt`) VALUES
(41, 'admin1@gmail.com', '$2y$10$QNmVtVrI.vX2VT/i9KVYL.JjoU.9t2cSDLoqc7nK51awANua875ce', 'admin1', 778719288),
(42, 'admin2@gmail.com', '$2y$10$mI1G03nSzcqBfh3PFlk1cOM8kbZMlNrwZGvLlUuY/piSyOYUZhID.', 'admin2', 123456789);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `dondathang`
--

CREATE TABLE `dondathang` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `dondathangs`
--

CREATE TABLE `dondathangs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `hovaten` text NOT NULL,
  `diachi` varchar(255) NOT NULL,
  `tinh` varchar(255) NOT NULL,
  `quanhuyen` varchar(255) NOT NULL,
  `phuongxa` varchar(255) NOT NULL,
  `sdt` int(11) NOT NULL,
  `thongtinbosung` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `pttt` text NOT NULL,
  `sanpham` text NOT NULL,
  `dkdn_id` int(11) NOT NULL,
  `thanhtien` int(11) NOT NULL,
  `tinhtrangdon` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `dondathangs`
--

INSERT INTO `dondathangs` (`id`, `hovaten`, `diachi`, `tinh`, `quanhuyen`, `phuongxa`, `sdt`, `thongtinbosung`, `created_at`, `updated_at`, `pttt`, `sanpham`, `dkdn_id`, `thanhtien`, `tinhtrangdon`) VALUES
(302, 'admin', 'asd', 'Tỉnh Cao Bằng', 'Huyện Hà Quảng', 'Xã Trường Hà', 123456789, 'as', '2023-09-18 08:58:17', '2023-09-18 08:58:17', 'thanh toán tiền mặt', 'Sơ mi hoa xanh cổ nhún đính hoa-(size:M)\r\nĐầm xoè xanh cổ vịt cổ giọt lệ DH3539-(size:XL)', 41, 598000, 'Chờ duyệt'),
(303, 'asd', 'asd', 'Tỉnh Cà Mau', 'Huyện Năm Căn', 'Xã Hiệp Tùng', 123456789, '12', '2023-09-18 09:01:33', '2023-09-18 09:01:33', 'thanh toán tiền mặt', 'Đầm xòe xanh peplum phối tay voan DH3639-(size:L)\r\nĐầm xòe xanh peplum phối tay voan DH3639-(size:M)', 41, 628000, 'Chờ duyệt');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_04_23_092651_creact_product_table', 1),
(6, '2023_04_23_092713_creact_category_table', 1),
(7, '2023_04_23_093913_create_nguoidung_table', 1),
(8, '2016_06_01_000001_create_oauth_auth_codes_table', 2),
(9, '2016_06_01_000002_create_oauth_access_tokens_table', 2),
(10, '2016_06_01_000003_create_oauth_refresh_tokens_table', 2),
(11, '2016_06_01_000004_create_oauth_clients_table', 2),
(12, '2016_06_01_000005_create_oauth_personal_access_clients_table', 2),
(13, '2023_06_05_093206_create_dondathangs_table', 3),
(14, '2023_06_06_181333_create_dondathang_table', 4),
(15, '2023_06_16_085023_create_accountlogins_table', 5),
(16, '2023_06_16_085247_create_accountlogin_table', 5),
(17, '2023_06_25_093736_create_checkouts_table', 6);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nguoidung`
--

CREATE TABLE `nguoidung` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `nguoidung`
--

INSERT INTO `nguoidung` (`id`, `name`, `email`, `password`) VALUES
(1, 'hoandz', 'hoanhpv', 'a');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `scopes` text DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `secret` varchar(100) DEFAULT NULL,
  `provider` varchar(255) DEFAULT NULL,
  `redirect` text NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) NOT NULL,
  `access_token_id` varchar(100) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\dkdn', 5, 'login', '6ccc4a1c59100bb30a6fe4bddb9fd5e67e5df0b82d612d8157f2a31fc8a716b7', '[\"*\"]', NULL, NULL, '2023-05-28 07:30:25', '2023-05-28 07:30:25'),
(2, 'App\\Models\\dkdn', 5, 'login', '456be0244cb1b96aba06042e09dd0a09cbb6d611342229c8b11e3b668f7d05e9', '[\"*\"]', NULL, NULL, '2023-05-28 07:47:18', '2023-05-28 07:47:18'),
(3, 'App\\Models\\dkdn', 5, 'login', 'b442fa72355aa076e4867b9ad49a8f855a5d763ccda92fe9aec92770c0031f1b', '[\"*\"]', NULL, NULL, '2023-05-28 07:55:53', '2023-05-28 07:55:53'),
(4, 'App\\Models\\dkdn', 5, 'login', '9a52d43b0bed45b8303c7a33268bef25bf3df01566e6a742d8c2f390be1caf17', '[\"*\"]', NULL, NULL, '2023-05-28 08:08:09', '2023-05-28 08:08:09'),
(5, 'App\\Models\\dkdn', 5, 'login', '93796f48d9d6839ef4708553df07ace9f7038c7f6c68b7500fb8e68d27ed7f7a', '[\"*\"]', NULL, NULL, '2023-05-28 08:30:18', '2023-05-28 08:30:18'),
(6, 'App\\Models\\dkdn', 5, 'login', '6de1dd58d1a186e78839cb3a6daae5811a15f59881bc3bf1af40f7ee51f1647e', '[\"*\"]', NULL, NULL, '2023-05-28 08:32:36', '2023-05-28 08:32:36'),
(7, 'App\\Models\\dkdn', 5, 'login', '50e7ba01e16a516023be5bc8528f04a8d7c6f8ccec58e44fecb94279d729d799', '[\"*\"]', NULL, NULL, '2023-05-28 08:39:47', '2023-05-28 08:39:47'),
(8, 'App\\Models\\dkdn', 5, 'login', 'da56c843789cbe932921bccf30677bf95a2e4aaae257fd286de402d61510e413', '[\"*\"]', NULL, NULL, '2023-05-28 08:51:36', '2023-05-28 08:51:36'),
(9, 'App\\Models\\dkdn', 5, 'login', 'f2306f9240e32a8618a626b0a1a6f7faff2838d62cc3b8e3e2485789a91eed9c', '[\"*\"]', NULL, NULL, '2023-05-28 08:56:10', '2023-05-28 08:56:10'),
(10, 'App\\Models\\dkdn', 5, 'login', '6dd33feaf49aed2e0f24fb0e2930dd198711e70afc7d85c7fd515471370ff26c', '[\"*\"]', NULL, NULL, '2023-05-28 08:57:15', '2023-05-28 08:57:15'),
(11, 'App\\Models\\dkdn', 5, 'login', 'd9d068dc4546540ef56a26f5c2e8220523fab11a88a972033ff3eff90f283bfa', '[\"*\"]', NULL, NULL, '2023-05-28 09:02:45', '2023-05-28 09:02:45'),
(12, 'App\\Models\\dkdn', 5, 'login', 'f9f9b7a8eb1dedb8dc98d772e0b4788b8943d7653658681ba1eee3de180c1a71', '[\"*\"]', NULL, NULL, '2023-05-28 09:16:39', '2023-05-28 09:16:39'),
(13, 'App\\Models\\dkdn', 7, 'login', 'f600fa99e375382921b7834b621ad9e804f58fa332996e5d2af9a4d48b42aa84', '[\"*\"]', NULL, NULL, '2023-05-28 09:39:23', '2023-05-28 09:39:23'),
(14, 'App\\Models\\dkdn', 9, 'login', '39a0c1727825185c74debc779337561d3810ca61ebe2ba07fd5a0613341ae878', '[\"*\"]', NULL, NULL, '2023-05-28 09:41:46', '2023-05-28 09:41:46'),
(15, 'App\\Models\\dkdn', 14, 'login', '148f78de23bc922121d660204c6f3bd5614616a406e2cbc8ef46dd0b0e039f10', '[\"*\"]', NULL, NULL, '2023-05-28 10:05:19', '2023-05-28 10:05:19'),
(16, 'App\\Models\\dkdn', 15, 'login', '3d4127a1b87491e96e8cd312cf5294d5def949f5e3ea37c76f26f79e2ab19cbc', '[\"*\"]', NULL, NULL, '2023-05-28 10:06:49', '2023-05-28 10:06:49'),
(17, 'App\\Models\\dkdn', 15, 'login', 'c28d102cc9763c25b7aa9c8e693ba575a29d0722a707237eb3b0dc93d19c4fd1', '[\"*\"]', NULL, NULL, '2023-05-28 10:08:34', '2023-05-28 10:08:34'),
(18, 'App\\Models\\dkdn', 9, 'login', '3b2d58d0fa03afa173f503e8bacfad02b92d0bd817a8ee3ad77cb5c4f498125e', '[\"*\"]', NULL, NULL, '2023-05-28 11:07:09', '2023-05-28 11:07:09'),
(19, 'App\\Models\\dkdn', 13, 'login', 'cc93f19ed8263f9beac837d407376e0f97d9c74af49e29f07ddcef88b3cd94cc', '[\"*\"]', NULL, NULL, '2023-05-30 00:57:18', '2023-05-30 00:57:18'),
(20, 'App\\Models\\dkdn', 8, 'login', '3e3fe84dafd8395ce2c5112d4ccac985f227489cb68b1f6fc5444e217ac3ce6d', '[\"*\"]', NULL, NULL, '2023-05-30 01:05:56', '2023-05-30 01:05:56'),
(21, 'App\\Models\\dkdn', 14, 'login', '37beb46c577c5751890f9268c966c8840530cc054d12b47536c31836c19299fc', '[\"*\"]', NULL, NULL, '2023-05-30 09:22:25', '2023-05-30 09:22:25'),
(22, 'App\\Models\\dkdn', 14, 'login', '5681cb12feb69712df3d3825f364b362dca0c0457d2b98ef8600d24993f129b5', '[\"*\"]', NULL, NULL, '2023-05-30 09:27:40', '2023-05-30 09:27:40'),
(23, 'App\\Models\\dkdn', 14, 'login', 'b0935ed851e20b0280194373e4d5933e3dbcaa61a36f5a6255e695f65bde93ea', '[\"*\"]', NULL, NULL, '2023-05-30 09:47:46', '2023-05-30 09:47:46'),
(24, 'App\\Models\\dkdn', 5, 'login', '3dcdbaf7423db232a2015033306ea45e6db7e353544dd7c0023b2f6d5a8eacce', '[\"*\"]', NULL, NULL, '2023-05-30 10:05:44', '2023-05-30 10:05:44'),
(25, 'App\\Models\\dkdn', 10, 'login', '485edc89f50bdd8d70d9514f30e80c471c3f32466baaa33227071b749a4ea56f', '[\"*\"]', NULL, NULL, '2023-05-30 10:10:50', '2023-05-30 10:10:50'),
(26, 'App\\Models\\dkdn', 14, 'login', 'd2f5bcb4f7e728e2f8dd9c2e92e0494a4bafffcbb50e2dd42eb83a7d0c915ffc', '[\"*\"]', NULL, NULL, '2023-05-30 10:24:41', '2023-05-30 10:24:41'),
(27, 'App\\Models\\dkdn', 14, 'login', '9fdc324a5e2163335399f85db565f1347ed249585d4737bed187ae52c037d356', '[\"*\"]', NULL, NULL, '2023-05-30 11:17:28', '2023-05-30 11:17:28'),
(28, 'App\\Models\\dkdn', 7, 'login', '20f91d062633cff73beb4f7dd577b979c1ea41264a55731c3a9525778b3cad69', '[\"*\"]', NULL, NULL, '2023-06-01 23:51:33', '2023-06-01 23:51:33'),
(29, 'App\\Models\\dkdn', 11, 'login', 'c0a79e52a31cdeedaf8846f580831674f407300b4d2372d902733ea0170491e0', '[\"*\"]', NULL, NULL, '2023-06-01 23:53:12', '2023-06-01 23:53:12'),
(30, 'App\\Models\\dkdn', 8, 'login', '3291555703a45a3132dbcdab072c39defd7caae2ebb2cf041691e08d548d3ebf', '[\"*\"]', NULL, NULL, '2023-06-02 00:41:09', '2023-06-02 00:41:09'),
(31, 'App\\Models\\dkdn', 8, 'login', '2ed6fa11c37de30b762301680c5a47b7ec781aea4be77525e3bf024b46d6e6de', '[\"*\"]', NULL, NULL, '2023-06-02 02:09:16', '2023-06-02 02:09:16'),
(32, 'App\\Models\\dkdn', 14, 'login', 'da40503f9592e0045c6f16fa31b4eb28bb6bd0b01fd5c0bf475013b50fe2eb7d', '[\"*\"]', NULL, NULL, '2023-06-02 02:25:45', '2023-06-02 02:25:45'),
(33, 'App\\Models\\dkdn', 8, 'login', 'e0b8808a6abcc38bc0f3782dc0d9385b3b58ff1891b3079aaa6c70f960bd17c5', '[\"*\"]', NULL, NULL, '2023-06-02 02:26:12', '2023-06-02 02:26:12'),
(34, 'App\\Models\\dkdn', 14, 'login', 'fe1489d973630267d99c3ac712a4929598df429f5bb337b366fdf2ab169fb2fa', '[\"*\"]', NULL, NULL, '2023-06-02 10:06:07', '2023-06-02 10:06:07'),
(35, 'App\\Models\\dkdn', 8, 'login', 'e53d2dcc446fb2a44c12e24735d16b599ad737b71bb60bdd8ebbf28d68848b98', '[\"*\"]', NULL, NULL, '2023-06-04 00:30:57', '2023-06-04 00:30:57'),
(36, 'App\\Models\\dkdn', 11, 'login', '397ace1cbc91bd438c441bc6d2f9e79bf0e84e6618201a8b295368d607c2bb04', '[\"*\"]', NULL, NULL, '2023-06-04 00:31:43', '2023-06-04 00:31:43'),
(37, 'App\\Models\\dkdn', 8, 'login', 'e7f2bbd880b411927bc00631cab0e09a8d0f606ddd5d5c7679955f762a10964e', '[\"*\"]', NULL, NULL, '2023-06-04 00:31:59', '2023-06-04 00:31:59'),
(38, 'App\\Models\\dkdn', 14, 'login', '6ee7a2cb5df4ac55ac8886b1c9fc73c41c377964791102320c846fe279769606', '[\"*\"]', NULL, NULL, '2023-06-04 11:31:15', '2023-06-04 11:31:15'),
(39, 'App\\Models\\dkdn', 7, 'login', '9d9230e051a92d9b3ba1e83001c4392f065ea27fa4a03c026637b158c14c57c8', '[\"*\"]', NULL, NULL, '2023-06-04 11:31:55', '2023-06-04 11:31:55'),
(40, 'App\\Models\\dkdn', 14, 'login', '257411e751d8072aa4ed7cc28a2ca38f411870b78e4e41397f6e260ee44b932f', '[\"*\"]', NULL, NULL, '2023-06-04 11:32:07', '2023-06-04 11:32:07'),
(41, 'App\\Models\\dkdn', 5, 'login', 'b50574a5b1eef8ab7817e66edb003b204f426f1f9a1819cbce2c33b75c0a11ec', '[\"*\"]', NULL, NULL, '2023-06-06 08:29:45', '2023-06-06 08:29:45'),
(42, 'App\\Models\\dkdn', 5, 'login', 'bb773a55d9bc2ab17adb534326d7aa912b16a6c1ab2416c6092ba68f82959c36', '[\"*\"]', NULL, NULL, '2023-06-06 09:10:41', '2023-06-06 09:10:41'),
(43, 'App\\Models\\dkdn', 8, 'login', '72e45946ce89e2137f52cfec7f7da89f4f2466de4cdd77c5bd5a3c9be108ce44', '[\"*\"]', NULL, NULL, '2023-06-08 08:40:28', '2023-06-08 08:40:28'),
(44, 'App\\Models\\dkdn', 14, 'login', 'f8da20d8a2ec6bd05b0ecd70888fed94f2e3482a864ac5093702047464a65f22', '[\"*\"]', NULL, NULL, '2023-06-08 09:28:53', '2023-06-08 09:28:53'),
(45, 'App\\Models\\dkdn', 8, 'login', '8aff760d1fbf3ee11361999f325ae85bddf9302d7428ba29443d76456c5c2c91', '[\"*\"]', NULL, NULL, '2023-06-08 09:35:38', '2023-06-08 09:35:38'),
(46, 'App\\Models\\dkdn', 11, 'login', '5d1b84683fcfe657ce695c0e28eea3d6366a87dd8c742d7fd561306557e63986', '[\"*\"]', NULL, NULL, '2023-06-09 10:43:02', '2023-06-09 10:43:02'),
(47, 'App\\Models\\dkdn', 8, 'login', '2c5b8340456cb670f753079827c2a834e0a63c2dc3ebb187e867dfb8630021f9', '[\"*\"]', NULL, NULL, '2023-06-14 09:11:42', '2023-06-14 09:11:42'),
(48, 'App\\Models\\dkdn', 11, 'login', '573a95e3c7bb9f3101039862bd7e18e88166f9449b102a899583d8af01f699d6', '[\"*\"]', NULL, NULL, '2023-06-15 10:32:56', '2023-06-15 10:32:56'),
(49, 'App\\Models\\dkdn', 7, 'login', 'b3724f25ea4efe2a2065f840f9ea93243ff501cd3adf737351ba2616809b359f', '[\"*\"]', NULL, NULL, '2023-06-15 10:57:05', '2023-06-15 10:57:05'),
(50, 'App\\Models\\dkdn', 6, 'login', '68a1c639fcf756761dc34e7ddef5eec2768433dbd86f5698720ecfbc041e2631', '[\"*\"]', NULL, NULL, '2023-06-15 10:58:02', '2023-06-15 10:58:02'),
(51, 'App\\Models\\dkdn', 6, 'login', 'a2e053434fa022bd3dfd23ac305f7e1cb033d210c2a4f24829e4de3f6fa06666', '[\"*\"]', NULL, NULL, '2023-06-15 11:30:30', '2023-06-15 11:30:30'),
(52, 'App\\Models\\dkdn', 6, 'login', '3bccc5a31bad62a2897e773dd7be7b4d94e743647db64f55d6169072eace757a', '[\"*\"]', NULL, NULL, '2023-06-15 11:32:57', '2023-06-15 11:32:57'),
(53, 'App\\Models\\dkdn', 6, 'login', 'c34fafddaf5029ebad6395820a09771623fe225333af9a037750b8518801fa5a', '[\"*\"]', NULL, NULL, '2023-06-15 11:41:09', '2023-06-15 11:41:09'),
(54, 'App\\Models\\dkdn', 4, 'login', 'e884e6b19e7c6b64d38ca7188c904739f82f6de8e0696dd63288569ae57e14d2', '[\"*\"]', NULL, NULL, '2023-06-15 11:44:02', '2023-06-15 11:44:02'),
(55, 'App\\Models\\dkdn', 4, 'login', '47e30329219859559d5a958bf3b2d548ea1cc5c2f9109b5c3585baa19ea5c5c8', '[\"*\"]', NULL, NULL, '2023-06-15 11:49:31', '2023-06-15 11:49:31'),
(56, 'App\\Models\\dkdn', 4, 'login', '3eb8cd866005fd0ac9256fc15b73113c70bc67647c3ad86f03a400b882724379', '[\"*\"]', NULL, NULL, '2023-06-16 01:30:20', '2023-06-16 01:30:20'),
(57, 'App\\Models\\accountlogin', 1, 'login', '92468460958347d07036cc44feb63d768efc2f41508d3403a3847dfbb63f7bb2', '[\"*\"]', NULL, NULL, '2023-06-16 02:22:50', '2023-06-16 02:22:50'),
(58, 'App\\Models\\accountlogin', 1, 'login', 'ab5ba3c9227c2ec3bf18a981b364aa6e6c98d82be9f697e6d75d5f6b25d63a08', '[\"*\"]', NULL, NULL, '2023-06-16 02:22:56', '2023-06-16 02:22:56'),
(59, 'App\\Models\\accountlogin', 1, 'login', 'f9e5341f1e7d153bb253ebc390f56f7eed8bc6e022237cb82f11075503180340', '[\"*\"]', NULL, NULL, '2023-06-16 02:23:01', '2023-06-16 02:23:01'),
(60, 'App\\Models\\accountlogin', 1, 'login', '8b576c8bcd974bf33388a2beea6ad314382db9dbc182cb64f2d9b6a375a1ca1d', '[\"*\"]', NULL, NULL, '2023-06-16 02:23:16', '2023-06-16 02:23:16'),
(61, 'App\\Models\\dkdn', 4, 'login', '6a6901f7a86ba22a1c96d7f601cd94f59fa29dc12b9edde7f1efdb4bb2613ac3', '[\"*\"]', NULL, NULL, '2023-06-16 02:23:31', '2023-06-16 02:23:31'),
(62, 'App\\Models\\accountlogin', 1, 'login', '59ae26ed3ac8e54c8f1b32d63d1001d18059ed091a6cd73e22c50cf87ff9fa73', '[\"*\"]', NULL, NULL, '2023-06-16 02:27:17', '2023-06-16 02:27:17'),
(63, 'App\\Models\\accountlogin', 1, 'login', '061eeb16590e25e90818df090caabf330b73b6aa62db9b82daa3a8c6473826c9', '[\"*\"]', NULL, NULL, '2023-06-16 02:27:44', '2023-06-16 02:27:44'),
(64, 'App\\Models\\accountlogin', 1, 'login', '953e8b266bcb51f71c8f016b7d97b27c83db55154392f7c05ae2854a0bbfcd73', '[\"*\"]', NULL, NULL, '2023-06-16 02:28:09', '2023-06-16 02:28:09'),
(65, 'App\\Models\\dkdn', 7, 'login', '4722da79329ff5d0581fc0d75936c045f3c79f7f97fca5f1cf463806f862da6d', '[\"*\"]', NULL, NULL, '2023-06-16 02:29:21', '2023-06-16 02:29:21'),
(66, 'App\\Models\\dkdn', 7, 'login', '37e8cf230ae9384ed2585185d048a3c9884648bb7b6cc1136c2b6caf61b2d167', '[\"*\"]', NULL, NULL, '2023-06-16 02:29:28', '2023-06-16 02:29:28'),
(67, 'App\\Models\\dkdn', 7, 'login', '903b3bdcee69acb0b5c01297be87d6da82d9bdecc7c01daf90c27654c57efb74', '[\"*\"]', NULL, NULL, '2023-06-16 02:29:41', '2023-06-16 02:29:41'),
(68, 'App\\Models\\accountlogin', 1, 'login', '89ec98d28a56642d8cc0a045ed1cfdb28ffcebb658113cc13211fc59247e6b46', '[\"*\"]', NULL, NULL, '2023-06-16 08:16:10', '2023-06-16 08:16:10'),
(69, 'App\\Models\\accountlogin', 1, 'login', '6f219f05853af527f42e5259e4f41ef76801cd467b34bf6c83706c404cd091b8', '[\"*\"]', NULL, NULL, '2023-06-16 08:17:22', '2023-06-16 08:17:22'),
(70, 'App\\Models\\accountlogin', 1, 'login', '69cba760c1d2e31fc4e099b6b88929f099e5e20328ac10cfdf52349fb439fd2f', '[\"*\"]', NULL, NULL, '2023-06-16 08:57:35', '2023-06-16 08:57:35'),
(71, 'App\\Models\\dkdn', 5, 'login', '19b1dc0869b24e43439dbd00b2b113505057f57b264067a2c3248a724507d482', '[\"*\"]', NULL, NULL, '2023-06-16 08:59:14', '2023-06-16 08:59:14'),
(72, 'App\\Models\\dkdn', 7, 'login', '98694b97798bd6faa287425277c692859242d90706e57dbd380e3e0ec6554b47', '[\"*\"]', NULL, NULL, '2023-06-16 09:00:11', '2023-06-16 09:00:11'),
(73, 'App\\Models\\accountlogin', 1, 'login', '0b42bea92ce501f99347a5c65c6c2805894d65cb3e992d517bb69fc6ad6d7923', '[\"*\"]', NULL, NULL, '2023-06-16 09:02:16', '2023-06-16 09:02:16'),
(74, 'App\\Models\\accountlogin', 1, 'login', '0fd92000bb43691e2a507714ce2e5a2d7e73e3e20e5d2f67b91c7f23f9426c2e', '[\"*\"]', NULL, NULL, '2023-06-16 09:02:39', '2023-06-16 09:02:39'),
(75, 'App\\Models\\accountlogin', 1, 'login', '0d1f5573f9dadc75f619caed0e12aea615eae7ed2c4a9c4038c08141bef221ca', '[\"*\"]', NULL, NULL, '2023-06-16 09:25:19', '2023-06-16 09:25:19'),
(76, 'App\\Models\\accountlogin', 1, 'login', '8b731ddb51ea3816b8bd9638539d4327cd8fe90708793a5ee84fb28e63658897', '[\"*\"]', NULL, NULL, '2023-06-18 00:06:26', '2023-06-18 00:06:26'),
(77, 'App\\Models\\accountlogin', 1, 'login', 'bfffb50916b5e13e3d22f82bbda9a7b718e739d221be96817b784e4f4aa1b6c8', '[\"*\"]', NULL, NULL, '2023-06-18 00:11:39', '2023-06-18 00:11:39'),
(78, 'App\\Models\\accountlogin', 1, 'login', '6dd4d9aadd7a5ff7091a1c1a6515949e2ba2e6a53e4b779a7ae31607c3219653', '[\"*\"]', NULL, NULL, '2023-06-18 00:35:56', '2023-06-18 00:35:56'),
(79, 'App\\Models\\accountlogin', 1, 'login', '2ab4bd2dcd085d38b553f5e415fe58bd380e7dbe1a2ecf83b82f9ac2ac57ce69', '[\"*\"]', NULL, NULL, '2023-06-18 00:45:31', '2023-06-18 00:45:31'),
(80, 'App\\Models\\accountlogin', 1, 'login', '4aa648bb45c5c92be54cf54c2ee9047e8b506c1141a1da4f403e09cbc9acdc3f', '[\"*\"]', NULL, NULL, '2023-06-18 00:45:55', '2023-06-18 00:45:55'),
(81, 'App\\Models\\accountlogin', 1, 'login', '889af4c37f9cffe31e263161989e16b1fb10e7028499cd3a8f16a9e4b5ab102c', '[\"*\"]', NULL, NULL, '2023-06-18 01:51:25', '2023-06-18 01:51:25'),
(82, 'App\\Models\\accountlogin', 1, 'login', 'a02944e914688e85f208130ead6832ba63ebc54c1a0e1a5db6f0151d16d6937b', '[\"*\"]', NULL, NULL, '2023-06-18 04:08:34', '2023-06-18 04:08:34'),
(83, 'App\\Models\\dkdn', 5, 'login', '7523940b118756c7f9ef024c89c6a52abd09fdcb389fb4642a2f89fb03d1e0ce', '[\"*\"]', NULL, NULL, '2023-06-18 04:15:00', '2023-06-18 04:15:00'),
(84, 'App\\Models\\dkdn', 5, 'login', '03e0593fc8dcc0a5a3b59f36c592c6bf85a78c09dc84635fdc2d8267bfcbdbe4', '[\"*\"]', NULL, NULL, '2023-06-18 04:15:29', '2023-06-18 04:15:29'),
(85, 'App\\Models\\dkdn', 5, 'login', 'ed491f8677392519819562853d16fb267bd25a3292683495e8cbcbe2bc48075a', '[\"*\"]', NULL, NULL, '2023-06-18 04:17:10', '2023-06-18 04:17:10'),
(86, 'App\\Models\\dkdn', 5, 'login', 'e6828ea5132574df918770f7bc3b62329b9a0fa30e77935027813211398be3e1', '[\"*\"]', NULL, NULL, '2023-06-18 04:19:33', '2023-06-18 04:19:33'),
(87, 'App\\Models\\dkdn', 5, 'login', '856931c200db6c1e8305fdd4d1f0ff375fdfc334df17932072fd81974a8db605', '[\"*\"]', NULL, NULL, '2023-06-18 04:20:55', '2023-06-18 04:20:55'),
(88, 'App\\Models\\dkdn', 5, 'login', '3993871e2158a457494b6e8a439485ea763a0c256a6bfc1e609d8249938c464f', '[\"*\"]', NULL, NULL, '2023-06-18 04:37:50', '2023-06-18 04:37:50'),
(89, 'App\\Models\\dkdn', 23, 'login', '2331e42f12029a3559517281bd1b41872230fcf06caeb57045bb3dd1bf8160fc', '[\"*\"]', NULL, NULL, '2023-06-18 04:50:40', '2023-06-18 04:50:40'),
(90, 'App\\Models\\dkdn', 5, 'login', 'eb83edf21a22af9dd12988012bccc2fd99587fd8d1cef7ee55322cab91366588', '[\"*\"]', NULL, NULL, '2023-06-18 05:08:58', '2023-06-18 05:08:58'),
(91, 'App\\Models\\dkdn', 23, 'login', 'f076376c52b288f7a508a54e7b57dcd3b18edf74cc7dbab7d835e9738017a48d', '[\"*\"]', NULL, NULL, '2023-06-18 07:50:25', '2023-06-18 07:50:25'),
(92, 'App\\Models\\dkdn', 28, 'login', 'eba1774c72166192dbfb8d69efbf482b60be497c4fd38022db965e678519a35d', '[\"*\"]', NULL, NULL, '2023-06-18 08:58:06', '2023-06-18 08:58:06'),
(93, 'App\\Models\\dkdn', 5, 'login', 'c5c6205fcabc2d61f3f00630c74b3372748c5236fb59c0e738503fb9feddeef9', '[\"*\"]', NULL, NULL, '2023-06-18 08:58:51', '2023-06-18 08:58:51'),
(94, 'App\\Models\\dkdn', 29, 'login', '11e12b0131f4c38c21134d976089c96d6a153252a4f33fee54fd4a655dc9e616', '[\"*\"]', NULL, NULL, '2023-06-18 08:59:37', '2023-06-18 08:59:37'),
(95, 'App\\Models\\dkdn', 30, 'login', '84734ad879b750e22aa611d571967a85a0828481ca2f27656650ade679d7aa7f', '[\"*\"]', NULL, NULL, '2023-06-18 10:50:24', '2023-06-18 10:50:24'),
(96, 'App\\Models\\dkdn', 31, 'login', 'f584217e7d29da735c1d34a8c06f42d3d7c3e93d614690b1ef353e35d3ad42f2', '[\"*\"]', NULL, NULL, '2023-06-18 11:17:47', '2023-06-18 11:17:47'),
(97, 'App\\Models\\dkdn', 30, 'login', 'dff09d821f668c5a52e1a23dd2c56ff2201a6a0f29a0cdd706b99e58aeb6a424', '[\"*\"]', NULL, NULL, '2023-06-18 23:56:15', '2023-06-18 23:56:15'),
(98, 'App\\Models\\dkdn', 31, 'login', 'dc9a05b3198b51aa07a9b56071266d5da1acd2186ccde20d5ce69958c771fe75', '[\"*\"]', NULL, NULL, '2023-06-19 08:54:46', '2023-06-19 08:54:46'),
(99, 'App\\Models\\dkdn', 29, 'login', 'd3f5581b1e527e5da2ea14ca360b5999a7f71eac583e974ba4d13c809ec39cc7', '[\"*\"]', NULL, NULL, '2023-06-19 09:02:43', '2023-06-19 09:02:43'),
(100, 'App\\Models\\dkdn', 30, 'login', '7474aeb7310f1215186cdbb1785d2fe89445cccc044f73590cc80e030a07efe3', '[\"*\"]', NULL, NULL, '2023-06-19 09:02:51', '2023-06-19 09:02:51'),
(101, 'App\\Models\\dkdn', 30, 'login', '22024d9167ee5203d7ea9c9bea95ad0e753ff4c461a805feb103bc49bef5c8d5', '[\"*\"]', NULL, NULL, '2023-06-19 09:03:01', '2023-06-19 09:03:01'),
(102, 'App\\Models\\dkdn', 30, 'login', 'ed49f6ec8043d083661aafc98e3dabafe33682709813c09284661154afffd267', '[\"*\"]', NULL, NULL, '2023-06-19 09:07:08', '2023-06-19 09:07:08'),
(103, 'App\\Models\\dkdn', 31, 'login', '5624e5a6cb29a3b594d2e00a0e554b8efef919eab143b85522a44119db865c41', '[\"*\"]', NULL, NULL, '2023-06-19 09:21:40', '2023-06-19 09:21:40'),
(104, 'App\\Models\\dkdn', 31, 'login', '630516d70c6096d0caf96c040dff74aecd95e071e42e1241706a09fba681c4a4', '[\"*\"]', NULL, NULL, '2023-06-19 10:03:58', '2023-06-19 10:03:58'),
(105, 'App\\Models\\dkdn', 33, 'login', 'bcbd7533cda786d936274d4d907b76f41177102c591b538669b62fa1314e333d', '[\"*\"]', NULL, NULL, '2023-06-19 10:04:28', '2023-06-19 10:04:28'),
(106, 'App\\Models\\dkdn', 30, 'login', '1927d5c53e2c170883bf8a96ab14107f577d970b43e57af77c7f7688c821928f', '[\"*\"]', NULL, NULL, '2023-06-19 10:11:19', '2023-06-19 10:11:19'),
(107, 'App\\Models\\dkdn', 31, 'login', 'ccd4b6eaea0a1fb952c26124f6524807fc106168f43d88e9370ccad342589e77', '[\"*\"]', NULL, NULL, '2023-06-19 10:19:06', '2023-06-19 10:19:06'),
(108, 'App\\Models\\dkdn', 31, 'login', 'b117385d9ef625450630869c00be46c46b2459ff9da7e5f4a532733295771b1a', '[\"*\"]', NULL, NULL, '2023-06-23 22:43:20', '2023-06-23 22:43:20'),
(109, 'App\\Models\\dkdn', 30, 'login', 'e2de6f79f3f946b3468b580ec024604b9bb10d0979f1227329bbaf3ef4c26dde', '[\"*\"]', NULL, NULL, '2023-06-25 01:00:48', '2023-06-25 01:00:48'),
(110, 'App\\Models\\dkdn', 30, 'login', '2bfdf79593af2819076a865f98896b5621b516c5021433f4faa82e685242ffad', '[\"*\"]', NULL, NULL, '2023-06-25 01:02:26', '2023-06-25 01:02:26'),
(111, 'App\\Models\\dkdn', 30, 'login', '65e3da8b27687c09a941890459bf320762103b209ac9432063b363ec62da6400', '[\"*\"]', NULL, NULL, '2023-06-25 01:17:19', '2023-06-25 01:17:19'),
(112, 'App\\Models\\dkdn', 30, 'login', '230586017f69d2aef953d3b95dde9797a8784d9db45d37e0431980c850169561', '[\"*\"]', NULL, NULL, '2023-06-25 01:22:27', '2023-06-25 01:22:27'),
(113, 'App\\Models\\dkdn', 30, 'login', '1bf55ed721f9bfd08c63737c27b4dad4e6b655d7b177ccea302d9484506494b2', '[\"*\"]', NULL, NULL, '2023-06-25 01:22:49', '2023-06-25 01:22:49'),
(114, 'App\\Models\\accountlogin', 1, 'login', '1aef70fca29ee974891eb9861e11c983d6d2706bbfbd4c61a31f2e129739bb74', '[\"*\"]', NULL, NULL, '2023-06-25 02:24:28', '2023-06-25 02:24:28'),
(115, 'App\\Models\\dkdn', 31, 'login', '5f9aa48f2e1cbe4d1d90f5d3634bf2e14f62c3c74ccd94549b15da618cd6814f', '[\"*\"]', NULL, NULL, '2023-06-25 02:54:34', '2023-06-25 02:54:34'),
(116, 'App\\Models\\dkdn', 30, 'login', '2928b1a4646c41e6596d00164dba58522dd58e4c85c622be0062b38aedbe58eb', '[\"*\"]', NULL, NULL, '2023-06-25 22:45:21', '2023-06-25 22:45:21'),
(117, 'App\\Models\\dkdn', 38, 'login', 'cd0aad630843dee017376ce8ed7b934738d7cfd4caa879f63e58d3ff961dbb34', '[\"*\"]', NULL, NULL, '2023-06-25 22:49:49', '2023-06-25 22:49:49'),
(118, 'App\\Models\\dkdn', 30, 'login', '656f73da6fc14d90edd3366fad9bf9610f9e62a24f5216f270075f935ecf78ab', '[\"*\"]', NULL, NULL, '2023-06-25 23:03:58', '2023-06-25 23:03:58'),
(119, 'App\\Models\\dkdn', 31, 'login', '81edeb885145f06a036b7e6bd26298b051af3903ffa66884b8aeeda5daeda393', '[\"*\"]', NULL, NULL, '2023-06-26 00:34:00', '2023-06-26 00:34:00'),
(120, 'App\\Models\\accountlogin', 1, 'login', '8c0db995e24fa8680ec270e2941fddad35b38ec46db539fb37dd2061eab2a285', '[\"*\"]', NULL, NULL, '2023-06-26 04:44:44', '2023-06-26 04:44:44'),
(121, 'App\\Models\\dkdn', 31, 'login', '5a62c3c7757de96a5f81a945a702220585e10d7760e3addb7c5903d84819605d', '[\"*\"]', NULL, NULL, '2023-06-27 01:06:03', '2023-06-27 01:06:03'),
(122, 'App\\Models\\dkdn', 31, 'login', '421269c72ad8e1e79460decf5847f409af7dc097ed121b74116529b085c8931d', '[\"*\"]', NULL, NULL, '2023-06-27 02:43:03', '2023-06-27 02:43:03'),
(123, 'App\\Models\\dkdn', 39, 'login', '83780e5af9b878348efb23887c9cea2c4d6b96c8b95200b1a6101638c65ae95b', '[\"*\"]', NULL, NULL, '2023-06-27 02:43:35', '2023-06-27 02:43:35'),
(124, 'App\\Models\\dkdn', 39, 'login', '475c60d8e97fa70bba0d12d8db8874a170d37d2fce54c751f6a9385e55287f3c', '[\"*\"]', NULL, NULL, '2023-06-27 02:43:45', '2023-06-27 02:43:45'),
(125, 'App\\Models\\accountlogin', 1, 'login', '9643d1ded1cd8f2149bd5db93e44b7bb1b87565d1912f5f89ca705c45388e6f2', '[\"*\"]', NULL, NULL, '2023-06-29 01:32:13', '2023-06-29 01:32:13'),
(126, 'App\\Models\\dkdn', 30, 'login', '8c35dbbaf2c82ca103e25a707e70be3effdd40499ac6db02c47adbe044ae5f6c', '[\"*\"]', NULL, NULL, '2023-06-29 12:21:44', '2023-06-29 12:21:44'),
(127, 'App\\Models\\dkdn', 31, 'login', 'bcea53ca2853053f94ad9ff58b807e5db243be818ee04ba267cbf7eac16b5789', '[\"*\"]', NULL, NULL, '2023-07-02 22:37:09', '2023-07-02 22:37:09'),
(128, 'App\\Models\\dkdn', 31, 'login', '2a5c9ff9d919b7870bc970167a7cb171c074710d45561dfced001d3ad5063998', '[\"*\"]', NULL, NULL, '2023-07-03 23:50:40', '2023-07-03 23:50:40'),
(129, 'App\\Models\\dkdn', 31, 'login', '451ec7aa927a368bb370f66bf560f715f00c08bcd5b4800950b891c1ebcb416f', '[\"*\"]', NULL, NULL, '2023-07-03 23:50:53', '2023-07-03 23:50:53'),
(130, 'App\\Models\\dkdn', 30, 'login', '172e7fa7c0ad552737c51ab94e4a15a1c8ab457a4dd5c222880e3365724f0daa', '[\"*\"]', NULL, NULL, '2023-07-04 06:18:24', '2023-07-04 06:18:24'),
(131, 'App\\Models\\dkdn', 31, 'login', 'c0c08901922bc35ae1db19ae47feb7110d6b822aee91f0a1381baa75ff4de446', '[\"*\"]', NULL, NULL, '2023-07-04 22:59:29', '2023-07-04 22:59:29'),
(132, 'App\\Models\\accountlogin', 2, 'login', 'e413176a554fcd4d06fe24f87bcce0a39ad4a7245b2a57ed406fe5732d887c27', '[\"*\"]', NULL, NULL, '2023-09-14 21:11:46', '2023-09-14 21:11:46'),
(133, 'App\\Models\\dkdn', 40, 'login', '77ea6a083e8f5ca558379e4be2b91fb6eff3defb6c6c4833fb8e5656b4a56851', '[\"*\"]', NULL, NULL, '2023-09-14 21:18:33', '2023-09-14 21:18:33'),
(134, 'App\\Models\\accountlogin', 2, 'login', 'dbbebc5e134bac3a01efc86a61b874cb2eceb207dbda280321be2066e6098655', '[\"*\"]', NULL, NULL, '2023-09-14 21:18:58', '2023-09-14 21:18:58'),
(135, 'App\\Models\\accountlogin', 2, 'login', '4cf5c93908990c4c1cbf66e74e761494dea731f47f7844c4137b820fa2aef3a6', '[\"*\"]', NULL, NULL, '2023-09-14 21:29:36', '2023-09-14 21:29:36'),
(136, 'App\\Models\\accountlogin', 2, 'login', '717f1e3e7ce1e98bb9615d19a4a948ebf27ed7cab62ac529ed464961908e969c', '[\"*\"]', NULL, NULL, '2023-09-14 21:35:47', '2023-09-14 21:35:47'),
(137, 'App\\Models\\accountlogin', 2, 'login', 'aa56188aa14726d77bf37916b3668e1a8f063c4bb77d4ab7248608cb353cb8f9', '[\"*\"]', NULL, NULL, '2023-09-14 22:50:54', '2023-09-14 22:50:54'),
(138, 'App\\Models\\dkdn', 40, 'login', '0fae663b6b13010239342de7006a62e51e377cca7824b046beb5ffb1bcf9afa5', '[\"*\"]', NULL, NULL, '2023-09-14 23:01:22', '2023-09-14 23:01:22'),
(139, 'App\\Models\\accountlogin', 2, 'login', '1b12c69eb08dd3adb8b03d4309dd6d3f8a52856c5d9eaf32441095162c46012b', '[\"*\"]', NULL, NULL, '2023-09-15 03:13:49', '2023-09-15 03:13:49'),
(140, 'App\\Models\\accountlogin', 2, 'login', 'e34347a125da3caa0b2c66899daff226e0f8c497357075900af27800da5dbfb6', '[\"*\"]', NULL, NULL, '2023-09-15 03:15:23', '2023-09-15 03:15:23'),
(141, 'App\\Models\\dkdn', 40, 'login', '3095f1dfdbb45151e15e6b84d9b9944ae66dabb83d89b6e5cb31309ce496403c', '[\"*\"]', NULL, NULL, '2023-09-15 16:46:28', '2023-09-15 16:46:28'),
(142, 'App\\Models\\dkdn', 40, 'login', 'e926f28c3bf792f3b80d07edd621741de3aa953f906e2c5f6c4b5347cd07b2be', '[\"*\"]', NULL, NULL, '2023-09-15 16:47:14', '2023-09-15 16:47:14'),
(143, 'App\\Models\\dkdn', 40, 'login', '74ab3e00dc3103749121d3197ee53f789119b9edb05def45c9aad61188ef654a', '[\"*\"]', NULL, NULL, '2023-09-15 16:47:58', '2023-09-15 16:47:58'),
(144, 'App\\Models\\accountlogin', 2, 'login', 'ca5a5e23f92524f17f8b3bf65af9dc32e8ea0002e471ee768158bf3713e1d20a', '[\"*\"]', NULL, NULL, '2023-09-16 03:11:15', '2023-09-16 03:11:15'),
(145, 'App\\Models\\dkdn', 41, 'login', 'a07c9cd032b882e84c6b1673336ed9360d2ccd0c952d9f092f08e7928620b46a', '[\"*\"]', NULL, NULL, '2023-09-16 03:21:50', '2023-09-16 03:21:50'),
(146, 'App\\Models\\dkdn', 42, 'login', '99f1388da3bb8b0b23fafd79f8a5cd73e7c1546220b26c51899f9b6ded6a9a87', '[\"*\"]', NULL, NULL, '2023-09-16 03:23:49', '2023-09-16 03:23:49'),
(147, 'App\\Models\\accountlogin', 2, 'login', '11d9de9625dd7818f48314e23049df4cc11e2bb33a28490a2af9a7cac6ca41e3', '[\"*\"]', NULL, NULL, '2023-09-16 03:31:13', '2023-09-16 03:31:13'),
(148, 'App\\Models\\accountlogin', 2, 'login', '9b028f6612a10236148e928e9f476c2b9d756097f9c388193bdbf878b0e7beae', '[\"*\"]', NULL, NULL, '2023-09-16 20:45:29', '2023-09-16 20:45:29'),
(149, 'App\\Models\\accountlogin', 3, 'login', '48d4a7422666460c4ebe63678cb897ed8585fb65f9980fa316f94d78b269fc8a', '[\"*\"]', NULL, NULL, '2023-09-16 21:28:23', '2023-09-16 21:28:23'),
(150, 'App\\Models\\dkdn', 41, 'login', '7dc931629b41403b911dc843510caf61eb6ca679d938088bd379dfa2e21d65ec', '[\"*\"]', NULL, NULL, '2023-09-16 21:38:12', '2023-09-16 21:38:12'),
(151, 'App\\Models\\dkdn', 41, 'login', '7cd539e9dc5d36d8c56750754d72c898900edac357bfb4ab8c2730cc37b22701', '[\"*\"]', NULL, NULL, '2023-09-16 21:39:12', '2023-09-16 21:39:12'),
(152, 'App\\Models\\accountlogin', 3, 'login', '4bb927c5808ae2ddb5709205adff936d8e6d4cfd57529eb3d71e411c490e9fe0', '[\"*\"]', NULL, NULL, '2023-09-16 22:08:13', '2023-09-16 22:08:13'),
(153, 'App\\Models\\accountlogin', 3, 'login', 'bfee53da430ceca11a5ec3a8ef4780be23837f08f2d92157a305e59fd882201f', '[\"*\"]', NULL, NULL, '2023-09-16 22:27:06', '2023-09-16 22:27:06'),
(154, 'App\\Models\\dkdn', 41, 'login', '713e3f3abe85d83f8fca093ca0f659cb1e022dad83e79d04922b985e5af290f7', '[\"*\"]', NULL, NULL, '2023-09-18 07:56:26', '2023-09-18 07:56:26'),
(155, 'App\\Models\\accountlogin', 3, 'login', 'caa87575ccb41d7c699512ea65c06915b83b3348e373cbc4af087577e8d5343e', '[\"*\"]', NULL, NULL, '2023-09-18 07:57:43', '2023-09-18 07:57:43'),
(156, 'App\\Models\\accountlogin', 3, 'login', 'bb9fe0761466507cf146f0a4d7deb398e5abf162885fa777abd42c3deb4617bd', '[\"*\"]', NULL, NULL, '2023-09-18 08:05:21', '2023-09-18 08:05:21'),
(157, 'App\\Models\\accountlogin', 3, 'login', '036a92069ece1b90d57af998431ea2562edc7a350436071116e43e1148bb46c3', '[\"*\"]', NULL, NULL, '2023-09-18 08:40:47', '2023-09-18 08:40:47'),
(158, 'App\\Models\\accountlogin', 3, 'login', '5d4839fa7e4148688beb39179fa1f792f93c454efc4a8a1d73f1320d0bf3a5e0', '[\"*\"]', NULL, NULL, '2023-09-18 08:47:35', '2023-09-18 08:47:35'),
(159, 'App\\Models\\dkdn', 41, 'login', '0f3e18988804dde7e078c0a19a78b0f5c19c56f4e811c293d24c25060e1a66d9', '[\"*\"]', NULL, NULL, '2023-09-18 08:57:38', '2023-09-18 08:57:38'),
(160, 'App\\Models\\dkdn', 41, 'login', 'e15f5571f515ffc08767104606d065037d04f8bed79b38a3ed42884cabd4f752', '[\"*\"]', NULL, NULL, '2023-09-18 09:01:11', '2023-09-18 09:01:11'),
(161, 'App\\Models\\accountlogin', 3, 'login', '32cf203a654c3698548fc8a5dc76508e2907483ba83585f7808debb8ebb671ca', '[\"*\"]', NULL, NULL, '2023-09-18 09:03:15', '2023-09-18 09:03:15'),
(162, 'App\\Models\\dkdn', 41, 'login', 'f6b06b5e7e0df56185eacbaf2eabdc490730f23e587e4009c65c28953defcf83', '[\"*\"]', NULL, NULL, '2023-09-18 09:14:03', '2023-09-18 09:14:03'),
(163, 'App\\Models\\dkdn', 41, 'login', 'e98a8194b4d6aae779b6e56f292aa0b6bffaa655406e67057c9559fc6045ebf7', '[\"*\"]', NULL, NULL, '2023-09-18 17:01:00', '2023-09-18 17:01:00'),
(164, 'App\\Models\\accountlogin', 3, 'login', '5fea7f70026e1c30e9add17b33345a37349d8670e1ca94daf4926cc01cc33827', '[\"*\"]', NULL, NULL, '2023-09-18 17:01:21', '2023-09-18 17:01:21');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product`
--

CREATE TABLE `product` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `hinhanh` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `gia` varchar(255) NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product`
--

INSERT INTO `product` (`id`, `hinhanh`, `title`, `gia`, `category_id`) VALUES
(6, 'q1.webp', 'Đầm xòe xanh peplum phối tay voan DH3639', '299.000', 1),
(7, 'q2.webp', 'Đầm xòe caro công sở phối chân váy đen DH3691', '299.000', 1),
(8, 'q3.webp', 'Đầm xòe xanh đá tà bóng', '299.000', 1),
(9, 'q4.webp', 'Đầm đen peplum phối cổ hồng', '299.000', 1),
(10, 'q5.webp', 'Đầm ôm đen phối cổ nơ cách điệu', '299.000', 1),
(11, 'q6.webp', 'Đầm xoè xanh cổ vịt cổ giọt lệ DH3539', '299.000', 1),
(12, 'e1.webp', 'Sơ mi trắng tay lỡ xếp ly ngực', '269.000', 2),
(13, 'e2.webp', 'Sơ mi hoa tay lỡ phối cổ nơ', '269.000', 2),
(14, 'e3.webp', 'Sơ mi hoa xanh cổ nhún đính hoa', '269.000', 2),
(15, 'e4.webp', 'Sơ mi xanh cổ đức phối nơ', '269.000', 2),
(22, 'xh.webp', 'Đầm xòe xanh ngọc đính nơ vai', '299.000', 7),
(24, '75306ee4e849922d7afdcff62eb3857c44f82d2121088ea3600ce944.webp', 'Đầm xoè voan xanh đính hoa ngực', '399.000', 1),
(32, '1.webp', 'ÁO SƠ MI - AR230315DT', '499,000đ', 3),
(33, '2.webp', 'ÁO SƠ MI - AE231546', '499,000đ', 3),
(34, '3.webp', 'ÁO SƠ MI - AR230328NT', '499,000đ', 3),
(35, '4.webp', 'ÁO SƠ MI - AS230023N', '399,000đ', 3),
(36, '5.webp', 'ÁO SƠ MI - AB230021NT', '399,000đ', 3),
(37, '0.1.webp', 'QUẦN TÂY - QST220507R2-N', '799.000đ', 5),
(38, '0.2.webp', 'QUẦN TÂY - QS231500', '600.000đ', 5),
(39, '0.3.webp', 'QUẦN TÂY - QS20662L0', '650,000đ', 5),
(40, '0.4.webp', 'QUẦN JEANS - QJS230148', '700,000đ', 5),
(41, '0.5.webp', 'QUẦN TÂY - QRT231263', '799.000đ', 5),
(42, '0.4.webp', 'asdasd', '499,000đ', 3),
(43, '348548554_280695350974632_2181615500441501516_n.jpg', 'chó', '499,000đ', 3);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `thongtindathang`
--

CREATE TABLE `thongtindathang` (
  `id` int(11) NOT NULL,
  `hovaten` text NOT NULL,
  `diachi` text NOT NULL,
  `tinhtp` text NOT NULL,
  `quanhuyen` text NOT NULL,
  `phuongxa` text NOT NULL,
  `sdt` int(11) NOT NULL,
  `thongtinbosung` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `accountlogin`
--
ALTER TABLE `accountlogin`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `accountlogins`
--
ALTER TABLE `accountlogins`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `checkouts`
--
ALTER TABLE `checkouts`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `detail`
--
ALTER TABLE `detail`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `dkdn`
--
ALTER TABLE `dkdn`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `dondathang`
--
ALTER TABLE `dondathang`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `dondathangs`
--
ALTER TABLE `dondathangs`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `nguoidung`
--
ALTER TABLE `nguoidung`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Chỉ mục cho bảng `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_auth_codes_user_id_index` (`user_id`);

--
-- Chỉ mục cho bảng `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Chỉ mục cho bảng `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Chỉ mục cho bảng `password_resets`
--
ALTER TABLE `password_resets`
  ADD PRIMARY KEY (`email`);

--
-- Chỉ mục cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Chỉ mục cho bảng `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `thongtindathang`
--
ALTER TABLE `thongtindathang`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `accountlogin`
--
ALTER TABLE `accountlogin`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `accountlogins`
--
ALTER TABLE `accountlogins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=267;

--
-- AUTO_INCREMENT cho bảng `category`
--
ALTER TABLE `category`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `checkouts`
--
ALTER TABLE `checkouts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=250;

--
-- AUTO_INCREMENT cho bảng `detail`
--
ALTER TABLE `detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT cho bảng `dkdn`
--
ALTER TABLE `dkdn`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT cho bảng `dondathang`
--
ALTER TABLE `dondathang`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `dondathangs`
--
ALTER TABLE `dondathangs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=304;

--
-- AUTO_INCREMENT cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT cho bảng `nguoidung`
--
ALTER TABLE `nguoidung`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=165;

--
-- AUTO_INCREMENT cho bảng `product`
--
ALTER TABLE `product`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT cho bảng `thongtindathang`
--
ALTER TABLE `thongtindathang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
