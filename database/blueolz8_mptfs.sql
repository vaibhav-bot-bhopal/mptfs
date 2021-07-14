-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 05, 2021 at 02:13 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.4.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blueolz8_mptfs`
--

-- --------------------------------------------------------

--
-- Table structure for table `awareness_englishes`
--

CREATE TABLE `awareness_englishes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` date DEFAULT NULL,
  `time` time DEFAULT NULL,
  `place` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `discription` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `m_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `awareness_englishes`
--

INSERT INTO `awareness_englishes` (`id`, `title`, `slug`, `date`, `time`, `place`, `discription`, `image`, `m_image`, `created_at`, `updated_at`) VALUES
(6, 'Bagh Sakha', 'bagh-sakha', NULL, NULL, 'Bhopal', '<p style=\"text-align:center\"><span style=\"font-size:20px\"><strong>बाघ सखा प्रतियोगिता में रजिस्ट्रेशन करने की प्रक्रिया</strong></span></p>\r\n\r\n<p>यह बाघ सखा कार्यक्रम में भाग लेने के लिए रजिस्ट्रेशन की लिंक है</p>\r\n\r\n<ul>\r\n	<li><a href=\"https://www.bit.ly/baghsakha\" target=\"_blank\">https://www.bit.ly/baghsakha</a></li>\r\n</ul>\r\n\r\n<p>वे प्रतिभागी जो इस गतिविधि / टी-शर्ट पेंटिंग प्रतियोगिता में भाग लेना चाहते हैं उन्हें इस लिंक पर क्लिक करने की आवश्यकता है। क्लिक करने के बाद इक पेज ओपन हो जायेगा जो अगले फोटो में है</p>\r\n\r\n<p>प्रतिभागी को इस फॉर्म में , नीचे दिए हुए तरीके से एंट्री करनी पड़ेगी:</p>\r\n\r\n<p style=\"margin-left:40px\">Step 1) Name कॉलम / ड्राप डाउन में अपना पूरा नाम भर दें&nbsp;</p>\r\n\r\n<p style=\"margin-left:40px\">Step 2) E-mail कॉलम / ड्राप डाउन में ईमेल आई डी भर दें |&nbsp;<br />\r\nध्यान दें की इ मेल एकदम सही भरा गया है क्यूंकि इसी मेल पर आपके रजिस्ट्रेशन होने का मेल आएगा&nbsp;</p>\r\n\r\n<p style=\"margin-left:40px\">Step 3) Address कॉलम / ड्राप डाउन में एड्रेस भर दें&nbsp;</p>\r\n\r\n<p style=\"margin-left:40px\">Step 4) Phone कॉलम / ड्राप डाउन में फ़ोन नंबर (मोबाइल हो तो ज्यादा अच्छा) भरें</p>\r\n\r\n<p style=\"margin-left:40px\">Step 5) &nbsp;जहाँ यह प्रशन पुछा गया है &ldquo;Are you a student studying in Class 8th to Class 12th (for session Apr 2021 - Mar 2022) ?&rdquo; , तो उस कॉलम में अगर आप कक्षा 8 वीं से 12 वीं के छात्र/ छात्रा हैं तो &ldquo;हाँ&rdquo; भरें अन्यथा &ldquo;ना&rdquo; भर दें &nbsp;</p>\r\n\r\n<p style=\"margin-left:40px\">Step 6) City वाले कॉलम / ड्राप डाउन में &quot;Kota&quot; का चयन करें&nbsp;</p>\r\n\r\n<p style=\"margin-left:40px\">Step 7) Place वाले कॉलम/ड्राप डाउन में &quot; Shubh Atlantis &quot; का चयन करें&nbsp;</p>\r\n\r\n<p style=\"margin-left:40px\">Step 8) Date वाले कॉलम / ड्राप डाउन में &quot;13-06-2021&quot; का चयन करें, उसके बाद&nbsp;</p>\r\n\r\n<p style=\"margin-left:40px\">Step 9) Slot वाले कॉलम / ड्राप डाउन में &quot;Day 1&rdquo; Slot का चयन करें</p>\r\n\r\n<ul>\r\n	<li>फिलहाल हमारे सिस्टम में edit करने का आप्शन नहीं है इसीलिए अपनी सभी details एक बार में सही सही भरें और सबमिट करने से पहले फिर से चेक कर लें&nbsp;</li>\r\n	<li>केवल एक ही बार सबमिट करें , आपको &ldquo;details submitted successfully&rdquo; का मेसेज वही स्क्रीन पे ही दिख जायेगा और आपके द्वारा दिए गए मेल पे एक रजिस्ट्रेशन कन्फर्मेशन मेल भी आएगा &nbsp;(रजिस्ट्रेशन का ईमेल नहीं मिलने पे चिंता न करें और दुबारा रजिस्ट्रेशन करने से पूर्व हमें बता दें , हम server से चेक करके कन्फर्म कर देंगे की आपका रजिस्ट्रेशन हुआ है या नहीं)</li>\r\n	<li>किसी भी confusion को स्थिति में हमें संपर्क करें</li>\r\n</ul>', 'bagh-sakha-2021-06-24-60d4416a1cea8.jpeg', 'default.png', '2021-06-24 02:55:14', '2021-06-24 02:55:14');

-- --------------------------------------------------------

--
-- Table structure for table `awareness_hindis`
--

CREATE TABLE `awareness_hindis` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` date DEFAULT NULL,
  `time` time DEFAULT NULL,
  `place` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `discription` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `m_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `awareness_hindis`
--

INSERT INTO `awareness_hindis` (`id`, `title`, `slug`, `date`, `time`, `place`, `discription`, `image`, `m_image`, `created_at`, `updated_at`) VALUES
(3, 'बाघ सखा', 'b-gha-sakha', NULL, NULL, 'भोपाल', '<p style=\"text-align:center\"><span style=\"font-size:20px\"><strong>बाघ सखा प्रतियोगिता में रजिस्ट्रेशन करने की प्रक्रिया</strong></span></p>\r\n\r\n<p>यह बाघ सखा कार्यक्रम में भाग लेने के लिए रजिस्ट्रेशन की लिंक है</p>\r\n\r\n<ul>\r\n	<li><a href=\"https://www.bit.ly/baghsakha\" target=\"_blank\">https://www.bit.ly/baghsakha</a></li>\r\n</ul>\r\n\r\n<p>वे प्रतिभागी जो इस गतिविधि / टी-शर्ट पेंटिंग प्रतियोगिता में भाग लेना चाहते हैं उन्हें इस लिंक पर क्लिक करने की आवश्यकता है। क्लिक करने के बाद इक पेज ओपन हो जायेगा जो अगले फोटो में है&nbsp;</p>\r\n\r\n<p>प्रतिभागी को इस फॉर्म में , नीचे दिए हुए तरीके से एंट्री करनी पड़ेगी:</p>\r\n\r\n<p>Step 1) Name कॉलम / ड्राप डाउन में अपना पूरा नाम भर दें&nbsp;</p>\r\n\r\n<p>Step 2) E-mail कॉलम / ड्राप डाउन में ईमेल आई डी भर दें |&nbsp;<br />\r\nध्यान दें की इ मेल एकदम सही भरा गया है क्यूंकि इसी मेल पर आपके रजिस्ट्रेशन होने का मेल आएगा&nbsp;</p>\r\n\r\n<p>Step 3) Address कॉलम / ड्राप डाउन में एड्रेस भर दें&nbsp;</p>\r\n\r\n<p>Step 4) Phone कॉलम / ड्राप डाउन में फ़ोन नंबर (मोबाइल हो तो ज्यादा अच्छा) भरें</p>\r\n\r\n<p>Step 5) &nbsp;जहाँ यह प्रशन पुछा गया है &ldquo;Are you a student studying in Class 8th to Class 12th (for session Apr 2021 - Mar 2022) ?&rdquo; , तो उस कॉलम में अगर आप कक्षा 8 वीं से 12 वीं के छात्र/ छात्रा हैं तो &ldquo;हाँ&rdquo; भरें अन्यथा &ldquo;ना&rdquo; भर दें &nbsp;</p>\r\n\r\n<p>Step 6) City वाले कॉलम / ड्राप डाउन में &quot;Kota&quot; का चयन करें&nbsp;</p>\r\n\r\n<p>Step 7) Place वाले कॉलम/ड्राप डाउन में &quot; Shubh Atlantis &quot; का चयन करें&nbsp;</p>\r\n\r\n<p>Step 8) Date वाले कॉलम / ड्राप डाउन में &quot;13-06-2021&quot; का चयन करें, उसके बाद&nbsp;</p>\r\n\r\n<p>Step 9) Slot वाले कॉलम / ड्राप डाउन में &quot;Day 1&rdquo; Slot का चयन करें</p>\r\n\r\n<p>ध्यान रखने योग्य कुछ बातें:</p>\r\n\r\n<ul>\r\n	<li>फिलहाल हमारे सिस्टम में edit करने का आप्शन नहीं है इसीलिए अपनी सभी details एक बार में सही सही भरें और सबमिट करने से पहले फिर से चेक कर लें&nbsp;</li>\r\n	<li>केवल एक ही बार सबमिट करें , आपको &ldquo;details submitted successfully&rdquo; का मेसेज वही स्क्रीन पे ही दिख जायेगा और आपके द्वारा दिए गए मेल पे एक रजिस्ट्रेशन कन्फर्मेशन मेल भी आएगा &nbsp;(रजिस्ट्रेशन का ईमेल नहीं मिलने पे चिंता न करें और दुबारा रजिस्ट्रेशन करने से पूर्व हमें बता दें , हम server से चेक करके कन्फर्म कर देंगे की आपका रजिस्ट्रेशन हुआ है या नहीं)</li>\r\n	<li>किसी भी confusion को स्थिति में हमें संपर्क करें</li>\r\n</ul>', 'bgha-sakha-2021-06-24-60d454896ac38.jpeg', 'default.png', '2021-06-24 04:16:49', '2021-06-24 04:16:49');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default.png',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `image`, `created_at`, `updated_at`) VALUES
(4, 'HTML', 'html', 'html-2021-03-17-60522d3ab83b9.png', '2021-03-17 10:54:27', '2021-03-17 10:54:27'),
(5, 'CSS', 'css', 'css-2021-03-17-605259d5aecca.jpg', '2021-03-17 14:04:47', '2021-03-17 14:04:47');

-- --------------------------------------------------------

--
-- Table structure for table `category_post`
--

