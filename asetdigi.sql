-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 25, 2021 at 09:31 AM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `asetdigi`
--

-- --------------------------------------------------------

--
-- Table structure for table `ci_sessions`
--

CREATE TABLE `ci_sessions` (
  `id` varchar(128) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `timestamp` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `data` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ci_sessions`
--

INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('r43rfj69gg9gdshmn8realc8oc66m2i3', '127.0.0.1', 1629407240, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632393430373234303b5f5f4143544956455f53455353494f4e5f444154417c733a3235363a2265376334313435313365373764663861356566373262653230393564343732313931376461353166623462646533613637366332653162366231343332333062643566616463306566303130623038336164643334336634373465383333653137323634643036343465623237623934626564666238643930623337316533366b2f7234653245774255783437784341522f53566f4a3958545a7961446f737878495571414c4d726d4d2b52696f44784d3333396d37562f463861344354576e384446432f4b62484a77566762493432564976716f7673566e575155676c667775466b512b577042384131684a2f727168563032616a423844394f7667335465223b),
('p2nkf624pu0v4ja9s07uq2qltokt5mbq', '127.0.0.1', 1629407364, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632393430373234303b7265646972656374696f6e7c4e3b),
('e2633qfm6ism2284keh5elk82iot0l3l', '127.0.0.1', 1629493160, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632393439333135383b),
('8003s13dp66pqakttaepkv8enq72f5v9', '127.0.0.1', 1629493165, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632393439333136353b),
('vjh4ppos8tmnc6l8c4skt5q4kbn2sjls', '127.0.0.1', 1629493522, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632393439333235363b7265646972656374696f6e7c4e3b),
('9ms92o4t2851v5p183rio0cp85tscj00', '127.0.0.1', 1629502808, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632393530323830383b7265646972656374696f6e7c4e3b),
('kqsvgpshlcqdm5nrbjjqipnfr75758nf', '127.0.0.1', 1629509190, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632393530393139303b7265646972656374696f6e7c4e3b),
('2d755k6tk8d86uedd63c79u2imcegk52', '127.0.0.1', 1629509190, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632393530393139303b7265646972656374696f6e7c4e3b),
('rfjdpn4kfmifsvq4m8blo8hj648imtid', '::1', 1629600901, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632393630303736353b7265646972656374696f6e7c4e3b5f5f4143544956455f53455353494f4e5f444154417c733a3235363a2263336362663265303364303165643766663566316166383563653536313031353963386137643565616366653630373339366138623766306166386130353437333332363732616663343631663832316338623863383733316533393237373932366665626432633361653162623661666530613761396334653931343337616e333663345141437164334d5078467650376341344476434241746a5a45534e64474a4f6b3976667a303659642b416e6c7a75323678772b663376615a424259417679755354735030444d617052343351384f6b56787951362b42683967704447434d6b61416d3667747a30596b2f75464444634769554d736748312b4d556c223b),
('3h69r4c8l2un73mjv6itmf95rnfhm19s', '::1', 1629681140, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632393638303932303b7265646972656374696f6e7c4e3b5f5f4143544956455f53455353494f4e5f444154417c733a3235363a2237336336366262336263326430663664366666636636323539336139636164373063393134653139303166313366663236303338356538316166663664636266366362373865636432653336313766626331343464663763346364393864626563663765306236666363316339636332303634646432376238653762623036384a7952302f735242646b4c6a2f6c6b376f35374c33726f71504557576e3645504c6b2f542b52564c70444b41794553377a6d4470346c5348485949697055354956505055546b677967556a79393735794e71717754327136434c3867754873457133633177366d7056436a4153705042714257486754316548796f3358702f77223b),
('rjb8453q97faa4hc1virek0g9ss3l0k4', '::1', 1629681162, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632393638313135363b5f5f4143544956455f53455353494f4e5f444154417c733a3235363a22386531396531376166623461343635306563663939613238656138316134643930623434373564393566326166616266626337656362323530613062363363323032386265653366326634383835353263326235626461383365393834663230653661326532323335613464356166313538616431656566326637323930356562324f75556f557a6965644367595069506f3731745a69445668644c715239756b5a596c39505759766a6244717a414834554151384d52516a682b314c6551776c71332b6239654e745553647375706a4e7a4d6d57394956366776344d7578536962496d49794256345037575a2b4b524b32326d34414550736f377638634f58223b),
('kegvq5l5itdb745k833ihf2ssqadnpq3', '::1', 1629768709, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632393736383730393b),
('2f67ob7kl0ps1srjmbijdva16mtknk89', '::1', 1629770126, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632393737303132363b5f5f4143544956455f53455353494f4e5f444154417c733a3235363a2238343530393136363266323864613836353563646237363063303038363563666131353663663966323934643037663539343464353630363761616163326530323037333565333161626536383936326534393434333930343339306330633864616539313863306636643936333635646463333835356530363331626239634337447445764a59466b4a707533614346676a34454a523955553754367138346d36747174757256594f2b5432476b764a624d705559333352382b6e2f6366747246696450784f6a464b70436a643941645a35646e422b786c753944784f7578616656524d7447315447693065495664705635422b762b4b7964304749454a73223b),
('apc3egigdcbod4en3r2vmppbpe3pmq0r', '::1', 1629770485, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632393737303438353b5f5f4143544956455f53455353494f4e5f444154417c733a3235363a2238343530393136363266323864613836353563646237363063303038363563666131353663663966323934643037663539343464353630363761616163326530323037333565333161626536383936326534393434333930343339306330633864616539313863306636643936333635646463333835356530363331626239634337447445764a59466b4a707533614346676a34454a523955553754367138346d36747174757256594f2b5432476b764a624d705559333352382b6e2f6366747246696450784f6a464b70436a643941645a35646e422b786c753944784f7578616656524d7447315447693065495664705635422b762b4b7964304749454a73223b),
('1hk1f9a93v4a0rb05hnrcvvgvg5u8783', '::1', 1629770805, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632393737303830353b5f5f4143544956455f53455353494f4e5f444154417c733a3235363a2238343530393136363266323864613836353563646237363063303038363563666131353663663966323934643037663539343464353630363761616163326530323037333565333161626536383936326534393434333930343339306330633864616539313863306636643936333635646463333835356530363331626239634337447445764a59466b4a707533614346676a34454a523955553754367138346d36747174757256594f2b5432476b764a624d705559333352382b6e2f6366747246696450784f6a464b70436a643941645a35646e422b786c753944784f7578616656524d7447315447693065495664705635422b762b4b7964304749454a73223b),
('u53lu0kp7ugk7h1fi2i36ua6rsic5kqb', '::1', 1629771674, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632393737313637343b5f5f4143544956455f53455353494f4e5f444154417c733a3235363a2234313862653066626465643037643932326564343665373031626639363361393230383533626435353637636465633533333637353935373631643438363538373662333637623630663665623431653431623632383564306331623437373965373865386663323637613665306663303031343330356331656533623337334a6751446f7548464f5337467a7655712f586c486d644a334d6c2f777753524a58624f5377525146766834736d4a4b6a35754167417759714f2b693334326b574c306237554645505a61517834614d624d766f6c456e562b37307a426c396e6f47726938393148562f697a652b7272386235542b43507947706844443274514b223b7265646972656374696f6e7c4e3b),
('g8mgt2c4msn7tr4ol9plg3pg2n19hi44', '::1', 1629771943, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632393737313637343b5f5f4143544956455f53455353494f4e5f444154417c733a3235363a2234313862653066626465643037643932326564343665373031626639363361393230383533626435353637636465633533333637353935373631643438363538373662333637623630663665623431653431623632383564306331623437373965373865386663323637613665306663303031343330356331656533623337334a6751446f7548464f5337467a7655712f586c486d644a334d6c2f777753524a58624f5377525146766834736d4a4b6a35754167417759714f2b693334326b574c306237554645505a61517834614d624d766f6c456e562b37307a426c396e6f47726938393148562f697a652b7272386235542b43507947706844443274514b223b7265646972656374696f6e7c4e3b),
('l55mccj0ndaoktuh020k020l2g7m0r9o', '::1', 1629856134, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632393835363133343b7265646972656374696f6e7c733a36383a226148523063446f764c327876593246736147397a64433968633256305a476c6e6157317362533970626d526c65433577614841766453396a64584e304c33427062673d3d223b);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `order_number` varchar(255) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp(),
  `requested_by` bigint(20) UNSIGNED NOT NULL,
  `hosted_by` int(11) DEFAULT NULL,
  `is_open` tinyint(1) NOT NULL DEFAULT 1,
  `is_pending` tinyint(1) NOT NULL DEFAULT 0,
  `is_finish` tinyint(1) NOT NULL DEFAULT 0,
  `is_reject` tinyint(1) NOT NULL DEFAULT 0,
  `amount` int(11) NOT NULL,
  `total_payment` double NOT NULL,
  `currency` varchar(100) NOT NULL,
  `receipt_of_payment` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `order_number`, `date`, `requested_by`, `hosted_by`, `is_open`, `is_pending`, `is_finish`, `is_reject`, `amount`, `total_payment`, `currency`, `receipt_of_payment`) VALUES
(7, 'PR1629790457IHJY', '2021-08-24 07:34:17', 12, NULL, 0, 1, 0, 0, 2, 10, 'USDT', NULL),
(8, 'PR1629868752XWJ8', '2021-08-25 05:19:12', 12, NULL, 1, 0, 0, 0, 10, 50, 'USDT', NULL),
(9, 'PR1629868775E5GO', '2021-08-25 05:19:35', 12, NULL, 1, 0, 0, 0, 22, 110, 'USDT', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `pin_register`
--

CREATE TABLE `pin_register` (
  `id` int(11) NOT NULL,
  `pin` int(11) NOT NULL,
  `registered_by` bigint(20) UNSIGNED NOT NULL,
  `used_by` bigint(20) UNSIGNED DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `registered_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `order_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pin_register`
--

INSERT INTO `pin_register` (`id`, `pin`, `registered_by`, `used_by`, `is_active`, `registered_date`, `order_id`) VALUES
(2, 2107, 12, NULL, 1, '2021-08-25 05:39:09', 7),
(3, 2010, 12, NULL, 1, '2021-08-25 06:11:12', 7);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) NOT NULL,
  `key` varchar(32) NOT NULL,
  `content` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `key`, `content`) VALUES
