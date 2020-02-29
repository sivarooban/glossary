-- phpMyAdmin SQL Dump
-- version 4.8.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 29, 2020 at 09:25 PM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `glossary_data`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `category_id` int(11) NOT NULL,
  `category_image` varchar(40) NOT NULL,
  `category_name` varchar(250) NOT NULL,
  `category_code` varchar(50) NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `modified` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `cat_status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`category_id`, `category_image`, `category_name`, `category_code`, `created`, `modified`, `cat_status`) VALUES
(15, 'product/download.jpg', 'LENTILS AND BEANS', '100', '2020-02-19 20:44:28', '0000-00-00 00:00:00', 1),
(16, 'product/maharastra.jpg', 'SPICES & MASALAS', '200', '2020-02-19 20:44:39', '0000-00-00 00:00:00', 1),
(17, 'product/flour.jpg', 'FLOUR', '300', '2020-02-19 20:44:46', '0000-00-00 00:00:00', 1),
(18, 'product/nut.jpg', 'DRIED FRUITS & NUTS', '400', '2020-02-19 20:44:51', '0000-00-00 00:00:00', 1),
(19, 'product/canned-food.jpg', 'CANNED FOODS', '600', '2020-02-19 20:44:57', '0000-00-00 00:00:00', 1),
(20, 'product/thumbnail/delish-u-rice-2-152907', 'RICE', '800', '2020-02-19 21:02:28', '0000-00-00 00:00:00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `ca_user`
--

CREATE TABLE `ca_user` (
  `user_id` int(11) NOT NULL,
  `user_username` char(100) NOT NULL,
  `user_password` varchar(255) NOT NULL,
  `real_password` varchar(500) NOT NULL,
  `user_firstname` char(100) NOT NULL,
  `user_lastname` char(100) NOT NULL,
  `user_email_id` varchar(255) DEFAULT NULL,
  `user_mobile_number` varchar(30) DEFAULT NULL,
  `user_phone_number` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ca_user`
--

INSERT INTO `ca_user` (`user_id`, `user_username`, `user_password`, `real_password`, `user_firstname`, `user_lastname`, `user_email_id`, `user_mobile_number`, `user_phone_number`) VALUES
(100, 'admin', 'admin', 'admin', '', '', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `customer_id` int(11) NOT NULL,
  `customer_name` varchar(250) NOT NULL,
  `email` varchar(250) NOT NULL,
  `phone` int(11) NOT NULL,
  `address` text NOT NULL,
  `city` text NOT NULL,
  `message` text NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `modified` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `customer_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`customer_id`, `customer_name`, `email`, `phone`, `address`, `city`, `message`, `created`, `modified`, `customer_status`) VALUES
(1, 'erer', 'praveenhertzon01@gmail.com', 2147483647, '26,Bharathidasan nagar, haridranathi west', 'mannargudi', 'rerr', '2020-02-02 05:53:27', '0000-00-00 00:00:00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `single_price` float NOT NULL,
  `description` text NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `modified` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `primary_ids` int(50) NOT NULL,
  `single_total` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_id`, `product_id`, `quantity`, `single_price`, `description`, `created`, `modified`, `primary_ids`, `single_total`) VALUES
(34, 58, 1, 44, '', '2020-02-29 19:13:10', '0000-00-00 00:00:00', 31, 44),
(35, 59, 1, 55, '', '2020-02-29 19:13:18', '0000-00-00 00:00:00', 31, 55);

-- --------------------------------------------------------

--
-- Table structure for table `order_address`
--

