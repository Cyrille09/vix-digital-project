-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 27, 2020 at 10:13 AM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 7.1.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `digital_api`
--

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2020_10_24_101339_create_services_table', 1),
(4, '2016_06_01_000001_create_oauth_auth_codes_table', 2),
(5, '2016_06_01_000002_create_oauth_access_tokens_table', 2),
(6, '2016_06_01_000003_create_oauth_refresh_tokens_table', 2),
(7, '2016_06_01_000004_create_oauth_clients_table', 2),
(8, '2016_06_01_000005_create_oauth_personal_access_clients_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('0ac0f3f2f23d5ff9467f89dae507cf234a8df724575957df9cdd947e84cfd31413c17e6b5f1dcc15', 1, 1, 'authToken', '[]', 0, '2020-10-26 02:43:17', '2020-10-26 02:43:17', '2021-10-26 02:43:17'),
('0b4c5433e0f318acbff343d7b4bc720d5b8c98f9d2f8b6ddb92c06cd47bc3807153819877f6322ed', 1, 1, 'authToken', '[]', 0, '2020-10-25 18:55:27', '2020-10-25 18:55:27', '2021-10-25 18:55:27'),
('0e622119ba41e9b8880fa2406590501e6c242276a736d276ea98db173b48c2199d6fe995124813f7', 1, 1, 'authToken', '[]', 0, '2020-10-25 19:51:58', '2020-10-25 19:51:58', '2021-10-25 19:51:58'),
('0e71beab244d037801df73d49e1e510a5d5ac41a67fe9263974a5e1fa9ae0ba3d1395987dae0b223', 1, 1, 'authToken', '[]', 0, '2020-10-26 15:30:04', '2020-10-26 15:30:04', '2021-10-26 15:30:04'),
('0f88e41607a7032750afb28c4b304844ff9ec192bddae4834df2f695b2b45027af36d4c2944710e5', 1, 1, 'authToken', '[]', 0, '2020-10-27 01:44:15', '2020-10-27 01:44:15', '2021-10-27 01:44:15'),
('108547b14570c812ab7c2001c1d49252b2073e035d882cb4a5ae7f7d4d02c5965effb2f625327ed1', 8, 1, 'authToken', '[]', 0, '2020-10-26 19:09:45', '2020-10-26 19:09:45', '2021-10-26 19:09:45'),
('108c96af25c70a993c0eb6e995a0abb28ef7918765c24fe02aa1420fd6b0bef22d657df9aed95fa7', 1, 1, 'authToken', '[]', 0, '2020-10-25 20:29:32', '2020-10-25 20:29:32', '2021-10-25 20:29:32'),
('10d9d66d812ccb7d67cae272e371bb35e618ec409bb2a36c4018f423da98d4ec10824179df52be8e', 1, 1, 'authToken', '[]', 0, '2020-10-26 02:28:09', '2020-10-26 02:28:09', '2021-10-26 02:28:09'),
('113ffabbc98ad54607527658e8abb4f4d66a1ff2b7461c2da278b284682031a077761c1291037456', 1, 1, 'authToken', '[]', 0, '2020-10-27 02:25:19', '2020-10-27 02:25:19', '2021-10-27 02:25:19'),
('14aaca7b8a2ae747dca412fe23ce58a00a9306e157f837231bd04cad8592b7703b4c433d666da39b', 3, 1, 'authToken', '[]', 0, '2020-10-24 16:33:56', '2020-10-24 16:33:56', '2021-10-24 17:33:56'),
('1507a36c349daf661980b63d1e582673278e871223af03f40510d9999fca50f2eca37354fbf5a309', 1, 1, 'authToken', '[]', 0, '2020-10-27 02:28:06', '2020-10-27 02:28:06', '2021-10-27 02:28:06'),
('16895e69333f2b8af146828ce22a8483ebc65d648e81acba376c3bbbcf485a4d71748e25acbd21a8', 10, 1, 'authToken', '[]', 0, '2020-10-27 03:55:02', '2020-10-27 03:55:02', '2021-10-27 03:55:02'),
('1716a9c20c1f94f88efc2d48f26d32cbc10e86e320e313b5ea1ca024a2d222b21764e70b023cf774', 1, 1, 'authToken', '[]', 0, '2020-10-27 02:12:24', '2020-10-27 02:12:24', '2021-10-27 02:12:24'),
('19624a2f93c6b16c48c3ab2e9f46c9cf2c5187acd861e87c96e4c43871a1cf36b7455e5c1e4387f9', 1, 1, 'authToken', '[]', 0, '2020-10-27 01:39:10', '2020-10-27 01:39:10', '2021-10-27 01:39:10'),
('1b5696272216263d35310e676259ca8c43e227d348b3cde23bde30dd04cf390715d74349feeb59a7', 1, 1, 'authToken', '[]', 0, '2020-10-26 15:29:55', '2020-10-26 15:29:55', '2021-10-26 15:29:55'),
('1e337ccf1b1c3437aa20fc26734d78d0f125d80ede524ab7ff1b37d571ce06de8521271de1f651e5', 1, 1, 'authToken', '[]', 0, '2020-10-26 15:30:02', '2020-10-26 15:30:02', '2021-10-26 15:30:02'),
('1f6670144cb61fd6c83374ef3a18fdb6546be0aa679c179403b76fc0776bdf0460625883dc0cb374', 1, 1, 'authToken', '[]', 0, '2020-10-26 15:30:02', '2020-10-26 15:30:02', '2021-10-26 15:30:02'),
('209a6a317b653b35d24bccf56af2c02e6320b786bb3e565b8fdd0edb522711c9bd8489a3fa55a122', 1, 1, 'authToken', '[]', 0, '2020-10-26 15:30:04', '2020-10-26 15:30:04', '2021-10-26 15:30:04'),
('22a7d6d645f925a8b4f6cdba85ef8e7e699cba8978787cc57de4813c6f6ef23b7ce7c36b66169795', 1, 1, 'authToken', '[]', 0, '2020-10-26 22:13:01', '2020-10-26 22:13:01', '2021-10-26 22:13:01'),
('26a2312dec398d8c86cc0dfde9628c133d24cb0fdf185dd6ecc990f91f204a18118be7fc48a7ca20', 1, 1, 'authToken', '[]', 0, '2020-10-26 14:38:17', '2020-10-26 14:38:17', '2021-10-26 14:38:17'),
('294d075b993806d5545c6c8339dfdaf74eff0aa864f6d776abde70e81eb1e02898ebc3130132f05b', 1, 1, 'authToken', '[]', 0, '2020-10-27 02:26:33', '2020-10-27 02:26:33', '2021-10-27 02:26:33'),
('2c31426d0c86c6c303b0a09fe7f9cee365c8aaa082f6dd041c75e2fee14dadf0fb86373d69ef728d', 1, 1, 'authToken', '[]', 0, '2020-10-26 02:28:08', '2020-10-26 02:28:08', '2021-10-26 02:28:08'),
('2d276bb062b8848f370c999817fb9bdece4052f9e712799a1e9a094e3225f748d934e7a55340847d', 1, 1, 'authToken', '[]', 0, '2020-10-27 01:40:03', '2020-10-27 01:40:03', '2021-10-27 01:40:03'),
('313cfd0302c2e1a5aa8e55596adce4ca51edf2a6df899e657f4f05a41bd32deaac07a356fae2473c', 1, 1, 'authToken', '[]', 0, '2020-10-26 15:30:04', '2020-10-26 15:30:04', '2021-10-26 15:30:04'),
('3656e7d4d560aa04617a7d2be944237794f266a20ab69522683b883dc67dfbba18f3bae626d37bdf', 1, 1, 'authToken', '[]', 0, '2020-10-26 15:30:01', '2020-10-26 15:30:01', '2021-10-26 15:30:01'),
('37983c721997bf56c516cad929f7a6b87c5df4f902910d0f8188f18c29e3822fd54560e82124c9c1', 1, 1, 'authToken', '[]', 0, '2020-10-26 02:28:08', '2020-10-26 02:28:08', '2021-10-26 02:28:08'),
('384018e8dd02ea50d8d2cfffb99ac4ee26f914a721cc94087daa265a1374819a25f22b86e849dc9a', 1, 1, 'authToken', '[]', 0, '2020-10-26 02:27:59', '2020-10-26 02:27:59', '2021-10-26 02:27:59'),
('3899fcf8824ebb1f29ae6c2728bf051800f8f671fdb431e226038ae4a009f100c24d8f392175bdc6', 1, 1, 'authToken', '[]', 0, '2020-10-26 11:15:21', '2020-10-26 11:15:21', '2021-10-26 11:15:21'),
('39a7484bce6d6a933dd752c63295ec306f73d59ad222cbed750009a609f531ee6470b0e54cb9d645', 1, 1, 'authToken', '[]', 0, '2020-10-27 02:12:26', '2020-10-27 02:12:26', '2021-10-27 02:12:26'),
('3bfc7e240ed138dfe29816b11252918dc7ef037c4f53550a0550c5f472d6b26c8002cbb89356d8e8', 1, 1, 'authToken', '[]', 0, '2020-10-27 02:29:21', '2020-10-27 02:29:21', '2021-10-27 02:29:21'),
('3dcf21cce77b6f1e54d0aadeb45811efc8c622c18e723185db531d8d18f8a0ffc36de8721b669418', 1, 1, 'authToken', '[]', 0, '2020-10-27 03:08:05', '2020-10-27 03:08:05', '2021-10-27 03:08:05'),
('3ef2795071f9ae7262d1fac3a4ea4d87771629a367a057786a30a85fd0e2fe10ea4a9aec23c70323', 1, 1, 'authToken', '[]', 0, '2020-10-26 02:28:01', '2020-10-26 02:28:01', '2021-10-26 02:28:01'),
('3f0382ea377e90811375fddd91df816dc013508671bdf2e1c8c596cf795062f69f1eee3a18d4f055', 1, 1, 'authToken', '[]', 0, '2020-10-25 20:30:46', '2020-10-25 20:30:46', '2021-10-25 20:30:46'),
('4453ab49eab191b3f2b739e0d27fbe480f5afa059eae2a800fa7219a82c555ce7697423cddda3c14', 1, 1, 'authToken', '[]', 0, '2020-10-26 15:30:01', '2020-10-26 15:30:01', '2021-10-26 15:30:01'),
('454a68f6ace19753cdca58e5717130fe51a5b2c66c9c4c957c4630e2e274359f75dfdd218fa1cb99', 1, 1, 'authToken', '[]', 0, '2020-10-26 15:47:41', '2020-10-26 15:47:41', '2021-10-26 15:47:41'),
('457fbd9109d7b4f55b686472b350590588d0ef2672c8e4b9f6ae89cdd570abc85fc3971f78eddb77', 1, 1, 'authToken', '[]', 0, '2020-10-26 10:40:12', '2020-10-26 10:40:12', '2021-10-26 10:40:12'),
('4659bd7188580630580dd0ff7b748b67b8e6d4285d4882c3c00ef12e34cee16eafd4e92f2e2c018e', 1, 1, 'authToken', '[]', 0, '2020-10-26 11:29:23', '2020-10-26 11:29:23', '2021-10-26 11:29:23'),
('47dbb85e0d116f97754bd975203273634333dc0e22488950eb083ae36936154753e75909ab0449c2', 1, 1, 'authToken', '[]', 0, '2020-10-25 20:16:19', '2020-10-25 20:16:19', '2021-10-25 20:16:19'),
('4a24aeb938280f712b435d561c54dfda8ace0239f5cd6911cd95005d6ce765c039d0696beec65bd1', 1, 1, 'authToken', '[]', 0, '2020-10-26 02:28:10', '2020-10-26 02:28:10', '2021-10-26 02:28:10'),
('4f618d8619a9c451fd50174fe2cbe2f51b8392c136b7d095251f2e812b96f2c42752560ce6fab297', 1, 1, 'authToken', '[]', 0, '2020-10-26 02:22:48', '2020-10-26 02:22:48', '2021-10-26 02:22:48'),
('53cd3d45129fd746902485dac7bbd98fb79cf53d227555b3d4112d98160959824f451fec58bf4136', 1, 1, 'authToken', '[]', 0, '2020-10-26 15:57:37', '2020-10-26 15:57:37', '2021-10-26 15:57:37'),
('58000fedcfa971014858b244878a5508ebb1bfcdfe13a3683bb5401bd2e1f8c87a8e872d82e0a80e', 1, 1, 'authToken', '[]', 0, '2020-10-26 14:59:49', '2020-10-26 14:59:49', '2021-10-26 14:59:49'),
('5bdcd3b78df755e12259032435f26507791684b359d72e1ce558b384ee4738c37eda7847a9cd2d62', 1, 1, 'authToken', '[]', 0, '2020-10-26 02:36:11', '2020-10-26 02:36:11', '2021-10-26 02:36:11'),
('5de6d83bd8a5ad6d19d071214e6cb2426202a9804aa5a5df3c5a15df8ad8e181ca94585853518098', 1, 1, 'authToken', '[]', 0, '2020-10-26 15:29:59', '2020-10-26 15:29:59', '2021-10-26 15:29:59'),
('5e2546dbacbc83df0de948cb2148d384488d8a91ecd39638265fdd9576250f0ab249542c9761defc', 1, 1, 'authToken', '[]', 0, '2020-10-27 08:06:30', '2020-10-27 08:06:30', '2021-10-27 08:06:30'),
('5fff028a2bf3bab76ca2433e8b7298bacc8fc7f01fd3602e4358fc38debb7c4eb24cbc6abd482b82', 1, 1, 'authToken', '[]', 0, '2020-10-27 03:00:12', '2020-10-27 03:00:12', '2021-10-27 03:00:12'),
('644a24be386a0c8cffdda250cb9a7aa72fe544f09b79bc325420334d236b2549c82ed1ca6786b1dc', 1, 1, 'authToken', '[]', 0, '2020-10-26 15:34:46', '2020-10-26 15:34:46', '2021-10-26 15:34:46'),
('65c0a8805f5636b8f8d24e2ad1162ce569c0df2cb84f11865245d18e13802f3edd3a9cfa9106280a', 1, 1, 'authToken', '[]', 0, '2020-10-27 03:54:31', '2020-10-27 03:54:31', '2021-10-27 03:54:31'),
('6626094b9c96d0c39f876ab749c017ed23589ed68e033d5af88f00388e6e3f7acb94a6fcaae715e6', 1, 1, 'authToken', '[]', 0, '2020-10-27 01:52:06', '2020-10-27 01:52:06', '2021-10-27 01:52:06'),
('674216ff29dad84bbdd0f1e54ef117360b94cabc2e04e4203a4375f9ca8670c124cf8880b5c0c66b', 1, 1, 'authToken', '[]', 0, '2020-10-27 01:46:21', '2020-10-27 01:46:21', '2021-10-27 01:46:21'),
('6d7f97d28089fb9da8585e9099b7c3e3c7c9c5839bbcf7516cb2c6bcd9d0f5d0c98371c6d1924b50', 1, 1, 'authToken', '[]', 0, '2020-10-26 15:30:00', '2020-10-26 15:30:00', '2021-10-26 15:30:00'),
('6ea8d883ee5ea9eb5832e4ad5c4b45d38d7264d9ba375f445810b543c8a89c11628ea938a183f0d8', 1, 1, 'authToken', '[]', 0, '2020-10-27 02:28:47', '2020-10-27 02:28:47', '2021-10-27 02:28:47'),
('6f7260acef7b88cb5abb1f68833dcfbb139f3e07c42c246a4ef4d76bf6126175ab44db47d74c2618', 1, 1, 'authToken', '[]', 0, '2020-10-26 15:44:30', '2020-10-26 15:44:30', '2021-10-26 15:44:30'),
('71d8508b463dce120db596cb0fe784e8f5955c49c3c6f0b39dd07e5bfd22f7c6db169c340abc4958', 1, 1, 'authToken', '[]', 0, '2020-10-26 15:56:48', '2020-10-26 15:56:48', '2021-10-26 15:56:48'),
('742cc4db3514be1f4e218d475a481ec09db47f3d9c7295a53ce183f10afb559e408fd799a1193433', 1, 1, 'authToken', '[]', 0, '2020-10-27 01:58:17', '2020-10-27 01:58:17', '2021-10-27 01:58:17'),
('75d31324e7ac94085a3f59cd104a6f754071e9f0ecd32dab67ae91220d5c29294a0e58fd0522350c', 1, 1, 'authToken', '[]', 0, '2020-10-26 02:28:11', '2020-10-26 02:28:11', '2021-10-26 02:28:11'),
('785bb12c925d932d84965461499c47d9c46c8881448fb4c6d607a68193352ed1a0e4ec8defeae345', 1, 1, 'authToken', '[]', 0, '2020-10-26 15:29:58', '2020-10-26 15:29:58', '2021-10-26 15:29:58'),
('79e2e43a932a57bda931561e344af2cd3a0551549d57dd11d9105398bfd0de8d9ce61a1a783eb99b', 1, 1, 'authToken', '[]', 0, '2020-10-26 14:43:47', '2020-10-26 14:43:47', '2021-10-26 14:43:47'),
('7b1f749f4dc445350feeef5c5da89fd906faf4b38e711f7f158167a0637a290c47c865beb9946410', 1, 1, 'authToken', '[]', 0, '2020-10-27 01:51:54', '2020-10-27 01:51:54', '2021-10-27 01:51:54'),
('7baedfebe9f2cb1c874e8022957c8dae5aa62a96685b3c87d93354e88e0c842dbb2e3edcdfe67cce', 7, 1, 'authToken', '[]', 0, '2020-10-26 19:08:25', '2020-10-26 19:08:25', '2021-10-26 19:08:25'),
('86a0940b909c192281967d8c3a3f14332708c81eded2de3b06dbe415b02a10da8e36d03d827c2ae3', 5, 1, 'authToken', '[]', 0, '2020-10-25 22:43:03', '2020-10-25 22:43:03', '2021-10-25 22:43:03'),
('87104af01b8e9262d2e08d5d0ab2556e7296bd5cd5ef58596d6026f55c75735ff39835ac605fc212', 1, 1, 'authToken', '[]', 0, '2020-10-26 02:28:10', '2020-10-26 02:28:10', '2021-10-26 02:28:10'),
('88f237dd49850785f545b739b9d3865a3eb6a4150e1eb0970a73eabb63d900fb8267e1ce41a48ef0', 1, 1, 'authToken', '[]', 0, '2020-10-26 02:41:26', '2020-10-26 02:41:26', '2021-10-26 02:41:26'),
('8fa27a729cc2d6dd59a1df75483e7ba2ee5851a64e3aa581b640761c0eb1b4b32b4a351b96ea5c7c', 1, 1, 'authToken', '[]', 0, '2020-10-25 18:44:47', '2020-10-25 18:44:47', '2021-10-25 18:44:47'),
('959c3d10ccc41fa117d166cc3367fe7e54eda552978953c37a863da35dc9d5069f193d610c33f536', 10, 1, 'authToken', '[]', 0, '2020-10-27 03:38:32', '2020-10-27 03:38:32', '2021-10-27 03:38:32'),
('96ef960fc5f1bf5baf3d799d969ce85714e5e1756bf82a1a59f76ebb02ba9127eecca5f52e35a338', 1, 1, 'authToken', '[]', 0, '2020-10-26 02:28:09', '2020-10-26 02:28:09', '2021-10-26 02:28:09'),
('98191d0c0cd6f471c41aeb1886a0874265357672d68ed307a2819e6637031b201add2ca7d67be9a2', 6, 1, 'authToken', '[]', 0, '2020-10-26 19:04:58', '2020-10-26 19:04:58', '2021-10-26 19:04:58'),
('98223a64cb054c6b2d4d8703d6689ed5654999d79375d67a748c30905016d769ae567a62457ef8ba', 1, 1, 'authToken', '[]', 0, '2020-10-26 15:30:05', '2020-10-26 15:30:05', '2021-10-26 15:30:05'),
('9dac4386cf5da81e1dc9279c4ee10b2b4b707b296918bcb2f07ddc6addccdcc287a10fb0f31bdadf', 1, 1, 'authToken', '[]', 0, '2020-10-24 15:50:31', '2020-10-24 15:50:31', '2021-10-24 16:50:31'),
('9e329feab4d27961cd939ee84ef1ef666427c991815590cf58f71c80889e23115b31445f405b8ebf', 1, 1, 'authToken', '[]', 0, '2020-10-26 02:28:04', '2020-10-26 02:28:04', '2021-10-26 02:28:04'),
('a2dc8bf5c392afd2fa7dbf2537228483a63b415506470977b8371581d1ae27be85d27d61a6832fba', 1, 1, 'authToken', '[]', 0, '2020-10-26 15:34:27', '2020-10-26 15:34:27', '2021-10-26 15:34:27'),
('a4b4da500901f19fdc947b603e2a86b0acf898c2c4488f1dee234080c4630ce85a5491b14145da37', 1, 1, 'authToken', '[]', 0, '2020-10-27 08:06:29', '2020-10-27 08:06:29', '2021-10-27 08:06:29'),
('a5665b916491ac6be2359117732c75bf575103d446f3e135592cb81209773f73c864356f5483f6c3', 1, 1, 'authToken', '[]', 0, '2020-10-27 03:18:53', '2020-10-27 03:18:53', '2021-10-27 03:18:53'),
('a9823de03a72d70dcd94cc40e119f164ecd19fba38839dbef681879eaa3d9cca13f4566c0f7fdc04', 1, 1, 'authToken', '[]', 0, '2020-10-25 21:41:55', '2020-10-25 21:41:55', '2021-10-25 21:41:55'),
('aa164a863574570e58fe18a3a3b642989a94be083837a0b02f760ba7b590233e5dc9cbb8a6aae192', 1, 1, 'authToken', '[]', 0, '2020-10-27 03:12:18', '2020-10-27 03:12:18', '2021-10-27 03:12:18'),
('aadc411da4ce2abc946b6ee18b9173a03249ac1a478a5179b9bd106ee38f3a7f85f109ce60a4d5ac', 1, 1, 'authToken', '[]', 0, '2020-10-26 15:41:28', '2020-10-26 15:41:28', '2021-10-26 15:41:28'),
('ab57a180bb2b736cb752358e7bd8f0a6410d53d21c5b4d7a92d5ed5218e73b0c9fa093973db5839d', 1, 1, 'authToken', '[]', 0, '2020-10-26 15:30:00', '2020-10-26 15:30:00', '2021-10-26 15:30:00'),
('ad86451ab1bab100d5a7c7b0a34da398d3ea69563e1310bb091e591ef63079746a34c5071364e229', 1, 1, 'authToken', '[]', 0, '2020-10-25 20:10:22', '2020-10-25 20:10:22', '2021-10-25 20:10:22'),
('b314d997cf2bb96a1eec614d85b0368dfc6eb4aaab8b8077e6f281726090ecd7bbad18e75fb30382', 1, 1, 'authToken', '[]', 0, '2020-10-26 14:41:09', '2020-10-26 14:41:09', '2021-10-26 14:41:09'),
('b506cdddc59f37586fb3a3c0aa798db38ed2452930be8ac8beceb3d50965c68f21f1ede656ba9d79', 1, 1, 'authToken', '[]', 0, '2020-10-27 01:54:35', '2020-10-27 01:54:35', '2021-10-27 01:54:35'),
('b896798e038b238edc82f2027dda99b4775dd0eef436ebe6caadfbce71d4059a60fe6e7bfb20e6bc', 1, 1, 'authToken', '[]', 0, '2020-10-26 11:19:39', '2020-10-26 11:19:39', '2021-10-26 11:19:39'),
('bbf7f4b1198316129bfd332401e18e72d19f90cad3e440cdfc711fa0a73b74bb6eba0cef01e13ef2', 1, 1, 'authToken', '[]', 0, '2020-10-26 15:42:41', '2020-10-26 15:42:41', '2021-10-26 15:42:41'),
('becb22dd7259aee6b127b4c7162c1e54b7612d911548624214645000e458dad69d09fcbe532f3894', 1, 1, 'authToken', '[]', 0, '2020-10-26 15:59:39', '2020-10-26 15:59:39', '2021-10-26 15:59:39'),
('c1ad662354b46ca3e05aadd2f09cf9e3ebac5bbb212d81db1c627b3124441a6aad65cccdafaabaa8', 1, 1, 'authToken', '[]', 0, '2020-10-26 02:43:59', '2020-10-26 02:43:59', '2021-10-26 02:43:59'),
('c6650f8e6ffb6ba95b85d0a8cddca9713154635efee4fccfa620a79aae671130255dbca4da9e62dd', 1, 1, 'authToken', '[]', 0, '2020-10-26 11:26:38', '2020-10-26 11:26:38', '2021-10-26 11:26:38'),
('cb72d3c3d7e2a70bbc73602010e8a00a2c93c53bb87876302b54f09426b75b13d564ca5a21d694d4', 1, 1, 'authToken', '[]', 0, '2020-10-26 15:30:03', '2020-10-26 15:30:03', '2021-10-26 15:30:03'),
('cf5b432c38230322c0da8e8a620e5e2e4e1132422f9e63c40829852b77a4bda6ebc8240aaddb4cf1', 1, 1, 'authToken', '[]', 0, '2020-10-25 21:37:46', '2020-10-25 21:37:46', '2021-10-25 21:37:46'),
('d1a74e86d5cbab90a5648ba185a08d85fef0a434ae9b6cc4100fdb7b7131ef49e611c7fc2ad62589', 9, 1, 'authToken', '[]', 0, '2020-10-26 21:37:15', '2020-10-26 21:37:15', '2021-10-26 21:37:15'),
('d3185ed3d319842a77c38d862e7d414a1f17bb829ccbcd0462c74b9737a84601bb29a55009ed977d', 1, 1, 'authToken', '[]', 0, '2020-10-27 01:45:11', '2020-10-27 01:45:11', '2021-10-27 01:45:11'),
('d6e505351846c82661b583d5ea69cb9f46ff1cf3f2993975336df8d21f108b451dc1184501592c61', 1, 1, 'authToken', '[]', 0, '2020-10-27 01:59:33', '2020-10-27 01:59:33', '2021-10-27 01:59:33'),
('d8a9bd04b7747531ff8ab8916b8b8e20ca8e0cf0f035807aa87f474f4d3018f8eaa4ae038125a89a', 1, 1, 'authToken', '[]', 0, '2020-10-26 16:01:34', '2020-10-26 16:01:34', '2021-10-26 16:01:34'),
('ddfa0388d1e16f71458d3b66ce2a37efb8c1a3ee0eec33598450946258a58ca7cfd5dd5eb9064225', 1, 1, 'authToken', '[]', 0, '2020-10-26 15:30:02', '2020-10-26 15:30:02', '2021-10-26 15:30:02'),
('de07b344d09a66dd7ccde358c609bdc631046080a66fe548a4b1655abe4e0ad32a4d660908aae559', 1, 1, 'authToken', '[]', 0, '2020-10-26 02:28:10', '2020-10-26 02:28:10', '2021-10-26 02:28:10'),
('e045e65372773275b4ab9191f4bf9d9ce30843e0aca05f3280d3681eb598337be47ac603af306ea4', 4, 1, 'authToken', '[]', 0, '2020-10-24 16:34:14', '2020-10-24 16:34:14', '2021-10-24 17:34:14'),
('e44298a6cffb0f75c6f78e4df0a58502842d507396d0584493e2b5abbc51c8c666916b6dddcac289', 1, 1, 'authToken', '[]', 0, '2020-10-27 02:12:15', '2020-10-27 02:12:15', '2021-10-27 02:12:15'),
('e65bc8444e7b74ac58f4b67502a98a029109bfec11ab988a77e55658ee054958945f12c2aa3a495c', 1, 1, 'authToken', '[]', 0, '2020-10-25 20:12:18', '2020-10-25 20:12:18', '2021-10-25 20:12:18'),
('e6704088b2c9ddcdc522927ae61b761d19dbeaf2b5e152c3529120f5ec97c4cba402225adfe2f008', 2, 1, 'authToken', '[]', 0, '2020-10-24 16:33:34', '2020-10-24 16:33:34', '2021-10-24 17:33:34'),
('ea939edb6823e7576cab5aaa6656614ebbb5db6888825bf686c43a8774697fbd671cff429d5783f6', 1, 1, 'authToken', '[]', 0, '2020-10-27 02:23:10', '2020-10-27 02:23:10', '2021-10-27 02:23:10'),
('eb43cb0e12e90dc168d701c04923964be9fe2c064e4c2ce5ce19ff3afd020d0d64ebd22b78f4a516', 1, 1, 'authToken', '[]', 0, '2020-10-27 02:45:33', '2020-10-27 02:45:33', '2021-10-27 02:45:33'),
('ed3b6050ddaf1b6d51e7504a4171178c71b19ddc420cd84b02c3f9b42f121a27c62fc625dea807a5', 1, 1, 'authToken', '[]', 0, '2020-10-26 15:34:48', '2020-10-26 15:34:48', '2021-10-26 15:34:48'),
('ed4ecf2a96b21a9e8a7f48a2c657ed53cbb517696d692339afb0c660e63719ae22255db2a4a7dd78', 1, 1, 'authToken', '[]', 0, '2020-10-25 20:08:04', '2020-10-25 20:08:04', '2021-10-25 20:08:04'),
('ed88bc4eea132782aadf29a64f6a3583b241e5b79cfd7bcea2ba2849f8b7dce1a6ab1430cd1b02ba', 1, 1, 'authToken', '[]', 0, '2020-10-24 16:04:06', '2020-10-24 16:04:06', '2021-10-24 17:04:06'),
('edca00d2350792ba9462a235f38507a6fb426ee30b3906d8be7b184396279186da9aba481f105ec2', 1, 1, 'authToken', '[]', 0, '2020-10-27 03:14:55', '2020-10-27 03:14:55', '2021-10-27 03:14:55'),
('ef26039dc5d26f08da4321759827c0bc3efdc61ba353bbabdd999a298bce6cf00415b8b8dbbe6b10', 1, 1, 'authToken', '[]', 0, '2020-10-26 13:56:29', '2020-10-26 13:56:29', '2021-10-26 13:56:29'),
('f6eba737e7ee23ccd72a5b2f7f6e54daedc0fcb79a78f19f6b33c6a9303c89dc389409b8e8ac3a55', 1, 1, 'authToken', '[]', 0, '2020-10-27 03:15:35', '2020-10-27 03:15:35', '2021-10-27 03:15:35'),
('fe848745f8cff2e843872bcf6f497aecc47110fe3b23021a4d8307ed950651b87c1a270dc36c3760', 1, 1, 'authToken', '[]', 0, '2020-10-26 15:30:03', '2020-10-26 15:30:03', '2021-10-26 15:30:03');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Personal Access Client', 'pFr50gKU7tNGsulyhMwXDqW4ujRYSiwdRZVb8zC9', 'http://localhost', 1, 0, 0, '2020-10-24 10:01:44', '2020-10-24 10:01:44'),
(2, NULL, 'Laravel Password Grant Client', 'MuEMEX7Nsb36KvVFBZV99bAwOkEuZ8OBVfvo5cuN', 'http://localhost', 0, 1, 0, '2020-10-24 10:01:44', '2020-10-24 10:01:44');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2020-10-24 10:01:44', '2020-10-24 10:01:44');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Cyrille has update the service', '2020-10-24 17:08:27', '2020-10-24 17:13:38'),
(2, 'service profider', '2020-10-24 17:08:43', '2020-10-24 17:08:43'),
(4, 'working with passion', '2020-10-24 17:09:21', '2020-10-24 17:09:21'),
(5, 'James has his way', '2020-10-24 17:09:41', '2020-10-24 17:09:41');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` int(191) NOT NULL DEFAULT '1',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `is_active`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Cyrille Senami Hounvio', 'cyrisenahoun@gmail.com', 1, NULL, '$2y$10$ZC0GBmLWi0fp7UcnEdk5W./q2IuOKO/zTCEX7dttBSrw..Zd/3lSa', NULL, '2020-10-24 15:50:31', '2020-10-26 19:43:17'),
(5, 'Carole Yonas', 'yonas@gmail.com', 2, NULL, '$2y$10$BbZeD35YyDyPPNQxx6bma.HWet6LQb8QhUdjHX2yu0icUePSYGUi.', NULL, '2020-10-25 22:43:03', '2020-10-25 22:43:03'),
(10, 'Jessica Mills', 'sample@gmail.com', 1, NULL, '$2y$10$qNzRWKjwzxsqcvNbBlQHTuB06zDlK7yMjRN6DovgEp8A/D//70Lzu', NULL, '2020-10-27 03:38:31', '2020-10-27 03:38:49');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_personal_access_clients_client_id_index` (`client_id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