(1, 'current_theme_name', 'vegefoods'),
(2, 'store_name', 'Toko Sayur 22'),
(3, 'store_phone_number', '082281666584'),
(4, 'store_email', 'tokosayur22@gmail.com'),
(5, 'store_tagline', 'Belanja Sayur Segar 24 Jam'),
(6, 'store_logo', 'Logo.png'),
(7, 'max_product_image_size', '20000'),
(8, 'store_description', 'Belanja sayur dan buah dengan murah, mudah dan cepat'),
(9, 'store_address', 'Jl. Medan Baru VI, RT 12 RW 06 Kel. Kandang Limun'),
(10, 'min_shop_to_free_shipping_cost', '20000'),
(11, 'shipping_cost', '3000'),
(12, 'payment_banks', '{\"bank-jago-xx\":{\"bank\":\"BANK JAGO xx\",\"number\":\"123\",\"name\":\"Martin Mulyo Syahidin\"},\"bank-jagoss\":{\"bank\":\"BANK JAGOss\",\"number\":\"xs\",\"name\":\"as\"},\"bank-jagossxx\":{\"bank\":\"BANK JAGOssxx\",\"number\":\"asd\",\"name\":\"Admin Koramil\"}}'),
(13, 'pin_register_price', '{\"price\":5,\"currency\":\"USDT\"}');