CREATE TABLE `order_address` (
  `id` int(50) NOT NULL,
  `email_address` varchar(50) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `house_no` varchar(50) NOT NULL,
  `street` varchar(50) NOT NULL,
  `postal_code` varchar(50) NOT NULL,
  `city` varchar(50) NOT NULL,
  `order_p_id` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order_address`
--

INSERT INTO `order_address` (`id`, `email_address`, `phone`, `first_name`, `last_name`, `house_no`, `street`, `postal_code`, `city`, `order_p_id`) VALUES
(11, 'mon@gmail.com', '45645654', 'siva', 'rooban', '33', 'test', '3', 'test', 31);

-- --------------------------------------------------------

--
-- Table structure for table `order_primarys`
--

CREATE TABLE `order_primarys` (
  `order_p` int(50) NOT NULL,
  `order_total` double NOT NULL,
  `user_id` int(50) NOT NULL,
  `cart_status` int(10) NOT NULL DEFAULT '0',
  `order_date` date NOT NULL,
  `delivery_status` int(50) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order_primarys`
--

INSERT INTO `order_primarys` (`order_p`, `order_total`, `user_id`, `cart_status`, `order_date`, `delivery_status`) VALUES
(31, 99, 9, 1, '2020-03-06', 1);

-- --------------------------------------------------------

--
-- Table structure for table `pincode`
--

CREATE TABLE `pincode` (
  `pincode_id` int(50) NOT NULL,
  `pincode` varchar(50) NOT NULL,
  `days` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pincode`
--

INSERT INTO `pincode` (`pincode_id`, `pincode`, `days`) VALUES
(3, '12', 'SATURDAY');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(11) NOT NULL,
  `product_name` varchar(512) NOT NULL,
  `product_code` varchar(250) NOT NULL,
  `product_img` varchar(250) NOT NULL,
  `description` text NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `created` datetime NOT NULL,
  `modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `product_status` int(11) NOT NULL DEFAULT '1',
  `category_id` int(11) NOT NULL,
  `sub_category_id` int(11) NOT NULL,
  `availability` text NOT NULL,
  `featured` int(10) NOT NULL,
  `text_area` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COMMENT='products that can be added to cart';

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `product_name`, `product_code`, `product_img`, `description`, `price`, `created`, `modified`, `product_status`, `category_id`, `sub_category_id`, `availability`, `featured`, `text_area`) VALUES
(55, 'Roasted Gram dhall', '333', 'product/rosted.jpg', 'sdf', '33.00', '2020-02-20 00:00:00', '2020-02-20 17:10:33', 1, 15, 0, 'sdf', 0, ''),
(56, 'Chilli powder', '555', 'product/chiid.jpg', 'test', '55.00', '2020-02-20 00:00:00', '2020-02-20 17:12:46', 1, 16, 0, 'test', 0, ''),
(57, 'Turmaric Powder', '444', 'product/turmeric.jpg', 'dsfdsf', '44.00', '2020-02-20 00:00:00', '2020-02-20 17:14:33', 1, 16, 0, 'sdf', 0, ''),
(58, 'Corriyander powder', '444', 'product/correndia.jpg', '', '44.00', '2020-02-20 00:00:00', '2020-02-20 17:16:11', 0, 16, 0, '', 0, ''),
(59, 'Sambar Powder', '555', 'product/sambar.jpg', 'sdf', '55.00', '2020-02-20 00:00:00', '2020-02-20 17:17:31', 1, 16, 0, 'sdfdf', 0, ''),
(60, 'Jeera Powder', '55', 'product/jeera-powder-500x500.jpg', '', '55.00', '2020-02-20 00:00:00', '2020-02-20 17:18:38', 1, 16, 0, '', 0, ''),
(54, 'Urid Dhall', '555', 'product/urad-dal-500gm-500x500.png', 'dsfsdf', '22.00', '2020-02-20 00:00:00', '2020-02-20 17:09:49', 1, 15, 0, 'dsfsdf', 0, ''),
(53, 'Chana Dhall', '450', 'product/chinadhall.jpg', 'sample', '20.00', '2020-02-20 00:00:00', '2020-02-20 17:07:40', 1, 15, 0, 'sample', 0, ''),
(52, 'TOOR DHAAL', '20', 'product/toordhaal.png', 'YES', '10.00', '2020-02-19 00:00:00', '2020-02-19 20:59:52', 1, 15, 0, '1', 0, '<ul class=\"rightlist\">                     <li><span>Asian grocery products <strong>at wholesale prices</strong></span></li>                     <li><span>Fast, <strong>free shipping*</strong></span></li>                     <li><span>No membership fees and <strong>no other charges</strong>, ever</span></li>                                                                           </ul>'),
(61, 'cheraka samba', '444', 'product/rosted1.jpg', 'dsfd', '44.00', '2020-02-20 00:00:00', '2020-02-19 18:30:00', 1, 20, 3, 'sdfdsf', 1, '<ul class=\"rightlist\">                     <li><span>Asian grocery products <strong>at wholesale prices</strong></span></li>                     <li><span>Fast, <strong>free shipping*</strong></span></li>                     <li><span>No membership fees and <strong>no other charges</strong>, ever</span></li>                                                                           </ul>'),
(62, 'dfsdf', '44', 'product/flour1.jpg', 'dsfsd', '44.00', '2020-02-24 00:00:00', '2020-02-24 18:04:24', 1, 18, 3, 'sdfdsf', 0, '<ul class=\"rightlist\">\r\n                    <li><span>Asian grocery products <strong>at wholesale prices</strong></span></li>\r\n                    <li><span>Fast, <strong>free shipping*</strong></span></li>\r\n                    <li><span>No membership fees and <strong>no other charges</strong>, ever</span></li>\r\n                    \r\n                    \r\n              \r\n\r\n                </ul>'),
(63, 'hhh', '777', 'product/turmeric2.jpg', 'uuu', '77.00', '2020-02-24 00:00:00', '2020-02-24 18:05:37', 1, 18, 2, 'uuu', 1, '<ul class=\"rightlist\">\r\n                    <li><span>Asian grocery products <strong>at wholesale prices</strong></span></li>\r\n                    <li><span>Fast, <strong>free shipping*</strong></span></li>\r\n                    <li><span>No membership fees and <strong>no other charges</strong>, ever</span></li>\r\n                    \r\n                    \r\n              \r\n\r\n                </ul>');

-- --------------------------------------------------------

--
-- Table structure for table `product_admin`
--

CREATE TABLE `product_admin` (
  `admin_id` int(11) NOT NULL,
  `user_firstname` varchar(200) NOT NULL,
  `user_lastname` varchar(200) NOT NULL,
  `admin_username` varchar(100) NOT NULL,
  `admin_password` varchar(500) NOT NULL,
  `firm_id` varchar(100) NOT NULL,
  `role` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product_admin`
--

INSERT INTO `product_admin` (`admin_id`, `user_firstname`, `user_lastname`, `admin_username`, `admin_password`, `firm_id`, `role`) VALUES
(100000, 'Admin', '', 'demo', 'demo', '1', 1),
(100001, 'Sub Admin', 'demo', 'demo', 'demo', '1', 2),
(100002, 'iyyappan', 'iyyappan', 'iyyappan', 'e10adc3949ba59abbe56e057f20f883e', '1', 3);

-- --------------------------------------------------------

--
-- Table structure for table `product_images`
--

CREATE TABLE `product_images` (
  `product_images_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_rel_name` varchar(512) NOT NULL,
  `product_rel_img` varchar(250) NOT NULL,
  `created` datetime NOT NULL,
  `modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `category_id` int(11) NOT NULL,
  `sub_category_id` int(11) NOT NULL,
  `product_images_status` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='image files related to a product';

--
-- Dumping data for table `product_images`
--

INSERT INTO `product_images` (`product_images_id`, `product_id`, `product_rel_name`, `product_rel_img`, `created`, `modified`, `category_id`, `sub_category_id`, `product_images_status`) VALUES
(105, 1, 'watch1', 'cart_img_two.jpg', '0000-00-00 00:00:00', '2019-02-17 11:38:00', 1, 1, 1),
(106, 1, 'watch2', 'cart_img_three.jpg', '0000-00-00 00:00:00', '2019-02-17 11:30:52', 2, 2, 1),
(107, 1, 'watch3', 'cart_img_five.jpg', '0000-00-00 00:00:00', '2019-02-17 11:38:07', 1, 1, 1),
(108, 2, 'Bag2', 'product_rel_img/Screenshot_(5).png', '0000-00-00 00:00:00', '2019-02-17 11:30:55', 2, 2, 1),
(109, 4, 'sss', 'product_rel_img/Screenshot_(13).png', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, 0),
(110, 50, 'hj', 'product_related/IMG_8584.JPG', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `product_setting`
--

CREATE TABLE `product_setting` (
  `product_setting_id` int(255) NOT NULL,
  `no_of_slider` int(255) NOT NULL,
  `no_of_products` int(255) NOT NULL,
  `no_of_service` int(255) NOT NULL,
  `no_of_gallery` int(255) NOT NULL,
  `contact_type` enum('beginner','intermediate','advance') NOT NULL DEFAULT 'beginner',
  `no_of_logogallery` enum('yes','no') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `registration_page`
--

CREATE TABLE `registration_page` (
  `id` int(50) NOT NULL,
  `email_address` varchar(50) NOT NULL,
  `passwords` varchar(50) NOT NULL,
  `dob` varchar(50) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `house_no` varchar(50) NOT NULL,
  `street` varchar(50) NOT NULL,
  `postal_code` varchar(50) NOT NULL,
  `city` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `registration_page`
--

INSERT INTO `registration_page` (`id`, `email_address`, `passwords`, `dob`, `phone`, `first_name`, `last_name`, `house_no`, `street`, `postal_code`, `city`) VALUES
(9, 'mon@gmail.com', 'test', '22/05/1987', '45645654', 'siva', 'rooban', '33', 'test', '3', 'test');

-- --------------------------------------------------------

--
-- Table structure for table `service`
--

CREATE TABLE `service` (
  `service_id` int(255) NOT NULL,
  `service_title` varchar(255) NOT NULL,
  `service_description` varchar(255) NOT NULL,
  `service_image` varchar(255) NOT NULL,
  `service_order_by` int(255) NOT NULL,
  `service_status` enum('active','inactive') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `settings_page`
--

CREATE TABLE `settings_page` (
  `emailid` varchar(40) NOT NULL,
  `mobile` varchar(40) NOT NULL,
  `whatsapp` varchar(40) NOT NULL,
  `facebook` varchar(80) NOT NULL,
  `twitter` varchar(80) NOT NULL,
  `youtube` varchar(80) NOT NULL,
  `working_hours` varchar(50) NOT NULL,
  `id` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sub_category`
--

CREATE TABLE `sub_category` (
  `sub_category_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `subcategory_name` varchar(250) NOT NULL,
  `subcategory_code` varchar(50) NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `modified` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `sub_cat_status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sub_category`
--

INSERT INTO `sub_category` (`sub_category_id`, `category_id`, `subcategory_name`, `subcategory_code`, `created`, `modified`, `sub_cat_status`) VALUES
(1, 1, 'subcat1', '', '2019-02-18 13:00:00', '0000-00-00 00:00:00', 1),
(2, 1, 'subcat2', '', '2019-02-17 13:00:00', '0000-00-00 00:00:00', 1),
(3, 9, 'test', '44', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `order_address`
--
ALTER TABLE `order_address`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_primarys`
--
ALTER TABLE `order_primarys`
  ADD PRIMARY KEY (`order_p`);

--
-- Indexes for table `pincode`
--
ALTER TABLE `pincode`
  ADD PRIMARY KEY (`pincode_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `product_admin`
--
ALTER TABLE `product_admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `product_images`
--
ALTER TABLE `product_images`
  ADD PRIMARY KEY (`product_images_id`);

--
-- Indexes for table `product_setting`
--
ALTER TABLE `product_setting`
  ADD PRIMARY KEY (`product_setting_id`);

--
-- Indexes for table `registration_page`
--
ALTER TABLE `registration_page`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `service`
--
ALTER TABLE `service`
  ADD PRIMARY KEY (`service_id`);

--
-- Indexes for table `settings_page`
--
ALTER TABLE `settings_page`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sub_category`
--
ALTER TABLE `sub_category`
  ADD PRIMARY KEY (`sub_category_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `order_address`
--
ALTER TABLE `order_address`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `order_primarys`
--
ALTER TABLE `order_primarys`
  MODIFY `order_p` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `pincode`
--
ALTER TABLE `pincode`
  MODIFY `pincode_id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `product_admin`
--
ALTER TABLE `product_admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100003;

--
-- AUTO_INCREMENT for table `product_images`
--
ALTER TABLE `product_images`
  MODIFY `product_images_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=111;

--
-- AUTO_INCREMENT for table `product_setting`
--
ALTER TABLE `product_setting`
  MODIFY `product_setting_id` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `registration_page`
--
ALTER TABLE `registration_page`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `service`
--
ALTER TABLE `service`
  MODIFY `service_id` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `settings_page`
--
ALTER TABLE `settings_page`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sub_category`
--
ALTER TABLE `sub_category`
  MODIFY `sub_category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