CREATE TABLE `category_post` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `post_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `category_post`
--

INSERT INTO `category_post` (`id`, `post_id`, `category_id`, `created_at`, `updated_at`) VALUES
(53, 56, 4, '2021-06-24 02:56:52', '2021-06-24 02:56:52');

-- --------------------------------------------------------

--
-- Table structure for table `category_post_hindi`
--

CREATE TABLE `category_post_hindi` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `post_hindi_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `category_post_hindi`
--

INSERT INTO `category_post_hindi` (`id`, `post_hindi_id`, `category_id`, `created_at`, `updated_at`) VALUES
(8, 10, 4, '2021-06-24 04:13:11', '2021-06-24 04:13:11');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `comment_hindis`
--

CREATE TABLE `comment_hindis` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `post_hindi_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `downloads`
--

CREATE TABLE `downloads` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `original_filename` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `filename` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_size` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `downloads`
--

INSERT INTO `downloads` (`id`, `original_filename`, `filename`, `file_size`, `created_at`, `updated_at`) VALUES
(7, 'Awareness-Initiatives-Banner.jpg', 'f7b66f94297aa2ec359e50aa816d730466646f7f.jpg', 391887, '2021-07-05 06:29:13', '2021-07-05 06:29:13'),
(8, 'Banner-1.jpg', '3d082ac75fc11065311ae5ec675a56159f811d7e.jpg', 1218554, '2021-07-05 06:29:13', '2021-07-05 06:29:13'),
(9, 'Banner-2.jpg', '757146b392aab32d6184f24a9f1fa15095727803.jpg', 535064, '2021-07-05 06:29:13', '2021-07-05 06:29:13'),
(10, 'Banner-3.jpg', '25873417d92f3b4fb7d85dae5c30336f35874f62.jpg', 623158, '2021-07-05 06:29:13', '2021-07-05 06:29:13'),
(11, 'Blog - Banner.jpg', '8d5d330f527be47a3488461ede0a9341757f150c.jpg', 3036911, '2021-07-05 06:29:14', '2021-07-05 06:29:14'),
(12, 'Contact - Banner.jpg', '4a174bf82475b87a44c5fc48f05e905bf60ad52a.jpg', 1944085, '2021-07-05 06:29:14', '2021-07-05 06:29:14'),
(13, 'Extra.jpg', 'ae0fb2573f877f5621a319d4b6681893079a0132.jpg', 704697, '2021-07-05 06:29:14', '2021-07-05 06:29:14'),
(14, 'Partners-Banner.jpg', '6c25b749d95edccef600f0a79f20d7ab479477a4.jpg', 1314803, '2021-07-05 06:29:14', '2021-07-05 06:29:14'),
(15, 'Project-Tiger-Banner.jpg', '51e02fce1337f036653824b8ffbffc297d5e76e9.jpg', 1306287, '2021-07-05 06:29:15', '2021-07-05 06:29:15');

-- --------------------------------------------------------

--
-- Table structure for table `event_englishes`
--

CREATE TABLE `event_englishes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `time` time DEFAULT NULL,
  `place` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discription` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `m_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `event_englishes`
--

INSERT INTO `event_englishes` (`id`, `title`, `slug`, `date`, `time`, `place`, `discription`, `image`, `m_image`, `created_at`, `updated_at`) VALUES
(17, 'Bagh Sakha', 'bagh-sakha', '2021-06-24', '13:53:00', 'Bhopal', '<p style=\"text-align:center\"><span style=\"font-size:20px\"><strong>बाघ सखा प्रतियोगिता में रजिस्ट्रेशन करने की प्रक्रिया</strong></span></p>\r\n\r\n<p>यह बाघ सखा कार्यक्रम में भाग लेने के लिए रजिस्ट्रेशन की लिंक है</p>\r\n\r\n<ul>\r\n	<li><a href=\"https://www.bit.ly/baghsakha\" target=\"_blank\">https://www.bit.ly/baghsakha</a></li>\r\n</ul>\r\n\r\n<p>वे प्रतिभागी जो इस गतिविधि / टी-शर्ट पेंटिंग प्रतियोगिता में भाग लेना चाहते हैं उन्हें इस लिंक पर क्लिक करने की आवश्यकता है। क्लिक करने के बाद इक पेज ओपन हो जायेगा जो अगले फोटो में है</p>\r\n\r\n<p>प्रतिभागी को इस फॉर्म में , नीचे दिए हुए तरीके से एंट्री करनी पड़ेगी:</p>\r\n\r\n<p style=\"margin-left:40px\">Step 1) Name कॉलम / ड्राप डाउन में अपना पूरा नाम भर दें&nbsp;</p>\r\n\r\n<p style=\"margin-left:40px\">Step 2) E-mail कॉलम / ड्राप डाउन में ईमेल आई डी भर दें |&nbsp;<br />\r\nध्यान दें की इ मेल एकदम सही भरा गया है क्यूंकि इसी मेल पर आपके रजिस्ट्रेशन होने का मेल आएगा&nbsp;</p>\r\n\r\n<p style=\"margin-left:40px\">Step 3) Address कॉलम / ड्राप डाउन में एड्रेस भर दें&nbsp;</p>\r\n\r\n<p style=\"margin-left:40px\">Step 4) Phone कॉलम / ड्राप डाउन में फ़ोन नंबर (मोबाइल हो तो ज्यादा अच्छा) भरें</p>\r\n\r\n<p style=\"margin-left:40px\">Step 5) &nbsp;जहाँ यह प्रशन पुछा गया है &ldquo;Are you a student studying in Class 8th to Class 12th (for session Apr 2021 - Mar 2022) ?&rdquo; , तो उस कॉलम में अगर आप कक्षा 8 वीं से 12 वीं के छात्र/ छात्रा हैं तो &ldquo;हाँ&rdquo; भरें अन्यथा &ldquo;ना&rdquo; भर दें &nbsp;</p>\r\n\r\n<p style=\"margin-left:40px\">Step 6) City वाले कॉलम / ड्राप डाउन में &quot;Kota&quot; का चयन करें&nbsp;</p>\r\n\r\n<p style=\"margin-left:40px\">Step 7) Place वाले कॉलम/ड्राप डाउन में &quot; Shubh Atlantis &quot; का चयन करें&nbsp;</p>\r\n\r\n<p style=\"margin-left:40px\">Step 8) Date वाले कॉलम / ड्राप डाउन में &quot;13-06-2021&quot; का चयन करें, उसके बाद&nbsp;</p>\r\n\r\n<p style=\"margin-left:40px\">Step 9) Slot वाले कॉलम / ड्राप डाउन में &quot;Day 1&rdquo; Slot का चयन करें</p>\r\n\r\n<ul>\r\n	<li>फिलहाल हमारे सिस्टम में edit करने का आप्शन नहीं है इसीलिए अपनी सभी details एक बार में सही सही भरें और सबमिट करने से पहले फिर से चेक कर लें&nbsp;</li>\r\n	<li>केवल एक ही बार सबमिट करें , आपको &ldquo;details submitted successfully&rdquo; का मेसेज वही स्क्रीन पे ही दिख जायेगा और आपके द्वारा दिए गए मेल पे एक रजिस्ट्रेशन कन्फर्मेशन मेल भी आएगा &nbsp;(रजिस्ट्रेशन का ईमेल नहीं मिलने पे चिंता न करें और दुबारा रजिस्ट्रेशन करने से पूर्व हमें बता दें , हम server से चेक करके कन्फर्म कर देंगे की आपका रजिस्ट्रेशन हुआ है या नहीं)</li>\r\n	<li>किसी भी confusion को स्थिति में हमें संपर्क करें</li>\r\n</ul>', 'bagh-sakha-2021-06-24-60d4411db0e33.jpeg', 'default.png', '2021-06-24 02:53:58', '2021-06-24 02:53:58');

-- --------------------------------------------------------

--
-- Table structure for table `event_hindis`
--

CREATE TABLE `event_hindis` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `place` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `discription` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `m_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `event_hindis`
--

INSERT INTO `event_hindis` (`id`, `title`, `slug`, `date`, `time`, `place`, `discription`, `image`, `m_image`, `created_at`, `updated_at`) VALUES
(3, 'बाघ सखा', 'b-gha-sakha', '2021-06-24', '15:15:00', 'भोपाल', '<p style=\"text-align:center\"><span style=\"font-size:20px\"><strong>बाघ सखा प्रतियोगिता में रजिस्ट्रेशन करने की प्रक्रिया</strong></span></p>\r\n\r\n<p>यह बाघ सखा कार्यक्रम में भाग लेने के लिए रजिस्ट्रेशन की लिंक है</p>\r\n\r\n<ul>\r\n	<li><a href=\"https://www.bit.ly/baghsakha\" target=\"_blank\">https://www.bit.ly/baghsakha</a></li>\r\n</ul>\r\n\r\n<p>वे प्रतिभागी जो इस गतिविधि / टी-शर्ट पेंटिंग प्रतियोगिता में भाग लेना चाहते हैं उन्हें इस लिंक पर क्लिक करने की आवश्यकता है। क्लिक करने के बाद इक पेज ओपन हो जायेगा जो अगले फोटो में है&nbsp;</p>\r\n\r\n<p>प्रतिभागी को इस फॉर्म में , नीचे दिए हुए तरीके से एंट्री करनी पड़ेगी:</p>\r\n\r\n<p>Step 1) Name कॉलम / ड्राप डाउन में अपना पूरा नाम भर दें&nbsp;</p>\r\n\r\n<p>Step 2) E-mail कॉलम / ड्राप डाउन में ईमेल आई डी भर दें |&nbsp;<br />\r\nध्यान दें की इ मेल एकदम सही भरा गया है क्यूंकि इसी मेल पर आपके रजिस्ट्रेशन होने का मेल आएगा&nbsp;</p>\r\n\r\n<p>Step 3) Address कॉलम / ड्राप डाउन में एड्रेस भर दें&nbsp;</p>\r\n\r\n<p>Step 4) Phone कॉलम / ड्राप डाउन में फ़ोन नंबर (मोबाइल हो तो ज्यादा अच्छा) भरें</p>\r\n\r\n<p>Step 5) &nbsp;जहाँ यह प्रशन पुछा गया है &ldquo;Are you a student studying in Class 8th to Class 12th (for session Apr 2021 - Mar 2022) ?&rdquo; , तो उस कॉलम में अगर आप कक्षा 8 वीं से 12 वीं के छात्र/ छात्रा हैं तो &ldquo;हाँ&rdquo; भरें अन्यथा &ldquo;ना&rdquo; भर दें &nbsp;</p>\r\n\r\n<p>Step 6) City वाले कॉलम / ड्राप डाउन में &quot;Kota&quot; का चयन करें&nbsp;</p>\r\n\r\n<p>Step 7) Place वाले कॉलम/ड्राप डाउन में &quot; Shubh Atlantis &quot; का चयन करें&nbsp;</p>\r\n\r\n<p>Step 8) Date वाले कॉलम / ड्राप डाउन में &quot;13-06-2021&quot; का चयन करें, उसके बाद&nbsp;</p>\r\n\r\n<p>Step 9) Slot वाले कॉलम / ड्राप डाउन में &quot;Day 1&rdquo; Slot का चयन करें</p>\r\n\r\n<p>ध्यान रखने योग्य कुछ बातें:</p>\r\n\r\n<ul>\r\n	<li>फिलहाल हमारे सिस्टम में edit करने का आप्शन नहीं है इसीलिए अपनी सभी details एक बार में सही सही भरें और सबमिट करने से पहले फिर से चेक कर लें&nbsp;</li>\r\n	<li>केवल एक ही बार सबमिट करें , आपको &ldquo;details submitted successfully&rdquo; का मेसेज वही स्क्रीन पे ही दिख जायेगा और आपके द्वारा दिए गए मेल पे एक रजिस्ट्रेशन कन्फर्मेशन मेल भी आएगा &nbsp;(रजिस्ट्रेशन का ईमेल नहीं मिलने पे चिंता न करें और दुबारा रजिस्ट्रेशन करने से पूर्व हमें बता दें , हम server से चेक करके कन्फर्म कर देंगे की आपका रजिस्ट्रेशन हुआ है या नहीं)</li>\r\n	<li>किसी भी confusion को स्थिति में हमें संपर्क करें</li>\r\n</ul>', 'bgha-sakha-2021-06-24-60d454654d732.jpeg', 'default.png', '2021-06-24 04:16:13', '2021-06-24 04:16:13');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `galleries`
--