-- --------------------------------------------------------

--
-- Table structure for table `tokens`
--

CREATE TABLE `tokens` (
  `id` int(11) NOT NULL,
  `token` varchar(255) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `username` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `profile_picture` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT '0' COMMENT '1 = admin, 2 = customer',
  `register_date` timestamp NULL DEFAULT current_timestamp(),
  `secure_pin` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `username`, `password`, `profile_picture`, `role`, `register_date`, `secure_pin`) VALUES
(12, 'Jaffran Tirta Artika', 'franartika@gmail.com', NULL, 'jaffran', 'adbddd64d01c4ea8df145131f1c080ed', NULL, 'customer', '2021-08-24 07:17:53', 'c5866e93cab1776890fe343c9e7063fb');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ci_sessions`
--
ALTER TABLE `ci_sessions`
  ADD KEY `ci_sessions_timestamp` (`timestamp`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_user_to_order` (`requested_by`);

--
-- Indexes for table `pin_register`
--
ALTER TABLE `pin_register`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_pin_to_order` (`order_id`),
  ADD KEY `fk_user_registered_by` (`registered_by`),
  ADD KEY `fk_user_used_by` (`used_by`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `tokens`
--
ALTER TABLE `tokens`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `users_email_unique` (`email`) USING BTREE;

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `pin_register`
--
ALTER TABLE `pin_register`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `tokens`
--
ALTER TABLE `tokens`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `fk_user_to_order` FOREIGN KEY (`requested_by`) REFERENCES `users` (`id`);

--
-- Constraints for table `pin_register`
--
ALTER TABLE `pin_register`
  ADD CONSTRAINT `fk_pin_to_order` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`),
  ADD CONSTRAINT `fk_user_registered_by` FOREIGN KEY (`registered_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `fk_user_used_by` FOREIGN KEY (`used_by`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
