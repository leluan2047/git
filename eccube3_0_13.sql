-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: localhost:3306
-- Thời gian đã tạo: Th9 08, 2023 lúc 07:52 AM
-- Phiên bản máy phục vụ: 5.7.33
-- Phiên bản PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `eccube3_0_13`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `doctrine_migration_versions`
--

CREATE TABLE `doctrine_migration_versions` (
  `version` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `doctrine_migration_versions`
--

INSERT INTO `doctrine_migration_versions` (`version`) VALUES
('20150602223925'),
('20150612152108'),
('20150613000000'),
('20150716105942'),
('20150716110252'),
('20150716110827'),
('20150716110834'),
('20150722170707'),
('20150728172928'),
('20150731154721'),
('20150804132137'),
('20150805105421'),
('20150806184533'),
('20150806220909'),
('20150806222639'),
('20150812132454'),
('20150821134922'),
('20151016145841'),
('20151022094610'),
('20151023102323'),
('20151110174227'),
('20151113150301'),
('20151116142354'),
('20151124184644'),
('20160114093442'),
('20160114142234'),
('20160216215635'),
('20160413151321'),
('20160823140932'),
('20160823172700'),
('20160908161616'),
('20161014100031'),
('20161108095350'),
('20161219135621'),
('20161219143135');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `dtb_authority_role`
--

CREATE TABLE `dtb_authority_role` (
  `authority_role_id` int(11) NOT NULL,
  `authority_id` smallint(6) NOT NULL,
  `creator_id` int(11) NOT NULL,
  `deny_url` longtext NOT NULL,
  `create_date` datetime NOT NULL,
  `update_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `dtb_base_info`
--

CREATE TABLE `dtb_base_info` (
  `id` int(11) NOT NULL,
  `country_id` smallint(6) DEFAULT NULL,
  `pref` smallint(6) DEFAULT NULL,
  `company_name` longtext,
  `company_kana` longtext,
  `zip01` longtext,
  `zip02` longtext,
  `zipcode` longtext,
  `addr01` longtext,
  `addr02` longtext,
  `tel01` longtext,
  `tel02` longtext,
  `tel03` longtext,
  `fax01` longtext,
  `fax02` longtext,
  `fax03` longtext,
  `business_hour` longtext,
  `email01` longtext,
  `email02` longtext,
  `email03` longtext,
  `email04` longtext,
  `shop_name` longtext,
  `shop_kana` longtext,
  `shop_name_eng` longtext,
  `update_date` datetime NOT NULL,
  `good_traded` longtext,
  `message` longtext,
  `latitude` longtext,
  `longitude` longtext,
  `delivery_free_amount` decimal(10,0) DEFAULT NULL,
  `delivery_free_quantity` int(11) DEFAULT NULL,
  `option_multiple_shipping` smallint(6) DEFAULT '0',
  `option_mypage_order_status_display` smallint(6) DEFAULT '1',
  `nostock_hidden` smallint(6) DEFAULT '0',
  `option_favorite_product` smallint(6) DEFAULT '1',
  `option_product_delivery_fee` smallint(6) DEFAULT '0',
  `option_product_tax_rule` smallint(6) DEFAULT '0',
  `option_customer_activate` smallint(6) DEFAULT '1',
  `option_remember_me` smallint(6) DEFAULT '0',
  `authentication_key` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `dtb_base_info`
--

INSERT INTO `dtb_base_info` (`id`, `country_id`, `pref`, `company_name`, `company_kana`, `zip01`, `zip02`, `zipcode`, `addr01`, `addr02`, `tel01`, `tel02`, `tel03`, `fax01`, `fax02`, `fax03`, `business_hour`, `email01`, `email02`, `email03`, `email04`, `shop_name`, `shop_kana`, `shop_name_eng`, `update_date`, `good_traded`, `message`, `latitude`, `longitude`, `delivery_free_amount`, `delivery_free_quantity`, `option_multiple_shipping`, `option_mypage_order_status_display`, `nostock_hidden`, `option_favorite_product`, `option_product_delivery_fee`, `option_product_tax_rule`, `option_customer_activate`, `option_remember_me`, `authentication_key`) VALUES
(1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin@example.com', 'admin@example.com', 'admin@example.com', 'admin@example.com', 'EC-CUBE SHOP', NULL, NULL, '2023-09-08 14:15:03', NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 1, 0, 0, 1, 0, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `dtb_block`
--

CREATE TABLE `dtb_block` (
  `block_id` int(11) NOT NULL,
  `device_type_id` smallint(6) DEFAULT NULL,
  `block_name` longtext,
  `file_name` varchar(200) NOT NULL,
  `create_date` datetime NOT NULL,
  `update_date` datetime NOT NULL,
  `logic_flg` smallint(6) NOT NULL DEFAULT '1',
  `deletable_flg` smallint(6) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `dtb_block`
--

INSERT INTO `dtb_block` (`block_id`, `device_type_id`, `block_name`, `file_name`, `create_date`, `update_date`, `logic_flg`, `deletable_flg`) VALUES
(1, 10, 'カテゴリ', 'category', '2023-09-08 14:14:46', '2023-09-08 14:14:46', 1, 0),
(2, 10, 'カゴの中', 'cart', '2023-09-08 14:14:46', '2023-09-08 14:14:46', 1, 0),
(3, 10, '商品検索', 'search_product', '2023-09-08 14:14:46', '2023-09-08 14:14:46', 1, 0),
(4, 10, '新着情報', 'news', '2023-09-08 14:14:46', '2023-09-08 14:14:46', 1, 0),
(5, 10, 'ログイン', 'login', '2023-09-08 14:14:46', '2023-09-08 14:14:46', 1, 0),
(6, 10, 'ロゴ', 'logo', '2023-09-08 14:14:46', '2023-09-08 14:14:46', 0, 0),
(7, 10, 'フッター', 'footer', '2023-09-08 14:14:46', '2023-09-08 14:14:46', 0, 0),
(8, 10, '新着商品', 'new_product', '2023-09-08 14:14:46', '2023-09-08 14:14:46', 0, 0),
(9, 10, 'フリーエリア', 'free', '2023-09-08 14:14:46', '2023-09-08 14:14:46', 0, 0),
(10, 10, 'ギャラリー', 'garally', '2023-09-08 14:14:46', '2023-09-08 14:14:46', 0, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `dtb_block_position`
--

CREATE TABLE `dtb_block_position` (
  `page_id` int(11) NOT NULL,
  `target_id` int(11) NOT NULL,
  `block_id` int(11) NOT NULL,
  `block_row` int(11) DEFAULT NULL,
  `anywhere` smallint(6) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `dtb_block_position`
--

INSERT INTO `dtb_block_position` (`page_id`, `target_id`, `block_id`, `block_row`, `anywhere`) VALUES
(1, 2, 1, 5, 1),
(1, 2, 2, 2, 1),
(1, 2, 3, 3, 1),
(1, 2, 5, 4, 1),
(1, 2, 6, 1, 1),
(1, 8, 4, 2, 0),
(1, 8, 8, 1, 0),
(1, 8, 9, 3, 0),
(1, 8, 10, 4, 0),
(1, 9, 7, 1, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `dtb_category`
--

CREATE TABLE `dtb_category` (
  `category_id` int(11) NOT NULL,
  `parent_category_id` int(11) DEFAULT NULL,
  `creator_id` int(11) DEFAULT NULL,
  `category_name` longtext NOT NULL,
  `level` int(11) NOT NULL,
  `rank` int(11) NOT NULL,
  `create_date` datetime NOT NULL,
  `update_date` datetime NOT NULL,
  `del_flg` smallint(6) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `dtb_category`
--

INSERT INTO `dtb_category` (`category_id`, `parent_category_id`, `creator_id`, `category_name`, `level`, `rank`, `create_date`, `update_date`, `del_flg`) VALUES
(1, NULL, 1, 'キッチンツール', 1, 5, '2023-09-08 14:14:46', '2023-09-08 14:14:46', 0),
(2, NULL, 1, 'インテリア', 1, 6, '2023-09-08 14:14:46', '2023-09-08 14:14:46', 0),
(3, 1, 1, '食器', 2, 3, '2023-09-08 14:14:46', '2023-09-08 14:14:46', 0),
(4, 1, 1, '調理器具', 2, 4, '2023-09-08 14:14:46', '2023-09-08 14:14:46', 0),
(5, 3, 1, 'フォーク', 3, 2, '2023-09-08 14:14:46', '2023-09-08 14:14:46', 0),
(6, NULL, 1, '新入荷', 1, 1, '2023-09-08 14:14:46', '2023-09-08 14:14:46', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `dtb_category_count`
--

CREATE TABLE `dtb_category_count` (
  `category_id` int(11) NOT NULL,
  `product_count` int(11) NOT NULL,
  `create_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `dtb_category_count`
--

INSERT INTO `dtb_category_count` (`category_id`, `product_count`, `create_date`) VALUES
(1, 1, '2023-09-08 14:14:46'),
(4, 1, '2023-09-08 14:14:46'),
(5, 1, '2023-09-08 14:14:46'),
(6, 2, '2023-09-08 14:14:46');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `dtb_category_total_count`
--

CREATE TABLE `dtb_category_total_count` (
  `category_id` int(11) NOT NULL,
  `product_count` int(11) DEFAULT NULL,
  `create_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `dtb_category_total_count`
--

INSERT INTO `dtb_category_total_count` (`category_id`, `product_count`, `create_date`) VALUES
(1, 2, '2023-09-08 14:14:46'),
(3, 2, '2023-09-08 14:14:46'),
(4, 1, '2023-09-08 14:14:46'),
(5, 1, '2023-09-08 14:14:46'),
(6, 2, '2023-09-08 14:14:46');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `dtb_class_category`
--

CREATE TABLE `dtb_class_category` (
  `class_category_id` int(11) NOT NULL,
  `class_name_id` int(11) NOT NULL,
  `creator_id` int(11) NOT NULL,
  `name` longtext NOT NULL,
  `rank` int(11) NOT NULL,
  `create_date` datetime NOT NULL,
  `update_date` datetime NOT NULL,
  `del_flg` smallint(6) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `dtb_class_category`
--

INSERT INTO `dtb_class_category` (`class_category_id`, `class_name_id`, `creator_id`, `name`, `rank`, `create_date`, `update_date`, `del_flg`) VALUES
(1, 1, 1, '金', 1, '2023-09-08 14:14:46', '2023-09-08 14:14:46', 0),
(2, 1, 1, '銀', 2, '2023-09-08 14:14:46', '2023-09-08 14:14:46', 0),
(3, 1, 1, 'プラチナ', 3, '2023-09-08 14:14:46', '2023-09-08 14:14:46', 0),
(4, 2, 1, '120mm', 1, '2023-09-08 14:14:46', '2023-09-08 14:14:46', 0),
(5, 2, 1, '170mm', 2, '2023-09-08 14:14:46', '2023-09-08 14:14:46', 0),
(6, 2, 1, '150cm', 3, '2023-09-08 14:14:46', '2023-09-08 14:14:46', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `dtb_class_name`
--

CREATE TABLE `dtb_class_name` (
  `class_name_id` int(11) NOT NULL,
  `creator_id` int(11) NOT NULL,
  `name` longtext NOT NULL,
  `rank` int(11) NOT NULL,
  `create_date` datetime NOT NULL,
  `update_date` datetime NOT NULL,
  `del_flg` smallint(6) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `dtb_class_name`
--

INSERT INTO `dtb_class_name` (`class_name_id`, `creator_id`, `name`, `rank`, `create_date`, `update_date`, `del_flg`) VALUES
(1, 1, '材質', 1, '2023-09-08 14:14:46', '2023-09-08 14:14:46', 0),
(2, 1, 'サイズ', 2, '2023-09-08 14:14:46', '2023-09-08 14:14:46', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `dtb_csv`
--

CREATE TABLE `dtb_csv` (
  `csv_id` int(11) NOT NULL,
  `csv_type` smallint(6) NOT NULL,
  `creator_id` int(11) NOT NULL,
  `entity_name` longtext NOT NULL,
  `field_name` longtext NOT NULL,
  `reference_field_name` longtext,
  `disp_name` longtext NOT NULL,
  `rank` smallint(6) NOT NULL,
  `enable_flg` smallint(6) NOT NULL,
  `create_date` datetime NOT NULL,
  `update_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `dtb_csv`
--

INSERT INTO `dtb_csv` (`csv_id`, `csv_type`, `creator_id`, `entity_name`, `field_name`, `reference_field_name`, `disp_name`, `rank`, `enable_flg`, `create_date`, `update_date`) VALUES
(1, 1, 1, 'Eccube\\Entity\\Product', 'id', NULL, '商品ID', 1, 1, '2023-09-08 14:14:47', '2023-09-08 14:14:47'),
(2, 1, 1, 'Eccube\\Entity\\Product', 'Status', 'id', '公開ステータス(ID)', 2, 1, '2023-09-08 14:14:47', '2023-09-08 14:14:47'),
(3, 1, 1, 'Eccube\\Entity\\Product', 'Status', 'name', '公開ステータス(名称)', 3, 1, '2023-09-08 14:14:47', '2023-09-08 14:14:47'),
(4, 1, 1, 'Eccube\\Entity\\Product', 'name', NULL, '商品名', 4, 1, '2023-09-08 14:14:47', '2023-09-08 14:14:47'),
(5, 1, 1, 'Eccube\\Entity\\Product', 'note', NULL, 'ショップ用メモ欄', 5, 1, '2023-09-08 14:14:47', '2023-09-08 14:14:47'),
(6, 1, 1, 'Eccube\\Entity\\Product', 'description_list', NULL, '商品説明(一覧)', 6, 1, '2023-09-08 14:14:47', '2023-09-08 14:14:47'),
(7, 1, 1, 'Eccube\\Entity\\Product', 'description_detail', NULL, '商品説明(詳細)', 7, 1, '2023-09-08 14:14:47', '2023-09-08 14:14:47'),
(8, 1, 1, 'Eccube\\Entity\\Product', 'search_word', NULL, '検索ワード', 8, 1, '2023-09-08 14:14:47', '2023-09-08 14:14:47'),
(9, 1, 1, 'Eccube\\Entity\\Product', 'free_area', NULL, 'フリーエリア', 9, 1, '2023-09-08 14:14:47', '2023-09-08 14:14:47'),
(10, 1, 1, 'Eccube\\Entity\\ProductClass', 'id', NULL, '商品規格ID', 10, 1, '2023-09-08 14:14:47', '2023-09-08 14:14:47'),
(11, 1, 1, 'Eccube\\Entity\\ProductClass', 'ProductType', 'id', '商品種別(ID)', 11, 1, '2023-09-08 14:14:47', '2023-09-08 14:14:47'),
(12, 1, 1, 'Eccube\\Entity\\ProductClass', 'ProductType', 'name', '商品種別(名称)', 12, 1, '2023-09-08 14:14:47', '2023-09-08 14:14:47'),
(13, 1, 1, 'Eccube\\Entity\\ProductClass', 'ClassCategory1', 'id', '規格分類1(ID)', 13, 1, '2023-09-08 14:14:47', '2023-09-08 14:14:47'),
(14, 1, 1, 'Eccube\\Entity\\ProductClass', 'ClassCategory1', 'name', '規格分類1(名称)', 14, 1, '2023-09-08 14:14:47', '2023-09-08 14:14:47'),
(15, 1, 1, 'Eccube\\Entity\\ProductClass', 'ClassCategory2', 'id', '規格分類2(ID)', 15, 1, '2023-09-08 14:14:47', '2023-09-08 14:14:47'),
(16, 1, 1, 'Eccube\\Entity\\ProductClass', 'ClassCategory2', 'name', '規格分類2(名称)', 16, 1, '2023-09-08 14:14:47', '2023-09-08 14:14:47'),
(17, 1, 1, 'Eccube\\Entity\\ProductClass', 'DeliveryDate', 'id', '発送日目安(ID)', 17, 1, '2023-09-08 14:14:47', '2023-09-08 14:14:47'),
(18, 1, 1, 'Eccube\\Entity\\ProductClass', 'DeliveryDate', 'name', '発送日目安(名称)', 18, 1, '2023-09-08 14:14:47', '2023-09-08 14:14:47'),
(19, 1, 1, 'Eccube\\Entity\\ProductClass', 'code', NULL, '商品コード', 19, 1, '2023-09-08 14:14:47', '2023-09-08 14:14:47'),
(20, 1, 1, 'Eccube\\Entity\\ProductClass', 'stock', NULL, '在庫数', 20, 1, '2023-09-08 14:14:47', '2023-09-08 14:14:47'),
(21, 1, 1, 'Eccube\\Entity\\ProductClass', 'stock_unlimited', NULL, '在庫数無制限フラグ', 21, 1, '2023-09-08 14:14:47', '2023-09-08 14:14:47'),
(22, 1, 1, 'Eccube\\Entity\\ProductClass', 'sale_limit', NULL, '販売制限数', 22, 1, '2023-09-08 14:14:47', '2023-09-08 14:14:47'),
(23, 1, 1, 'Eccube\\Entity\\ProductClass', 'price01', NULL, '通常価格', 23, 1, '2023-09-08 14:14:47', '2023-09-08 14:14:47'),
(24, 1, 1, 'Eccube\\Entity\\ProductClass', 'price02', NULL, '販売価格', 24, 1, '2023-09-08 14:14:47', '2023-09-08 14:14:47'),
(25, 1, 1, 'Eccube\\Entity\\ProductClass', 'delivery_fee', NULL, '送料', 25, 0, '2023-09-08 14:14:47', '2023-09-08 14:14:47'),
(26, 1, 1, 'Eccube\\Entity\\Product', 'ProductImage', 'file_name', '商品画像', 26, 1, '2023-09-08 14:14:47', '2023-09-08 14:14:47'),
(27, 1, 1, 'Eccube\\Entity\\Product', 'ProductCategories', 'category_id', '商品カテゴリ(ID)', 27, 1, '2023-09-08 14:14:47', '2023-09-08 14:14:47'),
(28, 1, 1, 'Eccube\\Entity\\Product', 'ProductCategories', 'Category', '商品カテゴリ(名称)', 28, 1, '2023-09-08 14:14:47', '2023-09-08 14:14:47'),
(29, 2, 1, 'Eccube\\Entity\\Customer', 'id', NULL, '会員ID', 1, 1, '2023-09-08 14:14:47', '2023-09-08 14:14:47'),
(30, 2, 1, 'Eccube\\Entity\\Customer', 'name01', NULL, 'お名前(姓)', 2, 1, '2023-09-08 14:14:47', '2023-09-08 14:14:47'),
(31, 2, 1, 'Eccube\\Entity\\Customer', 'name02', NULL, 'お名前(名)', 3, 1, '2023-09-08 14:14:47', '2023-09-08 14:14:47'),
(32, 2, 1, 'Eccube\\Entity\\Customer', 'kana01', NULL, 'お名前(セイ)', 4, 1, '2023-09-08 14:14:47', '2023-09-08 14:14:47'),
(33, 2, 1, 'Eccube\\Entity\\Customer', 'kana02', NULL, 'お名前(メイ)', 5, 1, '2023-09-08 14:14:47', '2023-09-08 14:14:47'),
(34, 2, 1, 'Eccube\\Entity\\Customer', 'company_name', NULL, '会社名', 6, 1, '2023-09-08 14:14:47', '2023-09-08 14:14:47'),
(35, 2, 1, 'Eccube\\Entity\\Customer', 'zip01', NULL, '郵便番号1', 7, 1, '2023-09-08 14:14:47', '2023-09-08 14:14:47'),
(36, 2, 1, 'Eccube\\Entity\\Customer', 'zip02', NULL, '郵便番号2', 8, 1, '2023-09-08 14:14:47', '2023-09-08 14:14:47'),
(37, 2, 1, 'Eccube\\Entity\\Customer', 'Pref', 'id', '都道府県(ID)', 9, 1, '2023-09-08 14:14:47', '2023-09-08 14:14:47'),
(38, 2, 1, 'Eccube\\Entity\\Customer', 'Pref', 'name', '都道府県(名称)', 10, 1, '2023-09-08 14:14:47', '2023-09-08 14:14:47'),
(39, 2, 1, 'Eccube\\Entity\\Customer', 'addr01', NULL, '住所1', 11, 1, '2023-09-08 14:14:47', '2023-09-08 14:14:47'),
(40, 2, 1, 'Eccube\\Entity\\Customer', 'addr02', NULL, '住所2', 12, 1, '2023-09-08 14:14:47', '2023-09-08 14:14:47'),
(41, 2, 1, 'Eccube\\Entity\\Customer', 'email', NULL, 'メールアドレス', 13, 1, '2023-09-08 14:14:47', '2023-09-08 14:14:47'),
(42, 2, 1, 'Eccube\\Entity\\Customer', 'tel01', NULL, 'TEL1', 14, 1, '2023-09-08 14:14:47', '2023-09-08 14:14:47'),
(43, 2, 1, 'Eccube\\Entity\\Customer', 'tel02', NULL, 'TEL2', 15, 1, '2023-09-08 14:14:47', '2023-09-08 14:14:47'),
(44, 2, 1, 'Eccube\\Entity\\Customer', 'tel03', NULL, 'TEL3', 16, 1, '2023-09-08 14:14:47', '2023-09-08 14:14:47'),
(45, 2, 1, 'Eccube\\Entity\\Customer', 'fax01', NULL, 'FAX1', 17, 1, '2023-09-08 14:14:47', '2023-09-08 14:14:47'),
(46, 2, 1, 'Eccube\\Entity\\Customer', 'fax02', NULL, 'FAX2', 18, 1, '2023-09-08 14:14:47', '2023-09-08 14:14:47'),
(47, 2, 1, 'Eccube\\Entity\\Customer', 'fax03', NULL, 'FAX3', 19, 1, '2023-09-08 14:14:47', '2023-09-08 14:14:47'),
(48, 2, 1, 'Eccube\\Entity\\Customer', 'Sex', 'id', '性別(ID)', 20, 1, '2023-09-08 14:14:47', '2023-09-08 14:14:47'),
(49, 2, 1, 'Eccube\\Entity\\Customer', 'Sex', 'name', '性別(名称)', 21, 1, '2023-09-08 14:14:47', '2023-09-08 14:14:47'),
(50, 2, 1, 'Eccube\\Entity\\Customer', 'Job', 'id', '職業(ID)', 22, 1, '2023-09-08 14:14:47', '2023-09-08 14:14:47'),
(51, 2, 1, 'Eccube\\Entity\\Customer', 'Job', 'name', '職業(名称)', 23, 1, '2023-09-08 14:14:47', '2023-09-08 14:14:47'),
(52, 2, 1, 'Eccube\\Entity\\Customer', 'birth', NULL, '誕生日', 24, 1, '2023-09-08 14:14:47', '2023-09-08 14:14:47'),
(53, 2, 1, 'Eccube\\Entity\\Customer', 'first_buy_date', NULL, '初回購入日', 25, 1, '2023-09-08 14:14:47', '2023-09-08 14:14:47'),
(54, 2, 1, 'Eccube\\Entity\\Customer', 'last_buy_date', NULL, '最終購入日', 26, 1, '2023-09-08 14:14:47', '2023-09-08 14:14:47'),
(55, 2, 1, 'Eccube\\Entity\\Customer', 'buy_times', NULL, '購入回数', 27, 1, '2023-09-08 14:14:47', '2023-09-08 14:14:47'),
(56, 2, 1, 'Eccube\\Entity\\Customer', 'note', NULL, 'ショップ用メモ欄', 28, 1, '2023-09-08 14:14:47', '2023-09-08 14:14:47'),
(57, 2, 1, 'Eccube\\Entity\\Customer', 'Status', 'id', '会員ステータス(ID)', 29, 1, '2023-09-08 14:14:47', '2023-09-08 14:14:47'),
(58, 2, 1, 'Eccube\\Entity\\Customer', 'Status', 'name', '会員ステータス(名称)', 30, 1, '2023-09-08 14:14:47', '2023-09-08 14:14:47'),
(59, 2, 1, 'Eccube\\Entity\\Customer', 'create_date', NULL, '登録日', 31, 1, '2023-09-08 14:14:47', '2023-09-08 14:14:47'),
(60, 2, 1, 'Eccube\\Entity\\Customer', 'update_date', NULL, '更新日', 32, 1, '2023-09-08 14:14:47', '2023-09-08 14:14:47'),
(61, 3, 1, 'Eccube\\Entity\\Order', 'id', NULL, '注文ID', 1, 1, '2023-09-08 14:14:47', '2023-09-08 14:14:47'),
(62, 3, 1, 'Eccube\\Entity\\Order', 'Customer', 'id', '会員ID', 2, 1, '2023-09-08 14:14:47', '2023-09-08 14:14:47'),
(63, 3, 1, 'Eccube\\Entity\\Order', 'name01', NULL, 'お名前(姓)', 3, 1, '2023-09-08 14:14:47', '2023-09-08 14:14:47'),
(64, 3, 1, 'Eccube\\Entity\\Order', 'name02', NULL, 'お名前(名)', 4, 1, '2023-09-08 14:14:47', '2023-09-08 14:14:47'),
(65, 3, 1, 'Eccube\\Entity\\Order', 'kana01', NULL, 'お名前(セイ)', 5, 1, '2023-09-08 14:14:47', '2023-09-08 14:14:47'),
(66, 3, 1, 'Eccube\\Entity\\Order', 'kana02', NULL, 'お名前(メイ)', 6, 1, '2023-09-08 14:14:47', '2023-09-08 14:14:47'),
(67, 3, 1, 'Eccube\\Entity\\Order', 'company_name', NULL, '会社名', 7, 1, '2023-09-08 14:14:47', '2023-09-08 14:14:47'),
(68, 3, 1, 'Eccube\\Entity\\Order', 'zip01', NULL, '郵便番号1', 8, 1, '2023-09-08 14:14:47', '2023-09-08 14:14:47'),
(69, 3, 1, 'Eccube\\Entity\\Order', 'zip02', NULL, '郵便番号2', 9, 1, '2023-09-08 14:14:47', '2023-09-08 14:14:47'),
(70, 3, 1, 'Eccube\\Entity\\Order', 'Pref', 'id', '都道府県(ID)', 10, 1, '2023-09-08 14:14:47', '2023-09-08 14:14:47'),
(71, 3, 1, 'Eccube\\Entity\\Order', 'Pref', 'name', '都道府県(名称)', 11, 1, '2023-09-08 14:14:47', '2023-09-08 14:14:47'),
(72, 3, 1, 'Eccube\\Entity\\Order', 'addr01', NULL, '住所1', 12, 1, '2023-09-08 14:14:47', '2023-09-08 14:14:47'),
(73, 3, 1, 'Eccube\\Entity\\Order', 'addr02', NULL, '住所2', 13, 1, '2023-09-08 14:14:47', '2023-09-08 14:14:47'),
(74, 3, 1, 'Eccube\\Entity\\Order', 'email', NULL, 'メールアドレス', 14, 1, '2023-09-08 14:14:47', '2023-09-08 14:14:47'),
(75, 3, 1, 'Eccube\\Entity\\Order', 'tel01', NULL, 'TEL1', 15, 1, '2023-09-08 14:14:47', '2023-09-08 14:14:47'),
(76, 3, 1, 'Eccube\\Entity\\Order', 'tel02', NULL, 'TEL2', 16, 1, '2023-09-08 14:14:47', '2023-09-08 14:14:47'),
(77, 3, 1, 'Eccube\\Entity\\Order', 'tel03', NULL, 'TEL3', 17, 1, '2023-09-08 14:14:47', '2023-09-08 14:14:47'),
(78, 3, 1, 'Eccube\\Entity\\Order', 'fax01', NULL, 'FAX1', 18, 1, '2023-09-08 14:14:47', '2023-09-08 14:14:47'),
(79, 3, 1, 'Eccube\\Entity\\Order', 'fax02', NULL, 'FAX2', 19, 1, '2023-09-08 14:14:47', '2023-09-08 14:14:47'),
(80, 3, 1, 'Eccube\\Entity\\Order', 'fax03', NULL, 'FAX3', 20, 1, '2023-09-08 14:14:47', '2023-09-08 14:14:47'),
(81, 3, 1, 'Eccube\\Entity\\Order', 'Sex', 'id', '性別(ID)', 21, 1, '2023-09-08 14:14:47', '2023-09-08 14:14:47'),
(82, 3, 1, 'Eccube\\Entity\\Order', 'Sex', 'name', '性別(名称)', 22, 1, '2023-09-08 14:14:47', '2023-09-08 14:14:47'),
(83, 3, 1, 'Eccube\\Entity\\Order', 'Job', 'id', '職業(ID)', 23, 1, '2023-09-08 14:14:47', '2023-09-08 14:14:47'),
(84, 3, 1, 'Eccube\\Entity\\Order', 'Job', 'name', '職業(名称)', 24, 1, '2023-09-08 14:14:47', '2023-09-08 14:14:47'),
(85, 3, 1, 'Eccube\\Entity\\Order', 'birth', NULL, '誕生日', 25, 1, '2023-09-08 14:14:47', '2023-09-08 14:14:47'),
(86, 3, 1, 'Eccube\\Entity\\Order', 'note', NULL, 'ショップ用メモ欄', 26, 1, '2023-09-08 14:14:47', '2023-09-08 14:14:47'),
(87, 3, 1, 'Eccube\\Entity\\Order', 'subtotal', NULL, '小計', 27, 1, '2023-09-08 14:14:47', '2023-09-08 14:14:47'),
(88, 3, 1, 'Eccube\\Entity\\Order', 'discount', NULL, '値引き', 28, 1, '2023-09-08 14:14:47', '2023-09-08 14:14:47'),
(89, 3, 1, 'Eccube\\Entity\\Order', 'delivery_fee_total', NULL, '送料', 29, 1, '2023-09-08 14:14:47', '2023-09-08 14:14:47'),
(90, 3, 1, 'Eccube\\Entity\\Order', 'tax', NULL, '税金', 30, 1, '2023-09-08 14:14:47', '2023-09-08 14:14:47'),
(91, 3, 1, 'Eccube\\Entity\\Order', 'total', NULL, '合計', 31, 1, '2023-09-08 14:14:47', '2023-09-08 14:14:47'),
(92, 3, 1, 'Eccube\\Entity\\Order', 'payment_total', NULL, '支払合計', 32, 1, '2023-09-08 14:14:47', '2023-09-08 14:14:47'),
(93, 3, 1, 'Eccube\\Entity\\Order', 'OrderStatus', 'id', '対応状況(ID)', 33, 1, '2023-09-08 14:14:47', '2023-09-08 14:14:47'),
(94, 3, 1, 'Eccube\\Entity\\Order', 'OrderStatus', 'name', '対応状況(名称)', 34, 1, '2023-09-08 14:14:47', '2023-09-08 14:14:47'),
(95, 3, 1, 'Eccube\\Entity\\Order', 'Payment', 'id', '支払方法(ID)', 35, 1, '2023-09-08 14:14:47', '2023-09-08 14:14:47'),
(96, 3, 1, 'Eccube\\Entity\\Order', 'payment_method', NULL, '支払方法(名称)', 36, 1, '2023-09-08 14:14:47', '2023-09-08 14:14:47'),
(97, 3, 1, 'Eccube\\Entity\\Order', 'order_date', NULL, '受注日', 37, 1, '2023-09-08 14:14:47', '2023-09-08 14:14:47'),
(98, 3, 1, 'Eccube\\Entity\\Order', 'payment_date', NULL, '入金日', 38, 1, '2023-09-08 14:14:47', '2023-09-08 14:14:47'),
(99, 3, 1, 'Eccube\\Entity\\Order', 'commit_date', NULL, '発送日', 39, 1, '2023-09-08 14:14:47', '2023-09-08 14:14:47'),
(100, 3, 1, 'Eccube\\Entity\\OrderDetail', 'id', NULL, '注文詳細ID', 40, 1, '2023-09-08 14:14:47', '2023-09-08 14:14:47'),
(101, 3, 1, 'Eccube\\Entity\\OrderDetail', 'Product', 'id', '商品ID', 41, 1, '2023-09-08 14:14:47', '2023-09-08 14:14:47'),
(102, 3, 1, 'Eccube\\Entity\\OrderDetail', 'ProductClass', 'id', '商品規格ID', 42, 1, '2023-09-08 14:14:47', '2023-09-08 14:14:47'),
(103, 3, 1, 'Eccube\\Entity\\OrderDetail', 'product_name', NULL, '商品名', 43, 1, '2023-09-08 14:14:47', '2023-09-08 14:14:47'),
(104, 3, 1, 'Eccube\\Entity\\OrderDetail', 'product_code', NULL, '商品コード', 44, 1, '2023-09-08 14:14:47', '2023-09-08 14:14:47'),
(105, 3, 1, 'Eccube\\Entity\\OrderDetail', 'class_name1', NULL, '規格名1', 45, 1, '2023-09-08 14:14:47', '2023-09-08 14:14:47'),
(106, 3, 1, 'Eccube\\Entity\\OrderDetail', 'class_name2', NULL, '規格名2', 46, 1, '2023-09-08 14:14:47', '2023-09-08 14:14:47'),
(107, 3, 1, 'Eccube\\Entity\\OrderDetail', 'class_category_name1', NULL, '規格分類名1', 47, 1, '2023-09-08 14:14:47', '2023-09-08 14:14:47'),
(108, 3, 1, 'Eccube\\Entity\\OrderDetail', 'class_category_name2', NULL, '規格分類名2', 48, 1, '2023-09-08 14:14:47', '2023-09-08 14:14:47'),
(109, 3, 1, 'Eccube\\Entity\\OrderDetail', 'price', NULL, '価格', 49, 1, '2023-09-08 14:14:47', '2023-09-08 14:14:47'),
(110, 3, 1, 'Eccube\\Entity\\OrderDetail', 'quantity', NULL, '個数', 50, 1, '2023-09-08 14:14:47', '2023-09-08 14:14:47'),
(111, 3, 1, 'Eccube\\Entity\\OrderDetail', 'tax_rate', NULL, '税率', 51, 1, '2023-09-08 14:14:47', '2023-09-08 14:14:47'),
(112, 3, 1, 'Eccube\\Entity\\OrderDetail', 'tax_rule', NULL, '税率ルール(ID)', 52, 1, '2023-09-08 14:14:47', '2023-09-08 14:14:47'),
(113, 4, 1, 'Eccube\\Entity\\Order', 'id', NULL, '注文ID', 1, 1, '2023-09-08 14:14:47', '2023-09-08 14:14:47'),
(114, 4, 1, 'Eccube\\Entity\\Order', 'Customer', 'id', '会員ID', 2, 1, '2023-09-08 14:14:47', '2023-09-08 14:14:47'),
(115, 4, 1, 'Eccube\\Entity\\Order', 'name01', NULL, 'お名前(姓)', 3, 1, '2023-09-08 14:14:47', '2023-09-08 14:14:47'),
(116, 4, 1, 'Eccube\\Entity\\Order', 'name02', NULL, 'お名前(名)', 4, 1, '2023-09-08 14:14:47', '2023-09-08 14:14:47'),
(117, 4, 1, 'Eccube\\Entity\\Order', 'kana01', NULL, 'お名前(セイ)', 5, 1, '2023-09-08 14:14:47', '2023-09-08 14:14:47'),
(118, 4, 1, 'Eccube\\Entity\\Order', 'kana02', NULL, 'お名前(メイ)', 6, 1, '2023-09-08 14:14:47', '2023-09-08 14:14:47'),
(119, 4, 1, 'Eccube\\Entity\\Order', 'company_name', NULL, '会社名', 7, 1, '2023-09-08 14:14:47', '2023-09-08 14:14:47'),
(120, 4, 1, 'Eccube\\Entity\\Order', 'zip01', NULL, '郵便番号1', 8, 1, '2023-09-08 14:14:47', '2023-09-08 14:14:47'),
(121, 4, 1, 'Eccube\\Entity\\Order', 'zip02', NULL, '郵便番号2', 9, 1, '2023-09-08 14:14:47', '2023-09-08 14:14:47'),
(122, 4, 1, 'Eccube\\Entity\\Order', 'Pref', 'id', '都道府県(ID)', 10, 1, '2023-09-08 14:14:47', '2023-09-08 14:14:47'),
(123, 4, 1, 'Eccube\\Entity\\Order', 'Pref', 'name', '都道府県(名称)', 11, 1, '2023-09-08 14:14:47', '2023-09-08 14:14:47'),
(124, 4, 1, 'Eccube\\Entity\\Order', 'addr01', NULL, '住所1', 12, 1, '2023-09-08 14:14:47', '2023-09-08 14:14:47'),
(125, 4, 1, 'Eccube\\Entity\\Order', 'addr02', NULL, '住所2', 13, 1, '2023-09-08 14:14:47', '2023-09-08 14:14:47'),
(126, 4, 1, 'Eccube\\Entity\\Order', 'email', NULL, 'メールアドレス', 14, 1, '2023-09-08 14:14:47', '2023-09-08 14:14:47'),
(127, 4, 1, 'Eccube\\Entity\\Order', 'tel01', NULL, 'TEL1', 15, 1, '2023-09-08 14:14:47', '2023-09-08 14:14:47'),
(128, 4, 1, 'Eccube\\Entity\\Order', 'tel02', NULL, 'TEL2', 16, 1, '2023-09-08 14:14:47', '2023-09-08 14:14:47'),
(129, 4, 1, 'Eccube\\Entity\\Order', 'tel03', NULL, 'TEL3', 17, 1, '2023-09-08 14:14:47', '2023-09-08 14:14:47'),
(130, 4, 1, 'Eccube\\Entity\\Order', 'fax01', NULL, 'FAX1', 18, 1, '2023-09-08 14:14:47', '2023-09-08 14:14:47'),
(131, 4, 1, 'Eccube\\Entity\\Order', 'fax02', NULL, 'FAX2', 19, 1, '2023-09-08 14:14:47', '2023-09-08 14:14:47'),
(132, 4, 1, 'Eccube\\Entity\\Order', 'fax03', NULL, 'FAX3', 20, 1, '2023-09-08 14:14:47', '2023-09-08 14:14:47'),
(133, 4, 1, 'Eccube\\Entity\\Order', 'Sex', 'id', '性別(ID)', 21, 1, '2023-09-08 14:14:47', '2023-09-08 14:14:47'),
(134, 4, 1, 'Eccube\\Entity\\Order', 'Sex', 'name', '性別(名称)', 22, 1, '2023-09-08 14:14:47', '2023-09-08 14:14:47'),
(135, 4, 1, 'Eccube\\Entity\\Order', 'Job', 'id', '職業(ID)', 23, 1, '2023-09-08 14:14:47', '2023-09-08 14:14:47'),
(136, 4, 1, 'Eccube\\Entity\\Order', 'Job', 'name', '職業(名称)', 24, 1, '2023-09-08 14:14:47', '2023-09-08 14:14:47'),
(137, 4, 1, 'Eccube\\Entity\\Order', 'birth', NULL, '誕生日', 25, 1, '2023-09-08 14:14:47', '2023-09-08 14:14:47'),
(138, 4, 1, 'Eccube\\Entity\\Order', 'note', NULL, 'ショップ用メモ欄', 26, 1, '2023-09-08 14:14:47', '2023-09-08 14:14:47'),
(139, 4, 1, 'Eccube\\Entity\\Order', 'subtotal', NULL, '小計', 27, 1, '2023-09-08 14:14:47', '2023-09-08 14:14:47'),
(140, 4, 1, 'Eccube\\Entity\\Order', 'discount', NULL, '値引き', 28, 1, '2023-09-08 14:14:47', '2023-09-08 14:14:47'),
(141, 4, 1, 'Eccube\\Entity\\Order', 'delivery_fee_total', NULL, '送料', 29, 1, '2023-09-08 14:14:47', '2023-09-08 14:14:47'),
(142, 4, 1, 'Eccube\\Entity\\Order', 'tax', NULL, '税金', 30, 1, '2023-09-08 14:14:47', '2023-09-08 14:14:47'),
(143, 4, 1, 'Eccube\\Entity\\Order', 'total', NULL, '合計', 31, 1, '2023-09-08 14:14:47', '2023-09-08 14:14:47'),
(144, 4, 1, 'Eccube\\Entity\\Order', 'payment_total', NULL, '支払合計', 32, 1, '2023-09-08 14:14:47', '2023-09-08 14:14:47'),
(145, 4, 1, 'Eccube\\Entity\\Order', 'OrderStatus', 'id', '対応状況(ID)', 33, 1, '2023-09-08 14:14:47', '2023-09-08 14:14:47'),
(146, 4, 1, 'Eccube\\Entity\\Order', 'OrderStatus', 'name', '対応状況(名称)', 34, 1, '2023-09-08 14:14:47', '2023-09-08 14:14:47'),
(147, 4, 1, 'Eccube\\Entity\\Order', 'Payment', 'id', '支払方法(ID)', 35, 1, '2023-09-08 14:14:47', '2023-09-08 14:14:47'),
(148, 4, 1, 'Eccube\\Entity\\Order', 'payment_method', NULL, '支払方法(名称)', 36, 1, '2023-09-08 14:14:47', '2023-09-08 14:14:47'),
(149, 4, 1, 'Eccube\\Entity\\Order', 'order_date', NULL, '受注日', 37, 1, '2023-09-08 14:14:47', '2023-09-08 14:14:47'),
(150, 4, 1, 'Eccube\\Entity\\Order', 'payment_date', NULL, '入金日', 38, 1, '2023-09-08 14:14:47', '2023-09-08 14:14:47'),
(151, 4, 1, 'Eccube\\Entity\\Order', 'commit_date', NULL, '発送日', 39, 1, '2023-09-08 14:14:47', '2023-09-08 14:14:47'),
(152, 4, 1, 'Eccube\\Entity\\Shipping', 'id', NULL, '配送ID', 40, 1, '2023-09-08 14:14:47', '2023-09-08 14:14:47'),
(153, 4, 1, 'Eccube\\Entity\\Shipping', 'name01', NULL, '配送先_お名前(姓)', 41, 1, '2023-09-08 14:14:47', '2023-09-08 14:14:47'),
(154, 4, 1, 'Eccube\\Entity\\Shipping', 'name02', NULL, '配送先_お名前(名)', 42, 1, '2023-09-08 14:14:47', '2023-09-08 14:14:47'),
(155, 4, 1, 'Eccube\\Entity\\Shipping', 'kana01', NULL, '配送先_お名前(セイ)', 43, 1, '2023-09-08 14:14:47', '2023-09-08 14:14:47'),
(156, 4, 1, 'Eccube\\Entity\\Shipping', 'kana02', NULL, '配送先_お名前(メイ)', 44, 1, '2023-09-08 14:14:47', '2023-09-08 14:14:47'),
(157, 4, 1, 'Eccube\\Entity\\Shipping', 'company_name', NULL, '配送先_会社名', 45, 1, '2023-09-08 14:14:47', '2023-09-08 14:14:47'),
(158, 4, 1, 'Eccube\\Entity\\Shipping', 'zip01', NULL, '配送先_郵便番号1', 46, 1, '2023-09-08 14:14:47', '2023-09-08 14:14:47'),
(159, 4, 1, 'Eccube\\Entity\\Shipping', 'zip02', NULL, '配送先_郵便番号2', 47, 1, '2023-09-08 14:14:47', '2023-09-08 14:14:47'),
(160, 4, 1, 'Eccube\\Entity\\Shipping', 'Pref', 'id', '配送先_都道府県(ID)', 48, 1, '2023-09-08 14:14:47', '2023-09-08 14:14:47'),
(161, 4, 1, 'Eccube\\Entity\\Shipping', 'Pref', 'name', '配送先_都道府県(名称)', 49, 1, '2023-09-08 14:14:47', '2023-09-08 14:14:47'),
(162, 4, 1, 'Eccube\\Entity\\Shipping', 'addr01', NULL, '配送先_住所1', 50, 1, '2023-09-08 14:14:47', '2023-09-08 14:14:47'),
(163, 4, 1, 'Eccube\\Entity\\Shipping', 'addr02', NULL, '配送先_住所2', 51, 1, '2023-09-08 14:14:47', '2023-09-08 14:14:47'),
(164, 4, 1, 'Eccube\\Entity\\Shipping', 'tel01', NULL, '配送先_TEL1', 52, 1, '2023-09-08 14:14:47', '2023-09-08 14:14:47'),
(165, 4, 1, 'Eccube\\Entity\\Shipping', 'tel02', NULL, '配送先_TEL2', 53, 1, '2023-09-08 14:14:47', '2023-09-08 14:14:47'),
(166, 4, 1, 'Eccube\\Entity\\Shipping', 'tel03', NULL, '配送先_TEL3', 54, 1, '2023-09-08 14:14:47', '2023-09-08 14:14:47'),
(167, 4, 1, 'Eccube\\Entity\\Shipping', 'fax01', NULL, '配送先_FAX1', 55, 1, '2023-09-08 14:14:47', '2023-09-08 14:14:47'),
(168, 4, 1, 'Eccube\\Entity\\Shipping', 'fax02', NULL, '配送先_FAX2', 56, 1, '2023-09-08 14:14:47', '2023-09-08 14:14:47'),
(169, 4, 1, 'Eccube\\Entity\\Shipping', 'fax03', NULL, '配送先_FAX3', 57, 1, '2023-09-08 14:14:47', '2023-09-08 14:14:47'),
(170, 4, 1, 'Eccube\\Entity\\Shipping', 'Delivery', 'id', '配送業者(ID)', 58, 1, '2023-09-08 14:14:47', '2023-09-08 14:14:47'),
(171, 4, 1, 'Eccube\\Entity\\Shipping', 'shipping_delivery_name', NULL, '配送業者(名称)', 59, 1, '2023-09-08 14:14:47', '2023-09-08 14:14:47'),
(172, 4, 1, 'Eccube\\Entity\\Shipping', 'DeliveryTime', 'id', 'お届け時間ID', 60, 1, '2023-09-08 14:14:47', '2023-09-08 14:14:47'),
(173, 4, 1, 'Eccube\\Entity\\Shipping', 'shipping_delivery_time', NULL, 'お届け時間(名称)', 61, 1, '2023-09-08 14:14:47', '2023-09-08 14:14:47'),
(174, 4, 1, 'Eccube\\Entity\\Shipping', 'shipping_delivery_date', NULL, 'お届け希望日', 62, 1, '2023-09-08 14:14:47', '2023-09-08 14:14:47'),
(175, 4, 1, 'Eccube\\Entity\\Shipping', 'DeliveryFee', 'id', '送料ID', 63, 1, '2023-09-08 14:14:47', '2023-09-08 14:14:47'),
(176, 4, 1, 'Eccube\\Entity\\Shipping', 'shipping_delivery_fee', NULL, '送料', 64, 1, '2023-09-08 14:14:47', '2023-09-08 14:14:47'),
(177, 4, 1, 'Eccube\\Entity\\Shipping', 'shipping_commit_date', NULL, '発送日', 65, 1, '2023-09-08 14:14:47', '2023-09-08 14:14:47'),
(178, 4, 1, 'Eccube\\Entity\\ShipmentItem', 'id', NULL, '配送商品ID', 66, 1, '2023-09-08 14:14:47', '2023-09-08 14:14:47'),
(179, 4, 1, 'Eccube\\Entity\\ShipmentItem', 'Product', 'id', '商品ID', 67, 1, '2023-09-08 14:14:47', '2023-09-08 14:14:47'),
(180, 4, 1, 'Eccube\\Entity\\ShipmentItem', 'ProductClass', 'id', '商品規格ID', 68, 1, '2023-09-08 14:14:47', '2023-09-08 14:14:47'),
(181, 4, 1, 'Eccube\\Entity\\ShipmentItem', 'product_name', NULL, '商品名', 69, 1, '2023-09-08 14:14:47', '2023-09-08 14:14:47'),
(182, 4, 1, 'Eccube\\Entity\\ShipmentItem', 'product_code', NULL, '商品コード', 70, 1, '2023-09-08 14:14:47', '2023-09-08 14:14:47'),
(183, 4, 1, 'Eccube\\Entity\\ShipmentItem', 'class_name1', NULL, '規格名1', 71, 1, '2023-09-08 14:14:47', '2023-09-08 14:14:47'),
(184, 4, 1, 'Eccube\\Entity\\ShipmentItem', 'class_name2', NULL, '規格名2', 72, 1, '2023-09-08 14:14:47', '2023-09-08 14:14:47'),
(185, 4, 1, 'Eccube\\Entity\\ShipmentItem', 'class_category_name1', NULL, '規格分類名1', 73, 1, '2023-09-08 14:14:47', '2023-09-08 14:14:47'),
(186, 4, 1, 'Eccube\\Entity\\ShipmentItem', 'class_category_name2', NULL, '規格分類名2', 74, 1, '2023-09-08 14:14:47', '2023-09-08 14:14:47'),
(187, 4, 1, 'Eccube\\Entity\\ShipmentItem', 'price', NULL, '価格', 75, 1, '2023-09-08 14:14:47', '2023-09-08 14:14:47'),
(188, 4, 1, 'Eccube\\Entity\\ShipmentItem', 'quantity', NULL, '個数', 76, 1, '2023-09-08 14:14:47', '2023-09-08 14:14:47'),
(189, 5, 1, 'Eccube\\Entity\\Category', 'id', NULL, 'カテゴリID', 1, 1, '2023-09-08 14:14:47', '2023-09-08 14:14:47'),
(190, 5, 1, 'Eccube\\Entity\\Category', 'rank', NULL, '表示ランク', 2, 1, '2023-09-08 14:14:47', '2023-09-08 14:14:47'),
(191, 5, 1, 'Eccube\\Entity\\Category', 'name', NULL, 'カテゴリ名', 3, 1, '2023-09-08 14:14:47', '2023-09-08 14:14:47'),
(192, 5, 1, 'Eccube\\Entity\\Category', 'Parent', 'id', '親カテゴリID', 4, 1, '2023-09-08 14:14:47', '2023-09-08 14:14:47'),
(193, 5, 1, 'Eccube\\Entity\\Category', 'level', NULL, '階層', 5, 1, '2023-09-08 14:14:47', '2023-09-08 14:14:47'),
(194, 1, 1, 'Eccube\\\\Entity\\\\Product', 'ProductTag', 'tag_id', 'タグ(ID)', 29, 1, '2023-09-08 07:14:59', '2023-09-08 07:14:59'),
(195, 1, 1, 'Eccube\\\\Entity\\\\Product', 'ProductTag', 'Tag', 'タグ(名称)', 30, 1, '2023-09-08 07:14:59', '2023-09-08 07:14:59');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `dtb_customer`
--

CREATE TABLE `dtb_customer` (
  `customer_id` int(11) NOT NULL,
  `status` smallint(6) DEFAULT NULL,
  `sex` smallint(6) DEFAULT NULL,
  `job` smallint(6) DEFAULT NULL,
  `country_id` smallint(6) DEFAULT NULL,
  `pref` smallint(6) DEFAULT NULL,
  `name01` longtext NOT NULL,
  `name02` longtext NOT NULL,
  `kana01` longtext,
  `kana02` longtext,
  `company_name` longtext,
  `zip01` longtext,
  `zip02` longtext,
  `zipcode` longtext,
  `addr01` longtext,
  `addr02` longtext,
  `email` longtext NOT NULL,
  `tel01` longtext,
  `tel02` longtext,
  `tel03` longtext,
  `fax01` longtext,
  `fax02` longtext,
  `fax03` longtext,
  `birth` datetime DEFAULT NULL,
  `password` longtext,
  `salt` longtext,
  `secret_key` varchar(200) NOT NULL,
  `first_buy_date` datetime DEFAULT NULL,
  `last_buy_date` datetime DEFAULT NULL,
  `buy_times` decimal(10,0) DEFAULT '0',
  `buy_total` decimal(10,0) DEFAULT '0',
  `note` longtext,
  `reset_key` longtext,
  `reset_expire` datetime DEFAULT NULL,
  `create_date` datetime NOT NULL,
  `update_date` datetime NOT NULL,
  `del_flg` smallint(6) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `dtb_customer_address`
--

CREATE TABLE `dtb_customer_address` (
  `customer_address_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `country_id` smallint(6) DEFAULT NULL,
  `pref` smallint(6) DEFAULT NULL,
  `name01` longtext,
  `name02` longtext,
  `kana01` longtext,
  `kana02` longtext,
  `company_name` longtext,
  `zip01` longtext,
  `zip02` longtext,
  `zipcode` longtext,
  `addr01` longtext,
  `addr02` longtext,
  `tel01` longtext,
  `tel02` longtext,
  `tel03` longtext,
  `fax01` longtext,
  `fax02` longtext,
  `fax03` longtext,
  `create_date` datetime NOT NULL,
  `update_date` datetime NOT NULL,
  `del_flg` smallint(6) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `dtb_customer_favorite_product`
--

CREATE TABLE `dtb_customer_favorite_product` (
  `favorite_id` int(11) NOT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `create_date` datetime NOT NULL,
  `update_date` datetime NOT NULL,
  `del_flg` smallint(6) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `dtb_delivery`
--

CREATE TABLE `dtb_delivery` (
  `delivery_id` int(11) NOT NULL,
  `creator_id` int(11) NOT NULL,
  `product_type_id` smallint(6) NOT NULL,
  `name` longtext,
  `service_name` longtext,
  `description` longtext,
  `confirm_url` longtext,
  `rank` int(11) DEFAULT NULL,
  `del_flg` smallint(6) NOT NULL DEFAULT '0',
  `create_date` datetime NOT NULL,
  `update_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `dtb_delivery`
--

INSERT INTO `dtb_delivery` (`delivery_id`, `creator_id`, `product_type_id`, `name`, `service_name`, `description`, `confirm_url`, `rank`, `del_flg`, `create_date`, `update_date`) VALUES
(1, 1, 1, 'サンプル業者', 'サンプル業者', NULL, NULL, 1, 0, '2023-09-08 14:14:46', '2023-09-08 14:14:46'),
(2, 1, 2, 'サンプル宅配', 'サンプル宅配', NULL, NULL, 2, 0, '2023-09-08 14:14:46', '2023-09-08 14:14:46');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `dtb_delivery_date`
--

CREATE TABLE `dtb_delivery_date` (
  `date_id` int(11) NOT NULL,
  `name` longtext,
  `value` smallint(6) NOT NULL DEFAULT '0',
  `rank` smallint(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `dtb_delivery_date`
--

INSERT INTO `dtb_delivery_date` (`date_id`, `name`, `value`, `rank`) VALUES
(1, '即日', 0, 0),
(2, '1～2日後', 1, 1),
(3, '3～4日後', 3, 2),
(4, '1週間以降', 7, 3),
(5, '2週間以降', 14, 4),
(6, '3週間以降', 21, 5),
(7, '1ヶ月以降', 30, 6),
(8, '2ヶ月以降', 60, 7),
(9, 'お取り寄せ(商品入荷後)', -1, 8);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `dtb_delivery_fee`
--

CREATE TABLE `dtb_delivery_fee` (
  `fee_id` int(11) NOT NULL,
  `delivery_id` int(11) DEFAULT NULL,
  `pref` smallint(6) NOT NULL,
  `fee` decimal(10,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `dtb_delivery_fee`
--

INSERT INTO `dtb_delivery_fee` (`fee_id`, `delivery_id`, `pref`, `fee`) VALUES
(1, 1, 1, '1000'),
(2, 1, 2, '1000'),
(3, 1, 3, '1000'),
(4, 1, 4, '1000'),
(5, 1, 5, '1000'),
(6, 1, 6, '1000'),
(7, 1, 7, '1000'),
(8, 1, 8, '1000'),
(9, 1, 9, '1000'),
(10, 1, 10, '1000'),
(11, 1, 11, '1000'),
(12, 1, 12, '1000'),
(13, 1, 13, '1000'),
(14, 1, 14, '1000'),
(15, 1, 15, '1000'),
(16, 1, 16, '1000'),
(17, 1, 17, '1000'),
(18, 1, 18, '1000'),
(19, 1, 19, '1000'),
(20, 1, 20, '1000'),
(21, 1, 21, '1000'),
(22, 1, 22, '1000'),
(23, 1, 23, '1000'),
(24, 1, 24, '1000'),
(25, 1, 25, '1000'),
(26, 1, 26, '1000'),
(27, 1, 27, '1000'),
(28, 1, 28, '1000'),
(29, 1, 29, '1000'),
(30, 1, 30, '1000'),
(31, 1, 31, '1000'),
(32, 1, 32, '1000'),
(33, 1, 33, '1000'),
(34, 1, 34, '1000'),
(35, 1, 35, '1000'),
(36, 1, 36, '1000'),
(37, 1, 37, '1000'),
(38, 1, 38, '1000'),
(39, 1, 39, '1000'),
(40, 1, 40, '1000'),
(41, 1, 41, '1000'),
(42, 1, 42, '1000'),
(43, 1, 43, '1000'),
(44, 1, 44, '1000'),
(45, 1, 45, '1000'),
(46, 1, 46, '1000'),
(47, 1, 47, '1000'),
(48, 2, 1, '0'),
(49, 2, 2, '0'),
(50, 2, 3, '0'),
(51, 2, 4, '0'),
(52, 2, 5, '0'),
(53, 2, 6, '0'),
(54, 2, 7, '0'),
(55, 2, 8, '0'),
(56, 2, 9, '0'),
(57, 2, 10, '0'),
(58, 2, 11, '0'),
(59, 2, 12, '0'),
(60, 2, 13, '0'),
(61, 2, 14, '0'),
(62, 2, 15, '0'),
(63, 2, 16, '0'),
(64, 2, 17, '0'),
(65, 2, 18, '0'),
(66, 2, 19, '0'),
(67, 2, 20, '0'),
(68, 2, 21, '0'),
(69, 2, 22, '0'),
(70, 2, 23, '0'),
(71, 2, 24, '0'),
(72, 2, 25, '0'),
(73, 2, 26, '0'),
(74, 2, 27, '0'),
(75, 2, 28, '0'),
(76, 2, 29, '0'),
(77, 2, 30, '0'),
(78, 2, 31, '0'),
(79, 2, 32, '0'),
(80, 2, 33, '0'),
(81, 2, 34, '0'),
(82, 2, 35, '0'),
(83, 2, 36, '0'),
(84, 2, 37, '0'),
(85, 2, 38, '0'),
(86, 2, 39, '0'),
(87, 2, 40, '0'),
(88, 2, 41, '0'),
(89, 2, 42, '0'),
(90, 2, 43, '0'),
(91, 2, 44, '0'),
(92, 2, 45, '0'),
(93, 2, 46, '0'),
(94, 2, 47, '0');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `dtb_delivery_time`
--

CREATE TABLE `dtb_delivery_time` (
  `time_id` int(11) NOT NULL,
  `delivery_id` int(11) DEFAULT NULL,
  `delivery_time` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `dtb_delivery_time`
--

INSERT INTO `dtb_delivery_time` (`time_id`, `delivery_id`, `delivery_time`) VALUES
(1, 1, '午前'),
(2, 1, '午後');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `dtb_help`
--

CREATE TABLE `dtb_help` (
  `id` int(11) NOT NULL,
  `law_country_id` smallint(6) DEFAULT NULL,
  `law_pref` smallint(6) DEFAULT NULL,
  `customer_agreement` longtext,
  `law_company` longtext,
  `law_manager` longtext,
  `law_zip01` longtext,
  `law_zip02` longtext,
  `law_zipcode` longtext,
  `law_addr01` longtext,
  `law_addr02` longtext,
  `law_tel01` longtext,
  `law_tel02` longtext,
  `law_tel03` longtext,
  `law_fax01` longtext,
  `law_fax02` longtext,
  `law_fax03` longtext,
  `law_email` longtext,
  `law_url` longtext,
  `law_term01` longtext,
  `law_term02` longtext,
  `law_term03` longtext,
  `law_term04` longtext,
  `law_term05` longtext,
  `law_term06` longtext,
  `law_term07` longtext,
  `law_term08` longtext,
  `law_term09` longtext,
  `law_term10` longtext,
  `create_date` datetime NOT NULL,
  `update_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `dtb_help`
--

INSERT INTO `dtb_help` (`id`, `law_country_id`, `law_pref`, `customer_agreement`, `law_company`, `law_manager`, `law_zip01`, `law_zip02`, `law_zipcode`, `law_addr01`, `law_addr02`, `law_tel01`, `law_tel02`, `law_tel03`, `law_fax01`, `law_fax02`, `law_fax03`, `law_email`, `law_url`, `law_term01`, `law_term02`, `law_term03`, `law_term04`, `law_term05`, `law_term06`, `law_term07`, `law_term08`, `law_term09`, `law_term10`, `create_date`, `update_date`) VALUES
(1, NULL, NULL, '第1条 (会員)\n\n1. 「会員」とは、当社が定める手続に従い本規約に同意の上、入会の申し込みを行う個人をいいます。\n2. 「会員情報」とは、会員が当社に開示した会員の属性に関する情報および会員の取引に関する履歴等の情報をいいます。\n3. 本規約は、全ての会員に適用され、登録手続時および登録後にお守りいただく規約です。\n\n第2条 (登録)\n\n1. 会員資格\n本規約に同意の上、所定の入会申込みをされたお客様は、所定の登録手続完了後に会員としての資格を有します。会員登録手続は、会員となるご本人が行ってください。代理による登録は一切認められません。なお、過去に会員資格が取り消された方やその他当社が相応しくないと判断した方からの会員申込はお断りする場合があります。\n\n2. 会員情報の入力\n会員登録手続の際には、入力上の注意をよく読み、所定の入力フォームに必要事項を正確に入力してください。会員情報の登録において、特殊記号・旧漢字・ローマ数字などはご使用になれません。これらの文字が登録された場合は当社にて変更致します。\n\n3. パスワードの管理\n(1)パスワードは会員本人のみが利用できるものとし、第三者に譲渡・貸与できないものとします。\n(2)パスワードは、他人に知られることがないよう定期的に変更する等、会員本人が責任をもって管理してください。\n(3)パスワードを用いて当社に対して行われた意思表示は、会員本人の意思表示とみなし、そのために生じる支払等は全て会員の責任となります。\n\n第3条 (変更)\n\n1. 会員は、氏名、住所など当社に届け出た事項に変更があった場合には、速やかに当社に連絡するものとします。\n2. 変更登録がなされなかったことにより生じた損害について、当社は一切責任を負いません。また、変更登録がなされた場合でも、変更登録前にすでに手続がなされた取引は、変更登録前の情報に基づいて行われますのでご注意ください。\n\n第4条 (退会)\n\n会員が退会を希望する場合には、会員本人が退会手続きを行ってください。所定の退会手続の終了後に、退会となります。\n\n第5条 (会員資格の喪失及び賠償義務)\n\n1. 会員が、会員資格取得申込の際に虚偽の申告をしたとき、通信販売による代金支払債務を怠ったとき、その他当社が会員として不適当と認める事由があるときは、当社は、会員資格を取り消すことができることとします。\n\n2. 会員が、以下の各号に定める行為をしたときは、これにより当社が被った損害を賠償する責任を負います。\n(1)会員番号、パスワードを不正に使用すること\n(2)当ホームページにアクセスして情報を改ざんしたり、当ホームページに有害なコンピュータープログラムを送信するなどして、当社の営業を妨害すること\n(3)当社が扱う商品の知的所有権を侵害する行為をすること\n(4)その他、この利用規約に反する行為をすること\n\n第6条 (会員情報の取扱い)\n1. 当社は、原則として会員情報を会員の事前の同意なく第三者に対して開示することはありません。ただし、次の各号の場合には、会員の事前の同意なく、当社は会員情報その他のお客様情報を開示できるものとします。\n(1)法令に基づき開示を求められた場合\n(2)当社の権利、利益、名誉等を保護するために必要であると当社が判断した場合\n\n2. 会員情報につきましては、当社の「個人情報保護への取組み」に従い、当社が管理します。当社は、会員情報を、会員へのサービス提供、サービス内容の向上、サービスの利用促進、およびサービスの健全かつ円滑な運営の確保を図る目的のために、当社おいて利用することができるものとします。\n\n3. 当社は、会員に対して、メールマガジンその他の方法による情報提供(広告を含みます)を行うことができるものとします。会員が情報提供を希望しない場合は、当社所定の方法に従い、その旨を通知して頂ければ、情報提供を停止します。ただし、本サービス運営に必要な情報提供につきましては、会員の希望により停止をすることはできません。\n\n第7条 (禁止事項)\n\n本サービスの利用に際して、会員に対し次の各号の行為を行うことを禁止します。\n\n1. 法令または本規約、本サービスご利用上のご注意、本サービスでのお買い物上のご注意その他の本規約等に違反すること\n2. 当社、およびその他の第三者の権利、利益、名誉等を損ねること\n3. 青少年の心身に悪影響を及ぼす恐れがある行為、その他公序良俗に反する行為を行うこと\n4. 他の利用者その他の第三者に迷惑となる行為や不快感を抱かせる行為を行うこと\n5. 虚偽の情報を入力すること\n6. 有害なコンピュータープログラム、メール等を送信または書き込むこと\n7. 当社のサーバーその他のコンピューターに不正にアクセスすること\n8. パスワードを第三者に貸与・譲渡すること、または第三者と共用すること\n9. その他当社が不適切と判断すること\n\n第8条 (サービスの中断・停止等)\n\n1. 当社は、本サービスの稼動状態を良好に保つために、次の各号の一に該当する場合、予告なしに、本サービスの提供全てあるいは一部を停止することがあります。\n(1)システムの定期保守および緊急保守のために必要な場合\n(2)システムに負荷が集中した場合\n(3)火災、停電、第三者による妨害行為などによりシステムの運用が困難になった場合\n(4)その他、止むを得ずシステムの停止が必要と当社が判断した場合\n\n第9条 (サービスの変更・廃止)\n\n当社は、その判断によりサービスの全部または一部を事前の通知なく、適宜変更・廃止できるものとします。\n\n第10条 (免責)\n\n1. 通信回線やコンピューターなどの障害によるシステムの中断・遅滞・中止・データの消失、データへの不正アクセスにより生じた損害、その他当社のサービスに関して会員に生じた損害について、当社は一切責任を負わないものとします。\n2. 当社は、当社のウェブページ・サーバー・ドメインなどから送られるメール・コンテンツに、コンピューター・ウィルスなどの有害なものが含まれていないことを保証いたしません。\n3. 会員が本規約等に違反したことによって生じた損害については、当社は一切責任を負いません。\n\n第11条 (本規約の改定)\n\n当社は、本規約を任意に改定できるものとし、また、当社において本規約を補充する規約(以下「補充規約」といいます)を定めることができます。本規約の改定または補充は、改定後の本規約または補充規約を当社所定のサイトに掲示したときにその効力を生じるものとします。この場合、会員は、改定後の規約および補充規約に従うものと致します。\n\n第12条 (準拠法、管轄裁判所)\n\n本規約に関して紛争が生じた場合、当社本店所在地を管轄する地方裁判所を第一審の専属的合意管轄裁判所とします。 ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-09-08 14:14:46', '2023-09-08 14:14:46');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `dtb_mail_history`
--

CREATE TABLE `dtb_mail_history` (
  `send_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `template_id` int(11) DEFAULT NULL,
  `creator_id` int(11) DEFAULT NULL,
  `send_date` datetime DEFAULT NULL,
  `subject` longtext,
  `mail_body` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `dtb_mail_template`
--

CREATE TABLE `dtb_mail_template` (
  `template_id` int(11) NOT NULL,
  `creator_id` int(11) NOT NULL,
  `name` longtext,
  `file_name` longtext,
  `subject` longtext,
  `header` longtext,
  `footer` longtext,
  `del_flg` smallint(6) NOT NULL DEFAULT '0',
  `create_date` datetime NOT NULL,
  `update_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `dtb_mail_template`
--

INSERT INTO `dtb_mail_template` (`template_id`, `creator_id`, `name`, `file_name`, `subject`, `header`, `footer`, `del_flg`, `create_date`, `update_date`) VALUES
(1, 1, '注文受付メール', 'Mail/order.twig', 'ご注文ありがとうございます', 'この度はご注文いただき誠にありがとうございます。\n下記ご注文内容にお間違えがないかご確認下さい。\n\n', '\n============================================\n\n\nこのメッセージはお客様へのお知らせ専用ですので、\nこのメッセージへの返信としてご質問をお送りいただいても回答できません。\nご了承ください。\n\nご質問やご不明な点がございましたら、こちらからお願いいたします。\n\n', 0, '2023-09-08 14:14:46', '2023-09-08 14:14:46'),
(5, 1, '問合受付メール', 'Mail/contact.twig', 'お問い合わせを受け付けました', NULL, NULL, 0, '2023-09-08 14:14:46', '2023-09-08 14:14:46');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `dtb_member`
--

CREATE TABLE `dtb_member` (
  `member_id` int(11) NOT NULL,
  `work` smallint(6) DEFAULT NULL,
  `authority` smallint(6) DEFAULT NULL,
  `creator_id` int(11) DEFAULT NULL,
  `name` longtext,
  `department` longtext,
  `login_id` longtext NOT NULL,
  `password` longtext NOT NULL,
  `salt` longtext NOT NULL,
  `rank` int(11) NOT NULL,
  `del_flg` smallint(6) NOT NULL DEFAULT '0',
  `create_date` datetime NOT NULL,
  `update_date` datetime NOT NULL,
  `login_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `dtb_member`
--

INSERT INTO `dtb_member` (`member_id`, `work`, `authority`, `creator_id`, `name`, `department`, `login_id`, `password`, `salt`, `rank`, `del_flg`, `create_date`, `update_date`, `login_date`) VALUES
(1, 1, 0, 1, 'dummy', NULL, 'dummy', 'dummy', 'dummy', 0, 1, '2023-09-08 14:14:46', '2023-09-08 14:14:46', NULL),
(2, 1, 0, 1, '管理者', 'EC-CUBE SHOP', 'admin', '322e452646c071e61e0aab928817e6ef0aeed7fc4af71af27758f299dd68ef5e', 'F521iTT7P3Aye2qHvCrOIS3Jf9bkRKMq', 1, 0, '2023-09-08 14:15:03', '2023-09-08 16:51:28', '2023-09-08 16:51:28');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `dtb_news`
--

CREATE TABLE `dtb_news` (
  `news_id` int(11) NOT NULL,
  `creator_id` int(11) NOT NULL,
  `news_date` datetime DEFAULT NULL,
  `rank` int(11) DEFAULT NULL,
  `news_title` longtext NOT NULL,
  `news_comment` longtext,
  `news_url` longtext,
  `news_select` smallint(6) NOT NULL DEFAULT '0',
  `link_method` smallint(6) NOT NULL DEFAULT '0',
  `create_date` datetime NOT NULL,
  `update_date` datetime NOT NULL,
  `del_flg` smallint(6) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `dtb_news`
--

INSERT INTO `dtb_news` (`news_id`, `creator_id`, `news_date`, `rank`, `news_title`, `news_comment`, `news_url`, `news_select`, `link_method`, `create_date`, `update_date`, `del_flg`) VALUES
(1, 1, '2023-09-08 14:14:46', 1, 'サイトオープンいたしました!', '一人暮らしからオフィスなどさまざまなシーンで あなたの生活をサポートするグッズをご家庭へお届けします！', NULL, 0, 1, '2023-09-08 14:14:46', '2023-09-08 14:14:46', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `dtb_order`
--

CREATE TABLE `dtb_order` (
  `order_id` int(11) NOT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `order_country_id` smallint(6) DEFAULT NULL,
  `order_pref` smallint(6) DEFAULT NULL,
  `order_sex` smallint(6) DEFAULT NULL,
  `order_job` smallint(6) DEFAULT NULL,
  `payment_id` int(11) DEFAULT NULL,
  `device_type_id` smallint(6) DEFAULT NULL,
  `pre_order_id` longtext,
  `message` longtext,
  `order_name01` longtext,
  `order_name02` longtext,
  `order_kana01` longtext,
  `order_kana02` longtext,
  `order_company_name` longtext,
  `order_email` longtext,
  `order_tel01` longtext,
  `order_tel02` longtext,
  `order_tel03` longtext,
  `order_fax01` longtext,
  `order_fax02` longtext,
  `order_fax03` longtext,
  `order_zip01` longtext,
  `order_zip02` longtext,
  `order_zipcode` longtext,
  `order_addr01` longtext,
  `order_addr02` longtext,
  `order_birth` datetime DEFAULT NULL,
  `subtotal` decimal(10,0) DEFAULT NULL,
  `discount` decimal(10,0) NOT NULL DEFAULT '0',
  `delivery_fee_total` decimal(10,0) DEFAULT NULL,
  `charge` decimal(10,0) DEFAULT NULL,
  `tax` decimal(10,0) DEFAULT NULL,
  `total` decimal(10,0) DEFAULT NULL,
  `payment_total` decimal(10,0) DEFAULT NULL,
  `payment_method` longtext,
  `note` longtext,
  `create_date` datetime NOT NULL,
  `update_date` datetime NOT NULL,
  `order_date` datetime DEFAULT NULL,
  `commit_date` datetime DEFAULT NULL,
  `payment_date` datetime DEFAULT NULL,
  `del_flg` smallint(6) NOT NULL DEFAULT '0',
  `status` smallint(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `dtb_order_detail`
--

CREATE TABLE `dtb_order_detail` (
  `order_detail_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_class_id` int(11) NOT NULL,
  `product_name` longtext NOT NULL,
  `product_code` longtext,
  `class_name1` longtext,
  `class_name2` longtext,
  `class_category_name1` longtext,
  `class_category_name2` longtext,
  `price` decimal(10,0) DEFAULT NULL,
  `quantity` decimal(10,0) DEFAULT NULL,
  `tax_rate` decimal(10,0) DEFAULT NULL,
  `tax_rule` smallint(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `dtb_page_layout`
--

CREATE TABLE `dtb_page_layout` (
  `page_id` int(11) NOT NULL,
  `device_type_id` smallint(6) DEFAULT NULL,
  `page_name` longtext,
  `url` longtext NOT NULL,
  `file_name` longtext,
  `edit_flg` smallint(6) DEFAULT '1',
  `author` longtext,
  `description` longtext,
  `keyword` longtext,
  `update_url` longtext,
  `create_date` datetime NOT NULL,
  `update_date` datetime NOT NULL,
  `meta_robots` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `dtb_page_layout`
--

INSERT INTO `dtb_page_layout` (`page_id`, `device_type_id`, `page_name`, `url`, `file_name`, `edit_flg`, `author`, `description`, `keyword`, `update_url`, `create_date`, `update_date`, `meta_robots`) VALUES
(0, 10, 'プレビューデータ', 'preview', NULL, 1, NULL, NULL, NULL, NULL, '2023-09-08 14:14:46', '2023-09-08 14:14:46', NULL),
(1, 10, 'TOPページ', 'homepage', 'index', 2, NULL, NULL, NULL, NULL, '2023-09-08 14:14:46', '2023-09-08 14:14:46', NULL),
(2, 10, '商品一覧ページ', 'product_list', 'Product/list', 2, NULL, NULL, NULL, NULL, '2023-09-08 14:14:46', '2023-09-08 14:14:46', NULL),
(3, 10, '商品詳細ページ', 'product_detail', 'Product/detail', 2, NULL, NULL, NULL, NULL, '2023-09-08 14:14:46', '2023-09-08 14:14:46', NULL),
(4, 10, 'MYページ', 'mypage', 'Mypage/index', 2, NULL, NULL, NULL, NULL, '2023-09-08 14:14:46', '2023-09-08 14:14:46', 'noindex'),
(5, 10, 'MYページ/会員登録内容変更(入力ページ)', 'mypage_change', 'Mypage/change', 2, NULL, NULL, NULL, NULL, '2023-09-08 14:14:46', '2023-09-08 14:14:46', 'noindex'),
(6, 10, 'MYページ/会員登録内容変更(完了ページ)', 'mypage_change_complete', 'Mypage/change_complete', 2, NULL, NULL, NULL, NULL, '2023-09-08 14:14:46', '2023-09-08 14:14:46', 'noindex'),
(7, 10, 'MYページ/お届け先一覧', 'mypage_delivery', 'Mypage/delivery', 2, NULL, NULL, NULL, NULL, '2023-09-08 14:14:46', '2023-09-08 14:14:46', 'noindex'),
(8, 10, 'MYページ/お届け先追加', 'mypage_delivery_new', 'Mypage/delivery_edit', 2, NULL, NULL, NULL, NULL, '2023-09-08 14:14:46', '2023-09-08 14:14:46', 'noindex'),
(9, 10, 'MYページ/お気に入り一覧', 'mypage_favorite', 'Mypage/favorite', 2, NULL, NULL, NULL, NULL, '2023-09-08 14:14:46', '2023-09-08 14:14:46', 'noindex'),
(10, 10, 'MYページ/購入履歴詳細', 'mypage_history', 'Mypage/history', 2, NULL, NULL, NULL, NULL, '2023-09-08 14:14:46', '2023-09-08 14:14:46', 'noindex'),
(11, 10, 'MYページ/ログイン', 'mypage_login', 'Mypage/login', 2, NULL, NULL, NULL, NULL, '2023-09-08 14:14:46', '2023-09-08 14:14:46', 'noindex'),
(12, 10, 'MYページ/退会手続き(入力ページ)', 'mypage_withdraw', 'Mypage/withdraw', 2, NULL, NULL, NULL, NULL, '2023-09-08 14:14:46', '2023-09-08 14:14:46', 'noindex'),
(13, 10, 'MYページ/退会手続き(完了ページ)', 'mypage_withdraw_complete', 'Mypage/withdraw_complete', 2, NULL, NULL, NULL, NULL, '2023-09-08 14:14:46', '2023-09-08 14:14:46', 'noindex'),
(14, 10, '当サイトについて', 'help_about', 'Help/about', 2, NULL, NULL, NULL, NULL, '2023-09-08 14:14:46', '2023-09-08 14:14:46', NULL),
(15, 10, '現在のカゴの中', 'cart', 'Cart/index', 2, NULL, NULL, NULL, NULL, '2023-09-08 14:14:46', '2023-09-08 14:14:46', 'noindex'),
(16, 10, 'お問い合わせ(入力ページ)', 'contact', 'Contact/index', 2, NULL, NULL, NULL, NULL, '2023-09-08 14:14:46', '2023-09-08 14:14:46', NULL),
(17, 10, 'お問い合わせ(完了ページ)', 'contact_complete', 'Contact/complete', 2, NULL, NULL, NULL, NULL, '2023-09-08 14:14:46', '2023-09-08 14:14:46', NULL),
(18, 10, '会員登録(入力ページ)', 'entry', 'Entry/index', 2, NULL, NULL, NULL, NULL, '2023-09-08 14:14:46', '2023-09-08 14:14:46', NULL),
(19, 10, 'ご利用規約', 'help_agreement', 'Help/agreement', 2, NULL, NULL, NULL, NULL, '2023-09-08 14:14:46', '2023-09-08 14:14:46', NULL),
(20, 10, '会員登録(完了ページ)', 'entry_complete', 'Entry/complete', 2, NULL, NULL, NULL, NULL, '2023-09-08 14:14:46', '2023-09-08 14:14:46', NULL),
(21, 10, '特定商取引に関する法律に基づく表記', 'help_tradelaw', 'Help/tradelaw', 2, NULL, NULL, NULL, NULL, '2023-09-08 14:14:46', '2023-09-08 14:14:46', NULL),
(22, 10, '本会員登録(完了ページ)', 'entry_activate', 'Entry/activate', 2, NULL, NULL, NULL, NULL, '2023-09-08 14:14:46', '2023-09-08 14:14:46', NULL),
(23, 10, '商品購入', 'shopping', 'Shopping/index', 2, NULL, NULL, NULL, NULL, '2023-09-08 14:14:46', '2023-09-08 14:14:46', 'noindex'),
(24, 10, '商品購入/お届け先の指定', 'shopping_shipping', 'Shopping/shipping', 2, NULL, NULL, NULL, NULL, '2023-09-08 14:14:46', '2023-09-08 14:14:46', 'noindex'),
(25, 10, '商品購入/お届け先の複数指定', 'shopping_shipping_multiple', 'Shopping/shipping_multiple', 2, NULL, NULL, NULL, NULL, '2023-09-08 14:14:46', '2023-09-08 14:14:46', 'noindex'),
(28, 10, '商品購入/ご注文完了', 'shopping_complete', 'Shopping/complete', 2, NULL, NULL, NULL, NULL, '2023-09-08 14:14:46', '2023-09-08 14:14:46', 'noindex'),
(29, 10, 'プライバシーポリシー', 'help_privacy', 'Help/privacy', 2, NULL, NULL, NULL, NULL, '2023-09-08 14:14:46', '2023-09-08 14:14:46', NULL),
(30, 10, '商品購入ログイン', 'shopping_login', 'Shopping/login', 2, NULL, NULL, NULL, NULL, '2023-09-08 14:14:46', '2023-09-08 14:14:46', NULL),
(31, 10, '非会員購入情報入力', 'shopping_nonmember', 'Shopping/nonmember', 2, NULL, NULL, NULL, NULL, '2023-09-08 14:14:46', '2023-09-08 14:14:46', NULL),
(32, 10, '商品購入/お届け先の追加', 'shopping_shipping_edit', 'Shopping/shipping_edit', 2, NULL, NULL, NULL, NULL, '2023-09-08 07:14:57', '2023-09-08 07:14:57', 'noindex'),
(33, 10, '商品購入/お届け先の複数指定(お届け先の追加)', 'shopping_shipping_multiple_edit', 'Shopping/shipping_multiple_edit', 2, NULL, NULL, NULL, NULL, '2023-09-08 07:14:57', '2023-09-08 07:14:57', 'noindex'),
(34, 10, '商品購入/購入エラー', 'shopping_error', 'Shopping/shopping_error', 2, NULL, NULL, NULL, NULL, '2023-09-08 07:14:57', '2023-09-08 07:14:57', 'noindex'),
(35, 10, 'ご利用ガイド', 'help_guide', 'Help/guide', 2, NULL, NULL, NULL, NULL, '2023-09-08 07:14:57', '2023-09-08 07:14:57', NULL),
(36, 10, 'パスワード再発行(入力ページ)', 'forgot', 'Forgot/index', 2, NULL, NULL, NULL, NULL, '2023-09-08 07:14:57', '2023-09-08 07:14:57', NULL),
(37, 10, 'パスワード再発行(完了ページ)', 'forgot_complete', 'Forgot/complete', 2, NULL, NULL, NULL, NULL, '2023-09-08 07:14:57', '2023-09-08 07:14:57', 'noindex'),
(38, 10, 'パスワード変更(完了ページ)', 'forgot_reset', 'Forgot/reset', 2, NULL, NULL, NULL, NULL, '2023-09-08 07:14:57', '2023-09-08 07:15:00', 'noindex'),
(39, 10, '商品購入/配送方法選択', 'shopping_delivery', 'Shopping/index', 2, NULL, NULL, NULL, NULL, '2023-09-08 07:14:58', '2023-09-08 07:14:58', 'noindex'),
(40, 10, '商品購入/支払方法選択', 'shopping_payment', 'Shopping/index', 2, NULL, NULL, NULL, NULL, '2023-09-08 07:14:58', '2023-09-08 07:14:58', 'noindex'),
(41, 10, '商品購入/お届け先変更', 'shopping_shipping_change', 'Shopping/index', 2, NULL, NULL, NULL, NULL, '2023-09-08 07:14:58', '2023-09-08 07:14:58', 'noindex'),
(42, 10, '商品購入/お届け先変更', 'shopping_shipping_edit_change', 'Shopping/index', 2, NULL, NULL, NULL, NULL, '2023-09-08 07:14:58', '2023-09-08 07:14:58', 'noindex'),
(43, 10, '商品購入/お届け先の複数指定', 'shopping_shipping_multiple_change', 'Shopping/index', 2, NULL, NULL, NULL, NULL, '2023-09-08 07:14:58', '2023-09-08 07:14:58', 'noindex'),
(44, 10, 'MYページ/お届け先編集', 'mypage_delivery_edit', 'Mypage/delivery_edit', 2, NULL, NULL, NULL, NULL, '2023-09-08 07:15:01', '2023-09-08 07:15:01', 'noindex');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `dtb_payment`
--

CREATE TABLE `dtb_payment` (
  `payment_id` int(11) NOT NULL,
  `creator_id` int(11) NOT NULL,
  `payment_method` longtext,
  `charge` decimal(10,0) DEFAULT NULL,
  `rule_max` decimal(10,0) DEFAULT NULL,
  `rank` int(11) DEFAULT NULL,
  `fix_flg` smallint(6) DEFAULT '1',
  `del_flg` smallint(6) NOT NULL DEFAULT '0',
  `create_date` datetime NOT NULL,
  `update_date` datetime NOT NULL,
  `payment_image` longtext,
  `charge_flg` smallint(6) DEFAULT '1',
  `rule_min` decimal(10,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `dtb_payment`
--

INSERT INTO `dtb_payment` (`payment_id`, `creator_id`, `payment_method`, `charge`, `rule_max`, `rank`, `fix_flg`, `del_flg`, `create_date`, `update_date`, `payment_image`, `charge_flg`, `rule_min`) VALUES
(1, 1, '郵便振替', '0', NULL, 4, 1, 0, '2023-09-08 14:14:46', '2023-09-08 14:14:46', NULL, 1, '0'),
(2, 1, '現金書留', '0', NULL, 3, 1, 0, '2023-09-08 14:14:46', '2023-09-08 14:14:46', NULL, 1, '0'),
(3, 1, '銀行振込', '0', NULL, 2, 1, 0, '2023-09-08 14:14:46', '2023-09-08 14:14:46', NULL, 1, '0'),
(4, 1, '代金引換', '0', NULL, 1, 1, 0, '2023-09-08 14:14:46', '2023-09-08 14:14:46', NULL, 1, '0');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `dtb_payment_option`
--

CREATE TABLE `dtb_payment_option` (
  `delivery_id` int(11) NOT NULL,
  `payment_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `dtb_payment_option`
--

INSERT INTO `dtb_payment_option` (`delivery_id`, `payment_id`) VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 4),
(2, 3);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `dtb_plugin`
--

CREATE TABLE `dtb_plugin` (
  `plugin_id` int(11) NOT NULL,
  `name` longtext NOT NULL,
  `code` longtext NOT NULL,
  `class_name` longtext NOT NULL,
  `plugin_enable` smallint(6) NOT NULL DEFAULT '0',
  `del_flg` smallint(6) NOT NULL DEFAULT '0',
  `version` varchar(255) NOT NULL,
  `source` longtext NOT NULL,
  `create_date` datetime NOT NULL,
  `update_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `dtb_plugin_event_handler`
--

CREATE TABLE `dtb_plugin_event_handler` (
  `id` int(11) NOT NULL,
  `plugin_id` int(11) NOT NULL,
  `event` varchar(255) NOT NULL,
  `priority` int(11) NOT NULL,
  `del_flg` smallint(6) NOT NULL DEFAULT '0',
  `handler` varchar(255) NOT NULL,
  `handler_type` varchar(255) NOT NULL,
  `create_date` datetime NOT NULL,
  `update_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `dtb_product`
--

CREATE TABLE `dtb_product` (
  `product_id` int(11) NOT NULL,
  `creator_id` int(11) NOT NULL,
  `status` smallint(6) DEFAULT NULL,
  `name` text NOT NULL,
  `note` text,
  `description_list` text,
  `description_detail` text,
  `search_word` text,
  `free_area` text,
  `del_flg` smallint(6) NOT NULL DEFAULT '0',
  `create_date` datetime NOT NULL,
  `update_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `dtb_product`
--

INSERT INTO `dtb_product` (`product_id`, `creator_id`, `status`, `name`, `note`, `description_list`, `description_detail`, `search_word`, `free_area`, `del_flg`, `create_date`, `update_date`) VALUES
(1, 1, 1, 'ディナーフォーク', NULL, NULL, 'セットで揃えたいディナー用のカトラリー。\n定番の銀製は、シルバー特有の美しい輝きと柔らかな曲線が特徴です。適度な重みと日本人の手に合いやすいサイズ感で長く愛用いただけます。\n最高級プラチナフォークは、贈り物としても人気です。', NULL, NULL, 0, '2023-09-08 14:14:46', '2023-09-08 14:14:46'),
(2, 1, 1, 'パーコレーター', NULL, NULL, '\nパーコレーターはコーヒーの粉をセットして直火にかけて抽出する器具です。\nアウトドアでも淹れたてのコーヒーをお楽しみいただけます。\nいまだけ、おいしい淹れ方の冊子つきです。', NULL, NULL, 0, '2023-09-08 14:14:46', '2023-09-08 14:14:46');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `dtb_product_category`
--

CREATE TABLE `dtb_product_category` (
  `product_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `rank` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `dtb_product_category`
--

INSERT INTO `dtb_product_category` (`product_id`, `category_id`, `rank`) VALUES
(1, 5, 1),
(1, 6, 1),
(2, 1, 1),
(2, 4, 1),
(2, 6, 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `dtb_product_class`
--

CREATE TABLE `dtb_product_class` (
  `product_class_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_type_id` smallint(6) NOT NULL,
  `class_category_id1` int(11) DEFAULT NULL,
  `class_category_id2` int(11) DEFAULT NULL,
  `delivery_date_id` int(11) DEFAULT NULL,
  `creator_id` int(11) NOT NULL,
  `product_code` longtext,
  `stock` decimal(10,0) DEFAULT NULL,
  `stock_unlimited` smallint(6) NOT NULL,
  `sale_limit` decimal(10,0) DEFAULT NULL,
  `price01` decimal(10,0) DEFAULT NULL,
  `price02` decimal(10,0) NOT NULL,
  `delivery_fee` decimal(10,0) DEFAULT NULL,
  `create_date` datetime NOT NULL,
  `update_date` datetime NOT NULL,
  `del_flg` smallint(6) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `dtb_product_class`
--

INSERT INTO `dtb_product_class` (`product_class_id`, `product_id`, `product_type_id`, `class_category_id1`, `class_category_id2`, `delivery_date_id`, `creator_id`, `product_code`, `stock`, `stock_unlimited`, `sale_limit`, `price01`, `price02`, `delivery_fee`, `create_date`, `update_date`, `del_flg`) VALUES
(0, 1, 1, NULL, NULL, NULL, 1, 'fork-01', NULL, 1, NULL, '115000', '110000', NULL, '2023-09-08 14:14:46', '2023-09-08 14:14:46', 1),
(1, 1, 1, 3, 6, NULL, 1, 'fork-01', NULL, 1, NULL, '115000', '110000', NULL, '2023-09-08 14:14:46', '2023-09-08 14:14:46', 0),
(2, 1, 1, 3, 5, NULL, 1, 'fork-02', NULL, 1, NULL, '95000', '93000', NULL, '2023-09-08 14:14:46', '2023-09-08 14:14:46', 0),
(3, 1, 1, 3, 4, NULL, 1, 'fork-03', NULL, 1, NULL, '75000', '74000', NULL, '2023-09-08 14:14:46', '2023-09-08 14:14:46', 0),
(4, 1, 1, 2, 6, NULL, 1, 'fork-04', NULL, 1, NULL, '95000', '93000', NULL, '2023-09-08 14:14:46', '2023-09-08 14:14:46', 0),
(5, 1, 1, 2, 5, NULL, 1, 'fork-05', NULL, 1, NULL, '50000', '49000', NULL, '2023-09-08 14:14:46', '2023-09-08 14:14:46', 0),
(6, 1, 1, 2, 4, NULL, 1, 'fork-06', NULL, 1, NULL, '35000', '34500', NULL, '2023-09-08 14:14:46', '2023-09-08 14:14:46', 0),
(7, 1, 1, 1, 6, NULL, 1, 'fork-07', NULL, 1, NULL, NULL, '18000', NULL, '2023-09-08 14:14:46', '2023-09-08 14:14:46', 0),
(8, 1, 1, 1, 5, NULL, 1, 'fork-08', NULL, 1, NULL, NULL, '13000', NULL, '2023-09-08 14:14:46', '2023-09-08 14:14:46', 0),
(9, 1, 1, 1, 4, NULL, 1, 'fork-09', NULL, 1, NULL, NULL, '5000', NULL, '2023-09-08 14:14:46', '2023-09-08 14:14:46', 0),
(10, 2, 1, NULL, NULL, NULL, 1, 'cafe-01', '100', 0, '5', '3000', '2800', NULL, '2023-09-08 14:14:46', '2023-09-08 14:14:46', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `dtb_product_image`
--

CREATE TABLE `dtb_product_image` (
  `product_image_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `creator_id` int(11) NOT NULL,
  `file_name` longtext NOT NULL,
  `rank` int(11) NOT NULL,
  `create_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `dtb_product_image`
--

INSERT INTO `dtb_product_image` (`product_image_id`, `product_id`, `creator_id`, `file_name`, `rank`, `create_date`) VALUES
(1, 1, 1, 'fork-1.jpg', 1, '2023-09-08 14:14:46'),
(2, 1, 1, 'fork-2.jpg', 2, '2023-09-08 14:14:46'),
(3, 1, 1, 'fork-3.jpg', 3, '2023-09-08 14:14:46'),
(4, 2, 1, 'cafe-1.jpg', 3, '2023-09-08 14:14:46'),
(5, 2, 1, 'cafe-2.jpg', 3, '2023-09-08 14:14:46'),
(6, 2, 1, 'cafe-3.jpg', 3, '2023-09-08 14:14:46');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `dtb_product_stock`
--

CREATE TABLE `dtb_product_stock` (
  `product_stock_id` int(11) NOT NULL,
  `product_class_id` int(11) DEFAULT NULL,
  `creator_id` int(11) NOT NULL,
  `stock` decimal(10,0) DEFAULT NULL,
  `create_date` datetime NOT NULL,
  `update_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `dtb_product_stock`
--

INSERT INTO `dtb_product_stock` (`product_stock_id`, `product_class_id`, `creator_id`, `stock`, `create_date`, `update_date`) VALUES
(1, 0, 1, NULL, '2023-09-08 14:14:46', '2023-09-08 14:14:46'),
(2, 1, 1, NULL, '2023-09-08 14:14:46', '2023-09-08 14:14:46'),
(3, 2, 1, NULL, '2023-09-08 14:14:46', '2023-09-08 14:14:46'),
(4, 3, 1, NULL, '2023-09-08 14:14:46', '2023-09-08 14:14:46'),
(5, 4, 1, NULL, '2023-09-08 14:14:46', '2023-09-08 14:14:46'),
(6, 5, 1, NULL, '2023-09-08 14:14:46', '2023-09-08 14:14:46'),
(7, 6, 1, NULL, '2023-09-08 14:14:46', '2023-09-08 14:14:46'),
(8, 7, 1, NULL, '2023-09-08 14:14:46', '2023-09-08 14:14:46'),
(9, 8, 1, NULL, '2023-09-08 14:14:46', '2023-09-08 14:14:46'),
(10, 9, 1, NULL, '2023-09-08 14:14:46', '2023-09-08 14:14:46'),
(11, 10, 1, '100', '2023-09-08 14:14:46', '2023-09-08 14:14:46');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `dtb_product_tag`
--

CREATE TABLE `dtb_product_tag` (
  `product_tag_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `tag` smallint(6) NOT NULL,
  `creator_id` int(11) NOT NULL,
  `create_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `dtb_shipment_item`
--

CREATE TABLE `dtb_shipment_item` (
  `item_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_class_id` int(11) NOT NULL,
  `shipping_id` int(11) NOT NULL,
  `product_name` longtext NOT NULL,
  `product_code` longtext,
  `class_name1` longtext,
  `class_name2` longtext,
  `class_category_name1` longtext,
  `class_category_name2` longtext,
  `price` decimal(10,0) DEFAULT NULL,
  `quantity` decimal(10,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `dtb_shipping`
--

CREATE TABLE `dtb_shipping` (
  `shipping_id` int(11) NOT NULL,
  `shipping_country_id` smallint(6) DEFAULT NULL,
  `shipping_pref` smallint(6) DEFAULT NULL,
  `order_id` int(11) DEFAULT NULL,
  `delivery_id` int(11) DEFAULT NULL,
  `time_id` int(11) DEFAULT NULL,
  `fee_id` int(11) DEFAULT NULL,
  `shipping_name01` longtext,
  `shipping_name02` longtext,
  `shipping_kana01` longtext,
  `shipping_kana02` longtext,
  `shipping_company_name` longtext,
  `shipping_tel01` longtext,
  `shipping_tel02` longtext,
  `shipping_tel03` longtext,
  `shipping_fax01` longtext,
  `shipping_fax02` longtext,
  `shipping_fax03` longtext,
  `shipping_zip01` longtext,
  `shipping_zip02` longtext,
  `shipping_zipcode` longtext,
  `shipping_addr01` longtext,
  `shipping_addr02` longtext,
  `shipping_delivery_name` longtext,
  `shipping_delivery_time` longtext,
  `shipping_delivery_date` datetime DEFAULT NULL,
  `shipping_delivery_fee` decimal(10,0) DEFAULT NULL,
  `shipping_commit_date` datetime DEFAULT NULL,
  `rank` int(11) DEFAULT NULL,
  `create_date` datetime NOT NULL,
  `update_date` datetime NOT NULL,
  `del_flg` smallint(6) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `dtb_tax_rule`
--

CREATE TABLE `dtb_tax_rule` (
  `tax_rule_id` int(11) NOT NULL,
  `product_class_id` int(11) DEFAULT NULL,
  `creator_id` int(11) NOT NULL,
  `country_id` smallint(6) DEFAULT NULL,
  `pref_id` smallint(6) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `calc_rule` smallint(6) DEFAULT NULL,
  `tax_rate` decimal(10,0) NOT NULL DEFAULT '8',
  `tax_adjust` decimal(10,0) NOT NULL DEFAULT '0',
  `apply_date` datetime NOT NULL,
  `del_flg` smallint(6) NOT NULL DEFAULT '0',
  `create_date` datetime NOT NULL,
  `update_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `dtb_tax_rule`
--

INSERT INTO `dtb_tax_rule` (`tax_rule_id`, `product_class_id`, `creator_id`, `country_id`, `pref_id`, `product_id`, `calc_rule`, `tax_rate`, `tax_adjust`, `apply_date`, `del_flg`, `create_date`, `update_date`) VALUES
(1, NULL, 1, NULL, NULL, NULL, 1, '8', '0', '2023-09-08 14:14:46', 0, '2023-09-08 14:14:46', '2023-09-08 14:14:46');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `dtb_template`
--

CREATE TABLE `dtb_template` (
  `template_id` int(11) NOT NULL,
  `device_type_id` smallint(6) DEFAULT NULL,
  `template_code` longtext NOT NULL,
  `template_name` longtext NOT NULL,
  `create_date` datetime NOT NULL,
  `update_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `dtb_template`
--

INSERT INTO `dtb_template` (`template_id`, `device_type_id`, `template_code`, `template_name`, `create_date`, `update_date`) VALUES
(1, 10, 'default', 'デフォルト', '2023-09-08 14:14:46', '2023-09-08 14:14:46'),
(2, 1, 'mobile', 'モバイル', '2023-09-08 14:14:46', '2023-09-08 14:14:46'),
(4, 2, 'sphone', 'スマートフォン', '2023-09-08 14:14:46', '2023-09-08 14:14:46');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `mtb_authority`
--

CREATE TABLE `mtb_authority` (
  `id` smallint(6) NOT NULL,
  `name` longtext,
  `rank` smallint(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `mtb_authority`
--

INSERT INTO `mtb_authority` (`id`, `name`, `rank`) VALUES
(0, 'システム管理者', 0),
(1, '店舗オーナー', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `mtb_country`
--

CREATE TABLE `mtb_country` (
  `id` smallint(6) NOT NULL,
  `name` longtext,
  `rank` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `mtb_country`
--

INSERT INTO `mtb_country` (`id`, `name`, `rank`) VALUES
(4, 'アフガニスタン', 4),
(8, 'アルバニア', 12),
(10, '南極', 149),
(12, 'アルジェリア', 9),
(16, 'アメリカ領サモア', 7),
(20, 'アンドラ', 17),
(24, 'アンゴラ', 15),
(28, 'アンティグア・バーブーダ', 16),
(31, 'アゼルバイジャン', 3),
(32, 'アルゼンチン', 10),
(36, 'オーストラリア', 39),
(40, 'オーストリア', 40),
(44, 'バハマ', 167),
(48, 'バーレーン', 161),
(50, 'バングラデシュ', 175),
(51, 'アルメニア', 13),
(52, 'バルバドス', 172),
(56, 'ベルギー', 201),
(60, 'バミューダ諸島|バミューダ', 169),
(64, 'ブータン', 181),
(68, 'ボリビア|ボリビア多民族国', 206),
(70, 'ボスニア・ヘルツェゴビナ', 203),
(72, 'ボツワナ', 204),
(74, 'ブーベ島', 182),
(76, 'ブラジル', 186),
(84, 'ベリーズ', 199),
(86, 'イギリス領インド洋地域', 20),
(90, 'ソロモン諸島', 121),
(92, 'イギリス領ヴァージン諸島', 21),
(96, 'ブルネイ|ブルネイ・ダルサラーム', 193),
(100, 'ブルガリア', 191),
(104, 'ミャンマー', 224),
(108, 'ブルンジ', 194),
(112, 'ベラルーシ', 198),
(116, 'カンボジア', 55),
(120, 'カメルーン', 53),
(124, 'カナダ', 51),
(132, 'カーボベルデ', 45),
(136, 'ケイマン諸島', 75),
(140, '中央アフリカ共和国', 130),
(144, 'スリランカ', 108),
(148, 'チャド', 129),
(152, 'チリ', 134),
(156, '中華人民共和国|中国', 131),
(158, '台湾', 125),
(162, 'クリスマス島 (オーストラリア)|クリスマス島', 71),
(166, 'ココス諸島|ココス（キーリング）諸島', 78),
(170, 'コロンビア', 81),
(174, 'コモロ', 80),
(175, 'マヨット', 214),
(178, 'コンゴ共和国', 82),
(180, 'コンゴ民主共和国', 83),
(184, 'クック諸島', 69),
(188, 'コスタリカ', 79),
(191, 'クロアチア', 74),
(192, 'キューバ', 60),
(196, 'キプロス', 59),
(203, 'チェコ', 128),
(204, 'ベナン', 196),
(208, 'デンマーク', 136),
(212, 'ドミニカ国', 141),
(214, 'ドミニカ共和国', 140),
(218, 'エクアドル', 33),
(222, 'エルサルバドル', 38),
(226, '赤道ギニア', 113),
(231, 'エチオピア', 36),
(232, 'エリトリア', 37),
(233, 'エストニア', 35),
(234, 'フェロー諸島', 184),
(238, 'フォークランド諸島|フォークランド（マルビナス）諸島', 185),
(239, 'サウスジョージア・サウスサンドウィッチ諸島', 85),
(242, 'フィジー', 178),
(246, 'フィンランド', 180),
(248, 'オーランド諸島', 41),
(250, 'フランス', 187),
(254, 'フランス領ギアナ', 188),
(258, 'フランス領ポリネシア', 189),
(260, 'フランス領南方・南極地域', 190),
(262, 'ジブチ', 94),
(266, 'ガボン', 52),
(268, 'グルジア', 72),
(270, 'ガンビア', 54),
(275, 'パレスチナ', 173),
(276, 'ドイツ', 137),
(288, 'ガーナ', 44),
(292, 'ジブラルタル', 95),
(296, 'キリバス', 63),
(300, 'ギリシャ', 62),
(304, 'グリーンランド', 70),
(308, 'グレナダ', 73),
(312, 'グアドループ', 66),
(316, 'グアム', 67),
(320, 'グアテマラ', 65),
(324, 'ギニア', 57),
(328, 'ガイアナ', 47),
(332, 'ハイチ', 162),
(334, 'ハード島とマクドナルド諸島', 160),
(336, 'バチカン|バチカン市国', 164),
(340, 'ホンジュラス', 209),
(344, '香港', 208),
(348, 'ハンガリー', 174),
(352, 'アイスランド', 1),
(356, 'インド', 26),
(360, 'インドネシア', 27),
(364, 'イラン|イラン・イスラム共和国', 25),
(368, 'イラク', 24),
(372, 'アイルランド', 2),
(376, 'イスラエル', 22),
(380, 'イタリア', 23),
(384, 'コートジボワール', 77),
(388, 'ジャマイカ', 97),
(392, '日本', 153),
(398, 'カザフスタン', 48),
(400, 'ヨルダン', 236),
(404, 'ケニア', 76),
(408, '朝鮮民主主義人民共和国', 133),
(410, '大韓民国', 124),
(414, 'クウェート', 68),
(417, 'キルギス', 64),
(418, 'ラオス|ラオス人民民主共和国', 237),
(422, 'レバノン', 247),
(426, 'レソト', 246),
(428, 'ラトビア', 238),
(430, 'リベリア', 242),
(434, 'リビア', 240),
(438, 'リヒテンシュタイン', 241),
(440, 'リトアニア', 239),
(442, 'ルクセンブルク', 244),
(446, 'マカオ', 211),
(450, 'マダガスカル', 213),
(454, 'マラウイ', 215),
(458, 'マレーシア', 219),
(462, 'モルディブ', 230),
(466, 'マリ共和国|マリ', 216),
(470, 'マルタ', 217),
(474, 'マルティニーク', 218),
(478, 'モーリタニア', 227),
(480, 'モーリシャス', 226),
(484, 'メキシコ', 225),
(492, 'モナコ', 229),
(496, 'モンゴル国|モンゴル', 233),
(498, 'モルドバ|モルドバ共和国', 231),
(499, 'モンテネグロ', 234),
(500, 'モントセラト', 235),
(504, 'モロッコ', 232),
(508, 'モザンビーク', 228),
(512, 'オマーン', 42),
(516, 'ナミビア', 148),
(520, 'ナウル', 147),
(524, 'ネパール', 157),
(528, 'オランダ', 43),
(531, 'キュラソー島|キュラソー', 61),
(533, 'アルバ', 11),
(534, 'シント・マールテン|シント・マールテン（オランダ領）', 100),
(535, 'BES諸島|ボネール、シント・ユースタティウスおよびサバ', 205),
(540, 'ニューカレドニア', 155),
(548, 'バヌアツ', 166),
(554, 'ニュージーランド', 156),
(558, 'ニカラグア', 151),
(562, 'ニジェール', 152),
(566, 'ナイジェリア', 146),
(570, 'ニウエ', 150),
(574, 'ノーフォーク島', 158),
(578, 'ノルウェー', 159),
(580, '北マリアナ諸島', 56),
(581, '合衆国領有小離島', 50),
(583, 'ミクロネシア連邦', 221),
(584, 'マーシャル諸島', 210),
(585, 'パラオ', 170),
(586, 'パキスタン', 163),
(591, 'パナマ', 165),
(598, 'パプアニューギニア', 168),
(600, 'パラグアイ', 171),
(604, 'ペルー', 200),
(608, 'フィリピン', 179),
(612, 'ピトケアン諸島|ピトケアン', 177),
(616, 'ポーランド', 202),
(620, 'ポルトガル', 207),
(624, 'ギニアビサウ', 58),
(626, '東ティモール', 176),
(630, 'プエルトリコ', 183),
(634, 'カタール', 49),
(638, 'レユニオン', 248),
(642, 'ルーマニア', 243),
(643, 'ロシア|ロシア連邦', 249),
(646, 'ルワンダ', 245),
(652, 'サン・バルテルミー島|サン・バルテルミー', 88),
(654, 'セントヘレナ・アセンションおよびトリスタンダクーニャ', 118),
(659, 'セントクリストファー・ネイビス', 116),
(660, 'アンギラ', 14),
(662, 'セントルシア', 119),
(663, 'サン・マルタン (西インド諸島)|サン・マルタン（フランス領）', 92),
(666, 'サンピエール島・ミクロン島', 90),
(670, 'セントビンセント・グレナディーン|セントビンセントおよびグレナディーン諸島', 117),
(674, 'サンマリノ', 91),
(678, 'サントメ・プリンシペ', 87),
(682, 'サウジアラビア', 84),
(686, 'セネガル', 114),
(688, 'セルビア', 115),
(690, 'セーシェル', 112),
(694, 'シエラレオネ', 93),
(702, 'シンガポール', 99),
(703, 'スロバキア', 109),
(704, 'ベトナム', 195),
(705, 'スロベニア', 110),
(706, 'ソマリア', 120),
(710, '南アフリカ共和国|南アフリカ', 222),
(716, 'ジンバブエ', 101),
(724, 'スペイン', 106),
(728, '南スーダン', 223),
(729, 'スーダン', 104),
(732, '西サハラ', 154),
(740, 'スリナム', 107),
(744, 'スヴァールバル諸島およびヤンマイエン島', 105),
(748, 'スワジランド', 111),
(752, 'スウェーデン', 103),
(756, 'スイス', 102),
(760, 'シリア|シリア・アラブ共和国', 98),
(762, 'タジキスタン', 126),
(764, 'タイ王国|タイ', 123),
(768, 'トーゴ', 138),
(772, 'トケラウ', 139),
(776, 'トンガ', 145),
(780, 'トリニダード・トバゴ', 142),
(784, 'アラブ首長国連邦', 8),
(788, 'チュニジア', 132),
(792, 'トルコ', 144),
(795, 'トルクメニスタン', 143),
(796, 'タークス・カイコス諸島', 122),
(798, 'ツバル', 135),
(800, 'ウガンダ', 29),
(804, 'ウクライナ', 30),
(807, 'マケドニア共和国|マケドニア旧ユーゴスラビア共和国', 212),
(818, 'エジプト', 34),
(826, 'イギリス', 19),
(831, 'ガーンジー', 46),
(832, 'ジャージー', 96),
(833, 'マン島', 220),
(834, 'タンザニア', 127),
(840, 'アメリカ合衆国', 5),
(850, 'アメリカ領ヴァージン諸島', 6),
(854, 'ブルキナファソ', 192),
(858, 'ウルグアイ', 32),
(860, 'ウズベキスタン', 31),
(862, 'ベネズエラ|ベネズエラ・ボリバル共和国', 197),
(876, 'ウォリス・フツナ', 28),
(882, 'サモア', 86),
(887, 'イエメン', 18),
(894, 'ザンビア', 89);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `mtb_csv_type`
--

CREATE TABLE `mtb_csv_type` (
  `id` smallint(6) NOT NULL,
  `name` longtext,
  `rank` smallint(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `mtb_csv_type`
--

INSERT INTO `mtb_csv_type` (`id`, `name`, `rank`) VALUES
(1, '商品CSV', 3),
(2, '会員CSV', 4),
(3, '受注CSV', 1),
(4, '配送CSV', 2),
(5, 'カテゴリCSV', 5);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `mtb_customer_order_status`
--

CREATE TABLE `mtb_customer_order_status` (
  `id` smallint(6) NOT NULL,
  `name` longtext,
  `rank` smallint(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `mtb_customer_order_status`
--

INSERT INTO `mtb_customer_order_status` (`id`, `name`, `rank`) VALUES
(1, '注文受付', 1),
(2, '入金待ち', 2),
(3, 'キャンセル', 4),
(4, '注文受付', 5),
(5, '発送済み', 6),
(6, '注文受付', 3),
(7, '注文未完了', 0),
(8, '注文未完了', 7);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `mtb_customer_status`
--

CREATE TABLE `mtb_customer_status` (
  `id` smallint(6) NOT NULL,
  `name` longtext,
  `rank` smallint(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `mtb_customer_status`
--

INSERT INTO `mtb_customer_status` (`id`, `name`, `rank`) VALUES
(1, '仮会員', 0),
(2, '本会員', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `mtb_db`
--

CREATE TABLE `mtb_db` (
  `id` smallint(6) NOT NULL,
  `name` longtext,
  `rank` smallint(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `mtb_db`
--

INSERT INTO `mtb_db` (`id`, `name`, `rank`) VALUES
(1, 'PostgreSQL', 0),
(2, 'MySQL', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `mtb_device_type`
--

CREATE TABLE `mtb_device_type` (
  `id` smallint(6) NOT NULL,
  `name` longtext,
  `rank` smallint(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `mtb_device_type`
--

INSERT INTO `mtb_device_type` (`id`, `name`, `rank`) VALUES
(1, 'モバイル', 0),
(2, 'スマートフォン', 1),
(10, 'PC', 2),
(99, '管理画面', 3);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `mtb_disp`
--

CREATE TABLE `mtb_disp` (
  `id` smallint(6) NOT NULL,
  `name` longtext,
  `rank` smallint(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `mtb_disp`
--

INSERT INTO `mtb_disp` (`id`, `name`, `rank`) VALUES
(1, '公開', 0),
(2, '非公開', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `mtb_job`
--

CREATE TABLE `mtb_job` (
  `id` smallint(6) NOT NULL,
  `name` longtext,
  `rank` smallint(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `mtb_job`
--

INSERT INTO `mtb_job` (`id`, `name`, `rank`) VALUES
(1, '公務員', 0),
(2, 'コンサルタント', 1),
(3, 'コンピューター関連技術職', 2),
(4, 'コンピューター関連以外の技術職', 3),
(5, '金融関係', 4),
(6, '医師', 5),
(7, '弁護士', 6),
(8, '総務・人事・事務', 7),
(9, '営業・販売', 8),
(10, '研究・開発', 9),
(11, '広報・宣伝', 10),
(12, '企画・マーケティング', 11),
(13, 'デザイン関係', 12),
(14, '会社経営・役員', 13),
(15, '出版・マスコミ関係', 14),
(16, '学生・フリーター', 15),
(17, '主婦', 16),
(18, 'その他', 17);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `mtb_order_status`
--

CREATE TABLE `mtb_order_status` (
  `id` smallint(6) NOT NULL,
  `name` longtext,
  `rank` smallint(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `mtb_order_status`
--

INSERT INTO `mtb_order_status` (`id`, `name`, `rank`) VALUES
(1, '新規受付', 1),
(2, '入金待ち', 2),
(3, 'キャンセル', 4),
(4, '取り寄せ中', 5),
(5, '発送済み', 6),
(6, '入金済み', 3),
(7, '決済処理中', 0),
(8, '購入処理中', 7);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `mtb_order_status_color`
--

CREATE TABLE `mtb_order_status_color` (
  `id` smallint(6) NOT NULL,
  `name` longtext,
  `rank` smallint(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `mtb_order_status_color`
--

INSERT INTO `mtb_order_status_color` (`id`, `name`, `rank`) VALUES
(1, '#FFFFFF', 0),
(2, '#FFDE9B', 1),
(3, '#C9C9C9', 2),
(4, '#FFD9D9', 3),
(5, '#BFDFFF', 4),
(6, '#FFFFAB', 5),
(7, '#FFCCCC', 6);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `mtb_page_max`
--

CREATE TABLE `mtb_page_max` (
  `id` smallint(6) NOT NULL,
  `name` longtext,
  `rank` smallint(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `mtb_page_max`
--

INSERT INTO `mtb_page_max` (`id`, `name`, `rank`) VALUES
(10, '10', 0),
(20, '20', 1),
(30, '30', 2),
(40, '40', 3),
(50, '50', 4),
(60, '60', 5),
(70, '70', 6),
(80, '80', 7),
(90, '90', 8),
(100, '100', 9);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `mtb_pref`
--

CREATE TABLE `mtb_pref` (
  `id` smallint(6) NOT NULL,
  `name` longtext,
  `rank` smallint(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `mtb_pref`
--

INSERT INTO `mtb_pref` (`id`, `name`, `rank`) VALUES
(1, '北海道', 1),
(2, '青森県', 2),
(3, '岩手県', 3),
(4, '宮城県', 4),
(5, '秋田県', 5),
(6, '山形県', 6),
(7, '福島県', 7),
(8, '茨城県', 8),
(9, '栃木県', 9),
(10, '群馬県', 10),
(11, '埼玉県', 11),
(12, '千葉県', 12),
(13, '東京都', 13),
(14, '神奈川県', 14),
(15, '新潟県', 15),
(16, '富山県', 16),
(17, '石川県', 17),
(18, '福井県', 18),
(19, '山梨県', 19),
(20, '長野県', 20),
(21, '岐阜県', 21),
(22, '静岡県', 22),
(23, '愛知県', 23),
(24, '三重県', 24),
(25, '滋賀県', 25),
(26, '京都府', 26),
(27, '大阪府', 27),
(28, '兵庫県', 28),
(29, '奈良県', 29),
(30, '和歌山県', 30),
(31, '鳥取県', 31),
(32, '島根県', 32),
(33, '岡山県', 33),
(34, '広島県', 34),
(35, '山口県', 35),
(36, '徳島県', 36),
(37, '香川県', 37),
(38, '愛媛県', 38),
(39, '高知県', 39),
(40, '福岡県', 40),
(41, '佐賀県', 41),
(42, '長崎県', 42),
(43, '熊本県', 43),
(44, '大分県', 44),
(45, '宮崎県', 45),
(46, '鹿児島県', 46),
(47, '沖縄県', 47);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `mtb_product_list_max`
--

CREATE TABLE `mtb_product_list_max` (
  `id` smallint(6) NOT NULL,
  `name` longtext,
  `rank` smallint(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `mtb_product_list_max`
--

INSERT INTO `mtb_product_list_max` (`id`, `name`, `rank`) VALUES
(15, '15件', 0),
(30, '30件', 1),
(50, '50件', 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `mtb_product_list_order_by`
--

CREATE TABLE `mtb_product_list_order_by` (
  `id` smallint(6) NOT NULL,
  `name` longtext,
  `rank` smallint(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `mtb_product_list_order_by`
--

INSERT INTO `mtb_product_list_order_by` (`id`, `name`, `rank`) VALUES
(1, '価格が低い順', 0),
(2, '新着順', 2),
(3, '価格が高い順', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `mtb_product_type`
--

CREATE TABLE `mtb_product_type` (
  `id` smallint(6) NOT NULL,
  `name` longtext,
  `rank` smallint(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `mtb_product_type`
--

INSERT INTO `mtb_product_type` (`id`, `name`, `rank`) VALUES
(1, '商品種別A', 0),
(2, '商品種別B', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `mtb_sex`
--

CREATE TABLE `mtb_sex` (
  `id` smallint(6) NOT NULL,
  `name` longtext,
  `rank` smallint(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `mtb_sex`
--

INSERT INTO `mtb_sex` (`id`, `name`, `rank`) VALUES
(1, '男性', 0),
(2, '女性', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `mtb_tag`
--

CREATE TABLE `mtb_tag` (
  `id` smallint(6) NOT NULL,
  `name` longtext NOT NULL,
  `rank` smallint(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `mtb_tag`
--

INSERT INTO `mtb_tag` (`id`, `name`, `rank`) VALUES
(1, '新商品', 1),
(2, 'おすすめ商品', 2),
(3, '限定品', 3);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `mtb_taxrule`
--

CREATE TABLE `mtb_taxrule` (
  `id` smallint(6) NOT NULL,
  `name` longtext,
  `rank` smallint(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `mtb_taxrule`
--

INSERT INTO `mtb_taxrule` (`id`, `name`, `rank`) VALUES
(1, '四捨五入', 0),
(2, '切り捨て', 1),
(3, '切り上げ', 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `mtb_work`
--

CREATE TABLE `mtb_work` (
  `id` smallint(6) NOT NULL,
  `name` longtext,
  `rank` smallint(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `mtb_work`
--

INSERT INTO `mtb_work` (`id`, `name`, `rank`) VALUES
(0, '非稼働', 0),
(1, '稼働', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `mtb_zip`
--

CREATE TABLE `mtb_zip` (
  `zip_id` int(11) NOT NULL,
  `zipcode` longtext,
  `state` longtext,
  `city` longtext,
  `town` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `doctrine_migration_versions`
--
ALTER TABLE `doctrine_migration_versions`
  ADD PRIMARY KEY (`version`);

--
-- Chỉ mục cho bảng `dtb_authority_role`
--
ALTER TABLE `dtb_authority_role`
  ADD PRIMARY KEY (`authority_role_id`),
  ADD KEY `IDX_4A1F70B181EC865B` (`authority_id`),
  ADD KEY `IDX_4A1F70B161220EA6` (`creator_id`);

--
-- Chỉ mục cho bảng `dtb_base_info`
--
ALTER TABLE `dtb_base_info`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_1D3655F4F92F3E70` (`country_id`),
  ADD KEY `IDX_1D3655F4A1559831` (`pref`);

--
-- Chỉ mục cho bảng `dtb_block`
--
ALTER TABLE `dtb_block`
  ADD PRIMARY KEY (`block_id`),
  ADD UNIQUE KEY `device_type_id` (`device_type_id`,`file_name`),
  ADD KEY `IDX_6B54DCBD4FFA550E` (`device_type_id`);

--
-- Chỉ mục cho bảng `dtb_block_position`
--
ALTER TABLE `dtb_block_position`
  ADD PRIMARY KEY (`page_id`,`target_id`,`block_id`),
  ADD KEY `IDX_35DCD731E9ED820C` (`block_id`),
  ADD KEY `IDX_35DCD731C4663E4` (`page_id`);

--
-- Chỉ mục cho bảng `dtb_category`
--
ALTER TABLE `dtb_category`
  ADD PRIMARY KEY (`category_id`),
  ADD KEY `IDX_5ED2C2B796A8F92` (`parent_category_id`),
  ADD KEY `IDX_5ED2C2B61220EA6` (`creator_id`);

--
-- Chỉ mục cho bảng `dtb_category_count`
--
ALTER TABLE `dtb_category_count`
  ADD PRIMARY KEY (`category_id`);

--
-- Chỉ mục cho bảng `dtb_category_total_count`
--
ALTER TABLE `dtb_category_total_count`
  ADD PRIMARY KEY (`category_id`);

--
-- Chỉ mục cho bảng `dtb_class_category`
--
ALTER TABLE `dtb_class_category`
  ADD PRIMARY KEY (`class_category_id`),
  ADD KEY `IDX_9B0D1DBAB462FB2A` (`class_name_id`),
  ADD KEY `IDX_9B0D1DBA61220EA6` (`creator_id`);

--
-- Chỉ mục cho bảng `dtb_class_name`
--
ALTER TABLE `dtb_class_name`
  ADD PRIMARY KEY (`class_name_id`),
  ADD KEY `IDX_187C95AD61220EA6` (`creator_id`);

--
-- Chỉ mục cho bảng `dtb_csv`
--
ALTER TABLE `dtb_csv`
  ADD PRIMARY KEY (`csv_id`),
  ADD KEY `IDX_F55F48C32C648C74` (`csv_type`),
  ADD KEY `IDX_F55F48C361220EA6` (`creator_id`);

--
-- Chỉ mục cho bảng `dtb_customer`
--
ALTER TABLE `dtb_customer`
  ADD PRIMARY KEY (`customer_id`),
  ADD UNIQUE KEY `secret_key` (`secret_key`),
  ADD KEY `IDX_8298BBE37B00651C` (`status`),
  ADD KEY `IDX_8298BBE3EFA269F7` (`sex`),
  ADD KEY `IDX_8298BBE3FBD8E0F8` (`job`),
  ADD KEY `IDX_8298BBE3F92F3E70` (`country_id`),
  ADD KEY `IDX_8298BBE3A1559831` (`pref`),
  ADD KEY `dtb_customer_create_date_idx` (`create_date`),
  ADD KEY `dtb_customer_update_date_idx` (`update_date`),
  ADD KEY `dtb_customer_last_buy_date_idx` (`last_buy_date`),
  ADD KEY `dtb_customer_buy_times_idx` (`buy_times`),
  ADD KEY `dtb_customer_buy_total_idx` (`buy_total`),
  ADD KEY `dtb_customer_email_idx` (`email`(191));

--
-- Chỉ mục cho bảng `dtb_customer_address`
--
ALTER TABLE `dtb_customer_address`
  ADD PRIMARY KEY (`customer_address_id`),
  ADD KEY `IDX_6C38C0F89395C3F3` (`customer_id`),
  ADD KEY `IDX_6C38C0F8F92F3E70` (`country_id`),
  ADD KEY `IDX_6C38C0F8A1559831` (`pref`);

--
-- Chỉ mục cho bảng `dtb_customer_favorite_product`
--
ALTER TABLE `dtb_customer_favorite_product`
  ADD PRIMARY KEY (`favorite_id`),
  ADD KEY `IDX_ED6313839395C3F3` (`customer_id`),
  ADD KEY `IDX_ED6313834584665A` (`product_id`);

--
-- Chỉ mục cho bảng `dtb_delivery`
--
ALTER TABLE `dtb_delivery`
  ADD PRIMARY KEY (`delivery_id`),
  ADD KEY `IDX_3420D9FA61220EA6` (`creator_id`),
  ADD KEY `IDX_3420D9FA14959723` (`product_type_id`);

--
-- Chỉ mục cho bảng `dtb_delivery_date`
--
ALTER TABLE `dtb_delivery_date`
  ADD PRIMARY KEY (`date_id`);

--
-- Chỉ mục cho bảng `dtb_delivery_fee`
--
ALTER TABLE `dtb_delivery_fee`
  ADD PRIMARY KEY (`fee_id`),
  ADD KEY `IDX_491552412136921` (`delivery_id`),
  ADD KEY `IDX_4915524A1559831` (`pref`);

--
-- Chỉ mục cho bảng `dtb_delivery_time`
--
ALTER TABLE `dtb_delivery_time`
  ADD PRIMARY KEY (`time_id`),
  ADD KEY `IDX_E80EE3A612136921` (`delivery_id`);

--
-- Chỉ mục cho bảng `dtb_help`
--
ALTER TABLE `dtb_help`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_FF18F0EB5C77387` (`law_country_id`),
  ADD KEY `IDX_FF18F0EBE3D20F82` (`law_pref`);

--
-- Chỉ mục cho bảng `dtb_mail_history`
--
ALTER TABLE `dtb_mail_history`
  ADD PRIMARY KEY (`send_id`),
  ADD KEY `IDX_4870AB118D9F6D38` (`order_id`),
  ADD KEY `IDX_4870AB115DA0FB8` (`template_id`),
  ADD KEY `IDX_4870AB1161220EA6` (`creator_id`);

--
-- Chỉ mục cho bảng `dtb_mail_template`
--
ALTER TABLE `dtb_mail_template`
  ADD PRIMARY KEY (`template_id`),
  ADD KEY `IDX_1CB16DB261220EA6` (`creator_id`);

--
-- Chỉ mục cho bảng `dtb_member`
--
ALTER TABLE `dtb_member`
  ADD PRIMARY KEY (`member_id`),
  ADD KEY `IDX_10BC3BE6534E6880` (`work`),
  ADD KEY `IDX_10BC3BE64AF96AFC` (`authority`),
  ADD KEY `IDX_10BC3BE661220EA6` (`creator_id`);

--
-- Chỉ mục cho bảng `dtb_news`
--
ALTER TABLE `dtb_news`
  ADD PRIMARY KEY (`news_id`),
  ADD KEY `IDX_EA4C351761220EA6` (`creator_id`);

--
-- Chỉ mục cho bảng `dtb_order`
--
ALTER TABLE `dtb_order`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `IDX_1D66D8079395C3F3` (`customer_id`),
  ADD KEY `IDX_1D66D8074AF5C325` (`order_country_id`),
  ADD KEY `IDX_1D66D807ECA4A226` (`order_pref`),
  ADD KEY `IDX_1D66D807ACF92697` (`order_sex`),
  ADD KEY `IDX_1D66D807B883AF98` (`order_job`),
  ADD KEY `IDX_1D66D8074C3A3BB` (`payment_id`),
  ADD KEY `IDX_1D66D8074FFA550E` (`device_type_id`),
  ADD KEY `IDX_1D66D8077B00651C` (`status`),
  ADD KEY `dtb_order_order_date_idx` (`order_date`),
  ADD KEY `dtb_order_payment_date_idx` (`payment_date`),
  ADD KEY `dtb_order_commit_date_idx` (`commit_date`),
  ADD KEY `dtb_order_update_date_idx` (`update_date`),
  ADD KEY `dtb_order_pre_order_id_idx` (`pre_order_id`(40)),
  ADD KEY `dtb_order_order_email_idx` (`order_email`(191));

--
-- Chỉ mục cho bảng `dtb_order_detail`
--
ALTER TABLE `dtb_order_detail`
  ADD PRIMARY KEY (`order_detail_id`),
  ADD KEY `IDX_58FE35738D9F6D38` (`order_id`),
  ADD KEY `IDX_58FE357321B06187` (`product_class_id`),
  ADD KEY `dtb_order_detail_product_id_key` (`product_id`);

--
-- Chỉ mục cho bảng `dtb_page_layout`
--
ALTER TABLE `dtb_page_layout`
  ADD PRIMARY KEY (`page_id`),
  ADD KEY `IDX_F27999414FFA550E` (`device_type_id`),
  ADD KEY `dtb_page_layout_url_idx` (`url`(128));

--
-- Chỉ mục cho bảng `dtb_payment`
--
ALTER TABLE `dtb_payment`
  ADD PRIMARY KEY (`payment_id`),
  ADD KEY `IDX_7AFF628F61220EA6` (`creator_id`);

--
-- Chỉ mục cho bảng `dtb_payment_option`
--
ALTER TABLE `dtb_payment_option`
  ADD PRIMARY KEY (`delivery_id`,`payment_id`),
  ADD KEY `IDX_5631540D12136921` (`delivery_id`),
  ADD KEY `IDX_5631540D4C3A3BB` (`payment_id`);

--
-- Chỉ mục cho bảng `dtb_plugin`
--
ALTER TABLE `dtb_plugin`
  ADD PRIMARY KEY (`plugin_id`);

--
-- Chỉ mục cho bảng `dtb_plugin_event_handler`
--
ALTER TABLE `dtb_plugin_event_handler`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_92639EBDEC942BCF` (`plugin_id`);

--
-- Chỉ mục cho bảng `dtb_product`
--
ALTER TABLE `dtb_product`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `IDX_C49DE22F61220EA6` (`creator_id`),
  ADD KEY `IDX_C49DE22F7B00651C` (`status`);

--
-- Chỉ mục cho bảng `dtb_product_category`
--
ALTER TABLE `dtb_product_category`
  ADD PRIMARY KEY (`product_id`,`category_id`),
  ADD KEY `IDX_B05778914584665A` (`product_id`),
  ADD KEY `IDX_B057789112469DE2` (`category_id`);

--
-- Chỉ mục cho bảng `dtb_product_class`
--
ALTER TABLE `dtb_product_class`
  ADD PRIMARY KEY (`product_class_id`),
  ADD KEY `IDX_1A11D1BA4584665A` (`product_id`),
  ADD KEY `IDX_1A11D1BA14959723` (`product_type_id`),
  ADD KEY `IDX_1A11D1BA248D128` (`class_category_id1`),
  ADD KEY `IDX_1A11D1BA9B418092` (`class_category_id2`),
  ADD KEY `IDX_1A11D1BAB28989B5` (`delivery_date_id`),
  ADD KEY `IDX_1A11D1BA61220EA6` (`creator_id`),
  ADD KEY `dtb_product_class_price02_idx` (`price02`),
  ADD KEY `dtb_product_class_stock_stock_unlimited_idx` (`stock`,`stock_unlimited`);

--
-- Chỉ mục cho bảng `dtb_product_image`
--
ALTER TABLE `dtb_product_image`
  ADD PRIMARY KEY (`product_image_id`),
  ADD KEY `IDX_3267CC7A4584665A` (`product_id`),
  ADD KEY `IDX_3267CC7A61220EA6` (`creator_id`);

--
-- Chỉ mục cho bảng `dtb_product_stock`
--
ALTER TABLE `dtb_product_stock`
  ADD PRIMARY KEY (`product_stock_id`),
  ADD UNIQUE KEY `UNIQ_BC6C9E4521B06187` (`product_class_id`),
  ADD KEY `IDX_BC6C9E4561220EA6` (`creator_id`);

--
-- Chỉ mục cho bảng `dtb_product_tag`
--
ALTER TABLE `dtb_product_tag`
  ADD PRIMARY KEY (`product_tag_id`),
  ADD KEY `IDX_4433E7214584665A` (`product_id`),
  ADD KEY `IDX_4433E721389B783` (`tag`),
  ADD KEY `IDX_4433E72161220EA6` (`creator_id`);

--
-- Chỉ mục cho bảng `dtb_shipment_item`
--
ALTER TABLE `dtb_shipment_item`
  ADD PRIMARY KEY (`item_id`),
  ADD KEY `IDX_57C3C0398D9F6D38` (`order_id`),
  ADD KEY `IDX_57C3C0394584665A` (`product_id`),
  ADD KEY `IDX_57C3C03921B06187` (`product_class_id`),
  ADD KEY `IDX_57C3C0394887F3F8` (`shipping_id`);

--
-- Chỉ mục cho bảng `dtb_shipping`
--
ALTER TABLE `dtb_shipping`
  ADD PRIMARY KEY (`shipping_id`),
  ADD KEY `IDX_2EBD22CE41D46E2E` (`shipping_country_id`),
  ADD KEY `IDX_2EBD22CE30E90E33` (`shipping_pref`),
  ADD KEY `IDX_2EBD22CE8D9F6D38` (`order_id`),
  ADD KEY `IDX_2EBD22CE12136921` (`delivery_id`),
  ADD KEY `IDX_2EBD22CE5EEADD3B` (`time_id`),
  ADD KEY `IDX_2EBD22CEAB45AECA` (`fee_id`);

--
-- Chỉ mục cho bảng `dtb_tax_rule`
--
ALTER TABLE `dtb_tax_rule`
  ADD PRIMARY KEY (`tax_rule_id`),
  ADD UNIQUE KEY `UNIQ_59F696DE21B06187` (`product_class_id`),
  ADD KEY `IDX_59F696DE61220EA6` (`creator_id`),
  ADD KEY `IDX_59F696DEF92F3E70` (`country_id`),
  ADD KEY `IDX_59F696DEE171EF5F` (`pref_id`),
  ADD KEY `IDX_59F696DE4584665A` (`product_id`),
  ADD KEY `IDX_59F696DE800F7945` (`calc_rule`);

--
-- Chỉ mục cho bảng `dtb_template`
--
ALTER TABLE `dtb_template`
  ADD PRIMARY KEY (`template_id`),
  ADD KEY `IDX_94C12A694FFA550E` (`device_type_id`);

--
-- Chỉ mục cho bảng `mtb_authority`
--
ALTER TABLE `mtb_authority`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `mtb_country`
--
ALTER TABLE `mtb_country`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `mtb_csv_type`
--
ALTER TABLE `mtb_csv_type`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `mtb_customer_order_status`
--
ALTER TABLE `mtb_customer_order_status`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `mtb_customer_status`
--
ALTER TABLE `mtb_customer_status`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `mtb_db`
--
ALTER TABLE `mtb_db`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `mtb_device_type`
--
ALTER TABLE `mtb_device_type`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `mtb_disp`
--
ALTER TABLE `mtb_disp`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `mtb_job`
--
ALTER TABLE `mtb_job`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `mtb_order_status`
--
ALTER TABLE `mtb_order_status`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `mtb_order_status_color`
--
ALTER TABLE `mtb_order_status_color`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `mtb_page_max`
--
ALTER TABLE `mtb_page_max`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `mtb_pref`
--
ALTER TABLE `mtb_pref`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `mtb_product_list_max`
--
ALTER TABLE `mtb_product_list_max`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `mtb_product_list_order_by`
--
ALTER TABLE `mtb_product_list_order_by`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `mtb_product_type`
--
ALTER TABLE `mtb_product_type`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `mtb_sex`
--
ALTER TABLE `mtb_sex`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `mtb_tag`
--
ALTER TABLE `mtb_tag`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `mtb_taxrule`
--
ALTER TABLE `mtb_taxrule`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `mtb_work`
--
ALTER TABLE `mtb_work`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `mtb_zip`
--
ALTER TABLE `mtb_zip`
  ADD PRIMARY KEY (`zip_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `dtb_authority_role`
--
ALTER TABLE `dtb_authority_role`
  MODIFY `authority_role_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `dtb_base_info`
--
ALTER TABLE `dtb_base_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `dtb_block`
--
ALTER TABLE `dtb_block`
  MODIFY `block_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `dtb_category`
--
ALTER TABLE `dtb_category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `dtb_category_count`
--
ALTER TABLE `dtb_category_count`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `dtb_category_total_count`
--
ALTER TABLE `dtb_category_total_count`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `dtb_class_category`
--
ALTER TABLE `dtb_class_category`
  MODIFY `class_category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `dtb_class_name`
--
ALTER TABLE `dtb_class_name`
  MODIFY `class_name_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `dtb_csv`
--
ALTER TABLE `dtb_csv`
  MODIFY `csv_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=196;

--
-- AUTO_INCREMENT cho bảng `dtb_customer`
--
ALTER TABLE `dtb_customer`
  MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `dtb_customer_address`
--
ALTER TABLE `dtb_customer_address`
  MODIFY `customer_address_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `dtb_customer_favorite_product`
--
ALTER TABLE `dtb_customer_favorite_product`
  MODIFY `favorite_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `dtb_delivery`
--
ALTER TABLE `dtb_delivery`
  MODIFY `delivery_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `dtb_delivery_date`
--
ALTER TABLE `dtb_delivery_date`
  MODIFY `date_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `dtb_delivery_fee`
--
ALTER TABLE `dtb_delivery_fee`
  MODIFY `fee_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=95;

--
-- AUTO_INCREMENT cho bảng `dtb_delivery_time`
--
ALTER TABLE `dtb_delivery_time`
  MODIFY `time_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `dtb_help`
--
ALTER TABLE `dtb_help`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `dtb_mail_history`
--
ALTER TABLE `dtb_mail_history`
  MODIFY `send_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `dtb_mail_template`
--
ALTER TABLE `dtb_mail_template`
  MODIFY `template_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `dtb_member`
--
ALTER TABLE `dtb_member`
  MODIFY `member_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `dtb_news`
--
ALTER TABLE `dtb_news`
  MODIFY `news_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `dtb_order`
--
ALTER TABLE `dtb_order`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `dtb_order_detail`
--
ALTER TABLE `dtb_order_detail`
  MODIFY `order_detail_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `dtb_page_layout`
--
ALTER TABLE `dtb_page_layout`
  MODIFY `page_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT cho bảng `dtb_payment`
--
ALTER TABLE `dtb_payment`
  MODIFY `payment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `dtb_plugin`
--
ALTER TABLE `dtb_plugin`
  MODIFY `plugin_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `dtb_plugin_event_handler`
--
ALTER TABLE `dtb_plugin_event_handler`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `dtb_product`
--
ALTER TABLE `dtb_product`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `dtb_product_class`
--
ALTER TABLE `dtb_product_class`
  MODIFY `product_class_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `dtb_product_image`
--
ALTER TABLE `dtb_product_image`
  MODIFY `product_image_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `dtb_product_stock`
--
ALTER TABLE `dtb_product_stock`
  MODIFY `product_stock_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `dtb_product_tag`
--
ALTER TABLE `dtb_product_tag`
  MODIFY `product_tag_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `dtb_shipment_item`
--
ALTER TABLE `dtb_shipment_item`
  MODIFY `item_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `dtb_shipping`
--
ALTER TABLE `dtb_shipping`
  MODIFY `shipping_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `dtb_tax_rule`
--
ALTER TABLE `dtb_tax_rule`
  MODIFY `tax_rule_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `dtb_template`
--
ALTER TABLE `dtb_template`
  MODIFY `template_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `dtb_authority_role`
--
ALTER TABLE `dtb_authority_role`
  ADD CONSTRAINT `FK_4A1F70B161220EA6` FOREIGN KEY (`creator_id`) REFERENCES `dtb_member` (`member_id`),
  ADD CONSTRAINT `FK_4A1F70B181EC865B` FOREIGN KEY (`authority_id`) REFERENCES `mtb_authority` (`id`);

--
-- Các ràng buộc cho bảng `dtb_base_info`
--
ALTER TABLE `dtb_base_info`
  ADD CONSTRAINT `FK_1D3655F4A1559831` FOREIGN KEY (`pref`) REFERENCES `mtb_pref` (`id`),
  ADD CONSTRAINT `FK_1D3655F4F92F3E70` FOREIGN KEY (`country_id`) REFERENCES `mtb_country` (`id`);

--
-- Các ràng buộc cho bảng `dtb_block`
--
ALTER TABLE `dtb_block`
  ADD CONSTRAINT `FK_6B54DCBD4FFA550E` FOREIGN KEY (`device_type_id`) REFERENCES `mtb_device_type` (`id`);

--
-- Các ràng buộc cho bảng `dtb_block_position`
--
ALTER TABLE `dtb_block_position`
  ADD CONSTRAINT `FK_35DCD731C4663E4` FOREIGN KEY (`page_id`) REFERENCES `dtb_page_layout` (`page_id`),
  ADD CONSTRAINT `FK_35DCD731E9ED820C` FOREIGN KEY (`block_id`) REFERENCES `dtb_block` (`block_id`);

--
-- Các ràng buộc cho bảng `dtb_category`
--
ALTER TABLE `dtb_category`
  ADD CONSTRAINT `FK_5ED2C2B61220EA6` FOREIGN KEY (`creator_id`) REFERENCES `dtb_member` (`member_id`),
  ADD CONSTRAINT `FK_5ED2C2B796A8F92` FOREIGN KEY (`parent_category_id`) REFERENCES `dtb_category` (`category_id`);

--
-- Các ràng buộc cho bảng `dtb_class_category`
--
ALTER TABLE `dtb_class_category`
  ADD CONSTRAINT `FK_9B0D1DBA61220EA6` FOREIGN KEY (`creator_id`) REFERENCES `dtb_member` (`member_id`),
  ADD CONSTRAINT `FK_9B0D1DBAB462FB2A` FOREIGN KEY (`class_name_id`) REFERENCES `dtb_class_name` (`class_name_id`);

--
-- Các ràng buộc cho bảng `dtb_class_name`
--
ALTER TABLE `dtb_class_name`
  ADD CONSTRAINT `FK_187C95AD61220EA6` FOREIGN KEY (`creator_id`) REFERENCES `dtb_member` (`member_id`);

--
-- Các ràng buộc cho bảng `dtb_csv`
--
ALTER TABLE `dtb_csv`
  ADD CONSTRAINT `FK_F55F48C32C648C74` FOREIGN KEY (`csv_type`) REFERENCES `mtb_csv_type` (`id`),
  ADD CONSTRAINT `FK_F55F48C361220EA6` FOREIGN KEY (`creator_id`) REFERENCES `dtb_member` (`member_id`);

--
-- Các ràng buộc cho bảng `dtb_customer`
--
ALTER TABLE `dtb_customer`
  ADD CONSTRAINT `FK_8298BBE37B00651C` FOREIGN KEY (`status`) REFERENCES `mtb_customer_status` (`id`),
  ADD CONSTRAINT `FK_8298BBE3A1559831` FOREIGN KEY (`pref`) REFERENCES `mtb_pref` (`id`),
  ADD CONSTRAINT `FK_8298BBE3EFA269F7` FOREIGN KEY (`sex`) REFERENCES `mtb_sex` (`id`),
  ADD CONSTRAINT `FK_8298BBE3F92F3E70` FOREIGN KEY (`country_id`) REFERENCES `mtb_country` (`id`),
  ADD CONSTRAINT `FK_8298BBE3FBD8E0F8` FOREIGN KEY (`job`) REFERENCES `mtb_job` (`id`);

--
-- Các ràng buộc cho bảng `dtb_customer_address`
--
ALTER TABLE `dtb_customer_address`
  ADD CONSTRAINT `FK_6C38C0F89395C3F3` FOREIGN KEY (`customer_id`) REFERENCES `dtb_customer` (`customer_id`),
  ADD CONSTRAINT `FK_6C38C0F8A1559831` FOREIGN KEY (`pref`) REFERENCES `mtb_pref` (`id`),
  ADD CONSTRAINT `FK_6C38C0F8F92F3E70` FOREIGN KEY (`country_id`) REFERENCES `mtb_country` (`id`);

--
-- Các ràng buộc cho bảng `dtb_customer_favorite_product`
--
ALTER TABLE `dtb_customer_favorite_product`
  ADD CONSTRAINT `FK_ED6313834584665A` FOREIGN KEY (`product_id`) REFERENCES `dtb_product` (`product_id`),
  ADD CONSTRAINT `FK_ED6313839395C3F3` FOREIGN KEY (`customer_id`) REFERENCES `dtb_customer` (`customer_id`);

--
-- Các ràng buộc cho bảng `dtb_delivery`
--
ALTER TABLE `dtb_delivery`
  ADD CONSTRAINT `FK_3420D9FA14959723` FOREIGN KEY (`product_type_id`) REFERENCES `mtb_product_type` (`id`),
  ADD CONSTRAINT `FK_3420D9FA61220EA6` FOREIGN KEY (`creator_id`) REFERENCES `dtb_member` (`member_id`);

--
-- Các ràng buộc cho bảng `dtb_delivery_fee`
--
ALTER TABLE `dtb_delivery_fee`
  ADD CONSTRAINT `FK_491552412136921` FOREIGN KEY (`delivery_id`) REFERENCES `dtb_delivery` (`delivery_id`),
  ADD CONSTRAINT `FK_4915524A1559831` FOREIGN KEY (`pref`) REFERENCES `mtb_pref` (`id`);

--
-- Các ràng buộc cho bảng `dtb_delivery_time`
--
ALTER TABLE `dtb_delivery_time`
  ADD CONSTRAINT `FK_E80EE3A612136921` FOREIGN KEY (`delivery_id`) REFERENCES `dtb_delivery` (`delivery_id`);

--
-- Các ràng buộc cho bảng `dtb_help`
--
ALTER TABLE `dtb_help`
  ADD CONSTRAINT `FK_FF18F0EB5C77387` FOREIGN KEY (`law_country_id`) REFERENCES `mtb_country` (`id`),
  ADD CONSTRAINT `FK_FF18F0EBE3D20F82` FOREIGN KEY (`law_pref`) REFERENCES `mtb_pref` (`id`);

--
-- Các ràng buộc cho bảng `dtb_mail_history`
--
ALTER TABLE `dtb_mail_history`
  ADD CONSTRAINT `FK_4870AB115DA0FB8` FOREIGN KEY (`template_id`) REFERENCES `dtb_mail_template` (`template_id`),
  ADD CONSTRAINT `FK_4870AB1161220EA6` FOREIGN KEY (`creator_id`) REFERENCES `dtb_member` (`member_id`),
  ADD CONSTRAINT `FK_4870AB118D9F6D38` FOREIGN KEY (`order_id`) REFERENCES `dtb_order` (`order_id`);

--
-- Các ràng buộc cho bảng `dtb_mail_template`
--
ALTER TABLE `dtb_mail_template`
  ADD CONSTRAINT `FK_1CB16DB261220EA6` FOREIGN KEY (`creator_id`) REFERENCES `dtb_member` (`member_id`);

--
-- Các ràng buộc cho bảng `dtb_member`
--
ALTER TABLE `dtb_member`
  ADD CONSTRAINT `FK_10BC3BE64AF96AFC` FOREIGN KEY (`authority`) REFERENCES `mtb_authority` (`id`),
  ADD CONSTRAINT `FK_10BC3BE6534E6880` FOREIGN KEY (`work`) REFERENCES `mtb_work` (`id`),
  ADD CONSTRAINT `FK_10BC3BE661220EA6` FOREIGN KEY (`creator_id`) REFERENCES `dtb_member` (`member_id`);

--
-- Các ràng buộc cho bảng `dtb_news`
--
ALTER TABLE `dtb_news`
  ADD CONSTRAINT `FK_EA4C351761220EA6` FOREIGN KEY (`creator_id`) REFERENCES `dtb_member` (`member_id`);

--
-- Các ràng buộc cho bảng `dtb_order`
--
ALTER TABLE `dtb_order`
  ADD CONSTRAINT `FK_1D66D8074AF5C325` FOREIGN KEY (`order_country_id`) REFERENCES `mtb_country` (`id`),
  ADD CONSTRAINT `FK_1D66D8074C3A3BB` FOREIGN KEY (`payment_id`) REFERENCES `dtb_payment` (`payment_id`),
  ADD CONSTRAINT `FK_1D66D8074FFA550E` FOREIGN KEY (`device_type_id`) REFERENCES `mtb_device_type` (`id`),
  ADD CONSTRAINT `FK_1D66D8079395C3F3` FOREIGN KEY (`customer_id`) REFERENCES `dtb_customer` (`customer_id`),
  ADD CONSTRAINT `FK_1D66D807ACF92697` FOREIGN KEY (`order_sex`) REFERENCES `mtb_sex` (`id`),
  ADD CONSTRAINT `FK_1D66D807B883AF98` FOREIGN KEY (`order_job`) REFERENCES `mtb_job` (`id`),
  ADD CONSTRAINT `FK_1D66D807ECA4A226` FOREIGN KEY (`order_pref`) REFERENCES `mtb_pref` (`id`);

--
-- Các ràng buộc cho bảng `dtb_order_detail`
--
ALTER TABLE `dtb_order_detail`
  ADD CONSTRAINT `FK_58FE357321B06187` FOREIGN KEY (`product_class_id`) REFERENCES `dtb_product_class` (`product_class_id`),
  ADD CONSTRAINT `FK_58FE35734584665A` FOREIGN KEY (`product_id`) REFERENCES `dtb_product` (`product_id`),
  ADD CONSTRAINT `FK_58FE35738D9F6D38` FOREIGN KEY (`order_id`) REFERENCES `dtb_order` (`order_id`);

--
-- Các ràng buộc cho bảng `dtb_page_layout`
--
ALTER TABLE `dtb_page_layout`
  ADD CONSTRAINT `FK_F27999414FFA550E` FOREIGN KEY (`device_type_id`) REFERENCES `mtb_device_type` (`id`);

--
-- Các ràng buộc cho bảng `dtb_payment`
--
ALTER TABLE `dtb_payment`
  ADD CONSTRAINT `FK_7AFF628F61220EA6` FOREIGN KEY (`creator_id`) REFERENCES `dtb_member` (`member_id`);

--
-- Các ràng buộc cho bảng `dtb_payment_option`
--
ALTER TABLE `dtb_payment_option`
  ADD CONSTRAINT `FK_5631540D12136921` FOREIGN KEY (`delivery_id`) REFERENCES `dtb_delivery` (`delivery_id`),
  ADD CONSTRAINT `FK_5631540D4C3A3BB` FOREIGN KEY (`payment_id`) REFERENCES `dtb_payment` (`payment_id`);

--
-- Các ràng buộc cho bảng `dtb_plugin_event_handler`
--
ALTER TABLE `dtb_plugin_event_handler`
  ADD CONSTRAINT `FK_92639EBDEC942BCF` FOREIGN KEY (`plugin_id`) REFERENCES `dtb_plugin` (`plugin_id`);

--
-- Các ràng buộc cho bảng `dtb_product`
--
ALTER TABLE `dtb_product`
  ADD CONSTRAINT `FK_C49DE22F61220EA6` FOREIGN KEY (`creator_id`) REFERENCES `dtb_member` (`member_id`),
  ADD CONSTRAINT `FK_C49DE22F7B00651C` FOREIGN KEY (`status`) REFERENCES `mtb_disp` (`id`);

--
-- Các ràng buộc cho bảng `dtb_product_category`
--
ALTER TABLE `dtb_product_category`
  ADD CONSTRAINT `FK_B057789112469DE2` FOREIGN KEY (`category_id`) REFERENCES `dtb_category` (`category_id`),
  ADD CONSTRAINT `FK_B05778914584665A` FOREIGN KEY (`product_id`) REFERENCES `dtb_product` (`product_id`);

--
-- Các ràng buộc cho bảng `dtb_product_class`
--
ALTER TABLE `dtb_product_class`
  ADD CONSTRAINT `FK_1A11D1BA14959723` FOREIGN KEY (`product_type_id`) REFERENCES `mtb_product_type` (`id`),
  ADD CONSTRAINT `FK_1A11D1BA248D128` FOREIGN KEY (`class_category_id1`) REFERENCES `dtb_class_category` (`class_category_id`),
  ADD CONSTRAINT `FK_1A11D1BA4584665A` FOREIGN KEY (`product_id`) REFERENCES `dtb_product` (`product_id`),
  ADD CONSTRAINT `FK_1A11D1BA61220EA6` FOREIGN KEY (`creator_id`) REFERENCES `dtb_member` (`member_id`),
  ADD CONSTRAINT `FK_1A11D1BA9B418092` FOREIGN KEY (`class_category_id2`) REFERENCES `dtb_class_category` (`class_category_id`),
  ADD CONSTRAINT `FK_1A11D1BAB28989B5` FOREIGN KEY (`delivery_date_id`) REFERENCES `dtb_delivery_date` (`date_id`);

--
-- Các ràng buộc cho bảng `dtb_product_image`
--
ALTER TABLE `dtb_product_image`
  ADD CONSTRAINT `FK_3267CC7A4584665A` FOREIGN KEY (`product_id`) REFERENCES `dtb_product` (`product_id`),
  ADD CONSTRAINT `FK_3267CC7A61220EA6` FOREIGN KEY (`creator_id`) REFERENCES `dtb_member` (`member_id`);

--
-- Các ràng buộc cho bảng `dtb_product_stock`
--
ALTER TABLE `dtb_product_stock`
  ADD CONSTRAINT `FK_BC6C9E4521B06187` FOREIGN KEY (`product_class_id`) REFERENCES `dtb_product_class` (`product_class_id`),
  ADD CONSTRAINT `FK_BC6C9E4561220EA6` FOREIGN KEY (`creator_id`) REFERENCES `dtb_member` (`member_id`);

--
-- Các ràng buộc cho bảng `dtb_product_tag`
--
ALTER TABLE `dtb_product_tag`
  ADD CONSTRAINT `FK_4433E721389B783` FOREIGN KEY (`tag`) REFERENCES `mtb_tag` (`id`),
  ADD CONSTRAINT `FK_4433E7214584665A` FOREIGN KEY (`product_id`) REFERENCES `dtb_product` (`product_id`),
  ADD CONSTRAINT `FK_4433E72161220EA6` FOREIGN KEY (`creator_id`) REFERENCES `dtb_member` (`member_id`);

--
-- Các ràng buộc cho bảng `dtb_shipment_item`
--
ALTER TABLE `dtb_shipment_item`
  ADD CONSTRAINT `FK_57C3C03921B06187` FOREIGN KEY (`product_class_id`) REFERENCES `dtb_product_class` (`product_class_id`),
  ADD CONSTRAINT `FK_57C3C0394584665A` FOREIGN KEY (`product_id`) REFERENCES `dtb_product` (`product_id`),
  ADD CONSTRAINT `FK_57C3C0394887F3F8` FOREIGN KEY (`shipping_id`) REFERENCES `dtb_shipping` (`shipping_id`),
  ADD CONSTRAINT `FK_57C3C0398D9F6D38` FOREIGN KEY (`order_id`) REFERENCES `dtb_order` (`order_id`);

--
-- Các ràng buộc cho bảng `dtb_shipping`
--
ALTER TABLE `dtb_shipping`
  ADD CONSTRAINT `FK_2EBD22CE12136921` FOREIGN KEY (`delivery_id`) REFERENCES `dtb_delivery` (`delivery_id`),
  ADD CONSTRAINT `FK_2EBD22CE30E90E33` FOREIGN KEY (`shipping_pref`) REFERENCES `mtb_pref` (`id`),
  ADD CONSTRAINT `FK_2EBD22CE41D46E2E` FOREIGN KEY (`shipping_country_id`) REFERENCES `mtb_country` (`id`),
  ADD CONSTRAINT `FK_2EBD22CE5EEADD3B` FOREIGN KEY (`time_id`) REFERENCES `dtb_delivery_time` (`time_id`),
  ADD CONSTRAINT `FK_2EBD22CE8D9F6D38` FOREIGN KEY (`order_id`) REFERENCES `dtb_order` (`order_id`),
  ADD CONSTRAINT `FK_2EBD22CEAB45AECA` FOREIGN KEY (`fee_id`) REFERENCES `dtb_delivery_fee` (`fee_id`);

--
-- Các ràng buộc cho bảng `dtb_tax_rule`
--
ALTER TABLE `dtb_tax_rule`
  ADD CONSTRAINT `FK_59F696DE21B06187` FOREIGN KEY (`product_class_id`) REFERENCES `dtb_product_class` (`product_class_id`),
  ADD CONSTRAINT `FK_59F696DE4584665A` FOREIGN KEY (`product_id`) REFERENCES `dtb_product` (`product_id`),
  ADD CONSTRAINT `FK_59F696DE61220EA6` FOREIGN KEY (`creator_id`) REFERENCES `dtb_member` (`member_id`),
  ADD CONSTRAINT `FK_59F696DE800F7945` FOREIGN KEY (`calc_rule`) REFERENCES `mtb_taxrule` (`id`),
  ADD CONSTRAINT `FK_59F696DEE171EF5F` FOREIGN KEY (`pref_id`) REFERENCES `mtb_pref` (`id`),
  ADD CONSTRAINT `FK_59F696DEF92F3E70` FOREIGN KEY (`country_id`) REFERENCES `mtb_country` (`id`);

--
-- Các ràng buộc cho bảng `dtb_template`
--
ALTER TABLE `dtb_template`
  ADD CONSTRAINT `FK_94C12A694FFA550E` FOREIGN KEY (`device_type_id`) REFERENCES `mtb_device_type` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