CREATE TABLE `galleries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `original_filename` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `filename` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_size` bigint(20) NOT NULL,
  `file_path` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `galleries`
--

INSERT INTO `galleries` (`id`, `original_filename`, `filename`, `file_size`, `file_path`, `created_at`, `updated_at`) VALUES
(44, 'About-Us-Banner.jpg', 'cc1a5186982df8b361686634475c9f2c63a5b7b9.jpg', 140531, 'C:\\xampp\\htdocs\\mptigerfoundation.org\\storage\\app/public/gallery\\cc1a5186982df8b361686634475c9f2c63a5b7b9.jpg', '2021-06-26 01:06:37', '2021-06-26 01:06:37'),
(45, 'About-Us-Side-pic.jpg', 'fed49021757ee7679d6c80352e9c256d413d98b5.jpg', 277589, 'C:\\xampp\\htdocs\\mptigerfoundation.org\\storage\\app/public/gallery\\fed49021757ee7679d6c80352e9c256d413d98b5.jpg', '2021-06-26 01:06:37', '2021-06-26 01:06:37'),
(46, 'Awareness-Initiatives-Banner.jpg', '4fe162c29ca8803b22e53876f9297b5406988e05.jpg', 391887, 'C:\\xampp\\htdocs\\mptigerfoundation.org\\storage\\app/public/gallery\\4fe162c29ca8803b22e53876f9297b5406988e05.jpg', '2021-06-26 01:06:37', '2021-06-26 01:06:37'),
(47, 'Awareness-Initiatives-Ext.jpg', '0e6f9eb74d29989bdddabfa0ba1d29c00bbef84c.jpg', 85454, 'C:\\xampp\\htdocs\\mptigerfoundation.org\\storage\\app/public/gallery\\0e6f9eb74d29989bdddabfa0ba1d29c00bbef84c.jpg', '2021-06-26 01:06:37', '2021-06-26 01:06:37'),
(48, 'Banner-1.jpg', 'd92332d7b6d9a42ed47ea3f9f345a0d70753fc6c.jpg', 1218554, 'C:\\xampp\\htdocs\\mptigerfoundation.org\\storage\\app/public/gallery\\d92332d7b6d9a42ed47ea3f9f345a0d70753fc6c.jpg', '2021-06-26 01:06:38', '2021-06-26 01:06:38'),
(49, 'Banner-2.jpg', 'cdd9020a5f8b65ca55a86fa193cab1d0acb19edb.jpg', 535064, 'C:\\xampp\\htdocs\\mptigerfoundation.org\\storage\\app/public/gallery\\cdd9020a5f8b65ca55a86fa193cab1d0acb19edb.jpg', '2021-06-26 01:06:38', '2021-06-26 01:06:38'),
(50, 'Banner-3.jpg', '6fca68c06d2aff06bf609e53448b6dc1f357e37f.jpg', 623158, 'C:\\xampp\\htdocs\\mptigerfoundation.org\\storage\\app/public/gallery\\6fca68c06d2aff06bf609e53448b6dc1f357e37f.jpg', '2021-06-26 01:06:38', '2021-06-26 01:06:38'),
(51, 'BCRLIP-Banner.jpg', 'ed8959f43369a8cbe8e895559fb92cd8c8aeaf47.jpg', 1460003, 'C:\\xampp\\htdocs\\mptigerfoundation.org\\storage\\app/public/gallery\\ed8959f43369a8cbe8e895559fb92cd8c8aeaf47.jpg', '2021-06-26 01:06:38', '2021-06-26 01:06:38'),
(52, 'BCRLIP-Side-Pic.jpg', '722e44e249968c0d4e87c9ba9aafa2c5150bfe1c.jpg', 1879570, 'C:\\xampp\\htdocs\\mptigerfoundation.org\\storage\\app/public/gallery\\722e44e249968c0d4e87c9ba9aafa2c5150bfe1c.jpg', '2021-06-26 01:06:39', '2021-06-26 01:06:39'),
(53, 'Extra.jpg', 'b1c32d39de188c2d1662dd62ecb45f827e5324aa.jpg', 704697, 'C:\\xampp\\htdocs\\mptigerfoundation.org\\storage\\app/public/gallery\\b1c32d39de188c2d1662dd62ecb45f827e5324aa.jpg', '2021-06-26 01:06:39', '2021-06-26 01:06:39'),
(54, 'Governing-Body-Banner.jpg', 'fdca5a7c4d0d3f9952da9efce03d127d8d21876c.jpg', 1306020, 'C:\\xampp\\htdocs\\mptigerfoundation.org\\storage\\app/public/gallery\\fdca5a7c4d0d3f9952da9efce03d127d8d21876c.jpg', '2021-06-26 01:06:39', '2021-06-26 01:06:39'),
(55, 'Governing-Body-Side.jpg', 'e2cba1cf90fc57533260dd95dc84fd18dc6e788c.jpg', 255655, 'C:\\xampp\\htdocs\\mptigerfoundation.org\\storage\\app/public/gallery\\e2cba1cf90fc57533260dd95dc84fd18dc6e788c.jpg', '2021-06-26 01:06:39', '2021-06-26 01:06:39'),
(56, 'Other-PA(s).jpg', 'eefb90ca92bdefac287f0338fe20aa2bcfe3cab7.jpg', 1615286, 'C:\\xampp\\htdocs\\mptigerfoundation.org\\storage\\app/public/gallery\\eefb90ca92bdefac287f0338fe20aa2bcfe3cab7.jpg', '2021-06-26 01:06:39', '2021-06-26 01:06:39'),
(57, 'Partners.jpg', '39e7c4a309d2944615bbe0f9c18706f12ee08d44.jpg', 439238, 'C:\\xampp\\htdocs\\mptigerfoundation.org\\storage\\app/public/gallery\\39e7c4a309d2944615bbe0f9c18706f12ee08d44.jpg', '2021-06-26 01:06:39', '2021-06-26 01:06:39'),
(58, 'Partners-Banner.jpg', 'da206f66ca749392f8f485548221adb82d0b8b0b.jpg', 1314803, 'C:\\xampp\\htdocs\\mptigerfoundation.org\\storage\\app/public/gallery\\da206f66ca749392f8f485548221adb82d0b8b0b.jpg', '2021-06-26 01:06:40', '2021-06-26 01:06:40'),
(59, 'Project-Tiger-Banner.jpg', '71365a551b33cafbed1067c01b72e3bfbcee8b89.jpg', 1306287, 'C:\\xampp\\htdocs\\mptigerfoundation.org\\storage\\app/public/gallery\\71365a551b33cafbed1067c01b72e3bfbcee8b89.jpg', '2021-06-26 01:06:40', '2021-06-26 01:06:40'),
(60, 'Project-Tiger-Neeche.jpg', '5eaa3263e6190d2821e047d3c1cbf873602b9d1d.jpg', 1093509, 'C:\\xampp\\htdocs\\mptigerfoundation.org\\storage\\app/public/gallery\\5eaa3263e6190d2821e047d3c1cbf873602b9d1d.jpg', '2021-06-26 01:06:40', '2021-06-26 01:06:40'),
(61, 'Support-Banner.jpg', 'bcc764b44ef9c7ac5e4a5b8cdbecfb551f990f50.jpg', 1539966, 'C:\\xampp\\htdocs\\mptigerfoundation.org\\storage\\app/public/gallery\\bcc764b44ef9c7ac5e4a5b8cdbecfb551f990f50.jpg', '2021-06-26 01:06:40', '2021-06-26 01:06:40'),
(62, 'Support-Side.jpg', '7a024d9b5688319b0b35b172578d959c789789d9.jpg', 625297, 'C:\\xampp\\htdocs\\mptigerfoundation.org\\storage\\app/public/gallery\\7a024d9b5688319b0b35b172578d959c789789d9.jpg', '2021-06-26 01:06:41', '2021-06-26 01:06:41'),
(63, 'Tiger-Reserve-Banner.jpg', '26d5db9f88acd540284f0412a5bb5c8e29fe08dc.jpg', 2690685, 'C:\\xampp\\htdocs\\mptigerfoundation.org\\storage\\app/public/gallery\\26d5db9f88acd540284f0412a5bb5c8e29fe08dc.jpg', '2021-06-26 01:06:41', '2021-06-26 01:06:41'),
(64, 'Tiger-Reserves-Side.jpg', '6a94abba29cb50d98e9fdc8b74706a7c55201d4a.jpg', 864101, 'C:\\xampp\\htdocs\\mptigerfoundation.org\\storage\\app/public/gallery\\6a94abba29cb50d98e9fdc8b74706a7c55201d4a.jpg', '2021-06-26 01:06:41', '2021-06-26 01:06:41'),
(65, 'Training-Collage-1.jpg', '950d9ce87d057abea98473f84a28884916fbf595.jpg', 2698799, 'C:\\xampp\\htdocs\\mptigerfoundation.org\\storage\\app/public/gallery\\950d9ce87d057abea98473f84a28884916fbf595.jpg', '2021-06-26 01:06:41', '2021-06-26 01:06:41'),
(66, 'Training-n-Research-1-Cut-Vertically-orig.jpg', '4379cbc1b5b020027971d40c893e5def9f2ea5e8.jpg', 381605, 'C:\\xampp\\htdocs\\mptigerfoundation.org\\storage\\app/public/gallery\\4379cbc1b5b020027971d40c893e5def9f2ea5e8.jpg', '2021-06-26 01:06:42', '2021-06-26 01:06:42'),
(67, 'Training-n-Research-2-Cut-Vertically.jpg', 'cbfe16849429f5f927121a264a3e0ad7bce6d28c.jpg', 98983, 'C:\\xampp\\htdocs\\mptigerfoundation.org\\storage\\app/public/gallery\\cbfe16849429f5f927121a264a3e0ad7bce6d28c.jpg', '2021-06-26 01:06:42', '2021-06-26 01:06:42'),
(68, 'Training-n-Research-Banner.jpg', '42ca9cdcd9ee07c677d663eb3ca18a6b6f2be46d.jpg', 226844, 'C:\\xampp\\htdocs\\mptigerfoundation.org\\storage\\app/public/gallery\\42ca9cdcd9ee07c677d663eb3ca18a6b6f2be46d.jpg', '2021-06-26 01:06:42', '2021-06-26 01:06:42'),
(69, 'we-protect-wildlife-side-pic.jpg', 'f5b7480b067859909122a0b7400daaa77d7b065b.jpg', 913730, 'C:\\xampp\\htdocs\\mptigerfoundation.org\\storage\\app/public/gallery\\f5b7480b067859909122a0b7400daaa77d7b065b.jpg', '2021-06-26 01:06:42', '2021-06-26 01:06:42');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jobs`
--

INSERT INTO `jobs` (`id`, `queue`, `payload`, `attempts`, `reserved_at`, `available_at`, `created_at`) VALUES
(4, 'default', '{\"uuid\":\"71a91535-b765-45a3-b900-add072c5f31b\",\"displayName\":\"App\\\\Notifications\\\\NewAuthorPost\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"backoff\":\"\",\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":14:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:1;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:12:\\\"notification\\\";O:31:\\\"App\\\\Notifications\\\\NewAuthorPost\\\":11:{s:4:\\\"post\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\Post\\\";s:2:\\\"id\\\";i:11;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:2:\\\"id\\\";s:36:\\\"0258edc6-300c-4f97-9dc6-77e6469223bc\\\";s:6:\\\"locale\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1612637206, 1612637206),
(5, 'default', '{\"uuid\":\"9a700e4c-8246-4737-924b-48bbb580ed6d\",\"displayName\":\"App\\\\Notifications\\\\AuthorPostApproved\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"backoff\":\"\",\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":14:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:11;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:12:\\\"notification\\\";O:36:\\\"App\\\\Notifications\\\\AuthorPostApproved\\\":11:{s:4:\\\"post\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\Post\\\";s:2:\\\"id\\\";i:11;s:9:\\\"relations\\\";a:1:{i:0;s:4:\\\"user\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:2:\\\"id\\\";s:36:\\\"1eb3f688-3ab9-410f-8b4c-71b34317192c\\\";s:6:\\\"locale\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1612688881, 1612688881),
(6, 'default', '{\"uuid\":\"46429da5-18ea-4ce4-995b-f072836bb21c\",\"displayName\":\"App\\\\Notifications\\\\NewAuthorPost\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"backoff\":\"\",\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":14:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:1;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:12:\\\"notification\\\";O:31:\\\"App\\\\Notifications\\\\NewAuthorPost\\\":11:{s:4:\\\"post\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\Post\\\";s:2:\\\"id\\\";i:12;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:2:\\\"id\\\";s:36:\\\"2caaf068-9a9d-4f32-b9dd-0dc0abbcb3fb\\\";s:6:\\\"locale\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1612978406, 1612978406),
(7, 'default', '{\"uuid\":\"bf68d377-7d53-4b4a-9421-3d4ea649a589\",\"displayName\":\"App\\\\Notifications\\\\NewAuthorPost\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"backoff\":\"\",\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":14:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:1;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:12:\\\"notification\\\";O:31:\\\"App\\\\Notifications\\\\NewAuthorPost\\\":11:{s:4:\\\"post\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\Post\\\";s:2:\\\"id\\\";i:13;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:2:\\\"id\\\";s:36:\\\"763ef382-dfdb-4245-a636-7f375491e620\\\";s:6:\\\"locale\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1615960214, 1615960214),
(8, 'default', '{\"uuid\":\"7d964a71-3703-4780-863c-871326ada500\",\"displayName\":\"App\\\\Notifications\\\\AuthorPostApproved\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"backoff\":\"\",\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":14:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:3;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:12:\\\"notification\\\";O:36:\\\"App\\\\Notifications\\\\AuthorPostApproved\\\":11:{s:4:\\\"post\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\Post\\\";s:2:\\\"id\\\";i:13;s:9:\\\"relations\\\";a:1:{i:0;s:4:\\\"user\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:2:\\\"id\\\";s:36:\\\"2e8d15fa-21e9-415a-97c0-ab7f635a6eb0\\\";s:6:\\\"locale\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1615960316, 1615960316),
(9, 'default', '{\"uuid\":\"c9d52231-3983-47c8-9e97-ad9d4d703bba\",\"displayName\":\"App\\\\Notifications\\\\NewAuthorPost\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"backoff\":\"\",\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":14:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:1;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:12:\\\"notification\\\";O:31:\\\"App\\\\Notifications\\\\NewAuthorPost\\\":11:{s:4:\\\"post\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\Post\\\";s:2:\\\"id\\\";i:15;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:2:\\\"id\\\";s:36:\\\"5e79e041-f998-4504-8ec1-93759f34c487\\\";s:6:\\\"locale\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1615960616, 1615960616),
(10, 'default', '{\"uuid\":\"2644ecb9-c945-4975-98e4-4649927813aa\",\"displayName\":\"App\\\\Notifications\\\\AuthorPostApproved\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"backoff\":\"\",\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":14:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:3;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:12:\\\"notification\\\";O:36:\\\"App\\\\Notifications\\\\AuthorPostApproved\\\":11:{s:4:\\\"post\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\Post\\\";s:2:\\\"id\\\";i:15;s:9:\\\"relations\\\";a:1:{i:0;s:4:\\\"user\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:2:\\\"id\\\";s:36:\\\"a18148f3-6c1f-4aab-a152-40e5e5539794\\\";s:6:\\\"locale\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1615960639, 1615960639),
(11, 'default', '{\"uuid\":\"2bfb7f11-4b2c-4276-bba7-585b15fe998b\",\"displayName\":\"App\\\\Notifications\\\\NewAuthorPost\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"backoff\":\"\",\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":14:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:1;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:12:\\\"notification\\\";O:31:\\\"App\\\\Notifications\\\\NewAuthorPost\\\":11:{s:4:\\\"post\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\Post\\\";s:2:\\\"id\\\";i:18;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:2:\\\"id\\\";s:36:\\\"a7b03a67-a632-4b97-8453-34698366e509\\\";s:6:\\\"locale\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1615962780, 1615962780),
(12, 'default', '{\"uuid\":\"5f5f2855-36f8-43c6-b8cd-4806ba09a0d0\",\"displayName\":\"App\\\\Notifications\\\\AuthorPostApproved\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"backoff\":\"\",\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":14:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:3;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:12:\\\"notification\\\";O:36:\\\"App\\\\Notifications\\\\AuthorPostApproved\\\":11:{s:4:\\\"post\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\Post\\\";s:2:\\\"id\\\";i:18;s:9:\\\"relations\\\";a:1:{i:0;s:4:\\\"user\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:2:\\\"id\\\";s:36:\\\"21b8141b-bff5-422f-9756-5c175ad153aa\\\";s:6:\\\"locale\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1615962802, 1615962802),
(13, 'default', '{\"uuid\":\"a757d496-2205-42bd-b7be-014f665f5f0d\",\"displayName\":\"App\\\\Notifications\\\\NewAuthorPost\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"backoff\":\"\",\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":14:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:1;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:12:\\\"notification\\\";O:31:\\\"App\\\\Notifications\\\\NewAuthorPost\\\":11:{s:4:\\\"post\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\Post\\\";s:2:\\\"id\\\";i:20;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:2:\\\"id\\\";s:36:\\\"c5162477-8ea8-4399-a81d-432d1768342f\\\";s:6:\\\"locale\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1615964320, 1615964320),
(14, 'default', '{\"uuid\":\"10304e90-4732-40ad-bee8-e5c5931f384c\",\"displayName\":\"App\\\\Notifications\\\\AuthorPostApproved\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"backoff\":\"\",\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":14:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:3;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:12:\\\"notification\\\";O:36:\\\"App\\\\Notifications\\\\AuthorPostApproved\\\":11:{s:4:\\\"post\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\Post\\\";s:2:\\\"id\\\";i:20;s:9:\\\"relations\\\";a:1:{i:0;s:4:\\\"user\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:2:\\\"id\\\";s:36:\\\"f9d16cdb-34ac-4789-b084-9ab40dd47c8e\\\";s:6:\\\"locale\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1615964346, 1615964346),
(15, 'default', '{\"uuid\":\"baa64225-4ec5-43a5-845d-8fa994c426f9\",\"displayName\":\"App\\\\Notifications\\\\NewAuthorPost\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"backoff\":\"\",\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":14:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:1;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:12:\\\"notification\\\";O:31:\\\"App\\\\Notifications\\\\NewAuthorPost\\\":11:{s:4:\\\"post\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\Post\\\";s:2:\\\"id\\\";i:21;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:2:\\\"id\\\";s:36:\\\"1185c108-2233-4abc-816e-cefd0f1f8997\\\";s:6:\\\"locale\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1615964507, 1615964507),
(16, 'default', '{\"uuid\":\"73f7e04d-a754-4b59-a694-195a1d1a03ac\",\"displayName\":\"App\\\\Notifications\\\\NewAuthorPost\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"backoff\":\"\",\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":14:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:1;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:12:\\\"notification\\\";O:31:\\\"App\\\\Notifications\\\\NewAuthorPost\\\":11:{s:4:\\\"post\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\Post\\\";s:2:\\\"id\\\";i:22;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:2:\\\"id\\\";s:36:\\\"85a1431a-1d62-4c35-98dd-0aa443f5fcd8\\\";s:6:\\\"locale\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1615964691, 1615964691),
(17, 'default', '{\"uuid\":\"2557fafe-f0ab-4905-8d35-5e7627b33047\",\"displayName\":\"App\\\\Notifications\\\\NewAuthorPost\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"backoff\":\"\",\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":14:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:1;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:12:\\\"notification\\\";O:31:\\\"App\\\\Notifications\\\\NewAuthorPost\\\":11:{s:4:\\\"post\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\Post\\\";s:2:\\\"id\\\";i:23;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:2:\\\"id\\\";s:36:\\\"a4794e8f-06c3-434c-8931-7588bafedb6f\\\";s:6:\\\"locale\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1615964785, 1615964785),
(18, 'default', '{\"uuid\":\"8518d67c-50d9-4e4a-b604-ad2d6abb117a\",\"displayName\":\"App\\\\Notifications\\\\NewAuthorPost\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"backoff\":\"\",\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":14:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:1;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:12:\\\"notification\\\";O:31:\\\"App\\\\Notifications\\\\NewAuthorPost\\\":11:{s:4:\\\"post\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\Post\\\";s:2:\\\"id\\\";i:24;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:2:\\\"id\\\";s:36:\\\"4f5a0bd5-5386-4786-b336-4167eedebdfe\\\";s:6:\\\"locale\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1615965233, 1615965233),
(19, 'default', '{\"uuid\":\"5bd681ee-3bf7-4f01-bc52-d2253a610bec\",\"displayName\":\"App\\\\Notifications\\\\NewAuthorPost\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"backoff\":\"\",\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":14:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:1;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:12:\\\"notification\\\";O:31:\\\"App\\\\Notifications\\\\NewAuthorPost\\\":11:{s:4:\\\"post\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\Post\\\";s:2:\\\"id\\\";i:25;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:2:\\\"id\\\";s:36:\\\"4d7968d8-0233-4ba1-9137-476a2362c7d5\\\";s:6:\\\"locale\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1615965780, 1615965780),
(20, 'default', '{\"uuid\":\"84e3b1c4-97db-493e-bb6b-51170dd4c927\",\"displayName\":\"App\\\\Notifications\\\\NewAuthorPost\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"backoff\":\"\",\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":14:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:1;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:12:\\\"notification\\\";O:31:\\\"App\\\\Notifications\\\\NewAuthorPost\\\":11:{s:4:\\\"post\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:20:\\\"App\\\\Models\\\\PostHindi\\\";s:2:\\\"id\\\";i:3;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:2:\\\"id\\\";s:36:\\\"7997ca51-33a8-44d3-ac6c-2147c35e3c86\\\";s:6:\\\"locale\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1615967276, 1615967276),
(21, 'default', '{\"uuid\":\"fadf8608-b48a-4d01-8c0c-35874f7f6a74\",\"displayName\":\"App\\\\Notifications\\\\NewAuthorPost\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"backoff\":\"\",\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":14:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:1;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:12:\\\"notification\\\";O:31:\\\"App\\\\Notifications\\\\NewAuthorPost\\\":11:{s:4:\\\"post\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\Post\\\";s:2:\\\"id\\\";i:26;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:2:\\\"id\\\";s:36:\\\"5138a777-a1ce-4ab6-9453-919f0cc5365a\\\";s:6:\\\"locale\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1615967383, 1615967383),
(22, 'default', '{\"uuid\":\"bc5a9c90-5b3c-4233-8121-9af459ef22ca\",\"displayName\":\"App\\\\Notifications\\\\AuthorPostApproved\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"backoff\":\"\",\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":14:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:3;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:12:\\\"notification\\\";O:36:\\\"App\\\\Notifications\\\\AuthorPostApproved\\\":11:{s:4:\\\"post\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\Post\\\";s:2:\\\"id\\\";i:26;s:9:\\\"relations\\\";a:1:{i:0;s:4:\\\"user\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:2:\\\"id\\\";s:36:\\\"21e016ee-b21b-4fc2-9bac-b4ade227c520\\\";s:6:\\\"locale\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1615967408, 1615967408),
(23, 'default', '{\"uuid\":\"4aad63f0-0cd9-465c-a7c1-78267ce0ae6f\",\"displayName\":\"App\\\\Notifications\\\\NewAuthorPost\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"backoff\":\"\",\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":14:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:1;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:12:\\\"notification\\\";O:31:\\\"App\\\\Notifications\\\\NewAuthorPost\\\":11:{s:4:\\\"post\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\Post\\\";s:2:\\\"id\\\";i:27;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:2:\\\"id\\\";s:36:\\\"1ecfccd5-d876-4dce-8ead-e196bbf83269\\\";s:6:\\\"locale\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1615974466, 1615974466),
(24, 'default', '{\"uuid\":\"db9559e6-638d-461c-ba6d-1d9261d7c9a3\",\"displayName\":\"App\\\\Notifications\\\\NewAuthorPost\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"backoff\":\"\",\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":14:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:1;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:12:\\\"notification\\\";O:31:\\\"App\\\\Notifications\\\\NewAuthorPost\\\":11:{s:4:\\\"post\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:20:\\\"App\\\\Models\\\\PostHindi\\\";s:2:\\\"id\\\";i:4;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:2:\\\"id\\\";s:36:\\\"0a843e04-5bf1-4b14-9803-ce521a5d2d16\\\";s:6:\\\"locale\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1615974520, 1615974520),
(25, 'default', '{\"uuid\":\"6a76ff55-300c-43ad-b60b-9f178c75147b\",\"displayName\":\"App\\\\Notifications\\\\NewAuthorPost\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"backoff\":\"\",\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":14:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:1;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:12:\\\"notification\\\";O:31:\\\"App\\\\Notifications\\\\NewAuthorPost\\\":11:{s:4:\\\"post\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\Post\\\";s:2:\\\"id\\\";i:28;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:2:\\\"id\\\";s:36:\\\"ba271dac-81c9-4f0f-8534-105b3f177aef\\\";s:6:\\\"locale\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1615983900, 1615983900),
(26, 'default', '{\"uuid\":\"d242966b-181f-4d2e-96a5-23e85531fbe3\",\"displayName\":\"App\\\\Notifications\\\\NewAuthorPost\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"backoff\":\"\",\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":14:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:1;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:12:\\\"notification\\\";O:31:\\\"App\\\\Notifications\\\\NewAuthorPost\\\":11:{s:4:\\\"post\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\Post\\\";s:2:\\\"id\\\";i:29;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:2:\\\"id\\\";s:36:\\\"c3a59a5c-d75a-4f79-9ee5-ab54636bfc76\\\";s:6:\\\"locale\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1615984943, 1615984943),
(27, 'default', '{\"uuid\":\"e19fc23d-5b14-4693-ad8e-23627b2efc13\",\"displayName\":\"App\\\\Notifications\\\\NewAuthorPost\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"backoff\":\"\",\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":14:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:1;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:12:\\\"notification\\\";O:31:\\\"App\\\\Notifications\\\\NewAuthorPost\\\":11:{s:4:\\\"post\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\Post\\\";s:2:\\\"id\\\";i:30;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:2:\\\"id\\\";s:36:\\\"d2bba8e3-a6f4-45ed-99be-0216bfb9c51d\\\";s:6:\\\"locale\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1615985463, 1615985463),
(28, 'default', '{\"uuid\":\"c28dd970-f719-4c58-882d-79cc96dd91b7\",\"displayName\":\"App\\\\Notifications\\\\NewAuthorPost\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"backoff\":\"\",\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":14:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:1;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:12:\\\"notification\\\";O:31:\\\"App\\\\Notifications\\\\NewAuthorPost\\\":11:{s:4:\\\"post\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:20:\\\"App\\\\Models\\\\PostHindi\\\";s:2:\\\"id\\\";i:5;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:2:\\\"id\\\";s:36:\\\"9abb4713-5964-4f34-a7d3-32cd6b838b56\\\";s:6:\\\"locale\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1615986944, 1615986944),
(29, 'default', '{\"uuid\":\"bbdf0489-43a2-4565-be8a-42519b10eb81\",\"displayName\":\"App\\\\Notifications\\\\NewAuthorPost\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"backoff\":\"\",\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":14:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:1;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:12:\\\"notification\\\";O:31:\\\"App\\\\Notifications\\\\NewAuthorPost\\\":11:{s:4:\\\"post\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\Post\\\";s:2:\\\"id\\\";i:31;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:2:\\\"id\\\";s:36:\\\"7da427df-6140-4e75-93af-d84678de9729\\\";s:6:\\\"locale\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1615998304, 1615998304),
(30, 'default', '{\"uuid\":\"df9e5100-7bdd-4245-bf4d-fe68843b9cf7\",\"displayName\":\"App\\\\Notifications\\\\AuthorPostApproved\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"backoff\":\"\",\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":14:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:3;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:12:\\\"notification\\\";O:36:\\\"App\\\\Notifications\\\\AuthorPostApproved\\\":11:{s:4:\\\"post\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\Post\\\";s:2:\\\"id\\\";i:31;s:9:\\\"relations\\\";a:1:{i:0;s:4:\\\"user\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:2:\\\"id\\\";s:36:\\\"50c89232-c873-4ccc-9550-95e686c7caea\\\";s:6:\\\"locale\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1615998336, 1615998336),
(31, 'default', '{\"uuid\":\"1a23bf84-5266-47d5-b083-8d3d52eb16ce\",\"displayName\":\"App\\\\Notifications\\\\NewAuthorPost\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"backoff\":\"\",\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":14:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:1;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:12:\\\"notification\\\";O:31:\\\"App\\\\Notifications\\\\NewAuthorPost\\\":11:{s:4:\\\"post\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\Post\\\";s:2:\\\"id\\\";i:32;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:2:\\\"id\\\";s:36:\\\"2cf97737-9b59-4481-a4c5-fb2f9460590d\\\";s:6:\\\"locale\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1616006251, 1616006251),
(32, 'default', '{\"uuid\":\"4c974b02-701d-4d26-bbd4-6974eb236a91\",\"displayName\":\"App\\\\Notifications\\\\AuthorPostApproved\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"backoff\":\"\",\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":14:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:3;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:12:\\\"notification\\\";O:36:\\\"App\\\\Notifications\\\\AuthorPostApproved\\\":11:{s:4:\\\"post\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\Post\\\";s:2:\\\"id\\\";i:32;s:9:\\\"relations\\\";a:1:{i:0;s:4:\\\"user\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:2:\\\"id\\\";s:36:\\\"a80e0f76-df09-4c47-8d6e-1beddaba7b8c\\\";s:6:\\\"locale\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1616006438, 1616006438);
INSERT INTO `jobs` (`id`, `queue`, `payload`, `attempts`, `reserved_at`, `available_at`, `created_at`) VALUES
(33, 'default', '{\"uuid\":\"950afd95-571b-4149-a341-691be6dac340\",\"displayName\":\"App\\\\Notifications\\\\NewAuthorPost\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"backoff\":\"\",\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":14:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:1;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:12:\\\"notification\\\";O:31:\\\"App\\\\Notifications\\\\NewAuthorPost\\\":11:{s:4:\\\"post\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:20:\\\"App\\\\Models\\\\PostHindi\\\";s:2:\\\"id\\\";i:6;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:2:\\\"id\\\";s:36:\\\"c82cb3aa-4066-44de-a8fc-9e808c370ed9\\\";s:6:\\\"locale\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1616006603, 1616006603),
(34, 'default', '{\"uuid\":\"d4731bea-22a5-4068-a605-067aaabb9b1e\",\"displayName\":\"App\\\\Notifications\\\\AuthorPostApproved\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"backoff\":\"\",\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":14:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:3;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:12:\\\"notification\\\";O:36:\\\"App\\\\Notifications\\\\AuthorPostApproved\\\":11:{s:4:\\\"post\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:20:\\\"App\\\\Models\\\\PostHindi\\\";s:2:\\\"id\\\";i:6;s:9:\\\"relations\\\";a:1:{i:0;s:4:\\\"user\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:2:\\\"id\\\";s:36:\\\"4bee0ba4-fa99-4b43-b1ac-fb4f73047bda\\\";s:6:\\\"locale\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1616007277, 1616007277),
(35, 'default', '{\"uuid\":\"197ab024-d4f6-4cc4-ad8c-b41386f1f94b\",\"displayName\":\"App\\\\Notifications\\\\NewAuthorPost\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"backoff\":\"\",\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":14:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:1;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:12:\\\"notification\\\";O:31:\\\"App\\\\Notifications\\\\NewAuthorPost\\\":11:{s:4:\\\"post\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\Post\\\";s:2:\\\"id\\\";i:38;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:2:\\\"id\\\";s:36:\\\"cc4cd20c-00d7-484f-9f3c-4bc8a3e89207\\\";s:6:\\\"locale\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1616011003, 1616011003),
(36, 'default', '{\"uuid\":\"9d1e272b-a159-4442-8a59-e6d9e347e0fb\",\"displayName\":\"App\\\\Notifications\\\\NewAuthorPost\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"backoff\":\"\",\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":14:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:1;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:12:\\\"notification\\\";O:31:\\\"App\\\\Notifications\\\\NewAuthorPost\\\":11:{s:4:\\\"post\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:20:\\\"App\\\\Models\\\\PostHindi\\\";s:2:\\\"id\\\";i:7;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:2:\\\"id\\\";s:36:\\\"9203d3dc-f120-4d2d-92c2-39fe04028ad9\\\";s:6:\\\"locale\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1616011315, 1616011315),
(37, 'default', '{\"uuid\":\"36b0b0c3-d69c-4efd-93e5-13e713016199\",\"displayName\":\"App\\\\Notifications\\\\AuthorPostApproved\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"backoff\":\"\",\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":14:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:3;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:12:\\\"notification\\\";O:36:\\\"App\\\\Notifications\\\\AuthorPostApproved\\\":11:{s:4:\\\"post\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:20:\\\"App\\\\Models\\\\PostHindi\\\";s:2:\\\"id\\\";i:7;s:9:\\\"relations\\\";a:1:{i:0;s:4:\\\"user\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:2:\\\"id\\\";s:36:\\\"21e44372-8de7-41b5-ba57-76b4836d2bc4\\\";s:6:\\\"locale\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1616011471, 1616011471),
(38, 'default', '{\"uuid\":\"66861203-4393-48c7-b989-ef2c57392709\",\"displayName\":\"App\\\\Notifications\\\\NewAuthorPost\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"backoff\":\"\",\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":14:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:1;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:12:\\\"notification\\\";O:31:\\\"App\\\\Notifications\\\\NewAuthorPost\\\":11:{s:4:\\\"post\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\Post\\\";s:2:\\\"id\\\";i:40;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:2:\\\"id\\\";s:36:\\\"ceb673f4-8f6a-4f4b-9278-b3a3929534fb\\\";s:6:\\\"locale\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1616140919, 1616140919),
(39, 'default', '{\"uuid\":\"e53d61c5-2efe-4453-87f3-68ea7d8f7416\",\"displayName\":\"App\\\\Notifications\\\\NewAuthorPost\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"backoff\":\"\",\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":14:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:1;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:12:\\\"notification\\\";O:31:\\\"App\\\\Notifications\\\\NewAuthorPost\\\":11:{s:4:\\\"post\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\Post\\\";s:2:\\\"id\\\";i:41;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:2:\\\"id\\\";s:36:\\\"791a8ade-b8a1-4d81-88f8-c826dbf2e302\\\";s:6:\\\"locale\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1616147833, 1616147833),
(40, 'default', '{\"uuid\":\"e6fa8985-3422-40cd-8047-9271f7fa9028\",\"displayName\":\"App\\\\Notifications\\\\AuthorPostApproved\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"backoff\":\"\",\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":14:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:3;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:12:\\\"notification\\\";O:36:\\\"App\\\\Notifications\\\\AuthorPostApproved\\\":11:{s:4:\\\"post\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\Post\\\";s:2:\\\"id\\\";i:41;s:9:\\\"relations\\\";a:1:{i:0;s:4:\\\"user\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:2:\\\"id\\\";s:36:\\\"dcf9c3c5-3680-445d-93fe-a8c98bc52157\\\";s:6:\\\"locale\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1616149110, 1616149110);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(10, '2014_10_12_000000_create_users_table', 1),
(11, '2014_10_12_100000_create_password_resets_table', 1),
(12, '2019_08_19_000000_create_failed_jobs_table', 1),
(13, '2021_01_29_163326_create_roles_table', 1),
(14, '2021_01_30_155235_create_tags_table', 1),
(15, '2021_01_31_111259_create_categories_table', 1),
(16, '2021_01_31_171700_create_posts_table', 1),
(17, '2021_01_31_171955_create_category_post_table', 1),
(18, '2021_01_31_172030_create_post_tag_table', 1),
(19, '2021_02_02_082617_create_subscribers_table', 2),
(20, '2021_02_02_150640_create_jobs_table', 3),
(21, '2021_02_03_155612_create_post_user_table', 4),
(22, '2021_02_04_102211_create_comments_table', 5),
(23, '2021_02_09_080836_create_news_englishes_table', 6),
(24, '2021_02_10_054725_create_event_englishes_table', 7),
(25, '2021_02_10_122045_create_event_englishes_table', 8),
(26, '2021_02_15_103913_create_category_hindis_table', 9),
(28, '2021_03_17_072523_create_post_hindis_table', 10),
(30, '2021_03_17_074529_create_category_post_hindi_table', 11),
(31, '2021_03_18_065448_create_news_hindis_table', 12),
(32, '2021_03_18_081531_create_event_hindis_table', 13),
(33, '2021_03_19_084945_create_comment_hindis_table', 14),
(34, '2021_03_22_112232_create_awareness_englishes_table', 15),
(35, '2021_03_22_120416_create_awareness_hindis_table', 16),
(36, '2021_03_23_125114_create_galleries_table', 17),
(37, '2021_07_03_064740_create_downloads_table', 18);

-- --------------------------------------------------------

--
-- Table structure for table `news_englishes`
--

CREATE TABLE `news_englishes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `discription` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `m_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `news_englishes`
--

INSERT INTO `news_englishes` (`id`, `title`, `slug`, `discription`, `image`, `m_image`, `created_at`, `updated_at`) VALUES
(32, 'Bagh Sakha', 'bagh-sakha', '<p style=\"text-align:center\"><span style=\"font-size:20px\"><strong>बाघ सखा प्रतियोगिता में रजिस्ट्रेशन करने की प्रक्रिया</strong></span></p>\r\n\r\n<p>यह बाघ सखा कार्यक्रम में भाग लेने के लिए रजिस्ट्रेशन की लिंक है</p>\r\n\r\n<ul>\r\n	<li><a href=\"https://www.bit.ly/baghsakha\" target=\"_blank\">https://www.bit.ly/baghsakha</a></li>\r\n</ul>\r\n\r\n<p>वे प्रतिभागी जो इस गतिविधि / टी-शर्ट पेंटिंग प्रतियोगिता में भाग लेना चाहते हैं उन्हें इस लिंक पर क्लिक करने की आवश्यकता है। क्लिक करने के बाद इक पेज ओपन हो जायेगा जो अगले फोटो में है</p>\r\n\r\n<p>प्रतिभागी को इस फॉर्म में , नीचे दिए हुए तरीके से एंट्री करनी पड़ेगी:</p>\r\n\r\n<p style=\"margin-left:40px\">Step 1) Name कॉलम / ड्राप डाउन में अपना पूरा नाम भर दें&nbsp;</p>\r\n\r\n<p style=\"margin-left:40px\">Step 2) E-mail कॉलम / ड्राप डाउन में ईमेल आई डी भर दें |&nbsp;<br />\r\nध्यान दें की इ मेल एकदम सही भरा गया है क्यूंकि इसी मेल पर आपके रजिस्ट्रेशन होने का मेल आएगा&nbsp;</p>\r\n\r\n<p style=\"margin-left:40px\">Step 3) Address कॉलम / ड्राप डाउन में एड्रेस भर दें&nbsp;</p>\r\n\r\n<p style=\"margin-left:40px\">Step 4) Phone कॉलम / ड्राप डाउन में फ़ोन नंबर (मोबाइल हो तो ज्यादा अच्छा) भरें</p>\r\n\r\n<p style=\"margin-left:40px\">Step 5) &nbsp;जहाँ यह प्रशन पुछा गया है &ldquo;Are you a student studying in Class 8th to Class 12th (for session Apr 2021 - Mar 2022) ?&rdquo; , तो उस कॉलम में अगर आप कक्षा 8 वीं से 12 वीं के छात्र/ छात्रा हैं तो &ldquo;हाँ&rdquo; भरें अन्यथा &ldquo;ना&rdquo; भर दें &nbsp;</p>\r\n\r\n<p style=\"margin-left:40px\">Step 6) City वाले कॉलम / ड्राप डाउन में &quot;Kota&quot; का चयन करें&nbsp;</p>\r\n\r\n<p style=\"margin-left:40px\">Step 7) Place वाले कॉलम/ड्राप डाउन में &quot; Shubh Atlantis &quot; का चयन करें&nbsp;</p>\r\n\r\n<p style=\"margin-left:40px\">Step 8) Date वाले कॉलम / ड्राप डाउन में &quot;13-06-2021&quot; का चयन करें, उसके बाद&nbsp;</p>\r\n\r\n<p style=\"margin-left:40px\">Step 9) Slot वाले कॉलम / ड्राप डाउन में &quot;Day 1&rdquo; Slot का चयन करें</p>\r\n\r\n<ul>\r\n	<li>फिलहाल हमारे सिस्टम में edit करने का आप्शन नहीं है इसीलिए अपनी सभी details एक बार में सही सही भरें और सबमिट करने से पहले फिर से चेक कर लें&nbsp;</li>\r\n	<li>केवल एक ही बार सबमिट करें , आपको &ldquo;details submitted successfully&rdquo; का मेसेज वही स्क्रीन पे ही दिख जायेगा और आपके द्वारा दिए गए मेल पे एक रजिस्ट्रेशन कन्फर्मेशन मेल भी आएगा &nbsp;(रजिस्ट्रेशन का ईमेल नहीं मिलने पे चिंता न करें और दुबारा रजिस्ट्रेशन करने से पूर्व हमें बता दें , हम server से चेक करके कन्फर्म कर देंगे की आपका रजिस्ट्रेशन हुआ है या नहीं)</li>\r\n	<li>किसी भी confusion को स्थिति में हमें संपर्क करें</li>\r\n</ul>', 'bagh-sakha-2021-06-24-60d44099803de.jpeg', 'default.png', '2021-06-24 02:51:46', '2021-06-24 02:51:46');

-- --------------------------------------------------------

--
-- Table structure for table `news_hindis`
--

CREATE TABLE `news_hindis` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `discription` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `m_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `news_hindis`
--

