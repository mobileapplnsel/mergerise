-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 15, 2022 at 10:57 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.0.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mergerise`
--

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `customer_id` int(55) NOT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `user_name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `bank_name` varchar(255) DEFAULT NULL,
  `branch_name` varchar(255) DEFAULT NULL,
  `ac_no` varchar(255) DEFAULT NULL,
  `ifsc` varchar(255) DEFAULT NULL,
  `ac_name` varchar(255) DEFAULT NULL,
  `pan_no` varchar(255) DEFAULT NULL,
  `aadhaar_no` varchar(255) DEFAULT NULL,
  `kyc_pan_file` text DEFAULT NULL,
  `kyc_aadhaar_file` text DEFAULT NULL,
  `kyc_status` int(11) NOT NULL DEFAULT 0 COMMENT '1=updated, 2=verified, 3=rejected',
  `kyc_type` int(11) NOT NULL DEFAULT 0 COMMENT '1=kyc, 2=profile',
  `pass` varchar(255) DEFAULT NULL,
  `twofa_enabled` int(11) NOT NULL DEFAULT 0,
  `twofa_secret` varchar(255) DEFAULT NULL,
  `fcm_token` longtext NOT NULL,
  `is_wallet_active` int(11) NOT NULL DEFAULT 1,
  `wallet_amount` decimal(10,2) NOT NULL DEFAULT 0.00,
  `dtime` varchar(255) DEFAULT NULL,
  `created_by` int(11) NOT NULL DEFAULT 0,
  `last_login` varchar(255) DEFAULT NULL,
  `last_login_ip` varchar(255) DEFAULT NULL,
  `last_logout` varchar(255) DEFAULT NULL,
  `last_updated` varchar(255) DEFAULT NULL,
  `updated_by` int(11) NOT NULL DEFAULT 0,
  `added_source` int(11) NOT NULL DEFAULT 1 COMMENT '1=web, 2=app',
  `otp_status` int(11) NOT NULL DEFAULT 0 COMMENT '0> created, 1>sent, 2>verified',
  `otp_value` varchar(11) DEFAULT NULL,
  `login_otp_status` int(11) NOT NULL DEFAULT 0 COMMENT '0> created, 1>sent, 2>verified',
  `login_otp_value` varchar(11) DEFAULT NULL,
  `user_blocked` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`customer_id`, `first_name`, `last_name`, `user_name`, `email`, `phone`, `bank_name`, `branch_name`, `ac_no`, `ifsc`, `ac_name`, `pan_no`, `aadhaar_no`, `kyc_pan_file`, `kyc_aadhaar_file`, `kyc_status`, `kyc_type`, `pass`, `twofa_enabled`, `twofa_secret`, `fcm_token`, `is_wallet_active`, `wallet_amount`, `dtime`, `created_by`, `last_login`, `last_login_ip`, `last_logout`, `last_updated`, `updated_by`, `added_source`, `otp_status`, `otp_value`, `login_otp_status`, `login_otp_value`, `user_blocked`) VALUES
(25, 'Testt', 'User', 'sfsdf', 'demo@email.com', '9898989898', 'SBi', 'ecospace', '10026591', 'SBIN0002', 'Some Name', 'AR696978', '1006652145', '1635920642-Desert.jpg', '1635920642-Tulips.jpg', 2, 0, 'MEdTP9awHa1Tjy4uwVuRwQ==', 0, NULL, '', 1, '4900.00', '2021-08-27 17:08:42', 1, '2021-09-11 11:55:29', NULL, '2021-10-21 11:14:55', '2021-11-22 17:45:54', 1, 1, 2, NULL, 0, '123456', 0),
(27, 'teee', 'err', 'fefef', 'err@ee.com', '9898979098', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 'HoWz08bSCdX9YvjVQdOlOA==', 0, NULL, '', 1, '700.00', '2021-08-28 15:46:57', 1, NULL, NULL, NULL, NULL, 0, 1, 0, NULL, 0, NULL, 0),
(31, 'Snigdho', 'Upadhyay', 'snigdho1', 'snigdho.lnsel@gmail.com', '9865854501', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 'QRUPFKhuXMCFkIhXXVNKUw==', 0, NULL, '', 1, '9000.00', '2021-08-30 18:30:46', 0, NULL, NULL, NULL, '2021-11-24 16:39:51', 1, 2, 2, '174956', 0, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(55) NOT NULL,
  `user_group` int(11) NOT NULL DEFAULT 0 COMMENT '1=admin, 2= cnf, 3=dealer',
  `parent_id` bigint(20) NOT NULL DEFAULT 0,
  `full_name` varchar(255) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `gst` varchar(15) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `user_name` varchar(255) DEFAULT NULL,
  `pass` varchar(255) DEFAULT NULL,
  `twofa_enabled` int(11) NOT NULL DEFAULT 0,
  `twofa_secret` varchar(255) DEFAULT NULL,
  `dtime` varchar(255) DEFAULT NULL,
  `created_by` int(11) NOT NULL DEFAULT 0,
  `last_login` varchar(255) DEFAULT NULL,
  `last_login_ip` varchar(255) DEFAULT NULL,
  `last_logout` varchar(255) DEFAULT NULL,
  `last_updated` varchar(255) DEFAULT NULL,
  `updated_by` int(11) NOT NULL DEFAULT 0,
  `user_blocked` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `user_group`, `parent_id`, `full_name`, `address`, `gst`, `phone`, `user_name`, `pass`, `twofa_enabled`, `twofa_secret`, `dtime`, `created_by`, `last_login`, `last_login_ip`, `last_logout`, `last_updated`, `updated_by`, `user_blocked`) VALUES
(1, 1, 0, 'Snigdho Upadhyay', NULL, '', '', 'admin@gmail.com', 'yHbKO56SIL5myftosVG/qw==', 0, NULL, '2020-04-30 11:44:10', 1, '2022-07-15 14:22:13', '::1', '2022-07-15 14:27:23', '2021-08-27 18:09:39', 1, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`customer_id`),
  ADD UNIQUE KEY `user_name` (`user_name`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `user_name` (`user_name`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `customer_id` int(55) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=443;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(55) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
