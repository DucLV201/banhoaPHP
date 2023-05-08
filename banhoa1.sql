-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th6 08, 2022 lúc 02:25 AM
-- Phiên bản máy phục vụ: 10.4.21-MariaDB
-- Phiên bản PHP: 7.4.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `banhoa1`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `admin_id` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `admin_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `tbl_admin`
--

INSERT INTO `tbl_admin` (`admin_id`, `email`, `password`, `admin_name`) VALUES
(1, 'admin@gmail.com', '21232f297a57a5a743894a0e4a801fc3', 'Nhóm 22');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_baiviet`
--

CREATE TABLE `tbl_baiviet` (
  `baiviet_id` int(11) NOT NULL,
  `tenbaiviet` varchar(100) NOT NULL,
  `tomtat` text NOT NULL,
  `noidung` text NOT NULL,
  `danhmuctin_id` int(11) NOT NULL,
  `baiviet_image` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `tbl_baiviet`
--

INSERT INTO `tbl_baiviet` (`baiviet_id`, `tenbaiviet`, `tomtat`, `noidung`, `danhmuctin_id`, `baiviet_image`) VALUES
(1, 'Bài 1 : TÌM HIỂU VỀ BÔNG TRANG – IXORA.', 'TÌM HIỂU VỀ BÔNG TRANG – IXORA', 'Bông trang có nguồn gốc xuất xứ ở các nước nhiệt đới, cho hoa nhiều, đẹp, màu sắc sặc sỡ.Cây nhỏ, thân cành nhẵn, cao 0, 6 – 2 m. Lá mọc đối, gần như không cuống, phiến lá láng, hình bầu dục, hai đầu nhọn, dài 5 – 10cm, rộng 3 – 5 cm. Hoa nhỏ, dài, màu đỏ, mọc thành chùm xim ở đầu cành. Quả màu đỏ tím, cao 5 – 6 mm, rộng 6 – 7 mm. Mỗi ô có một hạt, cao 4 – 5 mm, rộng 3 – 4 mm, phía lưng phồng lên, còn phía bụng thì hõm vào..', 1, 'kienthuc2.jpg'),
(2, 'Bài 2: 2 Cuốn Sách Về Kỹ Thuật Trồng Và Chăm Sóc Hoa Cúc Cực Hay', '2 Cuốn Sách Về Kỹ Thuật Trồng Và Chăm Sóc Hoa Cúc Cực Hay', 'Hoa Cúc là học cây lưu niên dễ trồng nhất. Thường thì nên trồng vào mùa xuân để tránh giá lạnh mùa đông nhưng thực ra có thể trồng cúc bất kỳ thời điểm nào miễn là đảm bảo cây sẽ hình thành rễ bám vào đất trước khi khí hậu trở nên quá nóng. Tuy vậy, cây sẽ phát triển mạnh nhất và cho nhiều hoa nhất khi điều kiện thời tiết có ánh nắng mặt trời cộng với cung cấp đủ các chất dinh dưỡng và nước. Có tới hàng trăm loài cúc khác nhau với kích thước cây, hoa, số lượng hoa, kích thước bụi và thời gian nở hoa khác nhau. Nhưng nếu ở vùng phía Bắc người trồng nên chọn các loài hoa cúc có thời gian ra bông ngắn….', 2, 'kienthuc1.jpg'),
(3, 'Bài 3 :Tìm hiểu về hoa huệ', 'Tìm hiểu về hoa huệ.', 'Hoa Huệ còn gọi là Dạ lai hương (thơm ban đêm) hoặc Vũ lai hương (thơm lúc mưa) là một loài hoa đặc biệt vì nở mạnh và tỏa hương về ban đêm với mùi hương quyến rũ, không giống đa số các loài hoa khác nở vào ban ngày. Hoa Huệ thuộc họ Thùa, hình dáng giống cây tỏi. Huệ có hai loại, huệ đơn còn gọi là huệ xẻ, cây thấp hoa ngắn và thưa. Huệ kép còn gọi là huệ tứ diện, cây cao, hoa dày và bông dài hơn. Hoa cũng chia ra 2 giống: Huệ ta bông dài vừa, thường nở trên cây, có mùi thơm nhẹ; còn Huệ tây( còn gọi là hoa loa kèn) có hoa hình phễu, hoa to và dài hơn có hương ngào ngạt, toả hương về ban đêm. Hoa Huệ thường có 3 màu chủ yếu: Huệ trắng, Huệ vàng và Huệ đỏ.', 4, 'kienthuc3.jpg'),
(5, 'Bài 5 :Sách Hay Về Trồng Hoa', 'Sách Hay Về Trồng Hoa: Cẩm Nang Về Phong Lan.', 'Việt Nam có điều kiện thời tiết khí hậu thích hợp cho sự phát triển của cây lan, là nơi có nhiều có nhiều giống lan quý hiếm hiện đang được trồng phổ biến ở nhiều nơi trên thế giới như: Ngọc điểm tai trâu, Ngọc điểm đuôi cáo, Hoàng thảo thủy tiên…', 3, 'kienthuc2.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_category`
--

CREATE TABLE `tbl_category` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `tbl_category`
--

INSERT INTO `tbl_category` (`category_id`, `category_name`) VALUES
(1, 'Hoa dịp lễ'),
(2, 'Hoa khai trương'),
(3, 'Hoa chia buồn-Hoa tang lễ'),
(4, 'Hoa sinh nhật'),
(7, 'Hoa tình yêu');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_danhmuc_tin`
--

CREATE TABLE `tbl_danhmuc_tin` (
  `danhmuctin_id` int(11) NOT NULL,
  `tendanhmuc` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `tbl_danhmuc_tin`
--

INSERT INTO `tbl_danhmuc_tin` (`danhmuctin_id`, `tendanhmuc`) VALUES
(1, 'TÌM HIỂU VỀ BÔNG TRANG – IXORA'),
(2, ' Kỹ Thuật Trồng Và Chăm Sóc Hoa Cúc Cực Hay'),
(3, 'Sách Hay Về Trồng Hoa'),
(4, 'Tìm hiểu về hoa');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_donhang`
--

CREATE TABLE `tbl_donhang` (
  `donhang_id` int(11) NOT NULL,
  `sanpham_id` int(11) NOT NULL,
  `soluong` int(11) NOT NULL,
  `mahang` varchar(50) NOT NULL,
  `khachhang_id` int(11) NOT NULL,
  `ngaythang` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `tinhtrang` int(11) NOT NULL,
  `huydon` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `tbl_donhang`
--

INSERT INTO `tbl_donhang` (`donhang_id`, `sanpham_id`, `soluong`, `mahang`, `khachhang_id`, `ngaythang`, `tinhtrang`, `huydon`) VALUES
(10, 17, 7, '3060', 12, '2021-10-01 04:11:55', 1, 0),
(11, 21, 5, '8979', 13, '2021-10-04 02:29:52', 0, 0),
(12, 26, 6, '8979', 14, '2021-10-04 02:29:52', 0, 0),
(41, 17, 3, '6470', 29, '2022-01-03 01:26:12', 0, 0),
(42, 25, 2, '3417', 29, '2022-01-03 01:30:25', 0, 0),
(43, 27, 1, '3417', 29, '2022-01-03 01:30:25', 0, 0),
(46, 24, 1, '9326', 30, '2022-01-14 23:42:39', 0, 0),
(47, 19, 2, '1345', 30, '2022-01-15 00:14:30', 0, 2),
(50, 22, 2, '5976', 31, '2022-01-15 04:51:54', 1, 0),
(51, 25, 1, '3940', 31, '2022-03-22 08:26:25', 0, 2),
(52, 34, 1, '3940', 31, '2022-03-22 08:26:25', 0, 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_giaodich`
--

CREATE TABLE `tbl_giaodich` (
  `giaodich_id` int(11) NOT NULL,
  `sanpham_id` int(11) NOT NULL,
  `soluong` int(11) NOT NULL,
  `magiaodich` varchar(50) NOT NULL,
  `ngaythang` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `khachhang_id` int(11) NOT NULL,
  `tinhtrangdon` int(11) NOT NULL DEFAULT 0,
  `huydon` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `tbl_giaodich`
--

INSERT INTO `tbl_giaodich` (`giaodich_id`, `sanpham_id`, `soluong`, `magiaodich`, `ngaythang`, `khachhang_id`, `tinhtrangdon`, `huydon`) VALUES
(3, 21, 2, '5737', '2019-10-04 02:57:00', 12, 0, 0),
(4, 26, 1, '6219', '2019-10-04 02:58:34', 14, 0, 0),
(5, 25, 3, '7785', '2019-10-04 03:11:52', 13, 0, 0),
(18, 17, 3, '6470', '2022-01-03 01:26:12', 29, 0, 0),
(19, 25, 2, '3417', '2022-01-03 01:30:25', 29, 0, 0),
(20, 27, 1, '3417', '2022-01-03 01:30:25', 29, 0, 0),
(27, 22, 2, '5976', '2022-01-15 04:51:54', 31, 1, 0),
(28, 25, 1, '3940', '2022-03-22 08:26:25', 31, 0, 2),
(29, 34, 1, '3940', '2022-03-22 08:26:25', 31, 0, 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_giohang`
--

CREATE TABLE `tbl_giohang` (
  `giohang_id` int(11) NOT NULL,
  `tensanpham` varchar(100) NOT NULL,
  `sanpham_id` int(11) NOT NULL,
  `giasanpham` varchar(50) NOT NULL,
  `hinhanh` varchar(50) NOT NULL,
  `soluong` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `tbl_giohang`
--

INSERT INTO `tbl_giohang` (`giohang_id`, `tensanpham`, `sanpham_id`, `giasanpham`, `hinhanh`, `soluong`) VALUES
(20, 'Hoa baby BB76', 30, '75000', 'hoale7.jpg', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_khachhang`
--

CREATE TABLE `tbl_khachhang` (
  `khachhang_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `address` varchar(200) NOT NULL,
  `email` varchar(150) NOT NULL,
  `password` varchar(100) NOT NULL,
  `giaohang` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `tbl_khachhang`
--

INSERT INTO `tbl_khachhang` (`khachhang_id`, `name`, `phone`, `address`, `email`, `password`, `giaohang`) VALUES
(12, 'Hiếu', '0932023992', '123/123', 'hieu@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 1),
(13, 'Long Hoàng', '01694494813', '123/123', 'long@gmail.com', '0192023a7bbd73250516f069df18b500', 0),
(14, 'Hoàng Long', '0932023992', '123/123', 'hoanglong@gmail.com', '0192023a7bbd73250516f069df18b500', 1),
(29, 'TRẦN ĐÌNH ĐƯỢC', '0935588475', 'vinhhung, phuloc  , tt hue', 'anhduoc0935@gmail.com', '202cb962ac59075b964b07152d234b70', 0),
(31, 'Đức', '0352284719', 'Thôn 9,Nghi Giang', '', '202cb962ac59075b964b07152d234b70', 0),
(32, 'Tuấn', '0123', 'Đà Nẵng', '', '202cb962ac59075b964b07152d234b70', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_msg`
--

CREATE TABLE `tbl_msg` (
  `time` datetime NOT NULL,
  `mail` varchar(50) NOT NULL,
  `noidung` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `tbl_msg`
--

INSERT INTO `tbl_msg` (`time`, `mail`, `noidung`) VALUES
('2022-01-15 06:30:47', 'luuvanduc@gmail.com', 'Giao đến thôn 9 mất bao lâu'),
('2022-01-15 11:50:44', 'luuvanduc@gmail.com', 'Giao đến thôn 9 mất bao lâu');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_sanpham`
--

CREATE TABLE `tbl_sanpham` (
  `sanpham_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `sanpham_name` varchar(255) NOT NULL,
  `sanpham_chitiet` text NOT NULL,
  `sanpham_mota` text NOT NULL,
  `sanpham_gia` varchar(100) NOT NULL,
  `sanpham_giakhuyenmai` varchar(100) NOT NULL,
  `sanpham_active` int(11) NOT NULL,
  `sanpham_hot` int(11) NOT NULL,
  `sanpham_soluong` int(11) NOT NULL,
  `sanpham_image` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `tbl_sanpham`
--

INSERT INTO `tbl_sanpham` (`sanpham_id`, `category_id`, `sanpham_name`, `sanpham_chitiet`, `sanpham_mota`, `sanpham_gia`, `sanpham_giakhuyenmai`, `sanpham_active`, `sanpham_hot`, `sanpham_soluong`, `sanpham_image`) VALUES
(17, 2, 'Hoa hồng khai trương', 'Mẫu hoa gồm có:\r\n\r\nHoa hồng đỏ\r\nHoa hồng pastel\r\nĐồng tiền hồng\r\nMõm sói hồng\r\nHoa ly\r\nCác loại lá phụ khác.', 'Khoảnh khắc tươi đẹp và huy hoàng nhất trong một ngày chính là khi mặt trời bắt đầu ló dạng toả ra thứ ánh sáng chói loà mà ấm áp đến muôn nơi cũng giống như một lời chúc, mong ước cho sự nổi tiếng và việc kinh doanh được lan rộng, ngày càng phát đạt và thịnh vượng. Dựa trên ý tưởng đó mẫu hoa khai trương phồn vinh đã được thiết kế với tông đỏ và hồng từ những bông hồng và đồng tiền tươi thắm để mô tả lại hình ảnh tươi đẹp ấy. ', '1500000', '1350000', 0, 1, 10, 'hoakhaitruong.jpg'),
(18, 4, 'Giỏ hoa hồng trắng', 'Giỏ hoa bao gồm:\r\n\r\nHoa hồng kem\r\nHoa hồng dâu\r\nLá phụ trang trí', 'Tone hồng luôn là sự lựa chọn hàng đầu vì sự dịu dàng, ngọt ngào. Thích hợp với rất nhiều dịp quan trọng như tỏ tình, cầu hôn, kỷ niệm tình yêu, tặng sinh nhật, chúc mừng...', '500000', '450000', 0, 0, 3, 'hoasinhnhat1.jpg'),
(19, 4, 'Lẵng hoa hạnh phúc', 'Lẵng Hoa Hạnh Phúc được thiết kế từ\r\n\r\nHoa hồng đỏ\r\nHoa calimero trắng\r\nHoa mimi trắng\r\nCác loại hoa lá phụ khác.', 'Có ai mà không ngập tràn hạnh phúc khi nhận được một món quà trong ngày sinh nhật hoặc một món quà ngạc nhiên vào một ngày thường nhật. Gửi đến bạn bè, người yêu, thầy cô, gia đình hay những người quan trọng đã nâng đỡ bạn qua những khó khăn trong cuộc sống 1 lẵng hoa thật đẹp nha. Lẵng hoa được kết hợp giữa hồng đỏ đẹp kiêu sa cùng cát tường trắng tươi xinh cùng những hoa lá phụ khác.', '5600000', '4800000', 0, 0, 1, 'hoatinhyeu7.jpg'),
(20, 3, 'Hoa A14', 'Vòng hoa gồm có:\r\nHoa cúc trắng\r\nHoa hồng trắng\r\nHoa ly trắng\r\nCác loại lá phụ trang trí khác', 'Giờ phút chia ly là chuyện thường tình trong cuộc sống, kiếp người nào rồi cũng kết thúc, dẫu biết thế, nhưng mỗi lần mất đi người thân yêu đều để lại trong lòng người ở lại một nỗi đau khó vơi. Trong những giai đoạn này, một lời an ủi, sẻ chia dù nhỏ nhất, như một vòng hoa chia buồn, cũng sẽ mang một ý nghĩa to lớn.\r\n\r\nMẫu vòng hoa tang lễ Nhớ Thương được Flower Corner thiết kế từ các loại hoa lan trắng và hoa Ly, những loại hoa truyền thống và được dùng nhiều trong các đám tang tại Việt Nam. ', '1500000', '1400000', 0, 0, 10, 'hoachiabuon3.jpg'),
(21, 3, 'Hoa A15', 'Vòng hoa gồm có:\r\nHoa cúc trắng\r\nHoa hồng trắng\r\nHoa ly trắng\r\nCác loại lá phụ trang trí khác\r\n', 'Vòng hoa tang lễ nhỏ nhưng sự chân thành của người gửi san sẻ lớn vô cùng dành cho người nhà, và sự thương tiếc vô hạn của bạn dành cho người đã mãi đi xa. Sự ra đi đột ngột và nỗi buồn vô hạn của người gửi với mong ước trao lời chia xa cùng bằng vòng hoa nhỏ này.\"', '1500000', '1400000', 0, 1, 10, 'hoachiabuon4.jpg'),
(22, 2, 'Hoa Khai trương', 'Mẫu hoa khai trương Vững Tiến gồm có:\r\n\r\nLan hồ điệp trắng\r\nHoa hồng pastel\r\nhoa hồng tím\r\nCát tường cam\r\nBaby trắng\r\nCác loại lá phụ khác.', 'Sự rực rỡ của sắc hồng đầy vinh quang, hứng khởi và tràn đầy sức sống được tạo nên từ hoa hồng và cát tường, kết hợp cùng sắc trắng thanh lịch tinh tế từ lan hồ điệp và baby, kệ hoa là một lời chúc mang đầy nghĩa cho một sự thành công rực rỡ sáng tươi và hân hoan nhất.', '400000', '250000', 0, 0, 5, 'hoakhaitruong2.jpg'),
(23, 2, 'Giỏ hoa ý nghĩa', 'Lẵng hoa gồm có:\r\n\r\nHoa hồng kem pastel\r\nHoa hồng dâu\r\nCác loại lá phụ khác', 'Được thiết kế cực kỳ đặc biệt từ hoa hồng cao cấp Juliet. Lẵng hoa sáng lên nét đẹp tinh khôi, dễ thương nhưng cũng rất rực rỡ và quyến rũ. Kết hợp từ tông màu san hô đầy sáng tạo cùng màu xanh biển. Lẵng hoa là món quà thích hợp tặng cho người yêu vào dịp sinh nhật, hoặc gửi tặng cấp trên nhân dịp chúc mừng. Nhẹ nhàng mà dễ thương lẵng hoa sẽ mang đến cho bạn những niềm vui to lớn mà khó quên nhất. ', '500000', '400000', 0, 0, 10, 'hoakhaitruong3.jpg'),
(24, 1, 'Giỏ hoa hồng đẹp', 'Giỏ Hoa Hồng gồm có:\r\n\r\nHoa hồng dâu\r\nHoa thạch thảo trắng\r\nLá phụ trang trí', 'Bạn sẽ tạo nên niềm vui nho nhỏ đến với người thân khi tặng lẵng hoa dễ thương này đến họ đấy. Sự kết hợp vô cùng hài hòa giữa hoa hồng sen và hồng tím nhạt tạo nên một lẵng hoa cực xinh xắn. Rose and Love phù hợp để gửi tặng vợ, bạn gái hoặc người thân trong những dịp đặc biệt.', '60000', '55000', 0, 1, 10, 'hoale1.jpg'),
(25, 1, 'Hoa hồng đỏ ', 'Giỏ hoa gồm có:\r\nHoa hồng đỏ\r\nHoa baby trắng\r\nLá bạc đối xứng', 'Thành công có được ngày hôm nay một phần lớn chính là nhờ sự giúp đỡ đáng quý của những người xung quanh ta. Trong dịp đặc biệt này hãy gửi tặng họ, những người bạn bè, đối tác, đồng nghiệp hay cấp trên đáng quí một giỏ hoa đầy tươi sắc nhé. Giỏ hoa là sự kết hợp đầy tinh tế từ những cánh hồng đỏ rực rỡ và baby trắng thật tươi sáng', '66000', '53000', 0, 0, 10, 'hoale2.jpg'),
(26, 1, 'Giỏ hoa hy vọng', 'Lẵng hoa gồm có:\r\n\r\nHoa hướng dương\r\nHoa hồng dâu\r\nHoa cát tường trắng\r\nHoa đồng tiền trắng\r\nCác loại lá phụ khác', 'Giỏ hoa được thiết kế từ những hoa hướng dương đầy sắc âm, kết hợp tinh tế với sắc trắng thanh tao từ đồng tiền vá cát tường, được tô điểm thêm đặc biệt bởi sắc hồng ngọt ngào từ những cánh hồng dâu. Giỏ hoa là món quà tuyệt vời và cực kỳ ý nghĩa cho những người phụ nữ quan trọng nhất trong cuộc đời mình. Đây cũng là một món quà chúc mừng đầy tinh tế mà bạn có thể gửi tặng cho đồng nghiệp, bạn bè hay cấp trên vào những dịp như kỉ niệm, khai trương, sinh nhật...', '150000', '105000', 0, 1, 10, 'giohoahyvong.jpg'),
(27, 7, 'Red Tulip', 'Bó Hoa Red Tulip được thiết kế từ \r\n\r\n10 cành tulip đỏ\r\n10 cành hoa hồng đỏ\r\nCác loại lá phụ trang trí khác', 'Không có gì hoàn hảo hơn một bó hoa hồng đỏ đầy lãng mạn vào buổi sáng, mở đầu cho một ngày mới thật nhiều niềm vui. Càng đặc biệt hơn với sự kết hợp của hoa tulip đỏ cao cấp, tạo nên một nét đẹp vô cùng sang trọng và hiện đại. Một bó hoa \"giải cảm\" giúp cho tinh thần của người nhận trở nên phấn chấn và tràn đầy năng lượng hơn. Thật là một liều thuốc tinh thần thật tốt đẹp phải không nào, còn chần chừ gì mà không tặng nó ngay cho người mà bạn yêu quý nhất!', '75000', '25000', 0, 0, 10, 'hoatulip.jpg'),
(29, 1, 'Hoa baby', 'Bó hoa gồm có:\r\n\r\nHoa baby phun hồng ', 'Baby là loại hoa vô cùng đặt biệt khi mang trong mình vẻ đẹp ngọt ngào mà đầy dễ thương. Bó hoa được tạo nên từ baby phun hồng nhỏ xinh và các  được gói theo phong cách giản dị mà đầy tinh tế. Không cần đợi đến sinh nhật, kỉ niệm hay một ngày đặc biệt nào, hãy tặng bó hoa đặc biệt này cho người bạn yêu thương và khiến một ngày bình thường trở thành một ngày thật đáng nhớ nhé.', '75000', '63000', 0, 0, 10, 'hoale6.jpg'),
(30, 1, 'Hoa baby BB76', 'Bó hoa gồm có:\r\n\r\nHoa baby phun xanh', '\"Vui lên nào vì cuộc sống có bao nhiêu mà hững hờ\" là thông điệp đầy ý nghĩa mà bó hoa này mang đến cho bạn đấy. Hãy gửi đến những người mình quan tâm nhất một bó hoa hồng đa sắc cùng lời nhắn dù cho có khó khăn, vấp ngã hay thất bại, vẫn luôn có tôi ở bên cạnh động viên, an ủi và nâng đỡ tâm hồn bạn nhé.', '75000', '63000', 0, 1, 10, 'hoale7.jpg'),
(31, 1, 'Hoa baby BB60', 'dasdas', 'dsadas', '75000', '63000', 0, 0, 10, 'hoale8.jpg'),
(33, 3, 'Hoa A12', 'Mẫu hoa gồm có:\r\n\r\nHoa cúc trắng\r\nHoa lan hồ điệp trắng\r\nHoa lan dendro trắng\r\nHoa cúc cailimero trắng\r\nHoa cúc calimero xanh\r\nHoa cẩm tú cầu', 'Với những người ở xa không thể trực tiếp đến tang lễ chia buồn cùng gia đình, thì vòng hoa là đại diện duy nhất cho tấm lòng, sự quan tâm chia sẻ của người gửi. Vì thế, để thể hiện đầy đủ và trang trọng nhất lời chia buồn của bạn, vòng hoa phải được lựa chọn và chuẩn bị một cách thật nghiêm túc và cẩn thận. Vẫn là vòng hoa trắng truyền thống, nhưng được điểm thêm hồ điệp trắng, mang đến cho vòng hoa sự sang trọng, chân kính.', '750000', '630000', 0, 0, 10, 'hoachiabuon1.jpg'),
(34, 3, 'Hoa A13', 'Vòng hoa gồm có:\r\nHoa lan dendro tím\r\nHoa ly vàng\r\nHoa tú cầu xanh bơ\r\nCác loại lá phụ trang trí khác', 'Kết hợp từ các loại hoa lan tím, cẩm tú cầu và hoa ly vàng, mẫu vòng hoa tang lễ Nốt Trầm thể hiện một sắc thái trầm buồn như sự tiếc nuối, cảm thương cho người đã khuất. Chiếc kệ hoa mang dáng vẻ trang trọng, uy nghiêm nhưng cũng đượm buồn, là món quà kính viếng phù hợp để chia sẻ sâu sắc nỗi mất mát cùng gia quyến.', '750000', '630000', 0, 0, 10, 'hoachiabuon2.jpg'),
(35, 1, 'Hoa baby b13', 'Bó hoa gồm có:\r\n\r\n50 hoa hồng đỏ\r\nHoa baby trắng viền xung quanh', 'Bó hoa gồm 50 hồng đỏ gồm những cánh hồng tươi rực rỡ nhất được gói theo tông giấy hồng dễ thương như một lời nhắn trao gửi yêu thương đầy chân thành nhất. Giữa cuộc sống đầy thử thách, một chút chia sẻ, trao gửi yêu thương nhất định sẽ làm ấm lòng và tiếp thêm sức mạnh cho bạn ấy đấy', '75000', '63000', 0, 0, 10, 'hoale10.jpg'),
(38, 7, 'Cổ tích', 'Bó hoa gồm có:\r\n40 hồng trà \r\n\r\nBaby phun hồng nhạt', 'Những câu chuyện tình có khi dịu dàng và sáng trong như những giọt nắng, có khi dịu dàng trầm lặng và lãng mạn như những buổi hoàng hôn. Hãy cùng điểm tô thêm những sắc màu vào câu chuyện tình yêu của hai bạn nhé. Bó hoa 40 cành hồng kem viền baby phun hồng đầy ngọt ngào, chứa đầy tình yêu thương sẽ là một món quà cực kỳ đặc biệt đấy.', '500000', '480000', 0, 0, 25, 'hoatinhyeu1.jpg'),
(39, 7, 'Ngày yêu', 'Bó hoa gồm có:\r\n50 bông hồng đỏ\r\n\r\nCúc thạch thảo trắng', 'Những dự định, những ước mơ hoài bão trong cuộc đời hẵn luôn được tiếp thêm sức mạnh bời nụ cười đầy đáng yêu, những lời động viên đầy chân thành của người con gái đặc biệt ấy. Bó hoa hồng đỏ tươi rực rỡ như một lời cảm ơn đầy chân thành, hay cũng có thể là một thông điệp tình yêu đầy dễ thương mà bạn có thể gửi tặng người ấy đó.', '1500000', '1250000', 0, 0, 10, 'hoatinhyeu2.jpg'),
(40, 7, 'Tim tình yêu', 'Mẫu hoa gồm có:\r\nHoa hồng đỏ\r\n\r\nHoa hồng dâu\r\n\r\nHoa baby trắng viền ngoài', 'Lẵng hoa được các thợ hoa chuyên nghiệp tạo thành hình trái tim hết sức ấn tượng. Lẵng hoa chứa đầy tình yêu này được tạo nên từ những đoá hồng tươi rói nhiều màu sắc và cực kỳ lãng mạn. Đây là món quà vô cùng phù hợp nếu như bạn muốn tạo một ấn tượng không thể nào phai trong mắt người yêu. Sẽ không có món quà nào tốt hơn lẵng hoa tình yêu này khi bạn muốn đánh dấu cột mốc mối quan hệ tuyệt đẹp của hai bạn.', '2000000', '1750000', 0, 1, 5, 'hoatinhyeu6.jpg'),
(41, 7, 'Forever', 'Bó hoa gồm có:\r\n99 hoa hồng kem pastel', 'Quyến rũ và nổi bật, bó hồng 99 bông kem Forever sẽ thay bạn gửi đến cô ấy những lời tâm tình ngọt ngào và chân thành nhất. Bó hoa tuyệt đẹp cũng như tình yêu của các bạn vậy. Đây chắc chắn là món quà hoàn hảo để đánh dấu kỉ niệm thời gian bên nhau của các bạn, giúp bạn ghi điểm điểm tuyệt đối trong mắt người ấy. Ngay cả khi không có dịp đặc biệt nào bạn cũng có thể tặng người người thương bó hoa 99 bông này như một ngạc nhiên đầy ngọt ngào và thú vị.', '2500000', '2100000', 0, 1, 10, 'hoatinhyeu3.jpg'),
(42, 2, 'Kệ hoa khai trương phát đạt', 'Mẫu hoa gồm có:\r\n\r\nLan hồ điệp trắng\r\nCẩm tú cầu xanh\r\nHoa hồng dâu, hồng pastel\r\nĐồng tiền đỏ\r\nCác loại lá phụ khác.', 'Mang một sắc màu đầy tinh tế, kệ hoa là sự kết hợp giữa những loại hoa thanh tao mà quí phái nhất. Kệ hoa gồm hoa ly, hồng đỏ, tú cầu và nhiều loại hoa khác tượng trưng cho sự may mắn, niềm vui chiến thắng đầy hân hoan. Kệ hoa khai trương phát đạt là một món quà tuyệt vời thay cho lời cảm ơn đến những người đã luôn sát cánh, giúp đỡ bạn trong con đường sự nghiệp.', '1670000', '1200000', 0, 0, 5, 'kehoakhaitruongphatdat.jpg'),
(43, 2, 'Hoa khai trương 5', 'Mẫu hoa gồm có:\r\n\r\nLan hồ điệp trắng\r\nĐồng tiền đỏ\r\nHồng dâu, trắng, tím, đỏ\r\nCúc dại\r\nTú cầu xanh\r\nThạch thảo tím\r\nCác loại lá phụ khác.', 'Mẫu kệ hoa khai trương đơm hoa kết trái được thiết kế với thông điệp đặc biệt thể hiện niềm vui và mong ước chân thành dành cho những thành công sắp tới và sự khởi đầu mới đầy tốt đẹp của người nhận mà người gửi muốn nhắn nhủ và trao gửi.', '1650000', '1500000', 0, 0, 4, 'Domhoakettrai.jpg'),
(44, 2, 'Thuận buồm xuôi gió', 'Mẫu hoa gồm có:\r\n\r\nĐồng tiền vàng\r\nĐồng tiền hồng\r\nHoa hồng hột gà, hồng đỏ\r\nHồng môn đỏ\r\nLy hồng\r\nLan mokara vàng\r\nLan trắng\r\nCác loại lá phụ khác.', 'Là một bài ca đầy tươi sáng mà hùng hồn tạo nên từ những cánh hoa tươi đẹp nhất. Kệ hoa Thuận Buồm Xuôi Gió được các thợ hoa chuyên nghiệp thiết kế từ các loại hoa như hoa lan, đồng tiền, hoa hồng... sẽ giúp bạn gửi đi lời chúc mừng đầy nhiệt thành đến bạn bè, đồng nghiệp, đối tác vào ngày ngai trương, khánh thành hay kỉ niệm thành lập.', '2130000', '2000000', 0, 1, 3, 'thuanbuonxuoigio.jpg'),
(45, 1, 'Bó Hoa Ngày Nhà giáo VN', 'Bó hoa gồm có:\r\n\r\n5 bông hướng dương\r\nChuỗi ngọc đỏ\r\nCác loại lá phụ khác', 'Một trong những hạnh phúc nhất trong cuộc đời này chính là có một người bạn để chia sẻ buồn vui, để có một người luôn lắng nghe và bên cạnh bạn dù cho có gì xảy ra. Vì vậy trong những dịp quan trọng trong cuộc đời họ, hoặc một ngày bình thường nào đó, hãy dành lời cảm ơn đầy chân thành đến người bạn đáng quí ấy bằng một bó hướng dương đầy rực rỡ và tươi sáng.', '450000', '410000', 0, 0, 20, 'kinhtrong.jpg'),
(46, 1, 'Giáng sinh ấm áp', 'Sản phẩm gồm có:\r\n\r\nSao tím, cao 60cm\r\nTrang trí\r\nĐế hộp gỗ\r\n\r\n*Sản phẩm cần đặt trước 2-3 ngày.', 'Vào mùa giáng sinh, một cây thông Noel thường mang biểu tượng cho sự sống mạnh mẽ, vượt qua mọi trở ngại, xua đuổi tà ma, mang lại cuộc sống phồn vinh, no ấm. Thậm chí, vì tính chất cây thông dù trong khí hậu khắc nghiệt nhất mà vẫn giữ được dáng vẻ mạnh mẽ, xanh tươi và mang màu xanh vĩnh cửu nên cây thông được xem là biểu tượng sự sống. Vậy nên, hình ảnh cây thông Noel gắn liền với Giáng Sinh, mang niềm vui và sự ấm áp đến cho gia đình.\r\n\r\nGiáng Sinh đang cận kề, còn đợi gì nữa mà không mang về nhà ngay một cây thông Noel trưng trong nhà để cầu mong về một cuộc sống ấm no và an lành.', '700000', '690000', 0, 0, 10, 'giangsinh1.jpg'),
(47, 1, 'Món quà Noel', 'Sản phẩm gồm có:\r\n\r\nCây sơn tùng, cao 60cm\r\nTrang trí\r\nChậu sứ trắng', 'Vào mùa giáng sinh, một cây thông Noel thường mang biểu tượng cho sự sống mạnh mẽ, vượt qua mọi trở ngại, xua đuổi tà ma, mang lại cuộc sống phồn vinh, no ấm. Thậm chí, vì tính chất cây thông dù trong khí hậu khắc nghiệt nhất mà vẫn giữ được dáng vẻ mạnh mẽ, xanh tươi và mang màu xanh vĩnh cửu nên cây thông được xem là biểu tượng sự sống. Vậy nên, hình ảnh cây thông Noel gắn liền với Giáng Sinh, mang niềm vui và sự ấm áp đến cho gia đình.\r\n\r\nGiáng Sinh đang cận kề, còn đợi gì nữa mà không mang về nhà ngay một cây thông Noel trưng trong nhà để cầu mong về một cuộc sống ấm no và an lành', '900000', '750000', 0, 0, 4, 'giangsinh2.jpg'),
(48, 3, 'Hoa tang lễ', '', 'Hãy nhớ rằng, hoa chia buồn không nhất thiết phải thật buồn hoặc ảm đạm. Giữa khoảng thời gian khó khăn này, hãy để những người xung quanh tưởng nhớ đến khoảng thời gian tươi đẹp, đầy sự cống hiến của người đã an nghỉ bằng những đoá hoa tươi từ Flower Corner. Hoa tươi không chỉ dâng sắc, dâng màu, mà còn dâng hương, tạo nên bầu không khí nhẹ nhàng thoải mái hơn cho gia quyến. Chiếc vòng hoa này đặc biệt còn có thêm sắc tím của lan, tượng trưng cho ước muốn của sự vãn sinh. Hãy để những đoá hoa này nói lên lòng thành của bạn đến với gia quyến của người đã khuất.', '1100000', '1000000', 0, 0, 3, 'hoatangle.jpg'),
(49, 3, 'Hoa tang lễ 1', 'Mẫu hoa gồm có:\r\n- cẩm tú cầu\r\n- Đồng tiền vàng\r\n- Cúc trắng\r\n- Hoa Ping Pong tím\r\n- Lá phụ \r\n', 'Kệ hoa được thiết kế bởi đồng tiền, cúc với thiết kế trang nhã là một lời chia buồn đầy tiếc thương cho những mất mát. Hãy gửi kệ hoa này như một lời động viên, an ủi những người ở lại và gửi gắm tiếc nuối cho những người đã ra đi một cách thật chân thành bạn nhé.\r\n', '1300000', '1250000', 0, 0, 2, 'hoatangle1.jpg'),
(50, 4, 'Hoa sinh nhật mẫu 1', 'Bó hoa gồm có:\r\n\r\n30 hoa hồng đỏ\r\nHoa cẩm chướng hồng\r\nCác loại lá phụ khác\r\n', 'Hồng đỏ và cẩm chướng hồng kết hợp cùng những loài hoa lá phụ khác tạo nên một bó hoa đầy tinh tế. Bó hoa đáng yêu là lựa chọn hoàn hảo để gửi tặng bạn gái trong ngày lễ tình nhân Valentine hay trong ngày sinh nhật.', '750000', '700000', 0, 0, 5, 'hoasinhnhat2.jpg'),
(51, 4, 'Bó Hoa sinh nhật mẫu 2', 'Bó hoa gồm có:\r\n\r\n12 bông hồng đỏ\r\nHoa sao vàng\r\nCác loại lá phụ khác', 'Bó hoa mang trong mình không khí tươi vui rộn ràng và đầy sức sống của mùa hạ. Bó hoa gồm hoa hồng với các sắc độ hồng, cam rực rỡ cùng màu lá phụ tươi xanh sẽ giúp bạn làm một ngày của ai đó trở nên đầy vui tươi và đáng nhớ. Vì hãy nhớ rằng, mỗi khoảnh khắc bên nhau đều đáng được trân trọng và gìn giữ.', '500000', '480000', 0, 0, 3, 'hoasinhnhat3.jpg'),
(52, 4, 'Món quà ấn tượng', 'Mẫu hoa gồm có:\r\n\r\nHoa hoa hồng đỏ\r\nHoa cấm chướng hồng\r\nHoa thủy tiên\r\nCác loại lá phụ khác\r\nSocola viên\r\nGấu bông nhỏ (20cm) ', 'Hoa hồng đỏ tượng trưng cho tình yêu mãnh liệt, chân thành và đầy trưởng thành. Một lẵng hoa đẹp sang trọng từ những hoa hồng đỏ tươi và rực rỡ nhất, kết hợp cùng cẩm chướng và thủy tiên hồng thật lãng mạn, Càng đặc biệt hơn, lẵng hoa được gắn thêm chú gấu bông nhỏ và những viên socola đậm đà, chắc chắn sẽ là món quà thật đặc biệt ấn tượng giúp bạn ghi điểm trong tim nàng.', '1050000', '950000', 0, 1, 5, 'hoasinhnhat4.jpg'),
(53, 4, 'Hoa sinh nhật mẫu 3', 'Bó hoa gồm có:\r\n\r\n99 hồng sen mới, hồng kem pastel và hoa hông tím xem kẽ', 'Bó hồng 99 bông hồng dâu và hồng tím kết hợp đẹp như một giấc mơ tình yêu mà bạn luôn mong được xây dựng cùng người ấy. Tông màu cùng phong cách gói trang nhã và hiện đại sẽ giúp bạn ghi điểm trong mắt người ta đó. Ngay cả khi không có dịp đặc biệt nào bạn cũng có thể tặng người quan trọng đó bó hoa 99 bông này như một ngạc nhiên đầy ngọt ngào và thú vị.', '200000', '99000', 0, 0, 2, 'hoasinhnhat5.png'),
(54, 7, 'Bó hoa Only You', 'Bó hoa gồm có:\r\n\r\n12 bông hồng phun xanh đương\r\nCác loại lá phụ khác', 'Dịu dàng mà đầy tươi vui. Bó hoa được kết hợp từ những bông hồng phun xan xinh tươi nhất cùng những loài hoa lá phụ nhỏ xinh khác là một món quà đặc biệt thích hợp tặng đồng nghiệp, bạn bè, cô giáo hay cô bạn gái đáng yêu của bạn. Nhỏ nhắn nhưng đầy ý nghĩa là điều bó hoa này mang đến cho bạn.', '500000', '480000', 0, 0, 20, 'hoatinhyeu8.jpg');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Chỉ mục cho bảng `tbl_baiviet`
--
ALTER TABLE `tbl_baiviet`
  ADD PRIMARY KEY (`baiviet_id`);

--
-- Chỉ mục cho bảng `tbl_category`
--
ALTER TABLE `tbl_category`
  ADD PRIMARY KEY (`category_id`);

--
-- Chỉ mục cho bảng `tbl_danhmuc_tin`
--
ALTER TABLE `tbl_danhmuc_tin`
  ADD PRIMARY KEY (`danhmuctin_id`);

--
-- Chỉ mục cho bảng `tbl_donhang`
--
ALTER TABLE `tbl_donhang`
  ADD PRIMARY KEY (`donhang_id`);

--
-- Chỉ mục cho bảng `tbl_giaodich`
--
ALTER TABLE `tbl_giaodich`
  ADD PRIMARY KEY (`giaodich_id`);

--
-- Chỉ mục cho bảng `tbl_giohang`
--
ALTER TABLE `tbl_giohang`
  ADD PRIMARY KEY (`giohang_id`);

--
-- Chỉ mục cho bảng `tbl_khachhang`
--
ALTER TABLE `tbl_khachhang`
  ADD PRIMARY KEY (`khachhang_id`);

--
-- Chỉ mục cho bảng `tbl_sanpham`
--
ALTER TABLE `tbl_sanpham`
  ADD PRIMARY KEY (`sanpham_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `tbl_baiviet`
--
ALTER TABLE `tbl_baiviet`
  MODIFY `baiviet_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `tbl_category`
--
ALTER TABLE `tbl_category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `tbl_danhmuc_tin`
--
ALTER TABLE `tbl_danhmuc_tin`
  MODIFY `danhmuctin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `tbl_donhang`
--
ALTER TABLE `tbl_donhang`
  MODIFY `donhang_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT cho bảng `tbl_giaodich`
--
ALTER TABLE `tbl_giaodich`
  MODIFY `giaodich_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT cho bảng `tbl_giohang`
--
ALTER TABLE `tbl_giohang`
  MODIFY `giohang_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT cho bảng `tbl_khachhang`
--
ALTER TABLE `tbl_khachhang`
  MODIFY `khachhang_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT cho bảng `tbl_sanpham`
--
ALTER TABLE `tbl_sanpham`
  MODIFY `sanpham_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