INSERT INTO `news_hindis` (`id`, `title`, `slug`, `discription`, `image`, `m_image`, `created_at`, `updated_at`) VALUES
(6, 'बाघ सखा', 'b-gha-sakha', '<p style=\"text-align:center\"><span style=\"font-size:20px\"><strong>बाघ सखा प्रतियोगिता में रजिस्ट्रेशन करने की प्रक्रिया</strong></span></p>\r\n\r\n<p>यह बाघ सखा कार्यक्रम में भाग लेने के लिए रजिस्ट्रेशन की लिंक है</p>\r\n\r\n<ul>\r\n	<li><a href=\"https://www.bit.ly/baghsakha\" target=\"_blank\">https://www.bit.ly/baghsakha</a></li>\r\n</ul>\r\n\r\n<p>वे प्रतिभागी जो इस गतिविधि / टी-शर्ट पेंटिंग प्रतियोगिता में भाग लेना चाहते हैं उन्हें इस लिंक पर क्लिक करने की आवश्यकता है। क्लिक करने के बाद इक पेज ओपन हो जायेगा जो अगले फोटो में है&nbsp;</p>\r\n\r\n<p>प्रतिभागी को इस फॉर्म में , नीचे दिए हुए तरीके से एंट्री करनी पड़ेगी:</p>\r\n\r\n<p style=\"margin-left:40px\">Step 1) Name कॉलम / ड्राप डाउन में अपना पूरा नाम भर दें&nbsp;</p>\r\n\r\n<p style=\"margin-left:40px\">Step 2) E-mail कॉलम / ड्राप डाउन में ईमेल आई डी भर दें |&nbsp;<br />\r\nध्यान दें की इ मेल एकदम सही भरा गया है क्यूंकि इसी मेल पर आपके रजिस्ट्रेशन होने का मेल आएगा&nbsp;</p>\r\n\r\n<p style=\"margin-left:40px\">Step 3) Address कॉलम / ड्राप डाउन में एड्रेस भर दें&nbsp;</p>\r\n\r\n<p style=\"margin-left:40px\">Step 4) Phone कॉलम / ड्राप डाउन में फ़ोन नंबर (मोबाइल हो तो ज्यादा अच्छा) भरें</p>\r\n\r\n<p style=\"margin-left:40px\">Step 5) &nbsp;जहाँ यह प्रशन पुछा गया है &ldquo;Are you a student studying in Class 8th to Class 12th (for session Apr 2021 - Mar 2022) ?&rdquo; , तो उस कॉलम में अगर आप कक्षा 8 वीं से 12 वीं के छात्र/ छात्रा हैं तो &ldquo;हाँ&rdquo; भरें अन्यथा &ldquo;ना&rdquo; भर दें &nbsp;</p>\r\n\r\n<p style=\"margin-left:40px\">Step 6) City वाले कॉलम / ड्राप डाउन में &quot;Kota&quot; का चयन करें&nbsp;</p>\r\n\r\n<p style=\"margin-left:40px\">Step 7) Place वाले कॉलम/ड्राप डाउन में &quot; Shubh Atlantis &quot; का चयन करें&nbsp;</p>\r\n\r\n<p style=\"margin-left:40px\">Step 8) Date वाले कॉलम / ड्राप डाउन में &quot;13-06-2021&quot; का चयन करें, उसके बाद&nbsp;</p>\r\n\r\n<p style=\"margin-left:40px\">Step 9) Slot वाले कॉलम / ड्राप डाउन में &quot;Day 1&rdquo; Slot का चयन करें</p>\r\n\r\n<p style=\"margin-left:40px\">ध्यान रखने योग्य कुछ बातें:</p>\r\n\r\n<ul>\r\n	<li>फिलहाल हमारे सिस्टम में edit करने का आप्शन नहीं है इसीलिए अपनी सभी details एक बार में सही सही भरें और सबमिट करने से पहले फिर से चेक कर लें&nbsp;</li>\r\n	<li>केवल एक ही बार सबमिट करें , आपको &ldquo;details submitted successfully&rdquo; का मेसेज वही स्क्रीन पे ही दिख जायेगा और आपके द्वारा दिए गए मेल पे एक रजिस्ट्रेशन कन्फर्मेशन मेल भी आएगा &nbsp;(रजिस्ट्रेशन का ईमेल नहीं मिलने पे चिंता न करें और दुबारा रजिस्ट्रेशन करने से पूर्व हमें बता दें , हम server से चेक करके कन्फर्म कर देंगे की आपका रजिस्ट्रेशन हुआ है या नहीं)</li>\r\n	<li>किसी भी confusion को स्थिति में हमें संपर्क करें</li>\r\n</ul>', 'bgha-sakha-2021-06-24-60d4543988d98.jpeg', 'default.png', '2021-06-24 04:15:30', '2021-07-05 01:38:28');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default.png',
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `view_count` int(11) NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `is_approved` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `user_id`, `title`, `slug`, `image`, `body`, `view_count`, `status`, `is_approved`, `created_at`, `updated_at`) VALUES
(56, 1, 'बाघ सखा प्रतियोगिता में रजिस्ट्रेशन करने की प्रक्रिया', 'b-gha-sakha-pa-rata-ya-ga-ta-ma-raja-sa-ta-ra-shana-karana-ka-pa-raka-ra-ya', 'bagh-sakha-2021-06-24-60d441cb68d90.jpeg', '<p>बाघ सखा प्रतियोगिता में रजिस्ट्रेशन करने की प्रक्रिया</p>\r\n\r\n<p>यह बाघ सखा कार्यक्रम में भाग लेने के लिए रजिस्ट्रेशन की लिंक है</p>\r\n\r\n<ul>\r\n	<li><a href=\"https://www.bit.ly/baghsakha\" target=\"_blank\">https://www.bit.ly/baghsakha</a></li>\r\n</ul>\r\n\r\n<p>वे प्रतिभागी जो इस गतिविधि / टी-शर्ट पेंटिंग प्रतियोगिता में भाग लेना चाहते हैं उन्हें इस लिंक पर क्लिक करने की आवश्यकता है। क्लिक करने के बाद इक पेज ओपन हो जायेगा जो अगले फोटो में है</p>\r\n\r\n<p>प्रतिभागी को इस फॉर्म में , नीचे दिए हुए तरीके से एंट्री करनी पड़ेगी:</p>\r\n\r\n<p style=\"margin-left:40px\">Step 1) Name कॉलम / ड्राप डाउन में अपना पूरा नाम भर दें&nbsp;</p>\r\n\r\n<p style=\"margin-left:40px\">Step 2) E-mail कॉलम / ड्राप डाउन में ईमेल आई डी भर दें |&nbsp;<br />\r\nध्यान दें की इ मेल एकदम सही भरा गया है क्यूंकि इसी मेल पर आपके रजिस्ट्रेशन होने का मेल आएगा&nbsp;</p>\r\n\r\n<p style=\"margin-left:40px\">Step 3) Address कॉलम / ड्राप डाउन में एड्रेस भर दें&nbsp;</p>\r\n\r\n<p style=\"margin-left:40px\">Step 4) Phone कॉलम / ड्राप डाउन में फ़ोन नंबर (मोबाइल हो तो ज्यादा अच्छा) भरें</p>\r\n\r\n<p style=\"margin-left:40px\">Step 5) &nbsp;जहाँ यह प्रशन पुछा गया है &ldquo;Are you a student studying in Class 8th to Class 12th (for session Apr 2021 - Mar 2022) ?&rdquo; , तो उस कॉलम में अगर आप कक्षा 8 वीं से 12 वीं के छात्र/ छात्रा हैं तो &ldquo;हाँ&rdquo; भरें अन्यथा &ldquo;ना&rdquo; भर दें &nbsp;</p>\r\n\r\n<p style=\"margin-left:40px\">Step 6) City वाले कॉलम / ड्राप डाउन में &quot;Kota&quot; का चयन करें&nbsp;</p>\r\n\r\n<p style=\"margin-left:40px\">Step 7) Place वाले कॉलम/ड्राप डाउन में &quot; Shubh Atlantis &quot; का चयन करें&nbsp;</p>\r\n\r\n<p style=\"margin-left:40px\">Step 8) Date वाले कॉलम / ड्राप डाउन में &quot;13-06-2021&quot; का चयन करें, उसके बाद&nbsp;</p>\r\n\r\n<p style=\"margin-left:40px\">Step 9) Slot वाले कॉलम / ड्राप डाउन में &quot;Day 1&rdquo; Slot का चयन करें</p>\r\n\r\n<ul>\r\n	<li>फिलहाल हमारे सिस्टम में edit करने का आप्शन नहीं है इसीलिए अपनी सभी details एक बार में सही सही भरें और सबमिट करने से पहले फिर से चेक कर लें&nbsp;</li>\r\n	<li>केवल एक ही बार सबमिट करें , आपको &ldquo;details submitted successfully&rdquo; का मेसेज वही स्क्रीन पे ही दिख जायेगा और आपके द्वारा दिए गए मेल पे एक रजिस्ट्रेशन कन्फर्मेशन मेल भी आएगा &nbsp;(रजिस्ट्रेशन का ईमेल नहीं मिलने पे चिंता न करें और दुबारा रजिस्ट्रेशन करने से पूर्व हमें बता दें , हम server से चेक करके कन्फर्म कर देंगे की आपका रजिस्ट्रेशन हुआ है या नहीं)</li>\r\n	<li>किसी भी confusion को स्थिति में हमें संपर्क करें</li>\r\n</ul>', 4, 1, 1, '2021-06-24 02:56:52', '2021-07-05 01:26:27');

