-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1:3307
-- Thời gian đã tạo: Th4 02, 2022 lúc 03:35 PM
-- Phiên bản máy phục vụ: 10.4.16-MariaDB
-- Phiên bản PHP: 7.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `vlxd`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `carts`
--

CREATE TABLE `carts` (
  `id_carts` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_hanghoa` int(11) NOT NULL,
  `soluong` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `carts`
--

INSERT INTO `carts` (`id_carts`, `id_user`, `id_hanghoa`, `soluong`) VALUES
(2, 1, 3, 1),
(6, 2, 4, 1),
(7, 2, 2, 1),
(8, 2, 5, 1),
(10, 5, 2, 1),
(15, 5, 3, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hanghoa`
--

CREATE TABLE `hanghoa` (
  `id_hh` int(11) NOT NULL,
  `image` text NOT NULL,
  `ten_hh` varchar(255) NOT NULL,
  `mota_hh` varchar(255) NOT NULL,
  `gia_hh` int(11) NOT NULL,
  `id_ncc` int(11) DEFAULT NULL,
  `id_tl` int(11) NOT NULL,
  `purchases` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `hanghoa`
--

INSERT INTO `hanghoa` (`id_hh`, `image`, `ten_hh`, `mota_hh`, `gia_hh`, `id_ncc`, `id_tl`, `purchases`) VALUES
(2, 'gach-ong.jpg', 'Gạch ống không nung 6 lỗ TD120\r\n', 'Gạch ống không nung 6 lỗ là một loại của gạch block bê tông cốt liệu. Sản phẩm được sản xuất theo công nghệ ép rung biến tần, nguyên liệu chính gồm xi măng, mạt đá, cát và một số phụ gia khác.. mà sau công đoạn định hình thì tự đóng rắn đạt các chỉ số về ', 1700, 0, 1, 0),
(3, 'da-ong-xam-1.jpg', 'Đá ong xám 10x20cm', 'Đá ong xám hay còn được gọi là đá tổ ong đen hay đá laterite.\r\nĐá tổ ong 10x20 cm là loại đá tự nhiên ốp tường rất thích hợp cho việc ốp lát trang trí nội - ngoại thất các công trình nhà ở như nhà phố, biệt thự, nhà hàng, quán cafe, resort, khách sạn... t', 145000, 0, 2, 21),
(4, 'vua-be-tong-1.jpg', 'Vữa sửa chữa bê tông Sika Refit 2000', 'Vữa sửa chữa bê tông Sika Refit 2000 hay vữa sửa chữa thẩm mỹ bề mặt bê tông với thành phần gốc polymer cải tiến có chứa silicafume được dùng để sửa các khiếm khuyết trên bề mặt bê tông, vữa, đá do tháo khuôn, bị rỗ tổ ong…\r\n\r\nSika Refit 2000 rất thích hợ', 195000, 0, 3, 20),
(5, 'ngoi-viglacera.jpg', 'Ngói Viglacera Đông Triều\r\n', 'Ngói đất sét nung Viglacera Đông Triều là dòng sản phẩm ngói lợp nhà được sản xuất từ nguồn đất sét nung chất lượng cao tại Đông Triều, Quảng Ninh. Trên dây chuyền công nghệ sản xuất hiện đại, bán tự động. Vì vậy, Ngói Đông Triều đã được rất nhiều khách h', 11500, 0, 4, 4),
(6, 'FJyb_mPVw_1535164191_56ed32bc4ace1b42d9184b4e5bd22e44-removebg-preview.png', 'Xi Măng Hạ Long', 'là sản phẩm của xi măng Hạ Long', 300000, NULL, 1, NULL),
(7, 'G2Tc_unnamed__3_-removebg-preview.png', 'Xi mang sông gianh', 'xi măng', 3000000, NULL, 1, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `kho`
--

CREATE TABLE `kho` (
  `id_kho` int(11) NOT NULL,
  `id_hh` int(11) NOT NULL,
  `soluong` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `kho`
--

INSERT INTO `kho` (`id_kho`, `id_hh`, `soluong`) VALUES
(1, 2, 1000),
(2, 3, 300),
(3, 4, 20),
(4, 5, 1000),
(5, 6, 3000),
(6, 3, 1000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `theloai`
--

CREATE TABLE `theloai` (
  `id_tl` int(11) NOT NULL,
  `ten_tl` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `theloai`
--

INSERT INTO `theloai` (`id_tl`, `ten_tl`) VALUES
(1, 'GẠCH BLOCK XI MĂNG'),
(2, 'ĐÁ TỰ NHIÊN'),
(3, 'BÊ TÔNG'),
(4, 'NGÓI LỢP NHÀ'),
(5, 'Gỗ\r\n'),
(6, 'Đá'),
(7, 'Đá');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tintuc`
--

CREATE TABLE `tintuc` (
  `id_tt` int(11) NOT NULL,
  `tieude` text NOT NULL,
  `mota` text NOT NULL,
  `noidung` text NOT NULL,
  `image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `tintuc`
--

INSERT INTO `tintuc` (`id_tt`, `tieude`, `mota`, `noidung`, `image`) VALUES
(1, '3 dòng gạch lát vỉa hè, sân vườn phổ biến nhất hiện nay', 'Gạch lát vỉa hè, gạch lát sân vườn phổ biến nhất hiện nay Hiện nay, s...', 'Hiện nay, sản phẩm gạch lát vỉa hè không chỉ được sử dụng phổ biến trong các công trình công cộng mà còn được dùng cho các dự án nhà ở tư nhân với các tính năng vượt trội về độ bền chắc cũng như tí...', '3-dong-gach.jpg'),
(2, 'Mục tiêu 100% sử dụng Vật liệu không nung sau năm 2015', 'Theo quy định của Bộ Xây dựng, từ 15/1/2013, các công trình xây dựng..', 'Theo quy định của Bộ Xây dựng, từ 15/1/2013, các công trình xây dựng tại các đô thị loại 3 trở lên phải sử dụng 100% vật liệu xây dựng không nung hay Gạch block xây tường không nung; các khu vực cò...', '2014611165830521.jpg'),
(3, 'Lợi nhuận doanh nghiệp dựng giảm mạnh', '<p>Gi&aacute; vật liệu x&acirc;y dựng tăng cao, nhất l&agrave; sắt th&eacute;p đ&atilde; b&agrave;o m&ograve;n lợi nhuận của c&aacute;c doanh nghiệp x&acirc;y dựng lớn trong nửa đầu năm nay.</p>', '<p>6 th&aacute;ng đầu năm, c&aacute;c doanh nghiệp x&acirc;y dựng đầu ng&agrave;nh c&oacute; t&igrave;nh h&igrave;nh kinh doanh k&eacute;m khả quan. Doanh thu thuần của C&ocirc;ng ty cổ phần X&acirc;y dựng Coteccons (CTD) kỳ n&agrave;y đạt gần 5.120 tỷ đồng, giảm gần một phần ba so với 6 th&aacute;ng năm trước. Trong đ&oacute;, mảng cho thu&ecirc; thiết bị x&acirc;y dựng giảm mạnh nhất với hơn 78%. Doanh thu hợp đồng x&acirc;y dựng l&agrave; mảng kinh doanh ch&iacute;nh cũng giảm 32%, tương đương giảm hơn 2.400 tỷ đồng.</p>\r\n\r\n<p>Ngo&agrave;i suy giảm doanh thu, &quot;anh cả&quot; ng&agrave;nh x&acirc;y dựng c&ograve;n đội th&ecirc;m chi ph&iacute; quản l&yacute; doanh nghiệp, phần lớn l&agrave; chi ph&iacute; nh&acirc;n vi&ecirc;n v&agrave; ph&aacute;t sinh th&ecirc;m dự ph&ograve;ng c&aacute;c khoản thu kh&oacute; đ&ograve;i. Điều n&agrave;y dẫn đến lợi nhuận sau thuế b&aacute;n ni&ecirc;n giảm 65% so với c&ugrave;ng kỳ, về mức 99 tỷ đồng. Như vậy, Coteccons mới thực hiện được khoảng một phần ba kế hoạch kinh doanh cả năm.</p>\r\n\r\n<p><img alt=\"Giám sát và công nhân xây dựng tại một dự án ở TP HCM. Ảnh: CTD.\" src=\"https://i1-kinhdoanh.vnecdn.net/2021/08/02/Giam-sat-cong-nhan-tai-du-an-d-2803-1974-1627911607.jpg?w=680&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=dimPCGYUbqTiyB7wsWhC4g\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Gi&aacute;m s&aacute;t v&agrave; c&ocirc;ng nh&acirc;n x&acirc;y dựng tại một dự &aacute;n ở TP HCM. Ảnh:&nbsp;<em>CTD</em>.</p>\r\n\r\n<p>Chung cảnh suy giảm lợi nhuận nhưng C&ocirc;ng ty cổ phần Tập đo&agrave;n Đầu tư X&acirc;y dựng Ricons lại c&oacute; doanh thu tăng 11%. Cụ thể, doanh thu b&aacute;n ni&ecirc;n đạt hơn 3.000 tỷ đồng, trong đ&oacute;, lĩnh vực kinh doanh ch&iacute;nh tăng hơn 24%.</p>\r\n\r\n<p>Tuy nhi&ecirc;n, gi&aacute; vốn v&agrave; chi ph&iacute; quản l&yacute; doanh nghiệp trong kỳ tăng mạnh. Trong đ&oacute;, Ricons chi gần 93 tỷ đồng cho quản l&yacute; doanh nghiệp, chiếm phần lớn l&agrave; chi ph&iacute; nh&acirc;n vi&ecirc;n. V&igrave; thế, l&atilde;i r&ograve;ng b&aacute;n ni&ecirc;n vẫn giảm 38% so với c&ugrave;ng kỳ, c&ograve;n mức 57 tỷ đồng. Trong 6 th&aacute;ng đầu năm, Ricons đ&atilde; thực hiện gần 38% kế hoạch doanh thu v&agrave; lợi nhuận.</p>\r\n\r\n<p>Với C&ocirc;ng ty cổ phần Tập đo&agrave;n X&acirc;y dựng H&ograve;a B&igrave;nh (HBC), lũy kế 6 th&aacute;ng đầu năm ghi nhận hơn 67 tỷ đồng, tăng gấp 6 lần so với nửa đầu năm 2020. Tuy nhi&ecirc;n, mức l&atilde;i n&agrave;y kh&ocirc;ng xuất ph&aacute;t từ hoạt động kinh doanh ch&iacute;nh m&agrave; nhờ thu nhập đột biến từ chuyển nhượng c&aacute;c khoản đầu tư v&agrave; tiết giảm chi ph&iacute;. Với kết quả n&agrave;y, Tập đo&agrave;n H&ograve;a B&igrave;nh cũng chỉ ho&agrave;n th&agrave;nh 29% kế hoạch lợi nhuận cả năm.</p>\r\n\r\n<p>B&aacute;o c&aacute;o t&agrave;i ch&iacute;nh ri&ecirc;ng của HBC cũng cho thấy, hoạt động b&aacute;n h&agrave;ng x&acirc;y dựng c&oacute; doanh thu gần 5.300 tỷ đồng, giảm nhẹ so với c&ugrave;ng kỳ. C&ugrave;ng l&uacute;c, gi&aacute; vốn tăng nhanh hơn đẩy lợi nhuận gộp mảng n&agrave;y về mức gần 320 tỷ đồng, tức bi&ecirc;n l&atilde;i gộp khoảng 6%.</p>\r\n\r\n<p><strong>Bi&ecirc;n lợi nhuận gộp mảng x&acirc;y dựng thấp do gi&aacute; vốn cao l&agrave; c&acirc;u chuyện chung của Coteccons, Ricons v&agrave; H&ograve;a B&igrave;nh</strong>. Đ&acirc;y l&agrave; hệ quả của t&igrave;nh trạng gi&aacute; vật liệu x&acirc;y dựng tăng cao do ảnh hưởng của Covid-19, nhất l&agrave; sắt, th&eacute;p x&acirc;y dựng.</p>\r\n\r\n<p>Với Coteccons, gi&aacute; vốn hoạt động x&acirc;y dựng nửa đầu năm bằng 95% doanh thu khiến lợi nhuận gộp mảng n&agrave;y chỉ c&ograve;n 250 tỷ đồng. Ricons l&agrave; doanh nghiệp duy nhất trong nh&oacute;m tr&ecirc;n c&oacute; doanh thu tăng mạnh, nhưng cũng v&igrave; gi&aacute; vốn tăng nhanh hơn n&ecirc;n tổng lại lợi nhuận suy giảm. Ri&ecirc;ng mảng x&acirc;y dựng, l&atilde;i gộp chỉ đạt 136 tỷ đồng.</p>\r\n\r\n<p>L&atilde;nh đạo Coteccons cho biết, đ&acirc;y l&agrave; hệ quả từ việc chịu ảnh hưởng của nền kinh tế kh&oacute; khăn k&eacute;o d&agrave;i từ năm ngo&aacute;i. Sang 2021, diễn biến của dịch bệnh c&agrave;ng phức tạp hơn l&agrave;m ảnh hưởng nghi&ecirc;m trọng đến lĩnh vực bất động sản v&agrave; x&acirc;y dựng, t&aacute;c động trực tiếp đến hoạt động kinh doanh của c&ocirc;ng ty.</p>\r\n\r\n<p>tỷ đồngLợi nhuận sau thuế b&aacute;n ni&ecirc;n của một số doanh nghiệp x&acirc;y dựng20212020CotecconsH&ograve;a B&igrave;nhRiconsHưng Thịnh InconsFLC Faros-200-1000100200300400VnExpressRicons●&nbsp;2020:&nbsp;92</p>\r\n\r\n<p><strong>Với những doanh nghiệp l&agrave; &quot;s&acirc;n nh&agrave;&quot; của những tập đo&agrave;n c&oacute; sẵn hệ sinh th&aacute;i bất động sản, t&igrave;nh h&igrave;nh kinh doanh c&oacute; vẻ t&iacute;ch cực hơn.</strong>&nbsp;C&ocirc;ng ty cổ phần X&acirc;y dựng FLC Faros (ROS) b&aacute;o l&atilde;i b&aacute;n ni&ecirc;n gần 33 tỷ đồng, tho&aacute;t khỏi khoản lỗ hơn 150 tỷ đồng c&ugrave;ng kỳ năm ngo&aacute;i. Động lực tăng trưởng của doanh nghiệp n&agrave;y đến từ tăng doanh thu thi c&ocirc;ng, cung cấp dịch vụ v&agrave; b&aacute;n h&agrave;ng. C&ugrave;ng với điều tiết hợp l&yacute; c&aacute;c chi ph&iacute; thường xuy&ecirc;n, FLC Faros c&oacute; th&ecirc;m gần 49 tỷ đồng l&atilde;i hoạt động cho vay.</p>\r\n\r\n<p>Hưng Thịnh Incons cũng c&oacute; kết quả kinh doanh ổn định với 2.855 tỷ đồng doanh thu v&agrave; 120 tỷ đồng lợi nhuận sau thuế. Ri&ecirc;ng qu&yacute; II, c&aacute;c chỉ số tr&ecirc;n tăng lần lượt gần 160% v&agrave; hơn 4.500% do hoạt động x&acirc;y dựng c&aacute;c dự &aacute;n đ&atilde; ho&agrave;n th&agrave;nh nghiệm thu hạng mục b&agrave;n giao theo tiến độ, khiến gi&aacute; trị nghiệm thu tăng so với c&ugrave;ng kỳ. Ngo&agrave;i ra, c&ocirc;ng ty c&oacute; th&ecirc;m lợi nhuận từ hoạt động kinh doanh bất động sản từ C&ocirc;ng ty B&igrave;nh Triệu.</p>', '5ERF_Giam-sat-cong-nhan-tai-du-an-d-2803-1974-1627911607.jpg'),
(4, '<p>tổ c&ocirc;ng t&aacute;c đặc biệt</p>', '<p><strong>(X&acirc;y dựng) &ndash; Ng&agrave;y 17 - 18/9, Thứ trưởng Bộ X&acirc;y dựng L&ecirc; Quang H&ugrave;ng - Tổ trưởng Tổ c&ocirc;ng t&aacute;c đặc biệt của Bộ X&acirc;y dựng đ&atilde; dẫn đầu Đo&agrave;n c&ocirc;ng t&aacute;c kiểm tra c&ocirc;ng t&aacute;c ph&ograve;ng, chống Covid-19 tại 2 dự &aacute;n trọng điểm của Th&agrave;nh phố Hồ Ch&iacute; Minh v&agrave; c&aacute;c khu c&aacute;ch ly - điều trị Covid-19, bệnh viện d&atilde; chiến tại B&igrave;nh Dương</strong></p>', '<p>Chiều 17/9, Đo&agrave;n c&ocirc;ng t&aacute;c đ&atilde; kiểm tra tại dự &aacute;n Bệnh viện Nhi đồng 1 &ndash; Th&agrave;nh phố Hồ Ch&iacute; Minh. B&aacute;o c&aacute;o với Đo&agrave;n c&ocirc;ng t&aacute;c, đại diện chủ đầu tư cho biết, hiện dự &aacute;n đ&atilde; ho&agrave;n th&agrave;nh từ 70 &ndash; 95% (t&ugrave;y từng hạng mục). Ban Quản l&yacute; dự &aacute;n v&agrave; c&aacute;c nh&agrave; thầu đ&atilde; cố gắng thực hiện &ldquo;3 tại chỗ&rdquo;, nhằm đ&aacute;p ứng mọi hoạt động trong bối cảnh gi&atilde;n c&aacute;ch x&atilde; hội ph&ograve;ng, chống Covid-19.</p>\r\n\r\n<p>Việc thực hiện 5K tr&ecirc;n c&ocirc;ng trường đ&atilde; được c&aacute;c b&ecirc;n li&ecirc;n quan l&agrave;m triệt để như tổ chức thực hiện đ&aacute;nh gi&aacute; nguy cơ l&acirc;y nhiễm dịch Covid-19 tr&ecirc;n c&ocirc;ng trường; nơi ở của c&ocirc;ng nh&acirc;n được bố tr&iacute; th&ocirc;ng tho&aacute;ng, thường xuy&ecirc;n khử khuẩn; c&ocirc;ng t&aacute;c thực hiện x&eacute;t nghiệm PCR mỗi tuần 1 lần; kh&ocirc;ng thi c&ocirc;ng ca đ&ecirc;m để giảm chỉ số rủi ro l&acirc;y nhiễm; kiểm so&aacute;t chặt chẽ việc cung cấp vật tư, thiết bị v&agrave; bố tr&iacute; khu vực ri&ecirc;ng khi nhập h&agrave;ng h&oacute;a&hellip;</p>\r\n\r\n<p>Để dự &aacute;n được thi c&ocirc;ng an to&agrave;n v&agrave; đạt hiệu quả, đạt tiến độ, g&oacute;p phần t&iacute;ch cực v&agrave;o c&ocirc;ng t&aacute;c ph&ograve;ng, chống dịch, Ban Quản l&yacute; dự &aacute;n cũng kiến nghị về việc cần hỗ trợ ti&ecirc;m vắc xin ph&ograve;ng Covid-19 cho to&agrave;n bộ người lao động tr&ecirc;n c&ocirc;ng trường.</p>\r\n\r\n<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\">\r\n	<tbody>\r\n		<tr>\r\n			<td><img alt=\"to cong tac dac biet cua bo xay dung kiem tra cong tac phong chong dich tai cac du an trong diem tai thanh pho ho chi minh\" src=\"https://baoxaydung.com.vn/stores/news_dataimages/vananh/092021/18/19/in_article/4455_image002.jpg\" /></td>\r\n		</tr>\r\n		<tr>\r\n			<td>Đo&agrave;n thị s&aacute;t từ tr&ecirc;n cao tại c&ocirc;ng trường Bệnh viện Nhi đồng 1.</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>B&ecirc;n cạnh đ&oacute;, c&aacute;c nh&agrave; thầu cũng đ&atilde; gặp phải kh&oacute; khăn khi kh&ocirc;ng thể bổ sung nh&acirc;n lực, vật tư, thiết bị, đặc biệt l&agrave; thiết bị nhập khẩu theo tiến độ do hạn chế về lưu th&ocirc;ng h&agrave;ng h&oacute;a v&agrave; số đ&ocirc;ng c&ocirc;ng nh&acirc;n về qu&ecirc; chống dịch.</p>\r\n\r\n<p>Sau khi nghe đại diện chủ đầu tư b&aacute;o c&aacute;o, Đo&agrave;n cho rằng trong t&igrave;nh h&igrave;nh diễn biến phức tạp của dịch bệnh Covid-19 nhưng chủ đầu tư v&agrave; c&aacute;c nh&agrave; thầu đ&atilde; đảm bảo được c&aacute;c biện ph&aacute;p an to&agrave;n trong tổ chức thi c&ocirc;ng, cũng như thực hiện kh&aacute; tốt c&aacute;c biện ph&aacute;p an to&agrave;n cho người lao động tr&ecirc;n c&ocirc;ng trường trong bối cảnh kh&oacute; khăn như hiện nay.</p>\r\n\r\n<p>Qua đ&oacute;, Đo&agrave;n cũng chia sẻ những kh&oacute; khăn, động vi&ecirc;n c&aacute;n bộ, người lao động tr&ecirc;n c&ocirc;ng trường dự &aacute;n. Mong rằng chủ đầu tư, đơn vị tư vấn gi&aacute;m s&aacute;t, c&aacute;c nh&agrave; thầu thực hiện tốt 5K của Bộ Y tế v&agrave; c&aacute;c hướng dẫn ph&ograve;ng, chống dịch của Bộ X&acirc;y dựng, đảm bảo được sức khỏe cho tất cả người lao động trong bối cảnh dịch Covid-19 đang ảnh hưởng như hiện nay, để thực hiện tốt tiến độ, đảm bảo chất lượng của dự &aacute;n, nhanh ch&oacute;ng đưa dự &aacute;n v&agrave;o hoạt động, nhằm đ&aacute;p ứng việc kh&aacute;m chữa bệnh cho người d&acirc;n, cũng như tăng th&ecirc;m cơ sở, giảm tải cho ng&agrave;nh Y tế th&agrave;nh phố.</p>\r\n\r\n<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\">\r\n	<tbody>\r\n		<tr>\r\n			<td><img alt=\"to cong tac dac biet cua bo xay dung kiem tra cong tac phong chong dich tai cac du an trong diem tai thanh pho ho chi minh\" src=\"https://baoxaydung.com.vn/stores/news_dataimages/vananh/092021/18/19/in_article/4456_image003.jpg\" /></td>\r\n		</tr>\r\n		<tr>\r\n			<td>Đo&agrave;n đang trao đổi c&aacute;c biện ph&aacute;p an to&agrave;n chống dịch tr&ecirc;n c&ocirc;ng trường dự &aacute;n tuyến đường sắt đ&ocirc; thị số 1 (Bến Th&agrave;nh &ndash; Suối Ti&ecirc;n).</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>Ngay sau đ&oacute;, Đo&agrave;n đ&atilde; đến c&ocirc;ng trường dự &aacute;n tuyến đường sắt đ&ocirc; thị số 1 (Bến Th&agrave;nh &ndash; Suối Ti&ecirc;n). Đại diện Ban Quản l&yacute; đường sắt đ&ocirc; thị Th&agrave;nh phố Hồ Ch&iacute; Minh (MAUR) cho biết về tiến độ thực hiện dự &aacute;n hiện nay, mặc d&ugrave; thi c&ocirc;ng trong ho&agrave;n cảnh hết sức kh&oacute; khăn do dịch bệnh Covid-19 c&ograve;n căng thẳng, tuy nhi&ecirc;n tiến độ đ&atilde; đạt được của to&agrave;n dự &aacute;n tr&ecirc;n 87% (tiến độ tăng h&agrave;ng tuần).</p>\r\n\r\n<p>Thực hiện c&aacute;c biện ph&aacute;p ph&ograve;ng, chống dịch Covid-19, MAUR đ&atilde; triển khai ti&ecirc;m ngừa vắc xin mũi 1 cho khoảng 1.400 chuy&ecirc;n gia, kỹ sư, nh&acirc;n vi&ecirc;n v&agrave; c&ocirc;ng nh&acirc;n tr&ecirc;n c&ocirc;ng trường của Tư vấn chung NJPT v&agrave; c&aacute;c Tổng thầu dự &aacute;n (trong số n&agrave;y c&oacute; khoảng 30% đ&atilde; được ti&ecirc;m mũi 2), MAUR đang phối hợp với c&aacute;c cơ quan chức năng để ti&ecirc;m ph&ograve;ng cho c&aacute;c nh&acirc;n sự c&ograve;n lại.</p>\r\n\r\n<p>Để thực hiện tốt c&ocirc;ng t&aacute;c ph&ograve;ng, chống dịch Covid-19, tr&ecirc;n c&ocirc;ng trường đều thực hiện nguy&ecirc;n tắc 5K v&agrave; quản l&yacute; tốt c&aacute;c c&ocirc;ng nh&acirc;n tham gia thi c&ocirc;ng v&agrave; tiến h&agrave;nh x&eacute;t nghiệm nhanh để đảm bảo ph&aacute;t hiện sớm chuỗi l&acirc;y nhiễm để giữ an to&agrave;n tại c&ocirc;ng trường. Ngo&agrave;i ra, c&ograve;n tu&acirc;n thủ nghi&ecirc;m nguy&ecirc;n tắc &ldquo;3 tại chỗ&rdquo; v&agrave; &ldquo;1 cung đường 2 điểm đến&rdquo;.</p>\r\n\r\n<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\">\r\n	<tbody>\r\n		<tr>\r\n			<td><img alt=\"to cong tac dac biet cua bo xay dung kiem tra cong tac phong chong dich tai cac du an trong diem tai thanh pho ho chi minh\" src=\"https://baoxaydung.com.vn/stores/news_dataimages/vananh/092021/18/19/in_article/4458_image004.jpg\" /></td>\r\n		</tr>\r\n		<tr>\r\n			<td>Đo&agrave;n kiểm tra c&ocirc;ng t&aacute;c đảm bảo an to&agrave;n kỹ thuật tại c&ocirc;ng trường dự &aacute;n tuyến đường sắt đ&ocirc; thị số 1 (Bến Th&agrave;nh &ndash; Suối Ti&ecirc;n).</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>Cũng theo MAUR, sau khi tạm ngưng c&aacute;c c&ocirc;ng việc tại văn ph&ograve;ng để thực hiện c&aacute;c biện ph&aacute;p chống dịch n&ecirc;n việc thi c&ocirc;ng bị cản trở v&agrave; chỉ kh&ocirc;i phục được khoảng từ 15% đến 30% c&aacute;c hạng mục quan trọng của dự &aacute;n như: c&ocirc;ng t&aacute;c kết cấu, ho&agrave;n thiện kiến tr&uacute;c, cơ điện, đổ b&ecirc; t&ocirc;ng tại c&aacute;c nh&agrave; ga v&agrave; kiểm tra tiếp nhận c&aacute;c thiết bị...</p>\r\n\r\n<p>Theo MAUR, nếu được ph&eacute;p di chuyển trở lại đối với c&aacute;c dự &aacute;n thi c&ocirc;ng trọng điểm sẽ kh&ocirc;i phục từ 40% đến 80% c&aacute;c hạng mục quan trọng tại c&aacute;c c&ocirc;ng trường thi c&ocirc;ng c&aacute;c g&oacute;i thầu của dự &aacute;n. Sắp tới, t&igrave;nh h&igrave;nh dịch kiểm so&aacute;t được tốt hơn sẽ tạo cơ hội cho giao th&ocirc;ng mở luồng xanh cho vật tư, vật liệu cũng như việc nhập thiết bị từ nước ngo&agrave;i về cũng dễ d&agrave;ng hơn, khi đ&oacute; khối lượng dự &aacute;n c&oacute; thể đạt tr&ecirc;n 90% v&agrave;o cuối năm 2021.</p>\r\n\r\n<p>Chia sẻ với những kh&oacute; khăn m&agrave; MAUR v&agrave; c&aacute;c đơn vị c&oacute; li&ecirc;n quan đang gặp phải tại dự &aacute;n, Đo&agrave;n cũng đ&aacute;nh gi&aacute; cao mọi nỗ lực của to&agrave;n bộ người lao động tr&ecirc;n c&ocirc;ng trường dự &aacute;n khi phải duy tr&igrave; thi c&ocirc;ng v&agrave; l&agrave;m việc trong bối cảnh hết sức kh&oacute; khăn cũng như việc duy tr&igrave; bộ m&aacute;y với gần 200 c&ocirc;ng nh&acirc;n tại g&oacute;i thầu n&agrave;y.</p>\r\n\r\n<p>B&ecirc;n cạnh đ&oacute;, Tư vấn gi&aacute;m s&aacute;t vẫn kiểm tra li&ecirc;n tục, kiểm so&aacute;t được chất lượng. Ban Quản l&yacute; cơ bản kiểm so&aacute;t được mọi vấn đề, tuy nhi&ecirc;n vẫn c&ograve;n c&oacute; 1 số kh&oacute; khăn nhất định.</p>\r\n\r\n<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\">\r\n	<tbody>\r\n		<tr>\r\n			<td><img alt=\"to cong tac dac biet cua bo xay dung kiem tra cong tac phong chong dich tai cac du an trong diem tai thanh pho ho chi minh\" src=\"https://baoxaydung.com.vn/stores/news_dataimages/vananh/092021/18/19/in_article/4459_image005.jpg\" /></td>\r\n		</tr>\r\n		<tr>\r\n			<td>Đo&agrave;n trao đổi c&aacute;c biện ph&aacute;p đảm bảo chất lượng c&ocirc;ng tr&igrave;nh tại dự &aacute;n tuyến đường sắt đ&ocirc; thị số 1 (Bến Th&agrave;nh &ndash; Suối Ti&ecirc;n).</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>Để c&ocirc;ng trường được an to&agrave;n, Đo&agrave;n cũng nhắc nhở v&agrave; cho rằng trong bối cảnh n&agrave;y, c&aacute;c đơn vị li&ecirc;n quan cũng cần cố gắng đảm bảo sức khỏe cho người lao động, c&ocirc;ng nh&acirc;n, c&aacute;n bộ kỹ thuật, đảm bảo an to&agrave;n trong dịch bệnh. Sau khi dịch giảm sẽ tổ chức thi c&ocirc;ng v&agrave; dần dần kh&ocirc;i phục lại tốc độ ban đầu.</p>\r\n\r\n<p>Trước những kh&oacute; khăn ph&aacute;t sinh khi dịch Covid-19 diễn ra, Đo&agrave;n cho biết tới đ&acirc;y cũng phải c&oacute; tham mưu về những t&igrave;nh huống n&agrave;o phải dừng thi c&ocirc;ng, nhưng c&oacute; những c&ocirc;ng trường cũng n&ecirc;n cho duy tr&igrave; thi c&ocirc;ng v&igrave; mang t&iacute;nh thiết yếu, đảm bảo tiến độ để đ&oacute;ng g&oacute;p cho sự ph&aacute;t triển về sau. Ngo&agrave;i ra, cần phải xem x&eacute;t đối với việc cung ứng vật tư, vật liệu phục vụ cho những c&ocirc;ng tr&igrave;nh trọng điểm cũng cần được xem như vật tư thiết yếu.</p>\r\n\r\n<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\">\r\n	<tbody>\r\n		<tr>\r\n			<td><img alt=\"to cong tac dac biet cua bo xay dung kiem tra cong tac phong chong dich tai cac du an trong diem tai thanh pho ho chi minh\" src=\"https://baoxaydung.com.vn/stores/news_dataimages/vananh/092021/18/19/in_article/4500_image006.jpg\" /></td>\r\n		</tr>\r\n		<tr>\r\n			<td>Đo&agrave;n kiểm tra c&aacute;c khu c&aacute;ch ly điều trị Covid-19 v&agrave; bệnh viện d&atilde; chiến tại B&igrave;nh Dương.</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>S&aacute;ng 18/9, Đo&agrave;n đ&atilde; xuống kiểm tra việc x&acirc;y dựng, vận h&agrave;nh khu c&aacute;ch ly - điều trị v&agrave; bệnh viện d&atilde; chiến tại B&igrave;nh Dương. Tại khu c&aacute;ch ly - điều trị Covid-19 GSI Bến C&aacute;t, khu n&agrave;y được trưng dụng từ khu nh&agrave; xưởng Thới H&ograve;a Bến C&aacute;t của Tập đo&agrave;n Quang Ph&uacute;c, khu n&agrave;y c&oacute; quy m&ocirc; 1.400 giường điều trị c&aacute;c F0 triệu chứng nhẹ v&agrave; Bệnh viện d&atilde; chiến số 5 Li&ecirc;n Ch&acirc;u nằm trong khu c&ocirc;ng nghiệp S&oacute;ng Thần 3, khu n&agrave;y c&oacute; quy m&ocirc; 1.600 giường bệnh. Theo Sở X&acirc;y dựng B&igrave;nh Dương, tỉnh hiện c&oacute; 22 bệnh viện d&atilde; chiến v&agrave; khu c&aacute;ch ly điều trị với tổng số 48.000 giường.</p>\r\n\r\n<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\">\r\n	<tbody>\r\n		<tr>\r\n			<td><img alt=\"to cong tac dac biet cua bo xay dung kiem tra cong tac phong chong dich tai cac du an trong diem tai thanh pho ho chi minh\" src=\"https://baoxaydung.com.vn/stores/news_dataimages/vananh/092021/18/19/in_article/4501_image007.jpg\" /></td>\r\n		</tr>\r\n		<tr>\r\n			<td>Bệnh viện d&atilde; chiến số 5 Li&ecirc;n Ch&acirc;u &ndash; Khu c&ocirc;ng nghiệp S&oacute;ng Thần 3.</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>Theo đ&aacute;nh gi&aacute; của &ocirc;ng Vũ Ngọc Anh &ndash; Vụ trưởng Vụ Khoa học c&ocirc;ng nghệ, Bộ X&acirc;y dựng, 2 bệnh viện n&agrave;y đều c&oacute; thiết kế, bố tr&iacute; mặt bằng theo đ&uacute;ng hướng dẫn của Bộ X&acirc;y dựng v&agrave; Bộ Y tế. Trong đ&oacute;, mỗi block bố tr&iacute; từ 6 - 10 giường d&agrave;nh cho bệnh nh&acirc;n nhẹ; khu bệnh nh&acirc;n thở oxy bố tr&iacute; tối đa l&agrave; 6 giường; hệ thống th&ocirc;ng gi&oacute;, chiếu s&aacute;ng đảm bảo an to&agrave;n. Ri&ecirc;ng đối với việc bố tr&iacute; khu vệ sinh, do đ&atilde; r&uacute;t kinh nghiệm ở giai đoạn đầu n&ecirc;n được bố tr&iacute; nhiều hơn, đảm bảo 1 khu vệ sinh tối đa cho 10 người; việc thu gom r&aacute;c thải y tế được thực hiện đ&uacute;ng quy tr&igrave;nh; nước thải trong khu vực được xử l&yacute; trước khi thải v&agrave;o hệ thống chung.</p>', 'EAXH_4454_image001.jpg'),
(5, '<p>abc</p>', '<p>acv</p>', '<p>12312</p>', 'ucos_4454_image001.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `phone`, `address`, `email`, `password`, `role`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Tran Ly Thang', '0123458123', 'Ngũ Hành Sơn', 't@gmail.com', '$2y$10$heUp8ZiuvN4fo8UCWUFgr.FJTtCWjmR0Ecz7K1je8KyqrP3zZ8Aly', NULL, 'zfKw6ON2aMrJOzPRAU1UTpdF8HB5diHpk4dVOgHUfacgFtRHuyb59wKhUJ8H', '2021-08-26 07:22:18', '2021-08-26 07:22:18'),
(2, 'Nguyen A', '098231283', 'Ông Ích Khiêm', 't2@gmail.com', '$2y$10$KPSadEG95.GYnvKc9r5CJOw3c0S9cqTZUPIiDxRtBoiwjKUH0XUs6', NULL, NULL, '2021-08-26 08:16:59', '2021-08-26 08:16:59'),
(3, 'Nguyễn B', '0919291239', 'Hoàng Diệu', 't3@gmail.com', '$2y$10$LgSdw8HXylxRweb4CZ0sKODghq1PXkk6UaEcg6hlvRuIItUtka85q', NULL, NULL, '2021-08-26 08:17:43', '2021-08-26 08:17:43'),
(4, 'Thắng', '0839123862', 'quảng bình', 'ngovanthang1004@gmail.com', '123456', NULL, NULL, NULL, NULL),
(5, 'ngô văn thắng', NULL, NULL, 'ngovanthang10024@gmail.com', '$2y$10$HG5NZABusDiW7VDWCKI33uxuC/3tK6Z/GRtzOVQLLHxkTIa8pzkF6', NULL, NULL, '2021-09-14 08:57:06', '2021-09-14 08:57:06');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id_carts`);

--
-- Chỉ mục cho bảng `hanghoa`
--
ALTER TABLE `hanghoa`
  ADD PRIMARY KEY (`id_hh`);

--
-- Chỉ mục cho bảng `kho`
--
ALTER TABLE `kho`
  ADD PRIMARY KEY (`id_kho`);

--
-- Chỉ mục cho bảng `theloai`
--
ALTER TABLE `theloai`
  ADD PRIMARY KEY (`id_tl`);

--
-- Chỉ mục cho bảng `tintuc`
--
ALTER TABLE `tintuc`
  ADD PRIMARY KEY (`id_tt`);

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
-- AUTO_INCREMENT cho bảng `carts`
--
ALTER TABLE `carts`
  MODIFY `id_carts` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT cho bảng `hanghoa`
--
ALTER TABLE `hanghoa`
  MODIFY `id_hh` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `kho`
--
ALTER TABLE `kho`
  MODIFY `id_kho` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `theloai`
--
ALTER TABLE `theloai`
  MODIFY `id_tl` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `tintuc`
--
ALTER TABLE `tintuc`
  MODIFY `id_tt` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