-- --------------------------------------------------------

--
-- Table structure for table `post_hindis`
--

CREATE TABLE `post_hindis` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default.png',
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `view_count` int(11) NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `is_approved` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `post_hindis`
--

INSERT INTO `post_hindis` (`id`, `user_id`, `title`, `slug`, `image`, `body`, `view_count`, `status`, `is_approved`, `created_at`, `updated_at`) VALUES
(10, 1, 'बाघ सखा', 'b-gha-sakha', 'bgha-sakha-2021-06-24-60d453ae3de27.jpeg', '<p>बाघ सखा प्रतियोगिता में रजिस्ट्रेशन करने की प्रक्रिया</p>\r\n\r\n<p>यह बाघ सखा कार्यक्रम में भाग लेने के लिए रजिस्ट्रेशन की लिंक है</p>\r\n\r\n<ul>\r\n	<li><a href=\"https://www.bit.ly/baghsakha\" target=\"_blank\">https://www.bit.ly/baghsakha</a></li>\r\n</ul>\r\n\r\n<p>वे प्रतिभागी जो इस गतिविधि / टी-शर्ट पेंटिंग प्रतियोगिता में भाग लेना चाहते हैं उन्हें इस लिंक पर क्लिक करने की आवश्यकता है। क्लिक करने के बाद इक पेज ओपन हो जायेगा जो अगले फोटो में है&nbsp;</p>\r\n\r\n<p>प्रतिभागी को इस फॉर्म में , नीचे दिए हुए तरीके से एंट्री करनी पड़ेगी:</p>\r\n\r\n<p style=\"margin-left:40px\">Step 1) Name कॉलम / ड्राप डाउन में अपना पूरा नाम भर दें&nbsp;</p>\r\n\r\n<p style=\"margin-left:40px\">Step 2) E-mail कॉलम / ड्राप डाउन में ईमेल आई डी भर दें |&nbsp;<br />\r\nध्यान दें की इ मेल एकदम सही भरा गया है क्यूंकि इसी मेल पर आपके रजिस्ट्रेशन होने का मेल आएगा&nbsp;</p>\r\n\r\n<p style=\"margin-left:40px\">Step 3) Address कॉलम / ड्राप डाउन में एड्रेस भर दें&nbsp;</p>\r\n\r\n<p style=\"margin-left:40px\">Step 4) Phone कॉलम / ड्राप डाउन में फ़ोन नंबर (मोबाइल हो तो ज्यादा अच्छा) भरें</p>\r\n\r\n<p style=\"margin-left:40px\">Step 5) &nbsp;जहाँ यह प्रशन पुछा गया है &ldquo;Are you a student studying in Class 8th to Class 12th (for session Apr 2021 - Mar 2022) ?&rdquo; , तो उस कॉलम में अगर आप कक्षा 8 वीं से 12 वीं के छात्र/ छात्रा हैं तो &ldquo;हाँ&rdquo; भरें अन्यथा &ldquo;ना&rdquo; भर दें &nbsp;</p>\r\n\r\n<p style=\"margin-left:40px\">Step 6) City वाले कॉलम / ड्राप डाउन में &quot;Kota&quot; का चयन करें&nbsp;</p>\r\n\r\n<p style=\"margin-left:40px\">Step 7) Place वाले कॉलम/ड्राप डाउन में &quot; Shubh Atlantis &quot; का चयन करें&nbsp;</p>\r\n\r\n<p style=\"margin-left:40px\">Step 8) Date वाले कॉलम / ड्राप डाउन में &quot;13-06-2021&quot; का चयन करें, उसके बाद&nbsp;</p>\r\n\r\n<p style=\"margin-left:40px\">Step 9) Slot वाले कॉलम / ड्राप डाउन में &quot;Day 1&rdquo; Slot का चयन करें</p>\r\n\r\n<p style=\"margin-left:40px\">ध्यान रखने योग्य कुछ बातें:</p>\r\n\r\n<ul style=\"margin-left:40px\">\r\n	<li>फिलहाल हमारे सिस्टम में edit करने का आप्शन नहीं है इसीलिए अपनी सभी details एक बार में सही सही भरें और सबमिट करने से पहले फिर से चेक कर लें&nbsp;</li>\r\n	<li>केवल एक ही बार सबमिट करें , आपको &ldquo;details submitted successfully&rdquo; का मेसेज वही स्क्रीन पे ही दिख जायेगा और आपके द्वारा दिए गए मेल पे एक रजिस्ट्रेशन कन्फर्मेशन मेल भी आएगा &nbsp;(रजिस्ट्रेशन का ईमेल नहीं मिलने पे चिंता न करें और दुबारा रजिस्ट्रेशन करने से पूर्व हमें बता दें , हम server से चेक करके कन्फर्म कर देंगे की आपका रजिस्ट्रेशन हुआ है या नहीं)</li>\r\n	<li>किसी भी confusion को स्थिति में हमें संपर्क करें</li>\r\n</ul>', 1, 1, 1, '2021-06-24 04:13:11', '2021-06-24 05:22:39');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin', NULL, NULL),
(2, 'Author', 'author', NULL, NULL),
(3, 'User', 'user', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` int(11) NOT NULL DEFAULT 2,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `profession` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `about` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `username`, `profession`, `email`, `email_verified_at`, `password`, `status`, `image`, `about`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 1, 'Super User', NULL, 'Full Stack Developer', 'superuser@gmail.com', NULL, '$2y$10$CJnheN87Us8FLJjUkNaCV.ySLhdJ47xGlBGaRhcOu5BEqwgkDeo72', 1, 'vibhu-2021-02-08-6020d8ea01a53.png', 'I am web developer and web designer.', NULL, '2021-01-31 12:35:58', '2021-02-08 01:00:46'),
(3, 2, 'Author', NULL, 'Web Developer', 'author@gmail.com', NULL, '$2y$10$Naeahx1EyZgR60E1jDiRqeLKgXWAueVXOR10JCxg1C9HrRG7sosZ.', 0, NULL, NULL, NULL, '2021-02-05 10:31:21', '2021-03-19 07:47:43'),
(12, 3, 'Administrator', NULL, 'Web Designer', 'admin@gmail.com', NULL, '$2y$10$vj58KHAbLmb9pNzjyX/NT.d4Cr/aP6KYdiHkEQ9kBarPuqgMGIhfa', 0, 'vibhu-2021-02-08-602113cee7838.png', NULL, NULL, '2021-02-08 02:43:09', '2021-02-15 04:31:41');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `awareness_englishes`
--
ALTER TABLE `awareness_englishes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `awareness_englishes_slug_unique` (`slug`);

--
-- Indexes for table `awareness_hindis`
--
ALTER TABLE `awareness_hindis`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `awareness_hindis_slug_unique` (`slug`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category_post`
--
ALTER TABLE `category_post`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category_post_hindi`
--
ALTER TABLE `category_post_hindi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_post_id_foreign` (`post_id`),
  ADD KEY `comments_user_id_foreign` (`user_id`);

--
-- Indexes for table `comment_hindis`
--
ALTER TABLE `comment_hindis`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comment_hindis_post_hindi_id_foreign` (`post_hindi_id`),
  ADD KEY `comment_hindis_user_id_foreign` (`user_id`);

--
-- Indexes for table `downloads`
--
ALTER TABLE `downloads`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `event_englishes`
--
ALTER TABLE `event_englishes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `slug` (`slug`);

--
-- Indexes for table `event_hindis`
--
ALTER TABLE `event_hindis`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `event_hindis_slug_unique` (`slug`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `galleries`
--
ALTER TABLE `galleries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news_englishes`
--
ALTER TABLE `news_englishes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `slug` (`slug`);

--
-- Indexes for table `news_hindis`
--
ALTER TABLE `news_hindis`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `news_hindis_slug_unique` (`slug`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`),
  ADD KEY `posts_user_id_foreign` (`user_id`);

--
-- Indexes for table `post_hindis`
--
ALTER TABLE `post_hindis`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `post_hindis_slug_unique` (`slug`),
  ADD KEY `post_hindis_user_id_foreign` (`user_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
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
-- AUTO_INCREMENT for table `awareness_englishes`
--
ALTER TABLE `awareness_englishes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `awareness_hindis`
--
ALTER TABLE `awareness_hindis`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `category_post`
--
ALTER TABLE `category_post`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `category_post_hindi`
--
ALTER TABLE `category_post_hindi`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `comment_hindis`
--
ALTER TABLE `comment_hindis`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `downloads`
--
ALTER TABLE `downloads`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `event_englishes`
--
ALTER TABLE `event_englishes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `event_hindis`
--
ALTER TABLE `event_hindis`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `galleries`
--
ALTER TABLE `galleries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `news_englishes`
--
ALTER TABLE `news_englishes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `news_hindis`
--
ALTER TABLE `news_hindis`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `post_hindis`
--
ALTER TABLE `post_hindis`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `comments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `comment_hindis`
--
ALTER TABLE `comment_hindis`
  ADD CONSTRAINT `comment_hindis_post_hindi_id_foreign` FOREIGN KEY (`post_hindi_id`) REFERENCES `post_hindis` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `comment_hindis_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `post_hindis`
--
ALTER TABLE `post_hindis`
  ADD CONSTRAINT `post_hindis_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
