-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Apr 25, 2025 at 10:27 AM
-- Server version: 5.7.39
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `eorder`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` int(11) DEFAULT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '0 - deactive, 1 - active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `token` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `role_id`, `username`, `email`, `first_name`, `last_name`, `image`, `password`, `status`, `created_at`, `updated_at`, `token`) VALUES
(1, NULL, 'admin', 'duxusidex@mailinator.com', 'Justin', 'Langer', '5f6c395833e14.jpg', '$2y$10$1FJBRGpBFqs6bPtfcx.WKeNvX1n8fbPW/QLz8IiemvWqjzVQWmW7u', 1, NULL, '2024-01-29 14:49:07', 'noqvhqCitQmzv56XiwNYbwdx5mURP5admin'),
(13, 8, 'manager', 'juqor@eample.com', 'Mr', 'Karim', '8483094a8215e666783bd33c2668d3b673b0e125.jpg', '$2y$10$D5aaKaYCy4ROaiUN/Txsqu4CI9VyOE0UypDgBs04QalNQTDGaSUKW', 1, '2024-01-21 16:41:13', '2024-01-29 14:48:46', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `backups`
--

CREATE TABLE `backups` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `filename` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `backups`
--

INSERT INTO `backups` (`id`, `filename`, `created_at`, `updated_at`) VALUES
(3, '2022-04-24-121935-dump-superv.sql', '2022-04-24 06:19:35', '2022-04-24 06:19:35');

-- --------------------------------------------------------

--
-- Table structure for table `basic_extendeds`
--

CREATE TABLE `basic_extendeds` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `language_id` int(11) DEFAULT NULL,
  `cookie_alert_status` tinyint(4) NOT NULL DEFAULT '1',
  `cookie_alert_text` blob,
  `cookie_alert_button_text` varchar(255) DEFAULT NULL,
  `to_mail` varchar(255) DEFAULT NULL,
  `default_language_direction` varchar(20) NOT NULL DEFAULT 'ltr' COMMENT 'ltr / rtl',
  `from_mail` varchar(255) DEFAULT NULL,
  `testimonial_img` varchar(255) DEFAULT NULL,
  `from_name` varchar(255) DEFAULT NULL,
  `is_smtp` tinyint(4) NOT NULL DEFAULT '0',
  `smtp_host` varchar(255) DEFAULT NULL,
  `smtp_port` varchar(30) DEFAULT NULL,
  `encryption` varchar(30) DEFAULT NULL,
  `smtp_username` varchar(255) DEFAULT NULL,
  `smtp_password` varchar(255) DEFAULT NULL,
  `base_currency_symbol` blob,
  `base_currency_symbol_position` varchar(10) NOT NULL DEFAULT 'left',
  `base_currency_text` varchar(100) DEFAULT NULL,
  `base_currency_text_position` varchar(10) NOT NULL DEFAULT 'right',
  `base_currency_rate` decimal(8,2) NOT NULL DEFAULT '0.00',
  `hero_section_title` varchar(255) DEFAULT NULL,
  `hero_section_text` varchar(255) DEFAULT NULL,
  `hero_section_button_text` varchar(30) DEFAULT NULL,
  `hero_section_button_url` text,
  `hero_section_video_url` text,
  `hero_img` varchar(50) DEFAULT NULL,
  `timezone` text,
  `contact_addresses` text,
  `contact_numbers` text,
  `contact_mails` text,
  `is_whatsapp` tinyint(4) NOT NULL DEFAULT '1',
  `whatsapp_number` varchar(50) DEFAULT NULL,
  `whatsapp_header_title` varchar(255) DEFAULT NULL,
  `whatsapp_popup_message` text,
  `whatsapp_popup` tinyint(4) NOT NULL DEFAULT '1',
  `domain_request_success_message` varchar(255) DEFAULT NULL,
  `cname_record_section_title` varchar(255) DEFAULT NULL,
  `cname_record_section_text` text,
  `package_features` text,
  `expiration_reminder` int(11) NOT NULL DEFAULT '3',
  `max_video_size` decimal(11,2) NOT NULL DEFAULT '20.00',
  `max_file_size` decimal(11,2) NOT NULL DEFAULT '10.00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `basic_extendeds`
--

INSERT INTO `basic_extendeds` (`id`, `language_id`, `cookie_alert_status`, `cookie_alert_text`, `cookie_alert_button_text`, `to_mail`, `default_language_direction`, `from_mail`, `testimonial_img`, `from_name`, `is_smtp`, `smtp_host`, `smtp_port`, `encryption`, `smtp_username`, `smtp_password`, `base_currency_symbol`, `base_currency_symbol_position`, `base_currency_text`, `base_currency_text_position`, `base_currency_rate`, `hero_section_title`, `hero_section_text`, `hero_section_button_text`, `hero_section_button_url`, `hero_section_video_url`, `hero_img`, `timezone`, `contact_addresses`, `contact_numbers`, `contact_mails`, `is_whatsapp`, `whatsapp_number`, `whatsapp_header_title`, `whatsapp_popup_message`, `whatsapp_popup`, `domain_request_success_message`, `cname_record_section_title`, `cname_record_section_text`, `package_features`, `expiration_reminder`, `max_video_size`, `max_file_size`) VALUES
(147, 176, 1, 0x596f757220657870657269656e6365206f6e207468697320736974652077696c6c20626520696d70726f76656420627920616c6c6f77696e6720636f6f6b6965732e, 'Allow Cookies', 'pratik.anwar@gmail.com', 'ltr', 'test@kreativdev.com', 'b19dfe727e15f5f06b7fe2accb10a62b7ea183cc.png', 'Supervsasso', 1, 'nl1-sr12.supercp.com', '587', 'TLS', 'test@kreativdev.com', 'xh=wf[%(GD!{', 0x24, 'left', 'USD', 'right', '1.00', 'Our Platform, Your Success', 'Build Your Own Restaurant Website', 'Explore Plans', '/pricing', 'https://www.youtube.com/watch?v=ufda7QD-EcM', '3765afe7ef38875c4ee8d409e2dcd62216f66582.png', 'America/Shiprock', 'California, USA\r\nLondon, United Kingdom\r\nMelbourne, Australia', '+8434197502,+2350575099,+23576039607', 'contact@example.com,support@example.com,query@example.com', 1, NULL, NULL, NULL, 1, 'We have received your custom domain request. Please allow us 2 business days to connect the domain with our server.', 'Read Before Sending Custom Domain Request', '<ul><li><font color=\"#575962\"><span style=\"font-weight:600;\"> Before sending request for your custom domain, You need to add a CNAME record (given in below table) in your custom domain from your domain registrar account (like - namecheap, godaddy etc...).</span></font></li><li><font color=\"#575962\"><span style=\"font-weight:600;\"> CNAME record is needed to point your custom domain to our domain ( profilo.xyz ), so that our website can show your portfolio on your domain</span></font></li><li><font color=\"#575962\"><span style=\"font-weight:600;\"> Different domain registrar (like - godaddy, namecheap etc...) has different interface for adding CNAME record. If you cannot find the place to add CNAME record in your domain registrar account, then please contact your domain registrar support, they will show you the place to add CNAME record for your custom domain</span></font></li></ul>', '[\"Custom Domain\",\"Subdomain\",\"POS\",\"Coupon\",\"Live Orders\",\"Whatsapp Order & Notification\",\"QR Menu\",\"Table Reservation\",\"Table QR Builder\",\"Call Waiter\",\"Staffs\",\"Blog\",\"Custom Page\",\"Online Order\",\"On Table\",\"Pick Up\",\"Home Delivery\",\"Postal Code Based Delivery Charge\",\"PWA Installability\"]', 4, '40.00', '5.00'),
(148, 177, 1, 0xd8b3d98ad8aad98520d8aad8add8b3d98ad98620d8aad8acd8b1d8a8d8aad98320d8b9d984d98920d987d8b0d8a720d8a7d984d985d988d982d8b920d985d98620d8aed984d8a7d98420d8a7d984d8b3d985d8a7d8ad20d8a8d985d984d981d8a7d8aa20d8aad8b9d8b1d98ad98120d8a7d984d8a7d8b1d8aad8a8d8a7d8b7, 'السماح للكوكيز', 'pratik.anwar@gmail.com', 'ltr', 'test@kreativdev.com', 'b19dfe727e15f5f06b7fe2accb10a62b7ea183cc.png', 'Supervsasso', 1, 'nl1-sr12.supercp.com', '587', 'TLS', 'test@kreativdev.com', 'xh=wf[%(GD!{', 0x24, 'left', 'USD', 'right', '1.00', 'منصتنا ، نجاحك', 'إنشاء موقع الدورة التدريبية الخاصة بك', 'اكتشف الخطط', '/pricing', 'https://www.youtube.com/watch?v=ufda7QD-EcM', '0dc89160f6d4b855a1909fddb05f579654a8dafb.png', 'America/Shiprock', 'منزل - 44 ، طريق - 03 ، قطاع - 11 ، أوتارا ، دكا\r\nدهانوندي ، دكا\r\nمحمدبور ، دكا', '237237237,72372332,+8967936437', 'contact@example.com,support@example.com,query@example.com', 1, NULL, NULL, NULL, 1, NULL, NULL, NULL, '[\"Custom Domain\",\"Subdomain\",\"POS\",\"Coupon\",\"Live Orders\",\"Whatsapp Order & Notification\",\"QR Menu\",\"Table Reservation\",\"Table QR Builder\",\"Call Waiter\",\"Staffs\",\"Blog\",\"Custom Page\",\"Online Order\",\"On Table\",\"Pick Up\",\"Home Delivery\",\"Postal Code Based Delivery Charge\",\"PWA Installability\"]', 3, '40.00', '5.00');

-- --------------------------------------------------------

--
-- Table structure for table `basic_settings`
--

CREATE TABLE `basic_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `language_id` int(11) DEFAULT NULL,
  `favicon` varchar(50) DEFAULT NULL,
  `logo` varchar(50) DEFAULT NULL,
  `preloader_status` tinyint(4) NOT NULL DEFAULT '1',
  `preloader` varchar(50) DEFAULT NULL,
  `website_title` varchar(255) DEFAULT NULL,
  `base_color` varchar(30) DEFAULT NULL,
  `base_color2` varchar(30) DEFAULT NULL,
  `breadcrumb` varchar(50) DEFAULT NULL,
  `footer_logo` varchar(50) DEFAULT NULL,
  `footer_text` varchar(255) DEFAULT NULL,
  `newsletter_text` varchar(255) DEFAULT NULL,
  `copyright_text` blob,
  `intro_subtitle` varchar(50) DEFAULT NULL,
  `intro_title` varchar(50) DEFAULT NULL,
  `intro_text` text,
  `intro_main_image` varchar(191) DEFAULT NULL,
  `contact_form_title` varchar(255) DEFAULT NULL,
  `contact_text` varchar(255) DEFAULT NULL,
  `contact_info_title` varchar(191) DEFAULT NULL,
  `tawk_to_script` text,
  `is_recaptcha` tinyint(4) NOT NULL DEFAULT '0',
  `google_recaptcha_site_key` varchar(255) DEFAULT NULL,
  `google_recaptcha_secret_key` varchar(255) DEFAULT NULL,
  `is_tawkto` tinyint(4) NOT NULL DEFAULT '1',
  `tawkto_property_id` varchar(255) DEFAULT NULL,
  `tawkto_chat_link` varchar(255) DEFAULT NULL,
  `is_disqus` tinyint(4) NOT NULL DEFAULT '1',
  `is_user_disqus` tinyint(4) NOT NULL DEFAULT '1',
  `disqus_shortname` varchar(255) DEFAULT NULL,
  `disqus_script` text,
  `maintainance_mode` tinyint(4) NOT NULL DEFAULT '0' COMMENT '1 - active, 0 - deactive',
  `maintainance_text` text,
  `maintenance_img` varchar(50) DEFAULT NULL,
  `maintenance_status` tinyint(4) NOT NULL DEFAULT '0',
  `secret_path` varchar(255) DEFAULT NULL,
  `home_section` tinyint(4) NOT NULL DEFAULT '1',
  `process_section` tinyint(4) NOT NULL DEFAULT '1',
  `featured_users_section` tinyint(4) NOT NULL DEFAULT '1',
  `pricing_section` tinyint(4) NOT NULL DEFAULT '1',
  `partners_section` tinyint(4) NOT NULL DEFAULT '1',
  `partner_title` varchar(255) DEFAULT NULL,
  `partner_subtitle` varchar(255) DEFAULT NULL,
  `intro_section` tinyint(4) NOT NULL DEFAULT '1',
  `intro_section_button_text` varchar(255) DEFAULT NULL,
  `intro_section_button_url` varchar(255) DEFAULT NULL,
  `intro_section_video_url` varchar(255) DEFAULT NULL,
  `testimonial_section` tinyint(4) NOT NULL DEFAULT '1',
  `feature_title` varchar(255) DEFAULT NULL,
  `work_process_title` varchar(255) DEFAULT NULL,
  `preview_templates_title` varchar(255) DEFAULT NULL,
  `preview_templates_subtitle` varchar(255) DEFAULT NULL,
  `featured_users_title` varchar(255) DEFAULT NULL,
  `featured_users_subtitle` varchar(255) DEFAULT NULL,
  `pricing_title` varchar(255) DEFAULT NULL,
  `pricing_subtitle` varchar(255) DEFAULT NULL,
  `testimonial_title` varchar(255) DEFAULT NULL,
  `testimonial_subtitle` varchar(255) DEFAULT NULL,
  `news_section` tinyint(4) NOT NULL DEFAULT '1',
  `template_section` tinyint(4) NOT NULL DEFAULT '1',
  `top_footer_section` tinyint(4) NOT NULL DEFAULT '1',
  `copyright_section` tinyint(4) NOT NULL DEFAULT '1',
  `blog_title` varchar(255) DEFAULT NULL,
  `blog_subtitle` varchar(255) DEFAULT NULL,
  `useful_links_title` varchar(50) DEFAULT NULL,
  `newsletter_title` varchar(50) DEFAULT NULL,
  `newsletter_subtitle` varchar(255) DEFAULT NULL,
  `is_whatsapp` tinyint(4) NOT NULL DEFAULT '1',
  `whatsapp_number` varchar(50) DEFAULT NULL,
  `whatsapp_header_title` varchar(255) DEFAULT NULL,
  `whatsapp_popup_message` text,
  `whatsapp_popup` tinyint(4) NOT NULL DEFAULT '1',
  `aws_access_key_id` varchar(255) DEFAULT NULL,
  `aws_secret_access_key` varchar(255) DEFAULT NULL,
  `aws_default_region` varchar(255) DEFAULT NULL,
  `aws_bucket` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `basic_settings`
--

INSERT INTO `basic_settings` (`id`, `language_id`, `favicon`, `logo`, `preloader_status`, `preloader`, `website_title`, `base_color`, `base_color2`, `breadcrumb`, `footer_logo`, `footer_text`, `newsletter_text`, `copyright_text`, `intro_subtitle`, `intro_title`, `intro_text`, `intro_main_image`, `contact_form_title`, `contact_text`, `contact_info_title`, `tawk_to_script`, `is_recaptcha`, `google_recaptcha_site_key`, `google_recaptcha_secret_key`, `is_tawkto`, `tawkto_property_id`, `tawkto_chat_link`, `is_disqus`, `is_user_disqus`, `disqus_shortname`, `disqus_script`, `maintainance_mode`, `maintainance_text`, `maintenance_img`, `maintenance_status`, `secret_path`, `home_section`, `process_section`, `featured_users_section`, `pricing_section`, `partners_section`, `partner_title`, `partner_subtitle`, `intro_section`, `intro_section_button_text`, `intro_section_button_url`, `intro_section_video_url`, `testimonial_section`, `feature_title`, `work_process_title`, `preview_templates_title`, `preview_templates_subtitle`, `featured_users_title`, `featured_users_subtitle`, `pricing_title`, `pricing_subtitle`, `testimonial_title`, `testimonial_subtitle`, `news_section`, `template_section`, `top_footer_section`, `copyright_section`, `blog_title`, `blog_subtitle`, `useful_links_title`, `newsletter_title`, `newsletter_subtitle`, `is_whatsapp`, `whatsapp_number`, `whatsapp_header_title`, `whatsapp_popup_message`, `whatsapp_popup`, `aws_access_key_id`, `aws_secret_access_key`, `aws_default_region`, `aws_bucket`) VALUES
(153, 176, 'b55defa7a38b66c98a655f890f6cd03aee2e05c9.png', '5abc08fb0f15ce2db52db532c5bcb16dea5f7601.png', 1, 'ae96227adb52366132cb13baa6eeae0e88ae50b8.gif', 'Eorder', 'FF6742', 'FF4B2B', '369c62035d98a57cb9eeef20b295dd004045eaf9.jpg', '6b8adba3a1a952306e44e86bf9342c5c1d4870a4.png', 'Eorder: Elevate dining. Multitenant hub for diverse flavors, seamless orders from top-tier restaurants. Subscribe for a unique culinary journey', 'Subscribe to gate Latest News, Offer and connect With Us.', 0x3c703e436f7079726967687420c2a920323032342e20416c6c2072696768747320726573657276656420627920654f726465722e3c2f703e, 'About Us', 'Why Choose Our Restaurant Platform', 'Discover Eorder—your culinary companion for diverse flavors and top-tier restaurants. From gourmet to casual, explore menus, place orders, and enjoy a seamless dining hub. \n\nElevate your gastronomic journey with the simplicity of Eorder, where indulgence is just a click away.', '62b2b131e6f12.png', 'Leave Reply', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum.', 'Contact Info', '<!--Start of Tawk.to Script-->\r\n<script type=\"text/javascript\">\r\nvar Tawk_API=Tawk_API||{}, Tawk_LoadStart=new Date();\r\n(function(){\r\nvar s1=document.createElement(\"script\"),s0=document.getElementsByTagName(\"script\")[0];\r\ns1.async=true;\r\ns1.src=\'https://embed.tawk.to/5f5e445f4704467e89ee918d/default\';\r\ns1.charset=\'UTF-8\';\r\ns1.setAttribute(\'crossorigin\',\'*\');\r\ns0.parentNode.insertBefore(s1,s0);\r\n})();\r\n</script>\r\n<!--End of Tawk.to Script-->', 0, '6LcOdFkpAAAAAETEI0CkavnbX8m8VLjj6YdU0yk3', '6LcOdFkpAAAAAKTyr4Jmx1zej7ych3ITX10MVwy3', 0, '60b886bbde99a4282a1b22a3', 'https://tawk.to/chat/654f2647cec6a912820ed3aa/1heuir292', 1, 1, 'plusagency-2-5', '<script>\r\n\r\n/**\r\n*  RECOMMENDED CONFIGURATION VARIABLES: EDIT AND UNCOMMENT THE SECTION BELOW TO INSERT DYNAMIC VALUES FROM YOUR PLATFORM OR CMS.\r\n*  LEARN WHY DEFINING THESE VARIABLES IS IMPORTANT: https://disqus.com/admin/universalcode/#configuration-variables*/\r\n/*\r\nvar disqus_config = function () {\r\nthis.page.url = PAGE_URL;  // Replace PAGE_URL with your page\'s canonical URL variable\r\nthis.page.identifier = PAGE_IDENTIFIER; // Replace PAGE_IDENTIFIER with your page\'s unique identifier variable\r\n};\r\n*/\r\n(function() { // DON\'T EDIT BELOW THIS LINE\r\nvar d = document, s = d.createElement(\'script\');\r\ns.src = \'https://plusagency.disqus.com/embed.js\';\r\ns.setAttribute(\'data-timestamp\', +new Date());\r\n(d.head || d.body).appendChild(s);\r\n})();\r\n</script>', 0, 'We are upgrading our site. We will come back soon. \r\nPlease stay with us.\r\nThank you....', '781b8e46f747e01ed91e520c8eb85dfcf84d46be.png', 0, NULL, 1, 1, 1, 1, 1, 'Our Partners', 'Take a Look at Our Amazing Partners', 1, 'Know More', 'about_us', 'https://www.youtube.com/watch?v=ufda7QD-EcM&t', 1, 'Features', 'How Eorder Works', 'Creative & User Friendly Design', 'See Our Restaurant Template', 'Our Featured Users', 'Take a Look at The Featured Users', 'Explore Attractive Pricing Features', 'Choose Your Plan', 'Our Happy Clients', 'What Our Clients Say', 1, 1, 1, 1, 'Blog', 'Latest Blog Posts', 'Useful Links', 'Newsletter', 'Get latest updates first', 0, '2367327069', 'Hi, There!', 'How can I help you?\r\ngreat', 1, 'AKIA42IHPRGEDXTQSCNT', 'lil//AWr0RGUHCsz7qvi3xm9EVJsumMArUNxvIAQ', 'ap-southeast-1', 'testdemoucket'),
(154, 177, 'b55defa7a38b66c98a655f890f6cd03aee2e05c9.png', '5abc08fb0f15ce2db52db532c5bcb16dea5f7601.png', 1, 'ae96227adb52366132cb13baa6eeae0e88ae50b8.gif', 'Eorder', 'FF6742', 'FF4B2B', '369c62035d98a57cb9eeef20b295dd004045eaf9.jpg', 'a5f1030b1212f85c0c1db38ef1607d47eabad80a.png', 'نحن شركة متعددة الأطراف فائزة بشكل كبير. نحن نؤمن بالجودة والمعايير التي نأخذها بعين الاعتبار.', 'Subscribe to gate Latest News, Offer and connect With Us.', 0x3c703ed8acd985d98ad8b920d8a7d984d8add982d988d98220d985d8add981d988d8b8d8a920c2a920323032343c2f703e, 'قصتنا', 'لدينا 20 عاما من الخبرة العملية في مقهى.', 'هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها. ولذلك يتم استخدام', '6195e994095b0.png', 'اترك الرد', 'هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل', 'معلومات الاتصال', '<!--Start of Tawk.to Script-->\r\n<script type=\"text/javascript\">\r\nvar Tawk_API=Tawk_API||{}, Tawk_LoadStart=new Date();\r\n(function(){\r\nvar s1=document.createElement(\"script\"),s0=document.getElementsByTagName(\"script\")[0];\r\ns1.async=true;\r\ns1.src=\'https://embed.tawk.to/5f5e445f4704467e89ee918d/default\';\r\ns1.charset=\'UTF-8\';\r\ns1.setAttribute(\'crossorigin\',\'*\');\r\ns0.parentNode.insertBefore(s1,s0);\r\n})();\r\n</script>\r\n<!--End of Tawk.to Script-->', 0, '6LcOdFkpAAAAAETEI0CkavnbX8m8VLjj6YdU0yk3', '6LcOdFkpAAAAAKTyr4Jmx1zej7ych3ITX10MVwy3', 0, '60b886bbde99a4282a1b22a3', 'https://tawk.to/chat/654f2647cec6a912820ed3aa/1heuir292', 1, 1, 'plusagency-2-5', '<script>\r\n\r\n/**\r\n*  RECOMMENDED CONFIGURATION VARIABLES: EDIT AND UNCOMMENT THE SECTION BELOW TO INSERT DYNAMIC VALUES FROM YOUR PLATFORM OR CMS.\r\n*  LEARN WHY DEFINING THESE VARIABLES IS IMPORTANT: https://disqus.com/admin/universalcode/#configuration-variables*/\r\n/*\r\nvar disqus_config = function () {\r\nthis.page.url = PAGE_URL;  // Replace PAGE_URL with your page\'s canonical URL variable\r\nthis.page.identifier = PAGE_IDENTIFIER; // Replace PAGE_IDENTIFIER with your page\'s unique identifier variable\r\n};\r\n*/\r\n(function() { // DON\'T EDIT BELOW THIS LINE\r\nvar d = document, s = d.createElement(\'script\');\r\ns.src = \'https://plusagency.disqus.com/embed.js\';\r\ns.setAttribute(\'data-timestamp\', +new Date());\r\n(d.head || d.body).appendChild(s);\r\n})();\r\n</script>', 0, 'We are upgrading our site. We will come back soon. \r\nPlease stay with us.\r\nThank you....', '781b8e46f747e01ed91e520c8eb85dfcf84d46be.png', 0, NULL, 1, 1, 1, 1, 1, 'لقد أثبت لنا إنجازنا العظيم!', 'لقد أكملنا أكثر من +500 مشروع برضا كلينت', 1, 'الفقرات في الصفحة التي', 'about_us', 'https://www.youtube.com/watch?v=ufda7QD-EcM&t', 1, 'متميز', 'آلية العمل', 'تصميم إبداعي وسهل الاستخدام', 'انظر نموذج التعليم الخاص بنا', 'مستخدم مميز', 'مستخدم مميز', 'التسعير', 'التسعير', 'شهادة', 'شهادة', 1, 1, 1, 1, 'المدونات', 'أحدث مدوناتنا', 'روابط مفيدة', 'النشرة الإخبارية', 'احصل على آخر التحديثات أولاً', 0, '2367327069', 'Hi, There!', 'How can I help you?\r\ngreat', 1, 'AKIA42IHPRGEDXTQSCNT', 'lil//AWr0RGUHCsz7qvi3xm9EVJsumMArUNxvIAQ', 'ap-southeast-1', 'testdemoucket');

-- --------------------------------------------------------

--
-- Table structure for table `bcategories`
--

CREATE TABLE `bcategories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `language_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `serial_number` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bcategories`
--

INSERT INTO `bcategories` (`id`, `language_id`, `name`, `status`, `serial_number`) VALUES
(1, 176, 'Cooking', 1, 1),
(3, 176, 'Foods', 1, 2),
(4, 176, 'Burgers', 1, 3),
(5, 176, 'Fun & Jamming', 1, 4),
(6, 176, 'Recipes', 1, 5),
(7, 177, 'طبخ', 1, 1),
(8, 177, 'أغذية', 1, 2),
(9, 177, 'برجر', 1, 3),
(10, 177, 'المرح والتشويش', 1, 4),
(11, 177, 'وصفات', 1, 5);

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `language_id` int(11) NOT NULL DEFAULT '0',
  `bcategory_id` int(11) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `main_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` blob,
  `tags` text COLLATE utf8mb4_unicode_ci,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `serial_number` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `language_id`, `bcategory_id`, `title`, `slug`, `main_image`, `content`, `tags`, `meta_keywords`, `meta_description`, `serial_number`, `created_at`, `updated_at`) VALUES
(66, 176, 1, 'Fusce convallis enim non magna Duis lacus dignissim.', 'Fusce-convallis-enim-non-magna-Duis-lacus-dignissim.', '431b138c2992e27b2ff5b0f843c51cf1d806973e.png', 0x3c703e69732073696d706c792064756d6d792074657874206f6620746865207072696e74696e6720616e64207479706573657474696e6720696e6475737472792e204c6f72656d20497073756d20686173206265656e2074686520696e6475737472792773207374616e646172642064756d6d79207465787420657665722073696e6365207468652031353030732c207768656e20616e20756e6b6e6f776e207072696e74657220746f6f6b20612067616c6c6579206f66207479706520616e6420736372616d626c656420697420746f206d616b65206120747970652073706563696d656e20626f6f6b2e2069732073696d706c792064756d6d792074657874206f6620746865207072696e74696e6720616e64207479706573657474696e6720696e6475737472792e204c6f72656d20497073756d20686173206265656e2074686520696e6475737472792773207374616e646172642064756d6d79207465787420657665722073696e6365207468652031353030732c207768656e20616e20756e6b6e6f776e207072696e74657220746f6f6b20612067616c6c6579206f66207479706520616e6420736372616d626c656420697420746f206d616b65206120747970652073706563696d656e20626f6f6b2e69732073696d706c792064756d6d792074657874206f6620746865207072696e74696e6720616e64207479706573657474696e6720696e6475737472792e204c6f72656d20497073756d20686173206265656e2074686520696e6475737472792773207374616e646172642064756d6d79207465787420657665722073696e6365207468652031353030732c207768656e20616e20756e6b6e6f776e207072696e74657220746f6f6b20612067616c6c6579206f66207479706520616e6420736372616d626c656420697420746f206d616b65206120747970652073706563696d656e20626f6f6b2e2069732073696d706c792064756d6d792074657874206f6620746865207072696e74696e6720616e64207479706573657474696e6720696e6475737472792e204c6f72656d20497073756d20686173206265656e2074686520696e6475737472792773207374616e646172642064756d6d79207465787420657665722073696e6365207468652031353030732c207768656e20616e20756e6b6e6f776e207072696e74657220746f6f6b20612067616c6c6579206f66207479706520616e6420736372616d626c656420697420746f206d616b65206120747970652073706563696d656e20626f6f6b2e69732073696d706c792064756d6d792074657874206f6620746865207072696e74696e6720616e64207479706573657474696e6720696e6475737472792e204c6f72656d20497073756d20686173206265656e2074686520696e6475737472792773207374616e646172642064756d6d79207465787420657665722073696e6365207468652031353030732c207768656e20616e20756e6b6e6f776e207072696e74657220746f6f6b20612067616c6c6579206f66207479706520616e6420736372616d626c656420697420746f206d616b65206120747970652073706563696d656e20626f6f6b2e2069732073696d706c792064756d6d792074657874206f6620746865207072696e74696e6720616e64207479706573657474696e6720696e6475737472792e204c6f72656d20497073756d20686173206265656e2074686520696e6475737472792773207374616e646172642064756d6d79207465787420657665722073696e6365207468652031353030732c207768656e20616e20756e6b6e6f776e207072696e74657220746f6f6b20612067616c6c6579206f66207479706520616e6420736372616d626c656420697420746f206d616b65206120747970652073706563696d656e20626f6f6b2e3c2f703e, NULL, NULL, NULL, 1, '2020-08-29 03:47:49', '2024-01-20 23:00:06'),
(67, 176, 3, 'Non magna pharetra facilisis. lacus nulla dignissim.', 'Non-magna-pharetra-facilisis.-lacus-nulla-dignissim.', '394832e1e3bf55d0456c2a7a74430106af76bfc9.png', 0x3c703e69732073696d706c792064756d6d792074657874206f6620746865207072696e74696e6720616e64207479706573657474696e6720696e6475737472792e204c6f72656d20497073756d20686173206265656e2074686520696e6475737472792773207374616e646172642064756d6d79207465787420657665722073696e6365207468652031353030732c207768656e20616e20756e6b6e6f776e207072696e74657220746f6f6b20612067616c6c6579206f66207479706520616e6420736372616d626c656420697420746f206d616b65206120747970652073706563696d656e20626f6f6b2e2069732073696d706c792064756d6d792074657874206f6620746865207072696e74696e6720616e64207479706573657474696e6720696e6475737472792e204c6f72656d20497073756d20686173206265656e2074686520696e6475737472792773207374616e646172642064756d6d79207465787420657665722073696e6365207468652031353030732c207768656e20616e20756e6b6e6f776e207072696e74657220746f6f6b20612067616c6c6579206f66207479706520616e6420736372616d626c656420697420746f206d616b65206120747970652073706563696d656e20626f6f6b2e69732073696d706c792064756d6d792074657874206f6620746865207072696e74696e6720616e64207479706573657474696e6720696e6475737472792e204c6f72656d20497073756d20686173206265656e2074686520696e6475737472792773207374616e646172642064756d6d79207465787420657665722073696e6365207468652031353030732c207768656e20616e20756e6b6e6f776e207072696e74657220746f6f6b20612067616c6c6579206f66207479706520616e6420736372616d626c656420697420746f206d616b65206120747970652073706563696d656e20626f6f6b2e2069732073696d706c792064756d6d792074657874206f6620746865207072696e74696e6720616e64207479706573657474696e6720696e6475737472792e204c6f72656d20497073756d20686173206265656e2074686520696e6475737472792773207374616e646172642064756d6d79207465787420657665722073696e6365207468652031353030732c207768656e20616e20756e6b6e6f776e207072696e74657220746f6f6b20612067616c6c6579206f66207479706520616e6420736372616d626c656420697420746f206d616b65206120747970652073706563696d656e20626f6f6b2e69732073696d706c792064756d6d792074657874206f6620746865207072696e74696e6720616e64207479706573657474696e6720696e6475737472792e204c6f72656d20497073756d20686173206265656e2074686520696e6475737472792773207374616e646172642064756d6d79207465787420657665722073696e6365207468652031353030732c207768656e20616e20756e6b6e6f776e207072696e74657220746f6f6b20612067616c6c6579206f66207479706520616e6420736372616d626c656420697420746f206d616b65206120747970652073706563696d656e20626f6f6b2e2069732073696d706c792064756d6d792074657874206f6620746865207072696e74696e6720616e64207479706573657474696e6720696e6475737472792e204c6f72656d20497073756d20686173206265656e2074686520696e6475737472792773207374616e646172642064756d6d79207465787420657665722073696e6365207468652031353030732c207768656e20616e20756e6b6e6f776e207072696e74657220746f6f6b20612067616c6c6579206f66207479706520616e6420736372616d626c656420697420746f206d616b65206120747970652073706563696d656e20626f6f6b2e3c2f703e, NULL, NULL, NULL, 2, '2020-08-29 03:50:37', '2024-01-20 23:16:53'),
(68, 176, 6, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor', 'Lorem-ipsum-dolor-sit-amet,-consectetur-adipiscing-elit,-sed-do-eiusmod-tempor', '03ed827469d0e3688fbc96f6223468e9c3fe0372.png', 0x3c703e69732073696d706c792064756d6d792074657874206f6620746865207072696e74696e6720616e64207479706573657474696e6720696e6475737472792e204c6f72656d20497073756d20686173206265656e2074686520696e6475737472792773207374616e646172642064756d6d79207465787420657665722073696e6365207468652031353030732c207768656e20616e20756e6b6e6f776e207072696e74657220746f6f6b20612067616c6c6579206f66207479706520616e6420736372616d626c656420697420746f206d616b65206120747970652073706563696d656e20626f6f6b2e2069732073696d706c792064756d6d792074657874206f6620746865207072696e74696e6720616e64207479706573657474696e6720696e6475737472792e204c6f72656d20497073756d20686173206265656e2074686520696e6475737472792773207374616e646172642064756d6d79207465787420657665722073696e6365207468652031353030732c207768656e20616e20756e6b6e6f776e207072696e74657220746f6f6b20612067616c6c6579206f66207479706520616e6420736372616d626c656420697420746f206d616b65206120747970652073706563696d656e20626f6f6b2e69732073696d706c792064756d6d792074657874206f6620746865207072696e74696e6720616e64207479706573657474696e6720696e6475737472792e204c6f72656d20497073756d20686173206265656e2074686520696e6475737472792773207374616e646172642064756d6d79207465787420657665722073696e6365207468652031353030732c207768656e20616e20756e6b6e6f776e207072696e74657220746f6f6b20612067616c6c6579206f66207479706520616e6420736372616d626c656420697420746f206d616b65206120747970652073706563696d656e20626f6f6b2e2069732073696d706c792064756d6d792074657874206f6620746865207072696e74696e6720616e64207479706573657474696e6720696e6475737472792e204c6f72656d20497073756d20686173206265656e2074686520696e6475737472792773207374616e646172642064756d6d79207465787420657665722073696e6365207468652031353030732c207768656e20616e20756e6b6e6f776e207072696e74657220746f6f6b20612067616c6c6579206f66207479706520616e6420736372616d626c656420697420746f206d616b65206120747970652073706563696d656e20626f6f6b2e69732073696d706c792064756d6d792074657874206f6620746865207072696e74696e6720616e64207479706573657474696e6720696e6475737472792e204c6f72656d20497073756d20686173206265656e2074686520696e6475737472792773207374616e646172642064756d6d79207465787420657665722073696e6365207468652031353030732c207768656e20616e20756e6b6e6f776e207072696e74657220746f6f6b20612067616c6c6579206f66207479706520616e6420736372616d626c656420697420746f206d616b65206120747970652073706563696d656e20626f6f6b2e2069732073696d706c792064756d6d792074657874206f6620746865207072696e74696e6720616e64207479706573657474696e6720696e6475737472792e204c6f72656d20497073756d20686173206265656e2074686520696e6475737472792773207374616e646172642064756d6d79207465787420657665722073696e6365207468652031353030732c207768656e20616e20756e6b6e6f776e207072696e74657220746f6f6b20612067616c6c6579206f66207479706520616e6420736372616d626c656420697420746f206d616b65206120747970652073706563696d656e20626f6f6b2e3c2f703e, NULL, NULL, NULL, 3, '2020-08-29 03:51:34', '2024-01-20 22:44:35'),
(69, 176, 3, 'Fusce convallis enim non magna Duis lacus dignissim.', 'Fusce-convallis-enim-non-magna-Duis-lacus-dignissim.', 'a876ea5d6bb81e8c7f97476140694f76530dc6e1.png', 0x3c703e69732073696d706c792064756d6d792074657874206f6620746865207072696e74696e6720616e64207479706573657474696e6720696e6475737472792e204c6f72656d20497073756d20686173206265656e2074686520696e6475737472792773207374616e646172642064756d6d79207465787420657665722073696e6365207468652031353030732c207768656e20616e20756e6b6e6f776e207072696e74657220746f6f6b20612067616c6c6579206f66207479706520616e6420736372616d626c656420697420746f206d616b65206120747970652073706563696d656e20626f6f6b2e2069732073696d706c792064756d6d792074657874206f6620746865207072696e74696e6720616e64207479706573657474696e6720696e6475737472792e204c6f72656d20497073756d20686173206265656e2074686520696e6475737472792773207374616e646172642064756d6d79207465787420657665722073696e6365207468652031353030732c207768656e20616e20756e6b6e6f776e207072696e74657220746f6f6b20612067616c6c6579206f66207479706520616e6420736372616d626c656420697420746f206d616b65206120747970652073706563696d656e20626f6f6b2e69732073696d706c792064756d6d792074657874206f6620746865207072696e74696e6720616e64207479706573657474696e6720696e6475737472792e204c6f72656d20497073756d20686173206265656e2074686520696e6475737472792773207374616e646172642064756d6d79207465787420657665722073696e6365207468652031353030732c207768656e20616e20756e6b6e6f776e207072696e74657220746f6f6b20612067616c6c6579206f66207479706520616e6420736372616d626c656420697420746f206d616b65206120747970652073706563696d656e20626f6f6b2e2069732073696d706c792064756d6d792074657874206f6620746865207072696e74696e6720616e64207479706573657474696e6720696e6475737472792e204c6f72656d20497073756d20686173206265656e2074686520696e6475737472792773207374616e646172642064756d6d79207465787420657665722073696e6365207468652031353030732c207768656e20616e20756e6b6e6f776e207072696e74657220746f6f6b20612067616c6c6579206f66207479706520616e6420736372616d626c656420697420746f206d616b65206120747970652073706563696d656e20626f6f6b2e69732073696d706c792064756d6d792074657874206f6620746865207072696e74696e6720616e64207479706573657474696e6720696e6475737472792e204c6f72656d20497073756d20686173206265656e2074686520696e6475737472792773207374616e646172642064756d6d79207465787420657665722073696e6365207468652031353030732c207768656e20616e20756e6b6e6f776e207072696e74657220746f6f6b20612067616c6c6579206f66207479706520616e6420736372616d626c656420697420746f206d616b65206120747970652073706563696d656e20626f6f6b2e2069732073696d706c792064756d6d792074657874206f6620746865207072696e74696e6720616e64207479706573657474696e6720696e6475737472792e204c6f72656d20497073756d20686173206265656e2074686520696e6475737472792773207374616e646172642064756d6d79207465787420657665722073696e6365207468652031353030732c207768656e20616e20756e6b6e6f776e207072696e74657220746f6f6b20612067616c6c6579206f66207479706520616e6420736372616d626c656420697420746f206d616b65206120747970652073706563696d656e20626f6f6b2e3c2f703e, NULL, NULL, NULL, 4, '2020-08-29 03:52:49', '2024-01-20 22:45:08'),
(70, 176, 1, 'Top 10 Most Popular E-commerce Website Template for Shopping', 'Top-10-Most-Popular-E-commerce-Website-Template-for-Shopping', '2121f447abc4ee04ae0ea0b20c7e9ba1a3ebf6f3.jpg', 0x69732073696d706c792064756d6d792074657874206f6620746865207072696e74696e6720616e64207479706573657474696e6720696e6475737472792e204c6f72656d20497073756d20686173206265656e2074686520696e6475737472792773207374616e646172642064756d6d79207465787420657665722073696e6365207468652031353030732c207768656e20616e20756e6b6e6f776e207072696e74657220746f6f6b20612067616c6c6579206f66207479706520616e6420736372616d626c656420697420746f206d616b65206120747970652073706563696d656e20626f6f6b2e2069732073696d706c792064756d6d792074657874206f6620746865207072696e74696e6720616e64207479706573657474696e6720696e6475737472792e204c6f72656d20497073756d20686173206265656e2074686520696e6475737472792773207374616e646172642064756d6d79207465787420657665722073696e6365207468652031353030732c207768656e20616e20756e6b6e6f776e207072696e74657220746f6f6b20612067616c6c6579206f66207479706520616e6420736372616d626c656420697420746f206d616b65206120747970652073706563696d656e20626f6f6b2e69732073696d706c792064756d6d792074657874206f6620746865207072696e74696e6720616e64207479706573657474696e6720696e6475737472792e204c6f72656d20497073756d20686173206265656e2074686520696e6475737472792773207374616e646172642064756d6d79207465787420657665722073696e6365207468652031353030732c207768656e20616e20756e6b6e6f776e207072696e74657220746f6f6b20612067616c6c6579206f66207479706520616e6420736372616d626c656420697420746f206d616b65206120747970652073706563696d656e20626f6f6b2e2069732073696d706c792064756d6d792074657874206f6620746865207072696e74696e6720616e64207479706573657474696e6720696e6475737472792e204c6f72656d20497073756d20686173206265656e2074686520696e6475737472792773207374616e646172642064756d6d79207465787420657665722073696e6365207468652031353030732c207768656e20616e20756e6b6e6f776e207072696e74657220746f6f6b20612067616c6c6579206f66207479706520616e6420736372616d626c656420697420746f206d616b65206120747970652073706563696d656e20626f6f6b2e69732073696d706c792064756d6d792074657874206f6620746865207072696e74696e6720616e64207479706573657474696e6720696e6475737472792e204c6f72656d20497073756d20686173206265656e2074686520696e6475737472792773207374616e646172642064756d6d79207465787420657665722073696e6365207468652031353030732c207768656e20616e20756e6b6e6f776e207072696e74657220746f6f6b20612067616c6c6579206f66207479706520616e6420736372616d626c656420697420746f206d616b65206120747970652073706563696d656e20626f6f6b2e2069732073696d706c792064756d6d792074657874206f6620746865207072696e74696e6720616e64207479706573657474696e6720696e6475737472792e204c6f72656d20497073756d20686173206265656e2074686520696e6475737472792773207374616e646172642064756d6d79207465787420657665722073696e6365207468652031353030732c207768656e20616e20756e6b6e6f776e207072696e74657220746f6f6b20612067616c6c6579206f66207479706520616e6420736372616d626c656420697420746f206d616b65206120747970652073706563696d656e20626f6f6b2e, NULL, NULL, NULL, 5, '2020-08-29 03:53:57', '2022-12-15 07:13:49'),
(71, 176, 5, 'Fusce convallis enim non magna Duis lacus dignissim.', 'Fusce-convallis-enim-non-magna-Duis-lacus-dignissim.', 'f2ba17caed8fffded57784e3c725cdce811be9b3.png', 0x3c703e69732073696d706c792064756d6d792074657874206f6620746865207072696e74696e6720616e64207479706573657474696e6720696e6475737472792e204c6f72656d20497073756d20686173206265656e2074686520696e6475737472792773207374616e646172642064756d6d79207465787420657665722073696e6365207468652031353030732c207768656e20616e20756e6b6e6f776e207072696e74657220746f6f6b20612067616c6c6579206f66207479706520616e6420736372616d626c656420697420746f206d616b65206120747970652073706563696d656e20626f6f6b2e2069732073696d706c792064756d6d792074657874206f6620746865207072696e74696e6720616e64207479706573657474696e6720696e6475737472792e204c6f72656d20497073756d20686173206265656e2074686520696e6475737472792773207374616e646172642064756d6d79207465787420657665722073696e6365207468652031353030732c207768656e20616e20756e6b6e6f776e207072696e74657220746f6f6b20612067616c6c6579206f66207479706520616e6420736372616d626c656420697420746f206d616b65206120747970652073706563696d656e20626f6f6b2e69732073696d706c792064756d6d792074657874206f6620746865207072696e74696e6720616e64207479706573657474696e6720696e6475737472792e204c6f72656d20497073756d20686173206265656e2074686520696e6475737472792773207374616e646172642064756d6d79207465787420657665722073696e6365207468652031353030732c207768656e20616e20756e6b6e6f776e207072696e74657220746f6f6b20612067616c6c6579206f66207479706520616e6420736372616d626c656420697420746f206d616b65206120747970652073706563696d656e20626f6f6b2e2069732073696d706c792064756d6d792074657874206f6620746865207072696e74696e6720616e64207479706573657474696e6720696e6475737472792e204c6f72656d20497073756d20686173206265656e2074686520696e6475737472792773207374616e646172642064756d6d79207465787420657665722073696e6365207468652031353030732c207768656e20616e20756e6b6e6f776e207072696e74657220746f6f6b20612067616c6c6579206f66207479706520616e6420736372616d626c656420697420746f206d616b65206120747970652073706563696d656e20626f6f6b2e69732073696d706c792064756d6d792074657874206f6620746865207072696e74696e6720616e64207479706573657474696e6720696e6475737472792e204c6f72656d20497073756d20686173206265656e2074686520696e6475737472792773207374616e646172642064756d6d79207465787420657665722073696e6365207468652031353030732c207768656e20616e20756e6b6e6f776e207072696e74657220746f6f6b20612067616c6c6579206f66207479706520616e6420736372616d626c656420697420746f206d616b65206120747970652073706563696d656e20626f6f6b2e2069732073696d706c792064756d6d792074657874206f6620746865207072696e74696e6720616e64207479706573657474696e6720696e6475737472792e204c6f72656d20497073756d20686173206265656e2074686520696e6475737472792773207374616e646172642064756d6d79207465787420657665722073696e6365207468652031353030732c207768656e20616e20756e6b6e6f776e207072696e74657220746f6f6b20612067616c6c6579206f66207479706520616e6420736372616d626c656420697420746f206d616b65206120747970652073706563696d656e20626f6f6b2e3c2f703e, NULL, NULL, NULL, 6, '2020-08-29 03:54:35', '2024-01-20 22:57:37'),
(72, 176, 3, 'Non magna pharetra facilisis. lacus nulla dignissim.', 'Non-magna-pharetra-facilisis.-lacus-nulla-dignissim.', '09b95a916648c481eb752f6fe64c681edda224c1.png', 0x3c703e69732073696d706c792064756d6d792074657874206f6620746865207072696e74696e6720616e64207479706573657474696e6720696e6475737472792e204c6f72656d20497073756d20686173206265656e2074686520696e6475737472792773207374616e646172642064756d6d79207465787420657665722073696e6365207468652031353030732c207768656e20616e20756e6b6e6f776e207072696e74657220746f6f6b20612067616c6c6579206f66207479706520616e6420736372616d626c656420697420746f206d616b65206120747970652073706563696d656e20626f6f6b2e2069732073696d706c792064756d6d792074657874206f6620746865207072696e74696e6720616e64207479706573657474696e6720696e6475737472792e204c6f72656d20497073756d20686173206265656e2074686520696e6475737472792773207374616e646172642064756d6d79207465787420657665722073696e6365207468652031353030732c207768656e20616e20756e6b6e6f776e207072696e74657220746f6f6b20612067616c6c6579206f66207479706520616e6420736372616d626c656420697420746f206d616b65206120747970652073706563696d656e20626f6f6b2e69732073696d706c792064756d6d792074657874206f6620746865207072696e74696e6720616e64207479706573657474696e6720696e6475737472792e204c6f72656d20497073756d20686173206265656e2074686520696e6475737472792773207374616e646172642064756d6d79207465787420657665722073696e6365207468652031353030732c207768656e20616e20756e6b6e6f776e207072696e74657220746f6f6b20612067616c6c6579206f66207479706520616e6420736372616d626c656420697420746f206d616b65206120747970652073706563696d656e20626f6f6b2e2069732073696d706c792064756d6d792074657874206f6620746865207072696e74696e6720616e64207479706573657474696e6720696e6475737472792e204c6f72656d20497073756d20686173206265656e2074686520696e6475737472792773207374616e646172642064756d6d79207465787420657665722073696e6365207468652031353030732c207768656e20616e20756e6b6e6f776e207072696e74657220746f6f6b20612067616c6c6579206f66207479706520616e6420736372616d626c656420697420746f206d616b65206120747970652073706563696d656e20626f6f6b2e69732073696d706c792064756d6d792074657874206f6620746865207072696e74696e6720616e64207479706573657474696e6720696e6475737472792e204c6f72656d20497073756d20686173206265656e2074686520696e6475737472792773207374616e646172642064756d6d79207465787420657665722073696e6365207468652031353030732c207768656e20616e20756e6b6e6f776e207072696e74657220746f6f6b20612067616c6c6579206f66207479706520616e6420736372616d626c656420697420746f206d616b65206120747970652073706563696d656e20626f6f6b2e2069732073696d706c792064756d6d792074657874206f6620746865207072696e74696e6720616e64207479706573657474696e6720696e6475737472792e204c6f72656d20497073756d20686173206265656e2074686520696e6475737472792773207374616e646172642064756d6d79207465787420657665722073696e6365207468652031353030732c207768656e20616e20756e6b6e6f776e207072696e74657220746f6f6b20612067616c6c6579206f66207479706520616e6420736372616d626c656420697420746f206d616b65206120747970652073706563696d656e20626f6f6b2e3c2f703e, NULL, NULL, NULL, 7, '2020-08-29 03:55:28', '2024-01-20 22:58:19'),
(73, 176, 3, 'Non magna pharetra facilisis. lacus nulla dignissim.', 'Non-magna-pharetra-facilisis.-lacus-nulla-dignissim.', 'bde9fc813dfa54105170b58b78710c8c27eaad53.png', 0x3c703e69732073696d706c792064756d6d792074657874206f6620746865207072696e74696e6720616e64207479706573657474696e6720696e6475737472792e204c6f72656d20497073756d20686173206265656e2074686520696e6475737472792773207374616e646172642064756d6d79207465787420657665722073696e6365207468652031353030732c207768656e20616e20756e6b6e6f776e207072696e74657220746f6f6b20612067616c6c6579206f66207479706520616e6420736372616d626c656420697420746f206d616b65206120747970652073706563696d656e20626f6f6b2e2069732073696d706c792064756d6d792074657874206f6620746865207072696e74696e6720616e64207479706573657474696e6720696e6475737472792e204c6f72656d20497073756d20686173206265656e2074686520696e6475737472792773207374616e646172642064756d6d79207465787420657665722073696e6365207468652031353030732c207768656e20616e20756e6b6e6f776e207072696e74657220746f6f6b20612067616c6c6579206f66207479706520616e6420736372616d626c656420697420746f206d616b65206120747970652073706563696d656e20626f6f6b2e69732073696d706c792064756d6d792074657874206f6620746865207072696e74696e6720616e64207479706573657474696e6720696e6475737472792e204c6f72656d20497073756d20686173206265656e2074686520696e6475737472792773207374616e646172642064756d6d79207465787420657665722073696e6365207468652031353030732c207768656e20616e20756e6b6e6f776e207072696e74657220746f6f6b20612067616c6c6579206f66207479706520616e6420736372616d626c656420697420746f206d616b65206120747970652073706563696d656e20626f6f6b2e2069732073696d706c792064756d6d792074657874206f6620746865207072696e74696e6720616e64207479706573657474696e6720696e6475737472792e204c6f72656d20497073756d20686173206265656e2074686520696e6475737472792773207374616e646172642064756d6d79207465787420657665722073696e6365207468652031353030732c207768656e20616e20756e6b6e6f776e207072696e74657220746f6f6b20612067616c6c6579206f66207479706520616e6420736372616d626c656420697420746f206d616b65206120747970652073706563696d656e20626f6f6b2e69732073696d706c792064756d6d792074657874206f6620746865207072696e74696e6720616e64207479706573657474696e6720696e6475737472792e204c6f72656d20497073756d20686173206265656e2074686520696e6475737472792773207374616e646172642064756d6d79207465787420657665722073696e6365207468652031353030732c207768656e20616e20756e6b6e6f776e207072696e74657220746f6f6b20612067616c6c6579206f66207479706520616e6420736372616d626c656420697420746f206d616b65206120747970652073706563696d656e20626f6f6b2e2069732073696d706c792064756d6d792074657874206f6620746865207072696e74696e6720616e64207479706573657474696e6720696e6475737472792e204c6f72656d20497073756d20686173206265656e2074686520696e6475737472792773207374616e646172642064756d6d79207465787420657665722073696e6365207468652031353030732c207768656e20616e20756e6b6e6f776e207072696e74657220746f6f6b20612067616c6c6579206f66207479706520616e6420736372616d626c656420697420746f206d616b65206120747970652073706563696d656e20626f6f6b2e3c2f703e, NULL, NULL, NULL, 8, '2020-08-29 03:56:02', '2024-01-20 22:58:50'),
(74, 176, 1, 'Fusce convallis enim non magna Duis lacus dignissim.', 'Fusce-convallis-enim-non-magna-Duis-lacus-dignissim.', '6f15ad0fb8d24ba4ba38aba05676351dc189f7b9.png', 0x3c703e69732073696d706c792064756d6d792074657874206f6620746865207072696e74696e6720616e64207479706573657474696e6720696e6475737472792e204c6f72656d20497073756d20686173206265656e2074686520696e6475737472792773207374616e646172642064756d6d79207465787420657665722073696e6365207468652031353030732c207768656e20616e20756e6b6e6f776e207072696e74657220746f6f6b20612067616c6c6579206f66207479706520616e6420736372616d626c656420697420746f206d616b65206120747970652073706563696d656e20626f6f6b2e2069732073696d706c792064756d6d792074657874206f6620746865207072696e74696e6720616e64207479706573657474696e6720696e6475737472792e204c6f72656d20497073756d20686173206265656e2074686520696e6475737472792773207374616e646172642064756d6d79207465787420657665722073696e6365207468652031353030732c207768656e20616e20756e6b6e6f776e207072696e74657220746f6f6b20612067616c6c6579206f66207479706520616e6420736372616d626c656420697420746f206d616b65206120747970652073706563696d656e20626f6f6b2e69732073696d706c792064756d6d792074657874206f6620746865207072696e74696e6720616e64207479706573657474696e6720696e6475737472792e204c6f72656d20497073756d20686173206265656e2074686520696e6475737472792773207374616e646172642064756d6d79207465787420657665722073696e6365207468652031353030732c207768656e20616e20756e6b6e6f776e207072696e74657220746f6f6b20612067616c6c6579206f66207479706520616e6420736372616d626c656420697420746f206d616b65206120747970652073706563696d656e20626f6f6b2e2069732073696d706c792064756d6d792074657874206f6620746865207072696e74696e6720616e64207479706573657474696e6720696e6475737472792e204c6f72656d20497073756d20686173206265656e2074686520696e6475737472792773207374616e646172642064756d6d79207465787420657665722073696e6365207468652031353030732c207768656e20616e20756e6b6e6f776e207072696e74657220746f6f6b20612067616c6c6579206f66207479706520616e6420736372616d626c656420697420746f206d616b65206120747970652073706563696d656e20626f6f6b2e69732073696d706c792064756d6d792074657874206f6620746865207072696e74696e6720616e64207479706573657474696e6720696e6475737472792e204c6f72656d20497073756d20686173206265656e2074686520696e6475737472792773207374616e646172642064756d6d79207465787420657665722073696e6365207468652031353030732c207768656e20616e20756e6b6e6f776e207072696e74657220746f6f6b20612067616c6c6579206f66207479706520616e6420736372616d626c656420697420746f206d616b65206120747970652073706563696d656e20626f6f6b2e2069732073696d706c792064756d6d792074657874206f6620746865207072696e74696e6720616e64207479706573657474696e6720696e6475737472792e204c6f72656d20497073756d20686173206265656e2074686520696e6475737472792773207374616e646172642064756d6d79207465787420657665722073696e6365207468652031353030732c207768656e20616e20756e6b6e6f776e207072696e74657220746f6f6b20612067616c6c6579206f66207479706520616e6420736372616d626c656420697420746f206d616b65206120747970652073706563696d656e20626f6f6b2e3c2f703e, NULL, NULL, NULL, 9, '2020-08-29 03:56:47', '2024-01-28 20:00:36'),
(75, 177, 7, 'هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز', 'هناك-حقيقة-مثبتة-منذ-زمن-طويل-وهي-أن-المحتوى-المقروء-لصفحة-ما-سيلهي-القارئ-عن-التركيز', 'a28ddbe2af3c4b17305a7f74e754c003f52fef48.png', 0x3c703ed987d986d8a7d98320d8add982d98ad982d8a920d985d8abd8a8d8aad8a920d985d986d8b020d8b2d985d98620d8b7d988d98ad98420d988d987d98a20d8a3d98620d8a7d984d985d8add8aad988d98920d8a7d984d985d982d8b1d988d8a120d984d8b5d981d8add8a920d985d8a720d8b3d98ad984d987d98a20d8a7d984d982d8a7d8b1d8a620d8b9d98620d8a7d984d8aad8b1d983d98ad8b220d8b9d984d98920d8a7d984d8b4d983d98420d8a7d984d8aed8a7d8b1d8acd98a20d984d984d986d8b520d8a3d98820d8b4d983d98420d8aad988d8b6d8b920d8a7d984d981d982d8b1d8a7d8aa20d981d98a20d8a7d984d8b5d981d8add8a920d8a7d984d8aad98a20d98ad982d8b1d8a3d987d8a72e20d988d984d8b0d984d98320d98ad8aad98520d8a7d8b3d8aad8aed8afd8a7d98520d8b7d8b1d98ad982d8a920d984d988d8b1d98ad98520d8a5d98ad8a8d8b3d988d98520d984d8a3d986d987d8a720d8aad8b9d8b7d98a20d8aad988d8b2d98ad8b9d8a7d98e20d8b7d8a8d98ad8b9d98ad8a7d98e202dd8a5d984d98920d8add8af20d985d8a72d20d984d984d8a3d8add8b1d98120d8b9d988d8b6d8a7d98b20d8b9d98620d8a7d8b3d8aad8aed8afd8a7d9852022d987d986d8a720d98ad988d8acd8af20d985d8add8aad988d98920d986d8b5d98ad88c20d987d986d8a720d98ad988d8acd8af20d985d8add8aad988d98920d986d8b5d98a2220d981d8aad8acd8b9d984d987d8a720d8aad8a8d8afd9882028d8a3d98a20d8a7d984d8a3d8add8b1d9812920d988d983d8a3d986d987d8a720d986d8b520d985d982d8b1d988d8a12e20d8a7d984d8b9d8afd98ad8af20d985d98620d8a8d8b1d8a7d985d8ad20d8a7d984d986d8b4d8b120d8a7d984d985d983d8aad8a8d98a20d988d8a8d8b1d8a7d985d8ad20d8aad8add8b1d98ad8b120d8b5d981d8add8a7d8aa20d8a7d984d988d98ad8a820d8aad8b3d8aad8aed8afd98520d984d988d8b1d98ad98520d8a5d98ad8a8d8b3d988d98520d8a8d8b4d983d98420d8a5d981d8aad8b1d8a7d8b6d98a20d983d986d985d988d8b0d8ac20d8b9d98620d8a7d984d986d8b5d88c20d988d8a5d8b0d8a720d982d985d8aa20d8a8d8a5d8afd8aed8a7d98420226c6f72656d20697073756d2220d981d98a20d8a3d98a20d985d8add8b1d98320d8a8d8add8ab20d8b3d8aad8b8d987d8b120d8a7d984d8b9d8afd98ad8af20d985d98620d8a7d984d985d988d8a7d982d8b920d8a7d984d8add8afd98ad8abd8a920d8a7d984d8b9d987d8af20d981d98a20d986d8aad8a7d8a6d8ac20d8a7d984d8a8d8add8ab2e20d8b9d984d98920d985d8afd98920d8a7d984d8b3d986d98ad98620d8b8d987d8b1d8aa20d986d8b3d8ae20d8acd8afd98ad8afd8a920d988d985d8aed8aad984d981d8a920d985d98620d986d8b520d984d988d8b1d98ad98520d8a5d98ad8a8d8b3d988d985d88c20d8a3d8add98ad8a7d986d8a7d98b20d8b9d98620d8b7d8b1d98ad98220d8a7d984d8b5d8afd981d8a9d88c20d988d8a3d8add98ad8a7d986d8a7d98b20d8b9d98620d8b9d985d8af20d983d8a5d8afd8aed8a7d98420d8a8d8b9d8b620d8a7d984d8b9d8a8d8a7d8b1d8a7d8aa20d8a7d984d981d983d8a7d987d98ad8a920d8a5d984d98ad987d8a72e20d987d986d8a7d984d98320d8a7d984d8b9d8afd98ad8af20d985d98620d8a7d984d8a3d986d988d8a7d8b920d8a7d984d985d8aad988d981d8b1d8a920d984d986d8b5d988d8b520d984d988d8b1d98ad98520d8a5d98ad8a8d8b3d988d985d88c20d988d984d983d98620d8a7d984d8bad8a7d984d8a8d98ad8a920d8aad98520d8aad8b9d8afd98ad984d987d8a720d8a8d8b4d983d98420d985d8a720d8b9d8a8d8b120d8a5d8afd8aed8a7d98420d8a8d8b9d8b620d8a7d984d986d988d8a7d8afd8b120d8a3d98820d8a7d984d983d984d985d8a7d8aa20d8a7d984d8b9d8b4d988d8a7d8a6d98ad8a920d8a5d984d98920d8a7d984d986d8b52e20d8a5d98620d983d986d8aa20d8aad8b1d98ad8af20d8a3d98620d8aad8b3d8aad8aed8afd98520d986d8b520d984d988d8b1d98ad98520d8a5d98ad8a8d8b3d988d98520d985d8a7d88c20d8b9d984d98ad98320d8a3d98620d8aad8aad8add982d98220d8a3d988d984d8a7d98b20d8a3d98620d984d98ad8b320d987d986d8a7d98320d8a3d98a20d983d984d985d8a7d8aa20d8a3d98820d8b9d8a8d8a7d8b1d8a7d8aa20d985d8add8b1d8acd8a920d8a3d98820d8bad98ad8b120d984d8a7d8a6d982d8a920d985d8aed8a8d8a3d8a920d981d98a20d987d8b0d8a720d8a7d984d986d8b52e20d8a8d98ad986d985d8a720d8aad8b9d985d98420d8acd985d98ad8b920d985d988d984d991d8afd8a7d8aa20d986d8b5d988d8b520d984d988d8b1d98ad98520d8a5d98ad8a8d8b3d988d98520d8b9d984d98920d8a7d984d8a5d986d8aad8b1d986d8aa20d8b9d984d98920d8a5d8b9d8a7d8afd8a920d8aad983d8b1d8a7d8b120d985d982d8a7d8b7d8b920d985d98620d986d8b520d984d988d8b1d98ad98520d8a5d98ad8a8d8b3d988d98520d986d981d8b3d98720d8b9d8afd8a920d985d8b1d8a7d8aa20d8a8d985d8a720d8aad8aad8b7d984d8a8d98720d8a7d984d8add8a7d8acd8a9d88c20d98ad982d988d98520d985d988d984d991d8afd986d8a720d987d8b0d8a720d8a8d8a7d8b3d8aad8aed8afd8a7d98520d983d984d985d8a7d8aa20d985d98620d982d8a7d985d988d8b320d98ad8add988d98a20d8b9d984d98920d8a3d983d8abd8b120d985d9862032303020d983d984d985d8a920d984d8a720d8aad98ad986d98ad8a9d88c20d985d8b6d8a7d98120d8a5d984d98ad987d8a720d985d8acd985d988d8b9d8a920d985d98620d8a7d984d8acd985d98420d8a7d984d986d985d988d8b0d8acd98ad8a9d88c20d984d8aad983d988d98ad98620d986d8b520d984d988d8b1d98ad98520d8a5d98ad8a8d8b3d988d98520d8b0d98820d8b4d983d98420d985d986d8b7d982d98a20d982d8b1d98ad8a820d8a5d984d98920d8a7d984d986d8b520d8a7d984d8add982d98ad982d98a2e20d988d8a8d8a7d984d8aad8a7d984d98a20d98ad983d988d98620d8a7d984d986d8b520d8a7d984d986d8a7d8aad8ad20d8aed8a7d984d98a20d985d98620d8a7d984d8aad983d8b1d8a7d8b1d88c20d8a3d98820d8a3d98a20d983d984d985d8a7d8aa20d8a3d98820d8b9d8a8d8a7d8b1d8a7d8aa20d8bad98ad8b120d984d8a7d8a6d982d8a920d8a3d98820d985d8a720d8b4d8a7d8a8d9872e20d988d987d8b0d8a720d985d8a720d98ad8acd8b9d984d98720d8a3d988d98420d985d988d984d991d8af20d986d8b520d984d988d8b1d98ad98520d8a5d98ad8a8d8b3d988d98520d8add982d98ad982d98a20d8b9d984d98920d8a7d984d8a5d986d8aad8b1d986d8aa2e3c2f703e, NULL, NULL, NULL, 1, '2020-08-30 01:45:16', '2024-01-20 23:13:24'),
(76, 177, 8, 'المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص', 'المحتوى)-ويُستخدم-في-صناعات-المطابع-ودور-النشر.-كان-لوريم-إيبسوم-ولايزال-المعيار-للنص', '636bcf00af13471bf116a431d8e93380a1b5880f.png', 0x3c703ed987d986d8a7d98320d8add982d98ad982d8a920d985d8abd8a8d8aad8a920d985d986d8b020d8b2d985d98620d8b7d988d98ad98420d988d987d98a20d8a3d98620d8a7d984d985d8add8aad988d98920d8a7d984d985d982d8b1d988d8a120d984d8b5d981d8add8a920d985d8a720d8b3d98ad984d987d98a20d8a7d984d982d8a7d8b1d8a620d8b9d98620d8a7d984d8aad8b1d983d98ad8b220d8b9d984d98920d8a7d984d8b4d983d98420d8a7d984d8aed8a7d8b1d8acd98a20d984d984d986d8b520d8a3d98820d8b4d983d98420d8aad988d8b6d8b920d8a7d984d981d982d8b1d8a7d8aa20d981d98a20d8a7d984d8b5d981d8add8a920d8a7d984d8aad98a20d98ad982d8b1d8a3d987d8a72e20d988d984d8b0d984d98320d98ad8aad98520d8a7d8b3d8aad8aed8afd8a7d98520d8b7d8b1d98ad982d8a920d984d988d8b1d98ad98520d8a5d98ad8a8d8b3d988d98520d984d8a3d986d987d8a720d8aad8b9d8b7d98a20d8aad988d8b2d98ad8b9d8a7d98e20d8b7d8a8d98ad8b9d98ad8a7d98e202dd8a5d984d98920d8add8af20d985d8a72d20d984d984d8a3d8add8b1d98120d8b9d988d8b6d8a7d98b20d8b9d98620d8a7d8b3d8aad8aed8afd8a7d9852022d987d986d8a720d98ad988d8acd8af20d985d8add8aad988d98920d986d8b5d98ad88c20d987d986d8a720d98ad988d8acd8af20d985d8add8aad988d98920d986d8b5d98a2220d981d8aad8acd8b9d984d987d8a720d8aad8a8d8afd9882028d8a3d98a20d8a7d984d8a3d8add8b1d9812920d988d983d8a3d986d987d8a720d986d8b520d985d982d8b1d988d8a12e20d8a7d984d8b9d8afd98ad8af20d985d98620d8a8d8b1d8a7d985d8ad20d8a7d984d986d8b4d8b120d8a7d984d985d983d8aad8a8d98a20d988d8a8d8b1d8a7d985d8ad20d8aad8add8b1d98ad8b120d8b5d981d8add8a7d8aa20d8a7d984d988d98ad8a820d8aad8b3d8aad8aed8afd98520d984d988d8b1d98ad98520d8a5d98ad8a8d8b3d988d98520d8a8d8b4d983d98420d8a5d981d8aad8b1d8a7d8b6d98a20d983d986d985d988d8b0d8ac20d8b9d98620d8a7d984d986d8b5d88c20d988d8a5d8b0d8a720d982d985d8aa20d8a8d8a5d8afd8aed8a7d98420226c6f72656d20697073756d2220d981d98a20d8a3d98a20d985d8add8b1d98320d8a8d8add8ab20d8b3d8aad8b8d987d8b120d8a7d984d8b9d8afd98ad8af20d985d98620d8a7d984d985d988d8a7d982d8b920d8a7d984d8add8afd98ad8abd8a920d8a7d984d8b9d987d8af20d981d98a20d986d8aad8a7d8a6d8ac20d8a7d984d8a8d8add8ab2e20d8b9d984d98920d985d8afd98920d8a7d984d8b3d986d98ad98620d8b8d987d8b1d8aa20d986d8b3d8ae20d8acd8afd98ad8afd8a920d988d985d8aed8aad984d981d8a920d985d98620d986d8b520d984d988d8b1d98ad98520d8a5d98ad8a8d8b3d988d985d88c20d8a3d8add98ad8a7d986d8a7d98b20d8b9d98620d8b7d8b1d98ad98220d8a7d984d8b5d8afd981d8a9d88c20d988d8a3d8add98ad8a7d986d8a7d98b20d8b9d98620d8b9d985d8af20d983d8a5d8afd8aed8a7d98420d8a8d8b9d8b620d8a7d984d8b9d8a8d8a7d8b1d8a7d8aa20d8a7d984d981d983d8a7d987d98ad8a920d8a5d984d98ad987d8a72e20d987d986d8a7d984d98320d8a7d984d8b9d8afd98ad8af20d985d98620d8a7d984d8a3d986d988d8a7d8b920d8a7d984d985d8aad988d981d8b1d8a920d984d986d8b5d988d8b520d984d988d8b1d98ad98520d8a5d98ad8a8d8b3d988d985d88c20d988d984d983d98620d8a7d984d8bad8a7d984d8a8d98ad8a920d8aad98520d8aad8b9d8afd98ad984d987d8a720d8a8d8b4d983d98420d985d8a720d8b9d8a8d8b120d8a5d8afd8aed8a7d98420d8a8d8b9d8b620d8a7d984d986d988d8a7d8afd8b120d8a3d98820d8a7d984d983d984d985d8a7d8aa20d8a7d984d8b9d8b4d988d8a7d8a6d98ad8a920d8a5d984d98920d8a7d984d986d8b52e20d8a5d98620d983d986d8aa20d8aad8b1d98ad8af20d8a3d98620d8aad8b3d8aad8aed8afd98520d986d8b520d984d988d8b1d98ad98520d8a5d98ad8a8d8b3d988d98520d985d8a7d88c20d8b9d984d98ad98320d8a3d98620d8aad8aad8add982d98220d8a3d988d984d8a7d98b20d8a3d98620d984d98ad8b320d987d986d8a7d98320d8a3d98a20d983d984d985d8a7d8aa20d8a3d98820d8b9d8a8d8a7d8b1d8a7d8aa20d985d8add8b1d8acd8a920d8a3d98820d8bad98ad8b120d984d8a7d8a6d982d8a920d985d8aed8a8d8a3d8a920d981d98a20d987d8b0d8a720d8a7d984d986d8b52e20d8a8d98ad986d985d8a720d8aad8b9d985d98420d8acd985d98ad8b920d985d988d984d991d8afd8a7d8aa20d986d8b5d988d8b520d984d988d8b1d98ad98520d8a5d98ad8a8d8b3d988d98520d8b9d984d98920d8a7d984d8a5d986d8aad8b1d986d8aa20d8b9d984d98920d8a5d8b9d8a7d8afd8a920d8aad983d8b1d8a7d8b120d985d982d8a7d8b7d8b920d985d98620d986d8b520d984d988d8b1d98ad98520d8a5d98ad8a8d8b3d988d98520d986d981d8b3d98720d8b9d8afd8a920d985d8b1d8a7d8aa20d8a8d985d8a720d8aad8aad8b7d984d8a8d98720d8a7d984d8add8a7d8acd8a9d88c20d98ad982d988d98520d985d988d984d991d8afd986d8a720d987d8b0d8a720d8a8d8a7d8b3d8aad8aed8afd8a7d98520d983d984d985d8a7d8aa20d985d98620d982d8a7d985d988d8b320d98ad8add988d98a20d8b9d984d98920d8a3d983d8abd8b120d985d9862032303020d983d984d985d8a920d984d8a720d8aad98ad986d98ad8a9d88c20d985d8b6d8a7d98120d8a5d984d98ad987d8a720d985d8acd985d988d8b9d8a920d985d98620d8a7d984d8acd985d98420d8a7d984d986d985d988d8b0d8acd98ad8a9d88c20d984d8aad983d988d98ad98620d986d8b520d984d988d8b1d98ad98520d8a5d98ad8a8d8b3d988d98520d8b0d98820d8b4d983d98420d985d986d8b7d982d98a20d982d8b1d98ad8a820d8a5d984d98920d8a7d984d986d8b520d8a7d984d8add982d98ad982d98a2e20d988d8a8d8a7d984d8aad8a7d984d98a20d98ad983d988d98620d8a7d984d986d8b520d8a7d984d986d8a7d8aad8ad20d8aed8a7d984d98a20d985d98620d8a7d984d8aad983d8b1d8a7d8b1d88c20d8a3d98820d8a3d98a20d983d984d985d8a7d8aa20d8a3d98820d8b9d8a8d8a7d8b1d8a7d8aa20d8bad98ad8b120d984d8a7d8a6d982d8a920d8a3d98820d985d8a720d8b4d8a7d8a8d9872e20d988d987d8b0d8a720d985d8a720d98ad8acd8b9d984d98720d8a3d988d98420d985d988d984d991d8af20d986d8b520d984d988d8b1d98ad98520d8a5d98ad8a8d8b3d988d98520d8add982d98ad982d98a20d8b9d984d98920d8a7d984d8a5d986d8aad8b1d986d8aa2e3c2f703e, NULL, NULL, NULL, 2, '2020-08-30 01:46:06', '2024-01-20 23:18:29'),
(77, 177, 11, 'هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز', 'هناك-حقيقة-مثبتة-منذ-زمن-طويل-وهي-أن-المحتوى-المقروء-لصفحة-ما-سيلهي-القارئ-عن-التركيز', '51194bdd5f3bc2ab156a3710fdb2aed641603832.png', 0x3c703ed987d986d8a7d98320d8add982d98ad982d8a920d985d8abd8a8d8aad8a920d985d986d8b020d8b2d985d98620d8b7d988d98ad98420d988d987d98a20d8a3d98620d8a7d984d985d8add8aad988d98920d8a7d984d985d982d8b1d988d8a120d984d8b5d981d8add8a920d985d8a720d8b3d98ad984d987d98a20d8a7d984d982d8a7d8b1d8a620d8b9d98620d8a7d984d8aad8b1d983d98ad8b220d8b9d984d98920d8a7d984d8b4d983d98420d8a7d984d8aed8a7d8b1d8acd98a20d984d984d986d8b520d8a3d98820d8b4d983d98420d8aad988d8b6d8b920d8a7d984d981d982d8b1d8a7d8aa20d981d98a20d8a7d984d8b5d981d8add8a920d8a7d984d8aad98a20d98ad982d8b1d8a3d987d8a72e20d988d984d8b0d984d98320d98ad8aad98520d8a7d8b3d8aad8aed8afd8a7d98520d8b7d8b1d98ad982d8a920d984d988d8b1d98ad98520d8a5d98ad8a8d8b3d988d98520d984d8a3d986d987d8a720d8aad8b9d8b7d98a20d8aad988d8b2d98ad8b9d8a7d98e20d8b7d8a8d98ad8b9d98ad8a7d98e202dd8a5d984d98920d8add8af20d985d8a72d20d984d984d8a3d8add8b1d98120d8b9d988d8b6d8a7d98b20d8b9d98620d8a7d8b3d8aad8aed8afd8a7d9852022d987d986d8a720d98ad988d8acd8af20d985d8add8aad988d98920d986d8b5d98ad88c20d987d986d8a720d98ad988d8acd8af20d985d8add8aad988d98920d986d8b5d98a2220d981d8aad8acd8b9d984d987d8a720d8aad8a8d8afd9882028d8a3d98a20d8a7d984d8a3d8add8b1d9812920d988d983d8a3d986d987d8a720d986d8b520d985d982d8b1d988d8a12e20d8a7d984d8b9d8afd98ad8af20d985d98620d8a8d8b1d8a7d985d8ad20d8a7d984d986d8b4d8b120d8a7d984d985d983d8aad8a8d98a20d988d8a8d8b1d8a7d985d8ad20d8aad8add8b1d98ad8b120d8b5d981d8add8a7d8aa20d8a7d984d988d98ad8a820d8aad8b3d8aad8aed8afd98520d984d988d8b1d98ad98520d8a5d98ad8a8d8b3d988d98520d8a8d8b4d983d98420d8a5d981d8aad8b1d8a7d8b6d98a20d983d986d985d988d8b0d8ac20d8b9d98620d8a7d984d986d8b5d88c20d988d8a5d8b0d8a720d982d985d8aa20d8a8d8a5d8afd8aed8a7d98420226c6f72656d20697073756d2220d981d98a20d8a3d98a20d985d8add8b1d98320d8a8d8add8ab20d8b3d8aad8b8d987d8b120d8a7d984d8b9d8afd98ad8af20d985d98620d8a7d984d985d988d8a7d982d8b920d8a7d984d8add8afd98ad8abd8a920d8a7d984d8b9d987d8af20d981d98a20d986d8aad8a7d8a6d8ac20d8a7d984d8a8d8add8ab2e20d8b9d984d98920d985d8afd98920d8a7d984d8b3d986d98ad98620d8b8d987d8b1d8aa20d986d8b3d8ae20d8acd8afd98ad8afd8a920d988d985d8aed8aad984d981d8a920d985d98620d986d8b520d984d988d8b1d98ad98520d8a5d98ad8a8d8b3d988d985d88c20d8a3d8add98ad8a7d986d8a7d98b20d8b9d98620d8b7d8b1d98ad98220d8a7d984d8b5d8afd981d8a9d88c20d988d8a3d8add98ad8a7d986d8a7d98b20d8b9d98620d8b9d985d8af20d983d8a5d8afd8aed8a7d98420d8a8d8b9d8b620d8a7d984d8b9d8a8d8a7d8b1d8a7d8aa20d8a7d984d981d983d8a7d987d98ad8a920d8a5d984d98ad987d8a72e20d987d986d8a7d984d98320d8a7d984d8b9d8afd98ad8af20d985d98620d8a7d984d8a3d986d988d8a7d8b920d8a7d984d985d8aad988d981d8b1d8a920d984d986d8b5d988d8b520d984d988d8b1d98ad98520d8a5d98ad8a8d8b3d988d985d88c20d988d984d983d98620d8a7d984d8bad8a7d984d8a8d98ad8a920d8aad98520d8aad8b9d8afd98ad984d987d8a720d8a8d8b4d983d98420d985d8a720d8b9d8a8d8b120d8a5d8afd8aed8a7d98420d8a8d8b9d8b620d8a7d984d986d988d8a7d8afd8b120d8a3d98820d8a7d984d983d984d985d8a7d8aa20d8a7d984d8b9d8b4d988d8a7d8a6d98ad8a920d8a5d984d98920d8a7d984d986d8b52e20d8a5d98620d983d986d8aa20d8aad8b1d98ad8af20d8a3d98620d8aad8b3d8aad8aed8afd98520d986d8b520d984d988d8b1d98ad98520d8a5d98ad8a8d8b3d988d98520d985d8a7d88c20d8b9d984d98ad98320d8a3d98620d8aad8aad8add982d98220d8a3d988d984d8a7d98b20d8a3d98620d984d98ad8b320d987d986d8a7d98320d8a3d98a20d983d984d985d8a7d8aa20d8a3d98820d8b9d8a8d8a7d8b1d8a7d8aa20d985d8add8b1d8acd8a920d8a3d98820d8bad98ad8b120d984d8a7d8a6d982d8a920d985d8aed8a8d8a3d8a920d981d98a20d987d8b0d8a720d8a7d984d986d8b52e20d8a8d98ad986d985d8a720d8aad8b9d985d98420d8acd985d98ad8b920d985d988d984d991d8afd8a7d8aa20d986d8b5d988d8b520d984d988d8b1d98ad98520d8a5d98ad8a8d8b3d988d98520d8b9d984d98920d8a7d984d8a5d986d8aad8b1d986d8aa20d8b9d984d98920d8a5d8b9d8a7d8afd8a920d8aad983d8b1d8a7d8b120d985d982d8a7d8b7d8b920d985d98620d986d8b520d984d988d8b1d98ad98520d8a5d98ad8a8d8b3d988d98520d986d981d8b3d98720d8b9d8afd8a920d985d8b1d8a7d8aa20d8a8d985d8a720d8aad8aad8b7d984d8a8d98720d8a7d984d8add8a7d8acd8a9d88c20d98ad982d988d98520d985d988d984d991d8afd986d8a720d987d8b0d8a720d8a8d8a7d8b3d8aad8aed8afd8a7d98520d983d984d985d8a7d8aa20d985d98620d982d8a7d985d988d8b320d98ad8add988d98a20d8b9d984d98920d8a3d983d8abd8b120d985d9862032303020d983d984d985d8a920d984d8a720d8aad98ad986d98ad8a9d88c20d985d8b6d8a7d98120d8a5d984d98ad987d8a720d985d8acd985d988d8b9d8a920d985d98620d8a7d984d8acd985d98420d8a7d984d986d985d988d8b0d8acd98ad8a9d88c20d984d8aad983d988d98ad98620d986d8b520d984d988d8b1d98ad98520d8a5d98ad8a8d8b3d988d98520d8b0d98820d8b4d983d98420d985d986d8b7d982d98a20d982d8b1d98ad8a820d8a5d984d98920d8a7d984d986d8b520d8a7d984d8add982d98ad982d98a2e20d988d8a8d8a7d984d8aad8a7d984d98a20d98ad983d988d98620d8a7d984d986d8b520d8a7d984d986d8a7d8aad8ad20d8aed8a7d984d98a20d985d98620d8a7d984d8aad983d8b1d8a7d8b1d88c20d8a3d98820d8a3d98a20d983d984d985d8a7d8aa20d8a3d98820d8b9d8a8d8a7d8b1d8a7d8aa20d8bad98ad8b120d984d8a7d8a6d982d8a920d8a3d98820d985d8a720d8b4d8a7d8a8d9872e20d988d987d8b0d8a720d985d8a720d98ad8acd8b9d984d98720d8a3d988d98420d985d988d984d991d8af20d986d8b520d984d988d8b1d98ad98520d8a5d98ad8a8d8b3d988d98520d8add982d98ad982d98a20d8b9d984d98920d8a7d984d8a5d986d8aad8b1d986d8aa2e3c2f703e, NULL, NULL, NULL, 3, '2020-08-30 01:46:52', '2024-01-20 23:16:30'),
(78, 177, 8, 'لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس', 'لوريم-إيبسوم(Lorem-Ipsum)-هو-ببساطة-نص-شكلي-(بمعنى-أن-الغاية-هي-الشكل-وليس', '2fca126aeb088440178c6c2f86207b1d512c63d0.png', 0x3c703ed987d986d8a7d98320d8add982d98ad982d8a920d985d8abd8a8d8aad8a920d985d986d8b020d8b2d985d98620d8b7d988d98ad98420d988d987d98a20d8a3d98620d8a7d984d985d8add8aad988d98920d8a7d984d985d982d8b1d988d8a120d984d8b5d981d8add8a920d985d8a720d8b3d98ad984d987d98a20d8a7d984d982d8a7d8b1d8a620d8b9d98620d8a7d984d8aad8b1d983d98ad8b220d8b9d984d98920d8a7d984d8b4d983d98420d8a7d984d8aed8a7d8b1d8acd98a20d984d984d986d8b520d8a3d98820d8b4d983d98420d8aad988d8b6d8b920d8a7d984d981d982d8b1d8a7d8aa20d981d98a20d8a7d984d8b5d981d8add8a920d8a7d984d8aad98a20d98ad982d8b1d8a3d987d8a72e20d988d984d8b0d984d98320d98ad8aad98520d8a7d8b3d8aad8aed8afd8a7d98520d8b7d8b1d98ad982d8a920d984d988d8b1d98ad98520d8a5d98ad8a8d8b3d988d98520d984d8a3d986d987d8a720d8aad8b9d8b7d98a20d8aad988d8b2d98ad8b9d8a7d98e20d8b7d8a8d98ad8b9d98ad8a7d98e202dd8a5d984d98920d8add8af20d985d8a72d20d984d984d8a3d8add8b1d98120d8b9d988d8b6d8a7d98b20d8b9d98620d8a7d8b3d8aad8aed8afd8a7d9852022d987d986d8a720d98ad988d8acd8af20d985d8add8aad988d98920d986d8b5d98ad88c20d987d986d8a720d98ad988d8acd8af20d985d8add8aad988d98920d986d8b5d98a2220d981d8aad8acd8b9d984d987d8a720d8aad8a8d8afd9882028d8a3d98a20d8a7d984d8a3d8add8b1d9812920d988d983d8a3d986d987d8a720d986d8b520d985d982d8b1d988d8a12e20d8a7d984d8b9d8afd98ad8af20d985d98620d8a8d8b1d8a7d985d8ad20d8a7d984d986d8b4d8b120d8a7d984d985d983d8aad8a8d98a20d988d8a8d8b1d8a7d985d8ad20d8aad8add8b1d98ad8b120d8b5d981d8add8a7d8aa20d8a7d984d988d98ad8a820d8aad8b3d8aad8aed8afd98520d984d988d8b1d98ad98520d8a5d98ad8a8d8b3d988d98520d8a8d8b4d983d98420d8a5d981d8aad8b1d8a7d8b6d98a20d983d986d985d988d8b0d8ac20d8b9d98620d8a7d984d986d8b5d88c20d988d8a5d8b0d8a720d982d985d8aa20d8a8d8a5d8afd8aed8a7d98420226c6f72656d20697073756d2220d981d98a20d8a3d98a20d985d8add8b1d98320d8a8d8add8ab20d8b3d8aad8b8d987d8b120d8a7d984d8b9d8afd98ad8af20d985d98620d8a7d984d985d988d8a7d982d8b920d8a7d984d8add8afd98ad8abd8a920d8a7d984d8b9d987d8af20d981d98a20d986d8aad8a7d8a6d8ac20d8a7d984d8a8d8add8ab2e20d8b9d984d98920d985d8afd98920d8a7d984d8b3d986d98ad98620d8b8d987d8b1d8aa20d986d8b3d8ae20d8acd8afd98ad8afd8a920d988d985d8aed8aad984d981d8a920d985d98620d986d8b520d984d988d8b1d98ad98520d8a5d98ad8a8d8b3d988d985d88c20d8a3d8add98ad8a7d986d8a7d98b20d8b9d98620d8b7d8b1d98ad98220d8a7d984d8b5d8afd981d8a9d88c20d988d8a3d8add98ad8a7d986d8a7d98b20d8b9d98620d8b9d985d8af20d983d8a5d8afd8aed8a7d98420d8a8d8b9d8b620d8a7d984d8b9d8a8d8a7d8b1d8a7d8aa20d8a7d984d981d983d8a7d987d98ad8a920d8a5d984d98ad987d8a72e20d987d986d8a7d984d98320d8a7d984d8b9d8afd98ad8af20d985d98620d8a7d984d8a3d986d988d8a7d8b920d8a7d984d985d8aad988d981d8b1d8a920d984d986d8b5d988d8b520d984d988d8b1d98ad98520d8a5d98ad8a8d8b3d988d985d88c20d988d984d983d98620d8a7d984d8bad8a7d984d8a8d98ad8a920d8aad98520d8aad8b9d8afd98ad984d987d8a720d8a8d8b4d983d98420d985d8a720d8b9d8a8d8b120d8a5d8afd8aed8a7d98420d8a8d8b9d8b620d8a7d984d986d988d8a7d8afd8b120d8a3d98820d8a7d984d983d984d985d8a7d8aa20d8a7d984d8b9d8b4d988d8a7d8a6d98ad8a920d8a5d984d98920d8a7d984d986d8b52e20d8a5d98620d983d986d8aa20d8aad8b1d98ad8af20d8a3d98620d8aad8b3d8aad8aed8afd98520d986d8b520d984d988d8b1d98ad98520d8a5d98ad8a8d8b3d988d98520d985d8a7d88c20d8b9d984d98ad98320d8a3d98620d8aad8aad8add982d98220d8a3d988d984d8a7d98b20d8a3d98620d984d98ad8b320d987d986d8a7d98320d8a3d98a20d983d984d985d8a7d8aa20d8a3d98820d8b9d8a8d8a7d8b1d8a7d8aa20d985d8add8b1d8acd8a920d8a3d98820d8bad98ad8b120d984d8a7d8a6d982d8a920d985d8aed8a8d8a3d8a920d981d98a20d987d8b0d8a720d8a7d984d986d8b52e20d8a8d98ad986d985d8a720d8aad8b9d985d98420d8acd985d98ad8b920d985d988d984d991d8afd8a7d8aa20d986d8b5d988d8b520d984d988d8b1d98ad98520d8a5d98ad8a8d8b3d988d98520d8b9d984d98920d8a7d984d8a5d986d8aad8b1d986d8aa20d8b9d984d98920d8a5d8b9d8a7d8afd8a920d8aad983d8b1d8a7d8b120d985d982d8a7d8b7d8b920d985d98620d986d8b520d984d988d8b1d98ad98520d8a5d98ad8a8d8b3d988d98520d986d981d8b3d98720d8b9d8afd8a920d985d8b1d8a7d8aa20d8a8d985d8a720d8aad8aad8b7d984d8a8d98720d8a7d984d8add8a7d8acd8a9d88c20d98ad982d988d98520d985d988d984d991d8afd986d8a720d987d8b0d8a720d8a8d8a7d8b3d8aad8aed8afd8a7d98520d983d984d985d8a7d8aa20d985d98620d982d8a7d985d988d8b320d98ad8add988d98a20d8b9d984d98920d8a3d983d8abd8b120d985d9862032303020d983d984d985d8a920d984d8a720d8aad98ad986d98ad8a9d88c20d985d8b6d8a7d98120d8a5d984d98ad987d8a720d985d8acd985d988d8b9d8a920d985d98620d8a7d984d8acd985d98420d8a7d984d986d985d988d8b0d8acd98ad8a9d88c20d984d8aad983d988d98ad98620d986d8b520d984d988d8b1d98ad98520d8a5d98ad8a8d8b3d988d98520d8b0d98820d8b4d983d98420d985d986d8b7d982d98a20d982d8b1d98ad8a820d8a5d984d98920d8a7d984d986d8b520d8a7d984d8add982d98ad982d98a2e20d988d8a8d8a7d984d8aad8a7d984d98a20d98ad983d988d98620d8a7d984d986d8b520d8a7d984d986d8a7d8aad8ad20d8aed8a7d984d98a20d985d98620d8a7d984d8aad983d8b1d8a7d8b1d88c20d8a3d98820d8a3d98a20d983d984d985d8a7d8aa20d8a3d98820d8b9d8a8d8a7d8b1d8a7d8aa20d8bad98ad8b120d984d8a7d8a6d982d8a920d8a3d98820d985d8a720d8b4d8a7d8a8d9872e20d988d987d8b0d8a720d985d8a720d98ad8acd8b9d984d98720d8a3d988d98420d985d988d984d991d8af20d986d8b520d984d988d8b1d98ad98520d8a5d98ad8a8d8b3d988d98520d8add982d98ad982d98a20d8b9d984d98920d8a7d984d8a5d986d8aad8b1d986d8aa2e3c2f703e, NULL, NULL, NULL, 4, '2020-08-30 01:47:51', '2024-01-20 23:16:09');
INSERT INTO `blogs` (`id`, `language_id`, `bcategory_id`, `title`, `slug`, `main_image`, `content`, `tags`, `meta_keywords`, `meta_description`, `serial_number`, `created_at`, `updated_at`) VALUES
(79, 177, 7, 'هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز', 'هناك-حقيقة-مثبتة-منذ-زمن-طويل-وهي-أن-المحتوى-المقروء-لصفحة-ما-سيلهي-القارئ-عن-التركيز', '4d4a2bbecacd4a19e6638e52296c5602017911c6.png', 0x3c703ed987d986d8a7d98320d8add982d98ad982d8a920d985d8abd8a8d8aad8a920d985d986d8b020d8b2d985d98620d8b7d988d98ad98420d988d987d98a20d8a3d98620d8a7d984d985d8add8aad988d98920d8a7d984d985d982d8b1d988d8a120d984d8b5d981d8add8a920d985d8a720d8b3d98ad984d987d98a20d8a7d984d982d8a7d8b1d8a620d8b9d98620d8a7d984d8aad8b1d983d98ad8b220d8b9d984d98920d8a7d984d8b4d983d98420d8a7d984d8aed8a7d8b1d8acd98a20d984d984d986d8b520d8a3d98820d8b4d983d98420d8aad988d8b6d8b920d8a7d984d981d982d8b1d8a7d8aa20d981d98a20d8a7d984d8b5d981d8add8a920d8a7d984d8aad98a20d98ad982d8b1d8a3d987d8a72e20d988d984d8b0d984d98320d98ad8aad98520d8a7d8b3d8aad8aed8afd8a7d98520d8b7d8b1d98ad982d8a920d984d988d8b1d98ad98520d8a5d98ad8a8d8b3d988d98520d984d8a3d986d987d8a720d8aad8b9d8b7d98a20d8aad988d8b2d98ad8b9d8a7d98e20d8b7d8a8d98ad8b9d98ad8a7d98e202dd8a5d984d98920d8add8af20d985d8a72d20d984d984d8a3d8add8b1d98120d8b9d988d8b6d8a7d98b20d8b9d98620d8a7d8b3d8aad8aed8afd8a7d9852022d987d986d8a720d98ad988d8acd8af20d985d8add8aad988d98920d986d8b5d98ad88c20d987d986d8a720d98ad988d8acd8af20d985d8add8aad988d98920d986d8b5d98a2220d981d8aad8acd8b9d984d987d8a720d8aad8a8d8afd9882028d8a3d98a20d8a7d984d8a3d8add8b1d9812920d988d983d8a3d986d987d8a720d986d8b520d985d982d8b1d988d8a12e20d8a7d984d8b9d8afd98ad8af20d985d98620d8a8d8b1d8a7d985d8ad20d8a7d984d986d8b4d8b120d8a7d984d985d983d8aad8a8d98a20d988d8a8d8b1d8a7d985d8ad20d8aad8add8b1d98ad8b120d8b5d981d8add8a7d8aa20d8a7d984d988d98ad8a820d8aad8b3d8aad8aed8afd98520d984d988d8b1d98ad98520d8a5d98ad8a8d8b3d988d98520d8a8d8b4d983d98420d8a5d981d8aad8b1d8a7d8b6d98a20d983d986d985d988d8b0d8ac20d8b9d98620d8a7d984d986d8b5d88c20d988d8a5d8b0d8a720d982d985d8aa20d8a8d8a5d8afd8aed8a7d98420226c6f72656d20697073756d2220d981d98a20d8a3d98a20d985d8add8b1d98320d8a8d8add8ab20d8b3d8aad8b8d987d8b120d8a7d984d8b9d8afd98ad8af20d985d98620d8a7d984d985d988d8a7d982d8b920d8a7d984d8add8afd98ad8abd8a920d8a7d984d8b9d987d8af20d981d98a20d986d8aad8a7d8a6d8ac20d8a7d984d8a8d8add8ab2e20d8b9d984d98920d985d8afd98920d8a7d984d8b3d986d98ad98620d8b8d987d8b1d8aa20d986d8b3d8ae20d8acd8afd98ad8afd8a920d988d985d8aed8aad984d981d8a920d985d98620d986d8b520d984d988d8b1d98ad98520d8a5d98ad8a8d8b3d988d985d88c20d8a3d8add98ad8a7d986d8a7d98b20d8b9d98620d8b7d8b1d98ad98220d8a7d984d8b5d8afd981d8a9d88c20d988d8a3d8add98ad8a7d986d8a7d98b20d8b9d98620d8b9d985d8af20d983d8a5d8afd8aed8a7d98420d8a8d8b9d8b620d8a7d984d8b9d8a8d8a7d8b1d8a7d8aa20d8a7d984d981d983d8a7d987d98ad8a920d8a5d984d98ad987d8a72e20d987d986d8a7d984d98320d8a7d984d8b9d8afd98ad8af20d985d98620d8a7d984d8a3d986d988d8a7d8b920d8a7d984d985d8aad988d981d8b1d8a920d984d986d8b5d988d8b520d984d988d8b1d98ad98520d8a5d98ad8a8d8b3d988d985d88c20d988d984d983d98620d8a7d984d8bad8a7d984d8a8d98ad8a920d8aad98520d8aad8b9d8afd98ad984d987d8a720d8a8d8b4d983d98420d985d8a720d8b9d8a8d8b120d8a5d8afd8aed8a7d98420d8a8d8b9d8b620d8a7d984d986d988d8a7d8afd8b120d8a3d98820d8a7d984d983d984d985d8a7d8aa20d8a7d984d8b9d8b4d988d8a7d8a6d98ad8a920d8a5d984d98920d8a7d984d986d8b52e20d8a5d98620d983d986d8aa20d8aad8b1d98ad8af20d8a3d98620d8aad8b3d8aad8aed8afd98520d986d8b520d984d988d8b1d98ad98520d8a5d98ad8a8d8b3d988d98520d985d8a7d88c20d8b9d984d98ad98320d8a3d98620d8aad8aad8add982d98220d8a3d988d984d8a7d98b20d8a3d98620d984d98ad8b320d987d986d8a7d98320d8a3d98a20d983d984d985d8a7d8aa20d8a3d98820d8b9d8a8d8a7d8b1d8a7d8aa20d985d8add8b1d8acd8a920d8a3d98820d8bad98ad8b120d984d8a7d8a6d982d8a920d985d8aed8a8d8a3d8a920d981d98a20d987d8b0d8a720d8a7d984d986d8b52e20d8a8d98ad986d985d8a720d8aad8b9d985d98420d8acd985d98ad8b920d985d988d984d991d8afd8a7d8aa20d986d8b5d988d8b520d984d988d8b1d98ad98520d8a5d98ad8a8d8b3d988d98520d8b9d984d98920d8a7d984d8a5d986d8aad8b1d986d8aa20d8b9d984d98920d8a5d8b9d8a7d8afd8a920d8aad983d8b1d8a7d8b120d985d982d8a7d8b7d8b920d985d98620d986d8b520d984d988d8b1d98ad98520d8a5d98ad8a8d8b3d988d98520d986d981d8b3d98720d8b9d8afd8a920d985d8b1d8a7d8aa20d8a8d985d8a720d8aad8aad8b7d984d8a8d98720d8a7d984d8add8a7d8acd8a9d88c20d98ad982d988d98520d985d988d984d991d8afd986d8a720d987d8b0d8a720d8a8d8a7d8b3d8aad8aed8afd8a7d98520d983d984d985d8a7d8aa20d985d98620d982d8a7d985d988d8b320d98ad8add988d98a20d8b9d984d98920d8a3d983d8abd8b120d985d9862032303020d983d984d985d8a920d984d8a720d8aad98ad986d98ad8a9d88c20d985d8b6d8a7d98120d8a5d984d98ad987d8a720d985d8acd985d988d8b9d8a920d985d98620d8a7d984d8acd985d98420d8a7d984d986d985d988d8b0d8acd98ad8a9d88c20d984d8aad983d988d98ad98620d986d8b520d984d988d8b1d98ad98520d8a5d98ad8a8d8b3d988d98520d8b0d98820d8b4d983d98420d985d986d8b7d982d98a20d982d8b1d98ad8a820d8a5d984d98920d8a7d984d986d8b520d8a7d984d8add982d98ad982d98a2e20d988d8a8d8a7d984d8aad8a7d984d98a20d98ad983d988d98620d8a7d984d986d8b520d8a7d984d986d8a7d8aad8ad20d8aed8a7d984d98a20d985d98620d8a7d984d8aad983d8b1d8a7d8b1d88c20d8a3d98820d8a3d98a20d983d984d985d8a7d8aa20d8a3d98820d8b9d8a8d8a7d8b1d8a7d8aa20d8bad98ad8b120d984d8a7d8a6d982d8a920d8a3d98820d985d8a720d8b4d8a7d8a8d9872e20d988d987d8b0d8a720d985d8a720d98ad8acd8b9d984d98720d8a3d988d98420d985d988d984d991d8af20d986d8b520d984d988d8b1d98ad98520d8a5d98ad8a8d8b3d988d98520d8add982d98ad982d98a20d8b9d984d98920d8a7d984d8a5d986d8aad8b1d986d8aa2e3c2f703e, NULL, NULL, NULL, 5, '2020-08-30 01:48:56', '2024-01-20 23:15:50'),
(80, 177, 10, 'المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص', 'المحتوى)-ويُستخدم-في-صناعات-المطابع-ودور-النشر.-كان-لوريم-إيبسوم-ولايزال-المعيار-للنص', 'a35c821b455b8dc2fc34f49631d1823bfe448d70.png', 0x3c703ed987d986d8a7d98320d8add982d98ad982d8a920d985d8abd8a8d8aad8a920d985d986d8b020d8b2d985d98620d8b7d988d98ad98420d988d987d98a20d8a3d98620d8a7d984d985d8add8aad988d98920d8a7d984d985d982d8b1d988d8a120d984d8b5d981d8add8a920d985d8a720d8b3d98ad984d987d98a20d8a7d984d982d8a7d8b1d8a620d8b9d98620d8a7d984d8aad8b1d983d98ad8b220d8b9d984d98920d8a7d984d8b4d983d98420d8a7d984d8aed8a7d8b1d8acd98a20d984d984d986d8b520d8a3d98820d8b4d983d98420d8aad988d8b6d8b920d8a7d984d981d982d8b1d8a7d8aa20d981d98a20d8a7d984d8b5d981d8add8a920d8a7d984d8aad98a20d98ad982d8b1d8a3d987d8a72e20d988d984d8b0d984d98320d98ad8aad98520d8a7d8b3d8aad8aed8afd8a7d98520d8b7d8b1d98ad982d8a920d984d988d8b1d98ad98520d8a5d98ad8a8d8b3d988d98520d984d8a3d986d987d8a720d8aad8b9d8b7d98a20d8aad988d8b2d98ad8b9d8a7d98e20d8b7d8a8d98ad8b9d98ad8a7d98e202dd8a5d984d98920d8add8af20d985d8a72d20d984d984d8a3d8add8b1d98120d8b9d988d8b6d8a7d98b20d8b9d98620d8a7d8b3d8aad8aed8afd8a7d9852022d987d986d8a720d98ad988d8acd8af20d985d8add8aad988d98920d986d8b5d98ad88c20d987d986d8a720d98ad988d8acd8af20d985d8add8aad988d98920d986d8b5d98a2220d981d8aad8acd8b9d984d987d8a720d8aad8a8d8afd9882028d8a3d98a20d8a7d984d8a3d8add8b1d9812920d988d983d8a3d986d987d8a720d986d8b520d985d982d8b1d988d8a12e20d8a7d984d8b9d8afd98ad8af20d985d98620d8a8d8b1d8a7d985d8ad20d8a7d984d986d8b4d8b120d8a7d984d985d983d8aad8a8d98a20d988d8a8d8b1d8a7d985d8ad20d8aad8add8b1d98ad8b120d8b5d981d8add8a7d8aa20d8a7d984d988d98ad8a820d8aad8b3d8aad8aed8afd98520d984d988d8b1d98ad98520d8a5d98ad8a8d8b3d988d98520d8a8d8b4d983d98420d8a5d981d8aad8b1d8a7d8b6d98a20d983d986d985d988d8b0d8ac20d8b9d98620d8a7d984d986d8b5d88c20d988d8a5d8b0d8a720d982d985d8aa20d8a8d8a5d8afd8aed8a7d98420226c6f72656d20697073756d2220d981d98a20d8a3d98a20d985d8add8b1d98320d8a8d8add8ab20d8b3d8aad8b8d987d8b120d8a7d984d8b9d8afd98ad8af20d985d98620d8a7d984d985d988d8a7d982d8b920d8a7d984d8add8afd98ad8abd8a920d8a7d984d8b9d987d8af20d981d98a20d986d8aad8a7d8a6d8ac20d8a7d984d8a8d8add8ab2e20d8b9d984d98920d985d8afd98920d8a7d984d8b3d986d98ad98620d8b8d987d8b1d8aa20d986d8b3d8ae20d8acd8afd98ad8afd8a920d988d985d8aed8aad984d981d8a920d985d98620d986d8b520d984d988d8b1d98ad98520d8a5d98ad8a8d8b3d988d985d88c20d8a3d8add98ad8a7d986d8a7d98b20d8b9d98620d8b7d8b1d98ad98220d8a7d984d8b5d8afd981d8a9d88c20d988d8a3d8add98ad8a7d986d8a7d98b20d8b9d98620d8b9d985d8af20d983d8a5d8afd8aed8a7d98420d8a8d8b9d8b620d8a7d984d8b9d8a8d8a7d8b1d8a7d8aa20d8a7d984d981d983d8a7d987d98ad8a920d8a5d984d98ad987d8a72e20d987d986d8a7d984d98320d8a7d984d8b9d8afd98ad8af20d985d98620d8a7d984d8a3d986d988d8a7d8b920d8a7d984d985d8aad988d981d8b1d8a920d984d986d8b5d988d8b520d984d988d8b1d98ad98520d8a5d98ad8a8d8b3d988d985d88c20d988d984d983d98620d8a7d984d8bad8a7d984d8a8d98ad8a920d8aad98520d8aad8b9d8afd98ad984d987d8a720d8a8d8b4d983d98420d985d8a720d8b9d8a8d8b120d8a5d8afd8aed8a7d98420d8a8d8b9d8b620d8a7d984d986d988d8a7d8afd8b120d8a3d98820d8a7d984d983d984d985d8a7d8aa20d8a7d984d8b9d8b4d988d8a7d8a6d98ad8a920d8a5d984d98920d8a7d984d986d8b52e20d8a5d98620d983d986d8aa20d8aad8b1d98ad8af20d8a3d98620d8aad8b3d8aad8aed8afd98520d986d8b520d984d988d8b1d98ad98520d8a5d98ad8a8d8b3d988d98520d985d8a7d88c20d8b9d984d98ad98320d8a3d98620d8aad8aad8add982d98220d8a3d988d984d8a7d98b20d8a3d98620d984d98ad8b320d987d986d8a7d98320d8a3d98a20d983d984d985d8a7d8aa20d8a3d98820d8b9d8a8d8a7d8b1d8a7d8aa20d985d8add8b1d8acd8a920d8a3d98820d8bad98ad8b120d984d8a7d8a6d982d8a920d985d8aed8a8d8a3d8a920d981d98a20d987d8b0d8a720d8a7d984d986d8b52e20d8a8d98ad986d985d8a720d8aad8b9d985d98420d8acd985d98ad8b920d985d988d984d991d8afd8a7d8aa20d986d8b5d988d8b520d984d988d8b1d98ad98520d8a5d98ad8a8d8b3d988d98520d8b9d984d98920d8a7d984d8a5d986d8aad8b1d986d8aa20d8b9d984d98920d8a5d8b9d8a7d8afd8a920d8aad983d8b1d8a7d8b120d985d982d8a7d8b7d8b920d985d98620d986d8b520d984d988d8b1d98ad98520d8a5d98ad8a8d8b3d988d98520d986d981d8b3d98720d8b9d8afd8a920d985d8b1d8a7d8aa20d8a8d985d8a720d8aad8aad8b7d984d8a8d98720d8a7d984d8add8a7d8acd8a9d88c20d98ad982d988d98520d985d988d984d991d8afd986d8a720d987d8b0d8a720d8a8d8a7d8b3d8aad8aed8afd8a7d98520d983d984d985d8a7d8aa20d985d98620d982d8a7d985d988d8b320d98ad8add988d98a20d8b9d984d98920d8a3d983d8abd8b120d985d9862032303020d983d984d985d8a920d984d8a720d8aad98ad986d98ad8a9d88c20d985d8b6d8a7d98120d8a5d984d98ad987d8a720d985d8acd985d988d8b9d8a920d985d98620d8a7d984d8acd985d98420d8a7d984d986d985d988d8b0d8acd98ad8a9d88c20d984d8aad983d988d98ad98620d986d8b520d984d988d8b1d98ad98520d8a5d98ad8a8d8b3d988d98520d8b0d98820d8b4d983d98420d985d986d8b7d982d98a20d982d8b1d98ad8a820d8a5d984d98920d8a7d984d986d8b520d8a7d984d8add982d98ad982d98a2e20d988d8a8d8a7d984d8aad8a7d984d98a20d98ad983d988d98620d8a7d984d986d8b520d8a7d984d986d8a7d8aad8ad20d8aed8a7d984d98a20d985d98620d8a7d984d8aad983d8b1d8a7d8b1d88c20d8a3d98820d8a3d98a20d983d984d985d8a7d8aa20d8a3d98820d8b9d8a8d8a7d8b1d8a7d8aa20d8bad98ad8b120d984d8a7d8a6d982d8a920d8a3d98820d985d8a720d8b4d8a7d8a8d9872e20d988d987d8b0d8a720d985d8a720d98ad8acd8b9d984d98720d8a3d988d98420d985d988d984d991d8af20d986d8b520d984d988d8b1d98ad98520d8a5d98ad8a8d8b3d988d98520d8add982d98ad982d98a20d8b9d984d98920d8a7d984d8a5d986d8aad8b1d986d8aa2e3c2f703e, NULL, NULL, NULL, 6, '2020-08-30 01:49:44', '2024-01-20 23:14:46'),
(81, 177, 8, 'هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز', 'هناك-حقيقة-مثبتة-منذ-زمن-طويل-وهي-أن-المحتوى-المقروء-لصفحة-ما-سيلهي-القارئ-عن-التركيز', 'bb1fda65c38e023f14f786e9710795ea96d066b1.png', 0x3c703ed987d986d8a7d98320d8add982d98ad982d8a920d985d8abd8a8d8aad8a920d985d986d8b020d8b2d985d98620d8b7d988d98ad98420d988d987d98a20d8a3d98620d8a7d984d985d8add8aad988d98920d8a7d984d985d982d8b1d988d8a120d984d8b5d981d8add8a920d985d8a720d8b3d98ad984d987d98a20d8a7d984d982d8a7d8b1d8a620d8b9d98620d8a7d984d8aad8b1d983d98ad8b220d8b9d984d98920d8a7d984d8b4d983d98420d8a7d984d8aed8a7d8b1d8acd98a20d984d984d986d8b520d8a3d98820d8b4d983d98420d8aad988d8b6d8b920d8a7d984d981d982d8b1d8a7d8aa20d981d98a20d8a7d984d8b5d981d8add8a920d8a7d984d8aad98a20d98ad982d8b1d8a3d987d8a72e20d988d984d8b0d984d98320d98ad8aad98520d8a7d8b3d8aad8aed8afd8a7d98520d8b7d8b1d98ad982d8a920d984d988d8b1d98ad98520d8a5d98ad8a8d8b3d988d98520d984d8a3d986d987d8a720d8aad8b9d8b7d98a20d8aad988d8b2d98ad8b9d8a7d98e20d8b7d8a8d98ad8b9d98ad8a7d98e202dd8a5d984d98920d8add8af20d985d8a72d20d984d984d8a3d8add8b1d98120d8b9d988d8b6d8a7d98b20d8b9d98620d8a7d8b3d8aad8aed8afd8a7d9852022d987d986d8a720d98ad988d8acd8af20d985d8add8aad988d98920d986d8b5d98ad88c20d987d986d8a720d98ad988d8acd8af20d985d8add8aad988d98920d986d8b5d98a2220d981d8aad8acd8b9d984d987d8a720d8aad8a8d8afd9882028d8a3d98a20d8a7d984d8a3d8add8b1d9812920d988d983d8a3d986d987d8a720d986d8b520d985d982d8b1d988d8a12e20d8a7d984d8b9d8afd98ad8af20d985d98620d8a8d8b1d8a7d985d8ad20d8a7d984d986d8b4d8b120d8a7d984d985d983d8aad8a8d98a20d988d8a8d8b1d8a7d985d8ad20d8aad8add8b1d98ad8b120d8b5d981d8add8a7d8aa20d8a7d984d988d98ad8a820d8aad8b3d8aad8aed8afd98520d984d988d8b1d98ad98520d8a5d98ad8a8d8b3d988d98520d8a8d8b4d983d98420d8a5d981d8aad8b1d8a7d8b6d98a20d983d986d985d988d8b0d8ac20d8b9d98620d8a7d984d986d8b5d88c20d988d8a5d8b0d8a720d982d985d8aa20d8a8d8a5d8afd8aed8a7d98420226c6f72656d20697073756d2220d981d98a20d8a3d98a20d985d8add8b1d98320d8a8d8add8ab20d8b3d8aad8b8d987d8b120d8a7d984d8b9d8afd98ad8af20d985d98620d8a7d984d985d988d8a7d982d8b920d8a7d984d8add8afd98ad8abd8a920d8a7d984d8b9d987d8af20d981d98a20d986d8aad8a7d8a6d8ac20d8a7d984d8a8d8add8ab2e20d8b9d984d98920d985d8afd98920d8a7d984d8b3d986d98ad98620d8b8d987d8b1d8aa20d986d8b3d8ae20d8acd8afd98ad8afd8a920d988d985d8aed8aad984d981d8a920d985d98620d986d8b520d984d988d8b1d98ad98520d8a5d98ad8a8d8b3d988d985d88c20d8a3d8add98ad8a7d986d8a7d98b20d8b9d98620d8b7d8b1d98ad98220d8a7d984d8b5d8afd981d8a9d88c20d988d8a3d8add98ad8a7d986d8a7d98b20d8b9d98620d8b9d985d8af20d983d8a5d8afd8aed8a7d98420d8a8d8b9d8b620d8a7d984d8b9d8a8d8a7d8b1d8a7d8aa20d8a7d984d981d983d8a7d987d98ad8a920d8a5d984d98ad987d8a72e20d987d986d8a7d984d98320d8a7d984d8b9d8afd98ad8af20d985d98620d8a7d984d8a3d986d988d8a7d8b920d8a7d984d985d8aad988d981d8b1d8a920d984d986d8b5d988d8b520d984d988d8b1d98ad98520d8a5d98ad8a8d8b3d988d985d88c20d988d984d983d98620d8a7d984d8bad8a7d984d8a8d98ad8a920d8aad98520d8aad8b9d8afd98ad984d987d8a720d8a8d8b4d983d98420d985d8a720d8b9d8a8d8b120d8a5d8afd8aed8a7d98420d8a8d8b9d8b620d8a7d984d986d988d8a7d8afd8b120d8a3d98820d8a7d984d983d984d985d8a7d8aa20d8a7d984d8b9d8b4d988d8a7d8a6d98ad8a920d8a5d984d98920d8a7d984d986d8b52e20d8a5d98620d983d986d8aa20d8aad8b1d98ad8af20d8a3d98620d8aad8b3d8aad8aed8afd98520d986d8b520d984d988d8b1d98ad98520d8a5d98ad8a8d8b3d988d98520d985d8a7d88c20d8b9d984d98ad98320d8a3d98620d8aad8aad8add982d98220d8a3d988d984d8a7d98b20d8a3d98620d984d98ad8b320d987d986d8a7d98320d8a3d98a20d983d984d985d8a7d8aa20d8a3d98820d8b9d8a8d8a7d8b1d8a7d8aa20d985d8add8b1d8acd8a920d8a3d98820d8bad98ad8b120d984d8a7d8a6d982d8a920d985d8aed8a8d8a3d8a920d981d98a20d987d8b0d8a720d8a7d984d986d8b52e20d8a8d98ad986d985d8a720d8aad8b9d985d98420d8acd985d98ad8b920d985d988d984d991d8afd8a7d8aa20d986d8b5d988d8b520d984d988d8b1d98ad98520d8a5d98ad8a8d8b3d988d98520d8b9d984d98920d8a7d984d8a5d986d8aad8b1d986d8aa20d8b9d984d98920d8a5d8b9d8a7d8afd8a920d8aad983d8b1d8a7d8b120d985d982d8a7d8b7d8b920d985d98620d986d8b520d984d988d8b1d98ad98520d8a5d98ad8a8d8b3d988d98520d986d981d8b3d98720d8b9d8afd8a920d985d8b1d8a7d8aa20d8a8d985d8a720d8aad8aad8b7d984d8a8d98720d8a7d984d8add8a7d8acd8a9d88c20d98ad982d988d98520d985d988d984d991d8afd986d8a720d987d8b0d8a720d8a8d8a7d8b3d8aad8aed8afd8a7d98520d983d984d985d8a7d8aa20d985d98620d982d8a7d985d988d8b320d98ad8add988d98a20d8b9d984d98920d8a3d983d8abd8b120d985d9862032303020d983d984d985d8a920d984d8a720d8aad98ad986d98ad8a9d88c20d985d8b6d8a7d98120d8a5d984d98ad987d8a720d985d8acd985d988d8b9d8a920d985d98620d8a7d984d8acd985d98420d8a7d984d986d985d988d8b0d8acd98ad8a9d88c20d984d8aad983d988d98ad98620d986d8b520d984d988d8b1d98ad98520d8a5d98ad8a8d8b3d988d98520d8b0d98820d8b4d983d98420d985d986d8b7d982d98a20d982d8b1d98ad8a820d8a5d984d98920d8a7d984d986d8b520d8a7d984d8add982d98ad982d98a2e20d988d8a8d8a7d984d8aad8a7d984d98a20d98ad983d988d98620d8a7d984d986d8b520d8a7d984d986d8a7d8aad8ad20d8aed8a7d984d98a20d985d98620d8a7d984d8aad983d8b1d8a7d8b1d88c20d8a3d98820d8a3d98a20d983d984d985d8a7d8aa20d8a3d98820d8b9d8a8d8a7d8b1d8a7d8aa20d8bad98ad8b120d984d8a7d8a6d982d8a920d8a3d98820d985d8a720d8b4d8a7d8a8d9872e20d988d987d8b0d8a720d985d8a720d98ad8acd8b9d984d98720d8a3d988d98420d985d988d984d991d8af20d986d8b520d984d988d8b1d98ad98520d8a5d98ad8a8d8b3d988d98520d8add982d98ad982d98a20d8b9d984d98920d8a7d984d8a5d986d8aad8b1d986d8aa2e3c2f703e, NULL, NULL, NULL, 7, '2020-08-30 01:50:32', '2024-01-20 23:14:24'),
(82, 177, 8, 'المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص', 'المحتوى)-ويُستخدم-في-صناعات-المطابع-ودور-النشر.-كان-لوريم-إيبسوم-ولايزال-المعيار-للنص', 'd95e99bc271495aee5875f2811df05ccaaacf849.png', 0x3c703ed987d986d8a7d98320d8add982d98ad982d8a920d985d8abd8a8d8aad8a920d985d986d8b020d8b2d985d98620d8b7d988d98ad98420d988d987d98a20d8a3d98620d8a7d984d985d8add8aad988d98920d8a7d984d985d982d8b1d988d8a120d984d8b5d981d8add8a920d985d8a720d8b3d98ad984d987d98a20d8a7d984d982d8a7d8b1d8a620d8b9d98620d8a7d984d8aad8b1d983d98ad8b220d8b9d984d98920d8a7d984d8b4d983d98420d8a7d984d8aed8a7d8b1d8acd98a20d984d984d986d8b520d8a3d98820d8b4d983d98420d8aad988d8b6d8b920d8a7d984d981d982d8b1d8a7d8aa20d981d98a20d8a7d984d8b5d981d8add8a920d8a7d984d8aad98a20d98ad982d8b1d8a3d987d8a72e20d988d984d8b0d984d98320d98ad8aad98520d8a7d8b3d8aad8aed8afd8a7d98520d8b7d8b1d98ad982d8a920d984d988d8b1d98ad98520d8a5d98ad8a8d8b3d988d98520d984d8a3d986d987d8a720d8aad8b9d8b7d98a20d8aad988d8b2d98ad8b9d8a7d98e20d8b7d8a8d98ad8b9d98ad8a7d98e202dd8a5d984d98920d8add8af20d985d8a72d20d984d984d8a3d8add8b1d98120d8b9d988d8b6d8a7d98b20d8b9d98620d8a7d8b3d8aad8aed8afd8a7d9852022d987d986d8a720d98ad988d8acd8af20d985d8add8aad988d98920d986d8b5d98ad88c20d987d986d8a720d98ad988d8acd8af20d985d8add8aad988d98920d986d8b5d98a2220d981d8aad8acd8b9d984d987d8a720d8aad8a8d8afd9882028d8a3d98a20d8a7d984d8a3d8add8b1d9812920d988d983d8a3d986d987d8a720d986d8b520d985d982d8b1d988d8a12e20d8a7d984d8b9d8afd98ad8af20d985d98620d8a8d8b1d8a7d985d8ad20d8a7d984d986d8b4d8b120d8a7d984d985d983d8aad8a8d98a20d988d8a8d8b1d8a7d985d8ad20d8aad8add8b1d98ad8b120d8b5d981d8add8a7d8aa20d8a7d984d988d98ad8a820d8aad8b3d8aad8aed8afd98520d984d988d8b1d98ad98520d8a5d98ad8a8d8b3d988d98520d8a8d8b4d983d98420d8a5d981d8aad8b1d8a7d8b6d98a20d983d986d985d988d8b0d8ac20d8b9d98620d8a7d984d986d8b5d88c20d988d8a5d8b0d8a720d982d985d8aa20d8a8d8a5d8afd8aed8a7d98420226c6f72656d20697073756d2220d981d98a20d8a3d98a20d985d8add8b1d98320d8a8d8add8ab20d8b3d8aad8b8d987d8b120d8a7d984d8b9d8afd98ad8af20d985d98620d8a7d984d985d988d8a7d982d8b920d8a7d984d8add8afd98ad8abd8a920d8a7d984d8b9d987d8af20d981d98a20d986d8aad8a7d8a6d8ac20d8a7d984d8a8d8add8ab2e20d8b9d984d98920d985d8afd98920d8a7d984d8b3d986d98ad98620d8b8d987d8b1d8aa20d986d8b3d8ae20d8acd8afd98ad8afd8a920d988d985d8aed8aad984d981d8a920d985d98620d986d8b520d984d988d8b1d98ad98520d8a5d98ad8a8d8b3d988d985d88c20d8a3d8add98ad8a7d986d8a7d98b20d8b9d98620d8b7d8b1d98ad98220d8a7d984d8b5d8afd981d8a9d88c20d988d8a3d8add98ad8a7d986d8a7d98b20d8b9d98620d8b9d985d8af20d983d8a5d8afd8aed8a7d98420d8a8d8b9d8b620d8a7d984d8b9d8a8d8a7d8b1d8a7d8aa20d8a7d984d981d983d8a7d987d98ad8a920d8a5d984d98ad987d8a72e20d987d986d8a7d984d98320d8a7d984d8b9d8afd98ad8af20d985d98620d8a7d984d8a3d986d988d8a7d8b920d8a7d984d985d8aad988d981d8b1d8a920d984d986d8b5d988d8b520d984d988d8b1d98ad98520d8a5d98ad8a8d8b3d988d985d88c20d988d984d983d98620d8a7d984d8bad8a7d984d8a8d98ad8a920d8aad98520d8aad8b9d8afd98ad984d987d8a720d8a8d8b4d983d98420d985d8a720d8b9d8a8d8b120d8a5d8afd8aed8a7d98420d8a8d8b9d8b620d8a7d984d986d988d8a7d8afd8b120d8a3d98820d8a7d984d983d984d985d8a7d8aa20d8a7d984d8b9d8b4d988d8a7d8a6d98ad8a920d8a5d984d98920d8a7d984d986d8b52e20d8a5d98620d983d986d8aa20d8aad8b1d98ad8af20d8a3d98620d8aad8b3d8aad8aed8afd98520d986d8b520d984d988d8b1d98ad98520d8a5d98ad8a8d8b3d988d98520d985d8a7d88c20d8b9d984d98ad98320d8a3d98620d8aad8aad8add982d98220d8a3d988d984d8a7d98b20d8a3d98620d984d98ad8b320d987d986d8a7d98320d8a3d98a20d983d984d985d8a7d8aa20d8a3d98820d8b9d8a8d8a7d8b1d8a7d8aa20d985d8add8b1d8acd8a920d8a3d98820d8bad98ad8b120d984d8a7d8a6d982d8a920d985d8aed8a8d8a3d8a920d981d98a20d987d8b0d8a720d8a7d984d986d8b52e20d8a8d98ad986d985d8a720d8aad8b9d985d98420d8acd985d98ad8b920d985d988d984d991d8afd8a7d8aa20d986d8b5d988d8b520d984d988d8b1d98ad98520d8a5d98ad8a8d8b3d988d98520d8b9d984d98920d8a7d984d8a5d986d8aad8b1d986d8aa20d8b9d984d98920d8a5d8b9d8a7d8afd8a920d8aad983d8b1d8a7d8b120d985d982d8a7d8b7d8b920d985d98620d986d8b520d984d988d8b1d98ad98520d8a5d98ad8a8d8b3d988d98520d986d981d8b3d98720d8b9d8afd8a920d985d8b1d8a7d8aa20d8a8d985d8a720d8aad8aad8b7d984d8a8d98720d8a7d984d8add8a7d8acd8a9d88c20d98ad982d988d98520d985d988d984d991d8afd986d8a720d987d8b0d8a720d8a8d8a7d8b3d8aad8aed8afd8a7d98520d983d984d985d8a7d8aa20d985d98620d982d8a7d985d988d8b320d98ad8add988d98a20d8b9d984d98920d8a3d983d8abd8b120d985d9862032303020d983d984d985d8a920d984d8a720d8aad98ad986d98ad8a9d88c20d985d8b6d8a7d98120d8a5d984d98ad987d8a720d985d8acd985d988d8b9d8a920d985d98620d8a7d984d8acd985d98420d8a7d984d986d985d988d8b0d8acd98ad8a9d88c20d984d8aad983d988d98ad98620d986d8b520d984d988d8b1d98ad98520d8a5d98ad8a8d8b3d988d98520d8b0d98820d8b4d983d98420d985d986d8b7d982d98a20d982d8b1d98ad8a820d8a5d984d98920d8a7d984d986d8b520d8a7d984d8add982d98ad982d98a2e20d988d8a8d8a7d984d8aad8a7d984d98a20d98ad983d988d98620d8a7d984d986d8b520d8a7d984d986d8a7d8aad8ad20d8aed8a7d984d98a20d985d98620d8a7d984d8aad983d8b1d8a7d8b1d88c20d8a3d98820d8a3d98a20d983d984d985d8a7d8aa20d8a3d98820d8b9d8a8d8a7d8b1d8a7d8aa20d8bad98ad8b120d984d8a7d8a6d982d8a920d8a3d98820d985d8a720d8b4d8a7d8a8d9872e20d988d987d8b0d8a720d985d8a720d98ad8acd8b9d984d98720d8a3d988d98420d985d988d984d991d8af20d986d8b520d984d988d8b1d98ad98520d8a5d98ad8a8d8b3d988d98520d8add982d98ad982d98a20d8b9d984d98920d8a7d984d8a5d986d8aad8b1d986d8aa2e3c2f703e, NULL, NULL, NULL, 8, '2020-08-30 01:51:11', '2024-01-20 23:14:04'),
(83, 177, 7, 'هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز', 'هناك-حقيقة-مثبتة-منذ-زمن-طويل-وهي-أن-المحتوى-المقروء-لصفحة-ما-سيلهي-القارئ-عن-التركيز', '9a18262f7c498bbf3895a063f302b967eb47dee2.png', 0x3c703ed987d986d8a7d98320d8add982d98ad982d8a920d985d8abd8a8d8aad8a920d985d986d8b020d8b2d985d98620d8b7d988d98ad98420d988d987d98a20d8a3d98620d8a7d984d985d8add8aad988d98920d8a7d984d985d982d8b1d988d8a120d984d8b5d981d8add8a920d985d8a720d8b3d98ad984d987d98a20d8a7d984d982d8a7d8b1d8a620d8b9d98620d8a7d984d8aad8b1d983d98ad8b220d8b9d984d98920d8a7d984d8b4d983d98420d8a7d984d8aed8a7d8b1d8acd98a20d984d984d986d8b520d8a3d98820d8b4d983d98420d8aad988d8b6d8b920d8a7d984d981d982d8b1d8a7d8aa20d981d98a20d8a7d984d8b5d981d8add8a920d8a7d984d8aad98a20d98ad982d8b1d8a3d987d8a72e20d988d984d8b0d984d98320d98ad8aad98520d8a7d8b3d8aad8aed8afd8a7d98520d8b7d8b1d98ad982d8a920d984d988d8b1d98ad98520d8a5d98ad8a8d8b3d988d98520d984d8a3d986d987d8a720d8aad8b9d8b7d98a20d8aad988d8b2d98ad8b9d8a7d98e20d8b7d8a8d98ad8b9d98ad8a7d98e202dd8a5d984d98920d8add8af20d985d8a72d20d984d984d8a3d8add8b1d98120d8b9d988d8b6d8a7d98b20d8b9d98620d8a7d8b3d8aad8aed8afd8a7d9852022d987d986d8a720d98ad988d8acd8af20d985d8add8aad988d98920d986d8b5d98ad88c20d987d986d8a720d98ad988d8acd8af20d985d8add8aad988d98920d986d8b5d98a2220d981d8aad8acd8b9d984d987d8a720d8aad8a8d8afd9882028d8a3d98a20d8a7d984d8a3d8add8b1d9812920d988d983d8a3d986d987d8a720d986d8b520d985d982d8b1d988d8a12e20d8a7d984d8b9d8afd98ad8af20d985d98620d8a8d8b1d8a7d985d8ad20d8a7d984d986d8b4d8b120d8a7d984d985d983d8aad8a8d98a20d988d8a8d8b1d8a7d985d8ad20d8aad8add8b1d98ad8b120d8b5d981d8add8a7d8aa20d8a7d984d988d98ad8a820d8aad8b3d8aad8aed8afd98520d984d988d8b1d98ad98520d8a5d98ad8a8d8b3d988d98520d8a8d8b4d983d98420d8a5d981d8aad8b1d8a7d8b6d98a20d983d986d985d988d8b0d8ac20d8b9d98620d8a7d984d986d8b5d88c20d988d8a5d8b0d8a720d982d985d8aa20d8a8d8a5d8afd8aed8a7d98420226c6f72656d20697073756d2220d981d98a20d8a3d98a20d985d8add8b1d98320d8a8d8add8ab20d8b3d8aad8b8d987d8b120d8a7d984d8b9d8afd98ad8af20d985d98620d8a7d984d985d988d8a7d982d8b920d8a7d984d8add8afd98ad8abd8a920d8a7d984d8b9d987d8af20d981d98a20d986d8aad8a7d8a6d8ac20d8a7d984d8a8d8add8ab2e20d8b9d984d98920d985d8afd98920d8a7d984d8b3d986d98ad98620d8b8d987d8b1d8aa20d986d8b3d8ae20d8acd8afd98ad8afd8a920d988d985d8aed8aad984d981d8a920d985d98620d986d8b520d984d988d8b1d98ad98520d8a5d98ad8a8d8b3d988d985d88c20d8a3d8add98ad8a7d986d8a7d98b20d8b9d98620d8b7d8b1d98ad98220d8a7d984d8b5d8afd981d8a9d88c20d988d8a3d8add98ad8a7d986d8a7d98b20d8b9d98620d8b9d985d8af20d983d8a5d8afd8aed8a7d98420d8a8d8b9d8b620d8a7d984d8b9d8a8d8a7d8b1d8a7d8aa20d8a7d984d981d983d8a7d987d98ad8a920d8a5d984d98ad987d8a72e20d987d986d8a7d984d98320d8a7d984d8b9d8afd98ad8af20d985d98620d8a7d984d8a3d986d988d8a7d8b920d8a7d984d985d8aad988d981d8b1d8a920d984d986d8b5d988d8b520d984d988d8b1d98ad98520d8a5d98ad8a8d8b3d988d985d88c20d988d984d983d98620d8a7d984d8bad8a7d984d8a8d98ad8a920d8aad98520d8aad8b9d8afd98ad984d987d8a720d8a8d8b4d983d98420d985d8a720d8b9d8a8d8b120d8a5d8afd8aed8a7d98420d8a8d8b9d8b620d8a7d984d986d988d8a7d8afd8b120d8a3d98820d8a7d984d983d984d985d8a7d8aa20d8a7d984d8b9d8b4d988d8a7d8a6d98ad8a920d8a5d984d98920d8a7d984d986d8b52e20d8a5d98620d983d986d8aa20d8aad8b1d98ad8af20d8a3d98620d8aad8b3d8aad8aed8afd98520d986d8b520d984d988d8b1d98ad98520d8a5d98ad8a8d8b3d988d98520d985d8a7d88c20d8b9d984d98ad98320d8a3d98620d8aad8aad8add982d98220d8a3d988d984d8a7d98b20d8a3d98620d984d98ad8b320d987d986d8a7d98320d8a3d98a20d983d984d985d8a7d8aa20d8a3d98820d8b9d8a8d8a7d8b1d8a7d8aa20d985d8add8b1d8acd8a920d8a3d98820d8bad98ad8b120d984d8a7d8a6d982d8a920d985d8aed8a8d8a3d8a920d981d98a20d987d8b0d8a720d8a7d984d986d8b52e20d8a8d98ad986d985d8a720d8aad8b9d985d98420d8acd985d98ad8b920d985d988d984d991d8afd8a7d8aa20d986d8b5d988d8b520d984d988d8b1d98ad98520d8a5d98ad8a8d8b3d988d98520d8b9d984d98920d8a7d984d8a5d986d8aad8b1d986d8aa20d8b9d984d98920d8a5d8b9d8a7d8afd8a920d8aad983d8b1d8a7d8b120d985d982d8a7d8b7d8b920d985d98620d986d8b520d984d988d8b1d98ad98520d8a5d98ad8a8d8b3d988d98520d986d981d8b3d98720d8b9d8afd8a920d985d8b1d8a7d8aa20d8a8d985d8a720d8aad8aad8b7d984d8a8d98720d8a7d984d8add8a7d8acd8a9d88c20d98ad982d988d98520d985d988d984d991d8afd986d8a720d987d8b0d8a720d8a8d8a7d8b3d8aad8aed8afd8a7d98520d983d984d985d8a7d8aa20d985d98620d982d8a7d985d988d8b320d98ad8add988d98a20d8b9d984d98920d8a3d983d8abd8b120d985d9862032303020d983d984d985d8a920d984d8a720d8aad98ad986d98ad8a9d88c20d985d8b6d8a7d98120d8a5d984d98ad987d8a720d985d8acd985d988d8b9d8a920d985d98620d8a7d984d8acd985d98420d8a7d984d986d985d988d8b0d8acd98ad8a9d88c20d984d8aad983d988d98ad98620d986d8b520d984d988d8b1d98ad98520d8a5d98ad8a8d8b3d988d98520d8b0d98820d8b4d983d98420d985d986d8b7d982d98a20d982d8b1d98ad8a820d8a5d984d98920d8a7d984d986d8b520d8a7d984d8add982d98ad982d98a2e20d988d8a8d8a7d984d8aad8a7d984d98a20d98ad983d988d98620d8a7d984d986d8b520d8a7d984d986d8a7d8aad8ad20d8aed8a7d984d98a20d985d98620d8a7d984d8aad983d8b1d8a7d8b1d88c20d8a3d98820d8a3d98a20d983d984d985d8a7d8aa20d8a3d98820d8b9d8a8d8a7d8b1d8a7d8aa20d8bad98ad8b120d984d8a7d8a6d982d8a920d8a3d98820d985d8a720d8b4d8a7d8a8d9872e20d988d987d8b0d8a720d985d8a720d98ad8acd8b9d984d98720d8a3d988d98420d985d988d984d991d8af20d986d8b520d984d988d8b1d98ad98520d8a5d98ad8a8d8b3d988d98520d8add982d98ad982d98a20d8b9d984d98920d8a7d984d8a5d986d8aad8b1d986d8aa2e3c2f703e, NULL, NULL, NULL, 9, '2020-08-30 01:51:48', '2024-01-20 23:13:42');

-- --------------------------------------------------------

--
-- Table structure for table `bottomlinks`
--

CREATE TABLE `bottomlinks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `language_id` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bottomlinks`
--

INSERT INTO `bottomlinks` (`id`, `language_id`, `user_id`, `name`, `url`, `created_at`, `updated_at`) VALUES
(5, 61, 2, 'Privacy Policy', '/fastifo/privacy-policy', NULL, NULL),
(6, 61, 2, 'Terms & Conditions', '/fastifo/terms-&-conditions', NULL, NULL),
(8, 62, 2, 'سياسة الخصوصية', '/fastifo/البنود-و-الظروف', NULL, NULL),
(9, 62, 2, 'البنود و الظروف', '/fastifo/سياسة-الخصوصية', NULL, NULL),
(10, 67, 6, 'Privacy Policy', '/tastify/privacy-policy', NULL, NULL),
(11, 67, 6, 'Terms & Conditions', '/tastify/terms-&-conditions', NULL, NULL),
(12, 68, 7, 'Privacy Policy', '/flavora/privacy-policy', NULL, NULL),
(13, 68, 7, 'Terms & Conditions', '/flavora/terms-&-conditions', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `clients`
--

CREATE TABLE `clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `fname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_fname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_lname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_username` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_state` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_fname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_lname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_username` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_state` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `verification_link` text COLLATE utf8mb4_unicode_ci,
  `email_verified` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'no',
  `pass_token` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_country_code` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_country_code` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `clients`
--

INSERT INTO `clients` (`id`, `user_id`, `fname`, `lname`, `photo`, `username`, `email`, `password`, `number`, `city`, `state`, `address`, `country`, `remember_token`, `billing_fname`, `billing_lname`, `billing_photo`, `billing_username`, `billing_email`, `billing_number`, `billing_city`, `billing_state`, `billing_address`, `billing_country`, `shipping_fname`, `shipping_lname`, `shipping_username`, `shipping_email`, `shipping_number`, `shipping_city`, `shipping_state`, `shipping_address`, `shipping_country`, `status`, `verification_link`, `email_verified`, `pass_token`, `created_at`, `updated_at`, `provider`, `provider_id`, `billing_country_code`, `shipping_country_code`) VALUES
(1, 2, 'Allen', 'Sid', NULL, 'allen', 'veha@mailinator.com', '$2a$12$y.7QzXrgWFSMVCQecP9k3uaXIlKcltuDVLkvpIX8Odf5HBacqRTx2', '(765) 289-2361', 'Muncie', 'Iowa', '1717 N Wheeling Ave, Muncie, United States', 'United States', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 'Yes', NULL, '2024-01-19 19:20:18', '2024-01-22 08:03:13', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'percentage, fixed',
  `value` decimal(11,2) DEFAULT NULL,
  `packages` text COLLATE utf8mb4_unicode_ci,
  `start_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `end_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `minimum_spend` decimal(11,2) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `coupons`
--

INSERT INTO `coupons` (`id`, `name`, `code`, `type`, `value`, `packages`, `start_date`, `end_date`, `minimum_spend`, `created_at`, `updated_at`) VALUES
(2, 'KHABO60', 'KHABO60', 'fixed', '60.00', NULL, '12/24/2020', '12/30/2020', '180.00', '2020-12-23 02:23:36', '2020-12-23 02:23:36'),
(3, 'Victory Day', 'BIJOY16', 'percentage', '16.00', NULL, '12/16/2020', '01/07/2021', '10.00', '2020-12-23 02:32:55', '2020-12-24 04:54:59'),
(4, 'Special', 'Special14', 'percentage', '14.00', NULL, '12/29/2020', '01/09/2021', '400.00', '2020-12-23 03:54:07', '2020-12-24 08:54:42'),
(5, 'Cricket', '123', 'percentage', '5.00', '[\"39\",\"40\"]', '12/03/2023', '12/28/2023', '100.00', '2023-12-04 10:36:24', '2023-12-04 10:42:52');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `user_id`, `name`, `email`, `phone`, `address`, `created_at`, `updated_at`) VALUES
(6, 2, 'Henry', 'hixutotos@mailinator.com', '0123654789', NULL, '2024-01-20 22:24:09', '2024-01-30 13:15:22'),
(7, 2, 'Piterson', 'wygun@mailinator.com', '78945612301', NULL, '2024-01-20 22:25:33', '2024-01-30 13:15:10'),
(9, 2, 'Azim Ahmed', 'azimahmed11041@gmail.com', '01775991798', 'house-32,road-3,sector-11,uttara,dhaka', '2024-10-12 20:23:07', '2024-10-12 20:23:07'),
(10, 2, 'Azim Ahmed', 'azimahmed11041@gmail.com', '01775892197', NULL, '2024-10-13 06:55:21', '2024-10-13 06:55:21');

-- --------------------------------------------------------

--
-- Table structure for table `email_templates`
--

CREATE TABLE `email_templates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email_type` varchar(100) DEFAULT NULL,
  `email_subject` text,
  `email_body` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `email_templates`
--

INSERT INTO `email_templates` (`id`, `email_type`, `email_subject`, `email_body`) VALUES
(2, 'email_verification', 'Verify Your Email', '<p style=\"line-height: 1.6;\">Hello<b> {customer_name}</b>,</p><p style=\"line-height: 1.6;\"><br>Please click the link below to verify your email.</p><p>{verification_link}</p><p><br></p><p>Best Regards,</p><p>{website_title}</p>'),
(12, 'custom_domain_connected', 'Custom Domain is Connected with Our Server', 'Hi {username},<br><br>\n\nThanks for your custom domain request.<br>\nYour requested domain {requested_domain} has been connected to your server.<br>\nPlease <strong>clear your browser cache</strong> & visit {requested_domain} to see your portfolio website.<br>\n\nYour current domain: {requested_domain}.<br>\nYour previous domain: {previous_domain}.<br><br>\n\nBest Regards,<br>\n{website_title}.<br>'),
(13, 'custom_domain_rejected', 'Custom Domain Request is Rejected', 'Hi {username},<br><br>\r\n\r\nThanks for your custom domain request.<br>\r\nUnfortunately, we have rejected your custom domain request<br>\r\n\r\nYour requested domain: {requested_domain}.<br>\r\nYour current domain: {current_domain}.<br><br>\r\n\r\nBest Regards,<br>\r\n{website_title}.<br>'),
(16, 'registration_with_premium_package', 'You have registered successfully', '<p>Hi {username},<br /><br />\n\nThis is a confirmation mail from us</p><p><b><span style=\"font-size:18px;\">Membership Information:</span></b><br /><strong>Package Title:</strong> {package_title}<br /><strong>Package Price:</strong> {package_price}</p><p><b>Discount:</b> {discount}</p><p><span style=\"font-weight:600;\">Total:</span> {total}<br /><strong>Activation Date:</strong> {activation_date}<br /><strong>Expire Date:</strong> {expire_date}</p><p><br /></p><p>We have attached an invoice with this mail.<br />\nThank you for your purchase.</p><p><br />\n\nBest Regards,<br />\n{website_title}.<br /></p>'),
(17, 'registration_with_trial_package', 'You have registered successfully', 'Hi {username},<br /><br />\r\n\r\nThis is a confirmation mail from us.<br />\r\nYou have purchased a trial package<br /><br />\r\n\r\n<h4>Membership Information:</h4>\r\n<strong>Package Title:</strong> {package_title}<br />\r\n<strong>Package Price:</strong> {package_price}<br />\r\n<strong>Activation Date:</strong> {activation_date}<br />\r\n<strong>Expire Date:</strong> {expire_date}<br /><br />\r\n\r\nWe have attached an invoice in this mail<br />\r\nThank you for your purchase.<br /><br />\r\n\r\nBest Regards,<br />\r\n{website_title}.<br />'),
(18, 'registration_with_free_package', 'You have registered successfully', 'Hi {username},<br /><br />\r\n\r\nThis is a confirmation mail from us.<br />\r\nYou have purchased a free package<br /><br />\r\n\r\n<h4>Membership Information:</h4>\r\n<strong>Package Title:</strong> {package_title}<br />\r\n<strong>Package Price:</strong> {package_price}<br />\r\n<strong>Activation Date:</strong> {activation_date}<br />\r\n<strong>Expire Date:</strong> {expire_date}<br /><br />\r\n\r\nWe have attached an invoice in this mail<br />\r\nThank you for your purchase.<br /><br />\r\n\r\nBest Regards,<br />\r\n{website_title}.<br />'),
(19, 'membership_expiry_reminder', 'Your membership will be expired soon', 'Hi {username},<br /><br />\r\n\r\nYour membership will be expired soon.<br />\r\nYour membership is valid till <strong>{last_day_of_membership}</strong><br />\r\nPlease click here - {login_link} to log into the dashboard to purchase a new package / extend the current package to extend your membership.<br /><br />\r\n\r\nBest Regards,<br />\r\n{website_title}.'),
(20, 'membership_expired', 'Your membership is expired', 'Hi {username},<br><br>\r\n\r\nYour membership is expired.<br>\r\nPlease click here - {login_link} to log into the dashboard to purchase a new package / extend the current package to continue the membership.<br><br>\r\n\r\nBest Regards,<br>\r\n{website_title}.'),
(21, 'membership_extend', 'Your membership is extended', '<p>Hi {username},<br /><br />\n\nThis is a confirmation mail from us.<br />\nYou have extended your membership.<br />\n\n<strong>Package Title:</strong> {package_title}<br />\n<strong>Package Price:</strong> {package_price}<br />\n<strong>Activation Date:</strong> {activation_date}<br />\n<strong>Expire Date:</strong> {expire_date}</p><p><br /></p><p>We have attached an invoice with this mail.<br />\nThank you for your purchase.</p><p><br />\n\nBest Regards,<br />\n{website_title}.<br /></p>'),
(22, 'payment_accepted_for_membership_extension_offline_gateway', 'Your payment for membership extension is accepted', '<p>Hi {username},<br /><br />\r\n\r\nThis is a confirmation mail from us.<br />\r\nYour payment has been accepted & your membership is extended.<br />\r\n\r\n<strong>Package Title:</strong> {package_title}<br />\r\n<strong>Package Price:</strong> {package_price}<br />\r\n<strong>Activation Date:</strong> {activation_date}<br />\r\n<strong>Expire Date:</strong> {expire_date}</p><p><br /></p><p>We have attached an invoice with this mail.<br />\r\nThank you for your purchase.</p><p><br />\r\n\r\nBest Regards,<br />\r\n{website_title}.<br /></p>'),
(23, 'payment_accepted_for_registration_offline_gateway', 'Your payment for registration is approved', '<p>Hi {username},<br /><br />\r\n\r\nThis is a confirmation mail from us.<br />\r\nYour payment has been accepted & now you can login to your user dashboard to build your portfolio website.<br />\r\n\r\n<strong>Package Title:</strong> {package_title}<br />\r\n<strong>Package Price:</strong> {package_price}<br />\r\n<strong>Activation Date:</strong> {activation_date}<br />\r\n<strong>Expire Date:</strong> {expire_date}</p><p><br /></p><p>We have attached an invoice with this mail.<br />\r\nThank you for your purchase.</p><p><br />\r\n\r\nBest Regards,<br />\r\n{website_title}.<br /></p>'),
(24, 'payment_rejected_for_membership_extension_offline_gateway', 'Your payment for membership extension is rejected', '<p>Hi {username},<br /><br />\r\n\r\nWe are sorry to inform you that your payment has been rejected<br />\r\n\r\n<strong>Package Title:</strong> {package_title}<br />\r\n<strong>Package Price:</strong> {package_price}<br />\r\n\r\nBest Regards,<br />\r\n{website_title}.<br /></p>'),
(25, 'payment_rejected_for_registration_offline_gateway', 'Your payment for registration is rejected', '<p>Hi {username},<br /><br />\r\n\r\nWe are sorry to inform you that your payment has been rejected<br>\r\n\r\n<strong>Package Title:</strong> {package_title}<br />\r\n<strong>Package Price:</strong> {package_price}<br />\r\n\r\nBest Regards,<br />\r\n{website_title}.<br /></p>'),
(26, 'admin_changed_current_package', 'Admin has changed your current package', '<p>Hi {username},<br /><br />\r\n\r\nAdmin has changed your current package <b>({replaced_package})</b></p>\r\n<p><b>New Package Information:</b></p>\r\n<p>\r\n<strong>Package:</strong> {package_title}<br />\r\n<strong>Package Price:</strong> {package_price}<br />\r\n<strong>Activation Date:</strong> {activation_date}<br />\r\n<strong>Expire Date:</strong> {expire_date}</p><p><br /></p><p>We have attached an invoice with this mail.<br />\r\nThank you for your purchase.</p><p><br />\r\n\r\nBest Regards,<br />\r\n{website_title}.<br /></p>'),
(27, 'admin_added_current_package', 'Admin has added current package for you', '<p>Hi {username},<br /><br />\r\n\r\nAdmin has added current package for you</p><p><b><span style=\"font-size:18px;\">Current Membership Information:</span></b><br />\r\n<strong>Package Title:</strong> {package_title}<br />\r\n<strong>Package Price:</strong> {package_price}<br />\r\n<strong>Activation Date:</strong> {activation_date}<br />\r\n<strong>Expire Date:</strong> {expire_date}</p><p><br /></p><p>We have attached an invoice with this mail.<br />\r\nThank you for your purchase.</p><p><br />\r\n\r\nBest Regards,<br />\r\n{website_title}.<br /></p>'),
(28, 'admin_changed_next_package', 'Admin has changed your next package', '<p>Hi {username},<br /><br />\r\n\r\nAdmin has changed your next package <b>({replaced_package})</b></p><p><b><span style=\"font-size:18px;\">Next Membership Information:</span></b><br />\r\n<strong>Package Title:</strong> {package_title}<br />\r\n<strong>Package Price:</strong> {package_price}<br />\r\n<strong>Activation Date:</strong> {activation_date}<br />\r\n<strong>Expire Date:</strong> {expire_date}</p><p><br /></p><p>We have attached an invoice with this mail.<br />\r\nThank you for your purchase.</p><p><br />\r\n\r\nBest Regards,<br />\r\n{website_title}.<br /></p>'),
(29, 'admin_added_next_package', 'Admin has added next package for you', '<p>Hi {username},<br /><br />\r\n\r\nAdmin has added next package for you</p><p><b><span style=\"font-size:18px;\">Next Membership Information:</span></b><br />\r\n<strong>Package Title:</strong> {package_title}<br />\r\n<strong>Package Price:</strong> {package_price}<br />\r\n<strong>Activation Date:</strong> {activation_date}<br />\r\n<strong>Expire Date:</strong> {expire_date}</p><p><br /></p><p>We have attached an invoice with this mail.<br />\r\nThank you for your purchase.</p><p><br />\r\n\r\nBest Regards,<br />\r\n{website_title}.<br /></p>'),
(30, 'admin_removed_current_package', 'Admin has removed current package for you', '<p>Hi {username},<br /><br />\r\n\r\nAdmin has removed current package - <strong>{removed_package_title}</strong><br>\r\n\r\nBest Regards,<br />\r\n{website_title}.<br />'),
(31, 'admin_removed_next_package', 'Admin has removed next package for you', '<p>Hi {username},<br /><br />\r\n\r\nAdmin has removed next package - <strong>{removed_package_title}</strong><br>\r\n\r\nBest Regards,<br />\r\n{website_title}.<br />');

-- --------------------------------------------------------

--
-- Table structure for table `faqs`
--

CREATE TABLE `faqs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `language_id` int(11) NOT NULL DEFAULT '0',
  `question` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `answer` text COLLATE utf8mb4_unicode_ci,
  `serial_number` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `faqs`
--

INSERT INTO `faqs` (`id`, `language_id`, `question`, `answer`, `serial_number`) VALUES
(20, 176, 'Why this app is so awesome', 'Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod.', 1),
(21, 176, 'Why this app is so awesome', 'Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod.', 2),
(22, 176, 'Why this app is so awesome', 'Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod.', 3),
(23, 176, 'Why this app is so awesome', 'Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod.', 4),
(24, 176, 'Why this app is so awesome', 'Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod.', 5),
(25, 176, 'Why this app is so awesome', 'Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod.', 6),
(26, 176, 'Why this app is so awesome', 'Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod.', 7),
(27, 176, 'Why this app is so awesome', 'Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod.', 8),
(28, 176, 'Why this app is so awesome', 'Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod.', 9),
(29, 176, 'Why this app is so awesome', 'Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod.', 10),
(50, 177, 'لماذا هذا التطبيق رائع جدا', 'الرسوم المتحركة pariatur كليشيه reprehenderit ، enim eiusmod حياة عالية accusamus تيري ريتشاردسون الإعلانية الحبار. 3 الذئب القمر officia aute ، غير cupidatat غداء دولر لوح التزلج. شاحنة الغذاء الكينوا nesciunt labum eiusmod.', 1),
(51, 177, 'لماذا هذا التطبيق رائع جدا', 'الرسوم المتحركة pariatur كليشيه reprehenderit ، enim eiusmod حياة عالية accusamus تيري ريتشاردسون الإعلانية الحبار. 3 الذئب القمر officia aute ، غير cupidatat غداء دولر لوح التزلج. شاحنة الغذاء الكينوا nesciunt labum eiusmod.', 2),
(52, 177, 'لماذا هذا التطبيق رائع جدا', 'الرسوم المتحركة pariatur كليشيه reprehenderit ، enim eiusmod حياة عالية accusamus تيري ريتشاردسون الإعلانية الحبار. 3 الذئب القمر officia aute ، غير cupidatat غداء دولر لوح التزلج. شاحنة الغذاء الكينوا nesciunt labum eiusmod.', 3),
(53, 177, 'لماذا هذا التطبيق رائع جدا', 'الرسوم المتحركة pariatur كليشيه reprehenderit ، enim eiusmod حياة عالية accusamus تيري ريتشاردسون الإعلانية الحبار. 3 الذئب القمر officia aute ، غير cupidatat غداء دولر لوح التزلج. شاحنة الغذاء الكينوا nesciunt labum eiusmod.', 4),
(54, 177, 'لماذا هذا التطبيق رائع جدا', 'الرسوم المتحركة pariatur كليشيه reprehenderit ، enim eiusmod حياة عالية accusamus تيري ريتشاردسون الإعلانية الحبار. 3 الذئب القمر officia aute ، غير cupidatat غداء دولر لوح التزلج. شاحنة الغذاء الكينوا nesciunt labum eiusmod.', 5),
(55, 177, 'لماذا هذا التطبيق رائع جدا', 'الرسوم المتحركة pariatur كليشيه reprehenderit ، enim eiusmod حياة عالية accusamus تيري ريتشاردسون الإعلانية الحبار. 3 الذئب القمر officia aute ، غير cupidatat غداء دولر لوح التزلج. شاحنة الغذاء الكينوا nesciunt labum eiusmod.', 6),
(56, 177, 'لماذا هذا التطبيق رائع جدا', 'الرسوم المتحركة pariatur كليشيه reprehenderit ، enim eiusmod حياة عالية accusamus تيري ريتشاردسون الإعلانية الحبار. 3 الذئب القمر officia aute ، غير cupidatat غداء دولر لوح التزلج. شاحنة الغذاء الكينوا nesciunt labum eiusmod.', 7),
(57, 177, 'لماذا هذا التطبيق رائع جدا', 'الرسوم المتحركة pariatur كليشيه reprehenderit ، enim eiusmod حياة عالية accusamus تيري ريتشاردسون الإعلانية الحبار. 3 الذئب القمر officia aute ، غير cupidatat غداء دولر لوح التزلج. شاحنة الغذاء الكينوا nesciunt labum eiusmod.', 8),
(58, 177, 'لماذا هذا التطبيق رائع جدا', 'الرسوم المتحركة pariatur كليشيه reprehenderit ، enim eiusmod حياة عالية accusamus تيري ريتشاردسون الإعلانية الحبار. 3 الذئب القمر officia aute ، غير cupidatat غداء دولر لوح التزلج. شاحنة الغذاء الكينوا nesciunt labum eiusmod.', 9),
(59, 177, 'لماذا هذا التطبيق رائع جدا', 'الرسوم المتحركة pariatur كليشيه reprehenderit ، enim eiusmod حياة عالية accusamus تيري ريتشاردسون الإعلانية الحبار. 3 الذئب القمر officia aute ، غير cupidatat غداء دولر لوح التزلج. شاحنة الغذاء الكينوا nesciunt labum eiusmod.', 10);

-- --------------------------------------------------------

--
-- Table structure for table `features`
--

CREATE TABLE `features` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `language_id` int(11) DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `serial_number` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `features`
--

INSERT INTO `features` (`id`, `language_id`, `image`, `title`, `text`, `serial_number`, `created_at`, `updated_at`) VALUES
(37, 176, '27a7a4cd27a70e5b2acc32ede1961d91662f6664.png', 'Realtime order', 'Instantly track orders, live updates', 1, NULL, NULL),
(38, 176, 'a28705da033bb0862d29b9268260a81a71f0c6fd.png', 'QR Builder', 'Create instant QR codes with QR Builder', 2, NULL, NULL),
(42, 176, '556c9ff8ee69a073139243df4ddde63c5916e409.png', 'Whatsapp notification', 'New messages Stay connected on WhatsApp', 3, NULL, NULL),
(43, 176, '63b4c2334f3d16cb546e7c05e7139ac057b79790.png', 'POS', 'Efficient POS system for seamless transactions', 4, NULL, NULL),
(50, 176, '2d346bf317e87d685ccf0e3f37939432b8515d8b.png', 'Progressive Web App', 'Fast, reliable, and engaging', 5, NULL, NULL),
(51, 176, 'de45d4cfc04ddf427fdb4db32a674a16ed0ef6b2.png', 'Amazon AWS s3', 'Secure, scalable, and reliable storage', 6, NULL, NULL),
(52, 177, '186eac72f43bfd5adedbd68b4dce6e90bf4b5731.png', 'أغذية صحية', 'تتبع الطلبات على الفور، والتحديثات الحية', 1, NULL, NULL),
(53, 177, '8aade47e5116415bc8c5609156d9efea7612f56e.png', 'الأصناف الطازجة', 'الطازجة الطازجة الطازجة الطازجة الطازجة', 2, NULL, NULL),
(54, 177, 'bbb535aa35719d83de0339af1e436addc8287b2f.png', 'إشعار واتس اب', 'رسائل جديدة ابق على اتصال على', 3, NULL, NULL),
(55, 177, 'e6d44b4559ea40ae435fe2221ed02e088bfe364a.png', 'جبن حلو', 'نظام نقاط البيع الفعال لإجراء معاملات سلسة', 4, NULL, NULL),
(56, 177, '303af305df65bc64aa6770bedf6eca8bf43706e7.png', 'أفضل بيتزا', 'سريع وموثوق وجذاب', 5, NULL, NULL),
(57, 177, 'c3e61ff804aa8a56a117def551a08e87e5208c7d.png', 'وجبات خفيفة ساخنة', 'تخزين آمن وقابل للتطوير وموثوق', 6, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `galleries`
--

CREATE TABLE `galleries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `language_id` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `serial_number` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `galleries`
--

INSERT INTO `galleries` (`id`, `language_id`, `user_id`, `title`, `image`, `serial_number`, `created_at`, `updated_at`) VALUES
(8, 61, 2, 'Tomatoes', 'd6e0ec39a8731c0b6a9c6793acad13923dd826dc.jpg', 7, '2024-01-19 19:32:11', '2024-01-19 19:32:11'),
(9, 61, 2, 'Wine Glasses', '555c8f82b8509be10d400945824a83f7fc373800.jpg', 6, '2024-01-19 19:32:35', '2024-01-19 19:32:35'),
(10, 61, 2, 'Black Burger', '1c7d153050c9f001d55dea66989510e3d14b76b3.jpg', 5, '2024-01-19 19:33:00', '2024-01-19 19:33:00'),
(11, 61, 2, 'Cutting Vegetables', '637cdd0767717e99884baf1ec083599b20b43b98.jpg', 4, '2024-01-19 19:33:55', '2024-01-19 19:33:55'),
(12, 61, 2, 'Blackberry', 'b9e80247b8c2d06dd6b4cfc67a4811de69922c39.jpg', 3, '2024-01-19 19:34:16', '2024-01-19 19:34:16'),
(13, 61, 2, 'Chef Cooking', '147cae2b8dbfa798dabf9cc024c66a5cfc4069e4.jpg', 2, '2024-01-19 19:34:56', '2024-01-19 19:34:56'),
(14, 61, 2, 'Boti Kabab', 'eb2f0f84096b98aa33922e839868874498b973d3.jpg', 1, '2024-01-19 19:35:10', '2024-01-19 19:35:10'),
(15, 62, 2, 'طماطم', '0a1888fe996f97844f12cafc229302fc380890c7.jpg', 7, '2024-01-19 19:35:35', '2024-01-19 19:35:35'),
(16, 62, 2, 'كؤوس النبيذ', '3759ee3744576d4b96fd66f6500ddd9fe839bd6d.jpg', 6, '2024-01-19 19:35:55', '2024-01-19 19:35:55'),
(17, 62, 2, 'بلاك برجر', '179137426f971803401938592b36005ba0e99e78.jpg', 5, '2024-01-19 19:36:17', '2024-01-19 19:36:17'),
(18, 62, 2, 'تقطيع الخضار', '06adc4e81a3b5a388ac1add8646a88f9a41b61a3.jpg', 4, '2024-01-19 19:36:42', '2024-01-19 19:36:42'),
(19, 62, 2, 'بلاك بيري', '17069858541213c1c43c3cdf9d501b48bb54c003.jpg', 3, '2024-01-19 19:36:59', '2024-01-19 19:36:59'),
(20, 62, 2, 'طاه الطبخ', '13bd14d3ae9989e0ec158b014cdfd127093a2ac8.jpg', 2, '2024-01-19 19:37:18', '2024-01-19 19:37:18'),
(21, 62, 2, 'بوتي كباب', '9760e5e265a043d249c0519178c1aca753c7149f.jpg', 1, '2024-01-19 19:39:05', '2024-01-19 19:39:05');

-- --------------------------------------------------------

--
-- Table structure for table `guests`
--

CREATE TABLE `guests` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `endpoint` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jcategories`
--

CREATE TABLE `jcategories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `language_id` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `serial_number` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jcategories`
--

INSERT INTO `jcategories` (`id`, `language_id`, `user_id`, `name`, `status`, `serial_number`, `created_at`, `updated_at`) VALUES
(3, 61, 2, 'Andriod Developer', 1, 5, '2024-01-19 19:22:13', '2024-01-19 19:22:13'),
(4, 61, 2, 'IOS Developer', 1, 4, '2024-01-19 19:22:27', '2024-01-19 19:22:27'),
(5, 61, 2, 'Team Leader', 1, 3, '2024-01-19 19:22:46', '2024-01-19 19:22:46'),
(6, 61, 2, 'Web Designer', 1, 2, '2024-01-19 19:23:03', '2024-01-19 19:23:03'),
(7, 61, 2, 'Web Developer', 1, 1, '2024-01-19 19:23:27', '2024-01-19 19:23:27'),
(8, 62, 2, 'الروبوت المطور', 1, 5, '2024-01-19 19:41:39', '2024-01-19 19:41:39'),
(9, 62, 2, 'مطورIOS', 1, 4, '2024-01-19 19:42:28', '2024-01-19 19:42:28'),
(10, 62, 2, 'رئيس الفريق', 1, 3, '2024-01-19 19:42:38', '2024-01-19 19:42:38'),
(11, 62, 2, 'مصمم الويب', 1, 2, '2024-01-19 19:42:55', '2024-01-19 19:42:55'),
(12, 62, 2, 'مطور ويب', 1, 1, '2024-01-19 19:43:06', '2024-01-19 19:43:06');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `jcategory_id` int(11) DEFAULT NULL,
  `language_id` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vacancy` int(11) DEFAULT NULL,
  `deadline` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `experience` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `job_responsibilities` blob,
  `employment_status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `educational_requirements` blob,
  `experience_requirements` blob,
  `additional_requirements` blob,
  `job_location` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `salary` blob,
  `benefits` blob,
  `read_before_apply` blob,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `serial_number` int(11) NOT NULL DEFAULT '0',
  `meta_keywords` text COLLATE utf8mb4_unicode_ci,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jobs`
--

INSERT INTO `jobs` (`id`, `jcategory_id`, `language_id`, `user_id`, `title`, `slug`, `vacancy`, `deadline`, `experience`, `job_responsibilities`, `employment_status`, `educational_requirements`, `experience_requirements`, `additional_requirements`, `job_location`, `salary`, `benefits`, `read_before_apply`, `email`, `serial_number`, `meta_keywords`, `meta_description`, `created_at`, `updated_at`) VALUES
(3, 5, 61, 2, 'Agriculture Market Systems Leader', 'Agriculture-Market-Systems-Leader', 4, '02/14/2024', '4', 0x3c703e596f75206861766520746f20626520657870657269656e6365642077697468205549206672616d65776f726b7320696e2067656e6572616c3b207765206c6f76652074686520416e67756c617220616e6420416e67756c6172206d6174657269616c2e3c62723e596f75206861766520746f20626520657870657269656e63656420696e206275696c64696e672053696e676c652050616765204170706c69636174696f6e732028535041292026616d703b20696e746567726174696e672057656220285265737429204150492e3c62723e57656c6c20766572736564207769746820416e67756c6172206d6f64756c6573206f7220796f752068617665206372656174656420637573746f6d20616e642077656220636f6d706f6e656e747320627920796f757273656c662e3c62723e596f75206d75737420686176652070726163746963616c20657870657269656e6365206f6e204e6f64652e6a732c20547970655363726970742c207765627061636b20616e64205468697264207061727479206c6962726172792e3c62723e596f75206861766520616e20696e2d646570746820756e6465727374616e64696e67206f662063726f73732062726f7773657220636f6d7061746962696c69747920616e6420796f7520646f206e6f7420637265617465206275677320666f72207375636820726561736f6e732e3c62723e596f752061726520706978656c2d7065726665637420696e2064657369676e20636f6e76657273696f6e7320616e6420796f75207468696e6b206f66206d6f62696c652d666972737420696d706c656d656e746174696f6e732e3c62723e596f752073686f756c642068617665206b6e6f776c65646765206f66204353532070726570726f636573736f72732c204d6564696120717565726965732c20496d61676520636f6d7072657373696f6e20616e6420626520676f6f64207769746820646562756767696e672e3c2f703e, 'Full-time', 0x3c703e596f75206861766520746f20626520657870657269656e6365642077697468205549206672616d65776f726b7320696e2067656e6572616c3b207765206c6f76652074686520416e67756c617220616e6420416e67756c6172206d6174657269616c2e3c62723e596f75206861766520746f20626520657870657269656e63656420696e206275696c64696e672053696e676c652050616765204170706c69636174696f6e732028535041292026616d703b20696e746567726174696e672057656220285265737429204150492e3c62723e57656c6c20766572736564207769746820416e67756c6172206d6f64756c6573206f7220796f752068617665206372656174656420637573746f6d20616e642077656220636f6d706f6e656e747320627920796f757273656c662e3c2f703e, 0x3c703e596f75206861766520746f20626520657870657269656e6365642077697468205549206672616d65776f726b7320696e2067656e6572616c3b207765206c6f76652074686520416e67756c617220616e6420416e67756c6172206d6174657269616c2e3c62723e596f75206861766520746f20626520657870657269656e63656420696e206275696c64696e672053696e676c652050616765204170706c69636174696f6e732028535041292026616d703b20696e746567726174696e672057656220285265737429204150492e3c62723e57656c6c20766572736564207769746820416e67756c6172206d6f64756c6573206f7220796f752068617665206372656174656420637573746f6d20616e642077656220636f6d706f6e656e747320627920796f757273656c662e3c62723e596f752073686f756c642068617665206b6e6f776c65646765206f66204353532070726570726f636573736f72732c204d6564696120717565726965732c20496d61676520636f6d7072657373696f6e20616e6420626520676f6f64207769746820646562756767696e672e3c2f703e, 0x3c703e596f75206861766520616e20696e2d646570746820756e6465727374616e64696e67206f662063726f73732062726f7773657220636f6d7061746962696c69747920616e6420796f7520646f206e6f7420637265617465206275677320666f72207375636820726561736f6e732e3c62723e596f752061726520706978656c2d7065726665637420696e2064657369676e20636f6e76657273696f6e7320616e6420796f75207468696e6b206f66206d6f62696c652d666972737420696d706c656d656e746174696f6e732e3c62723e596f752073686f756c642068617665206b6e6f776c65646765206f66204353532070726570726f636573736f72732c204d6564696120717565726965732c20496d61676520636f6d7072657373696f6e20616e6420626520676f6f64207769746820646562756767696e672e3c2f703e, 'California, USA', 0x3c703e2431303030202d2024313530303c2f703e, 0x3c703e596f75206861766520616e20696e2d646570746820756e6465727374616e64696e67206f662063726f73732062726f7773657220636f6d7061746962696c69747920616e6420796f7520646f206e6f7420637265617465206275677320666f72207375636820726561736f6e732e3c62723e596f752061726520706978656c2d7065726665637420696e2064657369676e20636f6e76657273696f6e7320616e6420796f75207468696e6b206f66206d6f62696c652d666972737420696d706c656d656e746174696f6e732e3c62723e596f752073686f756c642068617665206b6e6f776c65646765206f66204353532070726570726f636573736f72732c204d6564696120717565726965732c20496d61676520636f6d7072657373696f6e20616e6420626520676f6f64207769746820646562756767696e672e3c2f703e, NULL, 'drop_your_cv@plusagency.com', 4, NULL, NULL, '2024-01-19 19:25:45', '2024-01-19 19:25:45'),
(4, 6, 61, 2, 'Front End Software Engineer', 'Front-End-Software-Engineer', 5, '01/26/2024', '2 to 5 year(s)', 0x3c703e596f75206861766520746f20626520657870657269656e6365642077697468205549206672616d65776f726b7320696e2067656e6572616c3b207765206c6f76652074686520416e67756c617220616e6420416e67756c6172206d6174657269616c2e3c62723e596f75206861766520746f20626520657870657269656e63656420696e206275696c64696e672053696e676c652050616765204170706c69636174696f6e732028535041292026616d703b20696e746567726174696e672057656220285265737429204150492e3c62723e57656c6c20766572736564207769746820416e67756c6172206d6f64756c6573206f7220796f752068617665206372656174656420637573746f6d20616e642077656220636f6d706f6e656e747320627920796f757273656c662e3c62723e596f75206d75737420686176652070726163746963616c20657870657269656e6365206f6e204e6f64652e6a732c20547970655363726970742c207765627061636b20616e64205468697264207061727479206c6962726172792e3c62723e596f75206861766520616e20696e2d646570746820756e6465727374616e64696e67206f662063726f73732062726f7773657220636f6d7061746962696c69747920616e6420796f7520646f206e6f7420637265617465206275677320666f72207375636820726561736f6e732e3c62723e596f752061726520706978656c2d7065726665637420696e2064657369676e20636f6e76657273696f6e7320616e6420796f75207468696e6b206f66206d6f62696c652d666972737420696d706c656d656e746174696f6e732e3c62723e596f752073686f756c642068617665206b6e6f776c65646765206f66204353532070726570726f636573736f72732c204d6564696120717565726965732c20496d61676520636f6d7072657373696f6e20616e6420626520676f6f64207769746820646562756767696e672e3c2f703e, 'Full-time', 0x3c703e596f75206d75737420686176652070726163746963616c20657870657269656e6365206f6e204e6f64652e6a732c20547970655363726970742c207765627061636b20616e64205468697264207061727479206c6962726172792e3c62723e596f75206861766520616e20696e2d646570746820756e6465727374616e64696e67206f662063726f73732062726f7773657220636f6d7061746962696c69747920616e6420796f7520646f206e6f7420637265617465206275677320666f72207375636820726561736f6e732e3c62723e596f752061726520706978656c2d7065726665637420696e2064657369676e20636f6e76657273696f6e7320616e6420796f75207468696e6b206f66206d6f62696c652d666972737420696d706c656d656e746174696f6e732e3c62723e596f752073686f756c642068617665206b6e6f776c65646765206f66204353532070726570726f636573736f72732c204d6564696120717565726965732c20496d61676520636f6d7072657373696f6e20616e6420626520676f6f64207769746820646562756767696e672e3c2f703e, 0x3c703e3120746f20332079656172733c2f703e, 0x3c703e596f75206861766520746f20626520657870657269656e6365642077697468205549206672616d65776f726b7320696e2067656e6572616c3b207765206c6f76652074686520416e67756c617220616e6420416e67756c6172206d6174657269616c2e3c62723e596f75206861766520746f20626520657870657269656e63656420696e206275696c64696e672053696e676c652050616765204170706c69636174696f6e732028535041292026616d703b20696e746567726174696e672057656220285265737429204150492e3c62723e57656c6c20766572736564207769746820416e67756c6172206d6f64756c6573206f7220796f752068617665206372656174656420637573746f6d20616e642077656220636f6d706f6e656e747320627920796f757273656c662e3c62723e596f75206d75737420686176652070726163746963616c20657870657269656e6365206f6e204e6f64652e6a732c20547970655363726970742c207765627061636b20616e64205468697264207061727479206c6962726172792e3c2f703e, 'Paris, France', 0x3c703e4e65676f746961626c653c2f703e, 0x3c703e596f75206861766520746f20626520657870657269656e6365642077697468205549206672616d65776f726b7320696e2067656e6572616c3b207765206c6f76652074686520416e67756c617220616e6420416e67756c6172206d6174657269616c2e3c62723e596f75206861766520746f20626520657870657269656e63656420696e206275696c64696e672053696e676c652050616765204170706c69636174696f6e732028535041292026616d703b20696e746567726174696e672057656220285265737429204150492e3c62723e57656c6c20766572736564207769746820416e67756c6172206d6f64756c6573206f7220796f752068617665206372656174656420637573746f6d20616e642077656220636f6d706f6e656e747320627920796f757273656c662e3c62723e596f75206d75737420686176652070726163746963616c20657870657269656e6365206f6e204e6f64652e6a732c20547970655363726970742c207765627061636b20616e64205468697264207061727479206c6962726172792e3c62723e596f752073686f756c642068617665206b6e6f776c65646765206f66204353532070726570726f636573736f72732c204d6564696120717565726965732c20496d61676520636f6d7072657373696f6e20616e6420626520676f6f64207769746820646562756767696e672e3c2f703e, NULL, 'drop_your_cv@plusagency.com', 3, NULL, NULL, '2024-01-19 19:27:32', '2024-01-19 19:27:32'),
(5, 7, 61, 2, 'PHP Developer - Laravel, Codeigniter', 'PHP-Developer---Laravel,-Codeigniter', 2, '01/31/2024', '2 to 3 year(s)', 0x3c703e596f75206861766520746f20626520657870657269656e6365642077697468205549206672616d65776f726b7320696e2067656e6572616c3b207765206c6f76652074686520416e67756c617220616e6420416e67756c6172206d6174657269616c2e3c62723e596f75206861766520746f20626520657870657269656e63656420696e206275696c64696e672053696e676c652050616765204170706c69636174696f6e732028535041292026616d703b20696e746567726174696e672057656220285265737429204150492e3c62723e57656c6c20766572736564207769746820416e67756c6172206d6f64756c6573206f7220796f752068617665206372656174656420637573746f6d20616e642077656220636f6d706f6e656e747320627920796f757273656c662e3c62723e596f75206d75737420686176652070726163746963616c20657870657269656e6365206f6e204e6f64652e6a732c20547970655363726970742c207765627061636b20616e64205468697264207061727479206c6962726172792e3c62723e596f75206861766520616e20696e2d646570746820756e6465727374616e64696e67206f662063726f73732062726f7773657220636f6d7061746962696c69747920616e6420796f7520646f206e6f7420637265617465206275677320666f72207375636820726561736f6e732e3c62723e596f752061726520706978656c2d7065726665637420696e2064657369676e20636f6e76657273696f6e7320616e6420796f75207468696e6b206f66206d6f62696c652d666972737420696d706c656d656e746174696f6e732e3c62723e596f752073686f756c642068617665206b6e6f776c65646765206f66204353532070726570726f636573736f72732c204d6564696120717565726965732c20496d61676520636f6d7072657373696f6e20616e6420626520676f6f64207769746820646562756767696e672e3c2f703e, 'Full-time', 0x3c703e596f75206861766520746f20626520657870657269656e6365642077697468205549206672616d65776f726b7320696e2067656e6572616c3b207765206c6f76652074686520416e67756c617220616e6420416e67756c6172206d6174657269616c2e3c62723e596f75206861766520746f20626520657870657269656e63656420696e206275696c64696e672053696e676c652050616765204170706c69636174696f6e732028535041292026616d703b20696e746567726174696e672057656220285265737429204150492e3c62723e57656c6c20766572736564207769746820416e67756c6172206d6f64756c6573206f7220796f752068617665206372656174656420637573746f6d20616e642077656220636f6d706f6e656e747320627920796f757273656c662e3c2f703e, 0x3c703e596f75206861766520746f20626520657870657269656e6365642077697468205549206672616d65776f726b7320696e2067656e6572616c3b207765206c6f76652074686520416e67756c617220616e6420416e67756c6172206d6174657269616c2e3c62723e596f75206861766520746f20626520657870657269656e63656420696e206275696c64696e672053696e676c652050616765204170706c69636174696f6e732028535041292026616d703b20696e746567726174696e672057656220285265737429204150492e3c62723e57656c6c20766572736564207769746820416e67756c6172206d6f64756c6573206f7220796f752068617665206372656174656420637573746f6d20616e642077656220636f6d706f6e656e747320627920796f757273656c662e3c62723e596f75206d75737420686176652070726163746963616c20657870657269656e6365206f6e204e6f64652e6a732c20547970655363726970742c207765627061636b20616e64205468697264207061727479206c6962726172792e3c62723e596f752073686f756c642068617665206b6e6f776c65646765206f66204353532070726570726f636573736f72732c204d6564696120717565726965732c20496d61676520636f6d7072657373696f6e20616e6420626520676f6f64207769746820646562756767696e672e3c2f703e, 0x3c703e596f75206d75737420686176652070726163746963616c20657870657269656e6365206f6e204e6f64652e6a732c20547970655363726970742c207765627061636b20616e64205468697264207061727479206c6962726172792e3c62723e596f75206861766520616e20696e2d646570746820756e6465727374616e64696e67206f662063726f73732062726f7773657220636f6d7061746962696c69747920616e6420796f7520646f206e6f7420637265617465206275677320666f72207375636820726561736f6e732e3c62723e596f752061726520706978656c2d7065726665637420696e2064657369676e20636f6e76657273696f6e7320616e6420796f75207468696e6b206f66206d6f62696c652d666972737420696d706c656d656e746174696f6e732e3c62723e596f752073686f756c642068617665206b6e6f776c65646765206f66204353532070726570726f636573736f72732c204d6564696120717565726965732c20496d61676520636f6d7072657373696f6e20616e6420626520676f6f64207769746820646562756767696e672e3c2f703e, 'California, USA', 0x3c703e2431303030202d2024313530303c2f703e, 0x3c703e57656c6c20766572736564207769746820416e67756c6172206d6f64756c6573206f7220796f752068617665206372656174656420637573746f6d20616e642077656220636f6d706f6e656e747320627920796f757273656c662e3c62723e596f75206d75737420686176652070726163746963616c20657870657269656e6365206f6e204e6f64652e6a732c20547970655363726970742c207765627061636b20616e64205468697264207061727479206c6962726172792e3c62723e596f75206861766520616e20696e2d646570746820756e6465727374616e64696e67206f662063726f73732062726f7773657220636f6d7061746962696c69747920616e6420796f7520646f206e6f7420637265617465206275677320666f72207375636820726561736f6e732e3c62723e596f752061726520706978656c2d7065726665637420696e2064657369676e20636f6e76657273696f6e7320616e6420796f75207468696e6b206f66206d6f62696c652d666972737420696d706c656d656e746174696f6e732e3c62723e596f752073686f756c642068617665206b6e6f776c65646765206f66204353532070726570726f636573736f72732c204d6564696120717565726965732c20496d61676520636f6d7072657373696f6e20616e6420626520676f6f64207769746820646562756767696e672e3c2f703e, 0x3c703e3c7370616e207374796c653d22636f6c6f723a20236666336233303b223e2a50686f746f67726170683c2f7370616e3e266e6273703b6d75737420626520656e636c6f73656420776974682074686520726573756d652e3c2f703e, 'drop_your_cv@plusagency.com', 2, NULL, NULL, '2024-01-19 19:29:20', '2024-01-19 19:29:20'),
(6, 7, 61, 2, 'Web Developer', 'Web-Developer', 3, '01/31/2024', '3 to 4 year(s)', 0x3c703e596f75206861766520746f20626520657870657269656e6365642077697468205549206672616d65776f726b7320696e2067656e6572616c3b207765206c6f76652074686520416e67756c617220616e6420416e67756c6172206d6174657269616c2e3c62723e596f75206861766520746f20626520657870657269656e63656420696e206275696c64696e672053696e676c652050616765204170706c69636174696f6e732028535041292026616d703b20696e746567726174696e672057656220285265737429204150492e3c62723e57656c6c20766572736564207769746820416e67756c6172206d6f64756c6573206f7220796f752068617665206372656174656420637573746f6d20616e642077656220636f6d706f6e656e747320627920796f757273656c662e3c62723e596f75206d75737420686176652070726163746963616c20657870657269656e6365206f6e204e6f64652e6a732c20547970655363726970742c207765627061636b20616e64205468697264207061727479206c6962726172792e3c62723e596f75206861766520616e20696e2d646570746820756e6465727374616e64696e67206f662063726f73732062726f7773657220636f6d7061746962696c69747920616e6420796f7520646f206e6f7420637265617465206275677320666f72207375636820726561736f6e732e3c62723e596f752061726520706978656c2d7065726665637420696e2064657369676e20636f6e76657273696f6e7320616e6420796f75207468696e6b206f66206d6f62696c652d666972737420696d706c656d656e746174696f6e732e3c62723e596f752073686f756c642068617665206b6e6f776c65646765206f66204353532070726570726f636573736f72732c204d6564696120717565726965732c20496d61676520636f6d7072657373696f6e20616e6420626520676f6f64207769746820646562756767696e672e3c2f703e, 'Full-time', 0x3c703e596f75206861766520746f20626520657870657269656e6365642077697468205549206672616d65776f726b7320696e2067656e6572616c3b207765206c6f76652074686520416e67756c617220616e6420416e67756c6172206d6174657269616c2e3c62723e596f75206861766520746f20626520657870657269656e63656420696e206275696c64696e672053696e676c652050616765204170706c69636174696f6e732028535041292026616d703b20696e746567726174696e672057656220285265737429204150492e3c62723e57656c6c20766572736564207769746820416e67756c6172206d6f64756c6573206f7220796f752068617665206372656174656420637573746f6d20616e642077656220636f6d706f6e656e747320627920796f757273656c662e3c2f703e, 0x3c703e596f75206861766520746f20626520657870657269656e6365642077697468205549206672616d65776f726b7320696e2067656e6572616c3b207765206c6f76652074686520416e67756c617220616e6420416e67756c6172206d6174657269616c2e3c62723e596f75206861766520746f20626520657870657269656e63656420696e206275696c64696e672053696e676c652050616765204170706c69636174696f6e732028535041292026616d703b20696e746567726174696e672057656220285265737429204150492e3c62723e57656c6c20766572736564207769746820416e67756c6172206d6f64756c6573206f7220796f752068617665206372656174656420637573746f6d20616e642077656220636f6d706f6e656e747320627920796f757273656c662e3c62723e596f752073686f756c642068617665206b6e6f776c65646765206f66204353532070726570726f636573736f72732c204d6564696120717565726965732c20496d61676520636f6d7072657373696f6e20616e6420626520676f6f64207769746820646562756767696e672e3c2f703e, 0x3c703e596f75206861766520616e20696e2d646570746820756e6465727374616e64696e67206f662063726f73732062726f7773657220636f6d7061746962696c69747920616e6420796f7520646f206e6f7420637265617465206275677320666f72207375636820726561736f6e732e3c62723e596f752061726520706978656c2d7065726665637420696e2064657369676e20636f6e76657273696f6e7320616e6420796f75207468696e6b206f66206d6f62696c652d666972737420696d706c656d656e746174696f6e732e3c62723e596f752073686f756c642068617665206b6e6f776c65646765206f66204353532070726570726f636573736f72732c204d6564696120717565726965732c20496d61676520636f6d7072657373696f6e20616e6420626520676f6f64207769746820646562756767696e672e3c2f703e, 'Remote Job', 0x3c703e24323030303c2f703e, 0x3c703e596f75206861766520616e20696e2d646570746820756e6465727374616e64696e67206f662063726f73732062726f7773657220636f6d7061746962696c69747920616e6420796f7520646f206e6f7420637265617465206275677320666f72207375636820726561736f6e732e3c62723e596f752061726520706978656c2d7065726665637420696e2064657369676e20636f6e76657273696f6e7320616e6420796f75207468696e6b206f66206d6f62696c652d666972737420696d706c656d656e746174696f6e732e3c62723e596f752073686f756c642068617665206b6e6f776c65646765206f66204353532070726570726f636573736f72732c204d6564696120717565726965732c20496d61676520636f6d7072657373696f6e20616e6420626520676f6f64207769746820646562756767696e672e3c2f703e, NULL, 'drop_your_cv@plusagency.com', 1, NULL, NULL, '2024-01-19 19:40:59', '2024-01-19 19:40:59'),
(7, 10, 62, 2, 'زعيم نظم السوق الزراعية', 'زعيم-نظم-السوق-الزراعية', 4, '01/31/2024', 'على الأقل 7 سنوات', 0x3c646976206469723d2272746c223e3c7370616e207374796c653d22666f6e742d73697a653a206c617267653b223ed98ad8acd8a820d8a3d98620d8aad983d988d98620d985d8aad985d8b1d8b3d98bd8a720d981d98a20d8a3d8b7d8b120d8b9d985d98420d988d8a7d8acd987d8a920d8a7d984d985d8b3d8aad8aed8afd98520d8a8d8b4d983d98420d8b9d8a7d98520d89b20d986d8add98620d986d8add8a820d8a7d984d8b2d8a7d988d98a20d988d8a7d984d985d988d8a7d8af20d8a7d984d8b2d8a7d988d98a2e3c2f7370616e3e3c2f6469763e0d0a3c646976206469723d2272746c223e3c7370616e207374796c653d22666f6e742d73697a653a206c617267653b223ed98ad8acd8a820d8a3d98620d8aad983d988d98620d984d8afd98ad98320d8aed8a8d8b1d8a920d981d98a20d8a5d986d8b4d8a7d8a120d8aad8b7d8a8d98ad982d8a7d8aa20d8b5d981d8add8a920d988d8a7d8add8afd8a920285350412920d988d8afd985d8ac20d988d8a7d8acd987d8a920d8a8d8b1d985d8acd8a920d8aad8b7d8a8d98ad982d8a7d8aa20d8a7d984d988d98ad8a82028d8a7d984d8b1d8a7d8add8a9292e3c2f7370616e3e3c2f6469763e0d0a3c646976206469723d2272746c223e3c7370616e207374796c653d22666f6e742d73697a653a206c617267653b223ed8b6d984d98ad8b9d8a720d981d98a20d988d8add8afd8a7d8aa20d8a7d984d8b2d8a7d988d98a20d8a3d98820d982d985d8aa20d8a8d8a5d986d8b4d8a7d8a120d985d983d988d986d8a7d8aa20d985d8aed8b5d8b5d8a920d988d8b4d8a8d983d8a920d8a7d984d8a5d986d8aad8b1d986d8aa20d985d98620d982d8a8d98420d986d981d8b3d9832e3c2f7370616e3e3c2f6469763e0d0a3c646976206469723d2272746c223e3c7370616e207374796c653d22666f6e742d73697a653a206c617267653b223ed98ad8acd8a820d8a3d98620d98ad983d988d98620d984d8afd98ad98320d8aed8a8d8b1d8a920d8b9d985d984d98ad8a920d981d98a204e6f64652e6a7320d988205479706553637269707420d988207765627061636b20d988d985d983d8aad8a8d8a920d8a7d984d8b7d8b1d98120d8a7d984d8abd8a7d984d8ab2e3c2f7370616e3e3c2f6469763e0d0a3c646976206469723d2272746c223e3c7370616e207374796c653d22666f6e742d73697a653a206c617267653b223ed984d8afd98ad98320d981d987d98520d985d8aad8b9d985d98220d984d984d8aad988d8a7d981d98220d8b9d8a8d8b120d8a7d984d985d8b3d8aad8b9d8b1d8b620d988d984d98520d8aad982d98520d8a8d8a5d986d8b4d8a7d8a120d8a3d8aed8b7d8a7d8a120d984d987d8b0d98720d8a7d984d8a3d8b3d8a8d8a7d8a82e3c2f7370616e3e3c2f6469763e0d0a3c646976206469723d2272746c223e3c7370616e207374796c653d22666f6e742d73697a653a206c617267653b223ed8a3d986d8aa20d985d8abd8a7d984d98a20d984d984d8a8d98ad983d8b3d98420d981d98a20d8aad8add988d98ad984d8a7d8aa20d8a7d984d8aad8b5d985d98ad98520d988d8aad981d983d8b120d981d98a20d8aad8b7d8a8d98ad982d8a7d8aa20d8a7d984d985d8add985d988d98420d8a7d984d8a3d988d984d9892e3c2f7370616e3e3c2f6469763e0d0a3c646976206469723d2272746c223e3c7370616e207374796c653d22666f6e742d73697a653a206c617267653b223ed98ad8acd8a820d8a3d98620d8aad983d988d98620d984d8afd98ad98320d985d8b9d8b1d981d8a920d8a8d985d8b9d8a7d984d8acd8a7d8aa2043535320d8a7d984d8a3d988d984d98ad8a920d988d8a7d8b3d8aad8b9d984d8a7d985d8a7d8aa20d8a7d984d988d8b3d8a7d8a6d8b720d988d8b6d8bad8b720d8a7d984d8b5d988d8b120d988d8aad983d988d98620d8acd98ad8afd98bd8a720d981d98a20d8aad8b5d8add98ad8ad20d8a7d984d8a3d8aed8b7d8a7d8a12e3c2f7370616e3e3c2f6469763e, 'وقت كامل', 0x3c646976206469723d2272746c223e3c7370616e207374796c653d22666f6e742d73697a653a206c617267653b223ed98ad8acd8a820d8a3d98620d8aad983d988d98620d985d8aad985d8b1d8b3d98bd8a720d981d98a20d8a3d8b7d8b120d8b9d985d98420d988d8a7d8acd987d8a920d8a7d984d985d8b3d8aad8aed8afd98520d8a8d8b4d983d98420d8b9d8a7d98520d89b20d986d8add98620d986d8add8a820d8a7d984d8b2d8a7d988d98a20d988d8a7d984d985d988d8a7d8af20d8a7d984d8b2d8a7d988d98a2e3c2f7370616e3e3c2f6469763e0d0a3c646976206469723d2272746c223e3c7370616e207374796c653d22666f6e742d73697a653a206c617267653b223ed98ad8acd8a820d8a3d98620d8aad983d988d98620d984d8afd98ad98320d8aed8a8d8b1d8a920d981d98a20d8a5d986d8b4d8a7d8a120d8aad8b7d8a8d98ad982d8a7d8aa20d8b5d981d8add8a920d988d8a7d8add8afd8a920285350412920d988d8afd985d8ac20d988d8a7d8acd987d8a920d8a8d8b1d985d8acd8a920d8aad8b7d8a8d98ad982d8a7d8aa20d8a7d984d988d98ad8a82028d8a7d984d8b1d8a7d8add8a9292e3c2f7370616e3e3c2f6469763e0d0a3c646976206469723d2272746c223e3c7370616e207374796c653d22666f6e742d73697a653a206c617267653b223ed8b6d984d98ad8b9d8a720d981d98a20d988d8add8afd8a7d8aa20d8a7d984d8b2d8a7d988d98a20d8a3d98820d982d985d8aa20d8a8d8a5d986d8b4d8a7d8a120d985d983d988d986d8a7d8aa20d985d8aed8b5d8b5d8a920d988d8b4d8a8d983d8a920d8a7d984d8a5d986d8aad8b1d986d8aa20d985d98620d982d8a8d98420d986d9813c2f7370616e3e3c2f6469763e, 0x3c646976206469723d2272746c223e3c7370616e207374796c653d22666f6e742d73697a653a206c617267653b223ed98ad8acd8a820d8a3d98620d8aad983d988d98620d985d8aad985d8b1d8b3d98bd8a720d981d98a20d8a3d8b7d8b120d8b9d985d98420d988d8a7d8acd987d8a920d8a7d984d985d8b3d8aad8aed8afd98520d8a8d8b4d983d98420d8b9d8a7d98520d89b20d986d8add98620d986d8add8a820d8a7d984d8b2d8a7d988d98a20d988d8a7d984d985d988d8a7d8af20d8a7d984d8b2d8a7d988d98a2e3c2f7370616e3e3c2f6469763e0d0a3c646976206469723d2272746c223e3c7370616e207374796c653d22666f6e742d73697a653a206c617267653b223ed98ad8acd8a820d8a3d98620d8aad983d988d98620d984d8afd98ad98320d8aed8a8d8b1d8a920d981d98a20d8a5d986d8b4d8a7d8a120d8aad8b7d8a8d98ad982d8a7d8aa20d8b5d981d8add8a920d988d8a7d8add8afd8a920285350412920d988d8afd985d8ac20d988d8a7d8acd987d8a920d8a8d8b1d985d8acd8a920d8aad8b7d8a8d98ad982d8a7d8aa20d8a7d984d988d98ad8a82028d8a7d984d8b1d8a7d8add8a9292e3c2f7370616e3e3c2f6469763e0d0a3c646976206469723d2272746c223e3c7370616e207374796c653d22666f6e742d73697a653a206c617267653b223ed8b6d984d98ad8b9d8a720d981d98a20d988d8add8afd8a7d8aa20d8a7d984d8b2d8a7d988d98a20d8a3d98820d982d985d8aa20d8a8d8a5d986d8b4d8a7d8a120d985d983d988d986d8a7d8aa20d985d8aed8b5d8b5d8a920d988d8b4d8a8d983d8a920d8a7d984d8a5d986d8aad8b1d986d8aa20d985d98620d982d8a8d98420d986d981d8b3d9832e3c2f7370616e3e3c2f6469763e, 0x3c646976206469723d2272746c223e3c7370616e207374796c653d22666f6e742d73697a653a206c617267653b223ed98ad8acd8a820d8a3d98620d8aad983d988d98620d985d8aad985d8b1d8b3d98bd8a720d981d98a20d8a3d8b7d8b120d8b9d985d98420d988d8a7d8acd987d8a920d8a7d984d985d8b3d8aad8aed8afd98520d8a8d8b4d983d98420d8b9d8a7d98520d89b20d986d8add98620d986d8add8a820d8a7d984d8b2d8a7d988d98a20d988d8a7d984d985d988d8a7d8af20d8a7d984d8b2d8a7d988d98a2e3c2f7370616e3e3c2f6469763e0d0a3c646976206469723d2272746c223e3c7370616e207374796c653d22666f6e742d73697a653a206c617267653b223ed98ad8acd8a820d8a3d98620d8aad983d988d98620d984d8afd98ad98320d8aed8a8d8b1d8a920d981d98a20d8a5d986d8b4d8a7d8a120d8aad8b7d8a8d98ad982d8a7d8aa20d8b5d981d8add8a920d988d8a7d8add8afd8a920285350412920d988d8afd985d8ac20d988d8a7d8acd987d8a920d8a8d8b1d985d8acd8a920d8aad8b7d8a8d98ad982d8a7d8aa20d8a7d984d988d98ad8a82028d8a7d984d8b1d8a7d8add8a9292e3c2f7370616e3e3c2f6469763e0d0a3c646976206469723d2272746c223e3c7370616e207374796c653d22666f6e742d73697a653a206c617267653b223ed8b6d984d98ad8b9d8a720d981d98a20d988d8add8afd8a7d8aa20d8a7d984d8b2d8a7d988d98a20d8a3d98820d982d985d8aa20d8a8d8a5d986d8b4d8a7d8a120d985d983d988d986d8a7d8aa20d985d8aed8b5d8b5d8a920d988d8b4d8a8d983d8a920d8a7d984d8a5d986d8aad8b1d986d8aa20d985d98620d982d8a8d98420d986d981d8b3d9832e3c2f7370616e3e3c2f6469763e, 'كاليفورنيا، الولايات المتحدة الأمريكية', 0x3c70206469723d2272746c223e3130303020d8afd988d984d8a7d8b1202d203135303020d8afd988d984d8a7d8b13c2f703e, 0x3c6469763e3c7370616e207374796c653d22666f6e742d73697a653a206c617267653b223ed98ad8acd8a820d8a3d98620d8aad983d988d98620d985d8aad985d8b1d8b3d98bd8a720d981d98a20d8a3d8b7d8b120d8b9d985d98420d988d8a7d8acd987d8a920d8a7d984d985d8b3d8aad8aed8afd98520d8a8d8b4d983d98420d8b9d8a7d98520d89b20d986d8add98620d986d8add8a820d8a7d984d8b2d8a7d988d98a20d988d8a7d984d985d988d8a7d8af20d8a7d984d8b2d8a7d988d98a2e3c2f7370616e3e3c2f6469763e0d0a3c6469763e3c7370616e207374796c653d22666f6e742d73697a653a206c617267653b223ed98ad8acd8a820d8a3d98620d8aad983d988d98620d984d8afd98ad98320d8aed8a8d8b1d8a920d981d98a20d8a5d986d8b4d8a7d8a120d8aad8b7d8a8d98ad982d8a7d8aa20d8b5d981d8add8a920d988d8a7d8add8afd8a920285350412920d988d8afd985d8ac20d988d8a7d8acd987d8a920d8a8d8b1d985d8acd8a920d8aad8b7d8a8d98ad982d8a7d8aa20d8a7d984d988d98ad8a82028d8a7d984d8b1d8a7d8add8a9292e3c2f7370616e3e3c2f6469763e0d0a3c6469763e3c7370616e207374796c653d22666f6e742d73697a653a206c617267653b223ed8b6d984d98ad8b9d8a720d981d98a20d988d8add8afd8a7d8aa20d8a7d984d8b2d8a7d988d98a20d8a3d98820d982d985d8aa20d8a8d8a5d986d8b4d8a7d8a120d985d983d988d986d8a7d8aa20d985d8aed8b5d8b5d8a920d988d8b4d8a8d983d8a920d8a7d984d8a5d986d8aad8b1d986d8aa20d985d98620d982d8a8d98420d986d981d8b3d9832e3c2f7370616e3e3c2f6469763e, NULL, 'drop_your_cv@plusagency.com', 1, NULL, NULL, '2024-01-19 20:01:05', '2024-01-19 20:01:05'),
(8, 11, 62, 2, 'مهندس برمجيات الواجهة الأمامية', 'مهندس-برمجيات-الواجهة-الأمامية', 5, '01/31/2024', '2 إلى 5 سنوات', 0x3c646976206469723d2272746c223e3c7370616e207374796c653d22666f6e742d73697a653a206c617267653b223ed98ad8acd8a820d8a3d98620d8aad983d988d98620d985d8aad985d8b1d8b3d98bd8a720d981d98a20d8a3d8b7d8b120d8b9d985d98420d988d8a7d8acd987d8a920d8a7d984d985d8b3d8aad8aed8afd98520d8a8d8b4d983d98420d8b9d8a7d98520d89b20d986d8add98620d986d8add8a820d8a7d984d8b2d8a7d988d98a20d988d8a7d984d985d988d8a7d8af20d8a7d984d8b2d8a7d988d98a2e3c2f7370616e3e3c2f6469763e0d0a3c646976206469723d2272746c223e3c7370616e207374796c653d22666f6e742d73697a653a206c617267653b223ed98ad8acd8a820d8a3d98620d8aad983d988d98620d984d8afd98ad98320d8aed8a8d8b1d8a920d981d98a20d8a5d986d8b4d8a7d8a120d8aad8b7d8a8d98ad982d8a7d8aa20d8b5d981d8add8a920d988d8a7d8add8afd8a920285350412920d988d8afd985d8ac20d988d8a7d8acd987d8a920d8a8d8b1d985d8acd8a920d8aad8b7d8a8d98ad982d8a7d8aa20d8a7d984d988d98ad8a82028d8a7d984d8b1d8a7d8add8a9292e3c2f7370616e3e3c2f6469763e0d0a3c646976206469723d2272746c223e3c7370616e207374796c653d22666f6e742d73697a653a206c617267653b223ed8b6d984d98ad8b9d8a720d981d98a20d988d8add8afd8a7d8aa20d8a7d984d8b2d8a7d988d98a20d8a3d98820d982d985d8aa20d8a8d8a5d986d8b4d8a7d8a120d985d983d988d986d8a7d8aa20d985d8aed8b5d8b5d8a920d988d8b4d8a8d983d8a920d8a7d984d8a5d986d8aad8b1d986d8aa20d985d98620d982d8a8d98420d986d981d8b3d9832e3c2f7370616e3e3c2f6469763e0d0a3c646976206469723d2272746c223e3c7370616e207374796c653d22666f6e742d73697a653a206c617267653b223ed98ad8acd8a820d8a3d98620d98ad983d988d98620d984d8afd98ad98320d8aed8a8d8b1d8a920d8b9d985d984d98ad8a920d981d98a204e6f64652e6a7320d988205479706553637269707420d988207765627061636b20d988d985d983d8aad8a8d8a920d8a7d984d8b7d8b1d98120d8a7d984d8abd8a7d984d8ab2e3c2f7370616e3e3c2f6469763e0d0a3c646976206469723d2272746c223e3c7370616e207374796c653d22666f6e742d73697a653a206c617267653b223ed984d8afd98ad98320d981d987d98520d985d8aad8b9d985d98220d984d984d8aad988d8a7d981d98220d8b9d8a8d8b120d8a7d984d985d8b3d8aad8b9d8b1d8b620d988d984d98520d8aad982d98520d8a8d8a5d986d8b4d8a7d8a120d8a3d8aed8b7d8a7d8a120d984d987d8b0d98720d8a7d984d8a3d8b3d8a8d8a7d8a82e3c2f7370616e3e3c2f6469763e0d0a3c646976206469723d2272746c223e3c7370616e207374796c653d22666f6e742d73697a653a206c617267653b223ed8a3d986d8aa20d985d8abd8a7d984d98a20d984d984d8a8d98ad983d8b3d98420d981d98a20d8aad8add988d98ad984d8a7d8aa20d8a7d984d8aad8b5d985d98ad98520d988d8aad981d983d8b120d981d98a20d8aad8b7d8a8d98ad982d8a7d8aa20d8a7d984d985d8add985d988d98420d8a7d984d8a3d988d984d9892e3c2f7370616e3e3c2f6469763e0d0a3c646976206469723d2272746c223e3c7370616e207374796c653d22666f6e742d73697a653a206c617267653b223ed98ad8acd8a820d8a3d98620d8aad983d988d98620d984d8afd98ad98320d985d8b9d8b1d981d8a920d8a8d985d8b9d8a7d984d8acd8a7d8aa2043535320d8a7d984d8a3d988d984d98ad8a920d988d8a7d8b3d8aad8b9d984d8a7d985d8a7d8aa20d8a7d984d988d8b3d8a7d8a6d8b720d988d8b6d8bad8b720d8a7d984d8b5d988d8b120d988d8aad983d988d98620d8acd98ad8afd98bd8a720d981d98a20d8aad8b5d8add98ad8ad20d8a7d984d8a3d8aed8b7d8a7d8a12e3c2f7370616e3e3c2f6469763e, 'وقت كامل', 0x3c646976206469723d2272746c223e3c7370616e207374796c653d22666f6e742d73697a653a206c617267653b223ed98ad8acd8a820d8a3d98620d8aad983d988d98620d985d8aad985d8b1d8b3d98bd8a720d981d98a20d8a3d8b7d8b120d8b9d985d98420d988d8a7d8acd987d8a920d8a7d984d985d8b3d8aad8aed8afd98520d8a8d8b4d983d98420d8b9d8a7d98520d89b20d986d8add98620d986d8add8a820d8a7d984d8b2d8a7d988d98a20d988d8a7d984d985d988d8a7d8af20d8a7d984d8b2d8a7d988d98a2e3c2f7370616e3e3c2f6469763e0d0a3c646976206469723d2272746c223e3c7370616e207374796c653d22666f6e742d73697a653a206c617267653b223ed98ad8acd8a820d8a3d98620d8aad983d988d98620d984d8afd98ad98320d8aed8a8d8b1d8a920d981d98a20d8a5d986d8b4d8a7d8a120d8aad8b7d8a8d98ad982d8a7d8aa20d8b5d981d8add8a920d988d8a7d8add8afd8a920285350412920d988d8afd985d8ac20d988d8a7d8acd987d8a920d8a8d8b1d985d8acd8a920d8aad8b7d8a8d98ad982d8a7d8aa20d8a7d984d988d98ad8a82028d8a7d984d8b1d8a7d8add8a9292e3c2f7370616e3e3c2f6469763e0d0a3c646976206469723d2272746c223e3c7370616e207374796c653d22666f6e742d73697a653a206c617267653b223ed8b6d984d98ad8b9d8a720d981d98a20d988d8add8afd8a7d8aa20d8a7d984d8b2d8a7d988d98a20d8a3d98820d982d985d8aa20d8a8d8a5d986d8b4d8a7d8a120d985d983d988d986d8a7d8aa20d985d8aed8b5d8b5d8a920d988d8b4d8a8d983d8a920d8a7d984d8a5d986d8aad8b1d986d8aa20d985d98620d982d8a8d98420d986d981d8b3d9832e3c2f7370616e3e3c2f6469763e0d0a3c646976206469723d2272746c223e266e6273703b3c2f6469763e, 0x3c646976206469723d2272746c223e3c7370616e207374796c653d22666f6e742d73697a653a206c617267653b223ed98ad8acd8a820d8a3d98620d8aad983d988d98620d985d8aad985d8b1d8b3d98bd8a720d981d98a20d8a3d8b7d8b120d8b9d985d98420d988d8a7d8acd987d8a920d8a7d984d985d8b3d8aad8aed8afd98520d8a8d8b4d983d98420d8b9d8a7d98520d89b20d986d8add98620d986d8add8a820d8a7d984d8b2d8a7d988d98a20d988d8a7d984d985d988d8a7d8af20d8a7d984d8b2d8a7d988d98a2e3c2f7370616e3e3c2f6469763e0d0a3c646976206469723d2272746c223e3c7370616e207374796c653d22666f6e742d73697a653a206c617267653b223ed98ad8acd8a820d8a3d98620d8aad983d988d98620d984d8afd98ad98320d8aed8a8d8b1d8a920d981d98a20d8a5d986d8b4d8a7d8a120d8aad8b7d8a8d98ad982d8a7d8aa20d8b5d981d8add8a920d988d8a7d8add8afd8a920285350412920d988d8afd985d8ac20d988d8a7d8acd987d8a920d8a8d8b1d985d8acd8a920d8aad8b7d8a8d98ad982d8a7d8aa20d8a7d984d988d98ad8a82028d8a7d984d8b1d8a7d8add8a9292e3c2f7370616e3e3c2f6469763e0d0a3c646976206469723d2272746c223e3c7370616e207374796c653d22666f6e742d73697a653a206c617267653b223ed8b6d984d98ad8b9d8a720d981d98a20d988d8add8afd8a7d8aa20d8a7d984d8b2d8a7d988d98a20d8a3d98820d982d985d8aa20d8a8d8a5d986d8b4d8a7d8a120d985d983d988d986d8a7d8aa20d985d8aed8b5d8b5d8a920d988d8b4d8a8d983d8a920d8a7d984d8a5d986d8aad8b1d986d8aa20d985d98620d982d8a8d98420d986d981d8b3d9832e3c2f7370616e3e3c2f6469763e0d0a3c646976206469723d2272746c223e266e6273703b3c2f6469763e, 0x3c646976206469723d2272746c223e3c7370616e207374796c653d22666f6e742d73697a653a206c617267653b223ed98ad8acd8a820d8a3d98620d8aad983d988d98620d985d8aad985d8b1d8b3d98bd8a720d981d98a20d8a3d8b7d8b120d8b9d985d98420d988d8a7d8acd987d8a920d8a7d984d985d8b3d8aad8aed8afd98520d8a8d8b4d983d98420d8b9d8a7d98520d89b20d986d8add98620d986d8add8a820d8a7d984d8b2d8a7d988d98a20d988d8a7d984d985d988d8a7d8af20d8a7d984d8b2d8a7d988d98a2e3c2f7370616e3e3c2f6469763e0d0a3c646976206469723d2272746c223e3c7370616e207374796c653d22666f6e742d73697a653a206c617267653b223ed98ad8acd8a820d8a3d98620d8aad983d988d98620d984d8afd98ad98320d8aed8a8d8b1d8a920d981d98a20d8a5d986d8b4d8a7d8a120d8aad8b7d8a8d98ad982d8a7d8aa20d8b5d981d8add8a920d988d8a7d8add8afd8a920285350412920d988d8afd985d8ac20d988d8a7d8acd987d8a920d8a8d8b1d985d8acd8a920d8aad8b7d8a8d98ad982d8a7d8aa20d8a7d984d988d98ad8a82028d8a7d984d8b1d8a7d8add8a9292e3c2f7370616e3e3c2f6469763e0d0a3c646976206469723d2272746c223e3c7370616e207374796c653d22666f6e742d73697a653a206c617267653b223ed8b6d984d98ad8b9d8a720d981d98a20d988d8add8afd8a7d8aa20d8a7d984d8b2d8a7d988d98a20d8a3d98820d982d985d8aa20d8a8d8a5d986d8b4d8a7d8a120d985d983d988d986d8a7d8aa20d985d8aed8b5d8b5d8a920d988d8b4d8a8d983d8a920d8a7d984d8a5d986d8aad8b1d986d8aa20d985d98620d982d8a8d98420d986d981d8b3d9832e3c2f7370616e3e3c2f6469763e0d0a3c646976206469723d2272746c223e266e6273703b3c2f6469763e, 'باريس، فرنسا', 0x3c70206469723d2272746c223e3120d8a5d984d989203320d8b3d986d988d8a7d8aa3c2f703e, 0x3c646976206469723d2272746c223e3c7370616e207374796c653d22666f6e742d73697a653a206c617267653b223ed98ad8acd8a820d8a3d98620d8aad983d988d98620d985d8aad985d8b1d8b3d98bd8a720d981d98a20d8a3d8b7d8b120d8b9d985d98420d988d8a7d8acd987d8a920d8a7d984d985d8b3d8aad8aed8afd98520d8a8d8b4d983d98420d8b9d8a7d98520d89b20d986d8add98620d986d8add8a820d8a7d984d8b2d8a7d988d98a20d988d8a7d984d985d988d8a7d8af20d8a7d984d8b2d8a7d988d98a2e3c2f7370616e3e3c2f6469763e0d0a3c646976206469723d2272746c223e3c7370616e207374796c653d22666f6e742d73697a653a206c617267653b223ed98ad8acd8a820d8a3d98620d8aad983d988d98620d984d8afd98ad98320d8aed8a8d8b1d8a920d981d98a20d8a5d986d8b4d8a7d8a120d8aad8b7d8a8d98ad982d8a7d8aa20d8b5d981d8add8a920d988d8a7d8add8afd8a920285350412920d988d8afd985d8ac20d988d8a7d8acd987d8a920d8a8d8b1d985d8acd8a920d8aad8b7d8a8d98ad982d8a7d8aa20d8a7d984d988d98ad8a82028d8a7d984d8b1d8a7d8add8a9292e3c2f7370616e3e3c2f6469763e0d0a3c646976206469723d2272746c223e3c7370616e207374796c653d22666f6e742d73697a653a206c617267653b223ed8b6d984d98ad8b9d8a720d981d98a20d988d8add8afd8a7d8aa20d8a7d984d8b2d8a7d988d98a20d8a3d98820d982d985d8aa20d8a8d8a5d986d8b4d8a7d8a120d985d983d988d986d8a7d8aa20d985d8aed8b5d8b5d8a920d988d8b4d8a8d983d8a920d8a7d984d8a5d986d8aad8b1d986d8aa20d985d98620d982d8a8d98420d986d981d8b3d9832e3c2f7370616e3e3c2f6469763e0d0a3c646976206469723d2272746c223e266e6273703b3c2f6469763e, NULL, 'drop_your_cv@plusagency.com', 2, NULL, NULL, '2024-01-19 20:06:44', '2024-01-19 20:06:44');

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` tinyint(4) NOT NULL DEFAULT '1',
  `rtl` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0 - LTR, 1- RTL',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`id`, `name`, `code`, `is_default`, `rtl`, `created_at`, `updated_at`) VALUES
(176, 'English', 'en', 1, 0, '2020-08-07 04:43:05', '2020-12-31 09:22:02'),
(177, 'عربى', 'ar', 0, 1, '2020-08-07 04:51:17', '2020-12-31 09:22:02');

-- --------------------------------------------------------

--
-- Table structure for table `members`
--

CREATE TABLE `members` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `language_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rank` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instagram` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `linkedin` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `feature` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `members`
--

INSERT INTO `members` (`id`, `language_id`, `user_id`, `name`, `rank`, `image`, `twitter`, `facebook`, `instagram`, `linkedin`, `feature`, `created_at`, `updated_at`) VALUES
(2, 61, 2, 'Andress Pirlo', 'Manager, Eorder', '65429ae8a6f7f4edef0f40cfcb4063709d834220.jpg', 'https://www.facebook.com/', 'https://www.facebook.com/', 'https://www.facebook.com/', 'https://www.facebook.com/', 1, NULL, NULL),
(3, 61, 2, 'Brent Hewitt', 'Silas Walters', '5b48ae6356d10f31386eb0efbd4f9900e31416ea.jpg', 'https://www.facebook.com/', 'https://www.facebook.com/', 'https://www.facebook.com/', 'https://www.facebook.com/', 1, NULL, NULL),
(4, 61, 2, 'Liberty Workman', 'Victor Sharpe', 'f9ac277ef55b10f5a94e1671947bac3c7792d484.jpg', 'https://www.facebook.com/', 'https://www.facebook.com/', 'https://www.facebook.com/', 'https://www.facebook.com/', 1, NULL, NULL),
(5, 61, 2, 'Amelia Whitaker', 'Perry Shepherd', '9b13990e31a35b6611b26d06a56844bf407a42ec.jpg', 'https://www.facebook.com/', 'https://www.facebook.com/', 'https://www.facebook.com/', 'https://www.facebook.com/', 1, NULL, NULL),
(6, 61, 2, 'Kimberly Guthrie', 'Quemby Obrien', 'ac6b88ca2ec6022618c0809204adfeee4961bb7d.jpg', 'https://twitter.com/', 'https://www.facebook.com/', 'https://www.instagram.com/', 'https://www.instagram.com/', 1, NULL, NULL),
(7, 61, 2, 'Alisa Steele', 'Bryar Pickett', 'e6a2967bf2de1dbf373a7174c79782e486cd8fbc.jpg', 'https://twitter.com/', 'https://www.facebook.com/', 'https://www.instagram.com/', 'https://www.instagram.com/', 1, NULL, NULL),
(8, 62, 2, 'سيلينا غوميز', 'الرئيس التنفيذي والمؤسس', '73e0170c4a5faf35016e026f46e1db682ee94672.jpg', 'https://twitter.com/', 'https://www.facebook.com/', 'https://www.instagram.com/', 'https://www.instagram.com/', 1, NULL, NULL),
(9, 62, 2, 'أندريس بيرلو', 'مدير ، مشرف', 'a90e950ac43c017103033cb7e7ca72ede9326955.jpg', 'https://twitter.com/', 'https://www.facebook.com/', 'https://www.instagram.com/', 'https://www.instagram.com/', 1, NULL, NULL),
(10, 62, 2, 'كريستينا جريمي', 'رئيس الطباخين', '1ea34c48e9ce84b3b7f2378f60ae9085dd3fb9c0.jpg', 'https://twitter.com/', 'https://www.facebook.com/', 'https://www.instagram.com/', 'https://www.instagram.com/', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `memberships`
--

CREATE TABLE `memberships` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `package_price` double NOT NULL DEFAULT '0',
  `discount` double NOT NULL DEFAULT '0',
  `coupon_code` varchar(255) DEFAULT NULL,
  `price` double NOT NULL DEFAULT '0',
  `currency` varchar(255) NOT NULL,
  `currency_symbol` varchar(255) NOT NULL,
  `payment_method` varchar(255) DEFAULT NULL,
  `transaction_id` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `is_trial` tinyint(1) NOT NULL DEFAULT '0',
  `trial_days` int(11) NOT NULL DEFAULT '0',
  `receipt` longtext,
  `transaction_details` longtext,
  `settings` longtext,
  `package_id` int(11) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `start_date` date DEFAULT NULL,
  `expire_date` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `modified` tinyint(4) NOT NULL DEFAULT '0',
  `conversation_id` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `memberships`
--

INSERT INTO `memberships` (`id`, `package_price`, `discount`, `coupon_code`, `price`, `currency`, `currency_symbol`, `payment_method`, `transaction_id`, `status`, `is_trial`, `trial_days`, `receipt`, `transaction_details`, `settings`, `package_id`, `user_id`, `start_date`, `expire_date`, `created_at`, `updated_at`, `modified`, `conversation_id`) VALUES
(96, 99, 0, NULL, 99, 'USD', '$', 'Paypal', 'd1868971', 1, 0, 0, NULL, '{\n    \"id\": \"PAYID-MWTXGLY3C717927X93069238\",\n    \"intent\": \"sale\",\n    \"state\": \"approved\",\n    \"cart\": \"03C78465D6667320X\",\n    \"payer\": {\n        \"payment_method\": \"paypal\",\n        \"status\": \"VERIFIED\",\n        \"payer_info\": {\n            \"email\": \"megasoft.envato@gmail.com\",\n            \"first_name\": \"Samiul Alim\",\n            \"last_name\": \"Pratik\",\n            \"payer_id\": \"8C5NYJ7EZ7QSS\",\n            \"shipping_address\": {\n                \"recipient_name\": \"Samiul Alim Pratik\",\n                \"line1\": \"1 Main St\",\n                \"city\": \"San Jose\",\n                \"state\": \"CA\",\n                \"postal_code\": \"95131\",\n                \"country_code\": \"US\"\n            },\n            \"country_code\": \"US\"\n        }\n    },\n    \"transactions\": [\n        {\n            \"amount\": {\n                \"total\": \"99.00\",\n                \"currency\": \"USD\",\n                \"details\": {\n                    \"subtotal\": \"99.00\",\n                    \"shipping\": \"0.00\",\n                    \"insurance\": \"0.00\",\n                    \"handling_fee\": \"0.00\",\n                    \"shipping_discount\": \"0.00\",\n                    \"discount\": \"0.00\"\n                }\n            },\n            \"payee\": {\n                \"merchant_id\": \"BKNWZYE3MAUNU\",\n                \"email\": \"megasoft.envato-facilitator@gmail.com\"\n            },\n            \"description\": \"You are purchasing a membership Via Paypal\",\n            \"item_list\": {\n                \"items\": [\n                    {\n                        \"name\": \"You are purchasing a membership\",\n                        \"price\": \"99.00\",\n                        \"currency\": \"USD\",\n                        \"tax\": \"0.00\",\n                        \"quantity\": 1,\n                        \"image_url\": \"\"\n                    }\n                ],\n                \"shipping_address\": {\n                    \"recipient_name\": \"Samiul Alim Pratik\",\n                    \"line1\": \"1 Main St\",\n                    \"city\": \"San Jose\",\n                    \"state\": \"CA\",\n                    \"postal_code\": \"95131\",\n                    \"country_code\": \"US\"\n                }\n            },\n            \"related_resources\": [\n                {\n                    \"sale\": {\n                        \"id\": \"1BL29614B70130201\",\n                        \"state\": \"completed\",\n                        \"amount\": {\n                            \"total\": \"99.00\",\n                            \"currency\": \"USD\",\n                            \"details\": {\n                                \"subtotal\": \"99.00\",\n                                \"shipping\": \"0.00\",\n                                \"insurance\": \"0.00\",\n                                \"handling_fee\": \"0.00\",\n                                \"shipping_discount\": \"0.00\",\n                                \"discount\": \"0.00\"\n                            }\n                        },\n                        \"payment_mode\": \"INSTANT_TRANSFER\",\n                        \"protection_eligibility\": \"ELIGIBLE\",\n                        \"protection_eligibility_type\": \"ITEM_NOT_RECEIVED_ELIGIBLE,UNAUTHORIZED_PAYMENT_ELIGIBLE\",\n                        \"transaction_fee\": {\n                            \"value\": \"3.95\",\n                            \"currency\": \"USD\"\n                        },\n                        \"parent_payment\": \"PAYID-MWTXGLY3C717927X93069238\",\n                        \"create_time\": \"2024-01-17T06:27:11Z\",\n                        \"update_time\": \"2024-01-17T06:27:11Z\",\n                        \"links\": [\n                            {\n                                \"href\": \"https://api.sandbox.paypal.com/v1/payments/sale/1BL29614B70130201\",\n                                \"rel\": \"self\",\n                                \"method\": \"GET\"\n                            },\n                            {\n                                \"href\": \"https://api.sandbox.paypal.com/v1/payments/sale/1BL29614B70130201/refund\",\n                                \"rel\": \"refund\",\n                                \"method\": \"POST\"\n                            },\n                            {\n                                \"href\": \"https://api.sandbox.paypal.com/v1/payments/payment/PAYID-MWTXGLY3C717927X93069238\",\n                                \"rel\": \"parent_payment\",\n                                \"method\": \"GET\"\n                            }\n                        ]\n                    }\n                }\n            ]\n        }\n    ],\n    \"redirect_urls\": {\n        \"return_url\": \"https://supervsasso.test/membership/paypal/success?paymentId=PAYID-MWTXGLY3C717927X93069238\",\n        \"cancel_url\": \"https://supervsasso.test/membership/paypal/cancel\"\n    },\n    \"create_time\": \"2024-01-17T06:26:55Z\",\n    \"update_time\": \"2024-01-17T06:27:11Z\",\n    \"links\": [\n        {\n            \"href\": \"https://api.sandbox.paypal.com/v1/payments/payment/PAYID-MWTXGLY3C717927X93069238\",\n            \"rel\": \"self\",\n            \"method\": \"GET\"\n        }\n    ],\n    \"failed_transactions\": []\n}', '{\"id\":147,\"language_id\":176,\"cookie_alert_status\":1,\"cookie_alert_text\":\"Your experience on this site will be improved by allowing cookies.\",\"cookie_alert_button_text\":\"Allow Cookies\",\"to_mail\":\"pratik.anwar@gmail.com\",\"default_language_direction\":\"ltr\",\"from_mail\":\"geniustest11@gmail.com\",\"testimonial_img\":\"b19dfe727e15f5f06b7fe2accb10a62b7ea183cc.png\",\"from_name\":\"Supervsasso\",\"is_smtp\":1,\"smtp_host\":\"smtp.gmail.com\",\"smtp_port\":\"587\",\"encryption\":\"TLS\",\"smtp_username\":\"geniustest11@gmail.com\",\"smtp_password\":\"jvpdiafcjhrznkbm\",\"base_currency_symbol\":\"$\",\"base_currency_symbol_position\":\"left\",\"base_currency_text\":\"USD\",\"base_currency_text_position\":\"right\",\"base_currency_rate\":\"1.00\",\"hero_section_title\":\"Our Platform, Your Success\",\"hero_section_text\":\"Build Your Own Restaurant Website\",\"hero_section_button_text\":\"Explore Plans\",\"hero_section_button_url\":\"https:\\/\\/supervsasso.test\\/pricing\",\"hero_section_video_url\":\"https:\\/\\/www.youtube.com\\/watch?v=6stlCkUDG_s\",\"hero_img\":\"3765afe7ef38875c4ee8d409e2dcd62216f66582.png\",\"timezone\":\"America\\/Shiprock\",\"contact_addresses\":\"California, USA\\r\\nLondon, United Kingdom\\r\\nMelbourne, Australia\",\"contact_numbers\":\"+8434197502,+2350575099,+23576039607\",\"contact_mails\":\"contact@example.com,support@example.com,query@example.com\",\"is_whatsapp\":1,\"whatsapp_number\":null,\"whatsapp_header_title\":null,\"whatsapp_popup_message\":null,\"whatsapp_popup\":1,\"domain_request_success_message\":\"We have received your custom domain request. Please allow us 2 business days to connect the domain with our server.\",\"cname_record_section_title\":\"Read Before Sending Custom Domain Request\",\"cname_record_section_text\":\"<ul><li><font color=\\\"#575962\\\"><span style=\\\"font-weight:600;\\\">\\u00a0Before sending request for your custom domain, You need to add a CNAME record (given in below table) in your custom domain from your domain registrar account (like - namecheap, godaddy etc...).<\\/span><\\/font><\\/li><li><font color=\\\"#575962\\\"><span style=\\\"font-weight:600;\\\">\\u00a0CNAME record is needed to point your custom domain to our domain ( profilo.xyz ), so that our website can show your portfolio on your domain<\\/span><\\/font><\\/li><li><font color=\\\"#575962\\\"><span style=\\\"font-weight:600;\\\">\\u00a0Different domain registrar (like - godaddy, namecheap etc...) has different interface for adding CNAME record. If you cannot find the place to add CNAME record in your domain registrar account, then please contact your domain registrar support, they will show you the place to add CNAME record for your custom domain<\\/span><\\/font><\\/li><\\/ul>\",\"package_features\":\"[\\\"Custom Domain\\\",\\\"Subdomain\\\",\\\"POS\\\",\\\"Coupon\\\",\\\"Live Orders\\\",\\\"Whatsapp Order & Notification\\\",\\\"QR Menu\\\",\\\"Table Reservation\\\",\\\"Table QR Builder\\\",\\\"Call Waiter\\\",\\\"Staffs\\\",\\\"Blog\\\",\\\"Custom Page\\\",\\\"Online Order\\\",\\\"On Table\\\",\\\"Pick Up\\\",\\\"Home Delivery\\\",\\\"Postal Code Based Delivery Charge\\\",\\\"PWA Installability\\\"]\",\"expiration_reminder\":4,\"max_video_size\":\"40.00\",\"max_file_size\":\"5.00\"}', 45, 2, '2024-01-16', '2024-03-28', '2024-01-16 17:27:13', '2024-03-28 20:28:03', 1, NULL),
(109, 0, 0, NULL, 99, 'USD', '$', 'Paytm', '0684f971', 1, 0, 0, NULL, NULL, '{\"id\":147,\"language_id\":176,\"cookie_alert_status\":1,\"cookie_alert_text\":\"Your experience on this site will be improved by allowing cookies.\",\"cookie_alert_button_text\":\"Allow Cookies\",\"to_mail\":\"pratik.anwar@gmail.com\",\"default_language_direction\":\"ltr\",\"from_mail\":\"test@kreativdev.com\",\"testimonial_img\":\"b19dfe727e15f5f06b7fe2accb10a62b7ea183cc.png\",\"from_name\":\"Supervsasso\",\"is_smtp\":1,\"smtp_host\":\"nl1-sr12.supercp.com\",\"smtp_port\":\"587\",\"encryption\":\"TLS\",\"smtp_username\":\"test@kreativdev.com\",\"smtp_password\":\"xh=wf[%(GD!{\",\"base_currency_symbol\":\"$\",\"base_currency_symbol_position\":\"left\",\"base_currency_text\":\"USD\",\"base_currency_text_position\":\"right\",\"base_currency_rate\":\"1.00\",\"hero_section_title\":\"Our Platform, Your Success\",\"hero_section_text\":\"Build Your Own Restaurant Website\",\"hero_section_button_text\":\"Explore Plans\",\"hero_section_button_url\":\"\\/pricing\",\"hero_section_video_url\":\"https:\\/\\/www.youtube.com\\/watch?v=ufda7QD-EcM\",\"hero_img\":\"3765afe7ef38875c4ee8d409e2dcd62216f66582.png\",\"timezone\":\"America\\/Shiprock\",\"contact_addresses\":\"California, USA\\r\\nLondon, United Kingdom\\r\\nMelbourne, Australia\",\"contact_numbers\":\"+8434197502,+2350575099,+23576039607\",\"contact_mails\":\"contact@example.com,support@example.com,query@example.com\",\"is_whatsapp\":1,\"whatsapp_number\":null,\"whatsapp_header_title\":null,\"whatsapp_popup_message\":null,\"whatsapp_popup\":1,\"domain_request_success_message\":\"We have received your custom domain request. Please allow us 2 business days to connect the domain with our server.\",\"cname_record_section_title\":\"Read Before Sending Custom Domain Request\",\"cname_record_section_text\":\"<ul><li><font color=\\\"#575962\\\"><span style=\\\"font-weight:600;\\\">\\u00a0Before sending request for your custom domain, You need to add a CNAME record (given in below table) in your custom domain from your domain registrar account (like - namecheap, godaddy etc...).<\\/span><\\/font><\\/li><li><font color=\\\"#575962\\\"><span style=\\\"font-weight:600;\\\">\\u00a0CNAME record is needed to point your custom domain to our domain ( profilo.xyz ), so that our website can show your portfolio on your domain<\\/span><\\/font><\\/li><li><font color=\\\"#575962\\\"><span style=\\\"font-weight:600;\\\">\\u00a0Different domain registrar (like - godaddy, namecheap etc...) has different interface for adding CNAME record. If you cannot find the place to add CNAME record in your domain registrar account, then please contact your domain registrar support, they will show you the place to add CNAME record for your custom domain<\\/span><\\/font><\\/li><\\/ul>\",\"package_features\":\"[\\\"Custom Domain\\\",\\\"Subdomain\\\",\\\"POS\\\",\\\"Coupon\\\",\\\"Live Orders\\\",\\\"Whatsapp Order & Notification\\\",\\\"QR Menu\\\",\\\"Table Reservation\\\",\\\"Table QR Builder\\\",\\\"Call Waiter\\\",\\\"Staffs\\\",\\\"Blog\\\",\\\"Custom Page\\\",\\\"Online Order\\\",\\\"On Table\\\",\\\"Pick Up\\\",\\\"Home Delivery\\\",\\\"Postal Code Based Delivery Charge\\\",\\\"PWA Installability\\\"]\",\"expiration_reminder\":4,\"max_video_size\":\"40.00\",\"max_file_size\":\"5.00\"}', 45, 14, '2024-02-18', '2024-03-18', '2024-02-18 15:26:16', '2024-02-18 15:26:16', 0, NULL),
(110, 0, 0, NULL, 999, 'USD', '$', 'Paystack', 'dfaef0c8', 1, 0, 0, NULL, NULL, '{\"id\":147,\"language_id\":176,\"cookie_alert_status\":1,\"cookie_alert_text\":\"Your experience on this site will be improved by allowing cookies.\",\"cookie_alert_button_text\":\"Allow Cookies\",\"to_mail\":\"pratik.anwar@gmail.com\",\"default_language_direction\":\"ltr\",\"from_mail\":\"test@kreativdev.com\",\"testimonial_img\":\"b19dfe727e15f5f06b7fe2accb10a62b7ea183cc.png\",\"from_name\":\"Supervsasso\",\"is_smtp\":1,\"smtp_host\":\"nl1-sr12.supercp.com\",\"smtp_port\":\"587\",\"encryption\":\"TLS\",\"smtp_username\":\"test@kreativdev.com\",\"smtp_password\":\"xh=wf[%(GD!{\",\"base_currency_symbol\":\"$\",\"base_currency_symbol_position\":\"left\",\"base_currency_text\":\"USD\",\"base_currency_text_position\":\"right\",\"base_currency_rate\":\"1.00\",\"hero_section_title\":\"Our Platform, Your Success\",\"hero_section_text\":\"Build Your Own Restaurant Website\",\"hero_section_button_text\":\"Explore Plans\",\"hero_section_button_url\":\"\\/pricing\",\"hero_section_video_url\":\"https:\\/\\/www.youtube.com\\/watch?v=ufda7QD-EcM\",\"hero_img\":\"3765afe7ef38875c4ee8d409e2dcd62216f66582.png\",\"timezone\":\"America\\/Shiprock\",\"contact_addresses\":\"California, USA\\r\\nLondon, United Kingdom\\r\\nMelbourne, Australia\",\"contact_numbers\":\"+8434197502,+2350575099,+23576039607\",\"contact_mails\":\"contact@example.com,support@example.com,query@example.com\",\"is_whatsapp\":1,\"whatsapp_number\":null,\"whatsapp_header_title\":null,\"whatsapp_popup_message\":null,\"whatsapp_popup\":1,\"domain_request_success_message\":\"We have received your custom domain request. Please allow us 2 business days to connect the domain with our server.\",\"cname_record_section_title\":\"Read Before Sending Custom Domain Request\",\"cname_record_section_text\":\"<ul><li><font color=\\\"#575962\\\"><span style=\\\"font-weight:600;\\\">\\u00a0Before sending request for your custom domain, You need to add a CNAME record (given in below table) in your custom domain from your domain registrar account (like - namecheap, godaddy etc...).<\\/span><\\/font><\\/li><li><font color=\\\"#575962\\\"><span style=\\\"font-weight:600;\\\">\\u00a0CNAME record is needed to point your custom domain to our domain ( profilo.xyz ), so that our website can show your portfolio on your domain<\\/span><\\/font><\\/li><li><font color=\\\"#575962\\\"><span style=\\\"font-weight:600;\\\">\\u00a0Different domain registrar (like - godaddy, namecheap etc...) has different interface for adding CNAME record. If you cannot find the place to add CNAME record in your domain registrar account, then please contact your domain registrar support, they will show you the place to add CNAME record for your custom domain<\\/span><\\/font><\\/li><\\/ul>\",\"package_features\":\"[\\\"Custom Domain\\\",\\\"Subdomain\\\",\\\"POS\\\",\\\"Coupon\\\",\\\"Live Orders\\\",\\\"Whatsapp Order & Notification\\\",\\\"QR Menu\\\",\\\"Table Reservation\\\",\\\"Table QR Builder\\\",\\\"Call Waiter\\\",\\\"Staffs\\\",\\\"Blog\\\",\\\"Custom Page\\\",\\\"Online Order\\\",\\\"On Table\\\",\\\"Pick Up\\\",\\\"Home Delivery\\\",\\\"Postal Code Based Delivery Charge\\\",\\\"PWA Installability\\\"]\",\"expiration_reminder\":4,\"max_video_size\":\"40.00\",\"max_file_size\":\"5.00\"}', 48, 15, '2024-02-19', '2024-02-18', '2024-02-18 19:57:22', '2024-02-18 20:01:48', 1, NULL),
(111, 0, 0, NULL, 99, 'USD', '$', 'Razorpay', '65d318fc1d031', 1, 0, 0, NULL, NULL, '{\"id\":147,\"language_id\":176,\"cookie_alert_status\":1,\"cookie_alert_text\":\"Your experience on this site will be improved by allowing cookies.\",\"cookie_alert_button_text\":\"Allow Cookies\",\"to_mail\":\"pratik.anwar@gmail.com\",\"default_language_direction\":\"ltr\",\"from_mail\":\"test@kreativdev.com\",\"testimonial_img\":\"b19dfe727e15f5f06b7fe2accb10a62b7ea183cc.png\",\"from_name\":\"Supervsasso\",\"is_smtp\":1,\"smtp_host\":\"nl1-sr12.supercp.com\",\"smtp_port\":\"587\",\"encryption\":\"TLS\",\"smtp_username\":\"test@kreativdev.com\",\"smtp_password\":\"xh=wf[%(GD!{\",\"base_currency_symbol\":\"$\",\"base_currency_symbol_position\":\"left\",\"base_currency_text\":\"USD\",\"base_currency_text_position\":\"right\",\"base_currency_rate\":\"1.00\",\"hero_section_title\":\"Our Platform, Your Success\",\"hero_section_text\":\"Build Your Own Restaurant Website\",\"hero_section_button_text\":\"Explore Plans\",\"hero_section_button_url\":\"\\/pricing\",\"hero_section_video_url\":\"https:\\/\\/www.youtube.com\\/watch?v=ufda7QD-EcM\",\"hero_img\":\"3765afe7ef38875c4ee8d409e2dcd62216f66582.png\",\"timezone\":\"America\\/Shiprock\",\"contact_addresses\":\"California, USA\\r\\nLondon, United Kingdom\\r\\nMelbourne, Australia\",\"contact_numbers\":\"+8434197502,+2350575099,+23576039607\",\"contact_mails\":\"contact@example.com,support@example.com,query@example.com\",\"is_whatsapp\":1,\"whatsapp_number\":null,\"whatsapp_header_title\":null,\"whatsapp_popup_message\":null,\"whatsapp_popup\":1,\"domain_request_success_message\":\"We have received your custom domain request. Please allow us 2 business days to connect the domain with our server.\",\"cname_record_section_title\":\"Read Before Sending Custom Domain Request\",\"cname_record_section_text\":\"<ul><li><font color=\\\"#575962\\\"><span style=\\\"font-weight:600;\\\">\\u00a0Before sending request for your custom domain, You need to add a CNAME record (given in below table) in your custom domain from your domain registrar account (like - namecheap, godaddy etc...).<\\/span><\\/font><\\/li><li><font color=\\\"#575962\\\"><span style=\\\"font-weight:600;\\\">\\u00a0CNAME record is needed to point your custom domain to our domain ( profilo.xyz ), so that our website can show your portfolio on your domain<\\/span><\\/font><\\/li><li><font color=\\\"#575962\\\"><span style=\\\"font-weight:600;\\\">\\u00a0Different domain registrar (like - godaddy, namecheap etc...) has different interface for adding CNAME record. If you cannot find the place to add CNAME record in your domain registrar account, then please contact your domain registrar support, they will show you the place to add CNAME record for your custom domain<\\/span><\\/font><\\/li><\\/ul>\",\"package_features\":\"[\\\"Custom Domain\\\",\\\"Subdomain\\\",\\\"POS\\\",\\\"Coupon\\\",\\\"Live Orders\\\",\\\"Whatsapp Order & Notification\\\",\\\"QR Menu\\\",\\\"Table Reservation\\\",\\\"Table QR Builder\\\",\\\"Call Waiter\\\",\\\"Staffs\\\",\\\"Blog\\\",\\\"Custom Page\\\",\\\"Online Order\\\",\\\"On Table\\\",\\\"Pick Up\\\",\\\"Home Delivery\\\",\\\"Postal Code Based Delivery Charge\\\",\\\"PWA Installability\\\"]\",\"expiration_reminder\":4,\"max_video_size\":\"40.00\",\"max_file_size\":\"5.00\"}', 45, 15, '2024-02-19', '2024-03-19', '2024-02-18 20:01:48', '2024-02-18 20:01:48', 0, NULL),
(112, 0, 0, NULL, 99, 'USD', '$', 'Paystack', '54ac7b54', 1, 0, 0, NULL, NULL, '{\"id\":147,\"language_id\":176,\"cookie_alert_status\":1,\"cookie_alert_text\":\"Your experience on this site will be improved by allowing cookies.\",\"cookie_alert_button_text\":\"Allow Cookies\",\"to_mail\":\"pratik.anwar@gmail.com\",\"default_language_direction\":\"ltr\",\"from_mail\":\"test@kreativdev.com\",\"testimonial_img\":\"b19dfe727e15f5f06b7fe2accb10a62b7ea183cc.png\",\"from_name\":\"Supervsasso\",\"is_smtp\":1,\"smtp_host\":\"nl1-sr12.supercp.com\",\"smtp_port\":\"587\",\"encryption\":\"TLS\",\"smtp_username\":\"test@kreativdev.com\",\"smtp_password\":\"xh=wf[%(GD!{\",\"base_currency_symbol\":\"$\",\"base_currency_symbol_position\":\"left\",\"base_currency_text\":\"USD\",\"base_currency_text_position\":\"right\",\"base_currency_rate\":\"1.00\",\"hero_section_title\":\"Our Platform, Your Success\",\"hero_section_text\":\"Build Your Own Restaurant Website\",\"hero_section_button_text\":\"Explore Plans\",\"hero_section_button_url\":\"\\/pricing\",\"hero_section_video_url\":\"https:\\/\\/www.youtube.com\\/watch?v=ufda7QD-EcM\",\"hero_img\":\"3765afe7ef38875c4ee8d409e2dcd62216f66582.png\",\"timezone\":\"America\\/Shiprock\",\"contact_addresses\":\"California, USA\\r\\nLondon, United Kingdom\\r\\nMelbourne, Australia\",\"contact_numbers\":\"+8434197502,+2350575099,+23576039607\",\"contact_mails\":\"contact@example.com,support@example.com,query@example.com\",\"is_whatsapp\":1,\"whatsapp_number\":null,\"whatsapp_header_title\":null,\"whatsapp_popup_message\":null,\"whatsapp_popup\":1,\"domain_request_success_message\":\"We have received your custom domain request. Please allow us 2 business days to connect the domain with our server.\",\"cname_record_section_title\":\"Read Before Sending Custom Domain Request\",\"cname_record_section_text\":\"<ul><li><font color=\\\"#575962\\\"><span style=\\\"font-weight:600;\\\">\\u00a0Before sending request for your custom domain, You need to add a CNAME record (given in below table) in your custom domain from your domain registrar account (like - namecheap, godaddy etc...).<\\/span><\\/font><\\/li><li><font color=\\\"#575962\\\"><span style=\\\"font-weight:600;\\\">\\u00a0CNAME record is needed to point your custom domain to our domain ( profilo.xyz ), so that our website can show your portfolio on your domain<\\/span><\\/font><\\/li><li><font color=\\\"#575962\\\"><span style=\\\"font-weight:600;\\\">\\u00a0Different domain registrar (like - godaddy, namecheap etc...) has different interface for adding CNAME record. If you cannot find the place to add CNAME record in your domain registrar account, then please contact your domain registrar support, they will show you the place to add CNAME record for your custom domain<\\/span><\\/font><\\/li><\\/ul>\",\"package_features\":\"[\\\"Custom Domain\\\",\\\"Subdomain\\\",\\\"POS\\\",\\\"Coupon\\\",\\\"Live Orders\\\",\\\"Whatsapp Order & Notification\\\",\\\"QR Menu\\\",\\\"Table Reservation\\\",\\\"Table QR Builder\\\",\\\"Call Waiter\\\",\\\"Staffs\\\",\\\"Blog\\\",\\\"Custom Page\\\",\\\"Online Order\\\",\\\"On Table\\\",\\\"Pick Up\\\",\\\"Home Delivery\\\",\\\"Postal Code Based Delivery Charge\\\",\\\"PWA Installability\\\"]\",\"expiration_reminder\":4,\"max_video_size\":\"40.00\",\"max_file_size\":\"5.00\"}', 45, 16, '2024-02-19', '2024-03-19', '2024-02-19 14:54:43', '2024-02-19 14:54:43', 0, NULL),
(113, 0, 0, NULL, 999, 'USD', '$', 'Mercado Pago', 'ccc92ba9', 1, 0, 0, NULL, NULL, '{\"id\":147,\"language_id\":176,\"cookie_alert_status\":1,\"cookie_alert_text\":\"Your experience on this site will be improved by allowing cookies.\",\"cookie_alert_button_text\":\"Allow Cookies\",\"to_mail\":\"pratik.anwar@gmail.com\",\"default_language_direction\":\"ltr\",\"from_mail\":\"test@kreativdev.com\",\"testimonial_img\":\"b19dfe727e15f5f06b7fe2accb10a62b7ea183cc.png\",\"from_name\":\"Supervsasso\",\"is_smtp\":1,\"smtp_host\":\"nl1-sr12.supercp.com\",\"smtp_port\":\"587\",\"encryption\":\"TLS\",\"smtp_username\":\"test@kreativdev.com\",\"smtp_password\":\"xh=wf[%(GD!{\",\"base_currency_symbol\":\"$\",\"base_currency_symbol_position\":\"left\",\"base_currency_text\":\"USD\",\"base_currency_text_position\":\"right\",\"base_currency_rate\":\"1.00\",\"hero_section_title\":\"Our Platform, Your Success\",\"hero_section_text\":\"Build Your Own Restaurant Website\",\"hero_section_button_text\":\"Explore Plans\",\"hero_section_button_url\":\"\\/pricing\",\"hero_section_video_url\":\"https:\\/\\/www.youtube.com\\/watch?v=ufda7QD-EcM\",\"hero_img\":\"3765afe7ef38875c4ee8d409e2dcd62216f66582.png\",\"timezone\":\"America\\/Shiprock\",\"contact_addresses\":\"California, USA\\r\\nLondon, United Kingdom\\r\\nMelbourne, Australia\",\"contact_numbers\":\"+8434197502,+2350575099,+23576039607\",\"contact_mails\":\"contact@example.com,support@example.com,query@example.com\",\"is_whatsapp\":1,\"whatsapp_number\":null,\"whatsapp_header_title\":null,\"whatsapp_popup_message\":null,\"whatsapp_popup\":1,\"domain_request_success_message\":\"We have received your custom domain request. Please allow us 2 business days to connect the domain with our server.\",\"cname_record_section_title\":\"Read Before Sending Custom Domain Request\",\"cname_record_section_text\":\"<ul><li><font color=\\\"#575962\\\"><span style=\\\"font-weight:600;\\\">\\u00a0Before sending request for your custom domain, You need to add a CNAME record (given in below table) in your custom domain from your domain registrar account (like - namecheap, godaddy etc...).<\\/span><\\/font><\\/li><li><font color=\\\"#575962\\\"><span style=\\\"font-weight:600;\\\">\\u00a0CNAME record is needed to point your custom domain to our domain ( profilo.xyz ), so that our website can show your portfolio on your domain<\\/span><\\/font><\\/li><li><font color=\\\"#575962\\\"><span style=\\\"font-weight:600;\\\">\\u00a0Different domain registrar (like - godaddy, namecheap etc...) has different interface for adding CNAME record. If you cannot find the place to add CNAME record in your domain registrar account, then please contact your domain registrar support, they will show you the place to add CNAME record for your custom domain<\\/span><\\/font><\\/li><\\/ul>\",\"package_features\":\"[\\\"Custom Domain\\\",\\\"Subdomain\\\",\\\"POS\\\",\\\"Coupon\\\",\\\"Live Orders\\\",\\\"Whatsapp Order & Notification\\\",\\\"QR Menu\\\",\\\"Table Reservation\\\",\\\"Table QR Builder\\\",\\\"Call Waiter\\\",\\\"Staffs\\\",\\\"Blog\\\",\\\"Custom Page\\\",\\\"Online Order\\\",\\\"On Table\\\",\\\"Pick Up\\\",\\\"Home Delivery\\\",\\\"Postal Code Based Delivery Charge\\\",\\\"PWA Installability\\\"]\",\"expiration_reminder\":4,\"max_video_size\":\"40.00\",\"max_file_size\":\"5.00\"}', 48, 17, '2024-02-19', '2024-02-18', '2024-02-19 15:23:05', '2024-02-19 15:40:45', 1, NULL),
(114, 0, 0, NULL, 99, 'USD', '$', 'Flutterwave', '65d42d4d537c4', 1, 0, 0, NULL, NULL, '{\"id\":147,\"language_id\":176,\"cookie_alert_status\":1,\"cookie_alert_text\":\"Your experience on this site will be improved by allowing cookies.\",\"cookie_alert_button_text\":\"Allow Cookies\",\"to_mail\":\"pratik.anwar@gmail.com\",\"default_language_direction\":\"ltr\",\"from_mail\":\"test@kreativdev.com\",\"testimonial_img\":\"b19dfe727e15f5f06b7fe2accb10a62b7ea183cc.png\",\"from_name\":\"Supervsasso\",\"is_smtp\":1,\"smtp_host\":\"nl1-sr12.supercp.com\",\"smtp_port\":\"587\",\"encryption\":\"TLS\",\"smtp_username\":\"test@kreativdev.com\",\"smtp_password\":\"xh=wf[%(GD!{\",\"base_currency_symbol\":\"$\",\"base_currency_symbol_position\":\"left\",\"base_currency_text\":\"USD\",\"base_currency_text_position\":\"right\",\"base_currency_rate\":\"1.00\",\"hero_section_title\":\"Our Platform, Your Success\",\"hero_section_text\":\"Build Your Own Restaurant Website\",\"hero_section_button_text\":\"Explore Plans\",\"hero_section_button_url\":\"\\/pricing\",\"hero_section_video_url\":\"https:\\/\\/www.youtube.com\\/watch?v=ufda7QD-EcM\",\"hero_img\":\"3765afe7ef38875c4ee8d409e2dcd62216f66582.png\",\"timezone\":\"America\\/Shiprock\",\"contact_addresses\":\"California, USA\\r\\nLondon, United Kingdom\\r\\nMelbourne, Australia\",\"contact_numbers\":\"+8434197502,+2350575099,+23576039607\",\"contact_mails\":\"contact@example.com,support@example.com,query@example.com\",\"is_whatsapp\":1,\"whatsapp_number\":null,\"whatsapp_header_title\":null,\"whatsapp_popup_message\":null,\"whatsapp_popup\":1,\"domain_request_success_message\":\"We have received your custom domain request. Please allow us 2 business days to connect the domain with our server.\",\"cname_record_section_title\":\"Read Before Sending Custom Domain Request\",\"cname_record_section_text\":\"<ul><li><font color=\\\"#575962\\\"><span style=\\\"font-weight:600;\\\">\\u00a0Before sending request for your custom domain, You need to add a CNAME record (given in below table) in your custom domain from your domain registrar account (like - namecheap, godaddy etc...).<\\/span><\\/font><\\/li><li><font color=\\\"#575962\\\"><span style=\\\"font-weight:600;\\\">\\u00a0CNAME record is needed to point your custom domain to our domain ( profilo.xyz ), so that our website can show your portfolio on your domain<\\/span><\\/font><\\/li><li><font color=\\\"#575962\\\"><span style=\\\"font-weight:600;\\\">\\u00a0Different domain registrar (like - godaddy, namecheap etc...) has different interface for adding CNAME record. If you cannot find the place to add CNAME record in your domain registrar account, then please contact your domain registrar support, they will show you the place to add CNAME record for your custom domain<\\/span><\\/font><\\/li><\\/ul>\",\"package_features\":\"[\\\"Custom Domain\\\",\\\"Subdomain\\\",\\\"POS\\\",\\\"Coupon\\\",\\\"Live Orders\\\",\\\"Whatsapp Order & Notification\\\",\\\"QR Menu\\\",\\\"Table Reservation\\\",\\\"Table QR Builder\\\",\\\"Call Waiter\\\",\\\"Staffs\\\",\\\"Blog\\\",\\\"Custom Page\\\",\\\"Online Order\\\",\\\"On Table\\\",\\\"Pick Up\\\",\\\"Home Delivery\\\",\\\"Postal Code Based Delivery Charge\\\",\\\"PWA Installability\\\"]\",\"expiration_reminder\":4,\"max_video_size\":\"40.00\",\"max_file_size\":\"5.00\"}', 45, 17, '2024-02-19', '2024-03-19', '2024-02-19 15:40:45', '2024-02-19 15:40:45', 0, NULL),
(115, 0, 0, NULL, 99, 'USD', '$', 'Mercado Pago', '8caabe75', 1, 0, 0, NULL, NULL, '{\"id\":147,\"language_id\":176,\"cookie_alert_status\":1,\"cookie_alert_text\":\"Your experience on this site will be improved by allowing cookies.\",\"cookie_alert_button_text\":\"Allow Cookies\",\"to_mail\":\"pratik.anwar@gmail.com\",\"default_language_direction\":\"ltr\",\"from_mail\":\"test@kreativdev.com\",\"testimonial_img\":\"b19dfe727e15f5f06b7fe2accb10a62b7ea183cc.png\",\"from_name\":\"Supervsasso\",\"is_smtp\":1,\"smtp_host\":\"nl1-sr12.supercp.com\",\"smtp_port\":\"587\",\"encryption\":\"TLS\",\"smtp_username\":\"test@kreativdev.com\",\"smtp_password\":\"xh=wf[%(GD!{\",\"base_currency_symbol\":\"$\",\"base_currency_symbol_position\":\"left\",\"base_currency_text\":\"USD\",\"base_currency_text_position\":\"right\",\"base_currency_rate\":\"1.00\",\"hero_section_title\":\"Our Platform, Your Success\",\"hero_section_text\":\"Build Your Own Restaurant Website\",\"hero_section_button_text\":\"Explore Plans\",\"hero_section_button_url\":\"\\/pricing\",\"hero_section_video_url\":\"https:\\/\\/www.youtube.com\\/watch?v=ufda7QD-EcM\",\"hero_img\":\"3765afe7ef38875c4ee8d409e2dcd62216f66582.png\",\"timezone\":\"America\\/Shiprock\",\"contact_addresses\":\"California, USA\\r\\nLondon, United Kingdom\\r\\nMelbourne, Australia\",\"contact_numbers\":\"+8434197502,+2350575099,+23576039607\",\"contact_mails\":\"contact@example.com,support@example.com,query@example.com\",\"is_whatsapp\":1,\"whatsapp_number\":null,\"whatsapp_header_title\":null,\"whatsapp_popup_message\":null,\"whatsapp_popup\":1,\"domain_request_success_message\":\"We have received your custom domain request. Please allow us 2 business days to connect the domain with our server.\",\"cname_record_section_title\":\"Read Before Sending Custom Domain Request\",\"cname_record_section_text\":\"<ul><li><font color=\\\"#575962\\\"><span style=\\\"font-weight:600;\\\">\\u00a0Before sending request for your custom domain, You need to add a CNAME record (given in below table) in your custom domain from your domain registrar account (like - namecheap, godaddy etc...).<\\/span><\\/font><\\/li><li><font color=\\\"#575962\\\"><span style=\\\"font-weight:600;\\\">\\u00a0CNAME record is needed to point your custom domain to our domain ( profilo.xyz ), so that our website can show your portfolio on your domain<\\/span><\\/font><\\/li><li><font color=\\\"#575962\\\"><span style=\\\"font-weight:600;\\\">\\u00a0Different domain registrar (like - godaddy, namecheap etc...) has different interface for adding CNAME record. If you cannot find the place to add CNAME record in your domain registrar account, then please contact your domain registrar support, they will show you the place to add CNAME record for your custom domain<\\/span><\\/font><\\/li><\\/ul>\",\"package_features\":\"[\\\"Custom Domain\\\",\\\"Subdomain\\\",\\\"POS\\\",\\\"Coupon\\\",\\\"Live Orders\\\",\\\"Whatsapp Order & Notification\\\",\\\"QR Menu\\\",\\\"Table Reservation\\\",\\\"Table QR Builder\\\",\\\"Call Waiter\\\",\\\"Staffs\\\",\\\"Blog\\\",\\\"Custom Page\\\",\\\"Online Order\\\",\\\"On Table\\\",\\\"Pick Up\\\",\\\"Home Delivery\\\",\\\"Postal Code Based Delivery Charge\\\",\\\"PWA Installability\\\"]\",\"expiration_reminder\":4,\"max_video_size\":\"40.00\",\"max_file_size\":\"5.00\"}', 45, 18, '2024-02-23', '2024-03-23', '2024-02-23 13:47:07', '2024-02-23 13:47:07', 0, NULL),
(116, 0, 0, NULL, 99, 'USD', '$', 'Paypal', '36243a18', 1, 0, 0, NULL, NULL, '{\"id\":147,\"language_id\":176,\"cookie_alert_status\":1,\"cookie_alert_text\":\"Your experience on this site will be improved by allowing cookies.\",\"cookie_alert_button_text\":\"Allow Cookies\",\"to_mail\":\"pratik.anwar@gmail.com\",\"default_language_direction\":\"ltr\",\"from_mail\":\"test@kreativdev.com\",\"testimonial_img\":\"b19dfe727e15f5f06b7fe2accb10a62b7ea183cc.png\",\"from_name\":\"Supervsasso\",\"is_smtp\":1,\"smtp_host\":\"nl1-sr12.supercp.com\",\"smtp_port\":\"587\",\"encryption\":\"TLS\",\"smtp_username\":\"test@kreativdev.com\",\"smtp_password\":\"xh=wf[%(GD!{\",\"base_currency_symbol\":\"$\",\"base_currency_symbol_position\":\"left\",\"base_currency_text\":\"USD\",\"base_currency_text_position\":\"right\",\"base_currency_rate\":\"1.00\",\"hero_section_title\":\"Our Platform, Your Success\",\"hero_section_text\":\"Build Your Own Restaurant Website\",\"hero_section_button_text\":\"Explore Plans\",\"hero_section_button_url\":\"\\/pricing\",\"hero_section_video_url\":\"https:\\/\\/www.youtube.com\\/watch?v=ufda7QD-EcM\",\"hero_img\":\"3765afe7ef38875c4ee8d409e2dcd62216f66582.png\",\"timezone\":\"America\\/Shiprock\",\"contact_addresses\":\"California, USA\\r\\nLondon, United Kingdom\\r\\nMelbourne, Australia\",\"contact_numbers\":\"+8434197502,+2350575099,+23576039607\",\"contact_mails\":\"contact@example.com,support@example.com,query@example.com\",\"is_whatsapp\":1,\"whatsapp_number\":null,\"whatsapp_header_title\":null,\"whatsapp_popup_message\":null,\"whatsapp_popup\":1,\"domain_request_success_message\":\"We have received your custom domain request. Please allow us 2 business days to connect the domain with our server.\",\"cname_record_section_title\":\"Read Before Sending Custom Domain Request\",\"cname_record_section_text\":\"<ul><li><font color=\\\"#575962\\\"><span style=\\\"font-weight:600;\\\">\\u00a0Before sending request for your custom domain, You need to add a CNAME record (given in below table) in your custom domain from your domain registrar account (like - namecheap, godaddy etc...).<\\/span><\\/font><\\/li><li><font color=\\\"#575962\\\"><span style=\\\"font-weight:600;\\\">\\u00a0CNAME record is needed to point your custom domain to our domain ( profilo.xyz ), so that our website can show your portfolio on your domain<\\/span><\\/font><\\/li><li><font color=\\\"#575962\\\"><span style=\\\"font-weight:600;\\\">\\u00a0Different domain registrar (like - godaddy, namecheap etc...) has different interface for adding CNAME record. If you cannot find the place to add CNAME record in your domain registrar account, then please contact your domain registrar support, they will show you the place to add CNAME record for your custom domain<\\/span><\\/font><\\/li><\\/ul>\",\"package_features\":\"[\\\"Custom Domain\\\",\\\"Subdomain\\\",\\\"POS\\\",\\\"Coupon\\\",\\\"Live Orders\\\",\\\"Whatsapp Order & Notification\\\",\\\"QR Menu\\\",\\\"Table Reservation\\\",\\\"Table QR Builder\\\",\\\"Call Waiter\\\",\\\"Staffs\\\",\\\"Blog\\\",\\\"Custom Page\\\",\\\"Online Order\\\",\\\"On Table\\\",\\\"Pick Up\\\",\\\"Home Delivery\\\",\\\"Postal Code Based Delivery Charge\\\",\\\"PWA Installability\\\"]\",\"expiration_reminder\":4,\"max_video_size\":\"40.00\",\"max_file_size\":\"5.00\"}', 45, 19, '2024-02-23', '2024-03-23', '2024-02-23 13:48:00', '2024-02-23 13:48:00', 0, NULL),
(117, 0, 0, NULL, 2999, 'USD', '$', NULL, '66065163ad706', 1, 0, 0, NULL, NULL, '{\"id\":147,\"language_id\":176,\"cookie_alert_status\":1,\"cookie_alert_text\":\"Your experience on this site will be improved by allowing cookies.\",\"cookie_alert_button_text\":\"Allow Cookies\",\"to_mail\":\"pratik.anwar@gmail.com\",\"default_language_direction\":\"ltr\",\"from_mail\":\"test@kreativdev.com\",\"testimonial_img\":\"b19dfe727e15f5f06b7fe2accb10a62b7ea183cc.png\",\"from_name\":\"Supervsasso\",\"is_smtp\":1,\"smtp_host\":\"nl1-sr12.supercp.com\",\"smtp_port\":\"587\",\"encryption\":\"TLS\",\"smtp_username\":\"test@kreativdev.com\",\"smtp_password\":\"xh=wf[%(GD!{\",\"base_currency_symbol\":\"$\",\"base_currency_symbol_position\":\"left\",\"base_currency_text\":\"USD\",\"base_currency_text_position\":\"right\",\"base_currency_rate\":\"1.00\",\"hero_section_title\":\"Our Platform, Your Success\",\"hero_section_text\":\"Build Your Own Restaurant Website\",\"hero_section_button_text\":\"Explore Plans\",\"hero_section_button_url\":\"\\/pricing\",\"hero_section_video_url\":\"https:\\/\\/www.youtube.com\\/watch?v=ufda7QD-EcM\",\"hero_img\":\"3765afe7ef38875c4ee8d409e2dcd62216f66582.png\",\"timezone\":\"America\\/Shiprock\",\"contact_addresses\":\"California, USA\\r\\nLondon, United Kingdom\\r\\nMelbourne, Australia\",\"contact_numbers\":\"+8434197502,+2350575099,+23576039607\",\"contact_mails\":\"contact@example.com,support@example.com,query@example.com\",\"is_whatsapp\":1,\"whatsapp_number\":null,\"whatsapp_header_title\":null,\"whatsapp_popup_message\":null,\"whatsapp_popup\":1,\"domain_request_success_message\":\"We have received your custom domain request. Please allow us 2 business days to connect the domain with our server.\",\"cname_record_section_title\":\"Read Before Sending Custom Domain Request\",\"cname_record_section_text\":\"<ul><li><font color=\\\"#575962\\\"><span style=\\\"font-weight:600;\\\">\\u00a0Before sending request for your custom domain, You need to add a CNAME record (given in below table) in your custom domain from your domain registrar account (like - namecheap, godaddy etc...).<\\/span><\\/font><\\/li><li><font color=\\\"#575962\\\"><span style=\\\"font-weight:600;\\\">\\u00a0CNAME record is needed to point your custom domain to our domain ( profilo.xyz ), so that our website can show your portfolio on your domain<\\/span><\\/font><\\/li><li><font color=\\\"#575962\\\"><span style=\\\"font-weight:600;\\\">\\u00a0Different domain registrar (like - godaddy, namecheap etc...) has different interface for adding CNAME record. If you cannot find the place to add CNAME record in your domain registrar account, then please contact your domain registrar support, they will show you the place to add CNAME record for your custom domain<\\/span><\\/font><\\/li><\\/ul>\",\"package_features\":\"[\\\"Custom Domain\\\",\\\"Subdomain\\\",\\\"POS\\\",\\\"Coupon\\\",\\\"Live Orders\\\",\\\"Whatsapp Order & Notification\\\",\\\"QR Menu\\\",\\\"Table Reservation\\\",\\\"Table QR Builder\\\",\\\"Call Waiter\\\",\\\"Staffs\\\",\\\"Blog\\\",\\\"Custom Page\\\",\\\"Online Order\\\",\\\"On Table\\\",\\\"Pick Up\\\",\\\"Home Delivery\\\",\\\"Postal Code Based Delivery Charge\\\",\\\"PWA Installability\\\"]\",\"expiration_reminder\":4,\"max_video_size\":\"40.00\",\"max_file_size\":\"5.00\"}', 51, 2, '2024-03-29', '9999-12-31', '2024-03-28 20:28:03', '2024-03-28 20:28:03', 0, NULL),
(118, 0, 0, NULL, 2999, 'USD', '$', NULL, '6606517457fe2', 1, 0, 0, NULL, NULL, '{\"id\":147,\"language_id\":176,\"cookie_alert_status\":1,\"cookie_alert_text\":\"Your experience on this site will be improved by allowing cookies.\",\"cookie_alert_button_text\":\"Allow Cookies\",\"to_mail\":\"pratik.anwar@gmail.com\",\"default_language_direction\":\"ltr\",\"from_mail\":\"test@kreativdev.com\",\"testimonial_img\":\"b19dfe727e15f5f06b7fe2accb10a62b7ea183cc.png\",\"from_name\":\"Supervsasso\",\"is_smtp\":1,\"smtp_host\":\"nl1-sr12.supercp.com\",\"smtp_port\":\"587\",\"encryption\":\"TLS\",\"smtp_username\":\"test@kreativdev.com\",\"smtp_password\":\"xh=wf[%(GD!{\",\"base_currency_symbol\":\"$\",\"base_currency_symbol_position\":\"left\",\"base_currency_text\":\"USD\",\"base_currency_text_position\":\"right\",\"base_currency_rate\":\"1.00\",\"hero_section_title\":\"Our Platform, Your Success\",\"hero_section_text\":\"Build Your Own Restaurant Website\",\"hero_section_button_text\":\"Explore Plans\",\"hero_section_button_url\":\"\\/pricing\",\"hero_section_video_url\":\"https:\\/\\/www.youtube.com\\/watch?v=ufda7QD-EcM\",\"hero_img\":\"3765afe7ef38875c4ee8d409e2dcd62216f66582.png\",\"timezone\":\"America\\/Shiprock\",\"contact_addresses\":\"California, USA\\r\\nLondon, United Kingdom\\r\\nMelbourne, Australia\",\"contact_numbers\":\"+8434197502,+2350575099,+23576039607\",\"contact_mails\":\"contact@example.com,support@example.com,query@example.com\",\"is_whatsapp\":1,\"whatsapp_number\":null,\"whatsapp_header_title\":null,\"whatsapp_popup_message\":null,\"whatsapp_popup\":1,\"domain_request_success_message\":\"We have received your custom domain request. Please allow us 2 business days to connect the domain with our server.\",\"cname_record_section_title\":\"Read Before Sending Custom Domain Request\",\"cname_record_section_text\":\"<ul><li><font color=\\\"#575962\\\"><span style=\\\"font-weight:600;\\\">\\u00a0Before sending request for your custom domain, You need to add a CNAME record (given in below table) in your custom domain from your domain registrar account (like - namecheap, godaddy etc...).<\\/span><\\/font><\\/li><li><font color=\\\"#575962\\\"><span style=\\\"font-weight:600;\\\">\\u00a0CNAME record is needed to point your custom domain to our domain ( profilo.xyz ), so that our website can show your portfolio on your domain<\\/span><\\/font><\\/li><li><font color=\\\"#575962\\\"><span style=\\\"font-weight:600;\\\">\\u00a0Different domain registrar (like - godaddy, namecheap etc...) has different interface for adding CNAME record. If you cannot find the place to add CNAME record in your domain registrar account, then please contact your domain registrar support, they will show you the place to add CNAME record for your custom domain<\\/span><\\/font><\\/li><\\/ul>\",\"package_features\":\"[\\\"Custom Domain\\\",\\\"Subdomain\\\",\\\"POS\\\",\\\"Coupon\\\",\\\"Live Orders\\\",\\\"Whatsapp Order & Notification\\\",\\\"QR Menu\\\",\\\"Table Reservation\\\",\\\"Table QR Builder\\\",\\\"Call Waiter\\\",\\\"Staffs\\\",\\\"Blog\\\",\\\"Custom Page\\\",\\\"Online Order\\\",\\\"On Table\\\",\\\"Pick Up\\\",\\\"Home Delivery\\\",\\\"Postal Code Based Delivery Charge\\\",\\\"PWA Installability\\\"]\",\"expiration_reminder\":4,\"max_video_size\":\"40.00\",\"max_file_size\":\"5.00\"}', 51, 14, '2024-03-29', '9999-12-31', '2024-03-28 20:28:20', '2024-03-28 20:28:20', 0, NULL),
(119, 0, 0, NULL, 2999, 'USD', '$', NULL, '66065183911f3', 1, 0, 0, NULL, NULL, '{\"id\":147,\"language_id\":176,\"cookie_alert_status\":1,\"cookie_alert_text\":\"Your experience on this site will be improved by allowing cookies.\",\"cookie_alert_button_text\":\"Allow Cookies\",\"to_mail\":\"pratik.anwar@gmail.com\",\"default_language_direction\":\"ltr\",\"from_mail\":\"test@kreativdev.com\",\"testimonial_img\":\"b19dfe727e15f5f06b7fe2accb10a62b7ea183cc.png\",\"from_name\":\"Supervsasso\",\"is_smtp\":1,\"smtp_host\":\"nl1-sr12.supercp.com\",\"smtp_port\":\"587\",\"encryption\":\"TLS\",\"smtp_username\":\"test@kreativdev.com\",\"smtp_password\":\"xh=wf[%(GD!{\",\"base_currency_symbol\":\"$\",\"base_currency_symbol_position\":\"left\",\"base_currency_text\":\"USD\",\"base_currency_text_position\":\"right\",\"base_currency_rate\":\"1.00\",\"hero_section_title\":\"Our Platform, Your Success\",\"hero_section_text\":\"Build Your Own Restaurant Website\",\"hero_section_button_text\":\"Explore Plans\",\"hero_section_button_url\":\"\\/pricing\",\"hero_section_video_url\":\"https:\\/\\/www.youtube.com\\/watch?v=ufda7QD-EcM\",\"hero_img\":\"3765afe7ef38875c4ee8d409e2dcd62216f66582.png\",\"timezone\":\"America\\/Shiprock\",\"contact_addresses\":\"California, USA\\r\\nLondon, United Kingdom\\r\\nMelbourne, Australia\",\"contact_numbers\":\"+8434197502,+2350575099,+23576039607\",\"contact_mails\":\"contact@example.com,support@example.com,query@example.com\",\"is_whatsapp\":1,\"whatsapp_number\":null,\"whatsapp_header_title\":null,\"whatsapp_popup_message\":null,\"whatsapp_popup\":1,\"domain_request_success_message\":\"We have received your custom domain request. Please allow us 2 business days to connect the domain with our server.\",\"cname_record_section_title\":\"Read Before Sending Custom Domain Request\",\"cname_record_section_text\":\"<ul><li><font color=\\\"#575962\\\"><span style=\\\"font-weight:600;\\\">\\u00a0Before sending request for your custom domain, You need to add a CNAME record (given in below table) in your custom domain from your domain registrar account (like - namecheap, godaddy etc...).<\\/span><\\/font><\\/li><li><font color=\\\"#575962\\\"><span style=\\\"font-weight:600;\\\">\\u00a0CNAME record is needed to point your custom domain to our domain ( profilo.xyz ), so that our website can show your portfolio on your domain<\\/span><\\/font><\\/li><li><font color=\\\"#575962\\\"><span style=\\\"font-weight:600;\\\">\\u00a0Different domain registrar (like - godaddy, namecheap etc...) has different interface for adding CNAME record. If you cannot find the place to add CNAME record in your domain registrar account, then please contact your domain registrar support, they will show you the place to add CNAME record for your custom domain<\\/span><\\/font><\\/li><\\/ul>\",\"package_features\":\"[\\\"Custom Domain\\\",\\\"Subdomain\\\",\\\"POS\\\",\\\"Coupon\\\",\\\"Live Orders\\\",\\\"Whatsapp Order & Notification\\\",\\\"QR Menu\\\",\\\"Table Reservation\\\",\\\"Table QR Builder\\\",\\\"Call Waiter\\\",\\\"Staffs\\\",\\\"Blog\\\",\\\"Custom Page\\\",\\\"Online Order\\\",\\\"On Table\\\",\\\"Pick Up\\\",\\\"Home Delivery\\\",\\\"Postal Code Based Delivery Charge\\\",\\\"PWA Installability\\\"]\",\"expiration_reminder\":4,\"max_video_size\":\"40.00\",\"max_file_size\":\"5.00\"}', 51, 15, '2024-03-29', '9999-12-31', '2024-03-28 20:28:35', '2024-03-28 20:28:35', 0, NULL);
INSERT INTO `memberships` (`id`, `package_price`, `discount`, `coupon_code`, `price`, `currency`, `currency_symbol`, `payment_method`, `transaction_id`, `status`, `is_trial`, `trial_days`, `receipt`, `transaction_details`, `settings`, `package_id`, `user_id`, `start_date`, `expire_date`, `created_at`, `updated_at`, `modified`, `conversation_id`) VALUES
(120, 0, 0, NULL, 2999, 'USD', '$', NULL, '66065192e2024', 1, 0, 0, NULL, NULL, '{\"id\":147,\"language_id\":176,\"cookie_alert_status\":1,\"cookie_alert_text\":\"Your experience on this site will be improved by allowing cookies.\",\"cookie_alert_button_text\":\"Allow Cookies\",\"to_mail\":\"pratik.anwar@gmail.com\",\"default_language_direction\":\"ltr\",\"from_mail\":\"test@kreativdev.com\",\"testimonial_img\":\"b19dfe727e15f5f06b7fe2accb10a62b7ea183cc.png\",\"from_name\":\"Supervsasso\",\"is_smtp\":1,\"smtp_host\":\"nl1-sr12.supercp.com\",\"smtp_port\":\"587\",\"encryption\":\"TLS\",\"smtp_username\":\"test@kreativdev.com\",\"smtp_password\":\"xh=wf[%(GD!{\",\"base_currency_symbol\":\"$\",\"base_currency_symbol_position\":\"left\",\"base_currency_text\":\"USD\",\"base_currency_text_position\":\"right\",\"base_currency_rate\":\"1.00\",\"hero_section_title\":\"Our Platform, Your Success\",\"hero_section_text\":\"Build Your Own Restaurant Website\",\"hero_section_button_text\":\"Explore Plans\",\"hero_section_button_url\":\"\\/pricing\",\"hero_section_video_url\":\"https:\\/\\/www.youtube.com\\/watch?v=ufda7QD-EcM\",\"hero_img\":\"3765afe7ef38875c4ee8d409e2dcd62216f66582.png\",\"timezone\":\"America\\/Shiprock\",\"contact_addresses\":\"California, USA\\r\\nLondon, United Kingdom\\r\\nMelbourne, Australia\",\"contact_numbers\":\"+8434197502,+2350575099,+23576039607\",\"contact_mails\":\"contact@example.com,support@example.com,query@example.com\",\"is_whatsapp\":1,\"whatsapp_number\":null,\"whatsapp_header_title\":null,\"whatsapp_popup_message\":null,\"whatsapp_popup\":1,\"domain_request_success_message\":\"We have received your custom domain request. Please allow us 2 business days to connect the domain with our server.\",\"cname_record_section_title\":\"Read Before Sending Custom Domain Request\",\"cname_record_section_text\":\"<ul><li><font color=\\\"#575962\\\"><span style=\\\"font-weight:600;\\\">\\u00a0Before sending request for your custom domain, You need to add a CNAME record (given in below table) in your custom domain from your domain registrar account (like - namecheap, godaddy etc...).<\\/span><\\/font><\\/li><li><font color=\\\"#575962\\\"><span style=\\\"font-weight:600;\\\">\\u00a0CNAME record is needed to point your custom domain to our domain ( profilo.xyz ), so that our website can show your portfolio on your domain<\\/span><\\/font><\\/li><li><font color=\\\"#575962\\\"><span style=\\\"font-weight:600;\\\">\\u00a0Different domain registrar (like - godaddy, namecheap etc...) has different interface for adding CNAME record. If you cannot find the place to add CNAME record in your domain registrar account, then please contact your domain registrar support, they will show you the place to add CNAME record for your custom domain<\\/span><\\/font><\\/li><\\/ul>\",\"package_features\":\"[\\\"Custom Domain\\\",\\\"Subdomain\\\",\\\"POS\\\",\\\"Coupon\\\",\\\"Live Orders\\\",\\\"Whatsapp Order & Notification\\\",\\\"QR Menu\\\",\\\"Table Reservation\\\",\\\"Table QR Builder\\\",\\\"Call Waiter\\\",\\\"Staffs\\\",\\\"Blog\\\",\\\"Custom Page\\\",\\\"Online Order\\\",\\\"On Table\\\",\\\"Pick Up\\\",\\\"Home Delivery\\\",\\\"Postal Code Based Delivery Charge\\\",\\\"PWA Installability\\\"]\",\"expiration_reminder\":4,\"max_video_size\":\"40.00\",\"max_file_size\":\"5.00\"}', 51, 16, '2024-03-29', '9999-12-31', '2024-03-28 20:28:50', '2024-03-28 20:28:50', 0, NULL),
(121, 0, 0, NULL, 2999, 'USD', '$', NULL, '660651a26446e', 1, 0, 0, NULL, NULL, '{\"id\":147,\"language_id\":176,\"cookie_alert_status\":1,\"cookie_alert_text\":\"Your experience on this site will be improved by allowing cookies.\",\"cookie_alert_button_text\":\"Allow Cookies\",\"to_mail\":\"pratik.anwar@gmail.com\",\"default_language_direction\":\"ltr\",\"from_mail\":\"test@kreativdev.com\",\"testimonial_img\":\"b19dfe727e15f5f06b7fe2accb10a62b7ea183cc.png\",\"from_name\":\"Supervsasso\",\"is_smtp\":1,\"smtp_host\":\"nl1-sr12.supercp.com\",\"smtp_port\":\"587\",\"encryption\":\"TLS\",\"smtp_username\":\"test@kreativdev.com\",\"smtp_password\":\"xh=wf[%(GD!{\",\"base_currency_symbol\":\"$\",\"base_currency_symbol_position\":\"left\",\"base_currency_text\":\"USD\",\"base_currency_text_position\":\"right\",\"base_currency_rate\":\"1.00\",\"hero_section_title\":\"Our Platform, Your Success\",\"hero_section_text\":\"Build Your Own Restaurant Website\",\"hero_section_button_text\":\"Explore Plans\",\"hero_section_button_url\":\"\\/pricing\",\"hero_section_video_url\":\"https:\\/\\/www.youtube.com\\/watch?v=ufda7QD-EcM\",\"hero_img\":\"3765afe7ef38875c4ee8d409e2dcd62216f66582.png\",\"timezone\":\"America\\/Shiprock\",\"contact_addresses\":\"California, USA\\r\\nLondon, United Kingdom\\r\\nMelbourne, Australia\",\"contact_numbers\":\"+8434197502,+2350575099,+23576039607\",\"contact_mails\":\"contact@example.com,support@example.com,query@example.com\",\"is_whatsapp\":1,\"whatsapp_number\":null,\"whatsapp_header_title\":null,\"whatsapp_popup_message\":null,\"whatsapp_popup\":1,\"domain_request_success_message\":\"We have received your custom domain request. Please allow us 2 business days to connect the domain with our server.\",\"cname_record_section_title\":\"Read Before Sending Custom Domain Request\",\"cname_record_section_text\":\"<ul><li><font color=\\\"#575962\\\"><span style=\\\"font-weight:600;\\\">\\u00a0Before sending request for your custom domain, You need to add a CNAME record (given in below table) in your custom domain from your domain registrar account (like - namecheap, godaddy etc...).<\\/span><\\/font><\\/li><li><font color=\\\"#575962\\\"><span style=\\\"font-weight:600;\\\">\\u00a0CNAME record is needed to point your custom domain to our domain ( profilo.xyz ), so that our website can show your portfolio on your domain<\\/span><\\/font><\\/li><li><font color=\\\"#575962\\\"><span style=\\\"font-weight:600;\\\">\\u00a0Different domain registrar (like - godaddy, namecheap etc...) has different interface for adding CNAME record. If you cannot find the place to add CNAME record in your domain registrar account, then please contact your domain registrar support, they will show you the place to add CNAME record for your custom domain<\\/span><\\/font><\\/li><\\/ul>\",\"package_features\":\"[\\\"Custom Domain\\\",\\\"Subdomain\\\",\\\"POS\\\",\\\"Coupon\\\",\\\"Live Orders\\\",\\\"Whatsapp Order & Notification\\\",\\\"QR Menu\\\",\\\"Table Reservation\\\",\\\"Table QR Builder\\\",\\\"Call Waiter\\\",\\\"Staffs\\\",\\\"Blog\\\",\\\"Custom Page\\\",\\\"Online Order\\\",\\\"On Table\\\",\\\"Pick Up\\\",\\\"Home Delivery\\\",\\\"Postal Code Based Delivery Charge\\\",\\\"PWA Installability\\\"]\",\"expiration_reminder\":4,\"max_video_size\":\"40.00\",\"max_file_size\":\"5.00\"}', 51, 17, '2024-03-29', '9999-12-31', '2024-03-28 20:29:06', '2024-03-28 20:29:06', 0, NULL),
(122, 0, 0, NULL, 2999, 'USD', '$', NULL, '660651b14b4fa', 1, 0, 0, NULL, NULL, '{\"id\":147,\"language_id\":176,\"cookie_alert_status\":1,\"cookie_alert_text\":\"Your experience on this site will be improved by allowing cookies.\",\"cookie_alert_button_text\":\"Allow Cookies\",\"to_mail\":\"pratik.anwar@gmail.com\",\"default_language_direction\":\"ltr\",\"from_mail\":\"test@kreativdev.com\",\"testimonial_img\":\"b19dfe727e15f5f06b7fe2accb10a62b7ea183cc.png\",\"from_name\":\"Supervsasso\",\"is_smtp\":1,\"smtp_host\":\"nl1-sr12.supercp.com\",\"smtp_port\":\"587\",\"encryption\":\"TLS\",\"smtp_username\":\"test@kreativdev.com\",\"smtp_password\":\"xh=wf[%(GD!{\",\"base_currency_symbol\":\"$\",\"base_currency_symbol_position\":\"left\",\"base_currency_text\":\"USD\",\"base_currency_text_position\":\"right\",\"base_currency_rate\":\"1.00\",\"hero_section_title\":\"Our Platform, Your Success\",\"hero_section_text\":\"Build Your Own Restaurant Website\",\"hero_section_button_text\":\"Explore Plans\",\"hero_section_button_url\":\"\\/pricing\",\"hero_section_video_url\":\"https:\\/\\/www.youtube.com\\/watch?v=ufda7QD-EcM\",\"hero_img\":\"3765afe7ef38875c4ee8d409e2dcd62216f66582.png\",\"timezone\":\"America\\/Shiprock\",\"contact_addresses\":\"California, USA\\r\\nLondon, United Kingdom\\r\\nMelbourne, Australia\",\"contact_numbers\":\"+8434197502,+2350575099,+23576039607\",\"contact_mails\":\"contact@example.com,support@example.com,query@example.com\",\"is_whatsapp\":1,\"whatsapp_number\":null,\"whatsapp_header_title\":null,\"whatsapp_popup_message\":null,\"whatsapp_popup\":1,\"domain_request_success_message\":\"We have received your custom domain request. Please allow us 2 business days to connect the domain with our server.\",\"cname_record_section_title\":\"Read Before Sending Custom Domain Request\",\"cname_record_section_text\":\"<ul><li><font color=\\\"#575962\\\"><span style=\\\"font-weight:600;\\\">\\u00a0Before sending request for your custom domain, You need to add a CNAME record (given in below table) in your custom domain from your domain registrar account (like - namecheap, godaddy etc...).<\\/span><\\/font><\\/li><li><font color=\\\"#575962\\\"><span style=\\\"font-weight:600;\\\">\\u00a0CNAME record is needed to point your custom domain to our domain ( profilo.xyz ), so that our website can show your portfolio on your domain<\\/span><\\/font><\\/li><li><font color=\\\"#575962\\\"><span style=\\\"font-weight:600;\\\">\\u00a0Different domain registrar (like - godaddy, namecheap etc...) has different interface for adding CNAME record. If you cannot find the place to add CNAME record in your domain registrar account, then please contact your domain registrar support, they will show you the place to add CNAME record for your custom domain<\\/span><\\/font><\\/li><\\/ul>\",\"package_features\":\"[\\\"Custom Domain\\\",\\\"Subdomain\\\",\\\"POS\\\",\\\"Coupon\\\",\\\"Live Orders\\\",\\\"Whatsapp Order & Notification\\\",\\\"QR Menu\\\",\\\"Table Reservation\\\",\\\"Table QR Builder\\\",\\\"Call Waiter\\\",\\\"Staffs\\\",\\\"Blog\\\",\\\"Custom Page\\\",\\\"Online Order\\\",\\\"On Table\\\",\\\"Pick Up\\\",\\\"Home Delivery\\\",\\\"Postal Code Based Delivery Charge\\\",\\\"PWA Installability\\\"]\",\"expiration_reminder\":4,\"max_video_size\":\"40.00\",\"max_file_size\":\"5.00\"}', 51, 18, '2024-03-29', '9999-12-31', '2024-03-28 20:29:21', '2024-03-28 20:29:21', 0, NULL),
(123, 0, 0, NULL, 2999, 'USD', '$', NULL, '660651c04ce0d', 1, 0, 0, NULL, NULL, '{\"id\":147,\"language_id\":176,\"cookie_alert_status\":1,\"cookie_alert_text\":\"Your experience on this site will be improved by allowing cookies.\",\"cookie_alert_button_text\":\"Allow Cookies\",\"to_mail\":\"pratik.anwar@gmail.com\",\"default_language_direction\":\"ltr\",\"from_mail\":\"test@kreativdev.com\",\"testimonial_img\":\"b19dfe727e15f5f06b7fe2accb10a62b7ea183cc.png\",\"from_name\":\"Supervsasso\",\"is_smtp\":1,\"smtp_host\":\"nl1-sr12.supercp.com\",\"smtp_port\":\"587\",\"encryption\":\"TLS\",\"smtp_username\":\"test@kreativdev.com\",\"smtp_password\":\"xh=wf[%(GD!{\",\"base_currency_symbol\":\"$\",\"base_currency_symbol_position\":\"left\",\"base_currency_text\":\"USD\",\"base_currency_text_position\":\"right\",\"base_currency_rate\":\"1.00\",\"hero_section_title\":\"Our Platform, Your Success\",\"hero_section_text\":\"Build Your Own Restaurant Website\",\"hero_section_button_text\":\"Explore Plans\",\"hero_section_button_url\":\"\\/pricing\",\"hero_section_video_url\":\"https:\\/\\/www.youtube.com\\/watch?v=ufda7QD-EcM\",\"hero_img\":\"3765afe7ef38875c4ee8d409e2dcd62216f66582.png\",\"timezone\":\"America\\/Shiprock\",\"contact_addresses\":\"California, USA\\r\\nLondon, United Kingdom\\r\\nMelbourne, Australia\",\"contact_numbers\":\"+8434197502,+2350575099,+23576039607\",\"contact_mails\":\"contact@example.com,support@example.com,query@example.com\",\"is_whatsapp\":1,\"whatsapp_number\":null,\"whatsapp_header_title\":null,\"whatsapp_popup_message\":null,\"whatsapp_popup\":1,\"domain_request_success_message\":\"We have received your custom domain request. Please allow us 2 business days to connect the domain with our server.\",\"cname_record_section_title\":\"Read Before Sending Custom Domain Request\",\"cname_record_section_text\":\"<ul><li><font color=\\\"#575962\\\"><span style=\\\"font-weight:600;\\\">\\u00a0Before sending request for your custom domain, You need to add a CNAME record (given in below table) in your custom domain from your domain registrar account (like - namecheap, godaddy etc...).<\\/span><\\/font><\\/li><li><font color=\\\"#575962\\\"><span style=\\\"font-weight:600;\\\">\\u00a0CNAME record is needed to point your custom domain to our domain ( profilo.xyz ), so that our website can show your portfolio on your domain<\\/span><\\/font><\\/li><li><font color=\\\"#575962\\\"><span style=\\\"font-weight:600;\\\">\\u00a0Different domain registrar (like - godaddy, namecheap etc...) has different interface for adding CNAME record. If you cannot find the place to add CNAME record in your domain registrar account, then please contact your domain registrar support, they will show you the place to add CNAME record for your custom domain<\\/span><\\/font><\\/li><\\/ul>\",\"package_features\":\"[\\\"Custom Domain\\\",\\\"Subdomain\\\",\\\"POS\\\",\\\"Coupon\\\",\\\"Live Orders\\\",\\\"Whatsapp Order & Notification\\\",\\\"QR Menu\\\",\\\"Table Reservation\\\",\\\"Table QR Builder\\\",\\\"Call Waiter\\\",\\\"Staffs\\\",\\\"Blog\\\",\\\"Custom Page\\\",\\\"Online Order\\\",\\\"On Table\\\",\\\"Pick Up\\\",\\\"Home Delivery\\\",\\\"Postal Code Based Delivery Charge\\\",\\\"PWA Installability\\\"]\",\"expiration_reminder\":4,\"max_video_size\":\"40.00\",\"max_file_size\":\"5.00\"}', 51, 19, '2024-03-29', '9999-12-31', '2024-03-28 20:29:36', '2024-03-28 20:29:36', 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `language_id` int(11) DEFAULT NULL,
  `menus` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `language_id`, `menus`, `created_at`, `updated_at`) VALUES
(154, 177, '[{\"type\":\"home\",\"text\":\"بيت\",\"href\":\"\",\"target\":\"_self\"},{\"type\":\"listings\",\"text\":\"القوائم\",\"href\":\"\",\"target\":\"_self\"},{\"type\":\"pricing\",\"text\":\"التسعير\",\"href\":\"\",\"target\":\"_self\"},{\"type\":\"blog\",\"text\":\"مدونة\",\"href\":\"\",\"target\":\"_self\"},{\"type\":\"custom\",\"text\":\"الصفحات\",\"href\":\"\",\"target\":\"_self\",\"children\":[{\"type\":\"about_us\",\"text\":\"معلومات عنا\",\"href\":\"\",\"target\":\"_self\"},{\"type\":\"9\",\"text\":\"سياسة الخصوصية\",\"href\":\"\",\"target\":\"_self\"},{\"type\":\"10\",\"text\":\"البنود و الظروف\",\"href\":\"\",\"target\":\"_self\"}]},{\"type\":\"faq\",\"text\":\"التعليمات\",\"href\":\"\",\"target\":\"_self\"},{\"type\":\"contact\",\"text\":\"اتصال\",\"href\":\"\",\"target\":\"_self\"}]', '2024-01-29 18:18:59', '2024-01-29 18:18:59'),
(155, 176, '[{\"text\":\"Home\",\"href\":\"\",\"icon\":\"empty\",\"target\":\"_self\",\"title\":\"\",\"type\":\"home\"},{\"text\":\"Listings\",\"href\":\"\",\"icon\":\"empty\",\"target\":\"_self\",\"title\":\"\",\"type\":\"listings\"},{\"text\":\"Pricing\",\"href\":\"\",\"icon\":\"empty\",\"target\":\"_self\",\"title\":\"\",\"type\":\"pricing\"},{\"text\":\"Pages\",\"href\":\"\",\"icon\":\"empty\",\"target\":\"_self\",\"title\":\"\",\"type\":\"custom\",\"children\":[{\"text\":\"About Us\",\"href\":\"\",\"icon\":\"empty\",\"target\":\"_self\",\"title\":\"\",\"type\":\"about_us\"},{\"text\":\"Privacy Policy\",\"href\":\"\",\"icon\":\"empty\",\"target\":\"_self\",\"title\":\"\",\"type\":\"4\"},{\"text\":\"Terms & Conditions\",\"href\":\"\",\"icon\":\"empty\",\"target\":\"_self\",\"title\":\"\",\"type\":\"3\"}]},{\"text\":\"Blog\",\"href\":\"\",\"icon\":\"empty\",\"target\":\"_self\",\"title\":\"\",\"type\":\"blog\"},{\"text\":\"Contact\",\"href\":\"\",\"icon\":\"empty\",\"target\":\"_self\",\"title\":\"\",\"type\":\"contact\"},{\"text\":\"FAQ\",\"href\":\"\",\"icon\":\"empty\",\"target\":\"_self\",\"title\":\"\",\"type\":\"faq\"}]', '2024-02-06 04:38:11', '2024-02-06 04:38:11');

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
(1, '2021_04_10_155226_add_pos_to_serving_methods', 1),
(5, '2021_04_10_161129_create_pos_payment_methods', 2),
(6, '2021_04_11_075502_create_customers_table', 3),
(7, '2021_04_11_151305_create_tables_table', 4),
(8, '2021_04_16_175547_add_qr_image_to_tables', 5),
(10, '2021_04_16_184950_add_qr_cols_to_table', 6),
(11, '2021_05_06_172702_add_image_to_tables', 7),
(12, '2021_05_06_182658_add_image_size_to_tables', 8),
(13, '2021_05_07_141846_change_defailt_image_size', 9),
(14, '2021_05_07_165729_drop_background_color_from_tables', 10),
(15, '2021_05_07_170622_add_image_position_cols_to_tables', 11),
(17, '2021_05_08_104914_add_type_and_text_cols_to_tables', 12),
(18, '2021_05_08_113457_add_default_value_to_text_color_in_tables', 13),
(19, '2021_05_08_174437_add_default_value_to_text_size_in_tables', 14),
(20, '2021_05_08_194033_add_qr_image_cols_to_basic_extendeds', 15),
(21, '2021_05_10_155349_add_gateway_type_to_product_orders', 16),
(24, '2021_05_11_180827_add_token_no_in_basic_settings', 17),
(25, '2021_05_11_181941_add_token_no_after_order_number_in_product_orders', 17),
(28, '2021_05_13_083313_create_postal_codes_table', 18),
(29, '2021_05_13_101831_add_postal_code_to_basic_settings', 19),
(32, '2021_05_16_105019_add_postal_code_to_product_orders', 20),
(33, '2021_05_18_130916_add_call_waiter_status_to_basic_settings', 21),
(34, '2021_05_18_194729_add_contact_infos_to_basic_settings', 22),
(36, '2021_05_19_081335_create_popups_table', 23),
(37, '2021_05_19_122217_drop_announcement_cols_from_basic_settings', 24),
(38, '2021_05_19_125220_drop_parent_link_col_from_basic_settings', 25),
(40, '2021_05_19_125534_add_whatsapp_chat_cols_to_basic_settings', 26),
(41, '2021_05_20_120604_add_order_close_cols_to_basic_extendeds', 27),
(42, '2022_03_13_165621_create_psub_categories_table', 28),
(43, '2022_03_13_180650_add_subcategory_id_to_products_table', 28),
(44, '2022_03_17_131144_add_free_delivery_amount_to_postal_codes', 29),
(45, '2022_03_17_194525_add_free_delivery_amount_to_shipping_charges', 30),
(46, '2022_04_18_133021_create_basic_extras', 31),
(49, '2022_04_19_155032_add_country_code_to_users_table', 32),
(51, '2022_04_21_120742_add_country_code_in_product_orders', 33),
(52, '2022_04_23_124847_add_whatsapp_order_notification_based_on_serving_methods', 34),
(53, '2022_04_23_144354_add_twilio_credentials_in_basic_extras', 35),
(54, '2022_05_25_195401_add_is_feature_in_psub_categories', 36),
(55, '2023_09_18_160526_add_token_to_admins', 37),
(56, '2023_09_18_160606_add_pass_token_to_users', 37),
(57, '2024_02_12_222620_add_columns_to_user_basic_extendeds_table', 38),
(58, '2024_02_12_224946_add_colums_to_user_basic_extendeds_table', 38),
(59, '2024_02_12_225337_add_colums_to_user_basic_extendeds_table', 38),
(60, '2024_02_12_225450_add_colums_to_user_basic_extendeds_table', 38),
(61, '2024_02_12_225549_add_colums_to_user_basic_extendeds_table', 38),
(62, '2024_02_12_225603_add_colums_to_user_basic_extendeds_table', 38),
(63, '2024_02_12_225615_add_colums_to_user_basic_extendeds_table', 38),
(64, '2024_02_12_225626_add_colums_to_user_basic_extendeds_table', 38),
(65, '2024_02_12_225639_add_colums_to_user_basic_extendeds_table', 38),
(66, '2024_02_12_225650_add_colums_to_user_basic_extendeds_table', 38),
(67, '2024_02_12_225717_add_colums_to_user_basic_extendeds_table', 38),
(68, '2024_02_12_225730_add_colums_to_user_basic_extendeds_table', 38),
(69, '2024_02_12_225741_add_colums_to_user_basic_extendeds_table', 38),
(70, '2024_02_12_231614_add_colums_to_user_basic_settings_table', 38),
(72, '2024_02_12_233535_add_colums_to_user_basic_extendeds_table', 39),
(73, '2024_02_12_233935_add_colums_to_user_basic_settings_table', 39),
(74, '2024_02_12_234402_add_colums_to_user_basic_settings_table', 39),
(75, '2024_02_12_234556_add_colums_to_user_basic_settings_table', 39),
(76, '2024_02_12_234700_add_colums_to_user_basic_settings_table', 39),
(77, '2024_02_13_012639_add_colums_to_user_basic_settings_table', 39),
(78, '2024_02_13_012855_add_colums_to_user_basic_settings_table', 39),
(79, '2024_02_13_013014_add_colums_to_user_basic_settings_table', 39),
(80, '2024_02_13_013334_add_colums_to_user_basic_settings_table', 39),
(81, '2024_02_13_013610_add_colums_to_user_basic_settings_table', 39),
(82, '2024_02_13_014806_add_colums_to_user_basic_settings_table', 39),
(83, '2024_02_13_041733_add_colums_to_user_basic_settings_table', 39),
(84, '2024_02_14_210614_add_colums_to_user_basic_settings_table', 39),
(85, '2024_02_14_211113_add_colums_to_user_basic_settings_table', 39),
(86, '2024_02_14_221903_add_colums_to_user_basic_settings_table', 39),
(87, '2024_02_14_222113_add_colums_to_user_basic_settings_table', 39),
(88, '2024_02_14_222235_add_colums_to_user_basic_settings_table', 39),
(89, '2024_02_14_224617_add_colums_to_user_basic_settings_table', 40),
(90, '2024_02_12_232527_create_user_intro_points', 41),
(91, '2024_02_15_000055_add_colums_to_user_basic_extendeds_table', 42),
(92, '2024_02_15_000252_add_colums_to_user_basic_extendeds_table', 43),
(93, '2024_04_03_063731_add_new_9_payment_gateways_into_payment_gateways_table', 44),
(94, '2024_04_24_023259_add_conversation_id_column_into_memberships_table_and_product_orders_table', 44);

-- --------------------------------------------------------

--
-- Table structure for table `offline_gateways`
--

CREATE TABLE `offline_gateways` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `short_description` text COLLATE utf8mb4_unicode_ci,
  `instructions` blob,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `serial_number` int(11) NOT NULL DEFAULT '0',
  `is_receipt` tinyint(4) NOT NULL DEFAULT '1',
  `receipt` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `offline_gateways`
--

INSERT INTO `offline_gateways` (`id`, `name`, `short_description`, `instructions`, `status`, `serial_number`, `is_receipt`, `receipt`, `created_at`, `updated_at`) VALUES
(1, 'Offline Gateway 1', 'Please send your payment to the following account.\r\nBank Name: Lorem Ipsum.\r\nBeneficiary Name: John Doe.\r\nAccount Number/IBAN: 12345678', 0x3c70207374796c653d226c696e652d6865696768743a20312e383b223e3c666f6e7420666163653d2243697263756c61725374642d426f6f6b2c20417269616c2c2073616e732d7365726966223e43686173652042616e6b2069732074686520636f6e73756d65722062616e6b696e67206469766973696f6e206f66204a504d6f7267616e2043686173652e20556e6c696b652069747320636f6d70657469746f72732c2043686173652069732074616b696e6720737465707320746f20657870616e6420697473206272616e6368206e6574776f726b20696e206b6579206d61726b6574732e205468652062616e6b2063757272656e746c7920686173206e6561726c7920352c303030206272616e6368657320616e642031362c3030302041544d732e204163636f7264696e6720746f207468652062616e6b2c206e6561726c792068616c66206f662074686520636f756e747279e280997320686f757365686f6c64732061726520436861736520637573746f6d6572732e3c2f666f6e743e3c62723e3c2f703e, 1, 1, 1, NULL, '2020-09-17 01:06:39', '2021-01-01 02:12:12'),
(2, 'Offline Gateway 2', 'Please send your payment to the following account.\r\nBank Name: Lorem Ipsum.\r\nBeneficiary Name: John Doe.\r\nAccount Number/IBAN: 12345678', 0x3c70207374796c653d226c696e652d6865696768743a20312e383b223e3c7370616e207374796c653d22666f6e742d66616d696c793a2043697263756c61725374642d426f6f6b2c20417269616c2c2073616e732d73657269663b20666f6e742d73697a653a20313470783b223e42616e6b206f6620416d6572696361207365727665732061626f7574203636206d696c6c696f6e20636f6e73756d65727320616e6420736d616c6c20627573696e65737320636c69656e747320776f726c64776964652e204c696b65206d616e79206f662074686520626967676573742062616e6b732c2042616e6b206f6620416d6572696361206973206b6e6f776e20666f7220697473206469676974616c20696e6e6f766174696f6e2e20497420686173206d6f7265207468616e203337206d696c6c696f6e206469676974616c20636c69656e747320616e6420697320657870657269656e63696e67207375636365737320616674657220696e74726f647563696e6720697473207669727475616c20617373697374616e742c2045726963612c20746861742061737369737473206163636f756e7420686f6c64657273207769746820766172696f7573207461736b733c2f7370616e3e3c62723e3c2f703e, 1, 2, 0, NULL, '2020-09-17 01:07:37', '2021-01-01 02:12:22');

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `qty` int(11) NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `variations` text COLLATE utf8mb4_unicode_ci,
  `addons` text COLLATE utf8mb4_unicode_ci,
  `variations_price` decimal(11,2) NOT NULL DEFAULT '0.00',
  `addons_price` decimal(11,2) NOT NULL,
  `product_price` decimal(11,2) NOT NULL,
  `total` decimal(11,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`id`, `product_order_id`, `product_id`, `user_id`, `customer_id`, `title`, `qty`, `image`, `variations`, `addons`, `variations_price`, `addons_price`, `product_price`, `total`, `created_at`, `updated_at`) VALUES
(166, 5, 10, 2, 1, 'Lemon Juice', 1, 'de82e42128000619361619083be97a346c663155.jpg', '{\"Size\":{\"name\":\"Large\",\"price\":2}}', '\"\"', '2.00', '0.00', '5.00', '7.00', '2024-01-21 08:01:00', NULL),
(167, 5, 8, 2, 1, 'Set Menu - 5', 1, 'd346e36fdc744b60b2b6964a96a573da569bba11.jpg', '\"\"', '\"\"', '0.00', '0.00', '8.00', '8.00', '2024-01-21 08:01:00', NULL),
(168, 6, 9, 2, 1, 'Orange Juice', 1, '96fc4d053ee20c69c10f5e339575c5bb9abc1b70.jpg', '[]', '[{\"name\":\"Ice\",\"price\":\"0.00\"},{\"name\":\"Sugar\",\"price\":\"1.00\"}]', '0.00', '1.00', '2.00', '3.00', '2024-01-21 08:21:26', NULL),
(169, 6, 5, 2, 1, 'Strawberry Creamed Donut', 1, '9288fff7df0c6cef89d4a3bc6d8d7c4cba25b534.jpg', '\"\"', '\"\"', '0.00', '0.00', '3.00', '3.00', '2024-01-21 08:21:26', NULL),
(170, 6, 4, 2, 1, 'Regular Donut', 1, '369bd81ba7bedc224eb89b29aa6ab3a53e0d7fcd.jpg', '\"\"', '\"\"', '0.00', '0.00', '4.00', '4.00', '2024-01-21 08:21:26', NULL),
(171, 7, 6, 2, 1, 'Milk Shakes', 1, 'c227ef62b12d1bf4f0c53ac26420a60051c8dfb3.jpg', '\"\"', '\"\"', '0.00', '0.00', '4.00', '4.00', '2024-01-21 08:24:12', NULL),
(172, 7, 4, 2, 1, 'Regular Donut', 1, '369bd81ba7bedc224eb89b29aa6ab3a53e0d7fcd.jpg', '\"\"', '\"\"', '0.00', '0.00', '4.00', '4.00', '2024-01-21 08:24:12', NULL),
(173, 7, 2, 2, 1, 'Grilled Chicken Burger', 1, '156cb73246e09754b355615fd39f59b571db1487.jpg', '{\"Spice Level\":{\"name\":\"Mild\",\"price\":1},\"Size\":{\"name\":\"Large\",\"price\":2}}', '[{\"name\":\"Cheesee\",\"price\":\"1.00\"},{\"name\":\"BBQ Sauce\",\"price\":\"1.00\"},{\"name\":\"Patty\",\"price\":\"2.00\"}]', '3.00', '4.00', '6.00', '13.00', '2024-01-21 08:24:12', NULL),
(174, 8, 4, 2, 1, 'Regular Donut', 1, '369bd81ba7bedc224eb89b29aa6ab3a53e0d7fcd.jpg', '\"\"', '\"\"', '0.00', '0.00', '4.00', '4.00', '2024-01-21 08:35:58', NULL),
(175, 8, 6, 2, 1, 'Milk Shakes', 1, 'c227ef62b12d1bf4f0c53ac26420a60051c8dfb3.jpg', '\"\"', '\"\"', '0.00', '0.00', '4.00', '4.00', '2024-01-21 08:35:58', NULL),
(176, 9, 10, 2, 1, 'Lemon Juice', 1, 'de82e42128000619361619083be97a346c663155.jpg', '{\"Size\":{\"name\":\"Regular\",\"price\":1}}', '\"\"', '1.00', '0.00', '5.00', '6.00', '2024-01-21 09:06:39', NULL),
(177, 9, 9, 2, 1, 'Orange Juice', 1, '96fc4d053ee20c69c10f5e339575c5bb9abc1b70.jpg', '[]', '[{\"name\":\"Ice\",\"price\":\"0.00\"},{\"name\":\"Sugar\",\"price\":\"1.00\"}]', '0.00', '1.00', '2.00', '3.00', '2024-01-21 09:06:39', NULL),
(180, 11, 6, 2, NULL, 'Milk Shakes', 1, 'c227ef62b12d1bf4f0c53ac26420a60051c8dfb3.jpg', '\"\"', '\"\"', '0.00', '0.00', '4.00', '4.00', '2024-01-20 22:24:09', NULL),
(181, 11, 9, 2, NULL, 'Orange Juice', 1, '96fc4d053ee20c69c10f5e339575c5bb9abc1b70.jpg', '[]', '[{\"name\":\"Ice\",\"price\":\"0.00\"}]', '0.00', '0.00', '2.00', '2.00', '2024-01-20 22:24:09', NULL),
(182, 12, 8, 2, NULL, 'Set Menu - 5', 1, 'd346e36fdc744b60b2b6964a96a573da569bba11.jpg', '\"\"', '\"\"', '0.00', '0.00', '8.00', '8.00', '2024-01-20 22:25:33', NULL),
(183, 12, 1, 2, NULL, 'Set Menu - 7', 1, 'e48163cb7f7aad127422bb1a51027441507e3972.jpg', '{\"Size\":{\"name\":\"Big\",\"price\":2}}', '\"\"', '2.00', '0.00', '10.00', '12.00', '2024-01-20 22:25:33', NULL),
(184, 13, 10, 2, NULL, 'Lemon Juice', 1, 'de82e42128000619361619083be97a346c663155.jpg', '{\"Size\":{\"name\":\"Regular\",\"price\":1}}', '\"\"', '1.00', '0.00', '5.00', '6.00', '2024-10-13 06:02:54', NULL),
(185, 13, 9, 2, NULL, 'Orange Juice', 1, '96fc4d053ee20c69c10f5e339575c5bb9abc1b70.jpg', '[]', '[{\"name\":\"Sugar\",\"price\":\"1.00\"}]', '0.00', '1.00', '2.00', '3.00', '2024-10-13 06:02:54', NULL),
(186, 13, 8, 2, NULL, 'Set Menu - 5', 1, 'd346e36fdc744b60b2b6964a96a573da569bba11.jpg', '\"\"', '\"\"', '0.00', '0.00', '8.00', '8.00', '2024-10-13 06:02:54', NULL),
(187, 13, 6, 2, NULL, 'Milk Shakes', 3, 'c227ef62b12d1bf4f0c53ac26420a60051c8dfb3.jpg', '{\"Caramel  Delight\":{\"name\":\"Small\",\"price\":1},\"Blueberry Blastoff\":{\"name\":\"Small\",\"price\":2}}', '\"\"', '9.00', '0.00', '12.00', '21.00', '2024-10-13 06:02:54', NULL),
(188, 14, 6, 2, NULL, 'Milk Shakes', 1, 'c227ef62b12d1bf4f0c53ac26420a60051c8dfb3.jpg', '{\"Caramel  Delight\":{\"name\":\"Small\",\"price\":1},\"Blueberry Blastoff\":{\"name\":\"Small\",\"price\":2}}', '\"\"', '3.00', '0.00', '4.00', '7.00', '2024-10-13 06:55:21', NULL),
(189, 14, 6, 2, NULL, 'Milk Shakes', 1, 'c227ef62b12d1bf4f0c53ac26420a60051c8dfb3.jpg', '{\"Caramel  Delight\":{\"name\":\"Small\",\"price\":1},\"Blueberry Blastoff\":{\"name\":\"Small\",\"price\":2}}', '[{\"name\":\"Oreo Delight\",\"price\":\"2.00\"}]', '3.00', '2.00', '4.00', '9.00', '2024-10-13 06:55:21', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `order_times`
--

CREATE TABLE `order_times` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `day` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start_time` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `end_time` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_times`
--

INSERT INTO `order_times` (`id`, `user_id`, `day`, `start_time`, `end_time`) VALUES
(400, 2, 'monday', '8:00 AM', '9:00 PM'),
(401, 2, 'tuesday', '10:00 AM', '10:30 PM'),
(402, 2, 'wednesday', '12:00 AM', '11:30 PM'),
(403, 2, 'thursday', '8:00 AM', '7:00 PM'),
(404, 2, 'friday', '9:00 AM', '6:00 PM'),
(405, 2, 'saturday', '11:00 AM', '9:30 PM'),
(406, 2, 'sunday', '7:00 AM', '5:00 PM'),
(477, 14, 'monday', NULL, NULL),
(478, 14, 'tuesday', NULL, NULL),
(479, 14, 'wednesday', NULL, NULL),
(480, 14, 'thursday', NULL, NULL),
(481, 14, 'friday', NULL, NULL),
(482, 14, 'saturday', NULL, NULL),
(483, 14, 'sunday', NULL, NULL),
(484, 15, 'monday', NULL, NULL),
(485, 15, 'tuesday', NULL, NULL),
(486, 15, 'wednesday', NULL, NULL),
(487, 15, 'thursday', NULL, NULL),
(488, 15, 'friday', NULL, NULL),
(489, 15, 'saturday', NULL, NULL),
(490, 15, 'sunday', NULL, NULL),
(491, 16, 'monday', NULL, NULL),
(492, 16, 'tuesday', NULL, NULL),
(493, 16, 'wednesday', NULL, NULL),
(494, 16, 'thursday', NULL, NULL),
(495, 16, 'friday', NULL, NULL),
(496, 16, 'saturday', NULL, NULL),
(497, 16, 'sunday', NULL, NULL),
(498, 17, 'monday', NULL, NULL),
(499, 17, 'tuesday', NULL, NULL),
(500, 17, 'wednesday', NULL, NULL),
(501, 17, 'thursday', NULL, NULL),
(502, 17, 'friday', NULL, NULL),
(503, 17, 'saturday', NULL, NULL),
(504, 17, 'sunday', NULL, NULL),
(505, 18, 'monday', NULL, NULL),
(506, 18, 'tuesday', NULL, NULL),
(507, 18, 'wednesday', NULL, NULL),
(508, 18, 'thursday', NULL, NULL),
(509, 18, 'friday', NULL, NULL),
(510, 18, 'saturday', NULL, NULL),
(511, 18, 'sunday', NULL, NULL),
(512, 19, 'monday', NULL, NULL),
(513, 19, 'tuesday', NULL, NULL),
(514, 19, 'wednesday', NULL, NULL),
(515, 19, 'thursday', NULL, NULL),
(516, 19, 'friday', NULL, NULL),
(517, 19, 'saturday', NULL, NULL),
(518, 19, 'sunday', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `packages`
--

CREATE TABLE `packages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `price` double NOT NULL DEFAULT '0',
  `term` varchar(255) DEFAULT NULL,
  `featured` enum('0','1') NOT NULL DEFAULT '0',
  `is_trial` enum('0','1') NOT NULL DEFAULT '0',
  `trial_days` int(11) DEFAULT NULL,
  `status` enum('0','1') NOT NULL DEFAULT '1',
  `recommended` enum('0','1') NOT NULL DEFAULT '0',
  `icon` varchar(255) DEFAULT NULL,
  `storage_limit` int(11) DEFAULT '999999',
  `staff_limit` int(11) DEFAULT '999999',
  `order_limit` int(11) NOT NULL DEFAULT '999999',
  `categories_limit` int(11) DEFAULT '999999',
  `subcategories_limit` int(11) DEFAULT '999999',
  `items_limit` int(11) DEFAULT '999999',
  `table_reservation_limit` int(11) DEFAULT '999999',
  `language_limit` float DEFAULT '999999',
  `features` text,
  `meta_keywords` longtext,
  `meta_description` longtext,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `packages`
--

INSERT INTO `packages` (`id`, `title`, `slug`, `price`, `term`, `featured`, `is_trial`, `trial_days`, `status`, `recommended`, `icon`, `storage_limit`, `staff_limit`, `order_limit`, `categories_limit`, `subcategories_limit`, `items_limit`, `table_reservation_limit`, `language_limit`, `features`, `meta_keywords`, `meta_description`, `created_at`, `updated_at`) VALUES
(43, 'Basic', 'Basic', 29, 'month', '1', '1', 15, '1', '0', 'fas fa-battery-empty', 1020, 999999, 999999, 10, 10, 20, 999999, 5, '[\"Storage Limit\"]', NULL, NULL, '2024-01-16 15:31:11', '2024-01-28 17:45:54'),
(44, 'Standard', 'Standard', 49, 'month', '1', '1', 15, '1', '1', 'fas fa-battery-half', 2500, 10, 100, 30, 30, 150, 100, 10, '[\"Subdomain\",\"POS\",\"Coupon\",\"Storage Limit\",\"Live Orders\",\"Whatsapp Order & Notification\",\"QR Menu\",\"Table Reservation\",\"Table QR Builder\",\"Call Waiter\",\"Staffs\",\"Blog\",\"Custom Page\",\"Online Order\",\"On Table\",\"Pick Up\",\"Home Delivery\",\"Postal Code Based Delivery Charge\",\"PWA Installability\"]', NULL, NULL, '2024-01-16 15:34:33', '2024-01-28 17:53:46'),
(45, 'Business', 'Business', 99, 'month', '1', '1', 15, '1', '0', 'fas fa-battery-full', 999999, 999999, 999999, 999999, 999999, 999999, 999999, 999999, '[\"Custom Domain\",\"Subdomain\",\"POS\",\"Coupon\",\"Storage Limit\",\"Live Orders\",\"Whatsapp Order & Notification\",\"QR Menu\",\"Table Reservation\",\"Table QR Builder\",\"Call Waiter\",\"Staffs\",\"Blog\",\"Custom Page\",\"Online Order\",\"On Table\",\"Pick Up\",\"Home Delivery\",\"Postal Code Based Delivery Charge\",\"PWA Installability\"]', NULL, NULL, '2024-01-16 15:40:47', '2024-02-17 18:16:36'),
(46, 'Basic', 'Basic', 299, 'year', '1', '1', 15, '1', '0', 'fas fa-battery-empty', 1020, 999999, 999999, 10, 10, 20, 999999, 5, '[\"Storage Limit\"]', NULL, NULL, '2024-01-16 15:45:52', '2024-01-28 17:56:05'),
(47, 'Standard', 'Standard', 499, 'year', '1', '1', 15, '1', '1', 'fas fa-battery-half', 2500, 10, 100, 30, 30, 150, 100, 10, '[\"Subdomain\",\"POS\",\"Coupon\",\"Storage Limit\",\"Live Orders\",\"Whatsapp Order & Notification\",\"QR Menu\",\"Table Reservation\",\"Table QR Builder\",\"Call Waiter\",\"Staffs\",\"Blog\",\"Custom Page\",\"Online Order\",\"On Table\",\"Pick Up\",\"Home Delivery\",\"Postal Code Based Delivery Charge\",\"PWA Installability\"]', NULL, NULL, '2024-01-16 15:48:37', '2024-01-28 17:58:36'),
(48, 'Business', 'Business', 999, 'year', '1', '1', 15, '1', '0', 'fas fa-battery-full', 999999, 999999, 999999, 999999, 999999, 999999, 999999, 999999, '[\"Custom Domain\",\"Subdomain\",\"POS\",\"Coupon\",\"Amazon AWS s3\",\"Live Orders\",\"Whatsapp Order & Notification\",\"QR Menu\",\"Table Reservation\",\"Table QR Builder\",\"Call Waiter\",\"Staffs\",\"Blog\",\"Custom Page\",\"Online Order\",\"On Table\",\"Pick Up\",\"Home Delivery\",\"Postal Code Based Delivery Charge\",\"PWA Installability\"]', NULL, NULL, '2024-01-16 15:51:36', '2024-01-28 17:41:58'),
(49, 'Basic', 'Basic', 0, 'lifetime', '1', '1', 15, '1', '0', 'fas fa-battery-full', 1020, 999999, 999999, 10, 10, 20, 999999, 5, '[\"Storage Limit\"]', NULL, NULL, '2024-01-16 15:54:26', '2024-01-28 18:00:15'),
(50, 'Standard', 'Standard', 1499, 'lifetime', '1', '1', 15, '1', '1', 'fas fa-battery-full', 2500, 10, 100, 30, 30, 150, 100, 10, '[\"Subdomain\",\"POS\",\"Coupon\",\"Storage Limit\",\"Live Orders\",\"Whatsapp Order & Notification\",\"QR Menu\",\"Table Reservation\",\"Table QR Builder\",\"Call Waiter\",\"Staffs\",\"Blog\",\"Custom Page\",\"Online Order\",\"On Table\",\"Pick Up\",\"Home Delivery\",\"Postal Code Based Delivery Charge\",\"PWA Installability\"]', NULL, NULL, '2024-01-16 15:58:17', '2024-01-28 18:00:51'),
(51, 'Business', 'Business', 2999, 'lifetime', '1', '1', 15, '1', '0', 'fas fa-battery-full', 999999, 999999, 999999, 999999, 999999, 999999, 999999, 999999, '[\"Custom Domain\",\"Subdomain\",\"POS\",\"Coupon\",\"Storage Limit\",\"Live Orders\",\"Whatsapp Order & Notification\",\"QR Menu\",\"Table Reservation\",\"Table QR Builder\",\"Call Waiter\",\"Staffs\",\"Blog\",\"Custom Page\",\"Online Order\",\"On Table\",\"Pick Up\",\"Home Delivery\",\"Postal Code Based Delivery Charge\",\"PWA Installability\"]', NULL, NULL, '2024-01-16 16:07:05', '2024-10-12 20:27:43');

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `language_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subtitle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body` blob,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `serial_number` int(11) NOT NULL DEFAULT '0',
  `meta_keywords` text COLLATE utf8mb4_unicode_ci,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `language_id`, `name`, `title`, `subtitle`, `slug`, `body`, `status`, `serial_number`, `meta_keywords`, `meta_description`, `created_at`, `updated_at`) VALUES
(3, 176, 'Terms & Conditions', 'Terms & Conditions', 'Terms & Conditions', 'terms-&-conditions', 0x3c703e57656c636f6d6520746f20456f726465722e205468657365207465726d7320616e6420636f6e646974696f6e73206f75746c696e65207468652072756c657320616e6420726567756c6174696f6e7320666f722074686520757365206f66206f757220776562736974652e3c2f703e0d0a3c68333e312e20416363657074616e6365206f66205465726d733c2f68333e0d0a3c703e427920616363657373696e6720616e64207573696e67206f757220776562736974652c20796f7520616772656520746f20626520626f756e64206279207468657365207465726d7320616e6420636f6e646974696f6e732e20496620796f7520646f206e6f7420616772656520746f207468657365207465726d7320616e6420636f6e646974696f6e732c20796f752073686f756c64206e6f7420757365206f757220776562736974652e3c2f703e0d0a3c68333e322e20496e74656c6c65637475616c2050726f70657274793c2f68333e0d0a3c703e416c6c20696e74656c6c65637475616c2070726f70657274792072696768747320696e20746865207765627369746520616e642074686520636f6e74656e74207075626c6973686564206f6e2069742c20696e636c7564696e6720627574206e6f74206c696d6974656420746f20636f7079726967687420616e642074726164656d61726b732c20617265206f776e6564206279207573206f72206f7572206c6963656e736f72732e20596f75206d6179206e6f742075736520616e79206f66206f757220696e74656c6c65637475616c2070726f706572747920776974686f7574206f7572207072696f72207772697474656e20636f6e73656e742e3c2f703e0d0a3c68333e332e205573657220436f6e74656e743c2f68333e0d0a3c703e4279207375626d697474696e6720616e7920636f6e74656e7420746f206f757220776562736974652c20796f75206772616e74207573206120776f726c64776964652c206e6f6e2d6578636c75736976652c20726f79616c74792d66726565206c6963656e736520746f207573652c20726570726f647563652c20646973747269627574652c20616e6420646973706c6179207375636820636f6e74656e7420696e20616e79206d6564696120666f726d617420616e64207468726f75676820616e79206d65646961206368616e6e656c732e3c2f703e0d0a3c68333e342e20446973636c61696d6572206f662057617272616e746965733c2f68333e0d0a3c703e4f7572207765627369746520616e642074686520636f6e74656e74207075626c6973686564206f6e206974206172652070726f7669646564206f6e20616e202261732069732220616e642022617320617661696c61626c65222062617369732e20576520646f206e6f74206d616b6520616e792077617272616e746965732c2065787072657373206f7220696d706c6965642c20726567617264696e672074686520776562736974652c20696e636c7564696e6720627574206e6f74206c696d6974656420746f207468652061636375726163792c2072656c696162696c6974792c206f7220737569746162696c697479206f662074686520636f6e74656e7420666f7220616e7920706172746963756c617220707572706f73652e3c2f703e0d0a3c68333e352e204c696d69746174696f6e206f66204c696162696c6974793c2f68333e0d0a3c703e5765207368616c6c206e6f74206265206c6961626c6520666f7220616e792064616d616765732c20696e636c7564696e6720627574206e6f74206c696d6974656420746f206469726563742c20696e6469726563742c20696e636964656e74616c2c2070756e69746976652c20616e6420636f6e73657175656e7469616c2064616d616765732c2061726973696e672066726f6d2074686520757365206f7220696e6162696c69747920746f20757365206f75722077656273697465206f722074686520636f6e74656e74207075626c6973686564206f6e2069742e3c2f703e0d0a3c68333e362e204d6f64696669636174696f6e7320746f205465726d7320616e6420436f6e646974696f6e733c2f68333e0d0a3c703e576520726573657276652074686520726967687420746f206d6f64696679207468657365207465726d7320616e6420636f6e646974696f6e7320617420616e792074696d6520776974686f7574207072696f72206e6f746963652e20596f757220636f6e74696e75656420757365206f66206f7572207765627369746520616674657220616e792073756368206d6f64696669636174696f6e7320696e6469636174657320796f757220616363657074616e6365206f6620746865206d6f646966696564207465726d7320616e6420636f6e646974696f6e732e3c2f703e0d0a3c68333e372e20476f7665726e696e67204c617720616e64204a7572697364696374696f6e3c2f68333e0d0a3c703e5468657365207465726d7320616e6420636f6e646974696f6e73207368616c6c20626520676f7665726e656420627920616e6420636f6e73747275656420627920746865206c617773206f6620746865206a7572697364696374696f6e20696e207768696368207765206f7065726174652c20776974686f757420676976696e672065666665637420746f20616e79207072696e6369706c6573206f6620636f6e666c69637473206f66206c61772e20416e79206c6567616c2070726f63656564696e67732061726973696e67206f7574206f66206f7220696e20636f6e6e656374696f6e2077697468207468657365207465726d7320616e6420636f6e646974696f6e73207368616c6c2062652062726f7567687420736f6c656c7920696e2074686520636f75727473206c6f636174656420696e20746865206a7572697364696374696f6e20696e207768696368207765206f7065726174652e3c2f703e0d0a3c68333e382e205465726d696e6174696f6e3c2f68333e0d0a3c703e5765207368616c6c206e6f74206265206c6961626c6520666f7220616e792064616d616765732c20696e636c7564696e6720627574206e6f74206c696d6974656420746f206469726563742c20696e6469726563742c20696e636964656e74616c2c2070756e69746976652c20616e6420636f6e73657175656e7469616c2064616d616765732c2061726973696e672066726f6d2074686520757365206f7220696e6162696c69747920746f20757365206f75722077656273697465206f722074686520636f6e74656e74207075626c6973686564206f6e2069742e3c2f703e0d0a3c68333e392e20436f6e7461637420496e666f726d6174696f6e3c2f68333e0d0a3c703e496620796f75206861766520616e79207175657374696f6e73206f7220636f6d6d656e74732061626f7574207468657365207465726d7320616e6420636f6e646974696f6e732c20706c6561736520636f6e7461637420757320617420696e666f40656f726465722e636f6d2e3c2f703e, 1, 2, NULL, NULL, '2020-08-21 04:06:16', '2024-01-29 14:13:11'),
(4, 176, 'Privacy Policy', 'Privacy Policy', 'Privacy Policy', 'privacy-policy', 0x3c68333e312e20496e666f726d6174696f6e20436f6c6c656374696f6e3c2f68333e0d0a3c703e54686973205072697661637920506f6c69637920646573637269626573204f757220706f6c696369657320616e642070726f63656475726573206f6e2074686520636f6c6c656374696f6e2c2075736520616e6420646973636c6f73757265206f6620596f757220696e666f726d6174696f6e207768656e20596f752075736520746865205365727669636520616e642074656c6c7320596f752061626f757420596f757220707269766163792072696768747320616e6420686f7720746865206c61772070726f746563747320596f752e3c2f703e0d0a3c703e57652075736520596f757220506572736f6e616c206461746120746f2070726f7669646520616e6420696d70726f76652074686520536572766963652e204279207573696e672074686520536572766963652c20596f7520616772656520746f2074686520636f6c6c656374696f6e20616e6420757365206f6620696e666f726d6174696f6e20696e206163636f7264616e636520776974682074686973205072697661637920506f6c6963792ec2a03c2f703e0d0a3c68333e322e20506572736f6e616c20446174613c2f68333e0d0a3c703e5768696c65207573696e67204f757220536572766963652c205765206d61792061736b20596f7520746f2070726f766964652055732077697468206365727461696e20706572736f6e616c6c79206964656e7469666961626c6520696e666f726d6174696f6e20746861742063616e206265207573656420746f20636f6e74616374206f72206964656e7469667920596f752e20506572736f6e616c6c79206964656e7469666961626c6520696e666f726d6174696f6e206d617920696e636c7564652c20627574206973206e6f74206c696d6974656420746f3a3c2f703e0d0a3c703e456d61696c20616464726573733c2f703e0d0a3c703e4669727374206e616d6520616e64206c617374206e616d653c2f703e0d0a3c703e50686f6e65206e756d6265723c2f703e0d0a3c703e416464726573732c2053746174652c2050726f76696e63652c205a49502f506f7374616c20636f64652c20436974793c2f703e0d0a3c703e557361676520446174613c2f703e0d0a3c703ec2a03c2f703e0d0a3c68333e332e20557361676520446174613c2f68333e0d0a3c703e5573616765204461746120697320636f6c6c6563746564206175746f6d61746963616c6c79207768656e207573696e672074686520536572766963652e3c2f703e0d0a3c703e55736167652044617461206d617920696e636c75646520696e666f726d6174696f6e207375636820617320596f757220446576696365277320496e7465726e65742050726f746f636f6c20616464726573732028652e672e2049502061646472657373292c2062726f7773657220747970652c2062726f777365722076657273696f6e2c20746865207061676573206f66206f75722053657276696365207468617420596f752076697369742c207468652074696d6520616e642064617465206f6620596f75722076697369742c207468652074696d65207370656e74206f6e2074686f73652070616765732c20756e6971756520646576696365206964656e7469666965727320616e64206f7468657220646961676e6f7374696320646174612e3c2f703e0d0a3c703e5768656e20596f7520616363657373207468652053657276696365206279206f72207468726f7567682061206d6f62696c65206465766963652c205765206d617920636f6c6c656374206365727461696e20696e666f726d6174696f6e206175746f6d61746963616c6c792c20696e636c7564696e672c20627574206e6f74206c696d6974656420746f2c207468652074797065206f66206d6f62696c652064657669636520596f75207573652c20596f7572206d6f62696c652064657669636520756e697175652049442c207468652049502061646472657373206f6620596f7572206d6f62696c65206465766963652c20596f7572206d6f62696c65206f7065726174696e672073797374656d2c207468652074797065206f66206d6f62696c6520496e7465726e65742062726f7773657220596f75207573652c20756e6971756520646576696365206964656e7469666965727320616e64206f7468657220646961676e6f7374696320646174612e3c2f703e0d0a3c703e5765206d617920616c736f20636f6c6c65637420696e666f726d6174696f6e207468617420596f75722062726f777365722073656e6473207768656e6576657220596f75207669736974206f75722053657276696365206f72207768656e20596f7520616363657373207468652053657276696365206279206f72207468726f7567682061206d6f62696c65206465766963652e3c2f703e0d0a3c703ec2a03c2f703e0d0a3c68333e342e20526574656e74696f6e206f6620596f757220446174613c2f68333e0d0a3c703e54686520436f6d70616e792077696c6c2072657461696e20596f757220506572736f6e616c2044617461206f6e6c7920666f72206173206c6f6e67206173206973206e656365737361727920666f722074686520707572706f73657320736574206f757420696e2074686973205072697661637920506f6c6963792e2057652077696c6c2072657461696e20616e642075736520596f757220506572736f6e616c204461746120746f2074686520657874656e74206e656365737361727920746f20636f6d706c792077697468206f7572206c6567616c206f626c69676174696f6e732028666f72206578616d706c652c2069662077652061726520726571756972656420746f2072657461696e20796f7572206461746120746f20636f6d706c792077697468206170706c696361626c65206c617773292c207265736f6c76652064697370757465732c20616e6420656e666f726365206f7572206c6567616c2061677265656d656e747320616e6420706f6c69636965732e3c2f703e0d0a3c703e54686520436f6d70616e792077696c6c20616c736f2072657461696e205573616765204461746120666f7220696e7465726e616c20616e616c7973697320707572706f7365732e20557361676520446174612069732067656e6572616c6c792072657461696e656420666f7220612073686f7274657220706572696f64206f662074696d652c20657863657074207768656e20746869732064617461206973207573656420746f20737472656e677468656e20746865207365637572697479206f7220746f20696d70726f7665207468652066756e6374696f6e616c697479206f66204f757220536572766963652c206f7220576520617265206c6567616c6c79206f626c69676174656420746f2072657461696e2074686973206461746120666f72206c6f6e6765722074696d6520706572696f64732e3c2f703e0d0a3c703ec2a03c2f703e0d0a3c68333e362e205472616e73666572206f6620596f757220446174613c2f68333e0d0a3c703e596f757220696e666f726d6174696f6e2c20696e636c7564696e6720506572736f6e616c20446174612c2069732070726f6365737365642061742074686520436f6d70616e792773206f7065726174696e67206f66666963657320616e6420696e20616e79206f7468657220706c6163657320776865726520746865207061727469657320696e766f6c76656420696e207468652070726f63657373696e6720617265206c6f63617465642e204974206d65616e732074686174207468697320696e666f726d6174696f6e206d6179206265207472616e7366657272656420746f20e2809420616e64206d61696e7461696e6564206f6e20e2809420636f6d707574657273206c6f6361746564206f757473696465206f6620596f75722073746174652c2070726f76696e63652c20636f756e747279206f72206f7468657220676f7665726e6d656e74616c206a7572697364696374696f6e2077686572652074686520646174612070726f74656374696f6e206c617773206d617920646966666572207468616e2074686f73652066726f6d20596f7572206a7572697364696374696f6e2e3c2f703e0d0a3c703e596f757220636f6e73656e7420746f2074686973205072697661637920506f6c69637920666f6c6c6f77656420627920596f7572207375626d697373696f6e206f66207375636820696e666f726d6174696f6e20726570726573656e747320596f75722061677265656d656e7420746f2074686174207472616e736665722e3c2f703e0d0a3c703e54686520436f6d70616e792077696c6c2074616b6520616c6c20737465707320726561736f6e61626c79206e656365737361727920746f20656e73757265207468617420596f757220646174612069732074726561746564207365637572656c7920616e6420696e206163636f7264616e636520776974682074686973205072697661637920506f6c69637920616e64206e6f207472616e73666572206f6620596f757220506572736f6e616c20446174612077696c6c2074616b6520706c61636520746f20616e206f7267616e697a6174696f6e206f72206120636f756e74727920756e6c6573732074686572652061726520616465717561746520636f6e74726f6c7320696e20706c61636520696e636c7564696e6720746865207365637572697479206f6620596f7572206461746120616e64206f7468657220706572736f6e616c20696e666f726d6174696f6e2e3c2f703e0d0a3c703ec2a03c2f703e0d0a3c68333e372e2044656c65746520596f757220506572736f6e616c20446174613c2f68333e0d0a3c703e596f7520686176652074686520726967687420746f2064656c657465206f72207265717565737420746861742057652061737369737420696e2064656c6574696e672074686520506572736f6e616c20446174612074686174205765206861766520636f6c6c65637465642061626f757420596f752e3c2f703e0d0a3c703e4f75722053657276696365206d6179206769766520596f7520746865206162696c69747920746f2064656c657465206365727461696e20696e666f726d6174696f6e2061626f757420596f752066726f6d2077697468696e2074686520536572766963652e3c2f703e0d0a3c703e596f75206d6179207570646174652c20616d656e642c206f722064656c65746520596f757220696e666f726d6174696f6e20617420616e792074696d65206279207369676e696e6720696e20746f20596f7572204163636f756e742c20696620796f752068617665206f6e652c20616e64207669736974696e6720746865206163636f756e742073657474696e67732073656374696f6e207468617420616c6c6f777320796f7520746f206d616e61676520596f757220706572736f6e616c20696e666f726d6174696f6e2e20596f75206d617920616c736f20636f6e7461637420557320746f20726571756573742061636365737320746f2c20636f72726563742c206f722064656c65746520616e7920706572736f6e616c20696e666f726d6174696f6e207468617420596f7520686176652070726f766964656420746f2055732e3c2f703e0d0a3c703e506c65617365206e6f74652c20686f77657665722c2074686174205765206d6179206e65656420746f2072657461696e206365727461696e20696e666f726d6174696f6e207768656e20776520686176652061206c6567616c206f626c69676174696f6e206f72206c617766756c20626173697320746f20646f20736f2e3c2f703e0d0a3c703ec2a03c2f703e0d0a3c68333e382e20427573696e657373205472616e73616374696f6e733c2f68333e0d0a3c703e49662074686520436f6d70616e7920697320696e766f6c76656420696e2061206d65726765722c206163717569736974696f6e206f722061737365742073616c652c20596f757220506572736f6e616c2044617461206d6179206265207472616e736665727265642e2057652077696c6c2070726f76696465206e6f74696365206265666f726520596f757220506572736f6e616c2044617461206973207472616e7366657272656420616e64206265636f6d6573207375626a65637420746f206120646966666572656e74205072697661637920506f6c6963792e3c2f703e0d0a3c703ec2a03c2f703e0d0a3c68333e392e205365637572697479206f6620596f757220506572736f6e616c20446174613c2f68333e0d0a3c703e546865207365637572697479206f6620596f757220506572736f6e616c204461746120697320696d706f7274616e7420746f2055732c206275742072656d656d6265722074686174206e6f206d6574686f64206f66207472616e736d697373696f6e206f7665722074686520496e7465726e65742c206f72206d6574686f64206f6620656c656374726f6e69632073746f726167652069732031303025207365637572652e205768696c652057652073747269766520746f2075736520636f6d6d65726369616c6c792061636365707461626c65206d65616e7320746f2070726f7465637420596f757220506572736f6e616c20446174612c2057652063616e6e6f742067756172616e74656520697473206162736f6c7574652073656375726974792e3c2f703e0d0a3c703e4368696c6472656e277320507269766163793c2f703e0d0a3c703e4f7572205365727669636520646f6573206e6f74206164647265737320616e796f6e6520756e6465722074686520616765206f662031332e20576520646f206e6f74206b6e6f77696e676c7920636f6c6c65637420706572736f6e616c6c79206964656e7469666961626c6520696e666f726d6174696f6e2066726f6d20616e796f6e6520756e6465722074686520616765206f662031332e20496620596f7520617265206120706172656e74206f7220677561726469616e20616e6420596f7520617265206177617265207468617420596f7572206368696c64206861732070726f7669646564205573207769746820506572736f6e616c20446174612c20706c6561736520636f6e746163742055732e204966205765206265636f6d652061776172652074686174205765206861766520636f6c6c656374656420506572736f6e616c20446174612066726f6d20616e796f6e6520756e6465722074686520616765206f6620313320776974686f757420766572696669636174696f6e206f6620706172656e74616c20636f6e73656e742c2057652074616b6520737465707320746f2072656d6f7665207468617420696e666f726d6174696f6e2066726f6d204f757220736572766572732e3c2f703e, 1, 3, NULL, NULL, '2020-08-21 04:06:16', '2024-01-29 14:13:02'),
(9, 177, 'سياسة الخصوصية', 'سياسة الخصوصية', NULL, 'سياسة-الخصوصية', 0x3c68333e312e20496e666f726d6174696f6e20436f6c6c656374696f6e3c2f68333e0d0a3c703e54686973205072697661637920506f6c69637920646573637269626573204f757220706f6c696369657320616e642070726f63656475726573206f6e2074686520636f6c6c656374696f6e2c2075736520616e6420646973636c6f73757265206f6620596f757220696e666f726d6174696f6e207768656e20596f752075736520746865205365727669636520616e642074656c6c7320596f752061626f757420596f757220707269766163792072696768747320616e6420686f7720746865206c61772070726f746563747320596f752e3c2f703e0d0a3c703e57652075736520596f757220506572736f6e616c206461746120746f2070726f7669646520616e6420696d70726f76652074686520536572766963652e204279207573696e672074686520536572766963652c20596f7520616772656520746f2074686520636f6c6c656374696f6e20616e6420757365206f6620696e666f726d6174696f6e20696e206163636f7264616e636520776974682074686973205072697661637920506f6c6963792ec2a03c2f703e0d0a3c68333e322e20506572736f6e616c20446174613c2f68333e0d0a3c703e5768696c65207573696e67204f757220536572766963652c205765206d61792061736b20596f7520746f2070726f766964652055732077697468206365727461696e20706572736f6e616c6c79206964656e7469666961626c6520696e666f726d6174696f6e20746861742063616e206265207573656420746f20636f6e74616374206f72206964656e7469667920596f752e20506572736f6e616c6c79206964656e7469666961626c6520696e666f726d6174696f6e206d617920696e636c7564652c20627574206973206e6f74206c696d6974656420746f3a3c2f703e0d0a3c703e456d61696c20616464726573733c2f703e0d0a3c703e4669727374206e616d6520616e64206c617374206e616d653c2f703e0d0a3c703e50686f6e65206e756d6265723c2f703e0d0a3c703e416464726573732c2053746174652c2050726f76696e63652c205a49502f506f7374616c20636f64652c20436974793c2f703e0d0a3c703e557361676520446174613c2f703e0d0a3c703ec2a03c2f703e0d0a3c68333e332e20557361676520446174613c2f68333e0d0a3c703e5573616765204461746120697320636f6c6c6563746564206175746f6d61746963616c6c79207768656e207573696e672074686520536572766963652e3c2f703e0d0a3c703e55736167652044617461206d617920696e636c75646520696e666f726d6174696f6e207375636820617320596f757220446576696365277320496e7465726e65742050726f746f636f6c20616464726573732028652e672e2049502061646472657373292c2062726f7773657220747970652c2062726f777365722076657273696f6e2c20746865207061676573206f66206f75722053657276696365207468617420596f752076697369742c207468652074696d6520616e642064617465206f6620596f75722076697369742c207468652074696d65207370656e74206f6e2074686f73652070616765732c20756e6971756520646576696365206964656e7469666965727320616e64206f7468657220646961676e6f7374696320646174612e3c2f703e0d0a3c703e5768656e20596f7520616363657373207468652053657276696365206279206f72207468726f7567682061206d6f62696c65206465766963652c205765206d617920636f6c6c656374206365727461696e20696e666f726d6174696f6e206175746f6d61746963616c6c792c20696e636c7564696e672c20627574206e6f74206c696d6974656420746f2c207468652074797065206f66206d6f62696c652064657669636520596f75207573652c20596f7572206d6f62696c652064657669636520756e697175652049442c207468652049502061646472657373206f6620596f7572206d6f62696c65206465766963652c20596f7572206d6f62696c65206f7065726174696e672073797374656d2c207468652074797065206f66206d6f62696c6520496e7465726e65742062726f7773657220596f75207573652c20756e6971756520646576696365206964656e7469666965727320616e64206f7468657220646961676e6f7374696320646174612e3c2f703e0d0a3c703e5765206d617920616c736f20636f6c6c65637420696e666f726d6174696f6e207468617420596f75722062726f777365722073656e6473207768656e6576657220596f75207669736974206f75722053657276696365206f72207768656e20596f7520616363657373207468652053657276696365206279206f72207468726f7567682061206d6f62696c65206465766963652e3c2f703e0d0a3c703ec2a03c2f703e0d0a3c68333e342e20526574656e74696f6e206f6620596f757220446174613c2f68333e0d0a3c703e54686520436f6d70616e792077696c6c2072657461696e20596f757220506572736f6e616c2044617461206f6e6c7920666f72206173206c6f6e67206173206973206e656365737361727920666f722074686520707572706f73657320736574206f757420696e2074686973205072697661637920506f6c6963792e2057652077696c6c2072657461696e20616e642075736520596f757220506572736f6e616c204461746120746f2074686520657874656e74206e656365737361727920746f20636f6d706c792077697468206f7572206c6567616c206f626c69676174696f6e732028666f72206578616d706c652c2069662077652061726520726571756972656420746f2072657461696e20796f7572206461746120746f20636f6d706c792077697468206170706c696361626c65206c617773292c207265736f6c76652064697370757465732c20616e6420656e666f726365206f7572206c6567616c2061677265656d656e747320616e6420706f6c69636965732e3c2f703e0d0a3c703e54686520436f6d70616e792077696c6c20616c736f2072657461696e205573616765204461746120666f7220696e7465726e616c20616e616c7973697320707572706f7365732e20557361676520446174612069732067656e6572616c6c792072657461696e656420666f7220612073686f7274657220706572696f64206f662074696d652c20657863657074207768656e20746869732064617461206973207573656420746f20737472656e677468656e20746865207365637572697479206f7220746f20696d70726f7665207468652066756e6374696f6e616c697479206f66204f757220536572766963652c206f7220576520617265206c6567616c6c79206f626c69676174656420746f2072657461696e2074686973206461746120666f72206c6f6e6765722074696d6520706572696f64732e3c2f703e0d0a3c703ec2a03c2f703e0d0a3c68333e362e205472616e73666572206f6620596f757220446174613c2f68333e0d0a3c703e596f757220696e666f726d6174696f6e2c20696e636c7564696e6720506572736f6e616c20446174612c2069732070726f6365737365642061742074686520436f6d70616e792773206f7065726174696e67206f66666963657320616e6420696e20616e79206f7468657220706c6163657320776865726520746865207061727469657320696e766f6c76656420696e207468652070726f63657373696e6720617265206c6f63617465642e204974206d65616e732074686174207468697320696e666f726d6174696f6e206d6179206265207472616e7366657272656420746f20e2809420616e64206d61696e7461696e6564206f6e20e2809420636f6d707574657273206c6f6361746564206f757473696465206f6620596f75722073746174652c2070726f76696e63652c20636f756e747279206f72206f7468657220676f7665726e6d656e74616c206a7572697364696374696f6e2077686572652074686520646174612070726f74656374696f6e206c617773206d617920646966666572207468616e2074686f73652066726f6d20596f7572206a7572697364696374696f6e2e3c2f703e0d0a3c703e596f757220636f6e73656e7420746f2074686973205072697661637920506f6c69637920666f6c6c6f77656420627920596f7572207375626d697373696f6e206f66207375636820696e666f726d6174696f6e20726570726573656e747320596f75722061677265656d656e7420746f2074686174207472616e736665722e3c2f703e0d0a3c703e54686520436f6d70616e792077696c6c2074616b6520616c6c20737465707320726561736f6e61626c79206e656365737361727920746f20656e73757265207468617420596f757220646174612069732074726561746564207365637572656c7920616e6420696e206163636f7264616e636520776974682074686973205072697661637920506f6c69637920616e64206e6f207472616e73666572206f6620596f757220506572736f6e616c20446174612077696c6c2074616b6520706c61636520746f20616e206f7267616e697a6174696f6e206f72206120636f756e74727920756e6c6573732074686572652061726520616465717561746520636f6e74726f6c7320696e20706c61636520696e636c7564696e6720746865207365637572697479206f6620596f7572206461746120616e64206f7468657220706572736f6e616c20696e666f726d6174696f6e2e3c2f703e0d0a3c703ec2a03c2f703e0d0a3c68333e372e2044656c65746520596f757220506572736f6e616c20446174613c2f68333e0d0a3c703e596f7520686176652074686520726967687420746f2064656c657465206f72207265717565737420746861742057652061737369737420696e2064656c6574696e672074686520506572736f6e616c20446174612074686174205765206861766520636f6c6c65637465642061626f757420596f752e3c2f703e0d0a3c703e4f75722053657276696365206d6179206769766520596f7520746865206162696c69747920746f2064656c657465206365727461696e20696e666f726d6174696f6e2061626f757420596f752066726f6d2077697468696e2074686520536572766963652e3c2f703e0d0a3c703e596f75206d6179207570646174652c20616d656e642c206f722064656c65746520596f757220696e666f726d6174696f6e20617420616e792074696d65206279207369676e696e6720696e20746f20596f7572204163636f756e742c20696620796f752068617665206f6e652c20616e64207669736974696e6720746865206163636f756e742073657474696e67732073656374696f6e207468617420616c6c6f777320796f7520746f206d616e61676520596f757220706572736f6e616c20696e666f726d6174696f6e2e20596f75206d617920616c736f20636f6e7461637420557320746f20726571756573742061636365737320746f2c20636f72726563742c206f722064656c65746520616e7920706572736f6e616c20696e666f726d6174696f6e207468617420596f7520686176652070726f766964656420746f2055732e3c2f703e0d0a3c703e506c65617365206e6f74652c20686f77657665722c2074686174205765206d6179206e65656420746f2072657461696e206365727461696e20696e666f726d6174696f6e207768656e20776520686176652061206c6567616c206f626c69676174696f6e206f72206c617766756c20626173697320746f20646f20736f2e3c2f703e0d0a3c703ec2a03c2f703e0d0a3c68333e382e20427573696e657373205472616e73616374696f6e733c2f68333e0d0a3c703e49662074686520436f6d70616e7920697320696e766f6c76656420696e2061206d65726765722c206163717569736974696f6e206f722061737365742073616c652c20596f757220506572736f6e616c2044617461206d6179206265207472616e736665727265642e2057652077696c6c2070726f76696465206e6f74696365206265666f726520596f757220506572736f6e616c2044617461206973207472616e7366657272656420616e64206265636f6d6573207375626a65637420746f206120646966666572656e74205072697661637920506f6c6963792e3c2f703e0d0a3c703ec2a03c2f703e0d0a3c68333e392e205365637572697479206f6620596f757220506572736f6e616c20446174613c2f68333e0d0a3c703e546865207365637572697479206f6620596f757220506572736f6e616c204461746120697320696d706f7274616e7420746f2055732c206275742072656d656d6265722074686174206e6f206d6574686f64206f66207472616e736d697373696f6e206f7665722074686520496e7465726e65742c206f72206d6574686f64206f6620656c656374726f6e69632073746f726167652069732031303025207365637572652e205768696c652057652073747269766520746f2075736520636f6d6d65726369616c6c792061636365707461626c65206d65616e7320746f2070726f7465637420596f757220506572736f6e616c20446174612c2057652063616e6e6f742067756172616e74656520697473206162736f6c7574652073656375726974792e3c2f703e0d0a3c703e4368696c6472656e277320507269766163793c2f703e0d0a3c703e4f7572205365727669636520646f6573206e6f74206164647265737320616e796f6e6520756e6465722074686520616765206f662031332e20576520646f206e6f74206b6e6f77696e676c7920636f6c6c65637420706572736f6e616c6c79206964656e7469666961626c6520696e666f726d6174696f6e2066726f6d20616e796f6e6520756e6465722074686520616765206f662031332e20496620596f7520617265206120706172656e74206f7220677561726469616e20616e6420596f7520617265206177617265207468617420596f7572206368696c64206861732070726f7669646564205573207769746820506572736f6e616c20446174612c20706c6561736520636f6e746163742055732e204966205765206265636f6d652061776172652074686174205765206861766520636f6c6c656374656420506572736f6e616c20446174612066726f6d20616e796f6e6520756e6465722074686520616765206f6620313320776974686f757420766572696669636174696f6e206f6620706172656e74616c20636f6e73656e742c2057652074616b6520737465707320746f2072656d6f7665207468617420696e666f726d6174696f6e2066726f6d204f757220736572766572732e3c2f703e, 1, 0, NULL, NULL, '2024-01-29 18:16:33', '2024-01-29 18:16:33'),
(10, 177, 'البنود و الظروف', 'البنود و الظروف', NULL, 'البنود-و-الظروف', 0x3c703e57656c636f6d6520746f20456f726465722e205468657365207465726d7320616e6420636f6e646974696f6e73206f75746c696e65207468652072756c657320616e6420726567756c6174696f6e7320666f722074686520757365206f66206f757220776562736974652e3c2f703e0d0a3c68333e312e20416363657074616e6365206f66205465726d733c2f68333e0d0a3c703e427920616363657373696e6720616e64207573696e67206f757220776562736974652c20796f7520616772656520746f20626520626f756e64206279207468657365207465726d7320616e6420636f6e646974696f6e732e20496620796f7520646f206e6f7420616772656520746f207468657365207465726d7320616e6420636f6e646974696f6e732c20796f752073686f756c64206e6f7420757365206f757220776562736974652e3c2f703e0d0a3c68333e322e20496e74656c6c65637475616c2050726f70657274793c2f68333e0d0a3c703e416c6c20696e74656c6c65637475616c2070726f70657274792072696768747320696e20746865207765627369746520616e642074686520636f6e74656e74207075626c6973686564206f6e2069742c20696e636c7564696e6720627574206e6f74206c696d6974656420746f20636f7079726967687420616e642074726164656d61726b732c20617265206f776e6564206279207573206f72206f7572206c6963656e736f72732e20596f75206d6179206e6f742075736520616e79206f66206f757220696e74656c6c65637475616c2070726f706572747920776974686f7574206f7572207072696f72207772697474656e20636f6e73656e742e3c2f703e0d0a3c68333e332e205573657220436f6e74656e743c2f68333e0d0a3c703e4279207375626d697474696e6720616e7920636f6e74656e7420746f206f757220776562736974652c20796f75206772616e74207573206120776f726c64776964652c206e6f6e2d6578636c75736976652c20726f79616c74792d66726565206c6963656e736520746f207573652c20726570726f647563652c20646973747269627574652c20616e6420646973706c6179207375636820636f6e74656e7420696e20616e79206d6564696120666f726d617420616e64207468726f75676820616e79206d65646961206368616e6e656c732e3c2f703e0d0a3c68333e342e20446973636c61696d6572206f662057617272616e746965733c2f68333e0d0a3c703e4f7572207765627369746520616e642074686520636f6e74656e74207075626c6973686564206f6e206974206172652070726f7669646564206f6e20616e202261732069732220616e642022617320617661696c61626c65222062617369732e20576520646f206e6f74206d616b6520616e792077617272616e746965732c2065787072657373206f7220696d706c6965642c20726567617264696e672074686520776562736974652c20696e636c7564696e6720627574206e6f74206c696d6974656420746f207468652061636375726163792c2072656c696162696c6974792c206f7220737569746162696c697479206f662074686520636f6e74656e7420666f7220616e7920706172746963756c617220707572706f73652e3c2f703e0d0a3c68333e352e204c696d69746174696f6e206f66204c696162696c6974793c2f68333e0d0a3c703e5765207368616c6c206e6f74206265206c6961626c6520666f7220616e792064616d616765732c20696e636c7564696e6720627574206e6f74206c696d6974656420746f206469726563742c20696e6469726563742c20696e636964656e74616c2c2070756e69746976652c20616e6420636f6e73657175656e7469616c2064616d616765732c2061726973696e672066726f6d2074686520757365206f7220696e6162696c69747920746f20757365206f75722077656273697465206f722074686520636f6e74656e74207075626c6973686564206f6e2069742e3c2f703e0d0a3c68333e362e204d6f64696669636174696f6e7320746f205465726d7320616e6420436f6e646974696f6e733c2f68333e0d0a3c703e576520726573657276652074686520726967687420746f206d6f64696679207468657365207465726d7320616e6420636f6e646974696f6e7320617420616e792074696d6520776974686f7574207072696f72206e6f746963652e20596f757220636f6e74696e75656420757365206f66206f7572207765627369746520616674657220616e792073756368206d6f64696669636174696f6e7320696e6469636174657320796f757220616363657074616e6365206f6620746865206d6f646966696564207465726d7320616e6420636f6e646974696f6e732e3c2f703e0d0a3c68333e372e20476f7665726e696e67204c617720616e64204a7572697364696374696f6e3c2f68333e0d0a3c703e5468657365207465726d7320616e6420636f6e646974696f6e73207368616c6c20626520676f7665726e656420627920616e6420636f6e73747275656420627920746865206c617773206f6620746865206a7572697364696374696f6e20696e207768696368207765206f7065726174652c20776974686f757420676976696e672065666665637420746f20616e79207072696e6369706c6573206f6620636f6e666c69637473206f66206c61772e20416e79206c6567616c2070726f63656564696e67732061726973696e67206f7574206f66206f7220696e20636f6e6e656374696f6e2077697468207468657365207465726d7320616e6420636f6e646974696f6e73207368616c6c2062652062726f7567687420736f6c656c7920696e2074686520636f75727473206c6f636174656420696e20746865206a7572697364696374696f6e20696e207768696368207765206f7065726174652e3c2f703e0d0a3c68333e382e205465726d696e6174696f6e3c2f68333e0d0a3c703e5765207368616c6c206e6f74206265206c6961626c6520666f7220616e792064616d616765732c20696e636c7564696e6720627574206e6f74206c696d6974656420746f206469726563742c20696e6469726563742c20696e636964656e74616c2c2070756e69746976652c20616e6420636f6e73657175656e7469616c2064616d616765732c2061726973696e672066726f6d2074686520757365206f7220696e6162696c69747920746f20757365206f75722077656273697465206f722074686520636f6e74656e74207075626c6973686564206f6e2069742e3c2f703e0d0a3c68333e392e20436f6e7461637420496e666f726d6174696f6e3c2f68333e0d0a3c703e496620796f75206861766520616e79207175657374696f6e73206f7220636f6d6d656e74732061626f7574207468657365207465726d7320616e6420636f6e646974696f6e732c20706c6561736520636f6e7461637420757320617420696e666f40656f726465722e636f6d2e3c2f703e, 1, 0, NULL, NULL, '2024-01-29 18:17:12', '2024-01-29 18:17:12');

-- --------------------------------------------------------

--
-- Table structure for table `partners`
--

CREATE TABLE `partners` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `language_id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `serial_number` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `partners`
--

INSERT INTO `partners` (`id`, `language_id`, `image`, `url`, `serial_number`, `created_at`, `updated_at`) VALUES
(1, 176, 'fbb202d3560182f7b98d4becc1aede873b42e93b.png', 'https://www.example.com/', 1, NULL, NULL),
(2, 176, 'dffafdc83578824d0e6cefa74ab9fb8d437e094f.png', 'https://www.example.com/', 2, NULL, NULL),
(3, 176, '7a221033f6011dc26aa0bb04daa0a2dde352e61c.png', 'https://www.example.com/', 3, NULL, NULL),
(4, 176, 'c11de403e1cbe44e47047c76459c41d2975818b1.png', 'https://www.example.com/', 4, NULL, NULL),
(5, 177, 'a688e6dd1610a00b5fc39dc154bfe84cdfd80475.png', 'https://www.example.com/', 1, NULL, NULL),
(6, 177, '190867fb753b407545496665ca07dbf93d69a3bd.png', 'https://www.example.com/', 2, NULL, NULL),
(7, 177, '3c08abe177524050136f6883f9fd9ab545a7b0c6.png', 'https://www.example.com/', 3, NULL, NULL),
(8, 177, '812621bbe04bb0b3a163552f85566f7e58a46297.png', 'https://www.example.com/', 4, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('imranyeasin75@gmail.com', '$2y$10$z/D6rNrJYGxTr82pjS9bk.asOCeNNL13WwO9K/1ADpxSFCkJ.lZDS', '2023-06-08 05:35:13');

-- --------------------------------------------------------

--
-- Table structure for table `payment_gateways`
--

CREATE TABLE `payment_gateways` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `subtitle` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `details` text,
  `name` varchar(100) DEFAULT NULL,
  `type` varchar(20) NOT NULL DEFAULT 'manual',
  `information` mediumtext,
  `keyword` varchar(255) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `payment_gateways`
--

INSERT INTO `payment_gateways` (`id`, `subtitle`, `title`, `details`, `name`, `type`, `information`, `keyword`, `status`) VALUES
(6, NULL, NULL, NULL, 'Flutterwave', 'automatic', '{\"public_key\":null,\"secret_key\":null,\"text\":\"Pay via your Flutterwave account.\"}', 'flutterwave', 0),
(9, NULL, NULL, NULL, 'Razorpay', 'automatic', '{\"key\":null,\"secret\":null,\"text\":\"Pay via your Razorpay account.\"}', 'razorpay', 0),
(11, NULL, NULL, NULL, 'Paytm', 'automatic', '{\"environment\":\"local\",\"merchant\":null,\"secret\":null,\"website\":null,\"industry\":null,\"text\":\"Pay via your paytm account.\"}', 'paytm', 1),
(12, NULL, NULL, NULL, 'Paystack', 'automatic', '{\"key\":null,\"email\":null,\"text\":\"Pay via your Paystack account.\"}', 'paystack', 1),
(13, NULL, NULL, NULL, 'Instamojo', 'automatic', '{\"key\":null,\"token\":null,\"sandbox_check\":\"1\",\"text\":\"Pay via your Instamojo account.\"}', 'instamojo', 1),
(14, NULL, NULL, NULL, 'Stripe', 'automatic', '{\"key\":null,\"secret\":null,\"text\":\"Pay via your Credit account.\"}', 'stripe', 0),
(15, NULL, NULL, NULL, 'Paypal', 'automatic', '{\"client_id\":null,\"client_secret\":null,\"sandbox_check\":\"1\",\"text\":\"Pay via your PayPal account.\"}', 'paypal', 1),
(17, NULL, NULL, NULL, 'Mollie Payment', 'automatic', '{\"key\":null,\"text\":\"Pay via your Mollie Payment account.\"}', 'mollie', 1),
(19, NULL, NULL, NULL, 'Mercado Pago', 'automatic', '{\"token\":null,\"sandbox_check\":\"0\",\"text\":\"Pay via your Mercado Pago account.\"}', 'mercadopago', 0),
(20, NULL, NULL, NULL, 'Authorize.net', 'automatic', '{\"login_id\":null,\"transaction_key\":null,\"public_key\":null,\"sandbox_check\":\"1\",\"text\":\"Pay via your Authorize.net account.\"}', 'authorize.net', 1),
(21, NULL, NULL, NULL, 'PhonePe', 'automatic', '{\"merchant_id\":null,\"salt_key\":null,\"salt_index\":null,\"sandbox_check\":\"1\",\"text\":\"Pay via your PhonePe account.\"}', 'phonepe', 1),
(22, NULL, NULL, NULL, 'Perfect Money', 'automatic', '{\"perfect_money_wallet_id\":null}', 'perfect_money', 1),
(23, NULL, NULL, NULL, 'Xendit', 'automatic', '{\"secret_key\":null}', 'xendit', 1),
(24, NULL, NULL, NULL, 'Myfatoorah', 'automatic', '{\"token\":null,\"sandbox_status\":\"1\"}', 'myfatoorah', 1),
(25, NULL, NULL, NULL, 'Yoco', 'automatic', '{\"secret_key\":null}', 'yoco', 1),
(26, NULL, NULL, NULL, 'Toyyibpay', 'automatic', '{\"sandbox_status\":null,\"secret_key\":null,\"category_code\":null}', 'toyyibpay', 1),
(27, NULL, NULL, NULL, 'Paytabs', 'automatic', '{\"profile_id\":null,\"server_key\":null,\"api_endpoint\":null,\"country\":null}', 'paytabs', 1),
(28, NULL, NULL, NULL, 'Iyzico', 'automatic', '{\"api_key\":null,\"secret_key\":null,\"sandbox_status\":null}', 'iyzico', 1),
(29, NULL, NULL, NULL, 'Midtrans', 'automatic', '{\"is_production\":\"0\",\"server_key\":null}', 'midtrans', 0);

-- --------------------------------------------------------

--
-- Table structure for table `pcategories`
--

CREATE TABLE `pcategories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `language_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `is_feature` int(11) DEFAULT NULL,
  `tax` decimal(11,2) NOT NULL DEFAULT '0.00',
  `indx` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pcategories`
--

INSERT INTO `pcategories` (`id`, `language_id`, `user_id`, `name`, `slug`, `image`, `status`, `is_feature`, `tax`, `indx`, `created_at`, `updated_at`) VALUES
(46, 61, 2, 'Beverage', 'Beverage', '83a820fa3478e2d76f83f2e9f3939e49881e34fb.png', 1, 1, '0.00', '65a78712d6861', '2024-01-16 18:51:46', '2024-02-24 14:44:21'),
(47, 62, 2, 'مشروب', 'مشروب', '83a820fa3478e2d76f83f2e9f3939e49881e34fb.png', 1, 1, '0.00', '65a78712d6861', '2024-01-16 18:51:46', '2024-02-24 14:44:21'),
(48, 61, 2, 'Dessert', 'Dessert', '900e979c369d2395dd7cd7e5e41269818696d3ac.png', 1, 1, '0.00', '65a7873a6e385', '2024-01-16 18:52:26', '2024-02-24 14:44:01'),
(49, 62, 2, 'الحلوى', 'الحلوى', '900e979c369d2395dd7cd7e5e41269818696d3ac.png', 1, 1, '0.00', '65a7873a6e385', '2024-01-16 18:52:26', '2024-02-24 14:44:01'),
(50, 61, 2, 'Burger', 'Burger', '7c5183d4672d4c6ba4691c929db3726a72cdad05.png', 1, 1, '0.00', '65a78754ceafb', '2024-01-16 18:52:52', '2024-01-31 17:56:08'),
(51, 62, 2, 'برجر', 'برجر', '7c5183d4672d4c6ba4691c929db3726a72cdad05.png', 1, 1, '0.00', '65a78754ceafb', '2024-01-16 18:52:52', '2024-01-31 17:56:08'),
(52, 61, 2, 'Set Menu', 'Set-Menu', '631ee0c97acce34d8331d1b8da562713028264a8.png', 1, 0, '0.00', '65a787713e662', '2024-01-16 18:53:21', '2024-02-14 17:36:28'),
(53, 62, 2, 'قائمة الضبط', 'قائمة-الضبط', '631ee0c97acce34d8331d1b8da562713028264a8.png', 1, 0, '0.00', '65a787713e662', '2024-01-16 18:53:21', '2024-02-14 17:36:28'),
(70, 77, 14, 'Set Menu', 'Set-Menu', 'ccfd2d2f1494decb1f860cd95defbe41f1266f0e.png', 1, 1, '0.00', '65d99a6e3d57c', '2024-02-23 18:27:42', '2024-02-23 19:06:26'),
(71, 77, 14, 'Dessert', 'Dessert', '05891715931c4982d796dbdcd5543f15caa3aa1f.png', 1, 1, '0.00', '65d99a8baa4fa', '2024-02-23 18:28:11', '2024-02-23 19:06:11'),
(72, 77, 14, 'Burger', 'Burger', '762fdd4b57419070eea6d9187870dc79fd5ae296.png', 1, 1, '0.00', '65d99aa050d31', '2024-02-23 18:28:32', '2024-02-23 19:05:53'),
(73, 77, 14, 'Beverage', 'Beverage', 'ac1421643989a777ded790229c4dd322780f8665.png', 1, 1, '0.00', '65d99ab3be502', '2024-02-23 18:28:51', '2024-02-23 19:05:36'),
(75, 78, 15, 'Pizza', 'Pizza', 'eb24e5910eab16e259bc2a7e52cfd71acdfa46da.png', 1, 1, '0.00', '65d9a3be3ac8a', '2024-02-23 19:07:26', '2024-02-23 19:33:00'),
(76, 78, 15, 'Italian Pizza', 'Italian-Pizza', 'e9f4a8fb1fa69fdec24c2e76bd550d88f1da2534.png', 1, 1, '0.00', '65d9a3cd8a2f2', '2024-02-23 19:07:41', '2024-02-23 19:33:29'),
(77, 78, 15, 'Slide Pizza', 'Slide-Pizza', 'b5da8e35d193bf46e16c795d58a0b8d7ea8f77a9.png', 1, 1, '0.00', '65d9a3da27721', '2024-02-23 19:07:54', '2024-02-23 19:33:47'),
(78, 78, 15, 'Mix Pizza', 'Mix-Pizza', 'ae6b23358e57103c6a7f4fbd97c333fa330a945b.png', 1, 1, '0.00', '65d9a3ea5cfa6', '2024-02-23 19:08:10', '2024-02-23 19:34:05'),
(79, 79, 16, 'Coffee', 'Coffee', '886bce2aae619b4bd6dd5ad71f1e590aa192c588.png', 1, 1, '0.00', '65d9a44fafee3', '2024-02-23 19:09:51', '2024-02-23 19:35:03'),
(80, 79, 16, 'Mocha', 'Mocha', '410fad63a31642bb07ae371d9e31ccdd88434d7e.png', 1, 1, '0.00', '65d9a460d30d4', '2024-02-23 19:10:08', '2024-02-23 19:35:14'),
(81, 79, 16, 'Latte', 'Latte', 'ae3dc44716869fa467459ed8568494c37344a9dc.png', 1, 1, '0.00', '65d9a46d669fe', '2024-02-23 19:10:21', '2024-02-23 19:35:24'),
(82, 79, 16, 'Doppio', 'Doppio', 'ed8082c6ecbb440d90adacf1ae7f43b4ff07e403.png', 1, 1, '0.00', '65d9a47bb64c5', '2024-02-23 19:10:35', '2024-02-23 19:35:36'),
(83, 80, 17, 'Diuretics', 'Diuretics', '84f4910b77d4b06613d7a9d6c572a8077b4412a7.png', 1, 1, '0.00', '65d9a4a79acb7', '2024-02-23 19:11:19', '2024-02-24 15:01:59'),
(84, 80, 17, 'Corticosteroids', 'Corticosteroids', 'e68f21119974c6efbbf11f23ca6665d5917cd536.png', 1, 1, '0.00', '65d9a4b5520f1', '2024-02-23 19:11:33', '2024-02-24 15:01:48'),
(85, 80, 17, 'Antibiotics', 'Antibiotics', 'c8971bb210a7c72fc9103c3d76fe19b5d19ded35.png', 1, 1, '0.00', '65d9a4c16e35b', '2024-02-23 19:11:45', '2024-02-24 15:01:26'),
(86, 80, 17, 'Analgesics', 'Analgesics', '42293f3ac0361f6dce8a8db65716bc0273a845cf.png', 1, 1, '0.00', '65d9a4d06712e', '2024-02-23 19:12:00', '2024-02-24 15:01:14'),
(87, 81, 18, 'Vegetables', 'Vegetables', 'f4bfc6855a93b190eadc93ef3eaa29a748b968e3.png', 1, 1, '0.00', '65d9a4f098459', '2024-02-23 19:12:32', '2024-02-23 20:56:11'),
(88, 81, 18, 'Fruits', 'Fruits', '432d9ebf1f23327773e3bc52029eb6964b702e52.png', 1, 1, '0.00', '65d9a4fbd906b', '2024-02-23 19:12:43', '2024-02-23 20:56:27'),
(89, 81, 18, 'Dessert', 'Dessert', '04523920c19e742b5f45d69a323247953ebf0092.png', 1, 1, '0.00', '65d9a5074f0f6', '2024-02-23 19:12:55', '2024-02-23 19:13:09'),
(90, 81, 18, 'Beverage', 'Beverage', '51a597d0696f8a1b09db12b6e7dcbc54b81e4d6e.png', 1, 1, '0.00', '65d9a5114066f', '2024-02-23 19:13:05', '2024-02-23 19:13:07'),
(91, 82, 19, 'Ice Cream', 'Ice-Cream', '559d65eb56472925dffbf2e098e9bfe64472ce8b.png', 1, 1, '0.00', '65d9a53bd37c5', '2024-02-23 19:13:47', '2024-02-23 21:37:10'),
(92, 82, 19, 'Juice', 'Juice', '5a4905c9fe524cf4b25b7f7e642131d6d3effc22.png', 1, 1, '0.00', '65d9a548669c2', '2024-02-23 19:14:00', '2024-02-23 21:29:18'),
(93, 82, 19, 'Shake', 'Shake', 'f06ddda43848d4a50ebb7145c6f698250229ebf2.png', 1, 1, '0.00', '65d9a5537ca56', '2024-02-23 19:14:11', '2024-02-23 21:37:18'),
(94, 82, 19, 'Beverage', 'Beverage', '602a78b5d8fdef091a08f28e0636d54361391975.png', 1, 1, '0.00', '65d9a55f42529', '2024-02-23 19:14:23', '2024-02-23 19:14:25');

-- --------------------------------------------------------

--
-- Table structure for table `popups`
--

CREATE TABLE `popups` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `language_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `background_image` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `background_color` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `background_opacity` decimal(8,2) NOT NULL DEFAULT '1.00',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text` text COLLATE utf8mb4_unicode_ci,
  `button_text` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `button_url` text COLLATE utf8mb4_unicode_ci,
  `button_color` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `end_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `end_time` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delay` int(11) NOT NULL DEFAULT '1000' COMMENT 'in milisconds',
  `serial_number` int(11) NOT NULL DEFAULT '0',
  `type` tinyint(4) NOT NULL DEFAULT '1',
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1 - active, 0 - deactive',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `popups`
--

INSERT INTO `popups` (`id`, `language_id`, `name`, `image`, `background_image`, `background_color`, `background_opacity`, `title`, `text`, `button_text`, `button_url`, `button_color`, `end_date`, `end_time`, `delay`, `serial_number`, `type`, `status`, `created_at`, `updated_at`) VALUES
(33, 177, 'Black Friday', '606d41536fa81.jpg', NULL, NULL, '1.00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1500, 1, 1, 0, '2021-04-06 19:21:23', '2021-04-07 22:06:58'),
(34, 177, 'Monthend Sale', NULL, '606d41d50dd28.jpg', '451D53', '0.80', 'ENJOY 10% OFF', 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua.', 'Shop Now', 'http://example.com/', '451D53', NULL, NULL, 2000, 2, 2, 0, '2021-04-06 19:23:33', '2021-04-07 22:06:21'),
(35, 177, 'Summer Sale', NULL, '606d42e66ee81.jpg', 'FF2865', '0.70', 'Newsletter', 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua.', 'Subscribe', NULL, 'FF2865', NULL, NULL, 2000, 3, 3, 0, '2021-04-06 19:28:06', '2021-04-07 22:06:18'),
(36, 177, 'Winter Offer', '606d43711d16a.jpg', NULL, NULL, '1.00', 'Get 10% off your first order', 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt', 'Shop Now', 'http://example.com/', 'FF2865', NULL, NULL, 1500, 4, 4, 0, '2021-04-06 19:30:25', '2021-04-25 04:18:04'),
(37, 177, 'Winter Sale', '606d43dfad35b.jpg', NULL, NULL, '1.00', 'Get 10% off your first order', 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt', 'Subscribe', NULL, 'F8960D', NULL, NULL, 2000, 6, 5, 0, '2021-04-06 19:32:15', '2021-04-07 22:06:09'),
(38, 177, 'New Arrivals Saleu', NULL, '606d55f99176d.jpg', NULL, '1.00', 'Hurry, Sale Ends This Friday', 'This is your last chance to save 30%', 'Yes,I Want to Save 30%', 'http://example.com/', '29A19C', '03/14/2022', '3:00 AM', 1500, 7, 6, 0, '2021-04-06 19:34:08', '2021-05-23 01:00:12'),
(39, 177, 'Flash Sale', '606d5691a51bf.jpg', NULL, '930077', '1.00', 'Hurry, Sale Ends This Friday', 'This is your last chance to save 30%', 'Yes,I Want to Save 30%', 'http://example.com/', 'FA00CA', '04/09/2022', '10:00 AM', 1500, 8, 7, 0, '2021-04-06 19:36:04', '2021-04-07 22:06:03'),
(42, 176, 'Popup', NULL, '3ccd0ef03842cc5b184e26384219733a22e3eb93.png', '451D53', '0.80', 'Many desktop publishing', 't has a more-or-less normal distribution of letters, as opposed to using', 'Submit', NULL, '451D53', NULL, NULL, 2000, 1, 3, 0, '2023-12-04 22:59:09', '2024-01-29 17:44:04'),
(43, 176, 'Hello', NULL, '997b8ab9fcef69b1ad6f16ee7a84216aab8d3912.png', '451D53', '0.50', 'Packages and web page editors now', 't has a more-or-less normal distribution of letters, as opposed to using', 'show more', '/pricing', '451D53', NULL, NULL, 2000, 2, 2, 0, '2024-01-29 14:37:28', '2024-01-29 17:44:12');

-- --------------------------------------------------------

--
-- Table structure for table `postal_codes`
--

CREATE TABLE `postal_codes` (
  `id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `postcode` varchar(50) NOT NULL,
  `charge` decimal(11,2) NOT NULL DEFAULT '0.00',
  `free_delivery_amount` decimal(11,2) DEFAULT NULL,
  `serial_number` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `postal_codes`
--

INSERT INTO `postal_codes` (`id`, `language_id`, `user_id`, `title`, `postcode`, `charge`, `free_delivery_amount`, `serial_number`, `created_at`, `updated_at`) VALUES
(3, 61, 2, 'Bynum', '36253', '2.00', '30.00', 1, '2024-01-17 17:36:57', '2024-01-17 17:36:57'),
(4, 61, 2, 'Williamsburg', '23185', '2.50', NULL, 4, '2024-01-17 17:37:23', '2024-01-17 17:37:23'),
(5, 61, 2, 'Washington', '20036', '0.00', NULL, 3, '2024-01-17 17:37:48', '2024-01-17 17:37:48'),
(6, 61, 2, 'Scarsdale', '10583', '1.00', NULL, 5, '2024-01-17 17:38:12', '2024-01-17 17:38:12');

-- --------------------------------------------------------

--
-- Table structure for table `pos_payment_methods`
--

CREATE TABLE `pos_payment_methods` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL COMMENT '1 - active, 0 - deactive',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pos_payment_methods`
--

INSERT INTO `pos_payment_methods` (`id`, `user_id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(2, 2, 'On Cash', 1, '2024-01-20 22:19:00', '2024-01-20 22:19:00'),
(3, 2, 'Paypal', 1, '2024-01-20 22:19:13', '2024-01-20 22:19:13');

-- --------------------------------------------------------

--
-- Table structure for table `processes`
--

CREATE TABLE `processes` (
  `id` int(11) NOT NULL,
  `language_id` int(11) DEFAULT NULL,
  `icon` varchar(50) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `text` varchar(255) DEFAULT NULL,
  `btn_text` varchar(100) DEFAULT NULL,
  `serial_number` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `processes`
--

INSERT INTO `processes` (`id`, `language_id`, `icon`, `title`, `text`, `btn_text`, `serial_number`) VALUES
(17, 176, 'fas fa-dollar-sign', 'Purchase Plan', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit.', 'Purchase Now', 1),
(18, 176, 'fas fa-ambulance', 'Receive orders', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit.', 'Upload Now', 3),
(19, 176, 'fas fa-bars', 'Upload menus', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit.', 'Launch Now', 2),
(23, 176, 'fab fa-first-order', 'Manage orders', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit.', NULL, 4),
(24, 177, 'fas fa-dollar-sign', 'خطة الشراء', 'اختر خطة تسعير تناسبك بشكل أفضل', 'شراء الآن', 1),
(25, 177, 'fas fa-ambulance', 'تحميل الدورة', 'قم بتحميل الدورة التدريبية والوحدات النمطية والدروس ومحتويات الدرس', 'تحميل الآن', 3),
(26, 177, 'fas fa-bars', 'ابدأ بالبيع', 'قم بإعداد عملتك وبوابات الدفع وابدأ البيع', 'تنطلق الان', 2),
(27, 177, 'fab fa-first-order', 'مجال مخصص', 'إضافة مجال مخصص لجعل موقع الويب الخاص بك محترفًا', NULL, 4);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `feature_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `variations` text COLLATE utf8mb4_unicode_ci,
  `keywords` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `addon_keywords` text COLLATE utf8mb4_unicode_ci,
  `addons` text COLLATE utf8mb4_unicode_ci,
  `indx` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_price` decimal(11,2) NOT NULL DEFAULT '0.00',
  `previous_price` decimal(11,2) DEFAULT '0.00',
  `rating` decimal(11,2) NOT NULL DEFAULT '0.00',
  `status` int(11) NOT NULL DEFAULT '1',
  `is_feature` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_special` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `user_id`, `feature_image`, `variations`, `keywords`, `addon_keywords`, `addons`, `indx`, `current_price`, `previous_price`, `rating`, `status`, `is_feature`, `created_at`, `updated_at`, `is_special`) VALUES
(1, 2, 'e48163cb7f7aad127422bb1a51027441507e3972.jpg', '{\"Size\":[{\"name\":\"small\",\"price\":\"1\"},{\"name\":\"Big\",\"price\":\"2\"}]}', '{\"option_name\":{\"en_small\":\"small\",\"en_Big\":\"Big\",\"ar_small\":\"\\u0635\\u063a\\u064a\\u0631\",\"ar_Big\":\"\\u0643\\u0628\\u064a\\u0631\"},\"variation_name\":{\"en_Size\":\"Size\",\"ar_Size\":\"\\u0645\\u0642\\u0627\\u0633\"}}', '{\"addon_name\":[]}', '[]', '[\"0\",\"0\"]', '10.00', '11.00', '0.00', 1, 1, '2024-01-16 21:38:36', '2024-01-16 21:59:03', 1),
(2, 2, '156cb73246e09754b355615fd39f59b571db1487.jpg', '{\"Spice Level\":[{\"name\":\"Mild\",\"price\":\"1\"},{\"name\":\"Medium\",\"price\":\"2\"},{\"name\":\"Spicy\",\"price\":\"3\"}],\"Size\":[{\"name\":\"Regular\",\"price\":\"1\"},{\"name\":\"Large\",\"price\":\"2\"}]}', '{\"option_name\":{\"en_Mild\":\"Mild\",\"en_Medium\":\"Medium\",\"en_Spicy\":\"Spicy\",\"ar_Mild\":\"\\u062e\\u0641\\u064a\\u0641\",\"ar_Medium\":\"\\u0648\\u0627\\u0633\\u0637\\u0629\",\"ar_Spicy\":\"\\u062d\\u0627\\u0631\",\"en_Regular\":\"Regular\",\"en_Large\":\"Large\",\"ar_Regular\":\"\\u0639\\u0627\\u062f\\u064a\",\"ar_Large\":\"\\u0643\\u0628\\u064a\\u0631\"},\"variation_name\":{\"en_Spice Level\":\"Spice Level\",\"ar_Spice Level\":\"\\u0645\\u0633\\u062a\\u0648\\u0649 \\u0627\\u0644\\u062a\\u0648\\u0627\\u0628\\u0644\",\"en_Size\":\"Size\",\"ar_Size\":\"\\u0645\\u0642\\u0627\\u0633\"}}', '{\"addon_name\":{\"en_Cheesee\":\"Cheesee\",\"ar_Cheesee\":\"\\u062a\\u0634\\u064a\\u0632\",\"en_BBQ Sauce\":\"BBQ Sauce\",\"ar_BBQ Sauce\":\"\\u0635\\u0644\\u0635\\u0629 \\u0634\\u0648\\u0627\\u0621\",\"en_Patty\":\"Patty\",\"ar_Patty\":\"\\u0641\\u0637\\u064a\\u0631\\u0629\",\"en_Sausage\":\"Sausage\",\"ar_Sausage\":\"\\u0633\\u062c\\u0642\",\"en_Egg\":\"Egg\",\"ar_Egg\":\"\\u0628\\u064a\\u0636\\u0629\"}}', '[{\"name\":\"Cheesee\",\"price\":1},{\"name\":\"BBQ Sauce\",\"price\":1},{\"name\":\"Patty\",\"price\":2},{\"name\":\"Sausage\",\"price\":1},{\"name\":\"Egg\",\"price\":1}]', '[\"0\",\"0\",\"1\",\"1\"]', '6.00', '7.00', '0.00', 1, 1, '2024-01-17 13:38:58', '2024-01-17 14:07:19', 1),
(3, 2, '42161ee8ac8fbbcb8a02c505507712142f59ec73.jpg', '{\"Spice Level\":[{\"name\":\"Mild\",\"price\":\"1\"},{\"name\":\"Medium\",\"price\":\"2\"},{\"name\":\"Spicy\",\"price\":\"3\"}],\"Size\":[{\"name\":\"Regular\",\"price\":\"1\"},{\"name\":\"Large\",\"price\":\"2\"}]}', '{\"option_name\":{\"en_Mild\":\"Mild\",\"en_Medium\":\"Medium\",\"en_Spicy\":\"Spicy\",\"ar_Mild\":\"\\u062e\\u0641\\u064a\\u0641\",\"ar_Medium\":\"\\u0648\\u0627\\u0633\\u0637\\u0629\",\"ar_Spicy\":\"\\u062d\\u0627\\u0631\",\"en_Regular\":\"Regular\",\"en_Large\":\"Large\",\"ar_Regular\":\"\\u0639\\u0627\\u062f\\u064a\",\"ar_Large\":\"\\u0643\\u0628\\u064a\\u0631\"},\"variation_name\":{\"en_Spice Level\":\"Spice Level\",\"ar_Spice Level\":\"\\u0645\\u0633\\u062a\\u0648\\u0649 \\u0627\\u0644\\u062a\\u0648\\u0627\\u0628\\u0644\",\"en_Size\":\"Size\",\"ar_Size\":\"\\u0645\\u0642\\u0627\\u0633\"}}', '{\"addon_name\":{\"en_1pc Chicken\":\"1pc Chicken\",\"ar_1pc Chicken\":\"1 \\u0642\\u0637\\u0639\\u0629 \\u062f\\u062c\\u0627\\u062c\",\"en_Vegetable\":\"Vegetable\",\"ar_Vegetable\":\"\\u0627\\u0644\\u062e\\u0636\\u0631\\u0648\\u0627\\u062a\",\"en_Egg\":\"Egg\",\"ar_Egg\":\"\\u0628\\u064a\\u0636\\u0629\"}}', '[{\"name\":\"1pc Chicken\",\"price\":3},{\"name\":\"Vegetable\",\"price\":2},{\"name\":\"Egg\",\"price\":1}]', '[\"0\",\"0\",\"1\",\"1\"]', '8.00', '10.00', '0.00', 1, 1, '2024-01-17 13:47:01', '2024-01-17 14:46:08', 1),
(4, 2, '369bd81ba7bedc224eb89b29aa6ab3a53e0d7fcd.jpg', '[]', '{\"option_name\":[],\"variation_name\":[]}', '{\"addon_name\":[]}', '[]', NULL, '4.00', '5.00', '0.00', 1, 1, '2024-01-17 13:52:37', '2024-01-17 14:21:24', 1),
(5, 2, '9288fff7df0c6cef89d4a3bc6d8d7c4cba25b534.jpg', '[]', '{\"option_name\":[],\"variation_name\":[]}', '{\"addon_name\":[]}', '[]', NULL, '3.00', '4.00', '0.00', 1, 1, '2024-01-17 14:11:46', '2024-01-17 14:45:33', 1),
(6, 2, 'c227ef62b12d1bf4f0c53ac26420a60051c8dfb3.jpg', '{\"Caramel  Delight\":[{\"name\":\"Small\",\"price\":\"1\"},{\"name\":\"Medium\",\"price\":\"2\"}],\"Blueberry Blastoff\":[{\"name\":\"Small\",\"price\":\"2\"},{\"name\":\"Medium\",\"price\":\"3\"}]}', '{\"option_name\":{\"en_Small\":\"Small\",\"en_Medium\":\"Medium\",\"ar_Small\":\"\\u0635\\u063a\\u064a\\u0631\",\"ar_Medium\":\"\\u0648\\u0627\\u0633\\u0637\\u0629\"},\"variation_name\":{\"en_Caramel  Delight\":\"Caramel  Delight\",\"ar_Caramel  Delight\":\"\\u0643\\u0631\\u0627\\u0645\\u064a\\u0644 \\u0643\\u0631\\u0627\\u0646\\u0634 \\u062f\\u064a\\u0644\\u0627\\u064a\\u062a\",\"en_Blueberry Blastoff\":\"Blueberry Blastoff\",\"ar_Blueberry Blastoff\":\"\\u0639\\u0646\\u0628\\u064a\\u0629 \\u0628\\u0644\\u0627\\u0633\\u062a\\u0648\\u0641\"}}', '{\"addon_name\":{\"en_Berry Burst\":\"Berry Burst\",\"ar_Berry Burst\":\"\\u0627\\u0646\\u0641\\u062c\\u0627\\u0631 \\u0628\\u064a\\u0631\\u064a\",\"en_Oreo Delight\":\"Oreo Delight\",\"ar_Oreo Delight\":\"\\u0623\\u0648\\u0631\\u064a\\u0648 \\u062f\\u064a\\u0644\\u0627\\u064a\\u062a\"}}', '[{\"name\":\"Berry Burst\",\"price\":1},{\"name\":\"Oreo Delight\",\"price\":2}]', NULL, '4.00', '5.00', '0.00', 1, 1, '2024-01-17 14:16:40', '2024-01-29 15:45:03', 0),
(7, 2, '688c6e769f959e4317c5cad30b94e59097868003.jpg', '{\"Size\":[{\"name\":\"Small\",\"price\":\"1\"},{\"name\":\"Regular\",\"price\":\"2\"},{\"name\":\"Large\",\"price\":\"3\"}]}', '{\"option_name\":{\"en_Small\":\"Small\",\"en_Regular\":\"Regular\",\"en_Large\":\"Large\",\"ar_Small\":\"\\u0635\\u063a\\u064a\\u0631\",\"ar_Regular\":\"\\u0639\\u0627\\u062f\\u064a\",\"ar_Large\":\"\\u0643\\u0628\\u064a\\u0631\"},\"variation_name\":{\"en_Size\":\"Size\",\"ar_Size\":\"\\u0645\\u0642\\u0627\\u0633\"}}', '{\"addon_name\":[]}', '[]', '[\"0\",\"0\"]', '3.00', NULL, '0.00', 1, 1, '2024-01-17 14:20:21', '2024-01-17 14:20:39', 0),
(8, 2, 'd346e36fdc744b60b2b6964a96a573da569bba11.jpg', '[]', '{\"option_name\":[],\"variation_name\":[]}', '{\"addon_name\":[]}', '[]', NULL, '8.00', '9.00', '0.00', 1, 1, '2024-01-17 14:25:47', '2024-01-17 14:29:27', 0),
(9, 2, '96fc4d053ee20c69c10f5e339575c5bb9abc1b70.jpg', '[]', '{\"option_name\":[],\"variation_name\":[]}', '{\"addon_name\":{\"en_Ice\":\"Ice\",\"ar_Ice\":\"\\u062c\\u0644\\u064a\\u062f\",\"en_Sugar\":\"Sugar\",\"ar_Sugar\":\"\\u0633\\u0643\\u0631\"}}', '[{\"name\":\"Ice\",\"price\":0},{\"name\":\"Sugar\",\"price\":1}]', NULL, '2.00', NULL, '0.00', 1, 1, '2024-01-17 14:38:56', '2024-01-17 14:43:47', 0),
(10, 2, 'de82e42128000619361619083be97a346c663155.jpg', '{\"Size\":[{\"name\":\"Small\",\"price\":\"1\"},{\"name\":\"Regular\",\"price\":\"1\"},{\"name\":\"Large\",\"price\":\"2\"}]}', '{\"option_name\":{\"en_Small\":\"Small\",\"en_Regular\":\"Regular\",\"en_Large\":\"Large\",\"ar_Small\":\"\\u0635\\u063a\\u064a\\u0631\",\"ar_Regular\":\"\\u0639\\u0627\\u062f\\u064a\",\"ar_Large\":\"\\u0643\\u0628\\u064a\\u0631\"},\"variation_name\":{\"en_Size\":\"Size\",\"ar_Size\":\"\\u0645\\u0642\\u0627\\u0633\"}}', '{\"addon_name\":[]}', '[]', '[\"0\",\"0\"]', '5.00', '6.00', '0.00', 1, 1, '2024-01-17 14:43:37', '2024-01-17 14:43:45', 0),
(26, 14, 'da37cf2ac353f5a33fdd3b8c09cd2106a348a008.png', '{\"Ciabatta\":[{\"name\":\"Small\",\"price\":\"1\"},{\"name\":\"Big\",\"price\":\"2\"}]}', '{\"option_name\":{\"en_Small\":\"Small\",\"en_Big\":\"Big\"},\"variation_name\":{\"en_Ciabatta\":\"Ciabatta\"}}', '{\"addon_name\":{\"en_Herbs\":\"Herbs\",\"en_Cheese\":\"Cheese\"}}', '[{\"name\":\"Herbs\",\"price\":1},{\"name\":\"Cheese\",\"price\":2}]', '[\"0\"]', '5.00', '6.00', '0.00', 1, 1, '2024-02-23 18:38:04', '2024-02-23 18:38:21', 1),
(27, 14, '0f0e884f1a030d27d3df9c5b57e7330f6b086ade.png', '{\"Baguette\":[{\"name\":\"Small\",\"price\":\"1\"},{\"name\":\"Big\",\"price\":\"2\"}]}', '{\"option_name\":{\"en_Small\":\"Small\",\"en_Big\":\"Big\"},\"variation_name\":{\"en_Baguette\":\"Baguette\"}}', '{\"addon_name\":{\"en_Nuts\":\"Nuts\",\"en_Garlic\":\"Garlic\"}}', '[{\"name\":\"Nuts\",\"price\":1},{\"name\":\"Garlic\",\"price\":2}]', '[\"0\"]', '7.00', '8.00', '0.00', 1, 1, '2024-02-23 18:43:46', '2024-02-23 18:44:12', 1),
(28, 14, 'dd372c632491de30564d361d4570a58a2ffae781.png', '[]', '{\"option_name\":[],\"variation_name\":[]}', '{\"addon_name\":[]}', '[]', NULL, '4.00', '5.00', '0.00', 1, 1, '2024-02-23 18:46:03', '2024-02-23 18:46:11', 1),
(29, 14, 'c35107aad9ca1238c1d9807f9a0f1298e4f9e6e6.png', '[]', '{\"option_name\":[],\"variation_name\":[]}', '{\"addon_name\":[]}', '[]', NULL, '2.00', '3.00', '0.00', 1, 1, '2024-02-23 18:47:48', '2024-02-23 18:47:55', 1),
(30, 14, '27df4e89de0705c63fec147943324ffe69ca3bec.png', '[]', '{\"option_name\":[],\"variation_name\":[]}', '{\"addon_name\":[]}', '[]', NULL, '4.00', '5.00', '0.00', 1, 1, '2024-02-23 18:50:16', '2024-02-23 18:50:33', 1),
(31, 14, '45751d36cb004253e9fc6d47bd7110111bbd73a0.png', '[]', '{\"option_name\":[],\"variation_name\":[]}', '{\"addon_name\":[]}', '[]', NULL, '8.00', '9.00', '0.00', 1, 1, '2024-02-23 18:52:14', '2024-02-23 18:52:20', 1),
(32, 16, '102e45f2061616d1656eee77f453964ff0a95665.png', '{\"Affogato\":[{\"name\":\"Small\",\"price\":\"2\"},{\"name\":\"Big\",\"price\":\"3\"}]}', '{\"option_name\":{\"en_Small\":\"Small\",\"en_Big\":\"Big\"},\"variation_name\":{\"en_Affogato\":\"Affogato\"}}', '{\"addon_name\":{\"en_Vanilla\":\"Vanilla\",\"en_caramel\":\"caramel\"}}', '[{\"name\":\"Vanilla\",\"price\":1},{\"name\":\"caramel\",\"price\":2}]', '[\"0\"]', '7.00', '8.00', '0.00', 1, 1, '2024-02-23 19:40:59', '2024-02-23 19:41:07', 1),
(33, 16, '945c79cb62eda05ca66c2c910c415d6f5e10d7cc.png', '{\"Flat White\":[{\"name\":\"Small\",\"price\":\"1\"},{\"name\":\"Big\",\"price\":\"2\"}]}', '{\"option_name\":{\"en_Small\":\"Small\",\"en_Big\":\"Big\"},\"variation_name\":{\"en_Flat White\":\"Flat White\"}}', '{\"addon_name\":{\"en_hazelnut\":\"hazelnut\",\"en_Vanilla\":\"Vanilla\"}}', '[{\"name\":\"hazelnut\",\"price\":2},{\"name\":\"Vanilla\",\"price\":1}]', '[\"0\"]', '5.00', '6.00', '0.00', 1, 1, '2024-02-23 19:43:07', '2024-02-23 19:46:22', 1),
(34, 16, 'a564bc8ae9932c6e5b1bdad094b550d64b4cfe5a.png', '[]', '{\"option_name\":[],\"variation_name\":[]}', '{\"addon_name\":[]}', '[]', NULL, '6.00', '7.00', '0.00', 1, 1, '2024-02-23 19:45:04', '2024-02-23 19:46:18', 1),
(35, 16, '34cafad2d5c1fd14a1a26d559009efbee6b2a4c9.png', '[]', '{\"option_name\":[],\"variation_name\":[]}', '{\"addon_name\":[]}', '[]', NULL, '8.00', '9.00', '0.00', 1, 1, '2024-02-23 19:46:09', '2024-02-23 19:46:15', 1),
(36, 16, 'ca2e587e664967d6336a6f1f6a61d83858a52c70.png', '[]', '{\"option_name\":[],\"variation_name\":[]}', '{\"addon_name\":[]}', '[]', NULL, '10.00', '11.00', '0.00', 1, 1, '2024-02-23 19:51:05', '2024-02-23 19:51:59', 1),
(37, 16, '937ce814b8325e74b58af7543bc5acea62f9cea8.png', '[]', '{\"option_name\":[],\"variation_name\":[]}', '{\"addon_name\":[]}', '[]', NULL, '9.00', '10.00', '0.00', 1, 1, '2024-02-23 19:51:46', '2024-02-23 19:51:52', 1),
(38, 15, 'c43996ce3f0884d7aa0ba63543cdd82695346a83.png', '{\"cheese\":[{\"name\":\"Mozzarella\",\"price\":\"3\"},{\"name\":\"shredded\",\"price\":\"2\"}]}', '{\"option_name\":{\"en_Mozzarella\":\"Mozzarella\",\"en_shredded\":\"shredded\"},\"variation_name\":{\"en_cheese\":\"cheese\"}}', '{\"addon_name\":{\"en_Red Onion\":\"Red Onion\",\"en_Kalamata Olives\":\"Kalamata Olives\"}}', '[{\"name\":\"Red Onion\",\"price\":1},{\"name\":\"Kalamata Olives\",\"price\":2}]', '[\"0\"]', '12.00', '13.00', '0.00', 1, 1, '2024-02-23 20:00:29', '2024-02-23 20:04:42', 0),
(39, 15, '916b1b8689ab92c59bcb83e8a76cdf05cc5cd93b.png', '{\"Kalamata\":[{\"name\":\"Small\",\"price\":\"1\"},{\"name\":\"Big\",\"price\":\"2\"}]}', '{\"option_name\":{\"en_Small\":\"Small\",\"en_Big\":\"Big\"},\"variation_name\":{\"en_Kalamata\":\"Kalamata\"}}', '{\"addon_name\":{\"en_Pesto Sauce\":\"Pesto Sauce\",\"en_Kalamata Olives\":\"Kalamata Olives\"}}', '[{\"name\":\"Pesto Sauce\",\"price\":1},{\"name\":\"Kalamata Olives\",\"price\":2}]', '[\"0\"]', '5.00', '6.00', '0.00', 1, 1, '2024-02-23 20:07:00', '2024-02-23 20:08:50', 0),
(40, 15, 'f2a54f2bebcf699bac53c9cba73a0cfa71df57ee.png', '[]', '{\"option_name\":[],\"variation_name\":[]}', '{\"addon_name\":[]}', '[]', NULL, '3.00', '4.00', '0.00', 1, 1, '2024-02-23 20:07:56', '2024-02-23 20:09:59', 0),
(41, 15, '2a9e7063c402b31ccc6fde29fcde3c6d8def0d56.png', '[]', '{\"option_name\":[],\"variation_name\":[]}', '{\"addon_name\":[]}', '[]', NULL, '6.00', '7.00', '0.00', 1, 1, '2024-02-23 20:08:43', '2024-02-23 20:08:47', 0),
(42, 15, '53a4592dbde1ffc835cee12c9453dd8eaf30a052.png', '{\"Cheese\":[{\"name\":\"Small\",\"price\":\"2\"},{\"name\":\"Mideum\",\"price\":\"3\"},{\"name\":\"Large\",\"price\":\"5\"}]}', '{\"option_name\":{\"en_Small\":\"Small\",\"en_Mideum\":\"Mideum\",\"en_Large\":\"Large\"},\"variation_name\":{\"en_Cheese\":\"Cheese\"}}', '{\"addon_name\":{\"en_Red Onion\":\"Red Onion\",\"en_Fresh Basil Leaves\":\"Fresh Basil Leaves\"}}', '[{\"name\":\"Red Onion\",\"price\":1},{\"name\":\"Fresh Basil Leaves\",\"price\":1}]', '[\"0\"]', '5.00', '6.00', '0.00', 1, 0, '2024-02-23 20:12:47', '2024-02-23 20:15:03', 1),
(43, 15, '142d787e368bc0effd66b5f5db190a82675c670a.png', '[]', '{\"option_name\":[],\"variation_name\":[]}', '{\"addon_name\":{\"en_Fresh Basil Leaves\":\"Fresh Basil Leaves\"}}', '[{\"name\":\"Fresh Basil Leaves\",\"price\":0}]', NULL, '7.00', '8.00', '0.00', 1, 0, '2024-02-23 20:13:38', '2024-02-23 20:15:01', 1),
(44, 15, 'fcfc236b88d25ab825e7c959b963c0632e2fdeb4.png', '[]', '{\"option_name\":[],\"variation_name\":[]}', '{\"addon_name\":[]}', '[]', NULL, '3.00', '4.00', '0.00', 1, 0, '2024-02-23 20:14:54', '2024-02-23 20:14:59', 1),
(45, 18, 'cad5ed13b4d67fd65659447e2fefa0a2632c4028.png', '{\"Tomatoes\":[{\"name\":\"Cherry tomatoes\",\"price\":\"1\"},{\"name\":\"Heirloom tomatoes\",\"price\":\"2\"}]}', '{\"option_name\":{\"en_Cherry tomatoes\":\"Cherry tomatoes\",\"en_Heirloom tomatoes\":\"Heirloom tomatoes\"},\"variation_name\":{\"en_Tomatoes\":\"Tomatoes\"}}', '{\"addon_name\":{\"en_Jalape\\u00f1o peppers\":\"Jalape\\u00f1o peppers\",\"en_Habanero peppers\":\"Habanero peppers\"}}', '[{\"name\":\"Jalape\\u00f1o peppers\",\"price\":1},{\"name\":\"Habanero peppers\",\"price\":-1}]', '[\"0\"]', '2.00', '3.00', '0.00', 1, 1, '2024-02-23 21:04:17', '2024-02-23 21:05:32', 0),
(46, 18, 'd9d6daea941d84de8fbf99f99e910643496454ad.png', '[]', '{\"option_name\":[],\"variation_name\":[]}', '{\"addon_name\":[]}', '[]', NULL, '2.00', '3.00', '0.00', 1, 1, '2024-02-23 21:05:18', '2024-02-23 21:05:30', 0),
(47, 18, '9ca250bce9937dda74ad884a1224e92eb09f6edf.png', '[]', '{\"option_name\":[],\"variation_name\":[]}', '{\"addon_name\":[]}', '[]', NULL, '3.00', '4.00', '0.00', 1, 1, '2024-02-23 21:07:29', '2024-02-23 21:07:45', 0),
(48, 18, '44dfdfe3443f69fdcd55d2e3959dc367e7b27c8c.png', '[]', '{\"option_name\":[],\"variation_name\":[]}', '{\"addon_name\":[]}', '[]', NULL, '10.00', '11.00', '0.00', 1, 1, '2024-02-23 21:09:24', '2024-02-23 21:09:30', 0),
(49, 18, '33901f4188bd1cc3049fea3e00eadd13c904fc0a.png', '[]', '{\"option_name\":[],\"variation_name\":[]}', '{\"addon_name\":[]}', '[]', NULL, '5.00', '6.00', '0.00', 1, 1, '2024-02-23 21:10:29', '2024-02-23 21:10:34', 0),
(50, 18, 'e4a13b1c1aae6f4c27913aae13be4ac95a2c3e7d.png', '{\"Onions\":[{\"name\":\"Red onions\",\"price\":\"1\"},{\"name\":\"White onions\",\"price\":\"2\"},{\"name\":\"Vidalia onions\",\"price\":\"3\"}]}', '{\"option_name\":{\"en_Red onions\":\"Red onions\",\"en_White onions\":\"White onions\",\"en_Vidalia onions\":\"Vidalia onions\"},\"variation_name\":{\"en_Onions\":\"Onions\"}}', '{\"addon_name\":[]}', '[]', '[\"0\"]', '9.00', '10.00', '0.00', 1, 0, '2024-02-23 21:14:03', '2024-02-23 21:16:27', 1),
(51, 18, 'bbd29be046ea2f97cbf1ea9ad60e3095610cee4e.png', '[]', '{\"option_name\":[],\"variation_name\":[]}', '{\"addon_name\":[]}', '[]', NULL, '3.00', '4.00', '0.00', 1, 0, '2024-02-23 21:15:23', '2024-02-23 21:16:25', 1),
(52, 18, '22f23cd92af31e1fe2d9cf39173743700e4810bc.png', '[]', '{\"option_name\":[],\"variation_name\":[]}', '{\"addon_name\":[]}', '[]', NULL, '7.00', '8.00', '0.00', 1, 0, '2024-02-23 21:16:17', '2024-02-23 21:16:23', 1),
(54, 19, 'be02a9cba99c0c3bdd3e81afc8f252680384bc28.png', '{\"Cream\":[{\"name\":\"Extra\",\"price\":\"2\"},{\"name\":\"Medium\",\"price\":\"1\"}]}', '{\"option_name\":{\"en_Extra\":\"Extra\",\"en_Medium\":\"Medium\"},\"variation_name\":{\"en_Cream\":\"Cream\"}}', '{\"addon_name\":{\"en_Pistachio\":\"Pistachio\"}}', '[{\"name\":\"Pistachio\",\"price\":1}]', '[\"0\"]', '5.00', '6.00', '0.00', 1, 1, '2024-02-23 22:35:55', '2024-02-23 22:36:02', 0),
(55, 19, '6c7e7e9e4dfb28bf4b95dd2789a7953beb99a15c.png', '[]', '{\"option_name\":[],\"variation_name\":[]}', '{\"addon_name\":[]}', '[]', NULL, '3.00', '4.00', '0.00', 1, 1, '2024-02-23 22:36:58', '2024-02-23 22:37:15', 0),
(56, 19, '817d49aa6f9556bc203cf8fc5ac632b1bbbf261e.png', '[]', '{\"option_name\":[],\"variation_name\":[]}', '{\"addon_name\":[]}', '[]', NULL, '4.00', '5.00', '0.00', 1, 1, '2024-02-23 22:38:09', '2024-02-23 22:40:42', 0),
(57, 19, 'e0d738b75b03fa32952b9f0faea5de784a43c8bc.png', '[]', '{\"option_name\":[],\"variation_name\":[]}', '{\"addon_name\":[]}', '[]', NULL, '6.00', '7.00', '0.00', 1, 1, '2024-02-23 22:39:45', '2024-02-23 22:39:50', 0),
(58, 19, 'ec0e76763c37f7a4f6fb80613d6063e2a3146cbc.png', '[]', '{\"option_name\":[],\"variation_name\":[]}', '{\"addon_name\":[]}', '[]', NULL, '2.00', '3.00', '0.00', 1, 1, '2024-02-23 22:40:34', '2024-02-23 22:40:40', 0),
(59, 19, '91884dd117d4a53827c3002081ef4c4b9f495d34.png', '{\"Berry Burst\":[{\"name\":\"Small\",\"price\":\"1\"},{\"name\":\"Large\",\"price\":\"2\"}],\"Citrus Splash\":[{\"name\":\"Small\",\"price\":\"1\"},{\"name\":\"Large\",\"price\":\"2\"}]}', '{\"option_name\":{\"en_Small\":\"Small\",\"en_Large\":\"Large\"},\"variation_name\":{\"en_Berry Burst\":\"Berry Burst\",\"en_Citrus Splash\":\"Citrus Splash\"}}', '{\"addon_name\":{\"en_Zest Mix\":\"Zest Mix\",\"en_VitaBlend\":\"VitaBlend\"}}', '[{\"name\":\"Zest Mix\",\"price\":1},{\"name\":\"VitaBlend\",\"price\":2}]', '[\"0\",\"1\"]', '9.00', '10.00', '0.00', 1, 0, '2024-02-23 22:47:06', '2024-02-23 22:48:05', 1),
(60, 19, '287d2ff951ba769120029fde8c2b48bbb48199ff.png', '[]', '{\"option_name\":[],\"variation_name\":[]}', '{\"addon_name\":[]}', '[]', NULL, '10.00', '11.00', '0.00', 1, 0, '2024-02-23 22:47:57', '2024-02-23 22:48:03', 1),
(61, 19, '23bcdb177b160f951374c978c68217ea41e3d9e4.png', '[]', '{\"option_name\":[],\"variation_name\":[]}', '{\"addon_name\":[]}', '[]', NULL, '7.00', '8.00', '0.00', 1, 0, '2024-02-23 22:50:36', '2024-02-23 22:51:08', 1),
(62, 17, 'abea442f470d44c4ee5d28ad6fea695ccd893b73.png', '{\"Ibuprofen\":[{\"name\":\"Small\",\"price\":\"1\"},{\"name\":\"Large\",\"price\":\"3\"}],\"Aspirin\":[{\"name\":\"Small\",\"price\":\"2\"},{\"name\":\"Large\",\"price\":\"4\"}]}', '{\"option_name\":{\"en_Small\":\"Small\",\"en_Large\":\"Large\"},\"variation_name\":{\"en_Ibuprofen\":\"Ibuprofen\",\"en_Aspirin\":\"Aspirin\"}}', '{\"addon_name\":{\"en_Tramadol\":\"Tramadol\",\"en_Morphine\":\"Morphine\"}}', '[{\"name\":\"Tramadol\",\"price\":2},{\"name\":\"Morphine\",\"price\":3}]', '[\"0\",\"1\"]', '5.00', '6.00', '0.00', 1, 1, '2024-02-24 15:08:51', '2024-02-24 15:09:33', 0),
(63, 17, 'c6d8d8ca587fbf641a950386a5bfdf6104f82513.png', '[]', '{\"option_name\":[],\"variation_name\":[]}', '{\"addon_name\":{\"en_Hydrocodone\":\"Hydrocodone\",\"en_Oxycodone\":\"Oxycodone\"}}', '[{\"name\":\"Hydrocodone\",\"price\":2},{\"name\":\"Oxycodone\",\"price\":3}]', NULL, '7.00', '8.00', '0.00', 1, 1, '2024-02-24 15:11:22', '2024-02-24 15:15:18', 0),
(64, 17, '9dfe7a6a7b56f16fe99331a50b0273b686ea63e4.png', '[]', '{\"option_name\":[],\"variation_name\":[]}', '{\"addon_name\":[]}', '[]', NULL, '4.00', '5.00', '0.00', 1, 1, '2024-02-24 15:12:33', '2024-02-24 15:15:16', 0),
(65, 17, 'fae806a5e1e88f21f345a03d76df1eb94d53ca9c.png', '[]', '{\"option_name\":[],\"variation_name\":[]}', '{\"addon_name\":[]}', '[]', NULL, '8.00', '9.00', '0.00', 1, 1, '2024-02-24 15:15:00', '2024-02-24 15:15:14', 0),
(66, 17, '5172881cfe292b2185cdb673e0ead01cf0e0014c.png', '[]', '{\"option_name\":[],\"variation_name\":[]}', '{\"addon_name\":[]}', '[]', NULL, '15.00', '16.00', '0.00', 1, 1, '2024-02-24 15:16:42', '2024-02-24 15:16:51', 0),
(67, 17, 'b4c1ce20d9a55081d3fe2460e26918fa7fb461f9.png', '{\"Ibuprofen\":[{\"name\":\"Small\",\"price\":\"1\"},{\"name\":\"Large\",\"price\":\"1\"}],\"Naproxen\":[{\"name\":\"Small\",\"price\":\"1\"},{\"name\":\"Large\",\"price\":\"2\"}]}', '{\"option_name\":{\"en_Small\":\"Small\",\"en_Large\":\"Large\"},\"variation_name\":{\"en_Ibuprofen\":\"Ibuprofen\",\"en_Naproxen\":\"Naproxen\"}}', '{\"addon_name\":{\"en_Heparin\":\"Heparin\",\"en_Warfarin\":\"Warfarin\"}}', '[{\"name\":\"Heparin\",\"price\":0},{\"name\":\"Warfarin\",\"price\":0}]', '[\"0\",\"1\"]', '10.00', '11.00', '0.00', 1, 0, '2024-02-24 15:37:04', '2024-02-24 15:38:44', 1),
(68, 17, 'b21ddfad66c8a17b87b4762fac3091a3d069589b.png', '[]', '{\"option_name\":[],\"variation_name\":[]}', '{\"addon_name\":{\"en_Glucocorticoids\":\"Glucocorticoids\",\"en_Mineralocorticoids\":\"Mineralocorticoids\"}}', '[{\"name\":\"Glucocorticoids\",\"price\":3},{\"name\":\"Mineralocorticoids\",\"price\":4}]', NULL, '11.00', '12.00', '0.00', 1, 0, '2024-02-24 15:38:37', '2024-02-24 15:38:42', 1),
(69, 17, '36ad0a9c087780a3b9a5bd01a27b375b5538d7ab.png', '[]', '{\"option_name\":[],\"variation_name\":[]}', '{\"addon_name\":[]}', '[]', NULL, '15.00', '17.00', '0.00', 1, 0, '2024-02-24 15:41:49', '2024-02-24 15:41:53', 1);

-- --------------------------------------------------------

--
-- Table structure for table `product_images`
--

CREATE TABLE `product_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_images`
--

INSERT INTO `product_images` (`id`, `user_id`, `product_id`, `image`, `created_at`, `updated_at`) VALUES
(1, 2, 1, '26d025ea4b8579b05840628ad25a36d6bf98e684.jpg', '2024-01-16 21:38:31', '2024-01-16 21:38:36'),
(2, 2, 1, '4b47b882385bfa322597ce6651332e3c7167b8a1.jpg', '2024-01-16 21:38:32', '2024-01-16 21:38:36'),
(3, 2, 2, '8b5ebdcfeda5a6beb1d053e8b6110dac0e92b1ba.jpg', '2024-01-17 13:37:47', '2024-01-17 13:38:58'),
(4, 2, 2, '99babf007407e33fcd580f79151e8a688afd6d7c.jpg', '2024-01-17 13:37:47', '2024-01-17 13:38:58'),
(5, 2, 2, 'd6323fb42d935af2a5b296c613b83a3415b37c77.jpg', '2024-01-17 13:37:47', '2024-01-17 13:38:58'),
(6, 2, 2, '3ed1655bc8bd00853ffa45673e9e6da999a12fe9.jpg', '2024-01-17 13:37:47', '2024-01-17 13:38:58'),
(7, 2, 2, '6b95cddfd4c1541be1badfedd6cfb5bc8011375f.jpg', '2024-01-17 13:37:47', '2024-01-17 13:38:58'),
(8, 2, 3, '2dceefe65f3817409a2cb84f0ba9dd5a61cedfc0.jpg', '2024-01-17 13:46:55', '2024-01-17 13:47:01'),
(9, 2, 3, '8319a5cea667764df288e595e886459d78d6b296.jpg', '2024-01-17 13:46:56', '2024-01-17 13:47:01'),
(10, 2, 3, '2b5d2b674aa593e85852dfeed9207e18d7cca066.jpg', '2024-01-17 13:46:56', '2024-01-17 13:47:01'),
(11, 2, 3, '4c8777e5159b63212413b9eeee408df5854c6031.jpg', '2024-01-17 13:46:56', '2024-01-17 13:47:01'),
(12, 2, 4, 'ce3b10dbe3bf3711084d251e076e8f4e03e170ec.jpg', '2024-01-17 13:52:33', '2024-01-17 13:52:37'),
(13, 2, 4, '79c88f81e8998eb853e78848238f9c276c4e3110.jpg', '2024-01-17 13:52:33', '2024-01-17 13:52:37'),
(14, 2, 4, '9c0808ab84740da13a1d4157db58c851eedc9681.jpg', '2024-01-17 13:52:33', '2024-01-17 13:52:37'),
(15, 2, 4, '9db18a3949ebb53446d229d7551ef2a5bb9c8c0c.jpg', '2024-01-17 13:52:34', '2024-01-17 13:52:37'),
(16, 2, 4, 'dd2a2e398523913ed10e8485a1aac082b8de6f6f.jpg', '2024-01-17 13:52:34', '2024-01-17 13:52:37'),
(18, 2, 5, '4ba86e71f6ea264b445a443fb8d725c150615acb.jpg', '2024-01-17 14:11:36', '2024-01-17 14:11:46'),
(19, 2, 5, 'c0d10c5926f808022b5be960fd3662353e8c4807.jpg', '2024-01-17 14:11:36', '2024-01-17 14:11:46'),
(20, 2, 5, 'f2f059338d8920ce95dcbb29188560ac65d58451.jpg', '2024-01-17 14:11:36', '2024-01-17 14:11:46'),
(21, 2, 5, '8b599930466611f5136df599d7ceb5ea635705d2.jpg', '2024-01-17 14:11:36', '2024-01-17 14:11:46'),
(22, 2, 6, '7527b76e6c2f5cf4ba5933821195c7b4c08a52ea.jpg', '2024-01-17 14:16:19', '2024-01-17 14:16:40'),
(23, 2, 6, 'a58dd46524a374e07f3d54593993b887e9d027b5.jpg', '2024-01-17 14:16:20', '2024-01-17 14:16:40'),
(24, 2, 6, '0fb12fb800a7a6620336ec7c5b796f018c2f3111.jpg', '2024-01-17 14:16:20', '2024-01-17 14:16:40'),
(25, 2, 6, 'c0a9a19ee5d4ec111ceb855e48ec4bf423c8edf9.jpg', '2024-01-17 14:16:20', '2024-01-17 14:16:40'),
(26, 2, 6, '5c28d53dce3053a934480db45b46ad2f6a5946d3.jpg', '2024-01-17 14:16:20', '2024-01-17 14:16:40'),
(27, 2, 6, 'eeb7393526a8256146bdd36dd25db91459fa4dcd.jpg', '2024-01-17 14:16:20', '2024-01-17 14:16:40'),
(28, 2, 7, '1a80ddbc0ae31d5528b59fa160bdfc54d99d9628.jpg', '2024-01-17 14:20:12', '2024-01-17 14:20:21'),
(29, 2, 7, '9a5bf15eb409882a242f9dff00122c6576368d33.jpg', '2024-01-17 14:20:12', '2024-01-17 14:20:21'),
(30, 2, 7, '446ebfa2b2fa0fa2182ba408a9fc8ab1d8875f02.jpg', '2024-01-17 14:20:12', '2024-01-17 14:20:21'),
(31, 2, 7, 'f715046201a589c5bffb48b7be4e21ba9a5cdca9.jpg', '2024-01-17 14:20:12', '2024-01-17 14:20:21'),
(32, 2, 7, '19adb218974aa3fa156c8ad8d88d48f401828c5a.jpg', '2024-01-17 14:20:12', '2024-01-17 14:20:21'),
(33, 2, 7, '7ab5a89ce00131839e897df4fa07a1b5e2b561ee.jpg', '2024-01-17 14:20:13', '2024-01-17 14:20:21'),
(34, 2, 8, '738b3e15473d9088be1bf33823c7a791d773970d.jpg', '2024-01-17 14:25:32', '2024-01-17 14:25:47'),
(35, 2, 8, '2bc2188b9e406f4a06e6b109da9137d424539ccb.jpg', '2024-01-17 14:25:32', '2024-01-17 14:25:47'),
(36, 2, 8, '241d09bdf64d25de804bc20fe8cf1dfb3438ebcc.jpg', '2024-01-17 14:25:32', '2024-01-17 14:25:47'),
(37, 2, 8, '9a6f42f391c1904e5d10aec2ab36fe39fc82b1e6.jpg', '2024-01-17 14:25:32', '2024-01-17 14:25:47'),
(38, 2, 8, 'e03184d57ad6b1bf083e330b9c6a851f65848112.jpg', '2024-01-17 14:25:32', '2024-01-17 14:25:47'),
(39, 2, 8, '818c4ee73540221eaf029b3a1d2e388d74b7104e.jpg', '2024-01-17 14:25:32', '2024-01-17 14:25:47'),
(40, 2, 9, '0f27b10a662c425bf289540c679e9fe390120bc6.jpg', '2024-01-17 14:38:49', '2024-01-17 14:38:56'),
(41, 2, 9, '1c4c1203c730d7e1e31ba10505f8fce8eadc2fc3.jpg', '2024-01-17 14:38:49', '2024-01-17 14:38:56'),
(42, 2, 9, '6e0068de6d4ccee8aa9c5deb9f964114e5fd8984.jpg', '2024-01-17 14:38:49', '2024-01-17 14:38:56'),
(43, 2, 9, 'a76618c675e84deb2a7951cbe08e30a5e80ab1c1.jpg', '2024-01-17 14:38:50', '2024-01-17 14:38:56'),
(44, 2, 10, '50fffda5df7f49f2c5d5abdcd9b62e7228c86c39.jpg', '2024-01-17 14:43:28', '2024-01-17 14:43:37'),
(45, 2, 10, '95b2c75ff402b1fc9c7c4f08d63fa2ce43a55aa8.jpg', '2024-01-17 14:43:28', '2024-01-17 14:43:37'),
(46, 2, 10, '6b3fba7441fc06e32d11bb8901b8917f2b1a1052.jpg', '2024-01-17 14:43:28', '2024-01-17 14:43:37'),
(47, 2, 10, 'f89d2dec1e8977a9364969848331c9ce74f3982c.jpg', '2024-01-17 14:43:29', '2024-01-17 14:43:37'),
(48, 2, 10, '88a5cd5c2cdf65ea16fc7eeb7f5fd02f9acdc48d.jpg', '2024-01-17 14:43:29', '2024-01-17 14:43:37'),
(77, 14, 26, 'ce9d18567340499e1878d36b9e3c2ab68e6a27d0.png', '2024-02-23 18:38:00', '2024-02-23 18:38:04'),
(78, 14, 26, 'ec8c1d5e490516a86f1f451670b3127f5b1e4ec6.png', '2024-02-23 18:38:00', '2024-02-23 18:38:04'),
(79, 14, 27, '2002349e1f6fc219cc43bcb68a69d69215967c6d.png', '2024-02-23 18:43:42', '2024-02-23 18:43:46'),
(80, 14, 27, 'a60d2dc3a8a25b6497616196ba8a2b7dd13d7639.png', '2024-02-23 18:43:42', '2024-02-23 18:43:46'),
(81, 14, 28, 'eebdc14935682d19a5c0b5bb486007b1c34ff103.png', '2024-02-23 18:45:55', '2024-02-23 18:46:03'),
(82, 14, 28, '2b382560f73fb067c07d4225aec12b4865b15267.png', '2024-02-23 18:46:01', '2024-02-23 18:46:03'),
(83, 14, 29, 'cb18e260ffda73bdc01240ba605653cb12c03eca.png', '2024-02-23 18:47:39', '2024-02-23 18:47:48'),
(84, 14, 29, '8fd214d44f16b663a6c640cad5bbb184f1034952.png', '2024-02-23 18:47:45', '2024-02-23 18:47:48'),
(85, 14, 30, 'ae277490f7587d6f25cd16103ffa04b18a7a2299.png', '2024-02-23 18:50:07', '2024-02-23 18:50:16'),
(86, 14, 30, '34806b62d8eafcad6971cf3447e2193f2c86691f.png', '2024-02-23 18:50:12', '2024-02-23 18:50:16'),
(87, 14, 31, '893204d5cb976a6cfa87d90e78f8e2ed34bbf7ca.png', '2024-02-23 18:51:10', '2024-02-23 18:52:14'),
(88, 14, 31, 'a7be931d363573e0c6cb73fcdb7140473c6663e2.png', '2024-02-23 18:51:13', '2024-02-23 18:52:14'),
(89, 16, 32, 'a83f160336ba4ecc89bd1934f5c81be5784f1d72.png', '2024-02-23 19:40:55', '2024-02-23 19:40:59'),
(90, 16, 33, '3e820043baea01d488d5838655def5cef45272d9.png', '2024-02-23 19:43:04', '2024-02-23 19:43:07'),
(91, 16, 34, '994210ce1b33265286737ae5007b55eb1b25f1f3.png', '2024-02-23 19:43:16', '2024-02-23 19:45:04'),
(92, 16, 35, '7f8931d0daae0fda7008227e381e7295c54ca6e1.png', '2024-02-23 19:45:17', '2024-02-23 19:46:09'),
(93, 16, 36, '5331b0943ebcbce9b97c64279dd16e8615ebb66c.png', '2024-02-23 19:50:12', '2024-02-23 19:51:05'),
(94, 16, 37, '21e751be0e830df79d7a20f0ab498252a4946a9d.png', '2024-02-23 19:51:19', '2024-02-23 19:51:46'),
(96, 15, 38, 'e2c44875352f747dafb55aac8baee22f076f8da1.png', '2024-02-23 20:04:07', '2024-02-23 20:04:07'),
(97, 15, 39, 'e7139e1d10be373f9259db34b41344613f99aaf1.png', '2024-02-23 20:04:51', '2024-02-23 20:07:00'),
(99, 15, 41, '83820ebe63ad0f4da9f549dd604de52264f1e595.png', '2024-02-23 20:08:09', '2024-02-23 20:08:43'),
(100, 15, 40, 'aa84241619ae2ce77ee3a1e70202b8eeef9b92d3.png', '2024-02-23 20:09:51', '2024-02-23 20:09:51'),
(101, 15, 42, 'bbe3b6842a2fb83f9b25891718f2eddb951b0739.png', '2024-02-23 20:10:48', '2024-02-23 20:12:47'),
(102, 15, 43, '0c70f9a51ab857c5add4c4e717d9e3bffc5a5686.png', '2024-02-23 20:12:56', '2024-02-23 20:13:38'),
(103, 15, 44, 'b56f4edf68c659720afbdfd80c665f607bd92ed4.png', '2024-02-23 20:13:45', '2024-02-23 20:14:54'),
(104, 18, 45, 'ca854e6681727a1e3274bf3774723600788be1f8.png', '2024-02-23 21:02:48', '2024-02-23 21:04:17'),
(105, 18, 46, '34c8c3e76473d5b4f91273f188dbcd88b4b468d7.png', '2024-02-23 21:04:30', '2024-02-23 21:05:18'),
(106, 18, 47, '7f2a0ca14a9a5279ab4a6157fdba1f0843a8a3df.png', '2024-02-23 21:06:45', '2024-02-23 21:07:29'),
(107, 18, 48, '2b94e10354508c45ecb2cc039266a0d1de57b157.png', '2024-02-23 21:08:58', '2024-02-23 21:09:24'),
(108, 18, 49, 'd775ae0d27e8ad8f23a51408c784275977fd6a00.png', '2024-02-23 21:10:03', '2024-02-23 21:10:29'),
(109, 18, 50, '8eaed56d20d4075b91df59017ecd8e1f7eb7e378.png', '2024-02-23 21:12:55', '2024-02-23 21:14:03'),
(110, 18, 51, 'c705c612f2a6abb64a00b282bfb1fc5ee7855718.png', '2024-02-23 21:14:12', '2024-02-23 21:15:23'),
(111, 18, 52, 'c7aa969493095dea75f542c1c108c7a7916d4457.png', '2024-02-23 21:15:34', '2024-02-23 21:16:17'),
(113, 19, 54, '125f502ec13040eb94d07ec5a48fd9a74318a7be.png', '2024-02-23 22:34:24', '2024-02-23 22:35:55'),
(114, 19, 55, 'cc3c576d5a6a7d3daa6d76af3b8e0dbe53b89ad2.png', '2024-02-23 22:36:31', '2024-02-23 22:36:58'),
(115, 19, 56, 'f383c8f2fe4c891254bd136c2a49ed11629f4a54.png', '2024-02-23 22:37:33', '2024-02-23 22:38:09'),
(116, 19, 57, 'e9f073d7e14ad2d256473277508e8c29cb2056cb.png', '2024-02-23 22:38:28', '2024-02-23 22:39:45'),
(117, 19, 58, '94a9667060dd821d9d1eb49cb415aedbac404fb6.png', '2024-02-23 22:40:03', '2024-02-23 22:40:34'),
(118, 19, 59, '41ce87e58a61fc7901d99adaa3625237f16cf8cf.png', '2024-02-23 22:44:53', '2024-02-23 22:47:06'),
(119, 19, 60, 'adb0c4bb60892551c992c23f62e83bc3547781d2.png', '2024-02-23 22:47:15', '2024-02-23 22:47:57'),
(120, 19, 61, '257c339e5bdbe06034a103abbcd7e2ba7c33a8b4.png', '2024-02-23 22:49:57', '2024-02-23 22:50:36'),
(121, 17, 62, '0b640b613a187c113c6e97d2d375c7c36ed796b4.png', '2024-02-24 15:06:10', '2024-02-24 15:08:52'),
(122, 17, NULL, '4777825067c9cdbe7b9268e945655157c22dde1d.png', '2024-02-24 15:09:04', '2024-02-24 15:09:04'),
(123, 17, 63, '63ae0eb01b74c70a12acda70fccf1d31c48a2b5a.png', '2024-02-24 15:10:09', '2024-02-24 15:11:22'),
(124, 17, 64, 'e3c6881aa22d9acf310c0aff216638265c9ef6fb.png', '2024-02-24 15:11:46', '2024-02-24 15:12:34'),
(125, 17, 65, '8fc971265e2f796c68656539eea293dea91135a9.png', '2024-02-24 15:12:43', '2024-02-24 15:15:00'),
(126, 17, 66, 'e610915fb32fef846bb2253ae4e695537a1f2eae.png', '2024-02-24 15:15:46', '2024-02-24 15:16:42'),
(127, 17, 67, '457c0a250db362af23897d2897bf2655ada23fc3.png', '2024-02-24 15:34:53', '2024-02-24 15:37:04'),
(128, 17, 68, '811c0949006475390cf22bc89c02a1a1f4e9aaa5.png', '2024-02-24 15:37:12', '2024-02-24 15:38:37'),
(129, 17, 69, 'c6376b599f9824e4bf6f712c4cb57f2ebecb0972.png', '2024-02-24 15:40:53', '2024-02-24 15:41:49');

-- --------------------------------------------------------

--
-- Table structure for table `product_informations`
--

CREATE TABLE `product_informations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `language_id` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `summary` text COLLATE utf8mb4_unicode_ci,
  `description` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `subcategory_id` int(11) DEFAULT NULL,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci,
  `meta_description` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_informations`
--

INSERT INTO `product_informations` (`id`, `language_id`, `user_id`, `product_id`, `title`, `slug`, `category_id`, `summary`, `description`, `created_at`, `updated_at`, `subcategory_id`, `meta_keywords`, `meta_description`) VALUES
(1, 61, 2, 1, 'Set Menu - 7', 'Set-Menu---7', 52, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', '<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p>', '2024-01-16 21:38:36', '2024-01-16 21:38:36', 1, NULL, NULL),
(2, 62, 2, 1, 'قائمة الإعداد - 7', 'قائمة-الإعداد---7', 53, 'لوريم إيبسوم هو ببساطة نص وهمي من صناعة الطباعة والتنضيد. لقد كان لوريم إيبسوم هو النص الوهمي القياسي في الصناعة منذ القرن السادس عشر، عندما أخذت طابعة غير معروفة لوح الكتابة وخلطته لصنع نموذج كتاب.', '<p dir=\"rtl\">إن لوريم إيبسوم هو ببساطة نص وهمي من صناعة الطباعة والتنضيد. لقد كان لوريم إيبسوم هو النص الوهمي القياسي في الصناعة منذ القرن السادس عشر، عندما أخذت طابعة غير معروفة لوح الكتابة وخلطته لصنع نموذج كتاب.</p>', '2024-01-16 21:38:36', '2024-01-17 13:39:18', 2, NULL, NULL),
(3, 61, 2, 2, 'Grilled Chicken Burger', 'Grilled-Chicken-Burger', 50, 'Ranch dressing, grilled chicken breasts, loose leaf, salsa sauce, cheese. Chicken Cheese Burgers taste the best', '<p>is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard</p>', '2024-01-17 13:38:58', '2024-01-17 13:38:58', 7, NULL, NULL),
(4, 62, 2, 2, 'برجر دجاج مشوي', 'برجر-دجاج-مشوي', 51, 'صوص رانش، صدور دجاج مشوية، ورق سائب، صلصة صلصة، جبنة. برجر الدجاج بالجبن طعمه الأفضل', '<p dir=\"rtl\">هو ببساطة نص وهمي لصناعة الطباعة والتنضيد. لقد كان لوريم إيبسوم هو النص الوهمي القياسي في الصناعة منذ القرن السادس عشر، عندما أخذت طابعة غير معروفة لوح الكتابة وخلطته لصنع نموذج كتاب. هو ببساطة نص وهمي لصناعة الطباعة والتنضيد. لقد كان لوريم إيبسوم هو معيار الصناعة</p>', '2024-01-17 13:38:58', '2024-01-17 13:47:34', 8, NULL, NULL),
(5, 61, 2, 3, 'Beef Cheese Burger', 'Beef-Cheese-Burger', 50, 'Ground Beef, buns, split slices cheese, lettuce leaves. tomato slices.', '<p>is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s,</p>', '2024-01-17 13:47:01', '2024-01-17 13:47:01', 5, NULL, NULL),
(6, 62, 2, 3, 'برجر لحم بالجبنة', 'برجر-لحم-بالجبنة', 51, 'لحم بقري مفروم، خبز، شرائح جبن، أوراق خس. شرائح الطماطم.', '<p dir=\"rtl\">هو ببساطة نص وهمي لصناعة الطباعة والتنضيد. لقد كان لوريم إيبسوم هو النص الوهمي القياسي في الصناعة منذ القرن السادس عشر، عندما أخذت طابعة غير معروفة لوح الكتابة وخلطته لصنع نموذج كتاب. هو ببساطة نص وهمي لصناعة الطباعة والتنضيد. لقد كان لوريم إيبسوم هو النص الوهمي القياسي في هذه الصناعة منذ القرن السادس عشر،</p>', '2024-01-17 13:47:01', '2024-01-17 13:47:01', 6, NULL, NULL),
(7, 61, 2, 4, 'Regular Donut', 'Regular-Donut', 48, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text', '<p>is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s</p>', '2024-01-17 13:52:37', '2024-01-17 13:52:37', 11, NULL, NULL),
(8, 62, 2, 4, 'دونات عادية', 'دونات-عادية', 49, 'لوريم إيبسوم هو ببساطة نص وهمي من صناعة الطباعة والتنضيد. لقد كان لوريم إيبسوم هو النص الوهمي القياسي في هذه الصناعة', '<p dir=\"rtl\">هو ببساطة نص وهمي لصناعة الطباعة والتنضيد. لقد كان لوريم إيبسوم هو النص الوهمي القياسي في الصناعة منذ القرن السادس عشر، عندما أخذت طابعة غير معروفة لوح الكتابة وخلطته لصنع نموذج كتاب. هو ببساطة نص وهمي لصناعة الطباعة والتنضيد. لقد كان لوريم إيبسوم هو النص الوهمي القياسي في هذه الصناعة منذ القرن السادس عشر، عندما أخذت طابعة غير معروفة لوح الكتابة وخلطته لصنع نموذج كتاب. هو ببساطة نص وهمي في صناعة الطباعة والتنضيد. لقد كان لوريم إيبسوم هو النص الوهمي القياسي في هذه الصناعة منذ القرن السادس عشر</p>', '2024-01-17 13:52:37', '2024-01-17 13:52:37', 12, NULL, NULL),
(9, 61, 2, 5, 'Strawberry Creamed Donut', 'Strawberry-Creamed-Donut', 48, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text', '<p>is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. is simply dummy text of the printing </p>', '2024-01-17 14:11:46', '2024-01-17 14:11:46', 11, NULL, NULL),
(10, 62, 2, 5, 'دونات بكريمة الفراولة', 'دونات-بكريمة-الفراولة', 49, 'لوريم إيبسوم هو ببساطة نص وهمي من صناعة الطباعة والتنضيد. لقد كان لوريم إيبسوم هو النص الوهمي القياسي في هذه الصناعة', '<p dir=\"rtl\">هو ببساطة نص وهمي لصناعة الطباعة والتنضيد. لقد كان لوريم إيبسوم هو النص الوهمي القياسي في الصناعة منذ القرن السادس عشر، عندما أخذت طابعة غير معروفة لوح الكتابة وخلطته لصنع نموذج كتاب. هو مجرد نص وهمي للطباعة</p>', '2024-01-17 14:11:46', '2024-01-17 14:11:46', 12, NULL, NULL),
(11, 61, 2, 6, 'Milk Shakes', 'Milk-Shakes', 46, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text', '<p>is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s</p>', '2024-01-17 14:16:40', '2024-01-17 14:16:40', 15, NULL, NULL),
(12, 62, 2, 6, 'مخفوق الحليب', 'مخفوق-الحليب', 47, 'لوريم إيبسوم هو ببساطة نص وهمي من صناعة الطباعة والتنضيد. لقد كان لوريم إيبسوم هو النص الوهمي القياسي في هذه الصناعة', '<p dir=\"rtl\">هو ببساطة نص وهمي لصناعة الطباعة والتنضيد. لقد كان لوريم إيبسوم هو النص الوهمي القياسي في الصناعة منذ القرن السادس عشر، عندما أخذت طابعة غير معروفة لوح الكتابة وخلطته لصنع نموذج كتاب. هو ببساطة نص وهمي لصناعة الطباعة والتنضيد. لقد كان لوريم إيبسوم هو النص الوهمي القياسي في هذه الصناعة منذ القرن السادس عشر</p>', '2024-01-17 14:16:40', '2024-01-17 14:16:40', 16, NULL, NULL),
(13, 61, 2, 7, 'Organic Fruit Juice', 'Organic-Fruit-Juice', 46, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text', '<p>is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. is simply dummy text</p>', '2024-01-17 14:20:21', '2024-01-17 14:20:21', 13, NULL, NULL),
(14, 62, 2, 7, 'عصير فواكه عضوي', 'عصير-فواكه-عضوي', 47, 'لوريم إيبسوم هو ببساطة نص وهمي من صناعة الطباعة والتنضيد. لقد كان لوريم إيبسوم هو النص الوهمي القياسي في هذه الصناعة', '<p dir=\"rtl\">هو ببساطة نص وهمي لصناعة الطباعة والتنضيد. لقد كان لوريم إيبسوم هو النص الوهمي القياسي في الصناعة منذ القرن السادس عشر، عندما أخذت طابعة غير معروفة لوح الكتابة وخلطته لصنع نموذج كتاب. هو مجرد نص وهمي</p>', '2024-01-17 14:20:21', '2024-01-17 14:20:21', 14, NULL, NULL),
(15, 61, 2, 8, 'Set Menu - 5', 'Set-Menu---5', 52, 'Consists of egg fried rice, mixed vegetable, chicken chili onion & 2 pcs of chicken fry.', '<p>is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. is simply dummy text </p>', '2024-01-17 14:25:47', '2024-01-17 14:25:47', 3, NULL, NULL),
(16, 62, 2, 8, 'ضبط القائمة - 5', 'ضبط-القائمة---5', 53, 'يتكون من أرز مقلي بالبيض، خضار مشكلة، دجاج بالبصل والفلفل الحار و2 قطعة دجاج مقلي.', '<p dir=\"rtl\">هو ببساطة نص وهمي لصناعة الطباعة والتنضيد. لقد كان لوريم إيبسوم هو النص الوهمي القياسي في الصناعة منذ القرن السادس عشر، عندما أخذت طابعة غير معروفة لوح الكتابة وخلطته لصنع نموذج كتاب. هو ببساطة نص وهمي لصناعة الطباعة والتنضيد. لقد كان لوريم إيبسوم هو النص الوهمي القياسي في هذه الصناعة منذ القرن السادس عشر، عندما أخذت طابعة غير معروفة لوح الكتابة وخلطته لصنع نموذج كتاب. هو ببساطة نص وهمي في صناعة الطباعة والتنضيد. لقد كان لوريم إيبسوم هو النص الوهمي القياسي في الصناعة منذ القرن السادس عشر، عندما أخذت طابعة غير معروفة لوح الكتابة وخلطته لصنع نموذج كتاب. هو مجرد نص وهمي</p>', '2024-01-17 14:25:47', '2024-01-17 14:25:47', 4, NULL, NULL),
(17, 61, 2, 9, 'Orange Juice', 'Orange-Juice', 46, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text', '<p>is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500</p>', '2024-01-17 14:38:56', '2024-01-17 14:38:56', 17, NULL, NULL),
(18, 62, 2, 9, 'عصير البرتقال', 'عصير-البرتقال', 47, 'لوريم إيبسوم هو ببساطة نص وهمي من صناعة الطباعة والتنضيد. لقد كان لوريم إيبسوم هو النص الوهمي القياسي في هذه الصناعة', '<p dir=\"rtl\">هو ببساطة نص وهمي لصناعة الطباعة والتنضيد. لقد كان لوريم إيبسوم هو النص الوهمي القياسي في الصناعة منذ القرن السادس عشر، عندما أخذت طابعة غير معروفة لوح الكتابة وخلطته لصنع نموذج كتاب. هو ببساطة نص وهمي لصناعة الطباعة والتنضيد. لقد كان لوريم إيبسوم هو النص الوهمي القياسي في هذه الصناعة منذ عام 1500</p>', '2024-01-17 14:38:56', '2024-01-17 14:38:56', 18, NULL, NULL),
(19, 61, 2, 10, 'Lemon Juice', 'Lemon-Juice', 46, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text', '<p>is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. is simply dummy text of the printing and typesetting industry. </p>', '2024-01-17 14:43:37', '2024-01-17 14:43:37', 17, NULL, NULL),
(20, 62, 2, 10, 'عصير ليمون', 'عصير-ليمون', 47, 'لوريم إيبسوم هو ببساطة نص وهمي من صناعة الطباعة والتنضيد. لقد كان لوريم إيبسوم هو النص الوهمي القياسي في هذه الصناعة', '<p dir=\"rtl\">هو ببساطة نص وهمي لصناعة الطباعة والتنضيد. لقد كان لوريم إيبسوم هو النص الوهمي القياسي في الصناعة منذ القرن السادس عشر، عندما أخذت طابعة غير معروفة لوح الكتابة وخلطته لصنع نموذج كتاب. هو ببساطة نص وهمي لصناعة الطباعة والتنضيد.</p>', '2024-01-17 14:43:37', '2024-01-17 14:43:37', 18, NULL, NULL),
(37, 77, 14, 26, 'Good Bread', 'Good-Bread', 70, 'It is a long established fact that a reader will be distracted by the readable content', '<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page </p>', '2024-02-23 18:38:04', '2024-02-23 18:38:04', 45, NULL, NULL),
(38, 77, 14, 27, 'Set Menu - 1', 'Set-Menu---1', 70, 'It is a long established fact that a reader will be distracted', '<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page </p>', '2024-02-23 18:43:46', '2024-02-23 18:43:46', 45, NULL, NULL),
(39, 77, 14, 28, 'Set Menu - 5', 'Set-Menu---5', 70, 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature', '<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page </p>', '2024-02-23 18:46:03', '2024-02-23 18:46:03', 45, NULL, NULL),
(40, 77, 14, 29, 'Good Cake', 'Good-Cake', 70, 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature', '<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. </p>', '2024-02-23 18:47:48', '2024-02-23 18:48:18', 45, NULL, NULL),
(41, 77, 14, 30, 'Tasty Desert', 'Tasty-Desert', 71, 'It is a long established fact that a reader will be distracted by the readable content of a page', '<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. </p>', '2024-02-23 18:50:16', '2024-02-23 18:50:16', 50, NULL, NULL),
(42, 77, 14, 31, 'Quality Cake', 'Quality-Cake', 71, 'It is a long established fact that a reader will be distracted by the readable content of a page', '<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English.</p>', '2024-02-23 18:52:14', '2024-02-23 18:52:14', 50, NULL, NULL),
(43, 79, 16, 32, 'Hot Coffee Americano', 'Hot-Coffee-Americano', 79, 'It is a long established fact that a reader will be distracted by the readable content', '<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in th</p>', '2024-02-23 19:40:59', '2024-02-23 19:40:59', 54, NULL, NULL),
(44, 79, 16, 33, 'Milk Espresso Macchiato', 'Milk-Espresso-Macchiato', 79, 'It is a long established fact that a reader will be distracted by the readable content', '<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in th</p>', '2024-02-23 19:43:07', '2024-02-23 19:43:07', 54, NULL, NULL),
(45, 79, 16, 34, 'Iced Caramel Latte', 'Iced-Caramel-Latte', 79, 'It is a long established fact that a reader will be distracted by the readable', '<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in th</p>', '2024-02-23 19:45:04', '2024-02-23 19:45:04', 54, NULL, NULL),
(46, 79, 16, 35, 'Milk Espresso Macchiato Large', 'Milk-Espresso-Macchiato-Large', 79, 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a', '<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in th</p>', '2024-02-23 19:46:09', '2024-02-23 19:46:09', 54, NULL, NULL),
(47, 79, 16, 36, 'White Chocolate Mocha', 'White-Chocolate-Mocha', 80, 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem', '<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in th</p>', '2024-02-23 19:51:05', '2024-02-23 19:51:05', 56, NULL, NULL),
(48, 79, 16, 37, 'Black Chocolate Mocha', 'Black-Chocolate-Mocha', 80, 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point', '<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in th</p>', '2024-02-23 19:51:46', '2024-02-23 19:51:46', 56, NULL, NULL),
(49, 78, 15, 38, 'Hot Spices Pizza', 'Hot-Spices-Pizza', 75, 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is', '<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in th</p>', '2024-02-23 20:00:29', '2024-02-23 20:03:36', 61, NULL, NULL),
(50, 78, 15, 39, 'Italian Sushi Pizza', 'Italian-Sushi-Pizza', 75, 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that', '<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in th</p>', '2024-02-23 20:07:00', '2024-02-23 20:07:00', 61, NULL, NULL),
(51, 78, 15, 40, 'New Mix Pizza', 'New-Mix-Pizza', 75, 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.', '<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in th</p>', '2024-02-23 20:07:56', '2024-02-23 20:07:56', 61, NULL, NULL),
(52, 78, 15, 41, 'California Pizza', 'California-Pizza', 75, 'It is a long established fact that a reader will be distracted by the readable content of a', '<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in th</p>', '2024-02-23 20:08:43', '2024-02-23 20:08:43', 61, NULL, NULL),
(53, 78, 15, 42, 'Italian Spicy Pizza', 'Italian-Spicy-Pizza', 78, 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in th', '<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in th</p>', '2024-02-23 20:12:47', '2024-02-23 20:12:47', NULL, NULL, NULL),
(54, 78, 15, 43, 'New Sicilian Pizza', 'New-Sicilian-Pizza', 77, 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum', '<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in th</p>', '2024-02-23 20:13:38', '2024-02-23 20:13:38', NULL, NULL, NULL),
(55, 78, 15, 44, 'Spices Pizza', 'Spices-Pizza', 76, 'It is a long established fact that a reader will be distracted by the readable content Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in th', '<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in th</p>', '2024-02-23 20:14:54', '2024-02-23 20:14:54', NULL, NULL, NULL),
(56, 81, 18, 45, 'Organic Vegetables', 'Organic-Vegetables', 87, 'It is a long established fact that a reader will be distracted by the readable content of a page', '<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in th</p>', '2024-02-23 21:04:17', '2024-02-23 21:04:17', 62, NULL, NULL),
(57, 81, 18, 46, 'Natural Fresh Fruits', 'Natural-Fresh-Fruits', 88, 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.', '<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in th</p>', '2024-02-23 21:05:18', '2024-02-23 21:05:18', 64, NULL, NULL),
(58, 81, 18, 47, 'Mixed Vegetables', 'Mixed-Vegetables', 87, 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.', '<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in th</p>', '2024-02-23 21:07:29', '2024-02-23 21:07:29', 62, NULL, NULL),
(59, 81, 18, 48, 'Natural Fresh Meat', 'Natural-Fresh-Meat', 87, 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.', '<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in th</p>', '2024-02-23 21:09:24', '2024-02-23 21:09:24', 62, NULL, NULL),
(60, 81, 18, 49, 'French Cooking Oil', 'French-Cooking-Oil', 87, 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.', '<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in th</p>', '2024-02-23 21:10:29', '2024-02-23 21:10:29', 62, NULL, NULL),
(61, 81, 18, 50, 'Pet Food Package', 'Pet-Food-Package', 87, 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.', '<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in th</p>', '2024-02-23 21:14:03', '2024-02-23 21:14:03', 63, NULL, NULL),
(62, 81, 18, 51, 'Pet Fruits Package', 'Pet-Fruits-Package', 88, 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.', '<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in th</p>', '2024-02-23 21:15:23', '2024-02-23 21:15:23', 64, NULL, NULL),
(63, 81, 18, 52, 'Food Bag Package', 'Food-Bag-Package', 90, 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.', '<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in th</p>', '2024-02-23 21:16:17', '2024-02-23 21:16:17', NULL, NULL, NULL),
(65, 82, 19, 54, 'Vanilla Cold Coffee', 'Vanilla-Cold-Coffee', 91, 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.', '<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in th</p>', '2024-02-23 22:35:55', '2024-02-23 22:35:55', 65, NULL, NULL),
(66, 82, 19, 55, 'Cone Ice Cream', 'Cone-Ice-Cream', 91, 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.', '<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in th</p>', '2024-02-23 22:36:58', '2024-02-23 22:36:58', 65, NULL, NULL),
(67, 82, 19, 56, 'Chocolate Ice Cream', 'Chocolate-Ice-Cream', 91, 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.', '<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in th</p>', '2024-02-23 22:38:09', '2024-02-23 22:38:09', 65, NULL, NULL),
(68, 82, 19, 57, 'Vanilla & Chocolate  Ice Cream', 'Vanilla-&-Chocolate-Ice-Cream', 91, 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.', '<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in th</p>', '2024-02-23 22:39:45', '2024-02-23 22:39:45', 65, NULL, NULL),
(69, 82, 19, 58, 'Orange Juice', 'Orange-Juice', 92, 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.', '<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in th</p>', '2024-02-23 22:40:34', '2024-02-23 22:40:34', 66, NULL, NULL),
(70, 82, 19, 59, 'Pure Fruits Juice', 'Pure-Fruits-Juice', 92, 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.', '<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in th</p>', '2024-02-23 22:47:06', '2024-02-23 22:47:06', 66, NULL, NULL),
(71, 82, 19, 60, 'Color Ice Cream', 'Color-Ice-Cream', 91, 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.', '<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in th</p>', '2024-02-23 22:47:57', '2024-02-23 22:47:57', NULL, NULL, NULL),
(72, 82, 19, 61, 'Chocolate Shake', 'Chocolate-Shake', 93, 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.', '<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in th</p>', '2024-02-23 22:50:36', '2024-02-23 22:50:36', 67, NULL, NULL),
(73, 80, 17, 62, 'A pain reliever and fever reducer often used to alleviate mild to moderate pain', 'A-pain-reliever-and-fever-reducer-often-used-to-alleviate-mild-to-moderate-pain', 83, 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.', '<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy.</p>', '2024-02-24 15:08:52', '2024-02-24 15:09:47', 69, NULL, NULL),
(74, 80, 17, 63, 'An opioid analgesic often combined with other medications such as acetaminophen', 'An-opioid-analgesic-often-combined-with-other-medications-such-as-acetaminophen', 83, 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.', '<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy.</p>', '2024-02-24 15:11:22', '2024-02-24 15:11:22', 69, NULL, NULL),
(75, 80, 17, 64, 'A potent NSAID used to relieve pain, reduce inflammation, and treat conditions such as arthritis', 'A-potent-NSAID-used-to-relieve-pain,-reduce-inflammation,-and-treat-conditions-such-as-arthritis', 83, 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.', '<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy.</p>', '2024-02-24 15:12:34', '2024-02-24 15:12:34', 69, NULL, NULL),
(76, 80, 17, 65, 'Protein powder mockup good  for bodybuilder', 'Protein-powder-mockup-good-for-bodybuilder', 83, 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.', '<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by acciden</p>', '2024-02-24 15:15:00', '2024-02-24 15:15:00', 69, NULL, NULL),
(77, 80, 17, 66, 'A semi-synthetic opioid analgesic used to relieve moderate to severe pain. It is often combined with other medications such as acetaminophen', 'A-semi-synthetic-opioid-analgesic-used-to-relieve-moderate-to-severe-pain.-It-is-often-combined-with-other-medications-such-as-acetaminophen', 83, 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.', '<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by acciden</p>', '2024-02-24 15:16:42', '2024-02-24 15:16:42', 70, NULL, NULL),
(78, 80, 17, 67, 'A synthetic opioid analgesic used to treat moderate to moderately severe pain', 'A-synthetic-opioid-analgesic-used-to-treat-moderate-to-moderately-severe-pain', 86, 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.', '<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by acciden</p>', '2024-02-24 15:37:04', '2024-02-24 15:37:04', 73, NULL, NULL),
(79, 80, 17, 68, 'A strong opioid analgesic used to treat severe pain, particularly pain associated with surgery, cancer, or terminal illnesses.', 'A-strong-opioid-analgesic-used-to-treat-severe-pain,-particularly-pain-associated-with-surgery,-cancer,-or-terminal-illnesses.', 85, 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.', '<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by acciden</p>', '2024-02-24 15:38:37', '2024-02-24 15:38:37', 72, NULL, NULL),
(80, 80, 17, 69, 'A potent NSAID used to relieve pain, reduce inflammation, and treat conditions such as arthritis, migraines, and menstrual cramps.', 'A-potent-NSAID-used-to-relieve-pain,-reduce-inflammation,-and-treat-conditions-such-as-arthritis,-migraines,-and-menstrual-cramps.', 84, 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.', '<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by acciden</p>', '2024-02-24 15:41:49', '2024-02-24 15:41:49', 71, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `product_orders`
--

CREATE TABLE `product_orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `membership_id` int(11) NOT NULL,
  `billing_country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_fname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_lname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_country_code` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_fname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_lname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_country_code` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total` decimal(11,2) DEFAULT NULL,
  `method` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gateway_type` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency_code_position` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency_symbol` blob,
  `currency_symbol_position` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `token_no` int(11) DEFAULT NULL,
  `shipping_method` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_charge` decimal(11,2) DEFAULT NULL,
  `postal_code` text COLLATE utf8mb4_unicode_ci,
  `postal_code_status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '1 - post code based delivery enabled, 0 - post code based delivery disabled',
  `payment_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `txnid` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `charge_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `invoice_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `receipt` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_notes` text COLLATE utf8mb4_unicode_ci,
  `completed` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'no',
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `serving_method` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pick_up_date` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pick_up_time` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `waiter_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `table_number` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tax` decimal(11,2) NOT NULL DEFAULT '0.00',
  `coupon` decimal(11,2) NOT NULL DEFAULT '0.00',
  `delivery_date` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delivery_time_start` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delivery_time_end` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `conversation_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_orders`
--

INSERT INTO `product_orders` (`id`, `customer_id`, `user_id`, `membership_id`, `billing_country`, `billing_fname`, `billing_lname`, `billing_address`, `billing_city`, `billing_email`, `billing_country_code`, `billing_number`, `shipping_country`, `shipping_fname`, `shipping_lname`, `shipping_address`, `shipping_city`, `shipping_email`, `shipping_country_code`, `shipping_number`, `total`, `method`, `gateway_type`, `currency_code`, `currency_code_position`, `currency_symbol`, `currency_symbol_position`, `order_number`, `token_no`, `shipping_method`, `shipping_charge`, `postal_code`, `postal_code_status`, `payment_status`, `order_status`, `txnid`, `charge_id`, `invoice_number`, `created_at`, `updated_at`, `receipt`, `order_notes`, `completed`, `type`, `serving_method`, `pick_up_date`, `pick_up_time`, `waiter_name`, `table_number`, `tax`, `coupon`, `delivery_date`, `delivery_time_start`, `delivery_time_end`, `conversation_id`) VALUES
(5, 1, 2, 96, NULL, 'Briar Keith', NULL, NULL, NULL, 'kedufip@mailinator.com', '+7840', '0123456789', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '15.00', 'paypal', 'online', 'USD', 'right', 0x24, 'left', 'l7fa-1705831260', 5, NULL, NULL, NULL, 0, 'Completed', 'pending', '7AJ97857MV9918053', 'PAYID-MWWOWXQ6JY29121M68753424', 'yO1z1705831279.pdf', '2024-01-21 08:01:00', '2024-01-21 08:01:21', NULL, NULL, 'no', 'website', 'on_table', NULL, NULL, NULL, '1', '0.00', '0.00', NULL, NULL, NULL, NULL),
(6, 1, 2, 96, NULL, 'Blake Lawrence', NULL, NULL, NULL, 'rerut@mailinator.com', '+93', '0123456789', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10.00', 'stripe', 'online', 'USD', 'right', 0x24, 'left', 'qPHT-1705832486', 6, NULL, NULL, NULL, 0, 'Completed', 'pending', 'txn_LBc5cVY71705832486', 'ch_scouFkNJv1705832486', 'LNUg1705832487.pdf', '2024-01-21 08:21:26', '2024-01-21 08:21:28', NULL, NULL, 'no', 'website', 'on_table', NULL, NULL, NULL, '2', '0.00', '0.00', NULL, NULL, NULL, NULL),
(7, 1, 2, 96, NULL, 'Sheila Travis', NULL, NULL, NULL, 'hohiko@mailinator.com', '+213', '0123456789', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '21.00', 'stripe', 'online', 'USD', 'right', 0x24, 'left', '4Sya-1705832652', NULL, NULL, NULL, NULL, 0, 'Completed', 'pending', 'txn_R5Tb40GJ1705832652', 'ch_suKvrMmb91705832652', 'rXsQ1705832653.pdf', '2024-01-21 08:24:12', '2024-01-21 08:24:14', NULL, NULL, 'no', 'qr', 'pick_up', '21/01/2024', '12:30 PM', NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL),
(8, 1, 2, 96, NULL, 'Lysandra Pugh', NULL, NULL, NULL, 'rylimedef@mailinator.com', '+355', '0123456789', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '8.00', 'authorize.net', 'online', 'USD', 'right', 0x24, 'left', 'YtBY-1705833358', NULL, NULL, NULL, NULL, 0, 'Completed', 'pending', 'txn_UdujNwDq1705833358', 'ch_R6XX4Ulor1705833358', 'PvlG1705833360.pdf', '2024-01-21 08:35:58', '2024-01-21 08:36:00', NULL, NULL, 'no', 'website', 'pick_up', '22/01/2024', '05:30 PM', NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL),
(9, 1, 2, 96, 'Sunt quis eum placea', 'Avye Chaney', 'Jolene Edwards', 'Qui provident itaqu', 'Esse vel quaerat re', 'ridyzu@mailinator.com', '+93', '0321456987', 'Sunt quis eum placea', 'Avye Chaney', 'Jolene Edwards', 'Qui provident itaqu', 'Esse vel quaerat re', 'ridyzu@mailinator.com', '+93', '0321456987', '10.00', 'Offline Gateway 2', 'offline', 'USD', 'right', 0x24, 'left', 'miTL-1705835199', NULL, NULL, '1.00', 'Scarsdale - 10583', 1, 'Pending', 'pending', 'txn_TAjbvZGo1705835199', 'ch_YcdHC1JL01705835199', 'BY241705835199.pdf', '2024-01-21 09:06:39', '2024-01-21 09:06:39', NULL, NULL, 'no', 'website', 'home_delivery', NULL, NULL, NULL, NULL, '0.00', '0.00', '22/01/2024', '07:00 AM', '05:00 PM', NULL),
(11, NULL, 2, 96, NULL, 'loremipsum', NULL, NULL, NULL, 'hixutotos@mailinator.com', NULL, '0123654789', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '6.00', 'On Cash', NULL, 'USD', 'right', 0x24, 'left', 'MipB-1705836249', 7, NULL, NULL, NULL, 0, 'Completed', 'pending', NULL, NULL, 'OhOU1705836249.pdf', '2024-01-20 22:24:09', '2024-01-20 22:24:10', NULL, NULL, 'no', 'pos', 'on_table', NULL, NULL, NULL, '1', '0.00', '0.00', NULL, NULL, NULL, NULL),
(12, NULL, 2, 96, NULL, 'mate', NULL, NULL, NULL, 'wygun@mailinator.com', NULL, '78945612301', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '20.00', 'On Cash', NULL, 'USD', 'right', 0x24, 'left', 'iDFa-1705836333', NULL, NULL, NULL, NULL, 0, 'Completed', 'pending', NULL, NULL, 'Ried1705836333.pdf', '2024-01-20 22:25:33', '2024-01-20 22:25:33', NULL, NULL, 'no', 'pos', 'pick_up', '01/21/2024', '07:00 PM', NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL),
(13, NULL, 2, 117, NULL, 'Azim Ahmed', NULL, NULL, NULL, 'azimahmed11041@gmail.com', '+880', '01775892197', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '38.00', 'iyzico', 'online', 'TRY', 'right', 0x24, 'left', 'YjWy-1728806574', 8, NULL, NULL, NULL, 0, 'Pending', 'pending', 'txn_4EVYXHxT1728806574', 'ch_w6EhioyTb1728806574', NULL, '2024-10-13 06:02:54', '2024-10-13 06:03:46', NULL, 'fghdfghf', 'no', 'website', 'on_table', NULL, NULL, 'hdfghdfghh', '7', '0.00', '0.00', NULL, NULL, NULL, '9999670b7eae144644.18434033'),
(14, NULL, 2, 117, NULL, 'Azim Ahmed', NULL, NULL, NULL, 'azimahmed11041@gmail.com', '+880', '01775892197', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '16.00', 'iyzico', 'online', 'TRY', 'right', 0x24, 'left', 'SOab-1728809720', 9, NULL, NULL, NULL, 0, 'Pending', 'pending', 'txn_BaT95oCu1728809720', 'ch_k4u1fWtzj1728809720', NULL, '2024-10-13 06:55:20', '2024-10-13 06:55:57', NULL, 'gfdgdfg', 'no', 'qr', 'on_table', NULL, NULL, '4ertgre', '5', '0.00', '0.00', NULL, NULL, NULL, '9999670b8af9055846.47331853');

-- --------------------------------------------------------

--
-- Table structure for table `product_reviews`
--

CREATE TABLE `product_reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `review` int(11) DEFAULT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `psub_categories`
--

CREATE TABLE `psub_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `language_id` int(11) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `is_feature` tinyint(4) NOT NULL DEFAULT '0',
  `indx` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `psub_categories`
--

INSERT INTO `psub_categories` (`id`, `user_id`, `language_id`, `category_id`, `name`, `slug`, `status`, `is_feature`, `indx`, `created_at`, `updated_at`) VALUES
(1, 2, 61, 52, 'Individual', 'Individual', 1, 1, '65a7ab269af5a', '2024-01-16 21:25:42', '2024-01-17 14:32:27'),
(2, 2, 62, 53, 'فردي', 'فردي', 1, 1, '65a7ab269af5a', '2024-01-16 21:25:42', '2024-01-17 14:32:27'),
(3, 2, 61, 52, 'Family', 'Family', 1, 1, '65a7ab429b36f', '2024-01-16 21:26:10', '2024-01-17 14:32:25'),
(4, 2, 62, 53, 'عائلة', 'عائلة', 1, 1, '65a7ab429b36f', '2024-01-16 21:26:10', '2024-01-17 14:32:25'),
(5, 2, 61, 50, 'Beef Burger', 'Beef-Burger', 1, 1, '65a7ab737dd1a', '2024-01-16 21:26:59', '2024-01-17 14:32:23'),
(6, 2, 62, 51, 'برجر لحم بقري', 'برجر-لحم-بقري', 1, 1, '65a7ab737dd1a', '2024-01-16 21:26:59', '2024-01-17 14:32:23'),
(7, 2, 61, 50, 'Chicken Burger', 'Chicken-Burger', 1, 1, '65a7abb1586e0', '2024-01-16 21:28:01', '2024-01-17 14:32:21'),
(8, 2, 62, 51, 'برغر الدجاج', 'برغر-الدجاج', 1, 1, '65a7abb1586e0', '2024-01-16 21:28:01', '2024-01-17 14:32:21'),
(9, 2, 61, 48, 'Ice Creams', 'Ice-Creams', 1, 1, '65a7abd1b90bd', '2024-01-16 21:28:33', '2024-01-17 14:32:20'),
(10, 2, 62, 49, 'مثلجات', 'مثلجات', 1, 1, '65a7abd1b90bd', '2024-01-16 21:28:33', '2024-01-17 14:32:20'),
(11, 2, 61, 48, 'Donuts', 'Donuts', 1, 1, '65a7abeb3c698', '2024-01-16 21:28:59', '2024-01-17 14:32:18'),
(12, 2, 62, 49, 'الكعك', 'الكعك', 1, 1, '65a7abeb3c698', '2024-01-16 21:28:59', '2024-01-17 14:32:18'),
(13, 2, 61, 46, 'Soft Drinks', 'Soft-Drinks', 1, 1, '65a7ac09cc8b8', '2024-01-16 21:29:29', '2024-01-17 14:32:12'),
(14, 2, 62, 47, 'المشروبات الغازية', 'المشروبات-الغازية', 1, 1, '65a7ac09cc8b8', '2024-01-16 21:29:29', '2024-01-17 14:32:12'),
(15, 2, 61, 46, 'Shakes', 'Shakes', 1, 1, '65a7ac21a36e7', '2024-01-16 21:29:53', '2024-01-17 14:32:11'),
(16, 2, 62, 47, 'يهز', 'يهز', 1, 1, '65a7ac21a36e7', '2024-01-16 21:29:53', '2024-01-17 14:32:11'),
(17, 2, 61, 46, 'Juice', 'Juice', 1, 1, '65a89c31915de', '2024-01-17 14:34:09', '2024-01-17 14:34:12'),
(18, 2, 62, 47, 'عصير', 'عصير', 1, 1, '65a89c31915de', '2024-01-17 14:34:09', '2024-01-17 14:34:12'),
(45, 14, 77, 70, 'Family', 'Family', 1, 1, '65d99afdeabb4', '2024-02-23 18:30:05', '2024-02-23 18:30:08'),
(47, 14, 77, 70, 'Individual', 'Individual', 1, 1, '65d99bb28d8b8', '2024-02-23 18:33:06', '2024-02-23 18:33:10'),
(48, 14, 77, 72, 'Beef Burger', 'Beef-Burger', 1, 1, '65d99bc98be00', '2024-02-23 18:33:29', '2024-02-23 18:34:03'),
(49, 14, 77, 72, 'Chicken Burger', 'Chicken-Burger', 1, 1, '65d99bd8accd9', '2024-02-23 18:33:44', '2024-02-23 18:34:02'),
(50, 14, 77, 71, 'Cake', 'Cake', 1, 1, '65d99be6139c3', '2024-02-23 18:33:58', '2024-02-23 18:34:00'),
(54, 16, 79, 79, 'Chocolate Coffee', 'Chocolate-Coffee', 1, 1, '65d9a5fe4c85a', '2024-02-23 19:17:02', '2024-02-23 19:36:15'),
(55, 16, 79, 79, 'Could Coffee', 'Could-Coffee', 1, 1, '65d9a60923187', '2024-02-23 19:17:13', '2024-02-23 19:36:27'),
(56, 16, 79, 80, 'Honey Coffee', 'Honey-Coffee', 1, 1, '65d9a61334fa9', '2024-02-23 19:17:23', '2024-02-23 19:36:40'),
(57, 16, 79, 80, 'Milk Shake Coffee', 'Milk-Shake-Coffee', 1, 1, '65d9a61e1db43', '2024-02-23 19:17:34', '2024-02-23 19:36:49'),
(61, 15, 78, 75, 'Margherita Pizza', 'Margherita-Pizza', 1, 1, '65d9b06a59a02', '2024-02-23 20:01:30', '2024-02-23 20:03:27'),
(62, 18, 81, 87, 'Leafy greens', 'Leafy-greens', 1, 1, '65d9be2a21902', '2024-02-23 21:00:10', '2024-02-23 21:00:45'),
(63, 18, 81, 87, 'Cruciferous vegetables', 'Cruciferous-vegetables', 1, 1, '65d9be35b3a92', '2024-02-23 21:00:21', '2024-02-23 21:00:43'),
(64, 18, 81, 88, 'Citrus fruits', 'Citrus-fruits', 1, 1, '65d9be479d53c', '2024-02-23 21:00:39', '2024-02-23 21:00:41'),
(65, 19, 82, 91, 'Vanilla', 'Vanilla', 1, 1, '65d9c5368dcbc', '2024-02-23 21:30:14', '2024-02-23 22:33:59'),
(66, 19, 82, 92, 'Fruit Juice', 'Fruit-Juice', 1, 1, '65d9c54e30b1b', '2024-02-23 21:30:38', '2024-02-23 21:30:41'),
(67, 19, 82, 93, 'Gelato', 'Gelato', 1, 1, '65d9c589016f4', '2024-02-23 21:31:37', '2024-02-23 21:31:45'),
(68, 19, 82, 91, 'Chocolate', 'Chocolate', 1, 1, '65d9d95d5057a', '2024-02-23 22:56:13', '2024-02-23 22:56:15'),
(69, 17, 80, 83, 'Thiazide Diuretics', 'Thiazide-Diuretics', 1, 1, '65dabbe595387', '2024-02-24 15:02:45', '2024-02-24 15:04:59'),
(70, 17, 80, 83, 'Loop Diuretics', 'Loop-Diuretics', 1, 1, '65dabbf9959fa', '2024-02-24 15:03:05', '2024-02-24 15:04:56'),
(71, 17, 80, 84, 'Glucocorticoids', 'Glucocorticoids', 1, 1, '65dabc25acb14', '2024-02-24 15:03:49', '2024-02-24 15:04:54'),
(72, 17, 80, 85, 'Penicillins', 'Penicillins', 1, 1, '65dabc37cee8f', '2024-02-24 15:04:07', '2024-02-24 15:04:52'),
(73, 17, 80, 86, 'Opioids', 'Opioids', 1, 1, '65dabc6135094', '2024-02-24 15:04:49', '2024-02-24 15:04:51');

-- --------------------------------------------------------

--
-- Table structure for table `push_subscriptions`
--

CREATE TABLE `push_subscriptions` (
  `id` int(10) UNSIGNED NOT NULL,
  `subscribable_id` int(11) DEFAULT NULL,
  `subscribable_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `endpoint` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `public_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `auth_token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content_encoding` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `reservation_inputs`
--

CREATE TABLE `reservation_inputs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `language_id` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL,
  `type` tinyint(4) DEFAULT NULL COMMENT '1-text, 2-select, 3-checkbox, 4-textarea, 5-datepicker, 6-timepicker',
  `label` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `placeholder` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `required` tinyint(4) NOT NULL DEFAULT '0' COMMENT '1 - required, 0 - optional',
  `order_number` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reservation_inputs`
--

INSERT INTO `reservation_inputs` (`id`, `language_id`, `user_id`, `type`, `label`, `name`, `placeholder`, `required`, `order_number`, `created_at`, `updated_at`) VALUES
(1, 61, 2, 1, 'Number of Persons', 'Number_of_Persons', 'Enter Number Of Persons', 1, 1, '2024-01-17 17:07:07', '2024-01-17 17:10:09'),
(2, 61, 2, 5, 'Check-in-Date', 'Check-in-Date', 'Enter Check-in-Date', 1, 2, '2024-01-17 17:07:52', '2024-01-17 17:07:52'),
(3, 61, 2, 6, 'Check-in-Time', 'Check-in-Time', 'Enter Check-in-Time', 1, 3, '2024-01-17 17:08:31', '2024-01-17 17:08:31'),
(4, 61, 2, 1, 'Phone', 'Phone', 'Enter Phone Number', 1, 4, '2024-01-17 17:09:34', '2024-01-17 17:09:34');

-- --------------------------------------------------------

--
-- Table structure for table `reservation_input_options`
--

CREATE TABLE `reservation_input_options` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `reservation_input_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permissions` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `permissions`, `created_at`, `updated_at`) VALUES
(7, 'Delivery Manager', '[\"Dashboard\",\"Order Management\"]', '2020-09-24 00:13:52', '2021-05-21 05:28:11'),
(8, 'Kitchen Manager', '[\"Dashboard\",\"Table Reservation\",\"Product Management\",\"Order Management\"]', '2020-09-28 11:23:56', '2020-12-31 05:45:18');

-- --------------------------------------------------------

--
-- Table structure for table `seos`
--

CREATE TABLE `seos` (
  `id` int(11) NOT NULL,
  `language_id` int(11) DEFAULT NULL,
  `home_meta_keywords` text,
  `home_meta_description` text,
  `profiles_meta_keywords` text,
  `profiles_meta_description` text,
  `pricing_meta_keywords` text,
  `pricing_meta_description` text,
  `blogs_meta_keywords` text,
  `blogs_meta_description` text,
  `faqs_meta_keywords` text,
  `faqs_meta_description` text,
  `contact_meta_keywords` text,
  `contact_meta_description` text,
  `login_meta_keywords` text,
  `login_meta_description` text,
  `forget_password_meta_keywords` text,
  `forget_password_meta_description` text,
  `checkout_meta_keywords` text,
  `checkout_meta_description` text,
  `about_us_meta_keywords` text,
  `about_us_meta_description` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `seos`
--

INSERT INTO `seos` (`id`, `language_id`, `home_meta_keywords`, `home_meta_description`, `profiles_meta_keywords`, `profiles_meta_description`, `pricing_meta_keywords`, `pricing_meta_description`, `blogs_meta_keywords`, `blogs_meta_description`, `faqs_meta_keywords`, `faqs_meta_description`, `contact_meta_keywords`, `contact_meta_description`, `login_meta_keywords`, `login_meta_description`, `forget_password_meta_keywords`, `forget_password_meta_description`, `checkout_meta_keywords`, `checkout_meta_description`, `about_us_meta_keywords`, `about_us_meta_description`) VALUES
(1, 176, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `serving_methods`
--

CREATE TABLE `serving_methods` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gateways` text COLLATE utf8mb4_unicode_ci,
  `serial_number` int(11) NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci,
  `website_menu` tinyint(4) NOT NULL DEFAULT '1' COMMENT '0 - deactive on website menu, 1 - active on website menu',
  `qr_menu` tinyint(4) NOT NULL DEFAULT '1' COMMENT '0 - deactive on qr menu, 1 - active on qr menu',
  `qr_payment` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0 - deactive, 1 - active',
  `pos` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1 - active for POS, 0 - deactive for POS'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `serving_methods`
--

INSERT INTO `serving_methods` (`id`, `user_id`, `name`, `value`, `gateways`, `serial_number`, `note`, `website_menu`, `qr_menu`, `qr_payment`, `pos`) VALUES
(4, 2, 'On Table', 'on_table', '[\"1\",\"2\",\"3\"]', 1, NULL, 1, 1, 0, 1),
(5, 2, 'Pick Up', 'pick_up', '[\"1\",\"2\",\"3\"]', 2, NULL, 1, 1, 0, 1),
(6, 2, 'Home Delivery', 'home_delivery', '[\"1\",\"2\",\"3\"]', 3, NULL, 1, 1, 0, 1),
(37, 14, 'On Table', 'on_table', NULL, 1, NULL, 1, 1, 0, 1),
(38, 14, 'Pick Up', 'pick_up', NULL, 2, NULL, 1, 1, 0, 1),
(39, 14, 'Home Delivery', 'home_delivery', NULL, 3, NULL, 1, 1, 0, 1),
(40, 15, 'On Table', 'on_table', NULL, 1, NULL, 1, 1, 0, 1),
(41, 15, 'Pick Up', 'pick_up', NULL, 2, NULL, 1, 1, 0, 1),
(42, 15, 'Home Delivery', 'home_delivery', NULL, 3, NULL, 1, 1, 0, 1),
(43, 16, 'On Table', 'on_table', NULL, 1, NULL, 1, 1, 0, 1),
(44, 16, 'Pick Up', 'pick_up', NULL, 2, NULL, 1, 1, 0, 1),
(45, 16, 'Home Delivery', 'home_delivery', NULL, 3, NULL, 1, 1, 0, 1),
(46, 17, 'On Table', 'on_table', NULL, 1, NULL, 1, 1, 0, 1),
(47, 17, 'Pick Up', 'pick_up', NULL, 2, NULL, 1, 1, 0, 1),
(48, 17, 'Home Delivery', 'home_delivery', NULL, 3, NULL, 1, 1, 0, 1),
(49, 18, 'On Table', 'on_table', NULL, 1, NULL, 1, 1, 0, 1),
(50, 18, 'Pick Up', 'pick_up', NULL, 2, NULL, 1, 1, 0, 1),
(51, 18, 'Home Delivery', 'home_delivery', NULL, 3, NULL, 1, 1, 0, 1),
(52, 19, 'On Table', 'on_table', NULL, 1, NULL, 1, 1, 0, 1),
(53, 19, 'Pick Up', 'pick_up', NULL, 2, NULL, 1, 1, 0, 1),
(54, 19, 'Home Delivery', 'home_delivery', NULL, 3, NULL, 1, 1, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `shipping_charges`
--

CREATE TABLE `shipping_charges` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `language_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `text` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `charge` decimal(11,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `free_delivery_amount` decimal(11,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shipping_charges`
--

INSERT INTO `shipping_charges` (`id`, `title`, `language_id`, `user_id`, `text`, `charge`, `created_at`, `updated_at`, `free_delivery_amount`) VALUES
(1, 'Inside Dhaka', 61, 2, 'custom', '1.25', '2024-01-17 17:38:55', '2024-01-17 17:38:55', '40.00'),
(2, 'Urgent Delivery', 61, 2, 'Order & your order will be arrived to your doorstep', '5.00', '2024-01-17 17:39:15', '2024-01-17 17:39:15', NULL),
(3, 'Within 4 days', 61, 2, 'Come & grab your orders from Superv Restaurant', '2.00', '2024-01-17 17:39:42', '2024-01-17 17:39:42', NULL),
(4, 'Within 2 days', 61, 2, 'Come & take a seat in Superv Restaurant', '1.00', '2024-01-17 17:40:05', '2024-01-17 17:40:05', '45.00');

-- --------------------------------------------------------

--
-- Table structure for table `sitemaps`
--

CREATE TABLE `sitemaps` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sitemap_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `filename` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `language_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `text` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `button_text` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `button_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `button_text1` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `button_url1` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bg_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `serial_number` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `title_color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text_color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `button_color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title_font_size` int(11) NOT NULL DEFAULT '60',
  `text_font_size` int(11) NOT NULL DEFAULT '18',
  `button_text_font_size` int(11) NOT NULL DEFAULT '14',
  `button_text1_font_size` int(11) NOT NULL DEFAULT '14'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `language_id`, `user_id`, `text`, `title`, `button_text`, `button_url`, `button_text1`, `button_url1`, `image`, `bg_image`, `serial_number`, `created_at`, `updated_at`, `title_color`, `text_color`, `button_color`, `title_font_size`, `text_font_size`, `button_text_font_size`, `button_text1_font_size`) VALUES
(1, 61, 2, 'Nunc molestie mi nunc, nec accumsan libero dignissim sit amet. Fusce sit amet tincidunt metus. Nunc eu risus sus-cipit massa dapibu.', 'Mexican Chicken Cheese Toaster Pizza', 'Add to Cart', '/fastifo/items', 'Book a Table', '/fastifo/reservations/form', '030574148d2429052e8582fd18b0ddc860c6fab3.png', '544cff12d94c32b8f0409799654f1ba901bec56a.jpg', 1, '2024-01-16 18:34:51', '2024-01-30 19:56:00', 'FFFFFF', 'FFFFFF', 'FFFFFF', 60, 18, 14, 14),
(2, 61, 2, 'Nunc molestie mi nunc, nec accumsan libero dignissim sit amet. Fusce sit amet tincidunt metus. Nunc eu risus sus-cipit massa dapibu.', 'Burger King Grilled Chicken Burger...', 'Add to Cart', '/fastifo/items', 'Book a Table', '/fastifo/reservations/form', '32c099fa8f17f02fccf67a4d6180f469094d601f.png', 'c9b01e5c173a6ca422cb925e222b829f4156c6b9.jpg', 2, '2024-01-16 18:42:31', '2024-01-30 19:55:52', 'FFFFFF', 'FFFFFF', 'FFFFFF', 60, 18, 14, 14),
(3, 61, 2, 'Nunc molestie mi nunc, nec accumsan libero dignissim sit amet. Fusce sit amet tincidunt metus. Nunc eu risus sus-cipit massa dapibu.', 'Mexican Grilled Chicken Sub Sandwich...', 'Add to Cart', '/fastifo/menus', 'Book a Table', '/fastifo/reservations/form', '6f04da3c1a5ea8a27b4ed3d5270877bed8139fa3.png', '8475e0c70cd62d9d709b3a0b56f199c1a1c71f92.jpg', 3, '2024-01-16 18:43:48', '2024-01-30 19:55:40', 'FFFFFF', 'FFFFFF', 'FFFFFF', 60, 18, 14, 14),
(4, 62, 2, 'هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها. ولذلك يتم استخدام طريقة لوريم إيبسوم لأنها تعطي توزيعاَ طبيعياَ -إلى حد ما- للأحرف', 'بيتزا محمصة دجاج مكسيكي بالجبن', 'أضف إلى السلة', '/fastifo/items', 'احجز طاولة', '/fastifo/reservations/form', 'c19da95072ce1b96db7bee16507618364618bc19.png', '3db436f2017820c21f06019dbb39f7fd917d5296.jpg', 1, '2024-01-20 22:32:06', '2024-01-30 19:58:38', 'FFFFFF', 'FFFFFF', 'FFFFFF', 60, 18, 14, 14),
(5, 62, 2, 'هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها. ولذلك يتم استخدام طريقة لوريم إيبسوم لأنها تعطي توزيعاَ طبيعياَ -إلى حد ما- للأحرف', 'صب ساندوتش دجاج مشوي مكسيكي ...', 'أضف إلى السلة', '/fastifo/menus', 'احجز طاولة', '/fastifo/reservations/form', '7872d877a4660894e4bd19755ea372de57489980.png', '0956b7f80191f6d9a80bf2913dc3f59144bfd47d.jpg', 3, '2024-01-20 22:34:04', '2024-01-30 19:59:49', 'FFFFFF', 'FFFFFF', 'FFFFFF', 60, 18, 14, 14),
(6, 62, 2, 'هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها. ولذلك يتم استخدام طريقة لوريم إيبسوم لأنها تعطي توزيعاَ طبيعياَ -إلى حد ما- للأحرف', 'برجر كنج برجر دجاج مشوي ...', 'أضف إلى السلة', '/fastifo/items', 'احجز طاولة', '/fastifo/reservations/form', 'ef3452cb21e3f6077335e70504fb52458652f58e.png', 'a71a1f3207f2e88b9965673dbc6cfa42f820e3a6.jpg', 2, '2024-01-20 22:36:08', '2024-01-30 19:57:13', 'FFFFFF', 'FFFFFF', 'FFFFFF', 60, 18, 14, 14);

-- --------------------------------------------------------

--
-- Table structure for table `socials`
--

CREATE TABLE `socials` (
  `id` int(11) NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `serial_number` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `socials`
--

INSERT INTO `socials` (`id`, `icon`, `url`, `serial_number`, `created_at`, `updated_at`) VALUES
(1, 'fab fa-youtube', 'https://www.youtube.com/', 3, '2024-01-05 21:13:11', '2024-01-22 15:14:43'),
(2, 'fab fa-facebook-f', 'https://www.facebook.com/', 2, '2024-01-09 15:57:35', '2024-01-09 15:57:35');

-- --------------------------------------------------------

--
-- Table structure for table `subscribers`
--

CREATE TABLE `subscribers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subscribers`
--

INSERT INTO `subscribers` (`id`, `email`, `created_at`, `updated_at`) VALUES
(16, 'hedy@mailinator.com', NULL, NULL),
(17, 'fexifenebi@mailinator.com', NULL, NULL),
(18, 'vocem@mailinator.com', NULL, NULL),
(19, 'tuzofed@mailinator.com', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tables`
--

CREATE TABLE `tables` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `table_no` int(11) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1 - active, 2 - deactive',
  `qr_image` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '000000',
  `size` int(11) NOT NULL DEFAULT '250',
  `style` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'square',
  `eye_style` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'square',
  `margin` int(11) NOT NULL DEFAULT '0',
  `text` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text_color` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT '000000',
  `text_size` int(11) DEFAULT '15',
  `text_x` int(11) NOT NULL DEFAULT '50',
  `text_y` int(11) NOT NULL DEFAULT '50',
  `image` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_size` int(11) NOT NULL DEFAULT '20',
  `image_x` int(11) NOT NULL DEFAULT '50',
  `image_y` int(11) NOT NULL DEFAULT '50',
  `type` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default' COMMENT 'default, image, text'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tables`
--

INSERT INTO `tables` (`id`, `user_id`, `table_no`, `status`, `qr_image`, `color`, `size`, `style`, `eye_style`, `margin`, `text`, `text_color`, `text_size`, `text_x`, `text_y`, `image`, `image_size`, `image_x`, `image_y`, `type`) VALUES
(5, 2, 1, 1, '65ace4470c8b0.png', '5454FF', 250, 'square', 'square', 0, NULL, '000000', 15, 50, 50, NULL, 20, 50, 50, 'default'),
(6, 2, 2, 1, '65ace45eed591.png', 'FF6BC9', 250, 'square', 'square', 0, NULL, '000000', 15, 50, 50, NULL, 20, 50, 50, 'default'),
(7, 2, 3, 1, '65acd8d1d07c5.png', '000000', 250, 'square', 'square', 0, NULL, '000000', 15, 50, 50, NULL, 20, 50, 50, 'default'),
(8, 2, 4, 1, '65acd8d991405.png', '000000', 250, 'square', 'square', 0, NULL, '000000', 15, 50, 50, NULL, 20, 50, 50, 'default'),
(9, 2, 5, 1, '65acd8e43f257.png', '000000', 250, 'square', 'square', 0, NULL, '000000', 15, 50, 50, NULL, 20, 50, 50, 'default');

-- --------------------------------------------------------

--
-- Table structure for table `table_books`
--

CREATE TABLE `table_books` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `membership_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fields` text COLLATE utf8mb4_unicode_ci,
  `status` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `table_books`
--

INSERT INTO `table_books` (`id`, `user_id`, `membership_id`, `name`, `email`, `fields`, `status`, `created_at`, `updated_at`) VALUES
(23, 2, 96, 'Yoshi Houston', 'majyzymo@mailinator.com', '{\"Number_of_Persons\":\"864\",\"Check-in-Date\":\"02/16/2022\",\"Check-in-Time\":\"09:00 AM\",\"Phone\":\"+1 (385) 518-3457\"}', 1, '2024-01-17 17:12:54', '2024-01-17 17:12:54'),
(24, 2, 96, 'Randall Hinton', 'tuwopimare@mailinator.com', '{\"Number_of_Persons\":\"100\",\"Check-in-Date\":\"19/01/2024\",\"Check-in-Time\":\"12:00 PM\",\"Phone\":\"+1 (635) 895-6164\"}', 1, '2024-01-18 00:14:04', '2024-01-18 00:14:04'),
(25, 2, 96, 'Nolan Lynch', 'kydod@mailinator.com', '{\"Number_of_Persons\":\"35\",\"Check-in-Date\":\"01/15/2024\",\"Check-in-Time\":\"10:00 AM\",\"Phone\":\"+1 (385) 518-3457\"}', 1, '2024-01-17 17:17:07', '2024-01-17 17:17:07'),
(26, 2, 96, 'Edward Thornton', 'kykatu@mailinator.com', '{\"Number_of_Persons\":\"781\",\"Check-in-Date\":\"07-Apr-1986\",\"Check-in-Time\":\"Et expedita et vero\",\"Phone\":\"+1 (894) 857-9798\"}', 2, '2024-01-17 17:17:27', '2024-01-17 17:18:32'),
(27, 2, 96, 'Alexis Daniels', 'sesice@mailinator.com', '{\"Number_of_Persons\":\"168\",\"Check-in-Date\":\"01-Dec-1972\",\"Check-in-Time\":\"Magnam placeat dele\",\"Phone\":\"+1 (651) 979-5442\"}', 1, '2024-01-17 17:17:33', '2024-01-17 17:17:33'),
(28, 2, 96, 'Jaime Fitzgerald', 'tebipuf@mailinator.com', '{\"Number_of_Persons\":\"933\",\"Check-in-Date\":\"01-Oct-1976\",\"Check-in-Time\":\"Esse quia at nostrud\",\"Phone\":\"+1 (488) 745-5787\"}', 1, '2024-01-17 17:17:42', '2024-01-17 17:17:42'),
(29, 2, 96, 'Ina Rivers', 'minanude@mailinator.com', '{\"Number_of_Persons\":\"532\",\"Check-in-Date\":\"13-May-1993\",\"Check-in-Time\":\"Nulla ea dicta ratio\",\"Phone\":\"+1 (299) 921-5411\"}', 1, '2024-01-17 17:17:55', '2024-01-17 17:17:55'),
(30, 2, 96, 'India Melton', 'tukeqydy@mailinator.com', '{\"Number_of_Persons\":\"616\",\"Check-in-Date\":\"29-Mar-1995\",\"Check-in-Time\":\"Temporibus nemo nisi\",\"Phone\":\"+1 (133) 568-1421\"}', 2, '2024-01-17 17:18:00', '2024-01-17 17:18:38'),
(31, 2, 96, 'Wing Shaffer', 'jivewe@mailinator.com', '{\"Number_of_Persons\":\"855\",\"Check-in-Date\":\"20-Oct-1999\",\"Check-in-Time\":\"Eos sed et obcaecati\",\"Phone\":\"+1 (436) 885-2897\"}', 2, '2024-01-17 17:18:10', '2024-01-17 17:18:22'),
(32, 2, 96, 'Finn Patton', 'mysybufo@mailinator.com', '{\"Number_of_Persons\":\"804\",\"Check-in-Date\":\"09-Oct-1993\",\"Check-in-Time\":\"Quaerat ut labore qu\",\"Phone\":\"+1 (677) 174-9931\"}', 1, '2024-01-17 17:18:16', '2024-01-17 17:18:16');

-- --------------------------------------------------------

--
-- Table structure for table `testimonials`
--

CREATE TABLE `testimonials` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `language_id` int(11) DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rank` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rating` int(11) DEFAULT NULL,
  `serial_number` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `testimonials`
--

INSERT INTO `testimonials` (`id`, `language_id`, `image`, `comment`, `name`, `rank`, `rating`, `serial_number`, `created_at`, `updated_at`) VALUES
(24, 176, '1597736067.png', 'Donec ac quam non elit hendrerit placerat. Pellentesque a est id diam lacinia convallis. Etiam non quam sit amet odio pharetra lacinia. Donec purus enim, ornare ac imperdiet', 'Emma Watson', 'CEO, PlusAgency', 5, 1, NULL, NULL),
(25, 176, '2599c676cbba7c3fa2d8962494d96b8eeb9f1f11.jpg', 'Donec ac quam non elit hendrerit placerat. Pellentesque a est id diam lacinia convallis. Etiam non quam sit amet odio pharetra lacinia. Donec purus enim, ornare ac imperdiet', 'Amelia Hanna', 'Manager, PlusAgency', 5, 4, NULL, NULL),
(28, 176, '1598692556.png', 'Donec ac quam non elit hendrerit placerat. Pellentesque a est id diam lacinia convallis. Etiam non quam sit amet odio pharetra lacinia. Donec purus enim, ornare ac imperdiet', 'Marcos Reus', 'Software Engineer', 5, 2, NULL, NULL),
(29, 176, '21acb22c9961713a0c7024627a188ea033593548.jpg', 'Donec ac quam non elit hendrerit placerat. Pellentesque a est id diam lacinia convallis. Etiam non quam sit amet odio pharetra lacinia. Donec purus enim, ornare ac imperdiet', 'Rebeca Isabella', 'CTO, PlusAgency', 5, 3, NULL, NULL),
(30, 177, 'b278e4a85f100d9daf3c07c590c09b70ba8bf1fd.jpg', 'هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها. ولذلك يتم استخدام طريقة لوريم إيبسوم لأنها تعطي توزيعاَ طبيعياَ -إلى حد ما- للأحرف عوضاً عن استخدام', 'إيما واتسون', 'الرئيس التنفيذي لشركة PlusAgency', 5, 1, NULL, NULL),
(31, 177, '97bc0cf3f41c20fef73c3735846655f7212fcb88.png', 'هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها. ولذلك يتم استخدام طريقة لوريم إيبسوم لأنها تعطي توزيعاَ طبيعياَ -إلى حد ما- للأحرف عوضاً عن استخدام', 'اميليا حنا', 'مدير PlusAgency', 5, 2, NULL, NULL),
(32, 177, '363d476386d349cc2f43a100846b96af3ae691bd.jpg', 'هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها. ولذلك يتم استخدام طريقة لوريم إيبسوم لأنها تعطي توزيعاَ طبيعياَ -إلى حد ما- للأحرف عوضاً عن استخدام', 'ماركوس ريوس', 'مهندس برمجيات', 5, 3, NULL, NULL),
(33, 177, '1db5d671cac3ee88c38e452402a5d10c36c4d218.png', 'هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها. ولذلك يتم استخدام طريقة لوريم إيبسوم لأنها تعطي توزيعاَ طبيعياَ -إلى حد ما- للأحرف عوضاً عن استخدام', 'ريبيكا إيزابيلا', 'CTO ، PlusAgency', 5, 4, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `timezones`
--

CREATE TABLE `timezones` (
  `country_code` char(3) NOT NULL,
  `timezone` varchar(125) NOT NULL DEFAULT '',
  `gmt_offset` float(10,2) DEFAULT NULL,
  `dst_offset` float(10,2) DEFAULT NULL,
  `raw_offset` float(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `timezones`
--

INSERT INTO `timezones` (`country_code`, `timezone`, `gmt_offset`, `dst_offset`, `raw_offset`) VALUES
('AD', 'Europe/Andorra', 1.00, 2.00, 1.00),
('AE', 'Asia/Dubai', 4.00, 4.00, 4.00),
('AF', 'Asia/Kabul', 4.50, 4.50, 4.50),
('AG', 'America/Antigua', -4.00, -4.00, -4.00),
('AI', 'America/Anguilla', -4.00, -4.00, -4.00),
('AL', 'Europe/Tirane', 1.00, 2.00, 1.00),
('AM', 'Asia/Yerevan', 4.00, 4.00, 4.00),
('AO', 'Africa/Luanda', 1.00, 1.00, 1.00),
('AQ', 'Antarctica/Casey', 8.00, 8.00, 8.00),
('AQ', 'Antarctica/Davis', 7.00, 7.00, 7.00),
('AQ', 'Antarctica/DumontDUrville', 10.00, 10.00, 10.00),
('AQ', 'Antarctica/Mawson', 5.00, 5.00, 5.00),
('AQ', 'Antarctica/McMurdo', 13.00, 12.00, 12.00),
('AQ', 'Antarctica/Palmer', -3.00, -4.00, -4.00),
('AQ', 'Antarctica/Rothera', -3.00, -3.00, -3.00),
('AQ', 'Antarctica/South_Pole', 13.00, 12.00, 12.00),
('AQ', 'Antarctica/Syowa', 3.00, 3.00, 3.00),
('AQ', 'Antarctica/Vostok', 6.00, 6.00, 6.00),
('AR', 'America/Argentina/Buenos_Aires', -3.00, -3.00, -3.00),
('AR', 'America/Argentina/Catamarca', -3.00, -3.00, -3.00),
('AR', 'America/Argentina/Cordoba', -3.00, -3.00, -3.00),
('AR', 'America/Argentina/Jujuy', -3.00, -3.00, -3.00),
('AR', 'America/Argentina/La_Rioja', -3.00, -3.00, -3.00),
('AR', 'America/Argentina/Mendoza', -3.00, -3.00, -3.00),
('AR', 'America/Argentina/Rio_Gallegos', -3.00, -3.00, -3.00),
('AR', 'America/Argentina/Salta', -3.00, -3.00, -3.00),
('AR', 'America/Argentina/San_Juan', -3.00, -3.00, -3.00),
('AR', 'America/Argentina/San_Luis', -3.00, -3.00, -3.00),
('AR', 'America/Argentina/Tucuman', -3.00, -3.00, -3.00),
('AR', 'America/Argentina/Ushuaia', -3.00, -3.00, -3.00),
('AS', 'Pacific/Pago_Pago', -11.00, -11.00, -11.00),
('AT', 'Europe/Vienna', 1.00, 2.00, 1.00),
('AU', 'Antarctica/Macquarie', 11.00, 11.00, 11.00),
('AU', 'Australia/Adelaide', 10.50, 9.50, 9.50),
('AU', 'Australia/Brisbane', 10.00, 10.00, 10.00),
('AU', 'Australia/Broken_Hill', 10.50, 9.50, 9.50),
('AU', 'Australia/Currie', 11.00, 10.00, 10.00),
('AU', 'Australia/Darwin', 9.50, 9.50, 9.50),
('AU', 'Australia/Eucla', 8.75, 8.75, 8.75),
('AU', 'Australia/Hobart', 11.00, 10.00, 10.00),
('AU', 'Australia/Lindeman', 10.00, 10.00, 10.00),
('AU', 'Australia/Lord_Howe', 11.00, 10.50, 10.50),
('AU', 'Australia/Melbourne', 11.00, 10.00, 10.00),
('AU', 'Australia/Perth', 8.00, 8.00, 8.00),
('AU', 'Australia/Sydney', 11.00, 10.00, 10.00),
('AW', 'America/Aruba', -4.00, -4.00, -4.00),
('AX', 'Europe/Mariehamn', 2.00, 3.00, 2.00),
('AZ', 'Asia/Baku', 4.00, 5.00, 4.00),
('BA', 'Europe/Sarajevo', 1.00, 2.00, 1.00),
('BB', 'America/Barbados', -4.00, -4.00, -4.00),
('BD', 'Asia/Dhaka', 6.00, 6.00, 6.00),
('BE', 'Europe/Brussels', 1.00, 2.00, 1.00),
('BF', 'Africa/Ouagadougou', 0.00, 0.00, 0.00),
('BG', 'Europe/Sofia', 2.00, 3.00, 2.00),
('BH', 'Asia/Bahrain', 3.00, 3.00, 3.00),
('BI', 'Africa/Bujumbura', 2.00, 2.00, 2.00),
('BJ', 'Africa/Porto-Novo', 1.00, 1.00, 1.00),
('BL', 'America/St_Barthelemy', -4.00, -4.00, -4.00),
('BM', 'Atlantic/Bermuda', -4.00, -3.00, -4.00),
('BN', 'Asia/Brunei', 8.00, 8.00, 8.00),
('BO', 'America/La_Paz', -4.00, -4.00, -4.00),
('BQ', 'America/Kralendijk', -4.00, -4.00, -4.00),
('BR', 'America/Araguaina', -3.00, -3.00, -3.00),
('BR', 'America/Bahia', -3.00, -3.00, -3.00),
('BR', 'America/Belem', -3.00, -3.00, -3.00),
('BR', 'America/Boa_Vista', -4.00, -4.00, -4.00),
('BR', 'America/Campo_Grande', -3.00, -4.00, -4.00),
('BR', 'America/Cuiaba', -3.00, -4.00, -4.00),
('BR', 'America/Eirunepe', -5.00, -5.00, -5.00),
('BR', 'America/Fortaleza', -3.00, -3.00, -3.00),
('BR', 'America/Maceio', -3.00, -3.00, -3.00),
('BR', 'America/Manaus', -4.00, -4.00, -4.00),
('BR', 'America/Noronha', -2.00, -2.00, -2.00),
('BR', 'America/Porto_Velho', -4.00, -4.00, -4.00),
('BR', 'America/Recife', -3.00, -3.00, -3.00),
('BR', 'America/Rio_Branco', -5.00, -5.00, -5.00),
('BR', 'America/Santarem', -3.00, -3.00, -3.00),
('BR', 'America/Sao_Paulo', -2.00, -3.00, -3.00),
('BS', 'America/Nassau', -5.00, -4.00, -5.00),
('BT', 'Asia/Thimphu', 6.00, 6.00, 6.00),
('BW', 'Africa/Gaborone', 2.00, 2.00, 2.00),
('BY', 'Europe/Minsk', 3.00, 3.00, 3.00),
('BZ', 'America/Belize', -6.00, -6.00, -6.00),
('CA', 'America/Atikokan', -5.00, -5.00, -5.00),
('CA', 'America/Blanc-Sablon', -4.00, -4.00, -4.00),
('CA', 'America/Cambridge_Bay', -7.00, -6.00, -7.00),
('CA', 'America/Creston', -7.00, -7.00, -7.00),
('CA', 'America/Dawson', -8.00, -7.00, -8.00),
('CA', 'America/Dawson_Creek', -7.00, -7.00, -7.00),
('CA', 'America/Edmonton', -7.00, -6.00, -7.00),
('CA', 'America/Glace_Bay', -4.00, -3.00, -4.00),
('CA', 'America/Goose_Bay', -4.00, -3.00, -4.00),
('CA', 'America/Halifax', -4.00, -3.00, -4.00),
('CA', 'America/Inuvik', -7.00, -6.00, -7.00),
('CA', 'America/Iqaluit', -5.00, -4.00, -5.00),
('CA', 'America/Moncton', -4.00, -3.00, -4.00),
('CA', 'America/Montreal', -5.00, -4.00, -5.00),
('CA', 'America/Nipigon', -5.00, -4.00, -5.00),
('CA', 'America/Pangnirtung', -5.00, -4.00, -5.00),
('CA', 'America/Rainy_River', -6.00, -5.00, -6.00),
('CA', 'America/Rankin_Inlet', -6.00, -5.00, -6.00),
('CA', 'America/Regina', -6.00, -6.00, -6.00),
('CA', 'America/Resolute', -6.00, -5.00, -6.00),
('CA', 'America/St_Johns', -3.50, -2.50, -3.50),
('CA', 'America/Swift_Current', -6.00, -6.00, -6.00),
('CA', 'America/Thunder_Bay', -5.00, -4.00, -5.00),
('CA', 'America/Toronto', -5.00, -4.00, -5.00),
('CA', 'America/Vancouver', -8.00, -7.00, -8.00),
('CA', 'America/Whitehorse', -8.00, -7.00, -8.00),
('CA', 'America/Winnipeg', -6.00, -5.00, -6.00),
('CA', 'America/Yellowknife', -7.00, -6.00, -7.00),
('CC', 'Indian/Cocos', 6.50, 6.50, 6.50),
('CD', 'Africa/Kinshasa', 1.00, 1.00, 1.00),
('CD', 'Africa/Lubumbashi', 2.00, 2.00, 2.00),
('CF', 'Africa/Bangui', 1.00, 1.00, 1.00),
('CG', 'Africa/Brazzaville', 1.00, 1.00, 1.00),
('CH', 'Europe/Zurich', 1.00, 2.00, 1.00),
('CI', 'Africa/Abidjan', 0.00, 0.00, 0.00),
('CK', 'Pacific/Rarotonga', -10.00, -10.00, -10.00),
('CL', 'America/Santiago', -3.00, -4.00, -4.00),
('CL', 'Pacific/Easter', -5.00, -6.00, -6.00),
('CM', 'Africa/Douala', 1.00, 1.00, 1.00),
('CN', 'Asia/Chongqing', 8.00, 8.00, 8.00),
('CN', 'Asia/Harbin', 8.00, 8.00, 8.00),
('CN', 'Asia/Kashgar', 8.00, 8.00, 8.00),
('CN', 'Asia/Shanghai', 8.00, 8.00, 8.00),
('CN', 'Asia/Urumqi', 8.00, 8.00, 8.00),
('CO', 'America/Bogota', -5.00, -5.00, -5.00),
('CR', 'America/Costa_Rica', -6.00, -6.00, -6.00),
('CU', 'America/Havana', -5.00, -4.00, -5.00),
('CV', 'Atlantic/Cape_Verde', -1.00, -1.00, -1.00),
('CW', 'America/Curacao', -4.00, -4.00, -4.00),
('CX', 'Indian/Christmas', 7.00, 7.00, 7.00),
('CY', 'Asia/Nicosia', 2.00, 3.00, 2.00),
('CZ', 'Europe/Prague', 1.00, 2.00, 1.00),
('DE', 'Europe/Berlin', 1.00, 2.00, 1.00),
('DE', 'Europe/Busingen', 1.00, 2.00, 1.00),
('DJ', 'Africa/Djibouti', 3.00, 3.00, 3.00),
('DK', 'Europe/Copenhagen', 1.00, 2.00, 1.00),
('DM', 'America/Dominica', -4.00, -4.00, -4.00),
('DO', 'America/Santo_Domingo', -4.00, -4.00, -4.00),
('DZ', 'Africa/Algiers', 1.00, 1.00, 1.00),
('EC', 'America/Guayaquil', -5.00, -5.00, -5.00),
('EC', 'Pacific/Galapagos', -6.00, -6.00, -6.00),
('EE', 'Europe/Tallinn', 2.00, 3.00, 2.00),
('EG', 'Africa/Cairo', 2.00, 2.00, 2.00),
('EH', 'Africa/El_Aaiun', 0.00, 0.00, 0.00),
('ER', 'Africa/Asmara', 3.00, 3.00, 3.00),
('ES', 'Africa/Ceuta', 1.00, 2.00, 1.00),
('ES', 'Atlantic/Canary', 0.00, 1.00, 0.00),
('ES', 'Europe/Madrid', 1.00, 2.00, 1.00),
('ET', 'Africa/Addis_Ababa', 3.00, 3.00, 3.00),
('FI', 'Europe/Helsinki', 2.00, 3.00, 2.00),
('FJ', 'Pacific/Fiji', 13.00, 12.00, 12.00),
('FK', 'Atlantic/Stanley', -3.00, -3.00, -3.00),
('FM', 'Pacific/Chuuk', 10.00, 10.00, 10.00),
('FM', 'Pacific/Kosrae', 11.00, 11.00, 11.00),
('FM', 'Pacific/Pohnpei', 11.00, 11.00, 11.00),
('FO', 'Atlantic/Faroe', 0.00, 1.00, 0.00),
('FR', 'Europe/Paris', 1.00, 2.00, 1.00),
('GA', 'Africa/Libreville', 1.00, 1.00, 1.00),
('GB', 'Europe/London', 0.00, 1.00, 0.00),
('GD', 'America/Grenada', -4.00, -4.00, -4.00),
('GE', 'Asia/Tbilisi', 4.00, 4.00, 4.00),
('GF', 'America/Cayenne', -3.00, -3.00, -3.00),
('GG', 'Europe/Guernsey', 0.00, 1.00, 0.00),
('GH', 'Africa/Accra', 0.00, 0.00, 0.00),
('GI', 'Europe/Gibraltar', 1.00, 2.00, 1.00),
('GL', 'America/Danmarkshavn', 0.00, 0.00, 0.00),
('GL', 'America/Godthab', -3.00, -2.00, -3.00),
('GL', 'America/Scoresbysund', -1.00, 0.00, -1.00),
('GL', 'America/Thule', -4.00, -3.00, -4.00),
('GM', 'Africa/Banjul', 0.00, 0.00, 0.00),
('GN', 'Africa/Conakry', 0.00, 0.00, 0.00),
('GP', 'America/Guadeloupe', -4.00, -4.00, -4.00),
('GQ', 'Africa/Malabo', 1.00, 1.00, 1.00),
('GR', 'Europe/Athens', 2.00, 3.00, 2.00),
('GS', 'Atlantic/South_Georgia', -2.00, -2.00, -2.00),
('GT', 'America/Guatemala', -6.00, -6.00, -6.00),
('GU', 'Pacific/Guam', 10.00, 10.00, 10.00),
('GW', 'Africa/Bissau', 0.00, 0.00, 0.00),
('GY', 'America/Guyana', -4.00, -4.00, -4.00),
('HK', 'Asia/Hong_Kong', 8.00, 8.00, 8.00),
('HN', 'America/Tegucigalpa', -6.00, -6.00, -6.00),
('HR', 'Europe/Zagreb', 1.00, 2.00, 1.00),
('HT', 'America/Port-au-Prince', -5.00, -4.00, -5.00),
('HU', 'Europe/Budapest', 1.00, 2.00, 1.00),
('ID', 'Asia/Jakarta', 7.00, 7.00, 7.00),
('ID', 'Asia/Jayapura', 9.00, 9.00, 9.00),
('ID', 'Asia/Makassar', 8.00, 8.00, 8.00),
('ID', 'Asia/Pontianak', 7.00, 7.00, 7.00),
('IE', 'Europe/Dublin', 0.00, 1.00, 0.00),
('IL', 'Asia/Jerusalem', 2.00, 3.00, 2.00),
('IM', 'Europe/Isle_of_Man', 0.00, 1.00, 0.00),
('IN', 'Asia/Kolkata', 5.50, 5.50, 5.50),
('IO', 'Indian/Chagos', 6.00, 6.00, 6.00),
('IQ', 'Asia/Baghdad', 3.00, 3.00, 3.00),
('IR', 'Asia/Tehran', 3.50, 4.50, 3.50),
('IS', 'Atlantic/Reykjavik', 0.00, 0.00, 0.00),
('IT', 'Europe/Rome', 1.00, 2.00, 1.00),
('JE', 'Europe/Jersey', 0.00, 1.00, 0.00),
('JM', 'America/Jamaica', -5.00, -5.00, -5.00),
('JO', 'Asia/Amman', 2.00, 3.00, 2.00),
('JP', 'Asia/Tokyo', 9.00, 9.00, 9.00),
('KE', 'Africa/Nairobi', 3.00, 3.00, 3.00),
('KG', 'Asia/Bishkek', 6.00, 6.00, 6.00),
('KH', 'Asia/Phnom_Penh', 7.00, 7.00, 7.00),
('KI', 'Pacific/Enderbury', 13.00, 13.00, 13.00),
('KI', 'Pacific/Kiritimati', 14.00, 14.00, 14.00),
('KI', 'Pacific/Tarawa', 12.00, 12.00, 12.00),
('KM', 'Indian/Comoro', 3.00, 3.00, 3.00),
('KN', 'America/St_Kitts', -4.00, -4.00, -4.00),
('KP', 'Asia/Pyongyang', 9.00, 9.00, 9.00),
('KR', 'Asia/Seoul', 9.00, 9.00, 9.00),
('KW', 'Asia/Kuwait', 3.00, 3.00, 3.00),
('KY', 'America/Cayman', -5.00, -5.00, -5.00),
('KZ', 'Asia/Almaty', 6.00, 6.00, 6.00),
('KZ', 'Asia/Aqtau', 5.00, 5.00, 5.00),
('KZ', 'Asia/Aqtobe', 5.00, 5.00, 5.00),
('KZ', 'Asia/Oral', 5.00, 5.00, 5.00),
('KZ', 'Asia/Qyzylorda', 6.00, 6.00, 6.00),
('LA', 'Asia/Vientiane', 7.00, 7.00, 7.00),
('LB', 'Asia/Beirut', 2.00, 3.00, 2.00),
('LC', 'America/St_Lucia', -4.00, -4.00, -4.00),
('LI', 'Europe/Vaduz', 1.00, 2.00, 1.00),
('LK', 'Asia/Colombo', 5.50, 5.50, 5.50),
('LR', 'Africa/Monrovia', 0.00, 0.00, 0.00),
('LS', 'Africa/Maseru', 2.00, 2.00, 2.00),
('LT', 'Europe/Vilnius', 2.00, 3.00, 2.00),
('LU', 'Europe/Luxembourg', 1.00, 2.00, 1.00),
('LV', 'Europe/Riga', 2.00, 3.00, 2.00),
('LY', 'Africa/Tripoli', 2.00, 2.00, 2.00),
('MA', 'Africa/Casablanca', 0.00, 0.00, 0.00),
('MC', 'Europe/Monaco', 1.00, 2.00, 1.00),
('MD', 'Europe/Chisinau', 2.00, 3.00, 2.00),
('ME', 'Europe/Podgorica', 1.00, 2.00, 1.00),
('MF', 'America/Marigot', -4.00, -4.00, -4.00),
('MG', 'Indian/Antananarivo', 3.00, 3.00, 3.00),
('MH', 'Pacific/Kwajalein', 12.00, 12.00, 12.00),
('MH', 'Pacific/Majuro', 12.00, 12.00, 12.00),
('MK', 'Europe/Skopje', 1.00, 2.00, 1.00),
('ML', 'Africa/Bamako', 0.00, 0.00, 0.00),
('MM', 'Asia/Rangoon', 6.50, 6.50, 6.50),
('MN', 'Asia/Choibalsan', 8.00, 8.00, 8.00),
('MN', 'Asia/Hovd', 7.00, 7.00, 7.00),
('MN', 'Asia/Ulaanbaatar', 8.00, 8.00, 8.00),
('MO', 'Asia/Macau', 8.00, 8.00, 8.00),
('MP', 'Pacific/Saipan', 10.00, 10.00, 10.00),
('MQ', 'America/Martinique', -4.00, -4.00, -4.00),
('MR', 'Africa/Nouakchott', 0.00, 0.00, 0.00),
('MS', 'America/Montserrat', -4.00, -4.00, -4.00),
('MT', 'Europe/Malta', 1.00, 2.00, 1.00),
('MU', 'Indian/Mauritius', 4.00, 4.00, 4.00),
('MV', 'Indian/Maldives', 5.00, 5.00, 5.00),
('MW', 'Africa/Blantyre', 2.00, 2.00, 2.00),
('MX', 'America/Bahia_Banderas', -6.00, -5.00, -6.00),
('MX', 'America/Cancun', -6.00, -5.00, -6.00),
('MX', 'America/Chihuahua', -7.00, -6.00, -7.00),
('MX', 'America/Hermosillo', -7.00, -7.00, -7.00),
('MX', 'America/Matamoros', -6.00, -5.00, -6.00),
('MX', 'America/Mazatlan', -7.00, -6.00, -7.00),
('MX', 'America/Merida', -6.00, -5.00, -6.00),
('MX', 'America/Mexico_City', -6.00, -5.00, -6.00),
('MX', 'America/Monterrey', -6.00, -5.00, -6.00),
('MX', 'America/Ojinaga', -7.00, -6.00, -7.00),
('MX', 'America/Santa_Isabel', -8.00, -7.00, -8.00),
('MX', 'America/Tijuana', -8.00, -7.00, -8.00),
('MY', 'Asia/Kuala_Lumpur', 8.00, 8.00, 8.00),
('MY', 'Asia/Kuching', 8.00, 8.00, 8.00),
('MZ', 'Africa/Maputo', 2.00, 2.00, 2.00),
('NA', 'Africa/Windhoek', 2.00, 1.00, 1.00),
('NC', 'Pacific/Noumea', 11.00, 11.00, 11.00),
('NE', 'Africa/Niamey', 1.00, 1.00, 1.00),
('NF', 'Pacific/Norfolk', 11.50, 11.50, 11.50),
('NG', 'Africa/Lagos', 1.00, 1.00, 1.00),
('NI', 'America/Managua', -6.00, -6.00, -6.00),
('NL', 'Europe/Amsterdam', 1.00, 2.00, 1.00),
('NO', 'Europe/Oslo', 1.00, 2.00, 1.00),
('NP', 'Asia/Kathmandu', 5.75, 5.75, 5.75),
('NR', 'Pacific/Nauru', 12.00, 12.00, 12.00),
('NU', 'Pacific/Niue', -11.00, -11.00, -11.00),
('NZ', 'Pacific/Auckland', 13.00, 12.00, 12.00),
('NZ', 'Pacific/Chatham', 13.75, 12.75, 12.75),
('OM', 'Asia/Muscat', 4.00, 4.00, 4.00),
('PA', 'America/Panama', -5.00, -5.00, -5.00),
('PE', 'America/Lima', -5.00, -5.00, -5.00),
('PF', 'Pacific/Gambier', -9.00, -9.00, -9.00),
('PF', 'Pacific/Marquesas', -9.50, -9.50, -9.50),
('PF', 'Pacific/Tahiti', -10.00, -10.00, -10.00),
('PG', 'Pacific/Port_Moresby', 10.00, 10.00, 10.00),
('PH', 'Asia/Manila', 8.00, 8.00, 8.00),
('PK', 'Asia/Karachi', 5.00, 5.00, 5.00),
('PL', 'Europe/Warsaw', 1.00, 2.00, 1.00),
('PM', 'America/Miquelon', -3.00, -2.00, -3.00),
('PN', 'Pacific/Pitcairn', -8.00, -8.00, -8.00),
('PR', 'America/Puerto_Rico', -4.00, -4.00, -4.00),
('PS', 'Asia/Gaza', 2.00, 3.00, 2.00),
('PS', 'Asia/Hebron', 2.00, 3.00, 2.00),
('PT', 'Atlantic/Azores', -1.00, 0.00, -1.00),
('PT', 'Atlantic/Madeira', 0.00, 1.00, 0.00),
('PT', 'Europe/Lisbon', 0.00, 1.00, 0.00),
('PW', 'Pacific/Palau', 9.00, 9.00, 9.00),
('PY', 'America/Asuncion', -3.00, -4.00, -4.00),
('QA', 'Asia/Qatar', 3.00, 3.00, 3.00),
('RE', 'Indian/Reunion', 4.00, 4.00, 4.00),
('RO', 'Europe/Bucharest', 2.00, 3.00, 2.00),
('RS', 'Europe/Belgrade', 1.00, 2.00, 1.00),
('RU', 'Asia/Anadyr', 12.00, 12.00, 12.00),
('RU', 'Asia/Irkutsk', 9.00, 9.00, 9.00),
('RU', 'Asia/Kamchatka', 12.00, 12.00, 12.00),
('RU', 'Asia/Khandyga', 10.00, 10.00, 10.00),
('RU', 'Asia/Krasnoyarsk', 8.00, 8.00, 8.00),
('RU', 'Asia/Magadan', 12.00, 12.00, 12.00),
('RU', 'Asia/Novokuznetsk', 7.00, 7.00, 7.00),
('RU', 'Asia/Novosibirsk', 7.00, 7.00, 7.00),
('RU', 'Asia/Omsk', 7.00, 7.00, 7.00),
('RU', 'Asia/Sakhalin', 11.00, 11.00, 11.00),
('RU', 'Asia/Ust-Nera', 11.00, 11.00, 11.00),
('RU', 'Asia/Vladivostok', 11.00, 11.00, 11.00),
('RU', 'Asia/Yakutsk', 10.00, 10.00, 10.00),
('RU', 'Asia/Yekaterinburg', 6.00, 6.00, 6.00),
('RU', 'Europe/Kaliningrad', 3.00, 3.00, 3.00),
('RU', 'Europe/Moscow', 4.00, 4.00, 4.00),
('RU', 'Europe/Samara', 4.00, 4.00, 4.00),
('RU', 'Europe/Volgograd', 4.00, 4.00, 4.00),
('RW', 'Africa/Kigali', 2.00, 2.00, 2.00),
('SA', 'Asia/Riyadh', 3.00, 3.00, 3.00),
('SB', 'Pacific/Guadalcanal', 11.00, 11.00, 11.00),
('SC', 'Indian/Mahe', 4.00, 4.00, 4.00),
('SD', 'Africa/Khartoum', 3.00, 3.00, 3.00),
('SE', 'Europe/Stockholm', 1.00, 2.00, 1.00),
('SG', 'Asia/Singapore', 8.00, 8.00, 8.00),
('SH', 'Atlantic/St_Helena', 0.00, 0.00, 0.00),
('SI', 'Europe/Ljubljana', 1.00, 2.00, 1.00),
('SJ', 'Arctic/Longyearbyen', 1.00, 2.00, 1.00),
('SK', 'Europe/Bratislava', 1.00, 2.00, 1.00),
('SL', 'Africa/Freetown', 0.00, 0.00, 0.00),
('SM', 'Europe/San_Marino', 1.00, 2.00, 1.00),
('SN', 'Africa/Dakar', 0.00, 0.00, 0.00),
('SO', 'Africa/Mogadishu', 3.00, 3.00, 3.00),
('SR', 'America/Paramaribo', -3.00, -3.00, -3.00),
('SS', 'Africa/Juba', 3.00, 3.00, 3.00),
('ST', 'Africa/Sao_Tome', 0.00, 0.00, 0.00),
('SV', 'America/El_Salvador', -6.00, -6.00, -6.00),
('SX', 'America/Lower_Princes', -4.00, -4.00, -4.00),
('SY', 'Asia/Damascus', 2.00, 3.00, 2.00),
('SZ', 'Africa/Mbabane', 2.00, 2.00, 2.00),
('TC', 'America/Grand_Turk', -5.00, -4.00, -5.00),
('TD', 'Africa/Ndjamena', 1.00, 1.00, 1.00),
('TF', 'Indian/Kerguelen', 5.00, 5.00, 5.00),
('TG', 'Africa/Lome', 0.00, 0.00, 0.00),
('TH', 'Asia/Bangkok', 7.00, 7.00, 7.00),
('TJ', 'Asia/Dushanbe', 5.00, 5.00, 5.00),
('TK', 'Pacific/Fakaofo', 13.00, 13.00, 13.00),
('TL', 'Asia/Dili', 9.00, 9.00, 9.00),
('TM', 'Asia/Ashgabat', 5.00, 5.00, 5.00),
('TN', 'Africa/Tunis', 1.00, 1.00, 1.00),
('TO', 'Pacific/Tongatapu', 13.00, 13.00, 13.00),
('TR', 'Europe/Istanbul', 2.00, 3.00, 2.00),
('TT', 'America/Port_of_Spain', -4.00, -4.00, -4.00),
('TV', 'Pacific/Funafuti', 12.00, 12.00, 12.00),
('TW', 'Asia/Taipei', 8.00, 8.00, 8.00),
('TZ', 'Africa/Dar_es_Salaam', 3.00, 3.00, 3.00),
('UA', 'Europe/Kiev', 2.00, 3.00, 2.00),
('UA', 'Europe/Simferopol', 2.00, 4.00, 4.00),
('UA', 'Europe/Uzhgorod', 2.00, 3.00, 2.00),
('UA', 'Europe/Zaporozhye', 2.00, 3.00, 2.00),
('UG', 'Africa/Kampala', 3.00, 3.00, 3.00),
('UM', 'Pacific/Johnston', -10.00, -10.00, -10.00),
('UM', 'Pacific/Midway', -11.00, -11.00, -11.00),
('UM', 'Pacific/Wake', 12.00, 12.00, 12.00),
('US', 'America/Adak', -10.00, -9.00, -10.00),
('US', 'America/Anchorage', -9.00, -8.00, -9.00),
('US', 'America/Boise', -7.00, -6.00, -7.00),
('US', 'America/Chicago', -6.00, -5.00, -6.00),
('US', 'America/Denver', -7.00, -6.00, -7.00),
('US', 'America/Detroit', -5.00, -4.00, -5.00),
('US', 'America/Indiana/Indianapolis', -5.00, -4.00, -5.00),
('US', 'America/Indiana/Knox', -6.00, -5.00, -6.00),
('US', 'America/Indiana/Marengo', -5.00, -4.00, -5.00),
('US', 'America/Indiana/Petersburg', -5.00, -4.00, -5.00),
('US', 'America/Indiana/Tell_City', -6.00, -5.00, -6.00),
('US', 'America/Indiana/Vevay', -5.00, -4.00, -5.00),
('US', 'America/Indiana/Vincennes', -5.00, -4.00, -5.00),
('US', 'America/Indiana/Winamac', -5.00, -4.00, -5.00),
('US', 'America/Juneau', -9.00, -8.00, -9.00),
('US', 'America/Kentucky/Louisville', -5.00, -4.00, -5.00),
('US', 'America/Kentucky/Monticello', -5.00, -4.00, -5.00),
('US', 'America/Los_Angeles', -8.00, -7.00, -8.00),
('US', 'America/Menominee', -6.00, -5.00, -6.00),
('US', 'America/Metlakatla', -8.00, -8.00, -8.00),
('US', 'America/New_York', -5.00, -4.00, -5.00),
('US', 'America/Nome', -9.00, -8.00, -9.00),
('US', 'America/North_Dakota/Beulah', -6.00, -5.00, -6.00),
('US', 'America/North_Dakota/Center', -6.00, -5.00, -6.00),
('US', 'America/North_Dakota/New_Salem', -6.00, -5.00, -6.00),
('US', 'America/Phoenix', -7.00, -7.00, -7.00),
('US', 'America/Shiprock', -7.00, -6.00, -7.00),
('US', 'America/Sitka', -9.00, -8.00, -9.00),
('US', 'America/Yakutat', -9.00, -8.00, -9.00),
('US', 'Pacific/Honolulu', -10.00, -10.00, -10.00),
('UY', 'America/Montevideo', -2.00, -3.00, -3.00),
('UZ', 'Asia/Samarkand', 5.00, 5.00, 5.00),
('UZ', 'Asia/Tashkent', 5.00, 5.00, 5.00),
('VA', 'Europe/Vatican', 1.00, 2.00, 1.00),
('VC', 'America/St_Vincent', -4.00, -4.00, -4.00),
('VE', 'America/Caracas', -4.50, -4.50, -4.50),
('VG', 'America/Tortola', -4.00, -4.00, -4.00),
('VI', 'America/St_Thomas', -4.00, -4.00, -4.00),
('VN', 'Asia/Ho_Chi_Minh', 7.00, 7.00, 7.00),
('VU', 'Pacific/Efate', 11.00, 11.00, 11.00),
('WF', 'Pacific/Wallis', 12.00, 12.00, 12.00),
('WS', 'Pacific/Apia', 14.00, 13.00, 13.00),
('YE', 'Asia/Aden', 3.00, 3.00, 3.00),
('YT', 'Indian/Mayotte', 3.00, 3.00, 3.00),
('ZA', 'Africa/Johannesburg', 2.00, 2.00, 2.00),
('ZM', 'Africa/Lusaka', 2.00, 2.00, 2.00),
('ZW', 'Africa/Harare', 2.00, 2.00, 2.00);

-- --------------------------------------------------------

--
-- Table structure for table `time_frames`
--

CREATE TABLE `time_frames` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `day` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `end` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `max_orders` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `time_frames`
--

INSERT INTO `time_frames` (`id`, `user_id`, `day`, `start`, `end`, `max_orders`) VALUES
(4, 2, 'thursday', '09:00 AM', '08:00 PM', 0),
(5, 2, 'monday', '07:00 AM', '05:00 PM', 10),
(6, 2, 'tuesday', '09:30 AM', '03:00 PM', 50),
(7, 2, 'wednesday', '08:00 AM', '07:00 PM', 100),
(8, 2, 'thursday', '09:00 AM', '05:00 PM', 150),
(9, 2, 'friday', '12:30 PM', '11:00 PM', 85),
(10, 2, 'saturday', '07:30 AM', '05:00 PM', 10),
(11, 2, 'sunday', '09:00 AM', '06:00 PM', 0);

-- --------------------------------------------------------

--
-- Table structure for table `ulinks`
--

CREATE TABLE `ulinks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `language_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ulinks`
--

INSERT INTO `ulinks` (`id`, `language_id`, `name`, `url`, `created_at`, `updated_at`) VALUES
(36, 176, 'Contact', '/contact', NULL, NULL),
(37, 176, 'Blogs', '/blog', NULL, NULL),
(38, 176, 'Listings', '/listings', NULL, NULL),
(39, 176, 'FAQ', '/faq', NULL, NULL),
(40, 177, 'اتصال', '/contact', NULL, NULL),
(41, 177, 'المدونات', '/blog', NULL, NULL),
(42, 177, 'التعليمات', '/faq', NULL, NULL),
(43, 177, 'القوائم', '/listings', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` int(11) DEFAULT NULL,
  `admin_id` int(11) DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `remember_token` varchar(255) DEFAULT NULL,
  `featured` int(11) NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT '0',
  `online_status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1 = Active ,0 = offline',
  `verification_link` text,
  `email_verified` tinyint(4) NOT NULL DEFAULT '0' COMMENT '1 - verified, 0 - not verified',
  `subdomain_status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0 - pending, 1 - connected',
  `preview_template` tinyint(4) NOT NULL DEFAULT '0',
  `template_img` varchar(100) DEFAULT NULL,
  `template_serial_number` int(11) NOT NULL DEFAULT '0',
  `pwa` text,
  `restaurant_name` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `pass_token` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role_id`, `admin_id`, `first_name`, `last_name`, `image`, `username`, `email`, `password`, `phone`, `city`, `state`, `address`, `country`, `remember_token`, `featured`, `status`, `online_status`, `verification_link`, `email_verified`, `subdomain_status`, `preview_template`, `template_img`, `template_serial_number`, `pwa`, `restaurant_name`, `created_at`, `updated_at`, `pass_token`) VALUES
(2, NULL, NULL, 'Flavor', 'Haven', '57747bc6ef768382d2e3e1de9dc4ef264ffa32e9.png', 'fastifo', 'james@example.com', '$2a$12$y.7QzXrgWFSMVCQecP9k3uaXIlKcltuDVLkvpIX8Odf5HBacqRTx2', '+1 (952) 237-1394', 'Autem animi mollit', 'Dolor quibusdam et v', '47 W 13th St, New York, NY 10011, USA', 'Nostrud sit eiusmod', NULL, 1, 1, 1, '6233147c42f58f29712132694ce530a8', 1, 1, 1, '680b4b43f3c26.png', 1, '{\"short_name\":\"Eorder\",\"name\":\"Eorder\",\"background_color\":\"#1640D3\",\"theme_color\":\"#43D37A\",\"start_url\":\"\",\"display\":\"standalone\",\"icons\":[{\"src\":\"0e47d16723de9e500187260fcc3e9148525b3754.png\",\"type\":\"image\\/png\",\"sizes\":\"128X128\"},{\"src\":\"67d8457e251bfdb28d6d5e5a751c7fde0bb7cf01.png\",\"type\":\"image\\/png\",\"sizes\":\"256X256\"},{\"src\":\"85dc03673bdefb104ffd6c464b3d0c2d1323ffc4.png\",\"type\":\"image\\/png\",\"sizes\":\"512X512\"}]}', 'FastiFo', '2024-01-16 17:27:12', '2025-04-25 02:43:47', NULL),
(9, 1, 2, 'Mr', 'Rohim', '58d68b29d18e4c797a742e8ba8ce634eb495e30c.jpg', 'rohim', 'junyhepavi@mailinator.com', '$2a$12$y.7QzXrgWFSMVCQecP9k3uaXIlKcltuDVLkvpIX8Odf5HBacqRTx2', NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, NULL, 0, 0, 0, NULL, 0, NULL, NULL, '2024-01-21 15:05:50', '2024-01-28 20:40:38', NULL),
(14, NULL, NULL, NULL, NULL, NULL, 'bakery', 'wudekij@mailinator.com', '$2y$10$V.645BOvDxx5lolAZNvaguF7S92EtdSm2jA032oLIRhGfLXJXUFQG', NULL, NULL, NULL, 'Enim quis qui eos de', NULL, NULL, 1, 1, 1, NULL, 1, 0, 1, '65dab9c371c84.png', 2, NULL, 'SweetSpell Bakery', '2024-02-18 15:26:16', '2024-02-24 14:53:39', NULL),
(15, NULL, NULL, NULL, NULL, NULL, 'pizza', 'ciwohag@mailinator.com', '$2y$10$m2Hmz8IdUnAoLR3X0z2aL.jhP3twtbUDTOGFG8XFTn4.iQEIVyw.m', NULL, NULL, NULL, 'Iusto quia qui quis', NULL, NULL, 1, 1, 1, NULL, 1, 0, 1, '65dab9e3c44e2.png', 3, NULL, 'Spice Oasis', '2024-02-18 19:57:22', '2024-02-24 14:54:11', NULL),
(16, NULL, NULL, NULL, NULL, NULL, 'coffee', 'loqyfocy@mailinator.com', '$2y$10$fnMmKtCAhhhou7uF9RUkyOmgBH0bWDyr0cfcn9OVzlvyNp0Lsu2DO', NULL, NULL, NULL, 'Ut dolorem nulla per', NULL, NULL, 1, 1, 1, NULL, 1, 0, 1, '65dab9f190d96.png', 4, NULL, 'Gourmet Junction', '2024-02-19 14:54:43', '2024-02-24 14:54:25', NULL),
(17, NULL, NULL, NULL, NULL, NULL, 'medicine', 'wavomexese@mailinator.com', '$2y$10$v9oJBw.V2ODwvMrWFqheZOu2E8CXTJr0Y3sgyr3eon4ovN/pSiYZe', NULL, NULL, NULL, 'Ea qui deleniti libe', NULL, NULL, 1, 1, 1, NULL, 1, 0, 1, '65dac6fce9f6d.png', 5, NULL, 'Savory Serenity', '2024-02-19 15:23:05', '2024-02-24 15:50:04', NULL),
(18, NULL, NULL, NULL, NULL, NULL, 'grocery', 'kozufony@mailinator.com', '$2y$10$UFCr8z6Wj4sIhgF7CYpE.Ot6lSQYm7VFsxtlCJ8jf7nEDxwFIypCK', NULL, NULL, NULL, 'Id consectetur et f', NULL, NULL, 1, 1, 1, NULL, 1, 0, 1, '65dab9fe0e744.png', 6, NULL, 'Epicurean Lounge', '2024-02-23 13:47:07', '2024-02-24 14:54:38', NULL),
(19, NULL, NULL, NULL, NULL, NULL, 'beverage', 'jezehi@mailinator.com', '$2y$10$HtgrD4FktVVZ.aOHeid2B.OBkWTemn9NHdE/w0e49ycgKn37Tr7DG', NULL, NULL, NULL, 'Autem consequuntur c', NULL, NULL, 1, 1, 1, NULL, 1, 0, 1, '65daba0ec7ecb.png', 7, NULL, 'Fusion Fare', '2024-02-23 13:48:00', '2024-02-24 14:54:54', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_basic_extendeds`
--

CREATE TABLE `user_basic_extendeds` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `language_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `cookie_alert_status` tinyint(4) NOT NULL DEFAULT '1',
  `cookie_alert_text` blob,
  `cookie_alert_button_text` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `to_mail` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `default_language_direction` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'ltr' COMMENT 'ltr / rtl',
  `blogs_meta_keywords` text COLLATE utf8mb4_unicode_ci,
  `blogs_meta_description` text COLLATE utf8mb4_unicode_ci,
  `is_facebook_pixel` tinyint(4) NOT NULL DEFAULT '0',
  `pixel_id` text COLLATE utf8mb4_unicode_ci,
  `theme_version` varchar(70) COLLATE utf8mb4_unicode_ci DEFAULT 'default_service_category',
  `from_mail` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `from_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_smtp` tinyint(4) NOT NULL DEFAULT '0',
  `smtp_host` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `smtp_port` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `encryption` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `smtp_username` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `smtp_password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slider_shape_img` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slider_bottom_img` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `footer_bottom_img` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `special_section_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `special_section_subtitle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `testimonial_bg_img` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `table_section_img` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `base_currency_symbol` blob,
  `base_currency_symbol_position` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'left',
  `base_currency_text` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT 'USD',
  `base_currency_text_position` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'right',
  `base_currency_rate` decimal(8,2) NOT NULL DEFAULT '1.00',
  `hero_bg` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hero_section_bold_text` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hero_section_bold_text_font_size` int(11) NOT NULL DEFAULT '60',
  `hero_section_bold_text_color` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'FFFFFF',
  `hero_section_text` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hero_section_text_font_size` int(11) NOT NULL DEFAULT '18',
  `hero_section_text_color` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'FFFFFF',
  `hero_section_button_text` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hero_section_button_text_font_size` int(11) NOT NULL DEFAULT '14',
  `hero_section_button_color` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'FFFFFF',
  `hero_section_button_url` text COLLATE utf8mb4_unicode_ci,
  `hero_section_button2_text` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hero_section_button2_text_font_size` int(11) NOT NULL DEFAULT '14',
  `hero_section_button2_url` text COLLATE utf8mb4_unicode_ci,
  `hero_shape_img` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hero_bottom_img` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hero_section_video_link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hero_side_img` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `author_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `faq_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `career_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `career_details_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `special_section_bg` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `menu_version` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1 - menu with col-6, 2 - menu with col-12',
  `qrcode_url` text COLLATE utf8mb4_unicode_ci,
  `qrcode_color` text COLLATE utf8mb4_unicode_ci,
  `pusher_app_id` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pusher_app_key` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pusher_app_secret` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pusher_app_cluster` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_facebook_login` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1 - Active, 0 - Deactive',
  `facebook_app_id` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook_app_secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_google_login` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1 - Active, 0 - Deactive',
  `google_client_id` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `google_client_secret` varchar(70) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `timezone` varchar(125) COLLATE utf8mb4_unicode_ci DEFAULT 'UTC',
  `delivery_date_time_status` tinyint(4) NOT NULL DEFAULT '0',
  `delivery_date_time_required` tinyint(4) NOT NULL DEFAULT '0',
  `qr_image` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qr_color` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `qr_size` int(11) NOT NULL DEFAULT '250',
  `qr_style` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'square',
  `qr_eye_style` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'square',
  `qr_margin` int(11) NOT NULL DEFAULT '0',
  `qr_text` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qr_text_color` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '000000',
  `qr_text_size` int(11) NOT NULL DEFAULT '15',
  `qr_text_x` int(11) NOT NULL DEFAULT '50',
  `qr_text_y` int(11) NOT NULL DEFAULT '50',
  `qr_inserted_image` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qr_inserted_image_size` int(11) NOT NULL DEFAULT '20',
  `qr_inserted_image_x` int(11) NOT NULL DEFAULT '50',
  `qr_inserted_image_y` int(11) NOT NULL DEFAULT '50',
  `qr_type` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default' COMMENT 'default, image, text',
  `order_close` tinyint(4) NOT NULL DEFAULT '0' COMMENT '1 - order closed, 0 - order open',
  `order_close_message` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Order is closed now!',
  `hero_section_button_two_color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hero_section_author_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hero_section_author_designation` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `testimonial_side_img` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `testimonial_section_top_shape_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `testimonial_section_bottom_shape_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `feature_section_bg_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `special_section_bg_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `footer_section_bg_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `intro_bg_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `blog_section_bg_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `menu_section_subtitle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `menu_section_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hero_section_water_shape_text` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hero_section_water_shape_text_font_size` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_basic_extendeds`
--

INSERT INTO `user_basic_extendeds` (`id`, `language_id`, `user_id`, `cookie_alert_status`, `cookie_alert_text`, `cookie_alert_button_text`, `to_mail`, `default_language_direction`, `blogs_meta_keywords`, `blogs_meta_description`, `is_facebook_pixel`, `pixel_id`, `theme_version`, `from_mail`, `from_name`, `is_smtp`, `smtp_host`, `smtp_port`, `encryption`, `smtp_username`, `smtp_password`, `slider_shape_img`, `slider_bottom_img`, `footer_bottom_img`, `special_section_title`, `special_section_subtitle`, `testimonial_bg_img`, `table_section_img`, `base_currency_symbol`, `base_currency_symbol_position`, `base_currency_text`, `base_currency_text_position`, `base_currency_rate`, `hero_bg`, `hero_section_bold_text`, `hero_section_bold_text_font_size`, `hero_section_bold_text_color`, `hero_section_text`, `hero_section_text_font_size`, `hero_section_text_color`, `hero_section_button_text`, `hero_section_button_text_font_size`, `hero_section_button_color`, `hero_section_button_url`, `hero_section_button2_text`, `hero_section_button2_text_font_size`, `hero_section_button2_url`, `hero_shape_img`, `hero_bottom_img`, `hero_section_video_link`, `hero_side_img`, `author_image`, `faq_title`, `career_title`, `career_details_title`, `special_section_bg`, `menu_version`, `qrcode_url`, `qrcode_color`, `pusher_app_id`, `pusher_app_key`, `pusher_app_secret`, `pusher_app_cluster`, `is_facebook_login`, `facebook_app_id`, `facebook_app_secret`, `is_google_login`, `google_client_id`, `google_client_secret`, `timezone`, `delivery_date_time_status`, `delivery_date_time_required`, `qr_image`, `qr_color`, `qr_size`, `qr_style`, `qr_eye_style`, `qr_margin`, `qr_text`, `qr_text_color`, `qr_text_size`, `qr_text_x`, `qr_text_y`, `qr_inserted_image`, `qr_inserted_image_size`, `qr_inserted_image_x`, `qr_inserted_image_y`, `qr_type`, `order_close`, `order_close_message`, `hero_section_button_two_color`, `hero_section_author_name`, `hero_section_author_designation`, `testimonial_side_img`, `testimonial_section_top_shape_image`, `testimonial_section_bottom_shape_image`, `feature_section_bg_image`, `special_section_bg_image`, `footer_section_bg_image`, `intro_bg_image`, `blog_section_bg_image`, `menu_section_subtitle`, `menu_section_title`, `hero_section_water_shape_text`, `hero_section_water_shape_text_font_size`) VALUES
(2, 61, 2, 1, 0x3c703e596f757220657870657269656e6365206f6e207468697320736974652077696c6c20626520696d70726f76656420627920616c6c6f77696e6720636f6f6b6965732e3c2f703e, 'Allow Cookies', NULL, 'ltr', NULL, NULL, 0, NULL, 'default_service_category', 'james@example.com', 'mcavoy', 0, NULL, NULL, NULL, NULL, NULL, '48b90f22425feda94dcc709feac3ac36d3439401.png', 'f31b28db803fc951f1445a1a25f5a37b843e5854.png', 'f7999b4c807bda11eefbe46446baeb9c1001ac60.png', 'Our Special Offered Items Price', 'VIEW ALL MENU', 'a9fd740c32a7a35070e2d764fa2eca62308c7c3d.jpg', '5829b5627f71e87293af7e41b812e7b8eb0c7500.png', 0x24, 'left', 'TRY', 'right', '1.00', '330d73bc90db125b20b9df252332ff7622310786.jpg', 'Mexican Chicken Cheese Toaster Pizza', 60, 'FFFFFF', 'Nunc molestie mi nunc, nec accumsan libero dignissim sit amet. Fusce sit amet tincidunt metus. Nunc eu risus sus-cipit massa dapibu.', 18, 'FFFFFF', 'View Details', 14, 'DEF5FF', 'https://codecanyon8.kreativdev.com/superv/menus', 'Book A Table', 14, 'https://codecanyon8.kreativdev.com/superv/reservation/form', 'd90948e1fc74cdb330a8a406738eba515cfd7ea0.png', 'fcb533238193dc653fa53170072dadcc74c1f3e5.png', 'https://www.youtube.com/watch?v=n_4QGmK-Tx4', 'ed5772172534f4a749e3bd4e1c04b9a5071becda.png', 'be8122621e6b88033362de16106033521e1c42d2.jpg', NULL, NULL, NULL, '9fd9884cbd3c60d24969d1cee78b3739558f3b9a.jpg', 1, NULL, NULL, '1655440', '4272df0efaa4e8f2f4f5', '5597064d60701548ae4f', 'ap2', 0, NULL, NULL, 0, NULL, NULL, 'Asia/Dubai', 1, 0, '65c49c99cd423.png', '#FF6742', 250, 'square', 'square', 0, NULL, '000000', 15, 50, 50, '548b6f862c23511dc8d54306d4ec74bad211ffa2.png', 20, 50, 50, 'image', 0, 'Order is closed now!', 'FFFFFF', 'Hames Rodrigo', 'Founder & Ceo', '31a7736bbb5f570e506f74acac3fa37762f8279a.png', '19a532e8db7a398c974494a916a455084fd3e99f.png', 'b1a51f61d08f112772cdf5dce6b5a1b5a7c4372a.png', '81d0b246c33aca3172f3df7bc824c94292eb02fd.jpg', '05728984fd698c2582c3d986a4d961b90bdc7c93.jpg', '51fb0a6bf0828b7c69b10ddc3a2dc14dfe46ad47.jpg', '3f8862c295e97e5fd926f24a039a7b5b5e28e9bf.png', 'c12f453e118f6727570b6a453357b6ca72b5892b.png', NULL, 'Our Menus', 'Orange juccice', 60),
(3, 62, 2, 1, 0x3c70206469723d2272746c223ed8b3d98ad8aad98520d8aad8add8b3d98ad98620d8aad8acd8b1d8a8d8aad98320d8b9d984d98920d987d8b0d8a720d8a7d984d985d988d982d8b920d985d98620d8aed984d8a7d98420d8a7d984d8b3d985d8a7d8ad20d8a8d985d984d981d8a7d8aa20d8aad8b9d8b1d98ad98120d8a7d984d8a7d8b1d8aad8a8d8a7d8b73c2f703e, 'السماح للكوكيز', NULL, 'ltr', NULL, NULL, 0, NULL, 'default_service_category', 'james@example.com', 'mcavoy', 0, NULL, NULL, NULL, NULL, NULL, '963014fae2ad0d9cc2040c4ec95ca3b61e64a366.png', 'dbf46d06197f49b1297e4764934a8873e56e8295.png', 'b5f551f4eab65f596bb90ab97bc5350d687b5991.png', 'سعر العناصر المعروضة الخاصة بنا', 'عرض كل قائمة القائمة', '05818280d32e353b11d9dea9ad6407524729322a.jpg', NULL, 0x24, 'left', 'TRY', 'right', '1.00', 'bbad5dddce0911ec88908d4e24993ec5a3ba95fb.jpg', 'أفضل مكان لإصلاح سيارتك', 60, 'FFFFFF', 'سيلون لك في طائر الدجاجة قائلا الهيمنة البلدات الوحش على علاج الأعشاب الداكنة والظلمة التي صنعها والتي تواجه اللحوم.', 18, 'FFFFFF', 'اطلب الان', 14, 'FFFFFF', '/fastifo/menus', 'لفقرات في الصفحة التي', 14, 'fastifo/reservations/form', 'fe91f122e3df7a6cd6fce6fbceb0539a9ff0e2ca.png', '56b799992420adcd9ded204742077069f7d27f58.png', 'https://www.youtube.com/watch?v=n_4QGmK-Tx4', '1d638ba0404056000f801eb90a3bc88e612ed3b5.png', '3e5237bbeaba2e4b8df232b861e977afebdc7b68.jpg', NULL, NULL, NULL, '80dcd599eada49467847539dcd4df44670ae86ee.png', 1, NULL, NULL, '1655440', '4272df0efaa4e8f2f4f5', '5597064d60701548ae4f', 'ap2', 0, NULL, NULL, 0, NULL, NULL, 'Asia/Dubai', 1, 0, '65c49c99cd423.png', '#FF6742', 250, 'square', 'square', 0, NULL, '000000', 15, 50, 50, '548b6f862c23511dc8d54306d4ec74bad211ffa2.png', 20, 50, 50, 'image', 0, 'Order is closed now!', 'FFFFFF', 'Hames Rodrigo', 'Founder & Ceo', 'e25ff543d26f2e79917af643c89015d99582f360.png', '32333b86776f218ddd6f4c3b7d753dd0bec48415.png', '38d9030ab81c3c5563b529441dfbe7769c707e81.png', 'e1a9c82ac0eff1aaa634f1b3e15724ece6550a76.jpg', 'd32b7615912ea786bd9cfdba0bd60a5043d0fdbe.jpg', '2dc1f8dbc26ab22c43d15d341ce25e6c5158e6eb.jpg', 'a92953095e1583de4cb6e2177ebf00193351cf57.png', '7993e36a16fed95640b3d49b64ed9ed92aa6e306.png', NULL, 'أحدث الأخبار', NULL, NULL),
(18, 77, 14, 1, 0x3c703e596f757220657870657269656e6365206f6e207468697320736974652077696c6c20626520696d70726f76656420627920616c6c6f77696e6720636f6f6b6965732e3c2f703e, 'Allow Cookies', NULL, 'ltr', NULL, NULL, 0, NULL, 'default_service_category', 'wudekij@mailinator.com', 'bakery', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '5246a757a611d12e0914fea8a5216283c06d9eb4.png', 'We Offer Low Price Of Our All Bakery & Pestry Foods', NULL, NULL, NULL, 0x24, 'left', 'USD', 'right', '1.00', '8fb842867174a4874074a4077700afbab1be7e4f.png', 'We Offer Bakery & Pastry Products For Your Everyday Life', 60, 'FFFFFF', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.', 18, 'ACACAC', 'Discover Item', 14, 'C19F5F', 'bakery/items', NULL, 14, NULL, NULL, NULL, NULL, '28723882c95f8b63d787f11e1999d71e80277fa8.png', '186616ac9e025a2722256358044853f7add3fbfd.jpg', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 1, NULL, NULL, 'UTC', 0, 0, NULL, '0', 250, 'square', 'square', 0, NULL, '000000', 15, 50, 50, NULL, 20, 50, 50, 'default', 0, 'Order is closed now!', NULL, 'Hames Rodrigo', 'Founder & Ceo', 'a44e20167a2e4d122cd1bf07975ed5c74682753f.png', NULL, NULL, '17c872aca965a5307cfeeb869b96cac395ffb38f.png', '93e5230ef382d26f594992b3b535297255df35f0.png', '3daa92bf6b9c32640a8105e268aa01d3eef01a6f.png', NULL, NULL, NULL, NULL, NULL, NULL),
(19, 78, 15, 1, 0x3c703e596f757220657870657269656e6365206f6e207468697320736974652077696c6c20626520696d70726f76656420627920616c6c6f77696e6720636f6f6b6965732e3c2f703e, 'Allow Cookies', NULL, 'ltr', NULL, NULL, 0, NULL, 'default_service_category', 'ciwohag@mailinator.com', 'pizza', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '72c3082f8cd0c0b71ed9bfeaa194656eeb50b428.png', 'Enjoy Your Favorite Pizza at An Affordable Price', NULL, '4e2829a00f2b646962d05220214c63534c14b5ee.png', NULL, 0x24, 'left', 'USD', 'right', '1.00', '6e16d40b093561c4459c39513f88df7dfba21b06.png', 'NEW HOT DELICIOUS ITALIAN PIZZA', 60, 'ACACAC', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.', 18, 'FFFFFF', 'Order Now', 14, 'FAB940', '/pizza/menus', 'See More', 14, '/pizza/items', '79e1446a840aff724156644c2c3756c1c78a413f.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 1, NULL, NULL, 'America/Antigua', 0, 0, NULL, '0', 250, 'square', 'square', 0, NULL, '000000', 15, 50, 50, NULL, 20, 50, 50, 'default', 0, 'Order is closed now!', 'FFFFFF', NULL, NULL, NULL, '0508c187f60be64b6b4742d8546517144893711a.png', '2fa0749c149f86da1d5dce63f66a4406b28af6b9.png', NULL, '620bac2759bfb891a99789390644422d2a764f86.png', '70a66b22d791c99a6dcf70c8d8867a1622d5a702.png', '1cf3bc3051b45e14cfbe969f31f519a7dc2e3287.png', NULL, NULL, 'Find Out Your Most Favorite Pizza', NULL, NULL),
(20, 79, 16, 1, 0x3c703e596f757220657870657269656e6365206f6e207468697320736974652077696c6c20626520696d70726f76656420627920616c6c6f77696e6720636f6f6b6965732e3c2f703e, 'Allow Cookies', NULL, 'ltr', NULL, NULL, 0, NULL, 'default_service_category', 'loqyfocy@mailinator.com', 'coffee', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'We Offer Coffee at Most Crazy Prices', NULL, 'd6467b7879377a8626b2e3fc48dba6f1df1e9e95.png', NULL, 0x24, 'left', 'USD', 'right', '1.00', '8f1314c697aea8d10fe214141abd62c6de482075.png', 'We’re Organic And Fresh Coffee Shop Partner For You', 60, 'FFFFFF', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.', 18, 'ACACAC', 'Discover More', 14, '623620', '/coffee/items', 'Book A Table', 14, 'coffee/reservations/form', '65eddef77857189d10ed4aec542aa5e44c45d7a1.png', NULL, NULL, 'e4b7da1c429655059ecc8c72a2778a7ef0295d01.png', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 1, NULL, NULL, 'Asia/Dubai', 0, 0, NULL, '0', 250, 'square', 'square', 0, NULL, '000000', 15, 50, 50, NULL, 20, 50, 50, 'default', 0, 'Order is closed now!', 'FFFFFF', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'c54f797ca12a2ac102bbce714aef4b9bf0599dde.png', NULL, NULL, NULL, 'Find out Your Preferred Coffee Menu', NULL, NULL),
(21, 80, 17, 1, 0x3c703e596f757220657870657269656e6365206f6e207468697320736974652077696c6c20626520696d70726f76656420627920616c6c6f77696e6720636f6f6b6965732e3c2f703e, 'Allow Cookies', NULL, 'ltr', NULL, NULL, 0, NULL, 'default_service_category', 'wavomexese@mailinator.com', 'medicine', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '307bc01e0419868321540089ed68a73ea15ed71b.png', 'We Offer You Reasonable Price For All Medicine', NULL, NULL, NULL, 0x24, 'left', 'USD', 'right', '1.00', '4dfe61d5ec442af36879d3a587f85dd2e45770ca.png', 'Your Most Trusted Medicine Partner', 60, '000000', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.', 18, 'ACACAC', 'Discover More', 14, '499AFA', '/medicine/items', 'Book A Table', 14, '/medicine/reservations/form', NULL, NULL, NULL, 'f0f94b0caf909f54e4b91d09690cf4106005a11c.png', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 1, NULL, NULL, 'Asia/Dubai', 0, 0, NULL, '0', 250, 'square', 'square', 0, NULL, '000000', 15, 50, 50, NULL, 20, 50, 50, 'default', 0, 'Order is closed now!', 'FFFFFF', NULL, NULL, NULL, NULL, NULL, NULL, '598f786b24f4aff70b95b5c472cf771bc94f0920.png', NULL, NULL, NULL, NULL, 'Our Most Popular Selling Medicine Products', NULL, NULL),
(22, 81, 18, 1, 0x3c703e596f757220657870657269656e6365206f6e207468697320736974652077696c6c20626520696d70726f76656420627920616c6c6f77696e6720636f6f6b6965732e3c2f703e, 'Allow Cookies', NULL, 'ltr', NULL, NULL, 0, NULL, 'default_service_category', 'kozufony@mailinator.com', 'grocery', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'd6047c23756f4ca7fb586550279f1bd789eef82e.png', 'We Keep Providing Flexible Pricing For Groceries', NULL, NULL, NULL, 0x24, 'left', 'USD', 'right', '1.00', 'dfadb28a8e2200cb13203b0e2ca05735279c4789.png', 'We Provide Grocery Items For Health', 60, '212121', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.', 18, '212121', 'Discover Item', 14, '85C33C', '/grocery/items', 'Book A Table', 14, '/grocery/reservations/form', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 1, NULL, NULL, 'America/Antigua', 0, 0, NULL, '0', 250, 'square', 'square', 0, NULL, '000000', 15, 50, 50, NULL, 20, 50, 50, 'default', 0, 'Order is closed now!', 'FFFFFF', NULL, NULL, '4a2a2b728f2e8f29c02990db3eca1c1d17fdb718.png', NULL, NULL, NULL, NULL, '0e329df806ef1b952316871affc94cffa940601c.png', NULL, '0bc5cc411718af1a5a145adfa079d38516ee0c29.png', NULL, 'Explore Our Trending Grocery Items', NULL, NULL),
(23, 82, 19, 1, 0x3c703e596f757220657870657269656e6365206f6e207468697320736974652077696c6c20626520696d70726f76656420627920616c6c6f77696e6720636f6f6b6965732e3c2f703e, 'Allow Cookies', NULL, 'ltr', NULL, NULL, 0, NULL, 'default_service_category', 'jezehi@mailinator.com', 'beverage', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'd8f34b8757e46d4eae171214df2e6196ff6da698.png', 'We Offer Variable Pricing For All Items', NULL, '5eb79d95e0c0564e9de8dfb814d0e84c85009fed.png', NULL, 0x24, 'left', 'USD', 'right', '1.00', 'c20435f5eebede9427a4d14e49f2f69811c874be.jpg', '100% Pure Orange Natural Juice', 60, '121212', 'Nunc molestie mi nunc, nec accumsan libero dignissim sit amet. Fusce sit amet tincidunt metus. Nunc eu risus sus-cipit massa dapibu.', 18, '212121', 'Show All Products', 14, '121212', '/beverage/items', NULL, 14, NULL, '5bad6597fa91c7e8a074d49b4cbe19cba1bfaa26.png', NULL, NULL, 'eb7aece11e4cf990f02f3bd09deec95329db8fb6.png', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 1, NULL, NULL, 'America/Antigua', 0, 0, NULL, '0', 250, 'square', 'square', 0, NULL, '000000', 15, 50, 50, NULL, 20, 50, 50, 'default', 0, 'Order is closed now!', NULL, NULL, NULL, NULL, NULL, NULL, 'b1376d911134714b1f41bdae9d849580495abd35.png', NULL, '63c48f390f525fa1d861e0182e1268717f207b26.jpg', NULL, NULL, NULL, 'Check out Our in Demand Products', 'Orange juccice', 50);

-- --------------------------------------------------------

--
-- Table structure for table `user_basic_extras`
--

CREATE TABLE `user_basic_extras` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `whatsapp_order_status_notification` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0 - disable, 1 - enable',
  `whatsapp_home_delivery` tinyint(4) NOT NULL DEFAULT '0' COMMENT '1 - enabled, 0 - disabled',
  `whatsapp_pickup` tinyint(4) NOT NULL DEFAULT '0' COMMENT '1 - enabled, 0 - disabled',
  `whatsapp_on_table` tinyint(4) NOT NULL DEFAULT '0' COMMENT '1 - enabled, 0 - disabled',
  `twilio_sid` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twilio_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twilio_phone_number` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `VAPID_PUBLIC_KEY` text COLLATE utf8mb4_unicode_ci,
  `VAPID_PRIVATE_KEY` text COLLATE utf8mb4_unicode_ci,
  `push_notification_icon` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_basic_extras`
--

INSERT INTO `user_basic_extras` (`id`, `user_id`, `whatsapp_order_status_notification`, `whatsapp_home_delivery`, `whatsapp_pickup`, `whatsapp_on_table`, `twilio_sid`, `twilio_token`, `twilio_phone_number`, `VAPID_PUBLIC_KEY`, `VAPID_PRIVATE_KEY`, `push_notification_icon`) VALUES
(2, 2, 0, 0, 0, 0, 'AC87db7baafc84b106f2d59eee812b8f7e', '278775c1412d7a19c9c336fc0e635785', '+13419464077', NULL, NULL, NULL),
(13, 14, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(14, 15, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(15, 16, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(16, 17, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(17, 18, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(18, 19, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_basic_settings`
--

CREATE TABLE `user_basic_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `language_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `favicon` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `from_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `storage_usage` float DEFAULT '0',
  `aws_status` tinyint(4) DEFAULT NULL,
  `preloader_status` tinyint(4) DEFAULT '0' COMMENT '0 - deactive, 1 - active',
  `preloader` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `website_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `base_color` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT 'D3A971',
  `secondary_base_color` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `support_email` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `support_phone` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `breadcrumb` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `footer_logo` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `footer_text` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `newsletter_text` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `copyright_text` blob,
  `intro_section_title` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `intro_title` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `intro_text` text COLLATE utf8mb4_unicode_ci,
  `intro_contact_text` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `intro_contact_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `intro_video_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `intro_signature` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `intro_video_link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `intro_main_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_form_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_address` text COLLATE utf8mb4_unicode_ci,
  `contact_number` text COLLATE utf8mb4_unicode_ci,
  `contact_mails` text COLLATE utf8mb4_unicode_ci,
  `contact_text` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `latitude` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `longitude` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `map_zoom` int(11) NOT NULL DEFAULT '10',
  `contact_info_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tawkto_direct_chat_link` text COLLATE utf8mb4_unicode_ci,
  `measurement_id` text COLLATE utf8mb4_unicode_ci,
  `is_recaptcha` tinyint(4) NOT NULL DEFAULT '0',
  `google_recaptcha_site_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `google_recaptcha_secret_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_tawkto` tinyint(4) NOT NULL DEFAULT '1',
  `is_disqus` tinyint(4) NOT NULL DEFAULT '1',
  `disqus_shortname` text COLLATE utf8mb4_unicode_ci,
  `is_analytics` tinyint(4) NOT NULL DEFAULT '1',
  `maintenance_img` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `maintenance_mode` tinyint(4) NOT NULL DEFAULT '0' COMMENT '1 - active, 0 - deactive',
  `maintenance_text` text COLLATE utf8mb4_unicode_ci,
  `ips` text COLLATE utf8mb4_unicode_ci,
  `theme` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `home_version` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `feature_section` tinyint(4) NOT NULL DEFAULT '1',
  `intro_section` tinyint(4) NOT NULL DEFAULT '1',
  `testimonial_section` tinyint(4) NOT NULL DEFAULT '1',
  `team_section` tinyint(4) NOT NULL DEFAULT '1',
  `news_section` tinyint(4) NOT NULL DEFAULT '1',
  `menu_section` int(11) NOT NULL DEFAULT '1',
  `special_section` int(11) NOT NULL DEFAULT '1',
  `instagram_section` int(11) NOT NULL DEFAULT '1',
  `table_section` int(11) NOT NULL DEFAULT '1',
  `top_footer_section` tinyint(4) NOT NULL DEFAULT '1',
  `copyright_section` tinyint(4) NOT NULL DEFAULT '1',
  `is_quote` tinyint(4) NOT NULL DEFAULT '1',
  `office_time` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `token_no_start` int(11) NOT NULL DEFAULT '1',
  `token_no` int(11) NOT NULL DEFAULT '0',
  `postal_code` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1 - enabled, 0 - disabled',
  `qr_call_waiter` tinyint(4) NOT NULL DEFAULT '1',
  `website_call_waiter` tinyint(4) NOT NULL DEFAULT '1',
  `is_whatsapp` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1 - enable, 0 - disable',
  `whatsapp_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `whatsapp_header_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Chat with us on WhatsApp!',
  `whatsapp_popup_message` text COLLATE utf8mb4_unicode_ci,
  `whatsapp_popup` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1 - enable, 0 - disable',
  `testimonial_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `testimonial_section_text` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `feature_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `blog_section_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `intro_section_video_button_text` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `intro_section_button_text` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `intro_section_button_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `intro_section_top_shape_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `intro_section_bottom_shape_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `intro_section_blockquote_text` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `blog_section_subtitle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `features_section_top_shape_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `features_section_bottom_shape_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `intro_section_video_button_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `intro_section_author_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `intro_section_author_designation` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `intro_section_author_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_basic_settings`
--

INSERT INTO `user_basic_settings` (`id`, `language_id`, `user_id`, `favicon`, `logo`, `email`, `from_name`, `storage_usage`, `aws_status`, `preloader_status`, `preloader`, `website_title`, `base_color`, `secondary_base_color`, `support_email`, `support_phone`, `breadcrumb`, `footer_logo`, `footer_text`, `newsletter_text`, `copyright_text`, `intro_section_title`, `intro_title`, `intro_text`, `intro_contact_text`, `intro_contact_number`, `intro_video_image`, `intro_signature`, `intro_video_link`, `intro_main_image`, `contact_form_title`, `contact_address`, `contact_number`, `contact_mails`, `contact_text`, `latitude`, `longitude`, `map_zoom`, `contact_info_title`, `tawkto_direct_chat_link`, `measurement_id`, `is_recaptcha`, `google_recaptcha_site_key`, `google_recaptcha_secret_key`, `is_tawkto`, `is_disqus`, `disqus_shortname`, `is_analytics`, `maintenance_img`, `maintenance_mode`, `maintenance_text`, `ips`, `theme`, `home_version`, `feature_section`, `intro_section`, `testimonial_section`, `team_section`, `news_section`, `menu_section`, `special_section`, `instagram_section`, `table_section`, `top_footer_section`, `copyright_section`, `is_quote`, `office_time`, `token_no_start`, `token_no`, `postal_code`, `qr_call_waiter`, `website_call_waiter`, `is_whatsapp`, `whatsapp_number`, `whatsapp_header_title`, `whatsapp_popup_message`, `whatsapp_popup`, `testimonial_title`, `testimonial_section_text`, `feature_title`, `blog_section_title`, `intro_section_video_button_text`, `intro_section_button_text`, `intro_section_button_url`, `intro_section_top_shape_image`, `intro_section_bottom_shape_image`, `intro_section_blockquote_text`, `blog_section_subtitle`, `features_section_top_shape_image`, `features_section_bottom_shape_image`, `intro_section_video_button_title`, `intro_section_author_name`, `intro_section_author_designation`, `intro_section_author_image`) VALUES
(2, 61, 2, 'bdb4338588465741ab308b6a6b8fbba01648edae.png', 'f7d16545ddfe3a7321d6597773b98c0e7e6b1e55.png', NULL, NULL, 35.78, NULL, 1, '0496b56aa572df8ab72a100fabd7dea3e18d317e.gif', 'fastifo', 'D3A971', NULL, 'james@example.com', '+1 (952) 237-1394', 'abce008212cc3b929994c8d3c4a1970f065f41d0.jpg', '89894ee045e7526b58e24fc50ee48c6037d9a515.png', 'We are a awward winning multinaitonal Company. We Believe quality and standard worlwidex Consider.', NULL, 0x3c703e436f7079726967687420c2a920323032342e20416c6c20726967687473207265736572766564206279204661737469466f3c2f703e, 'Our Story', 'Our Cafe 20 years working experience.', 'Donec scelerisque dolor id nunc dictum, interdum gravida mauris rhoncus. Aliquam at ultrices nunc. In sem leo, fermentum at lorem in, porta finibus mauris. Aliquam consectetur, ex in gravida porttitor,', 'Our 24/7 Phone Services', '555 666 999 00', '92d5b5358e3b6349492fa2782344372497a979c9.jpg', '41229141de905618a5cb470322653f2aacc40b98.png', 'https://www.youtube.com/watch?v=GlrxcuEDyF8', '30edcfb148972e171c8a26031a507ee2df34d9cf.png', 'Leave Reply', '143 castle road 517 district, kiyev port south Canada New South Wales, Australia.Juventus, Italia', '+3 123 456 789,00066668888,75920057926', 'contact@superv.com,info@superv.com,contact@plusagency.com', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum.', '33.753746', '-84.386330', 10, 'CONTACT INFO', 'https://tawk.to/chat/654f2647cec6a912820ed3aa/1heuir292', 'G-299M779G1L', 0, '6LcUbxcmAAAAAALlpwxA15SvZr6mJU3gO7S_g4vw', '6LcUbxcmAAAAAPCeq5KQ51FPpPDfExR8S71cvdmE', 0, 1, 'eordar', 1, 'eea251a79dcdf861f993f492a69235b51f07fadc.png', 0, 'is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', NULL, 'fastfood', 'slider', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 'Saturday to Friday  9Am - 11 Pm', 1, 9, 1, 1, 1, 1, '+8801689583182', 'Chat with us on WhatsApp!', 'Admin can also disable WhatsApp Chat\r\n& enable Tawk.to chat\r\n(Admin can set any message here)', 1, 'What Our client Saying ?', 'lorem ipsum', 'Explore Our Most Popular Bakery & Pestry Itemsdd', 'Our Blog', 'How To Place Order', 'Order Now', '/fastifo/items', 'cab04cf5852508d35084c30492678d30eae27610.png', 'f5490eb6e41104c14838144b728f960ca3de0814.png', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s,', NULL, 'c8d3ec4277c5f4d65f207faf29de384bcbb9d46d.png', '0dcc3bd6bd02a90a476640e315364910aa5a3a5c.png', 'lorem ipsum', 'Imran', 'Developer', '5588bf2de044c681be34018ca6137f9b36d83641.jpg'),
(3, 62, 2, 'bdb4338588465741ab308b6a6b8fbba01648edae.png', 'f7d16545ddfe3a7321d6597773b98c0e7e6b1e55.png', NULL, NULL, 35.78, NULL, 1, '0496b56aa572df8ab72a100fabd7dea3e18d317e.gif', 'fastifo', 'D3A971', NULL, 'james@example.com', '+1 (952) 237-1394', 'abce008212cc3b929994c8d3c4a1970f065f41d0.jpg', '3f539f4d13929057fed494e711aad383d9c02737.png', 'نحن شركة متعددة الأطراف فائزة بشكل كبير. نحن نؤمن بالجودة والمعايير التي نأخذها بعين الاعتبار.', NULL, 0x3c70206469723d2272746c223ed8acd985d98ad8b920d8a7d984d8add982d988d98220d985d8add981d988d8b8d8a920c2a920323032342e3c2f703e, 'قصتنا', 'لدينا 20 عاما من الخبرة العملية في مقهى.', 'هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها. ولذلك يتم استخدام', 'Our 24/7 Phone Services', '555 666 999 00', '05e79c4cc39df92048ed11d8072abf64ca477b9a.jpg', 'faf85612ba01adafc1735f0b7c61ef5dc095b99c.png', 'https://www.youtube.com/watch?v=GlrxcuEDyF8', '294f3a04b4c2fd49923c3f17fdcd1450f6e712e9.png', 'اترك الرد', '143 طريق القلعة 517 حي,ميناء كييف جنوب كندا', '12345678912,03216549871', NULL, 'هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل', '33.753746', '-84.386330', 15, 'معلومات الاتصال', 'https://tawk.to/chat/654f2647cec6a912820ed3aa/1heuir292', 'G-299M779G1L', 0, '6LcUbxcmAAAAAALlpwxA15SvZr6mJU3gO7S_g4vw', '6LcUbxcmAAAAAPCeq5KQ51FPpPDfExR8S71cvdmE', 0, 1, 'eordar', 1, 'eea251a79dcdf861f993f492a69235b51f07fadc.png', 0, 'is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', NULL, 'fastfood', 'slider', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 'Saturday to Friday  9Am - 11 Pm', 1, 0, 1, 1, 1, 1, '+8801689583182', 'Chat with us on WhatsApp!', 'Admin can also disable WhatsApp Chat\r\n& enable Tawk.to chat\r\n(Admin can set any message here)', 1, 'ماذا يقول عملائنا؟', 'ماذا يقول عملائنا؟', 'وجبات خفيفة ساخنة', 'أحدث الأخبار', 'لفقرات في الصفحة التي', 'اطلب الان', 'fastifo/items', '8b821f04175d34667ef927b72800017c1edfe692.png', 'd4605ec61356e7d1e616f5e0e1e4cf86268c9011.png', 'هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها. ولذلك يتم استخدام', NULL, '926175ffc7980cb3a3c7aa44fab5b941df68360b.png', '058b05c3b16b6de1a8708d28d9528f4b944d6533.png', 'لفقرات في الصفحة التي', 'Imran', 'Developer', '5cf35c0c58a02333b7b118f4dd6b2b022f94b9a8.jpg'),
(18, 77, 14, 'ac286dd5e06f6779bbc4b245b5f3c2ffe7e3d7e5.png', 'e0243a7e2884b5f5f4b3abfb04d7f93c484b64f4.png', NULL, NULL, 16.82, NULL, 1, 'b283a9657252f1f41f7bb314156b5fdb724baad3.gif', 'bakery', 'D3A971', NULL, 'wudekij@mailinator.com', NULL, NULL, 'd883140259dc30d1a1a6dcafb1130c15319f5f38.png', 'We are a awward winning multinaitonal Company. We Believe quality and standard worlwidex Consider.', NULL, 0x3c703e436f7079726967687420c2a920323032342e20416c6c207269676874732072657365727665642062792062616b6572792e3c2f703e, NULL, 'Quality And Passion With Our Services Priority', 'The study is the work of researchers at Nottingham University’s School of Medicine who focused on chemicals known as antigens.In particular, they cause our bodies to make auto-antibodies that target and try to block those invading antigens.', NULL, NULL, NULL, NULL, NULL, '5f7001694cf4e6016923a0c76c631b5918ef40ec.png', 'Leave Reply', '143 castle road 517 district, kiyev port south Canada\r\nNew South Wales, Australia.\r\nJuventus, Italia', '0215698756,123654789321', 'contact@eordar.com', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum.', NULL, NULL, 10, 'CONTACT INFO', NULL, NULL, 0, NULL, NULL, 0, 1, NULL, 1, NULL, 0, NULL, NULL, 'bakery', 'slider', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL, 1, 0, 1, 1, 1, 0, NULL, 'Chat with us on WhatsApp!', NULL, 0, 'What Our client Saying ?', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Hic enim minus numquam necessitatibus soluta sed quidem excepturi omnis voluptatem, beatae,', 'Explore Our Most Popular Bakery & Pestry Items', 'Read Our Blog Post', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(19, 78, 15, 'ad338948be18a706d9104d22567117859b77fe4c.png', 'e81cce0a31eb88d6b9635a70852945b5e0078ed3.png', NULL, NULL, 15.25, NULL, 1, '138da2713561d5e113c803f70f59ba5cc5425bd0.gif', 'pizza', 'FAB940', NULL, 'ciwohag@mailinator.com', NULL, NULL, 'cd6a0de5eb22ec08b5b28ebcd31de35ee0238cb9.png', 'We are a awward winning multinaitonal Company. We Believe quality and standard worlwidex Consider.', NULL, 0x3c703e436f7079726967687420c2a920323032342e20416c6c207269676874732072657365727665642062792050697a7a613c2f703e, NULL, 'Affordable Pizza Delivery from Your Trusted Store', 'The study is the work of researchers at Nottingham University’s School of Medicine who focused on chemicals known as antigens.In particular, they cause our bodies to make auto-antibodies that target and try to block those invading antigens.', NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=GlrxcuEDyF8', '37bf64ac768ba3735ce31a728b2523c136b39498.png', NULL, '143 castle road 517 district, kiyev port south Canada New South Wales, Australia.Juventus, Italia\r\n+3 123 456 789', '75920057926,+3 123 456 789', 'contact@pizza.com,info@pizza.com', NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, 0, 1, NULL, 1, NULL, 0, NULL, NULL, 'pizza', 'slider', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 'Sunday to Friday  8Am - 10 Pm', 1, 0, 1, 1, 1, 0, NULL, 'Chat with us on WhatsApp!', NULL, 1, 'What Our Customer Says About Our Pizza', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Excepturi minus exercitationem reiciendis quam. Laudantium sequi.', 'Explore Our Most Popular Bakery & Pestry Items', 'Read Our Blog Post', 'How To Place Order', 'Order Now', '/pizza/menus', 'd35041fedfa8080f41afc5a74b3ffde85cb55bad.png', '16a9804e8030a4f604ee7d6bc262089cde3c684e.png', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Id sint quam facere suscipit ea quibusdam esse vero. Repellendus!', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(20, 79, 16, '73fd40a8706b073cbd5e04754a0a12fcbc5625fb.png', 'a402557988c9ea875a56c06adfefcd52606a99d8.png', NULL, NULL, 10.16, NULL, 1, '1b2601045197fc4153bce40d26d5e852a57dccfa.gif', 'coffee', '623620', NULL, 'loqyfocy@mailinator.com', NULL, NULL, 'a0c18ef66f6e4debeb00a492d8420298dcc2be88.png', 'We invite you to embark on a culinary adventure with us. Discover a harmonious blend of flavors, impeccable service, and a dining experience that will linger in your memory long after you leave.', NULL, 0x3c703e436f70797269676874c2a03c7370616e3e323032343c2f7370616e3e205472656174732e20416c6c205269676874732052657365727665643c2f703e, NULL, 'One off The Best Coffee Shop House in The City', 'The advice left many medical experts scratching their heads. The coronavirus is a new pathogen, and little is known about the disease it causes, called Covid-19, or respond to common medications. On Wednesday, the World Health Organization.', NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=GlrxcuEDyF8', '7bfb0f8e7bcbec40a602b38203bae233cdc1d216.png', NULL, '143 castle road 517 district, kiyev port south Canada New South Wales, Australia.Juventus, Italia', '+3 123 456 789,75920057926', 'contact@coffe.com,info@coffee.com', NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, 0, 1, NULL, 1, NULL, 0, NULL, NULL, 'coffee', 'slider', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 'Sunday to Friday  8Am - 10 Pm', 1, 0, 1, 1, 1, 0, NULL, 'Chat with us on WhatsApp!', NULL, 0, 'What Our Happy and Fulfilled Clients Say\'s About Us', NULL, 'Our Popular Coffee Menu', 'Read Our Blog Post', 'How To Place Order', 'Reservation', '/coffee/reservations/form', NULL, NULL, NULL, NULL, '674ce80118aebece3a1483b235787cad564b2d6a.png', 'fc1aea851529e48d6ab8828af344e2abd6134316.png', NULL, NULL, NULL, NULL),
(21, 80, 17, 'ca4929d04200810c3d41d8790eb57e09eed54c6f.png', 'f33751eec1cac88e26d4e59d6fee34bb69f0e423.png', NULL, NULL, 6.53, NULL, 1, '498ec1078eea470d631adc96c7d190d63e2f62dd.gif', 'medicine', '499AFA', NULL, 'wavomexese@mailinator.com', NULL, NULL, '60ec2a7e1079a0e0cf0a675bb0a8c5b2bf000925.png', 'We are a awward winning multinaitonal Company. We Believe quality and standard worlwidex Consider.', NULL, 0x3c703e436f7079726967687420c2a920323032342e20416c6c20726967687473207265736572766564206279204d65646963696e653c2f703e, NULL, 'We Provide Medicine For Healthy & Enjoyable Life', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Cupiditate dolorum perferendis totam maxime tempore tempora amet, cumque accusamus nemo eveniet alias saepe.', NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=GlrxcuEDyF8', '5582be98fd390b2d95ede90c4733a937839f2131.png', NULL, '143 castle road 517 district, kiyev port south Canada New South Wales, Australia.Juventus, Italia', '+3 123 456 789,75920057926', 'contact@medicine.com,info@medicine.com', NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, 0, 1, NULL, 1, NULL, 0, NULL, NULL, 'medicine', 'slider', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 'Sunday to Friday  8Am - 10 Pm', 1, 0, 1, 1, 1, 0, NULL, 'Chat with us on WhatsApp!', NULL, 0, 'What Our client Saying ?', NULL, 'Explore 1000+ Medicine & Medical Equipment', NULL, 'How To Place Order', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Video Tutorial', 'Hames Rodrigo', 'Founder & Ceo', '4901920c3b7165abacd3f323e5fc6203c3ca9bde.jpg'),
(22, 81, 18, 'a1f4008fd6e4268c5d5ec0f21f0e9ec270e3bdd2.png', 'dfc4ec52a7763641a837db4629f36d104fb78a42.png', NULL, NULL, 7.37, NULL, 1, '281cf39ad476de5070d617722ce525df1a621892.gif', 'grocery', '85C33C', NULL, 'kozufony@mailinator.com', NULL, NULL, '30741ced0bc440955a72fe3b494804cf9e6d9d5d.png', 'We are a awward winning multinaitonal Company. We Believe quality and standard worlwidex Consider.', NULL, 0x3c703e436f7079726967687420c2a920323032332e20416c6c2072696768747320726573657276656420627920456f726461722e3c2f703e, NULL, 'You Will Find All Types Pure And Fresh Items', NULL, NULL, NULL, NULL, NULL, NULL, '2f04eca3520f607ebd374557fed1d1a4bd907bf2.png', NULL, '143 castle road 517 district, kiyev port south Canada New South Wales, Australia.Juventus, Italia', '+3 123 456 789,75920057926', 'contact@grocery.com,info@grocery.com', NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, 0, 1, NULL, 1, NULL, 0, NULL, NULL, 'grocery', 'slider', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 'Sunday to Friday  8Am - 10 Pm', 1, 0, 1, 1, 1, 0, NULL, 'Chat with us on WhatsApp!', NULL, 0, 'What Our Customer Say About Our Products', 'It has been an absolute pleasure dealing with Scan during the lockdown. Our church began.', 'Explore Using the Most Popular Categories', 'Read Our Blog Post', NULL, 'Start Your Shopping', '/grocery/items', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(23, 82, 19, '0fcf5e6aadaba89217b30c4dd449f61178ba06d0.png', 'a6e2779929857d1d651e87e96b642beffa66fe35.png', NULL, NULL, 10.29, NULL, 1, '34e04433f92348c645f62328e6f3fc52b6e5a70a.gif', 'beverage', 'EE7712', NULL, 'jezehi@mailinator.com', NULL, NULL, '810e7b14a6177ffefb061ec342869f32231d2088.png', 'We are a awward winning multinaitonal Company. We Believe quality and standard worlwidex Consider.', NULL, 0x3c703e436f7079726967687420c2a920323032342e20416c6c207269676874732072657365727665642062792042657665726167653c2f703e, NULL, 'One Off The Best Juice And Ice cream Shop', 'The advice left many medical experts scratching their heads. The coronavirus is a new pathogen, and little is known about the disease it causes, called Covid-19, or respond to common medications. On Wednesday, the World Health Organization', NULL, NULL, NULL, NULL, NULL, '6e11f216d6b0affbb9b68a6cec8c778e36f5a444.png', NULL, '143 castle road 517 district, kiyev port south Canada New South Wales, Australia.Juventus, Italia', '+3 123 456 789,75920057926', 'contact@beverage.com,info@beverage.com', NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, 0, 1, NULL, 1, NULL, 0, NULL, NULL, 'beverage', 'slider', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 'Sunday to Friday  8Am - 10 Pm', 1, 0, 1, 1, 1, 0, NULL, 'Chat with us on WhatsApp!', NULL, 0, 'What Our Happy and Fulfilled Clients Say\\s About Us', NULL, 'Our Most Popular Categories', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a533ba50843e53da80d2c02d9535620d4ff60647.png', 'dcfe89f48a9bf306cef963137518b806a1739fde.png', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_blogs`
--

CREATE TABLE `user_blogs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `image` varchar(255) NOT NULL,
  `serial_number` mediumint(8) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_blogs`
--

INSERT INTO `user_blogs` (`id`, `user_id`, `image`, `serial_number`, `created_at`, `updated_at`) VALUES
(1, 2, 'b192189db0bbd325fd7f5290d853f8e3e32e8207.jpg', 1, '2024-01-17 15:01:13', '2024-01-17 15:01:13'),
(2, 2, '9a83be3a563169b018abfe479ec97f98dc89d048.jpg', 2, '2024-01-17 15:04:32', '2024-01-17 15:04:32'),
(3, 2, 'd0d8786da33aeb577a68840e16b58655a5872be7.jpg', 3, '2024-01-17 15:34:43', '2024-01-17 15:34:43'),
(4, 2, 'e1a352e84015f3d7e4c85c6c73b9d9e80e04b54f.jpg', 4, '2024-01-17 15:37:29', '2024-01-17 15:37:29'),
(5, 2, '50ebdba11a9f254481418ebff6fa0fd48ea8d560.jpg', 5, '2024-01-17 15:47:18', '2024-01-17 15:47:18'),
(6, 2, 'aad603beee033815c677bfb84bc754695b291d39.jpg', 6, '2024-01-17 15:53:17', '2024-01-17 15:53:17'),
(7, 6, 'b192189db0bbd325fd7f5290d853f8e3e32e8207.jpg', 1, '2024-01-17 15:01:13', '2024-01-17 15:01:13'),
(8, 6, '9a83be3a563169b018abfe479ec97f98dc89d048.jpg', 2, '2024-01-17 15:04:32', '2024-01-17 15:04:32'),
(9, 6, 'd0d8786da33aeb577a68840e16b58655a5872be7.jpg', 3, '2024-01-17 15:34:43', '2024-01-17 15:34:43'),
(10, 6, 'e1a352e84015f3d7e4c85c6c73b9d9e80e04b54f.jpg', 4, '2024-01-17 15:37:29', '2024-01-17 15:37:29'),
(11, 6, '50ebdba11a9f254481418ebff6fa0fd48ea8d560.jpg', 5, '2024-01-17 15:47:18', '2024-01-17 15:47:18'),
(12, 6, 'aad603beee033815c677bfb84bc754695b291d39.jpg', 6, '2024-01-17 15:53:17', '2024-01-17 15:53:17'),
(13, 7, 'b192189db0bbd325fd7f5290d853f8e3e32e8207.jpg', 1, '2024-01-17 15:01:13', '2024-01-17 15:01:13'),
(14, 7, '9a83be3a563169b018abfe479ec97f98dc89d048.jpg', 2, '2024-01-17 15:04:32', '2024-01-17 15:04:32'),
(15, 7, 'd0d8786da33aeb577a68840e16b58655a5872be7.jpg', 3, '2024-01-17 15:34:43', '2024-01-17 15:34:43'),
(16, 7, 'e1a352e84015f3d7e4c85c6c73b9d9e80e04b54f.jpg', 4, '2024-01-17 15:37:29', '2024-01-17 15:37:29'),
(17, 7, '50ebdba11a9f254481418ebff6fa0fd48ea8d560.jpg', 5, '2024-01-17 15:47:18', '2024-01-17 15:47:18'),
(18, 7, 'aad603beee033815c677bfb84bc754695b291d39.jpg', 6, '2024-01-17 15:53:17', '2024-01-17 15:53:17'),
(25, 14, '02b8ba25b9e2d2840cc6e326f28d245f83742079.jpg', 1, '2024-02-23 17:36:56', '2024-02-23 17:36:56'),
(26, 14, '7932e13900a4db6459f396bc58e46a4b876043c9.jpg', 2, '2024-02-23 17:37:33', '2024-02-23 17:37:33'),
(27, 14, '28a52755475cfac2c56dd9aedacc73b2a67eaf70.jpg', 2, '2024-02-23 17:38:41', '2024-02-23 17:38:41'),
(28, 15, '20fc86a1144546f1a8410f097e113bf9ed250e8d.jpg', 2, '2024-02-23 17:48:11', '2024-02-23 17:48:11'),
(29, 15, 'd8a8acf358587c025980de71af919fd986925695.jpg', 2, '2024-02-23 17:48:54', '2024-02-23 17:48:54'),
(30, 15, 'b8891f0ac4633ce5a82bbcf5fce2049d58e8dfa1.jpg', 3, '2024-02-23 17:49:28', '2024-02-23 17:49:28'),
(31, 16, 'a74c9ad2b8e77da9f1092ecc2d84952ffa86e768.jpg', 1, '2024-02-23 17:50:44', '2024-02-23 17:50:44'),
(32, 16, '4811ff7c3e0eb03255081bfbfee9599e92089f0f.jpg', 2, '2024-02-23 17:51:08', '2024-02-23 17:51:08'),
(33, 16, '9d5480e2443e6d6b4c9f521d0871232f6971c134.jpg', 3, '2024-02-23 17:51:39', '2024-02-23 17:51:39'),
(34, 17, '93ed927b4283895ee57df5887e3dd09d52fd11a2.jpg', 1, '2024-02-23 17:52:58', '2024-02-23 17:52:58'),
(35, 17, 'c7f9598369326d6c1450e16ae06a9da2ff4686fa.jpg', 2, '2024-02-23 17:53:22', '2024-02-23 17:53:22'),
(36, 17, '43f55c2f7aed72539d3fb7aff4fbc63ee9e1b9b0.jpg', 3, '2024-02-23 17:53:54', '2024-02-23 17:53:54'),
(37, 18, '0e5c03d35c537231b95129a9a517e4939aba907f.jpg', 1, '2024-02-23 17:55:16', '2024-02-23 17:55:16'),
(38, 18, '6496e242edac0281084fa57649288f99199e6fb3.jpg', 2, '2024-02-23 17:56:19', '2024-02-23 17:56:19'),
(39, 18, '20beacdcfd8ac83defea9cd549b0449f94bced53.jpg', 3, '2024-02-23 17:56:58', '2024-02-23 17:56:58'),
(40, 19, '6bef9e11cbf2788d1ca5f9113755a9377dc4b4b5.jpg', 1, '2024-02-23 17:59:17', '2024-02-23 17:59:17'),
(41, 19, '5af88e3392317b3a2835b8f4cabee0f955d2d80e.jpg', 2, '2024-02-23 17:59:55', '2024-02-23 17:59:55'),
(42, 19, 'd91a09f7c7ff8b2d6e0438d3778ae674a9fa3b5e.jpg', 3, '2024-02-23 18:00:24', '2024-02-23 18:00:24');

-- --------------------------------------------------------

--
-- Table structure for table `user_blog_categories`
--

CREATE TABLE `user_blog_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `language_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `status` tinyint(3) UNSIGNED NOT NULL,
  `serial_number` mediumint(8) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_blog_categories`
--

INSERT INTO `user_blog_categories` (`id`, `language_id`, `user_id`, `name`, `slug`, `status`, `serial_number`, `created_at`, `updated_at`) VALUES
(2, 61, 2, 'Foods', 'Foods', 1, 1, '2024-01-17 14:52:47', '2024-01-17 15:41:47'),
(3, 62, 2, 'الأطعمة', 'الأطعمة', 1, 1, '2024-01-17 14:53:18', '2024-01-17 15:43:25'),
(4, 61, 2, 'Recipes', 'Recipes', 1, 2, '2024-01-17 14:53:38', '2024-01-17 14:53:38'),
(5, 62, 2, 'وصفات', 'وصفات', 1, 2, '2024-01-17 14:55:08', '2024-01-17 14:55:08'),
(6, 61, 2, 'Fun & Jamming', 'Fun-&-Jamming', 1, 3, '2024-01-17 14:55:26', '2024-01-17 14:55:26'),
(7, 62, 2, 'المرح والتشويش', 'المرح-والتشويش', 1, 3, '2024-01-17 14:55:47', '2024-01-17 14:55:47'),
(8, 61, 2, 'Cooking', 'Cooking', 1, 4, '2024-01-17 14:56:05', '2024-01-17 14:57:52'),
(9, 62, 2, 'طبخ', 'طبخ', 1, 4, '2024-01-17 14:56:28', '2024-01-17 14:58:07'),
(18, 77, 14, 'Cooking', 'Cooking', 1, 1, '2024-02-23 17:34:42', '2024-02-23 17:34:42'),
(19, 77, 14, 'Foods', 'Foods', 1, 2, '2024-02-23 17:34:53', '2024-02-23 17:34:53'),
(20, 78, 15, 'Cooking', 'Cooking', 1, 1, '2024-02-23 17:47:19', '2024-02-23 17:47:19'),
(21, 78, 15, 'Foods', 'Foods', 1, 2, '2024-02-23 17:47:32', '2024-02-23 17:47:32'),
(22, 79, 16, 'Foods', 'Foods', 1, 1, '2024-02-23 17:50:04', '2024-02-23 17:50:04'),
(23, 79, 16, 'Cooking', 'Cooking', 1, 2, '2024-02-23 17:50:15', '2024-02-23 17:50:15'),
(24, 80, 17, 'Foods', 'Foods', 1, 1, '2024-02-23 17:52:15', '2024-02-23 17:52:15'),
(25, 80, 17, 'Cooking', 'Cooking', 1, 2, '2024-02-23 17:52:30', '2024-02-23 17:52:30'),
(26, 81, 18, 'Cooking', 'Cooking', 1, 1, '2024-02-23 17:54:34', '2024-02-23 17:54:34'),
(27, 81, 18, 'Foods', 'Foods', 1, 2, '2024-02-23 17:54:43', '2024-02-23 17:54:43'),
(28, 82, 19, 'Cooking', 'Cooking', 1, 1, '2024-02-23 17:57:32', '2024-02-23 17:57:32'),
(29, 82, 19, 'Foods', 'Foods', 1, 2, '2024-02-23 17:57:42', '2024-02-23 17:57:42');

-- --------------------------------------------------------

--
-- Table structure for table `user_blog_informations`
--

CREATE TABLE `user_blog_informations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `language_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `blog_category_id` bigint(20) UNSIGNED NOT NULL,
  `blog_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `author` varchar(255) NOT NULL,
  `content` blob NOT NULL,
  `meta_keywords` varchar(255) DEFAULT NULL,
  `meta_description` text,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_blog_informations`
--

INSERT INTO `user_blog_informations` (`id`, `language_id`, `user_id`, `blog_category_id`, `blog_id`, `title`, `slug`, `author`, `content`, `meta_keywords`, `meta_description`, `created_at`, `updated_at`) VALUES
(1, 61, 2, 8, 1, 'Fusce convallis enim non magna Duis lacus dignissim.', 'Fusce-convallis-enim-non-magna-Duis-lacus-dignissim.', 'Specimen', 0x3c703e69732073696d706c792064756d6d792074657874206f6620746865207072696e74696e6720616e64207479706573657474696e6720696e6475737472792e204c6f72656d20497073756d20686173206265656e2074686520696e6475737472792773207374616e646172642064756d6d79207465787420657665722073696e6365207468652031353030732c207768656e20616e20756e6b6e6f776e207072696e74657220746f6f6b20612067616c6c6579206f66207479706520616e6420736372616d626c656420697420746f206d616b65206120747970652073706563696d656e20626f6f6b2e2069732073696d706c792064756d6d792074657874206f6620746865207072696e74696e6720616e64207479706573657474696e6720696e6475737472792e204c6f72656d20497073756d20686173206265656e2074686520696e6475737472792773207374616e646172642064756d6d79207465787420657665722073696e6365207468652031353030732c207768656e20616e20756e6b6e6f776e207072696e74657220746f6f6b20612067616c6c6579206f66207479706520616e6420736372616d626c656420697420746f206d616b65206120747970652073706563696d656e20626f6f6b2e69732073696d706c792064756d6d792074657874206f6620746865207072696e74696e6720616e64207479706573657474696e6720696e6475737472792e204c6f72656d20497073756d20686173206265656e2074686520696e6475737472792773207374616e646172642064756d6d79207465787420657665722073696e6365207468652031353030732c207768656e20616e20756e6b6e6f776e207072696e74657220746f6f6b20612067616c6c6579206f66207479706520616e6420736372616d626c656420697420746f206d616b65206120747970652073706563696d656e20626f6f6b2e2069732073696d706c792064756d6d792074657874206f6620746865207072696e74696e6720616e64207479706573657474696e6720696e6475737472792e204c6f72656d20497073756d20686173206265656e2074686520696e6475737472792773207374616e646172642064756d6d79207465787420657665722073696e6365207468652031353030732c207768656e20616e20756e6b6e6f776e207072696e74657220746f6f6b20612067616c6c6579206f66207479706520616e6420736372616d626c656420697420746f206d616b65206120747970652073706563696d656e20626f6f6b2e69732073696d706c792064756d6d792074657874206f6620746865207072696e74696e6720616e64207479706573657474696e6720696e6475737472792e204c6f72656d20497073756d20686173206265656e2074686520696e6475737472792773207374616e646172642064756d6d79207465787420657665722073696e6365207468652031353030732c207768656e20616e20756e6b6e6f776e207072696e74657220746f6f6b20612067616c6c6579206f66207479706520616e6420736372616d626c656420697420746f206d616b65206120747970652073706563696d656e20626f6f6b2e2069732073696d706c792064756d6d792074657874206f6620746865207072696e74696e6720616e64207479706573657474696e6720696e6475737472792e204c6f72656d20497073756d20686173206265656e2074686520696e6475737472792773207374616e646172642064756d6d79207465787420657665722073696e6365207468652031353030732c207768656e20616e20756e6b6e6f776e207072696e74657220746f6f6b20612067616c6c6579206f66207479706520616e6420736372616d626c656420697420746f206d616b65206120747970652073706563696d656e20626f6f6b2e3c2f703e, NULL, NULL, '2024-01-17 15:01:13', '2024-01-17 15:01:13'),
(2, 62, 2, 9, 1, 'الوهمي القياسي في الصناعة منذ القرن السادس عشر، عندما أخذت', 'الوهمي-القياسي-في-الصناعة-منذ-القرن-السادس-عشر،-عندما-أخذت', 'هو النص', 0x3c70206469723d2272746c223ed987d98820d8a8d8a8d8b3d8a7d8b7d8a920d986d8b520d988d987d985d98a20d984d8b5d986d8a7d8b9d8a920d8a7d984d8b7d8a8d8a7d8b9d8a920d988d8a7d984d8aad986d8b6d98ad8af2e20d984d982d8af20d983d8a7d98620d984d988d8b1d98ad98520d8a5d98ad8a8d8b3d988d98520d987d98820d8a7d984d986d8b520d8a7d984d988d987d985d98a20d8a7d984d982d98ad8a7d8b3d98a20d981d98a20d8a7d984d8b5d986d8a7d8b9d8a920d985d986d8b020d8a7d984d982d8b1d98620d8a7d984d8b3d8a7d8afd8b320d8b9d8b4d8b1d88c20d8b9d986d8afd985d8a720d8a3d8aed8b0d8aa20d8b7d8a7d8a8d8b9d8a920d8bad98ad8b120d985d8b9d8b1d988d981d8a920d984d988d8ad20d8a7d984d983d8aad8a7d8a8d8a920d988d8aed984d8b7d8aad98720d984d8b5d986d8b920d986d985d988d8b0d8ac20d983d8aad8a7d8a82e20d987d98820d8a8d8a8d8b3d8a7d8b7d8a920d986d8b520d988d987d985d98a20d984d8b5d986d8a7d8b9d8a920d8a7d984d8b7d8a8d8a7d8b9d8a920d988d8a7d984d8aad986d8b6d98ad8af2e20d984d982d8af20d983d8a7d98620d984d988d8b1d98ad98520d8a5d98ad8a8d8b3d988d98520d987d98820d8a7d984d986d8b520d8a7d984d988d987d985d98a20d8a7d984d982d98ad8a7d8b3d98a20d981d98a20d987d8b0d98720d8a7d984d8b5d986d8a7d8b9d8a920d985d986d8b020d8a7d984d982d8b1d98620d8a7d984d8b3d8a7d8afd8b320d8b9d8b4d8b1d88c20d8b9d986d8afd985d8a720d8a3d8aed8b0d8aa20d8b7d8a7d8a8d8b9d8a920d8bad98ad8b120d985d8b9d8b1d988d981d8a920d984d988d8ad20d8a7d984d983d8aad8a7d8a8d8a920d988d8aed984d8b7d8aad98720d984d8b5d986d8b920d986d985d988d8b0d8ac20d983d8aad8a7d8a82e20d987d98820d8a8d8a8d8b3d8a7d8b7d8a920d986d8b520d988d987d985d98a20d981d98a20d8b5d986d8a7d8b9d8a920d8a7d984d8b7d8a8d8a7d8b9d8a920d988d8a7d984d8aad986d8b6d98ad8af2e20d984d982d8af20d983d8a7d98620d984d988d8b1d98ad98520d8a5d98ad8a8d8b3d988d98520d987d98820d8a7d984d986d8b520d8a7d984d988d987d985d98a20d8a7d984d982d98ad8a7d8b3d98a20d981d98a20d8a7d984d8b5d986d8a7d8b9d8a920d985d986d8b020d8a7d984d982d8b1d98620d8a7d984d8b3d8a7d8afd8b320d8b9d8b4d8b1d88c20d8b9d986d8afd985d8a720d8a3d8aed8b0d8aa20d8b7d8a7d8a8d8b9d8a920d8bad98ad8b120d985d8b9d8b1d988d981d8a920d984d988d8ad20d8a7d984d983d8aad8a7d8a8d8a920d988d8aed984d8b7d8aad98720d984d8b5d986d8b920d986d985d988d8b0d8ac20d983d8aad8a7d8a82e20d987d98820d8a8d8a8d8b3d8a7d8b7d8a920d986d8b520d988d987d985d98a20d984d8b5d986d8a7d8b9d8a920d8a7d984d8b7d8a8d8a7d8b9d8a920d988d8a7d984d8aad986d8b6d98ad8af2e20d984d982d8af20d983d8a7d98620d984d988d8b1d98ad98520d8a5d98ad8a8d8b3d988d98520d987d98820d8a7d984d986d8b520d8a7d984d988d987d985d98a20d8a7d984d982d98ad8a7d8b3d98a20d981d98a20d987d8b0d98720d8a7d984d8b5d986d8a7d8b9d8a920d985d986d8b020d8a7d984d982d8b1d98620d8a7d984d8b3d8a7d8afd8b320d8b9d8b4d8b1d88c20d8b9d986d8afd985d8a720d8a3d8aed8b0d8aa20d8b7d8a7d8a8d8b9d8a920d8bad98ad8b120d985d8b9d8b1d988d981d8a920d984d988d8ad20d8a7d984d983d8aad8a7d8a8d8a920d988d8aed984d8b7d8aad98720d984d8b5d986d8b920d986d985d988d8b0d8ac20d983d8aad8a7d8a82e20d987d98820d8a8d8a8d8b3d8a7d8b7d8a920d986d8b520d988d987d985d98a20d981d98a20d8b5d986d8a7d8b9d8a920d8a7d984d8b7d8a8d8a7d8b9d8a920d988d8a7d984d8aad986d8b6d98ad8af2e20d984d982d8af20d983d8a7d98620d984d988d8b1d98ad98520d8a5d98ad8a8d8b3d988d98520d987d98820d8a7d984d986d8b520d8a7d984d988d987d985d98a20d8a7d984d982d98ad8a7d8b3d98a20d981d98a20d8a7d984d8b5d986d8a7d8b9d8a920d985d986d8b020d8a7d984d982d8b1d98620d8a7d984d8b3d8a7d8afd8b320d8b9d8b4d8b1d88c20d8b9d986d8afd985d8a720d8a3d8aed8b0d8aa20d8b7d8a7d8a8d8b9d8a920d8bad98ad8b120d985d8b9d8b1d988d981d8a920d984d988d8ad20d8a7d984d983d8aad8a7d8a8d8a920d988d8aed984d8b7d8aad98720d984d8b5d986d8b920d986d985d988d8b0d8ac20d983d8aad8a7d8a82e20d987d98820d8a8d8a8d8b3d8a7d8b7d8a920d986d8b520d988d987d985d98a20d984d8b5d986d8a7d8b9d8a920d8a7d984d8b7d8a8d8a7d8b9d8a920d988d8a7d984d8aad986d8b6d98ad8af2e20d984d982d8af20d983d8a7d98620d984d988d8b1d98ad98520d8a5d98ad8a8d8b3d988d98520d987d98820d8a7d984d986d8b520d8a7d984d988d987d985d98a20d8a7d984d982d98ad8a7d8b3d98a20d981d98a20d8a7d984d8b5d986d8a7d8b9d8a920d985d986d8b020d8a7d984d982d8b1d98620d8a7d984d8b3d8a7d8afd8b320d8b9d8b4d8b1d88c20d8b9d986d8afd985d8a720d8a3d8aed8b0d8aa20d8b7d8a7d8a8d8b9d8a920d8bad98ad8b120d985d8b9d8b1d988d981d8a920d984d988d8ad20d8a7d984d983d8aad8a7d8a8d8a920d988d8aed984d8b7d8aad98720d984d8b5d986d8b920d986d985d988d8b0d8ac20d983d8aad8a7d8a82e3c2f703e, NULL, NULL, '2024-01-17 15:01:13', '2024-01-17 15:38:34'),
(3, 61, 2, 8, 2, 'Non magna pharetra facilisis. lacus nulla dignissim.', 'Non-magna-pharetra-facilisis.-lacus-nulla-dignissim.', 'Typesetting', 0x3c703e69732073696d706c792064756d6d792074657874206f6620746865207072696e74696e6720616e64207479706573657474696e6720696e6475737472792e204c6f72656d20497073756d20686173206265656e2074686520696e6475737472792773207374616e646172642064756d6d79207465787420657665722073696e6365207468652031353030732c207768656e20616e20756e6b6e6f776e207072696e74657220746f6f6b20612067616c6c6579206f66207479706520616e6420736372616d626c656420697420746f206d616b65206120747970652073706563696d656e20626f6f6b2e2069732073696d706c792064756d6d792074657874206f6620746865207072696e74696e6720616e64207479706573657474696e6720696e6475737472792e204c6f72656d20497073756d20686173206265656e2074686520696e6475737472792773207374616e646172642064756d6d79207465787420657665722073696e6365207468652031353030732c207768656e20616e20756e6b6e6f776e207072696e74657220746f6f6b20612067616c6c6579206f66207479706520616e6420736372616d626c656420697420746f206d616b65206120747970652073706563696d656e20626f6f6b2e69732073696d706c792064756d6d792074657874206f6620746865207072696e74696e6720616e64207479706573657474696e6720696e6475737472792e204c6f72656d20497073756d20686173206265656e2074686520696e6475737472792773207374616e646172642064756d6d79207465787420657665722073696e6365207468652031353030732c207768656e20616e20756e6b6e6f776e207072696e74657220746f6f6b20612067616c6c6579206f66207479706520616e6420736372616d626c656420697420746f206d616b65206120747970652073706563696d656e20626f6f6b2e2069732073696d706c792064756d6d792074657874206f6620746865207072696e74696e6720616e64207479706573657474696e6720696e6475737472792e204c6f72656d20497073756d20686173206265656e2074686520696e6475737472792773207374616e646172642064756d6d79207465787420657665722073696e6365207468652031353030732c207768656e20616e20756e6b6e6f776e207072696e74657220746f6f6b20612067616c6c6579206f66207479706520616e6420736372616d626c656420697420746f206d616b65206120747970652073706563696d656e20626f6f6b2e69732073696d706c792064756d6d792074657874206f6620746865207072696e74696e6720616e64207479706573657474696e6720696e6475737472792e204c6f72656d20497073756d20686173206265656e2074686520696e6475737472792773207374616e646172642064756d6d79207465787420657665722073696e6365207468652031353030732c207768656e20616e20756e6b6e6f776e207072696e74657220746f6f6b20612067616c6c6579206f66207479706520616e6420736372616d626c656420697420746f206d616b65206120747970652073706563696d656e20626f6f6b2e2069732073696d706c792064756d6d792074657874206f6620746865207072696e74696e6720616e64207479706573657474696e6720696e6475737472792e204c6f72656d20497073756d20686173206265656e2074686520696e6475737472792773207374616e646172642064756d6d79207465787420657665722073696e6365207468652031353030732c207768656e20616e20756e6b6e6f776e207072696e74657220746f6f6b20612067616c6c6579206f66207479706520616e6420736372616d626c656420697420746f206d616b65206120747970652073706563696d656e20626f6f6b2e3c2f703e, NULL, NULL, '2024-01-17 15:04:32', '2024-01-17 15:04:32'),
(4, 62, 2, 9, 2, 'تسهيلات غير ماجنا تسهيلات غير ماجنا تسهيلات غير ماجنا', 'تسهيلات-غير-ماجنا-تسهيلات-غير-ماجنا-تسهيلات-غير-ماجنا', 'التنضيد', 0x3c70206469723d2272746c223ed987d98820d8a8d8a8d8b3d8a7d8b7d8a920d986d8b520d988d987d985d98a20d984d8b5d986d8a7d8b9d8a920d8a7d984d8b7d8a8d8a7d8b9d8a920d988d8a7d984d8aad986d8b6d98ad8af2e20d984d982d8af20d983d8a7d98620d984d988d8b1d98ad98520d8a5d98ad8a8d8b3d988d98520d987d98820d8a7d984d986d8b520d8a7d984d988d987d985d98a20d8a7d984d982d98ad8a7d8b3d98a20d981d98a20d8a7d984d8b5d986d8a7d8b9d8a920d985d986d8b020d8a7d984d982d8b1d98620d8a7d984d8b3d8a7d8afd8b320d8b9d8b4d8b1d88c20d8b9d986d8afd985d8a720d8a3d8aed8b0d8aa20d8b7d8a7d8a8d8b9d8a920d8bad98ad8b120d985d8b9d8b1d988d981d8a920d984d988d8ad20d8a7d984d983d8aad8a7d8a8d8a920d988d8aed984d8b7d8aad98720d984d8b5d986d8b920d986d985d988d8b0d8ac20d983d8aad8a7d8a82e20d987d98820d8a8d8a8d8b3d8a7d8b7d8a920d986d8b520d988d987d985d98a20d984d8b5d986d8a7d8b9d8a920d8a7d984d8b7d8a8d8a7d8b9d8a920d988d8a7d984d8aad986d8b6d98ad8af2e20d984d982d8af20d983d8a7d98620d984d988d8b1d98ad98520d8a5d98ad8a8d8b3d988d98520d987d98820d8a7d984d986d8b520d8a7d984d988d987d985d98a20d8a7d984d982d98ad8a7d8b3d98a20d981d98a20d987d8b0d98720d8a7d984d8b5d986d8a7d8b9d8a920d985d986d8b020d8a7d984d982d8b1d98620d8a7d984d8b3d8a7d8afd8b320d8b9d8b4d8b1d88c20d8b9d986d8afd985d8a720d8a3d8aed8b0d8aa20d8b7d8a7d8a8d8b9d8a920d8bad98ad8b120d985d8b9d8b1d988d981d8a920d984d988d8ad20d8a7d984d983d8aad8a7d8a8d8a920d988d8aed984d8b7d8aad98720d984d8b5d986d8b920d986d985d988d8b0d8ac20d983d8aad8a7d8a82e20d987d98820d8a8d8a8d8b3d8a7d8b7d8a920d986d8b520d988d987d985d98a20d981d98a20d8b5d986d8a7d8b9d8a920d8a7d984d8b7d8a8d8a7d8b9d8a920d988d8a7d984d8aad986d8b6d98ad8af2e20d984d982d8af20d983d8a7d98620d984d988d8b1d98ad98520d8a5d98ad8a8d8b3d988d98520d987d98820d8a7d984d986d8b520d8a7d984d988d987d985d98a20d8a7d984d982d98ad8a7d8b3d98a20d981d98a20d8a7d984d8b5d986d8a7d8b9d8a920d985d986d8b020d8a7d984d982d8b1d98620d8a7d984d8b3d8a7d8afd8b320d8b9d8b4d8b1d88c20d8b9d986d8afd985d8a720d8a3d8aed8b0d8aa20d8b7d8a7d8a8d8b9d8a920d8bad98ad8b120d985d8b9d8b1d988d981d8a920d984d988d8ad20d8a7d984d983d8aad8a7d8a8d8a920d988d8aed984d8b7d8aad98720d984d8b5d986d8b920d986d985d988d8b0d8ac20d983d8aad8a7d8a82e20d987d98820d8a8d8a8d8b3d8a7d8b7d8a920d986d8b520d988d987d985d98a20d984d8b5d986d8a7d8b9d8a920d8a7d984d8b7d8a8d8a7d8b9d8a920d988d8a7d984d8aad986d8b6d98ad8af2e20d984d982d8af20d983d8a7d98620d984d988d8b1d98ad98520d8a5d98ad8a8d8b3d988d98520d987d98820d8a7d984d986d8b520d8a7d984d988d987d985d98a20d8a7d984d982d98ad8a7d8b3d98a20d981d98a20d987d8b0d98720d8a7d984d8b5d986d8a7d8b9d8a920d985d986d8b020d8a7d984d982d8b1d98620d8a7d984d8b3d8a7d8afd8b320d8b9d8b4d8b1d88c20d8b9d986d8afd985d8a720d8a3d8aed8b0d8aa20d8b7d8a7d8a8d8b9d8a920d8bad98ad8b120d985d8b9d8b1d988d981d8a920d984d988d8ad20d8a7d984d983d8aad8a7d8a8d8a920d988d8aed984d8b7d8aad98720d984d8b5d986d8b920d986d985d988d8b0d8ac20d983d8aad8a7d8a82e20d987d98820d8a8d8a8d8b3d8a7d8b7d8a920d986d8b520d988d987d985d98a20d981d98a20d8b5d986d8a7d8b9d8a920d8a7d984d8b7d8a8d8a7d8b9d8a920d988d8a7d984d8aad986d8b6d98ad8af2e20d984d982d8af20d983d8a7d98620d984d988d8b1d98ad98520d8a5d98ad8a8d8b3d988d98520d987d98820d8a7d984d986d8b520d8a7d984d988d987d985d98a20d8a7d984d982d98ad8a7d8b3d98a20d981d98a20d8a7d984d8b5d986d8a7d8b9d8a920d985d986d8b020d8a7d984d982d8b1d98620d8a7d984d8b3d8a7d8afd8b320d8b9d8b4d8b1d88c20d8b9d986d8afd985d8a720d8a3d8aed8b0d8aa20d8b7d8a7d8a8d8b9d8a920d8bad98ad8b120d985d8b9d8b1d988d981d8a920d984d988d8ad20d8a7d984d983d8aad8a7d8a8d8a920d988d8aed984d8b7d8aad98720d984d8b5d986d8b920d986d985d988d8b0d8ac20d983d8aad8a7d8a82e20d987d98820d8a8d8a8d8b3d8a7d8b7d8a920d986d8b520d988d987d985d98a20d984d8b5d986d8a7d8b9d8a920d8a7d984d8b7d8a8d8a7d8b9d8a920d988d8a7d984d8aad986d8b6d98ad8af2e20d984d982d8af20d983d8a7d98620d984d988d8b1d98ad98520d8a5d98ad8a8d8b3d988d98520d987d98820d8a7d984d986d8b520d8a7d984d988d987d985d98a20d8a7d984d982d98ad8a7d8b3d98a20d981d98a20d8a7d984d8b5d986d8a7d8b9d8a920d985d986d8b020d8a7d984d982d8b1d98620d8a7d984d8b3d8a7d8afd8b320d8b9d8b4d8b1d88c20d8b9d986d8afd985d8a720d8a3d8aed8b0d8aa20d8b7d8a7d8a8d8b9d8a920d8bad98ad8b120d985d8b9d8b1d988d981d8a920d984d988d8ad20d8a7d984d983d8aad8a7d8a8d8a920d988d8aed984d8b7d8aad98720d984d8b5d986d8b920d986d985d988d8b0d8ac20d983d8aad8a7d8a82e3c2f703e, NULL, NULL, '2024-01-17 15:04:32', '2024-01-17 15:04:32'),
(5, 61, 2, 6, 3, 'Lorem Ipsum has been the industry\'s standard dummy text ever', 'Lorem-Ipsum-has-been-the-industry\'s-standard-dummy-text-ever', 'Lorem', 0x3c703e69732073696d706c792064756d6d792074657874206f6620746865207072696e74696e6720616e64207479706573657474696e6720696e6475737472792e204c6f72656d20497073756d20686173206265656e2074686520696e6475737472792773207374616e646172642064756d6d79207465787420657665722073696e6365207468652031353030732c207768656e20616e20756e6b6e6f776e207072696e74657220746f6f6b20612067616c6c6579206f66207479706520616e6420736372616d626c656420697420746f206d616b65206120747970652073706563696d656e20626f6f6b2e2069732073696d706c792064756d6d792074657874206f6620746865207072696e74696e6720616e64207479706573657474696e6720696e6475737472792e204c6f72656d20497073756d20686173206265656e2074686520696e6475737472792773207374616e646172642064756d6d79207465787420657665722073696e6365207468652031353030732c207768656e20616e20756e6b6e6f776e207072696e74657220746f6f6b20612067616c6c6579206f66207479706520616e6420736372616d626c656420697420746f206d616b65206120747970652073706563696d656e20626f6f6b2e69732073696d706c792064756d6d792074657874206f6620746865207072696e74696e6720616e64207479706573657474696e6720696e6475737472792e204c6f72656d20497073756d20686173206265656e2074686520696e6475737472792773207374616e646172642064756d6d79207465787420657665722073696e6365207468652031353030732c207768656e20616e20756e6b6e6f776e207072696e74657220746f6f6b20612067616c6c6579206f66207479706520616e6420736372616d626c656420697420746f206d616b65206120747970652073706563696d656e20626f6f6b2e2069732073696d706c792064756d6d792074657874206f6620746865207072696e74696e6720616e64207479706573657474696e6720696e6475737472792e204c6f72656d20497073756d20686173206265656e2074686520696e6475737472792773207374616e646172642064756d6d79207465787420657665722073696e6365207468652031353030732c207768656e20616e20756e6b6e6f776e207072696e74657220746f6f6b20612067616c6c6579206f66207479706520616e6420736372616d626c656420697420746f206d616b65206120747970652073706563696d656e20626f6f6b2e69732073696d706c792064756d6d792074657874206f6620746865207072696e74696e6720616e64207479706573657474696e6720696e6475737472792e204c6f72656d20497073756d20686173206265656e2074686520696e6475737472792773207374616e646172642064756d6d79207465787420657665722073696e6365207468652031353030732c207768656e20616e20756e6b6e6f776e207072696e74657220746f6f6b20612067616c6c6579206f66207479706520616e6420736372616d626c656420697420746f206d616b65206120747970652073706563696d656e20626f6f6b2e2069732073696d706c792064756d6d792074657874206f6620746865207072696e74696e6720616e64207479706573657474696e6720696e6475737472792e204c6f72656d20497073756d20686173206265656e2074686520696e6475737472792773207374616e646172642064756d6d79207465787420657665722073696e6365207468652031353030732c207768656e20616e20756e6b6e6f776e207072696e74657220746f6f6b20612067616c6c6579206f66207479706520616e6420736372616d626c656420697420746f206d616b65206120747970652073706563696d656e20626f6f6b2e3c2f703e, NULL, NULL, '2024-01-17 15:34:43', '2024-01-17 15:34:43'),
(6, 62, 2, 7, 3, 'هو ببساطة نص وهمي لصناعة الطباعة والتنضيد', 'هو-ببساطة-نص-وهمي-لصناعة-الطباعة-والتنضيد', 'القياسي', 0x3c70206469723d2272746c223ed987d98820d8a8d8a8d8b3d8a7d8b7d8a920d986d8b520d988d987d985d98a20d984d8b5d986d8a7d8b9d8a920d8a7d984d8b7d8a8d8a7d8b9d8a920d988d8a7d984d8aad986d8b6d98ad8af2e20d984d982d8af20d983d8a7d98620d984d988d8b1d98ad98520d8a5d98ad8a8d8b3d988d98520d987d98820d8a7d984d986d8b520d8a7d984d988d987d985d98a20d8a7d984d982d98ad8a7d8b3d98a20d981d98a20d8a7d984d8b5d986d8a7d8b9d8a920d985d986d8b020d8a7d984d982d8b1d98620d8a7d984d8b3d8a7d8afd8b320d8b9d8b4d8b1d88c20d8b9d986d8afd985d8a720d8a3d8aed8b0d8aa20d8b7d8a7d8a8d8b9d8a920d8bad98ad8b120d985d8b9d8b1d988d981d8a920d984d988d8ad20d8a7d984d983d8aad8a7d8a8d8a920d988d8aed984d8b7d8aad98720d984d8b5d986d8b920d986d985d988d8b0d8ac20d983d8aad8a7d8a82e20d987d98820d8a8d8a8d8b3d8a7d8b7d8a920d986d8b520d988d987d985d98a20d984d8b5d986d8a7d8b9d8a920d8a7d984d8b7d8a8d8a7d8b9d8a920d988d8a7d984d8aad986d8b6d98ad8af2e20d984d982d8af20d983d8a7d98620d984d988d8b1d98ad98520d8a5d98ad8a8d8b3d988d98520d987d98820d8a7d984d986d8b520d8a7d984d988d987d985d98a20d8a7d984d982d98ad8a7d8b3d98a20d981d98a20d987d8b0d98720d8a7d984d8b5d986d8a7d8b9d8a920d985d986d8b020d8a7d984d982d8b1d98620d8a7d984d8b3d8a7d8afd8b320d8b9d8b4d8b1d88c20d8b9d986d8afd985d8a720d8a3d8aed8b0d8aa20d8b7d8a7d8a8d8b9d8a920d8bad98ad8b120d985d8b9d8b1d988d981d8a920d984d988d8ad20d8a7d984d983d8aad8a7d8a8d8a920d988d8aed984d8b7d8aad98720d984d8b5d986d8b920d986d985d988d8b0d8ac20d983d8aad8a7d8a82e20d987d98820d8a8d8a8d8b3d8a7d8b7d8a920d986d8b520d988d987d985d98a20d981d98a20d8b5d986d8a7d8b9d8a920d8a7d984d8b7d8a8d8a7d8b9d8a920d988d8a7d984d8aad986d8b6d98ad8af2e20d984d982d8af20d983d8a7d98620d984d988d8b1d98ad98520d8a5d98ad8a8d8b3d988d98520d987d98820d8a7d984d986d8b520d8a7d984d988d987d985d98a20d8a7d984d982d98ad8a7d8b3d98a20d981d98a20d8a7d984d8b5d986d8a7d8b9d8a920d985d986d8b020d8a7d984d982d8b1d98620d8a7d984d8b3d8a7d8afd8b320d8b9d8b4d8b1d88c20d8b9d986d8afd985d8a720d8a3d8aed8b0d8aa20d8b7d8a7d8a8d8b9d8a920d8bad98ad8b120d985d8b9d8b1d988d981d8a920d984d988d8ad20d8a7d984d983d8aad8a7d8a8d8a920d988d8aed984d8b7d8aad98720d984d8b5d986d8b920d986d985d988d8b0d8ac20d983d8aad8a7d8a82e20d987d98820d8a8d8a8d8b3d8a7d8b7d8a920d986d8b520d988d987d985d98a20d984d8b5d986d8a7d8b9d8a920d8a7d984d8b7d8a8d8a7d8b9d8a920d988d8a7d984d8aad986d8b6d98ad8af2e20d984d982d8af20d983d8a7d98620d984d988d8b1d98ad98520d8a5d98ad8a8d8b3d988d98520d987d98820d8a7d984d986d8b520d8a7d984d988d987d985d98a20d8a7d984d982d98ad8a7d8b3d98a20d981d98a20d987d8b0d98720d8a7d984d8b5d986d8a7d8b9d8a920d985d986d8b020d8a7d984d982d8b1d98620d8a7d984d8b3d8a7d8afd8b320d8b9d8b4d8b1d88c20d8b9d986d8afd985d8a720d8a3d8aed8b0d8aa20d8b7d8a7d8a8d8b9d8a920d8bad98ad8b120d985d8b9d8b1d988d981d8a920d984d988d8ad20d8a7d984d983d8aad8a7d8a8d8a920d988d8aed984d8b7d8aad98720d984d8b5d986d8b920d986d985d988d8b0d8ac20d983d8aad8a7d8a82e20d987d98820d8a8d8a8d8b3d8a7d8b7d8a920d986d8b520d988d987d985d98a20d981d98a20d8b5d986d8a7d8b9d8a920d8a7d984d8b7d8a8d8a7d8b9d8a920d988d8a7d984d8aad986d8b6d98ad8af2e20d984d982d8af20d983d8a7d98620d984d988d8b1d98ad98520d8a5d98ad8a8d8b3d988d98520d987d98820d8a7d984d986d8b520d8a7d984d988d987d985d98a20d8a7d984d982d98ad8a7d8b3d98a20d981d98a20d8a7d984d8b5d986d8a7d8b9d8a920d985d986d8b020d8a7d984d982d8b1d98620d8a7d984d8b3d8a7d8afd8b320d8b9d8b4d8b1d88c20d8b9d986d8afd985d8a720d8a3d8aed8b0d8aa20d8b7d8a7d8a8d8b9d8a920d8bad98ad8b120d985d8b9d8b1d988d981d8a920d984d988d8ad20d8a7d984d983d8aad8a7d8a8d8a920d988d8aed984d8b7d8aad98720d984d8b5d986d8b920d986d985d988d8b0d8ac20d983d8aad8a7d8a82e20d987d98820d8a8d8a8d8b3d8a7d8b7d8a920d986d8b520d988d987d985d98a20d984d8b5d986d8a7d8b9d8a920d8a7d984d8b7d8a8d8a7d8b9d8a920d988d8a7d984d8aad986d8b6d98ad8af2e20d984d982d8af20d983d8a7d98620d984d988d8b1d98ad98520d8a5d98ad8a8d8b3d988d98520d987d98820d8a7d984d986d8b520d8a7d984d988d987d985d98a20d8a7d984d982d98ad8a7d8b3d98a20d981d98a20d8a7d984d8b5d986d8a7d8b9d8a920d985d986d8b020d8a7d984d982d8b1d98620d8a7d984d8b3d8a7d8afd8b320d8b9d8b4d8b1d88c20d8b9d986d8afd985d8a720d8a3d8aed8b0d8aa20d8b7d8a7d8a8d8b9d8a920d8bad98ad8b120d985d8b9d8b1d988d981d8a920d984d988d8ad20d8a7d984d983d8aad8a7d8a8d8a920d988d8aed984d8b7d8aad98720d984d8b5d986d8b920d986d985d988d8b0d8ac20d983d8aad8a7d8a82e3c2f703e, NULL, NULL, '2024-01-17 15:34:43', '2024-01-17 15:37:44'),
(7, 61, 2, 4, 4, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor', 'Lorem-ipsum-dolor-sit-amet,-consectetur-adipiscing-elit,-sed-do-eiusmod-tempor', 'Specimen', 0x3c703e69732073696d706c792064756d6d792074657874206f6620746865207072696e74696e6720616e64207479706573657474696e6720696e6475737472792e204c6f72656d20497073756d20686173206265656e2074686520696e6475737472792773207374616e646172642064756d6d79207465787420657665722073696e6365207468652031353030732c207768656e20616e20756e6b6e6f776e207072696e74657220746f6f6b20612067616c6c6579206f66207479706520616e6420736372616d626c656420697420746f206d616b65206120747970652073706563696d656e20626f6f6b2e2069732073696d706c792064756d6d792074657874206f6620746865207072696e74696e6720616e64207479706573657474696e6720696e6475737472792e204c6f72656d20497073756d20686173206265656e2074686520696e6475737472792773207374616e646172642064756d6d79207465787420657665722073696e6365207468652031353030732c207768656e20616e20756e6b6e6f776e207072696e74657220746f6f6b20612067616c6c6579206f66207479706520616e6420736372616d626c656420697420746f206d616b65206120747970652073706563696d656e20626f6f6b2e69732073696d706c792064756d6d792074657874206f6620746865207072696e74696e6720616e64207479706573657474696e6720696e6475737472792e204c6f72656d20497073756d20686173206265656e2074686520696e6475737472792773207374616e646172642064756d6d79207465787420657665722073696e6365207468652031353030732c207768656e20616e20756e6b6e6f776e207072696e74657220746f6f6b20612067616c6c6579206f66207479706520616e6420736372616d626c656420697420746f206d616b65206120747970652073706563696d656e20626f6f6b2e2069732073696d706c792064756d6d792074657874206f6620746865207072696e74696e6720616e64207479706573657474696e6720696e6475737472792e204c6f72656d20497073756d20686173206265656e2074686520696e6475737472792773207374616e646172642064756d6d79207465787420657665722073696e6365207468652031353030732c207768656e20616e20756e6b6e6f776e207072696e74657220746f6f6b20612067616c6c6579206f66207479706520616e6420736372616d626c656420697420746f206d616b65206120747970652073706563696d656e20626f6f6b2e69732073696d706c792064756d6d792074657874206f6620746865207072696e74696e6720616e64207479706573657474696e6720696e6475737472792e204c6f72656d20497073756d20686173206265656e2074686520696e6475737472792773207374616e646172642064756d6d79207465787420657665722073696e6365207468652031353030732c207768656e20616e20756e6b6e6f776e207072696e74657220746f6f6b20612067616c6c6579206f66207479706520616e6420736372616d626c656420697420746f206d616b65206120747970652073706563696d656e20626f6f6b2e2069732073696d706c792064756d6d792074657874206f6620746865207072696e74696e6720616e64207479706573657474696e6720696e6475737472792e204c6f72656d20497073756d20686173206265656e2074686520696e6475737472792773207374616e646172642064756d6d79207465787420657665722073696e6365207468652031353030732c207768656e20616e20756e6b6e6f776e207072696e74657220746f6f6b20612067616c6c6579206f66207479706520616e6420736372616d626c656420697420746f206d616b65206120747970652073706563696d656e20626f6f6b2e3c2f703e, NULL, NULL, '2024-01-17 15:37:29', '2024-01-17 15:37:29'),
(8, 62, 2, 5, 4, 'إيبسوم هو النص الوهمي القياسي في الصناعة', 'إيبسوم-هو-النص-الوهمي-القياسي-في-الصناعة', 'عندما أخذت', 0x3c70206469723d2272746c223ed987d98820d8a8d8a8d8b3d8a7d8b7d8a920d986d8b520d988d987d985d98a20d984d8b5d986d8a7d8b9d8a920d8a7d984d8b7d8a8d8a7d8b9d8a920d988d8a7d984d8aad986d8b6d98ad8af2e20d984d982d8af20d983d8a7d98620d984d988d8b1d98ad98520d8a5d98ad8a8d8b3d988d98520d987d98820d8a7d984d986d8b520d8a7d984d988d987d985d98a20d8a7d984d982d98ad8a7d8b3d98a20d981d98a20d8a7d984d8b5d986d8a7d8b9d8a920d985d986d8b020d8a7d984d982d8b1d98620d8a7d984d8b3d8a7d8afd8b320d8b9d8b4d8b1d88c20d8b9d986d8afd985d8a720d8a3d8aed8b0d8aa20d8b7d8a7d8a8d8b9d8a920d8bad98ad8b120d985d8b9d8b1d988d981d8a920d984d988d8ad20d8a7d984d983d8aad8a7d8a8d8a920d988d8aed984d8b7d8aad98720d984d8b5d986d8b920d986d985d988d8b0d8ac20d983d8aad8a7d8a82e20d987d98820d8a8d8a8d8b3d8a7d8b7d8a920d986d8b520d988d987d985d98a20d984d8b5d986d8a7d8b9d8a920d8a7d984d8b7d8a8d8a7d8b9d8a920d988d8a7d984d8aad986d8b6d98ad8af2e20d984d982d8af20d983d8a7d98620d984d988d8b1d98ad98520d8a5d98ad8a8d8b3d988d98520d987d98820d8a7d984d986d8b520d8a7d984d988d987d985d98a20d8a7d984d982d98ad8a7d8b3d98a20d981d98a20d987d8b0d98720d8a7d984d8b5d986d8a7d8b9d8a920d985d986d8b020d8a7d984d982d8b1d98620d8a7d984d8b3d8a7d8afd8b320d8b9d8b4d8b1d88c20d8b9d986d8afd985d8a720d8a3d8aed8b0d8aa20d8b7d8a7d8a8d8b9d8a920d8bad98ad8b120d985d8b9d8b1d988d981d8a920d984d988d8ad20d8a7d984d983d8aad8a7d8a8d8a920d988d8aed984d8b7d8aad98720d984d8b5d986d8b920d986d985d988d8b0d8ac20d983d8aad8a7d8a82e20d987d98820d8a8d8a8d8b3d8a7d8b7d8a920d986d8b520d988d987d985d98a20d981d98a20d8b5d986d8a7d8b9d8a920d8a7d984d8b7d8a8d8a7d8b9d8a920d988d8a7d984d8aad986d8b6d98ad8af2e20d984d982d8af20d983d8a7d98620d984d988d8b1d98ad98520d8a5d98ad8a8d8b3d988d98520d987d98820d8a7d984d986d8b520d8a7d984d988d987d985d98a20d8a7d984d982d98ad8a7d8b3d98a20d981d98a20d8a7d984d8b5d986d8a7d8b9d8a920d985d986d8b020d8a7d984d982d8b1d98620d8a7d984d8b3d8a7d8afd8b320d8b9d8b4d8b1d88c20d8b9d986d8afd985d8a720d8a3d8aed8b0d8aa20d8b7d8a7d8a8d8b9d8a920d8bad98ad8b120d985d8b9d8b1d988d981d8a920d984d988d8ad20d8a7d984d983d8aad8a7d8a8d8a920d988d8aed984d8b7d8aad98720d984d8b5d986d8b920d986d985d988d8b0d8ac20d983d8aad8a7d8a82e20d987d98820d8a8d8a8d8b3d8a7d8b7d8a920d986d8b520d988d987d985d98a20d984d8b5d986d8a7d8b9d8a920d8a7d984d8b7d8a8d8a7d8b9d8a920d988d8a7d984d8aad986d8b6d98ad8af2e20d984d982d8af20d983d8a7d98620d984d988d8b1d98ad98520d8a5d98ad8a8d8b3d988d98520d987d98820d8a7d984d986d8b520d8a7d984d988d987d985d98a20d8a7d984d982d98ad8a7d8b3d98a20d981d98a20d987d8b0d98720d8a7d984d8b5d986d8a7d8b9d8a920d985d986d8b020d8a7d984d982d8b1d98620d8a7d984d8b3d8a7d8afd8b320d8b9d8b4d8b1d88c20d8b9d986d8afd985d8a720d8a3d8aed8b0d8aa20d8b7d8a7d8a8d8b9d8a920d8bad98ad8b120d985d8b9d8b1d988d981d8a920d984d988d8ad20d8a7d984d983d8aad8a7d8a8d8a920d988d8aed984d8b7d8aad98720d984d8b5d986d8b920d986d985d988d8b0d8ac20d983d8aad8a7d8a82e20d987d98820d8a8d8a8d8b3d8a7d8b7d8a920d986d8b520d988d987d985d98a20d981d98a20d8b5d986d8a7d8b9d8a920d8a7d984d8b7d8a8d8a7d8b9d8a920d988d8a7d984d8aad986d8b6d98ad8af2e20d984d982d8af20d983d8a7d98620d984d988d8b1d98ad98520d8a5d98ad8a8d8b3d988d98520d987d98820d8a7d984d986d8b520d8a7d984d988d987d985d98a20d8a7d984d982d98ad8a7d8b3d98a20d981d98a20d8a7d984d8b5d986d8a7d8b9d8a920d985d986d8b020d8a7d984d982d8b1d98620d8a7d984d8b3d8a7d8afd8b320d8b9d8b4d8b1d88c20d8b9d986d8afd985d8a720d8a3d8aed8b0d8aa20d8b7d8a7d8a8d8b9d8a920d8bad98ad8b120d985d8b9d8b1d988d981d8a920d984d988d8ad20d8a7d984d983d8aad8a7d8a8d8a920d988d8aed984d8b7d8aad98720d984d8b5d986d8b920d986d985d988d8b0d8ac20d983d8aad8a7d8a82e20d987d98820d8a8d8a8d8b3d8a7d8b7d8a920d986d8b520d988d987d985d98a20d984d8b5d986d8a7d8b9d8a920d8a7d984d8b7d8a8d8a7d8b9d8a920d988d8a7d984d8aad986d8b6d98ad8af2e20d984d982d8af20d983d8a7d98620d984d988d8b1d98ad98520d8a5d98ad8a8d8b3d988d98520d987d98820d8a7d984d986d8b520d8a7d984d988d987d985d98a20d8a7d984d982d98ad8a7d8b3d98a20d981d98a20d8a7d984d8b5d986d8a7d8b9d8a920d985d986d8b020d8a7d984d982d8b1d98620d8a7d984d8b3d8a7d8afd8b320d8b9d8b4d8b1d88c20d8b9d986d8afd985d8a720d8a3d8aed8b0d8aa20d8b7d8a7d8a8d8b9d8a920d8bad98ad8b120d985d8b9d8b1d988d981d8a920d984d988d8ad20d8a7d984d983d8aad8a7d8a8d8a920d988d8aed984d8b7d8aad98720d984d8b5d986d8b920d986d985d988d8b0d8ac20d983d8aad8a7d8a82e3c2f703e, NULL, NULL, '2024-01-17 15:37:29', '2024-01-17 15:37:29'),
(9, 61, 2, 2, 5, 'Lorem Ipsum has been the industry\'s standard dummy text ever since', 'Lorem-Ipsum-has-been-the-industry\'s-standard-dummy-text-ever-since', 'Specimen', 0x3c703e69732073696d706c792064756d6d792074657874206f6620746865207072696e74696e6720616e64207479706573657474696e6720696e6475737472792e204c6f72656d20497073756d20686173206265656e2074686520696e6475737472792773207374616e646172642064756d6d79207465787420657665722073696e6365207468652031353030732c207768656e20616e20756e6b6e6f776e207072696e74657220746f6f6b20612067616c6c6579206f66207479706520616e6420736372616d626c656420697420746f206d616b65206120747970652073706563696d656e20626f6f6b2e2069732073696d706c792064756d6d792074657874206f6620746865207072696e74696e6720616e64207479706573657474696e6720696e6475737472792e204c6f72656d20497073756d20686173206265656e2074686520696e6475737472792773207374616e646172642064756d6d79207465787420657665722073696e6365207468652031353030732c207768656e20616e20756e6b6e6f776e207072696e74657220746f6f6b20612067616c6c6579206f66207479706520616e6420736372616d626c656420697420746f206d616b65206120747970652073706563696d656e20626f6f6b2e69732073696d706c792064756d6d792074657874206f6620746865207072696e74696e6720616e64207479706573657474696e6720696e6475737472792e204c6f72656d20497073756d20686173206265656e2074686520696e6475737472792773207374616e646172642064756d6d79207465787420657665722073696e6365207468652031353030732c207768656e20616e20756e6b6e6f776e207072696e74657220746f6f6b20612067616c6c6579206f66207479706520616e6420736372616d626c656420697420746f206d616b65206120747970652073706563696d656e20626f6f6b2e2069732073696d706c792064756d6d792074657874206f6620746865207072696e74696e6720616e64207479706573657474696e6720696e6475737472792e204c6f72656d20497073756d20686173206265656e2074686520696e6475737472792773207374616e646172642064756d6d79207465787420657665722073696e6365207468652031353030732c207768656e20616e20756e6b6e6f776e207072696e74657220746f6f6b20612067616c6c6579206f66207479706520616e6420736372616d626c656420697420746f206d616b65206120747970652073706563696d656e20626f6f6b2e69732073696d706c792064756d6d792074657874206f6620746865207072696e74696e6720616e64207479706573657474696e6720696e6475737472792e204c6f72656d20497073756d20686173206265656e2074686520696e6475737472792773207374616e646172642064756d6d79207465787420657665722073696e6365207468652031353030732c207768656e20616e20756e6b6e6f776e207072696e74657220746f6f6b20612067616c6c6579206f66207479706520616e6420736372616d626c656420697420746f206d616b65206120747970652073706563696d656e20626f6f6b2e2069732073696d706c792064756d6d792074657874206f6620746865207072696e74696e6720616e64207479706573657474696e6720696e6475737472792e204c6f72656d20497073756d20686173206265656e2074686520696e6475737472792773207374616e646172642064756d6d79207465787420657665722073696e6365207468652031353030732c207768656e20616e20756e6b6e6f776e207072696e74657220746f6f6b20612067616c6c6579206f66207479706520616e6420736372616d626c656420697420746f206d616b65206120747970652073706563696d656e20626f6f6b2e3c2f703e, NULL, NULL, '2024-01-17 15:47:18', '2024-01-17 15:47:18'),
(10, 62, 2, 3, 5, 'لقد أصبح لوريم إيبسوم هو النص الوهمي القياسي في هذه الصناعة منذ ذلك الحين', 'لقد-أصبح-لوريم-إيبسوم-هو-النص-الوهمي-القياسي-في-هذه-الصناعة-منذ-ذلك-الحين', 'لصناعة', 0x3c70206469723d2272746c223ed987d98820d8a8d8a8d8b3d8a7d8b7d8a920d986d8b520d988d987d985d98a20d984d8b5d986d8a7d8b9d8a920d8a7d984d8b7d8a8d8a7d8b9d8a920d988d8a7d984d8aad986d8b6d98ad8af2e20d984d982d8af20d983d8a7d98620d984d988d8b1d98ad98520d8a5d98ad8a8d8b3d988d98520d987d98820d8a7d984d986d8b520d8a7d984d988d987d985d98a20d8a7d984d982d98ad8a7d8b3d98a20d981d98a20d8a7d984d8b5d986d8a7d8b9d8a920d985d986d8b020d8a7d984d982d8b1d98620d8a7d984d8b3d8a7d8afd8b320d8b9d8b4d8b1d88c20d8b9d986d8afd985d8a720d8a3d8aed8b0d8aa20d8b7d8a7d8a8d8b9d8a920d8bad98ad8b120d985d8b9d8b1d988d981d8a920d984d988d8ad20d8a7d984d983d8aad8a7d8a8d8a920d988d8aed984d8b7d8aad98720d984d8b5d986d8b920d986d985d988d8b0d8ac20d983d8aad8a7d8a82e20d987d98820d8a8d8a8d8b3d8a7d8b7d8a920d986d8b520d988d987d985d98a20d984d8b5d986d8a7d8b9d8a920d8a7d984d8b7d8a8d8a7d8b9d8a920d988d8a7d984d8aad986d8b6d98ad8af2e20d984d982d8af20d983d8a7d98620d984d988d8b1d98ad98520d8a5d98ad8a8d8b3d988d98520d987d98820d8a7d984d986d8b520d8a7d984d988d987d985d98a20d8a7d984d982d98ad8a7d8b3d98a20d981d98a20d987d8b0d98720d8a7d984d8b5d986d8a7d8b9d8a920d985d986d8b020d8a7d984d982d8b1d98620d8a7d984d8b3d8a7d8afd8b320d8b9d8b4d8b1d88c20d8b9d986d8afd985d8a720d8a3d8aed8b0d8aa20d8b7d8a7d8a8d8b9d8a920d8bad98ad8b120d985d8b9d8b1d988d981d8a920d984d988d8ad20d8a7d984d983d8aad8a7d8a8d8a920d988d8aed984d8b7d8aad98720d984d8b5d986d8b920d986d985d988d8b0d8ac20d983d8aad8a7d8a82e20d987d98820d8a8d8a8d8b3d8a7d8b7d8a920d986d8b520d988d987d985d98a20d981d98a20d8b5d986d8a7d8b9d8a920d8a7d984d8b7d8a8d8a7d8b9d8a920d988d8a7d984d8aad986d8b6d98ad8af2e20d984d982d8af20d983d8a7d98620d984d988d8b1d98ad98520d8a5d98ad8a8d8b3d988d98520d987d98820d8a7d984d986d8b520d8a7d984d988d987d985d98a20d8a7d984d982d98ad8a7d8b3d98a20d981d98a20d8a7d984d8b5d986d8a7d8b9d8a920d985d986d8b020d8a7d984d982d8b1d98620d8a7d984d8b3d8a7d8afd8b320d8b9d8b4d8b1d88c20d8b9d986d8afd985d8a720d8a3d8aed8b0d8aa20d8b7d8a7d8a8d8b9d8a920d8bad98ad8b120d985d8b9d8b1d988d981d8a920d984d988d8ad20d8a7d984d983d8aad8a7d8a8d8a920d988d8aed984d8b7d8aad98720d984d8b5d986d8b920d986d985d988d8b0d8ac20d983d8aad8a7d8a82e20d987d98820d8a8d8a8d8b3d8a7d8b7d8a920d986d8b520d988d987d985d98a20d984d8b5d986d8a7d8b9d8a920d8a7d984d8b7d8a8d8a7d8b9d8a920d988d8a7d984d8aad986d8b6d98ad8af2e20d984d982d8af20d983d8a7d98620d984d988d8b1d98ad98520d8a5d98ad8a8d8b3d988d98520d987d98820d8a7d984d986d8b520d8a7d984d988d987d985d98a20d8a7d984d982d98ad8a7d8b3d98a20d981d98a20d987d8b0d98720d8a7d984d8b5d986d8a7d8b9d8a920d985d986d8b020d8a7d984d982d8b1d98620d8a7d984d8b3d8a7d8afd8b320d8b9d8b4d8b1d88c20d8b9d986d8afd985d8a720d8a3d8aed8b0d8aa20d8b7d8a7d8a8d8b9d8a920d8bad98ad8b120d985d8b9d8b1d988d981d8a920d984d988d8ad20d8a7d984d983d8aad8a7d8a8d8a920d988d8aed984d8b7d8aad98720d984d8b5d986d8b920d986d985d988d8b0d8ac20d983d8aad8a7d8a82e20d987d98820d8a8d8a8d8b3d8a7d8b7d8a920d986d8b520d988d987d985d98a20d981d98a20d8b5d986d8a7d8b9d8a920d8a7d984d8b7d8a8d8a7d8b9d8a920d988d8a7d984d8aad986d8b6d98ad8af2e20d984d982d8af20d983d8a7d98620d984d988d8b1d98ad98520d8a5d98ad8a8d8b3d988d98520d987d98820d8a7d984d986d8b520d8a7d984d988d987d985d98a20d8a7d984d982d98ad8a7d8b3d98a20d981d98a20d8a7d984d8b5d986d8a7d8b9d8a920d985d986d8b020d8a7d984d982d8b1d98620d8a7d984d8b3d8a7d8afd8b320d8b9d8b4d8b1d88c20d8b9d986d8afd985d8a720d8a3d8aed8b0d8aa20d8b7d8a7d8a8d8b9d8a920d8bad98ad8b120d985d8b9d8b1d988d981d8a920d984d988d8ad20d8a7d984d983d8aad8a7d8a8d8a920d988d8aed984d8b7d8aad98720d984d8b5d986d8b920d986d985d988d8b0d8ac20d983d8aad8a7d8a82e20d987d98820d8a8d8a8d8b3d8a7d8b7d8a920d986d8b520d988d987d985d98a20d984d8b5d986d8a7d8b9d8a920d8a7d984d8b7d8a8d8a7d8b9d8a920d988d8a7d984d8aad986d8b6d98ad8af2e20d984d982d8af20d983d8a7d98620d984d988d8b1d98ad98520d8a5d98ad8a8d8b3d988d98520d987d98820d8a7d984d986d8b520d8a7d984d988d987d985d98a20d8a7d984d982d98ad8a7d8b3d98a20d981d98a20d8a7d984d8b5d986d8a7d8b9d8a920d985d986d8b020d8a7d984d982d8b1d98620d8a7d984d8b3d8a7d8afd8b320d8b9d8b4d8b1d88c20d8b9d986d8afd985d8a720d8a3d8aed8b0d8aa20d8b7d8a7d8a8d8b9d8a920d8bad98ad8b120d985d8b9d8b1d988d981d8a920d984d988d8ad20d8a7d984d983d8aad8a7d8a8d8a920d988d8aed984d8b7d8aad98720d984d8b5d986d8b920d986d985d988d8b0d8ac20d983d8aad8a7d8a82e3c2f703e, NULL, NULL, '2024-01-17 15:47:18', '2024-01-17 15:47:18'),
(11, 61, 2, 2, 6, 'Non magna pharetra facilisis. lacus nulla dignissim  printing .', 'Non-magna-pharetra-facilisis.-lacus-nulla-dignissim-printing-.', 'Scrambled', 0x3c703e69732073696d706c792064756d6d792074657874206f6620746865207072696e74696e6720616e64207479706573657474696e6720696e6475737472792e204c6f72656d20497073756d20686173206265656e2074686520696e6475737472792773207374616e646172642064756d6d79207465787420657665722073696e6365207468652031353030732c207768656e20616e20756e6b6e6f776e207072696e74657220746f6f6b20612067616c6c6579206f66207479706520616e6420736372616d626c656420697420746f206d616b65206120747970652073706563696d656e20626f6f6b2e2069732073696d706c792064756d6d792074657874206f6620746865207072696e74696e6720616e64207479706573657474696e6720696e6475737472792e204c6f72656d20497073756d20686173206265656e2074686520696e6475737472792773207374616e646172642064756d6d79207465787420657665722073696e6365207468652031353030732c207768656e20616e20756e6b6e6f776e207072696e74657220746f6f6b20612067616c6c6579206f66207479706520616e6420736372616d626c656420697420746f206d616b65206120747970652073706563696d656e20626f6f6b2e69732073696d706c792064756d6d792074657874206f6620746865207072696e74696e6720616e64207479706573657474696e6720696e6475737472792e204c6f72656d20497073756d20686173206265656e2074686520696e6475737472792773207374616e646172642064756d6d79207465787420657665722073696e6365207468652031353030732c207768656e20616e20756e6b6e6f776e207072696e74657220746f6f6b20612067616c6c6579206f66207479706520616e6420736372616d626c656420697420746f206d616b65206120747970652073706563696d656e20626f6f6b2e2069732073696d706c792064756d6d792074657874206f6620746865207072696e74696e6720616e64207479706573657474696e6720696e6475737472792e204c6f72656d20497073756d20686173206265656e2074686520696e6475737472792773207374616e646172642064756d6d79207465787420657665722073696e6365207468652031353030732c207768656e20616e20756e6b6e6f776e207072696e74657220746f6f6b20612067616c6c6579206f66207479706520616e6420736372616d626c656420697420746f206d616b65206120747970652073706563696d656e20626f6f6b2e69732073696d706c792064756d6d792074657874206f6620746865207072696e74696e6720616e64207479706573657474696e6720696e6475737472792e204c6f72656d20497073756d20686173206265656e2074686520696e6475737472792773207374616e646172642064756d6d79207465787420657665722073696e6365207468652031353030732c207768656e20616e20756e6b6e6f776e207072696e74657220746f6f6b20612067616c6c6579206f66207479706520616e6420736372616d626c656420697420746f206d616b65206120747970652073706563696d656e20626f6f6b2e2069732073696d706c792064756d6d792074657874206f6620746865207072696e74696e6720616e64207479706573657474696e6720696e6475737472792e204c6f72656d20497073756d20686173206265656e2074686520696e6475737472792773207374616e646172642064756d6d79207465787420657665722073696e6365207468652031353030732c207768656e20616e20756e6b6e6f776e207072696e74657220746f6f6b20612067616c6c6579206f66207479706520616e6420736372616d626c656420697420746f206d616b65206120747970652073706563696d656e20626f6f6b2e3c2f703e, NULL, NULL, '2024-01-17 15:53:17', '2024-01-17 15:53:17'),
(12, 62, 2, 3, 6, 'نموذج كتاب. هو ببساطة نص وهمي في صناعة الطباعة', 'نموذج-كتاب.-هو-ببساطة-نص-وهمي-في-صناعة-الطباعة', 'تزاحم', 0x3c70206469723d2272746c223ed987d98820d8a8d8a8d8b3d8a7d8b7d8a920d986d8b520d988d987d985d98a20d984d8b5d986d8a7d8b9d8a920d8a7d984d8b7d8a8d8a7d8b9d8a920d988d8a7d984d8aad986d8b6d98ad8af2e20d984d982d8af20d983d8a7d98620d984d988d8b1d98ad98520d8a5d98ad8a8d8b3d988d98520d987d98820d8a7d984d986d8b520d8a7d984d988d987d985d98a20d8a7d984d982d98ad8a7d8b3d98a20d981d98a20d8a7d984d8b5d986d8a7d8b9d8a920d985d986d8b020d8a7d984d982d8b1d98620d8a7d984d8b3d8a7d8afd8b320d8b9d8b4d8b1d88c20d8b9d986d8afd985d8a720d8a3d8aed8b0d8aa20d8b7d8a7d8a8d8b9d8a920d8bad98ad8b120d985d8b9d8b1d988d981d8a920d984d988d8ad20d8a7d984d983d8aad8a7d8a8d8a920d988d8aed984d8b7d8aad98720d984d8b5d986d8b920d986d985d988d8b0d8ac20d983d8aad8a7d8a82e20d987d98820d8a8d8a8d8b3d8a7d8b7d8a920d986d8b520d988d987d985d98a20d984d8b5d986d8a7d8b9d8a920d8a7d984d8b7d8a8d8a7d8b9d8a920d988d8a7d984d8aad986d8b6d98ad8af2e20d984d982d8af20d983d8a7d98620d984d988d8b1d98ad98520d8a5d98ad8a8d8b3d988d98520d987d98820d8a7d984d986d8b520d8a7d984d988d987d985d98a20d8a7d984d982d98ad8a7d8b3d98a20d981d98a20d987d8b0d98720d8a7d984d8b5d986d8a7d8b9d8a920d985d986d8b020d8a7d984d982d8b1d98620d8a7d984d8b3d8a7d8afd8b320d8b9d8b4d8b1d88c20d8b9d986d8afd985d8a720d8a3d8aed8b0d8aa20d8b7d8a7d8a8d8b9d8a920d8bad98ad8b120d985d8b9d8b1d988d981d8a920d984d988d8ad20d8a7d984d983d8aad8a7d8a8d8a920d988d8aed984d8b7d8aad98720d984d8b5d986d8b920d986d985d988d8b0d8ac20d983d8aad8a7d8a82e20d987d98820d8a8d8a8d8b3d8a7d8b7d8a920d986d8b520d988d987d985d98a20d981d98a20d8b5d986d8a7d8b9d8a920d8a7d984d8b7d8a8d8a7d8b9d8a920d988d8a7d984d8aad986d8b6d98ad8af2e20d984d982d8af20d983d8a7d98620d984d988d8b1d98ad98520d8a5d98ad8a8d8b3d988d98520d987d98820d8a7d984d986d8b520d8a7d984d988d987d985d98a20d8a7d984d982d98ad8a7d8b3d98a20d981d98a20d8a7d984d8b5d986d8a7d8b9d8a920d985d986d8b020d8a7d984d982d8b1d98620d8a7d984d8b3d8a7d8afd8b320d8b9d8b4d8b1d88c20d8b9d986d8afd985d8a720d8a3d8aed8b0d8aa20d8b7d8a7d8a8d8b9d8a920d8bad98ad8b120d985d8b9d8b1d988d981d8a920d984d988d8ad20d8a7d984d983d8aad8a7d8a8d8a920d988d8aed984d8b7d8aad98720d984d8b5d986d8b920d986d985d988d8b0d8ac20d983d8aad8a7d8a82e20d987d98820d8a8d8a8d8b3d8a7d8b7d8a920d986d8b520d988d987d985d98a20d984d8b5d986d8a7d8b9d8a920d8a7d984d8b7d8a8d8a7d8b9d8a920d988d8a7d984d8aad986d8b6d98ad8af2e20d984d982d8af20d983d8a7d98620d984d988d8b1d98ad98520d8a5d98ad8a8d8b3d988d98520d987d98820d8a7d984d986d8b520d8a7d984d988d987d985d98a20d8a7d984d982d98ad8a7d8b3d98a20d981d98a20d987d8b0d98720d8a7d984d8b5d986d8a7d8b9d8a920d985d986d8b020d8a7d984d982d8b1d98620d8a7d984d8b3d8a7d8afd8b320d8b9d8b4d8b1d88c20d8b9d986d8afd985d8a720d8a3d8aed8b0d8aa20d8b7d8a7d8a8d8b9d8a920d8bad98ad8b120d985d8b9d8b1d988d981d8a920d984d988d8ad20d8a7d984d983d8aad8a7d8a8d8a920d988d8aed984d8b7d8aad98720d984d8b5d986d8b920d986d985d988d8b0d8ac20d983d8aad8a7d8a82e20d987d98820d8a8d8a8d8b3d8a7d8b7d8a920d986d8b520d988d987d985d98a20d981d98a20d8b5d986d8a7d8b9d8a920d8a7d984d8b7d8a8d8a7d8b9d8a920d988d8a7d984d8aad986d8b6d98ad8af2e20d984d982d8af20d983d8a7d98620d984d988d8b1d98ad98520d8a5d98ad8a8d8b3d988d98520d987d98820d8a7d984d986d8b520d8a7d984d988d987d985d98a20d8a7d984d982d98ad8a7d8b3d98a20d981d98a20d8a7d984d8b5d986d8a7d8b9d8a920d985d986d8b020d8a7d984d982d8b1d98620d8a7d984d8b3d8a7d8afd8b320d8b9d8b4d8b1d88c20d8b9d986d8afd985d8a720d8a3d8aed8b0d8aa20d8b7d8a7d8a8d8b9d8a920d8bad98ad8b120d985d8b9d8b1d988d981d8a920d984d988d8ad20d8a7d984d983d8aad8a7d8a8d8a920d988d8aed984d8b7d8aad98720d984d8b5d986d8b920d986d985d988d8b0d8ac20d983d8aad8a7d8a82e20d987d98820d8a8d8a8d8b3d8a7d8b7d8a920d986d8b520d988d987d985d98a20d984d8b5d986d8a7d8b9d8a920d8a7d984d8b7d8a8d8a7d8b9d8a920d988d8a7d984d8aad986d8b6d98ad8af2e20d984d982d8af20d983d8a7d98620d984d988d8b1d98ad98520d8a5d98ad8a8d8b3d988d98520d987d98820d8a7d984d986d8b520d8a7d984d988d987d985d98a20d8a7d984d982d98ad8a7d8b3d98a20d981d98a20d8a7d984d8b5d986d8a7d8b9d8a920d985d986d8b020d8a7d984d982d8b1d98620d8a7d984d8b3d8a7d8afd8b320d8b9d8b4d8b1d88c20d8b9d986d8afd985d8a720d8a3d8aed8b0d8aa20d8b7d8a7d8a8d8b9d8a920d8bad98ad8b120d985d8b9d8b1d988d981d8a920d984d988d8ad20d8a7d984d983d8aad8a7d8a8d8a920d988d8aed984d8b7d8aad98720d984d8b5d986d8b920d986d985d988d8b0d8ac20d983d8aad8a7d8a82e3c2f703e, NULL, NULL, '2024-01-17 15:53:17', '2024-01-17 15:53:17'),
(19, 77, 14, 18, 25, 'Fusce convallis enim non magna Duis lacus dignissim.', 'Fusce-convallis-enim-non-magna-Duis-lacus-dignissim.', 'Imran', 0x3c703e69732073696d706c792064756d6d792074657874206f6620746865207072696e74696e6720616e64207479706573657474696e6720696e6475737472792e204c6f72656d20497073756d20686173206265656e2074686520696e6475737472792773207374616e646172642064756d6d79207465787420657665722073696e6365207468652031353030732c207768656e20616e20756e6b6e6f776e207072696e74657220746f6f6b20612067616c6c6579206f66207479706520616e6420736372616d626c656420697420746f206d616b65206120747970652073706563696d656e20626f6f6b2e2069732073696d706c792064756d6d792074657874206f6620746865207072696e74696e6720616e64207479706573657474696e6720696e6475737472792e204c6f72656d20497073756d20686173206265656e2074686520696e6475737472792773207374616e646172642064756d6d79207465787420657665722073696e6365207468652031353030732c207768656e20616e20756e6b6e6f776e207072696e74657220746f6f6b20612067616c6c6579206f66207479706520616e6420736372616d626c656420697420746f206d616b65206120747970652073706563696d656e20626f6f6b2e69732073696d706c792064756d6d792074657874206f6620746865207072696e74696e6720616e64207479706573657474696e6720696e6475737472792e204c6f72656d20497073756d20686173206265656e2074686520696e6475737472792773207374616e646172642064756d6d79207465787420657665722073696e6365207468652031353030732c207768656e20616e20756e6b6e6f776e207072696e74657220746f6f6b20612067616c6c6579206f66207479706520616e6420736372616d626c656420697420746f206d616b65206120747970652073706563696d656e20626f6f6b2e2069732073696d706c792064756d6d792074657874206f6620746865207072696e74696e6720616e64207479706573657474696e6720696e6475737472792e204c6f72656d20497073756d20686173206265656e2074686520696e6475737472792773207374616e646172642064756d6d79207465787420657665722073696e6365207468652031353030732c207768656e20616e20756e6b6e6f776e207072696e74657220746f6f6b20612067616c6c6579206f66207479706520616e6420736372616d626c656420697420746f206d616b65206120747970652073706563696d656e20626f6f6b2e69732073696d706c792064756d6d792074657874206f6620746865207072696e74696e6720616e64207479706573657474696e6720696e6475737472792e204c6f72656d20497073756d20686173206265656e2074686520696e6475737472792773207374616e646172642064756d6d79207465787420657665722073696e6365207468652031353030732c207768656e20616e20756e6b6e6f776e207072696e74657220746f6f6b20612067616c6c6579206f66207479706520616e6420736372616d626c656420697420746f206d616b65206120747970652073706563696d656e20626f6f6b2e2069732073696d706c792064756d6d792074657874206f6620746865207072696e74696e6720616e64207479706573657474696e6720696e6475737472792e204c6f72656d20497073756d20686173206265656e2074686520696e6475737472792773207374616e646172642064756d6d79207465787420657665722073696e6365207468652031353030732c207768656e20616e20756e6b6e6f776e207072696e74657220746f6f6b20612067616c6c6579206f66207479706520616e6420736372616d626c656420697420746f206d616b65206120747970652073706563696d656e20626f6f6b2e3c2f703e, NULL, NULL, '2024-02-23 17:36:56', '2024-02-23 17:36:56');
INSERT INTO `user_blog_informations` (`id`, `language_id`, `user_id`, `blog_category_id`, `blog_id`, `title`, `slug`, `author`, `content`, `meta_keywords`, `meta_description`, `created_at`, `updated_at`) VALUES
(20, 77, 14, 19, 26, 'Non magna pharetra facilisis. lacus nulla dignissim.', 'Non-magna-pharetra-facilisis.-lacus-nulla-dignissim.', 'Admin', 0x3c703e69732073696d706c792064756d6d792074657874206f6620746865207072696e74696e6720616e64207479706573657474696e6720696e6475737472792e204c6f72656d20497073756d20686173206265656e2074686520696e6475737472792773207374616e646172642064756d6d79207465787420657665722073696e6365207468652031353030732c207768656e20616e20756e6b6e6f776e207072696e74657220746f6f6b20612067616c6c6579206f66207479706520616e6420736372616d626c656420697420746f206d616b65206120747970652073706563696d656e20626f6f6b2e2069732073696d706c792064756d6d792074657874206f6620746865207072696e74696e6720616e64207479706573657474696e6720696e6475737472792e204c6f72656d20497073756d20686173206265656e2074686520696e6475737472792773207374616e646172642064756d6d79207465787420657665722073696e6365207468652031353030732c207768656e20616e20756e6b6e6f776e207072696e74657220746f6f6b20612067616c6c6579206f66207479706520616e6420736372616d626c656420697420746f206d616b65206120747970652073706563696d656e20626f6f6b2e69732073696d706c792064756d6d792074657874206f6620746865207072696e74696e6720616e64207479706573657474696e6720696e6475737472792e204c6f72656d20497073756d20686173206265656e2074686520696e6475737472792773207374616e646172642064756d6d79207465787420657665722073696e6365207468652031353030732c207768656e20616e20756e6b6e6f776e207072696e74657220746f6f6b20612067616c6c6579206f66207479706520616e6420736372616d626c656420697420746f206d616b65206120747970652073706563696d656e20626f6f6b2e2069732073696d706c792064756d6d792074657874206f6620746865207072696e74696e6720616e64207479706573657474696e6720696e6475737472792e204c6f72656d20497073756d20686173206265656e2074686520696e6475737472792773207374616e646172642064756d6d79207465787420657665722073696e6365207468652031353030732c207768656e20616e20756e6b6e6f776e207072696e74657220746f6f6b20612067616c6c6579206f66207479706520616e6420736372616d626c656420697420746f206d616b65206120747970652073706563696d656e20626f6f6b2e69732073696d706c792064756d6d792074657874206f6620746865207072696e74696e6720616e64207479706573657474696e6720696e6475737472792e204c6f72656d20497073756d20686173206265656e2074686520696e6475737472792773207374616e646172642064756d6d79207465787420657665722073696e6365207468652031353030732c207768656e20616e20756e6b6e6f776e207072696e74657220746f6f6b20612067616c6c6579206f66207479706520616e6420736372616d626c656420697420746f206d616b65206120747970652073706563696d656e20626f6f6b2e2069732073696d706c792064756d6d792074657874206f6620746865207072696e74696e6720616e64207479706573657474696e6720696e6475737472792e204c6f72656d20497073756d20686173206265656e2074686520696e6475737472792773207374616e646172642064756d6d79207465787420657665722073696e6365207468652031353030732c207768656e20616e20756e6b6e6f776e207072696e74657220746f6f6b20612067616c6c6579206f66207479706520616e6420736372616d626c656420697420746f206d616b65206120747970652073706563696d656e20626f6f6b2e3c2f703e, NULL, NULL, '2024-02-23 17:37:33', '2024-02-23 18:02:27'),
(21, 77, 14, 19, 27, 'Lorem Ipsum has been the industry\'s standard', 'Lorem-Ipsum-has-been-the-industry\'s-standard', 'Imran', 0x3c703e69732073696d706c792064756d6d792074657874206f6620746865207072696e74696e6720616e64207479706573657474696e6720696e6475737472792e204c6f72656d20497073756d20686173206265656e2074686520696e6475737472792773207374616e646172642064756d6d79207465787420657665722073696e6365207468652031353030732c207768656e20616e20756e6b6e6f776e207072696e74657220746f6f6b20612067616c6c6579206f66207479706520616e6420736372616d626c656420697420746f206d616b65206120747970652073706563696d656e20626f6f6b2e2069732073696d706c792064756d6d792074657874206f6620746865207072696e74696e6720616e64207479706573657474696e6720696e6475737472792e204c6f72656d20497073756d20686173206265656e2074686520696e6475737472792773207374616e646172642064756d6d79207465787420657665722073696e6365207468652031353030732c207768656e20616e20756e6b6e6f776e207072696e74657220746f6f6b20612067616c6c6579206f66207479706520616e6420736372616d626c656420697420746f206d616b65206120747970652073706563696d656e20626f6f6b2e69732073696d706c792064756d6d792074657874206f6620746865207072696e74696e6720616e64207479706573657474696e6720696e6475737472792e204c6f72656d20497073756d20686173206265656e2074686520696e6475737472792773207374616e646172642064756d6d79207465787420657665722073696e6365207468652031353030732c207768656e20616e20756e6b6e6f776e207072696e74657220746f6f6b20612067616c6c6579206f66207479706520616e6420736372616d626c656420697420746f206d616b65206120747970652073706563696d656e20626f6f6b2e2069732073696d706c792064756d6d792074657874206f6620746865207072696e74696e6720616e64207479706573657474696e6720696e6475737472792e204c6f72656d20497073756d20686173206265656e2074686520696e6475737472792773207374616e646172642064756d6d79207465787420657665722073696e6365207468652031353030732c207768656e20616e20756e6b6e6f776e207072696e74657220746f6f6b20612067616c6c6579206f66207479706520616e6420736372616d626c656420697420746f206d616b65206120747970652073706563696d656e20626f6f6b2e69732073696d706c792064756d6d792074657874206f6620746865207072696e74696e6720616e64207479706573657474696e6720696e6475737472792e204c6f72656d20497073756d20686173206265656e2074686520696e6475737472792773207374616e646172642064756d6d79207465787420657665722073696e6365207468652031353030732c207768656e20616e20756e6b6e6f776e207072696e74657220746f6f6b20612067616c6c6579206f66207479706520616e6420736372616d626c656420697420746f206d616b65206120747970652073706563696d656e20626f6f6b2e2069732073696d706c792064756d6d792074657874206f6620746865207072696e74696e6720616e64207479706573657474696e6720696e6475737472792e204c6f72656d20497073756d20686173206265656e2074686520696e6475737472792773207374616e646172642064756d6d79207465787420657665722073696e6365207468652031353030732c207768656e20616e20756e6b6e6f776e207072696e74657220746f6f6b20612067616c6c6579206f66207479706520616e6420736372616d626c656420697420746f206d616b65206120747970652073706563696d656e20626f6f6b2e3c2f703e, NULL, NULL, '2024-02-23 17:38:41', '2024-02-23 17:38:41'),
(22, 78, 15, 21, 28, 'Fusce convallis enim non magna Duis lacus dignissim.', 'Fusce-convallis-enim-non-magna-Duis-lacus-dignissim.', 'Admin', 0x3c703e69732073696d706c792064756d6d792074657874206f6620746865207072696e74696e6720616e64207479706573657474696e6720696e6475737472792e204c6f72656d20497073756d20686173206265656e2074686520696e6475737472792773207374616e646172642064756d6d79207465787420657665722073696e6365207468652031353030732c207768656e20616e20756e6b6e6f776e207072696e74657220746f6f6b20612067616c6c6579206f66207479706520616e6420736372616d626c656420697420746f206d616b65206120747970652073706563696d656e20626f6f6b2e2069732073696d706c792064756d6d792074657874206f6620746865207072696e74696e6720616e64207479706573657474696e6720696e6475737472792e204c6f72656d20497073756d20686173206265656e2074686520696e6475737472792773207374616e646172642064756d6d79207465787420657665722073696e6365207468652031353030732c207768656e20616e20756e6b6e6f776e207072696e74657220746f6f6b20612067616c6c6579206f66207479706520616e6420736372616d626c656420697420746f206d616b65206120747970652073706563696d656e20626f6f6b2e69732073696d706c792064756d6d792074657874206f6620746865207072696e74696e6720616e64207479706573657474696e6720696e6475737472792e204c6f72656d20497073756d20686173206265656e2074686520696e6475737472792773207374616e646172642064756d6d79207465787420657665722073696e6365207468652031353030732c207768656e20616e20756e6b6e6f776e207072696e74657220746f6f6b20612067616c6c6579206f66207479706520616e6420736372616d626c656420697420746f206d616b65206120747970652073706563696d656e20626f6f6b2e2069732073696d706c792064756d6d792074657874206f6620746865207072696e74696e6720616e64207479706573657474696e6720696e6475737472792e204c6f72656d20497073756d20686173206265656e2074686520696e6475737472792773207374616e646172642064756d6d79207465787420657665722073696e6365207468652031353030732c207768656e20616e20756e6b6e6f776e207072696e74657220746f6f6b20612067616c6c6579206f66207479706520616e6420736372616d626c656420697420746f206d616b65206120747970652073706563696d656e20626f6f6b2e69732073696d706c792064756d6d792074657874206f6620746865207072696e74696e6720616e64207479706573657474696e6720696e6475737472792e204c6f72656d20497073756d20686173206265656e2074686520696e6475737472792773207374616e646172642064756d6d79207465787420657665722073696e6365207468652031353030732c207768656e20616e20756e6b6e6f776e207072696e74657220746f6f6b20612067616c6c6579206f66207479706520616e6420736372616d626c656420697420746f206d616b65206120747970652073706563696d656e20626f6f6b2e2069732073696d706c792064756d6d792074657874206f6620746865207072696e74696e6720616e64207479706573657474696e6720696e6475737472792e204c6f72656d20497073756d20686173206265656e2074686520696e6475737472792773207374616e646172642064756d6d79207465787420657665722073696e6365207468652031353030732c207768656e20616e20756e6b6e6f776e207072696e74657220746f6f6b20612067616c6c6579206f66207479706520616e6420736372616d626c656420697420746f206d616b65206120747970652073706563696d656e20626f6f6b2e3c2f703e, NULL, NULL, '2024-02-23 17:48:11', '2024-02-23 17:48:11'),
(23, 78, 15, 20, 29, 'Non magna pharetra facilisis. lacus nulla dignissim.', 'Non-magna-pharetra-facilisis.-lacus-nulla-dignissim.', 'Imran', 0x3c703e69732073696d706c792064756d6d792074657874206f6620746865207072696e74696e6720616e64207479706573657474696e6720696e6475737472792e204c6f72656d20497073756d20686173206265656e2074686520696e6475737472792773207374616e646172642064756d6d79207465787420657665722073696e6365207468652031353030732c207768656e20616e20756e6b6e6f776e207072696e74657220746f6f6b20612067616c6c6579206f66207479706520616e6420736372616d626c656420697420746f206d616b65206120747970652073706563696d656e20626f6f6b2e2069732073696d706c792064756d6d792074657874206f6620746865207072696e74696e6720616e64207479706573657474696e6720696e6475737472792e204c6f72656d20497073756d20686173206265656e2074686520696e6475737472792773207374616e646172642064756d6d79207465787420657665722073696e6365207468652031353030732c207768656e20616e20756e6b6e6f776e207072696e74657220746f6f6b20612067616c6c6579206f66207479706520616e6420736372616d626c656420697420746f206d616b65206120747970652073706563696d656e20626f6f6b2e69732073696d706c792064756d6d792074657874206f6620746865207072696e74696e6720616e64207479706573657474696e6720696e6475737472792e204c6f72656d20497073756d20686173206265656e2074686520696e6475737472792773207374616e646172642064756d6d79207465787420657665722073696e6365207468652031353030732c207768656e20616e20756e6b6e6f776e207072696e74657220746f6f6b20612067616c6c6579206f66207479706520616e6420736372616d626c656420697420746f206d616b65206120747970652073706563696d656e20626f6f6b2e2069732073696d706c792064756d6d792074657874206f6620746865207072696e74696e6720616e64207479706573657474696e6720696e6475737472792e204c6f72656d20497073756d20686173206265656e2074686520696e6475737472792773207374616e646172642064756d6d79207465787420657665722073696e6365207468652031353030732c207768656e20616e20756e6b6e6f776e207072696e74657220746f6f6b20612067616c6c6579206f66207479706520616e6420736372616d626c656420697420746f206d616b65206120747970652073706563696d656e20626f6f6b2e69732073696d706c792064756d6d792074657874206f6620746865207072696e74696e6720616e64207479706573657474696e6720696e6475737472792e204c6f72656d20497073756d20686173206265656e2074686520696e6475737472792773207374616e646172642064756d6d79207465787420657665722073696e6365207468652031353030732c207768656e20616e20756e6b6e6f776e207072696e74657220746f6f6b20612067616c6c6579206f66207479706520616e6420736372616d626c656420697420746f206d616b65206120747970652073706563696d656e20626f6f6b2e2069732073696d706c792064756d6d792074657874206f6620746865207072696e74696e6720616e64207479706573657474696e6720696e6475737472792e204c6f72656d20497073756d20686173206265656e2074686520696e6475737472792773207374616e646172642064756d6d79207465787420657665722073696e6365207468652031353030732c207768656e20616e20756e6b6e6f776e207072696e74657220746f6f6b20612067616c6c6579206f66207479706520616e6420736372616d626c656420697420746f206d616b65206120747970652073706563696d656e20626f6f6b2e3c2f703e, NULL, NULL, '2024-02-23 17:48:54', '2024-02-23 17:48:54'),
(24, 78, 15, 21, 30, 'Magna pharetra facilisis. lacus nulla dignissim.', 'Magna-pharetra-facilisis.-lacus-nulla-dignissim.', 'Imran', 0x3c703e69732073696d706c792064756d6d792074657874206f6620746865207072696e74696e6720616e64207479706573657474696e6720696e6475737472792e204c6f72656d20497073756d20686173206265656e2074686520696e6475737472792773207374616e646172642064756d6d79207465787420657665722073696e6365207468652031353030732c207768656e20616e20756e6b6e6f776e207072696e74657220746f6f6b20612067616c6c6579206f66207479706520616e6420736372616d626c656420697420746f206d616b65206120747970652073706563696d656e20626f6f6b2e2069732073696d706c792064756d6d792074657874206f6620746865207072696e74696e6720616e64207479706573657474696e6720696e6475737472792e204c6f72656d20497073756d20686173206265656e2074686520696e6475737472792773207374616e646172642064756d6d79207465787420657665722073696e6365207468652031353030732c207768656e20616e20756e6b6e6f776e207072696e74657220746f6f6b20612067616c6c6579206f66207479706520616e6420736372616d626c656420697420746f206d616b65206120747970652073706563696d656e20626f6f6b2e69732073696d706c792064756d6d792074657874206f6620746865207072696e74696e6720616e64207479706573657474696e6720696e6475737472792e204c6f72656d20497073756d20686173206265656e2074686520696e6475737472792773207374616e646172642064756d6d79207465787420657665722073696e6365207468652031353030732c207768656e20616e20756e6b6e6f776e207072696e74657220746f6f6b20612067616c6c6579206f66207479706520616e6420736372616d626c656420697420746f206d616b65206120747970652073706563696d656e20626f6f6b2e2069732073696d706c792064756d6d792074657874206f6620746865207072696e74696e6720616e64207479706573657474696e6720696e6475737472792e204c6f72656d20497073756d20686173206265656e2074686520696e6475737472792773207374616e646172642064756d6d79207465787420657665722073696e6365207468652031353030732c207768656e20616e20756e6b6e6f776e207072696e74657220746f6f6b20612067616c6c6579206f66207479706520616e6420736372616d626c656420697420746f206d616b65206120747970652073706563696d656e20626f6f6b2e69732073696d706c792064756d6d792074657874206f6620746865207072696e74696e6720616e64207479706573657474696e6720696e6475737472792e204c6f72656d20497073756d20686173206265656e2074686520696e6475737472792773207374616e646172642064756d6d79207465787420657665722073696e6365207468652031353030732c207768656e20616e20756e6b6e6f776e207072696e74657220746f6f6b20612067616c6c6579206f66207479706520616e6420736372616d626c656420697420746f206d616b65206120747970652073706563696d656e20626f6f6b2e2069732073696d706c792064756d6d792074657874206f6620746865207072696e74696e6720616e64207479706573657474696e6720696e6475737472792e204c6f72656d20497073756d20686173206265656e2074686520696e6475737472792773207374616e646172642064756d6d79207465787420657665722073696e6365207468652031353030732c207768656e20616e20756e6b6e6f776e207072696e74657220746f6f6b20612067616c6c6579206f66207479706520616e6420736372616d626c656420697420746f206d616b65206120747970652073706563696d656e20626f6f6b2e3c2f703e, NULL, NULL, '2024-02-23 17:49:28', '2024-02-23 17:49:28'),
(25, 79, 16, 23, 31, 'Fusce convallis enim non magna Duis lacus dignissim.', 'Fusce-convallis-enim-non-magna-Duis-lacus-dignissim.', 'Admin', 0x3c703e69732073696d706c792064756d6d792074657874206f6620746865207072696e74696e6720616e64207479706573657474696e6720696e6475737472792e204c6f72656d20497073756d20686173206265656e2074686520696e6475737472792773207374616e646172642064756d6d79207465787420657665722073696e6365207468652031353030732c207768656e20616e20756e6b6e6f776e207072696e74657220746f6f6b20612067616c6c6579206f66207479706520616e6420736372616d626c656420697420746f206d616b65206120747970652073706563696d656e20626f6f6b2e2069732073696d706c792064756d6d792074657874206f6620746865207072696e74696e6720616e64207479706573657474696e6720696e6475737472792e204c6f72656d20497073756d20686173206265656e2074686520696e6475737472792773207374616e646172642064756d6d79207465787420657665722073696e6365207468652031353030732c207768656e20616e20756e6b6e6f776e207072696e74657220746f6f6b20612067616c6c6579206f66207479706520616e6420736372616d626c656420697420746f206d616b65206120747970652073706563696d656e20626f6f6b2e69732073696d706c792064756d6d792074657874206f6620746865207072696e74696e6720616e64207479706573657474696e6720696e6475737472792e204c6f72656d20497073756d20686173206265656e2074686520696e6475737472792773207374616e646172642064756d6d79207465787420657665722073696e6365207468652031353030732c207768656e20616e20756e6b6e6f776e207072696e74657220746f6f6b20612067616c6c6579206f66207479706520616e6420736372616d626c656420697420746f206d616b65206120747970652073706563696d656e20626f6f6b2e2069732073696d706c792064756d6d792074657874206f6620746865207072696e74696e6720616e64207479706573657474696e6720696e6475737472792e204c6f72656d20497073756d20686173206265656e2074686520696e6475737472792773207374616e646172642064756d6d79207465787420657665722073696e6365207468652031353030732c207768656e20616e20756e6b6e6f776e207072696e74657220746f6f6b20612067616c6c6579206f66207479706520616e6420736372616d626c656420697420746f206d616b65206120747970652073706563696d656e20626f6f6b2e69732073696d706c792064756d6d792074657874206f6620746865207072696e74696e6720616e64207479706573657474696e6720696e6475737472792e204c6f72656d20497073756d20686173206265656e2074686520696e6475737472792773207374616e646172642064756d6d79207465787420657665722073696e6365207468652031353030732c207768656e20616e20756e6b6e6f776e207072696e74657220746f6f6b20612067616c6c6579206f66207479706520616e6420736372616d626c656420697420746f206d616b65206120747970652073706563696d656e20626f6f6b2e2069732073696d706c792064756d6d792074657874206f6620746865207072696e74696e6720616e64207479706573657474696e6720696e6475737472792e204c6f72656d20497073756d20686173206265656e2074686520696e6475737472792773207374616e646172642064756d6d79207465787420657665722073696e6365207468652031353030732c207768656e20616e20756e6b6e6f776e207072696e74657220746f6f6b20612067616c6c6579206f66207479706520616e6420736372616d626c656420697420746f206d616b65206120747970652073706563696d656e20626f6f6b2e3c2f703e, NULL, NULL, '2024-02-23 17:50:44', '2024-02-23 17:50:44'),
(26, 79, 16, 23, 32, 'Non magna pharetra facilisis. lacus nulla dignissim.', 'Non-magna-pharetra-facilisis.-lacus-nulla-dignissim.', 'Admin', 0x3c703e69732073696d706c792064756d6d792074657874206f6620746865207072696e74696e6720616e64207479706573657474696e6720696e6475737472792e204c6f72656d20497073756d20686173206265656e2074686520696e6475737472792773207374616e646172642064756d6d79207465787420657665722073696e6365207468652031353030732c207768656e20616e20756e6b6e6f776e207072696e74657220746f6f6b20612067616c6c6579206f66207479706520616e6420736372616d626c656420697420746f206d616b65206120747970652073706563696d656e20626f6f6b2e2069732073696d706c792064756d6d792074657874206f6620746865207072696e74696e6720616e64207479706573657474696e6720696e6475737472792e204c6f72656d20497073756d20686173206265656e2074686520696e6475737472792773207374616e646172642064756d6d79207465787420657665722073696e6365207468652031353030732c207768656e20616e20756e6b6e6f776e207072696e74657220746f6f6b20612067616c6c6579206f66207479706520616e6420736372616d626c656420697420746f206d616b65206120747970652073706563696d656e20626f6f6b2e69732073696d706c792064756d6d792074657874206f6620746865207072696e74696e6720616e64207479706573657474696e6720696e6475737472792e204c6f72656d20497073756d20686173206265656e2074686520696e6475737472792773207374616e646172642064756d6d79207465787420657665722073696e6365207468652031353030732c207768656e20616e20756e6b6e6f776e207072696e74657220746f6f6b20612067616c6c6579206f66207479706520616e6420736372616d626c656420697420746f206d616b65206120747970652073706563696d656e20626f6f6b2e2069732073696d706c792064756d6d792074657874206f6620746865207072696e74696e6720616e64207479706573657474696e6720696e6475737472792e204c6f72656d20497073756d20686173206265656e2074686520696e6475737472792773207374616e646172642064756d6d79207465787420657665722073696e6365207468652031353030732c207768656e20616e20756e6b6e6f776e207072696e74657220746f6f6b20612067616c6c6579206f66207479706520616e6420736372616d626c656420697420746f206d616b65206120747970652073706563696d656e20626f6f6b2e69732073696d706c792064756d6d792074657874206f6620746865207072696e74696e6720616e64207479706573657474696e6720696e6475737472792e204c6f72656d20497073756d20686173206265656e2074686520696e6475737472792773207374616e646172642064756d6d79207465787420657665722073696e6365207468652031353030732c207768656e20616e20756e6b6e6f776e207072696e74657220746f6f6b20612067616c6c6579206f66207479706520616e6420736372616d626c656420697420746f206d616b65206120747970652073706563696d656e20626f6f6b2e2069732073696d706c792064756d6d792074657874206f6620746865207072696e74696e6720616e64207479706573657474696e6720696e6475737472792e204c6f72656d20497073756d20686173206265656e2074686520696e6475737472792773207374616e646172642064756d6d79207465787420657665722073696e6365207468652031353030732c207768656e20616e20756e6b6e6f776e207072696e74657220746f6f6b20612067616c6c6579206f66207479706520616e6420736372616d626c656420697420746f206d616b65206120747970652073706563696d656e20626f6f6b2e3c2f703e, NULL, NULL, '2024-02-23 17:51:08', '2024-02-23 17:51:08'),
(27, 79, 16, 23, 33, 'Fusce convallis enim non magna Duis lacus', 'Fusce-convallis-enim-non-magna-Duis-lacus', 'Imran', 0x3c703e69732073696d706c792064756d6d792074657874206f6620746865207072696e74696e6720616e64207479706573657474696e6720696e6475737472792e204c6f72656d20497073756d20686173206265656e2074686520696e6475737472792773207374616e646172642064756d6d79207465787420657665722073696e6365207468652031353030732c207768656e20616e20756e6b6e6f776e207072696e74657220746f6f6b20612067616c6c6579206f66207479706520616e6420736372616d626c656420697420746f206d616b65206120747970652073706563696d656e20626f6f6b2e2069732073696d706c792064756d6d792074657874206f6620746865207072696e74696e6720616e64207479706573657474696e6720696e6475737472792e204c6f72656d20497073756d20686173206265656e2074686520696e6475737472792773207374616e646172642064756d6d79207465787420657665722073696e6365207468652031353030732c207768656e20616e20756e6b6e6f776e207072696e74657220746f6f6b20612067616c6c6579206f66207479706520616e6420736372616d626c656420697420746f206d616b65206120747970652073706563696d656e20626f6f6b2e69732073696d706c792064756d6d792074657874206f6620746865207072696e74696e6720616e64207479706573657474696e6720696e6475737472792e204c6f72656d20497073756d20686173206265656e2074686520696e6475737472792773207374616e646172642064756d6d79207465787420657665722073696e6365207468652031353030732c207768656e20616e20756e6b6e6f776e207072696e74657220746f6f6b20612067616c6c6579206f66207479706520616e6420736372616d626c656420697420746f206d616b65206120747970652073706563696d656e20626f6f6b2e2069732073696d706c792064756d6d792074657874206f6620746865207072696e74696e6720616e64207479706573657474696e6720696e6475737472792e204c6f72656d20497073756d20686173206265656e2074686520696e6475737472792773207374616e646172642064756d6d79207465787420657665722073696e6365207468652031353030732c207768656e20616e20756e6b6e6f776e207072696e74657220746f6f6b20612067616c6c6579206f66207479706520616e6420736372616d626c656420697420746f206d616b65206120747970652073706563696d656e20626f6f6b2e69732073696d706c792064756d6d792074657874206f6620746865207072696e74696e6720616e64207479706573657474696e6720696e6475737472792e204c6f72656d20497073756d20686173206265656e2074686520696e6475737472792773207374616e646172642064756d6d79207465787420657665722073696e6365207468652031353030732c207768656e20616e20756e6b6e6f776e207072696e74657220746f6f6b20612067616c6c6579206f66207479706520616e6420736372616d626c656420697420746f206d616b65206120747970652073706563696d656e20626f6f6b2e2069732073696d706c792064756d6d792074657874206f6620746865207072696e74696e6720616e64207479706573657474696e6720696e6475737472792e204c6f72656d20497073756d20686173206265656e2074686520696e6475737472792773207374616e646172642064756d6d79207465787420657665722073696e6365207468652031353030732c207768656e20616e20756e6b6e6f776e207072696e74657220746f6f6b20612067616c6c6579206f66207479706520616e6420736372616d626c656420697420746f206d616b65206120747970652073706563696d656e20626f6f6b2e3c2f703e, NULL, NULL, '2024-02-23 17:51:39', '2024-02-23 17:51:39'),
(28, 80, 17, 25, 34, 'Fusce convallis enim non magna Duis lacus dignissim.', 'Fusce-convallis-enim-non-magna-Duis-lacus-dignissim.', 'Imran', 0x3c703e69732073696d706c792064756d6d792074657874206f6620746865207072696e74696e6720616e64207479706573657474696e6720696e6475737472792e204c6f72656d20497073756d20686173206265656e2074686520696e6475737472792773207374616e646172642064756d6d79207465787420657665722073696e6365207468652031353030732c207768656e20616e20756e6b6e6f776e207072696e74657220746f6f6b20612067616c6c6579206f66207479706520616e6420736372616d626c656420697420746f206d616b65206120747970652073706563696d656e20626f6f6b2e2069732073696d706c792064756d6d792074657874206f6620746865207072696e74696e6720616e64207479706573657474696e6720696e6475737472792e204c6f72656d20497073756d20686173206265656e2074686520696e6475737472792773207374616e646172642064756d6d79207465787420657665722073696e6365207468652031353030732c207768656e20616e20756e6b6e6f776e207072696e74657220746f6f6b20612067616c6c6579206f66207479706520616e6420736372616d626c656420697420746f206d616b65206120747970652073706563696d656e20626f6f6b2e69732073696d706c792064756d6d792074657874206f6620746865207072696e74696e6720616e64207479706573657474696e6720696e6475737472792e204c6f72656d20497073756d20686173206265656e2074686520696e6475737472792773207374616e646172642064756d6d79207465787420657665722073696e6365207468652031353030732c207768656e20616e20756e6b6e6f776e207072696e74657220746f6f6b20612067616c6c6579206f66207479706520616e6420736372616d626c656420697420746f206d616b65206120747970652073706563696d656e20626f6f6b2e2069732073696d706c792064756d6d792074657874206f6620746865207072696e74696e6720616e64207479706573657474696e6720696e6475737472792e204c6f72656d20497073756d20686173206265656e2074686520696e6475737472792773207374616e646172642064756d6d79207465787420657665722073696e6365207468652031353030732c207768656e20616e20756e6b6e6f776e207072696e74657220746f6f6b20612067616c6c6579206f66207479706520616e6420736372616d626c656420697420746f206d616b65206120747970652073706563696d656e20626f6f6b2e69732073696d706c792064756d6d792074657874206f6620746865207072696e74696e6720616e64207479706573657474696e6720696e6475737472792e204c6f72656d20497073756d20686173206265656e2074686520696e6475737472792773207374616e646172642064756d6d79207465787420657665722073696e6365207468652031353030732c207768656e20616e20756e6b6e6f776e207072696e74657220746f6f6b20612067616c6c6579206f66207479706520616e6420736372616d626c656420697420746f206d616b65206120747970652073706563696d656e20626f6f6b2e2069732073696d706c792064756d6d792074657874206f6620746865207072696e74696e6720616e64207479706573657474696e6720696e6475737472792e204c6f72656d20497073756d20686173206265656e2074686520696e6475737472792773207374616e646172642064756d6d79207465787420657665722073696e6365207468652031353030732c207768656e20616e20756e6b6e6f776e207072696e74657220746f6f6b20612067616c6c6579206f66207479706520616e6420736372616d626c656420697420746f206d616b65206120747970652073706563696d656e20626f6f6b2e3c2f703e, NULL, NULL, '2024-02-23 17:52:58', '2024-02-23 17:52:58'),
(29, 80, 17, 24, 35, 'Non magna pharetra facilisis. lacus nulla dignissim.', 'Non-magna-pharetra-facilisis.-lacus-nulla-dignissim.', 'Imran', 0x3c703e69732073696d706c792064756d6d792074657874206f6620746865207072696e74696e6720616e64207479706573657474696e6720696e6475737472792e204c6f72656d20497073756d20686173206265656e2074686520696e6475737472792773207374616e646172642064756d6d79207465787420657665722073696e6365207468652031353030732c207768656e20616e20756e6b6e6f776e207072696e74657220746f6f6b20612067616c6c6579206f66207479706520616e6420736372616d626c656420697420746f206d616b65206120747970652073706563696d656e20626f6f6b2e2069732073696d706c792064756d6d792074657874206f6620746865207072696e74696e6720616e64207479706573657474696e6720696e6475737472792e204c6f72656d20497073756d20686173206265656e2074686520696e6475737472792773207374616e646172642064756d6d79207465787420657665722073696e6365207468652031353030732c207768656e20616e20756e6b6e6f776e207072696e74657220746f6f6b20612067616c6c6579206f66207479706520616e6420736372616d626c656420697420746f206d616b65206120747970652073706563696d656e20626f6f6b2e69732073696d706c792064756d6d792074657874206f6620746865207072696e74696e6720616e64207479706573657474696e6720696e6475737472792e204c6f72656d20497073756d20686173206265656e2074686520696e6475737472792773207374616e646172642064756d6d79207465787420657665722073696e6365207468652031353030732c207768656e20616e20756e6b6e6f776e207072696e74657220746f6f6b20612067616c6c6579206f66207479706520616e6420736372616d626c656420697420746f206d616b65206120747970652073706563696d656e20626f6f6b2e2069732073696d706c792064756d6d792074657874206f6620746865207072696e74696e6720616e64207479706573657474696e6720696e6475737472792e204c6f72656d20497073756d20686173206265656e2074686520696e6475737472792773207374616e646172642064756d6d79207465787420657665722073696e6365207468652031353030732c207768656e20616e20756e6b6e6f776e207072696e74657220746f6f6b20612067616c6c6579206f66207479706520616e6420736372616d626c656420697420746f206d616b65206120747970652073706563696d656e20626f6f6b2e69732073696d706c792064756d6d792074657874206f6620746865207072696e74696e6720616e64207479706573657474696e6720696e6475737472792e204c6f72656d20497073756d20686173206265656e2074686520696e6475737472792773207374616e646172642064756d6d79207465787420657665722073696e6365207468652031353030732c207768656e20616e20756e6b6e6f776e207072696e74657220746f6f6b20612067616c6c6579206f66207479706520616e6420736372616d626c656420697420746f206d616b65206120747970652073706563696d656e20626f6f6b2e2069732073696d706c792064756d6d792074657874206f6620746865207072696e74696e6720616e64207479706573657474696e6720696e6475737472792e204c6f72656d20497073756d20686173206265656e2074686520696e6475737472792773207374616e646172642064756d6d79207465787420657665722073696e6365207468652031353030732c207768656e20616e20756e6b6e6f776e207072696e74657220746f6f6b20612067616c6c6579206f66207479706520616e6420736372616d626c656420697420746f206d616b65206120747970652073706563696d656e20626f6f6b2e3c2f703e, NULL, NULL, '2024-02-23 17:53:22', '2024-02-23 17:53:22'),
(30, 80, 17, 24, 36, 'Fusce convallis enim non magna Duis lacus', 'Fusce-convallis-enim-non-magna-Duis-lacus', 'Admin', 0x3c703e69732073696d706c792064756d6d792074657874206f6620746865207072696e74696e6720616e64207479706573657474696e6720696e6475737472792e204c6f72656d20497073756d20686173206265656e2074686520696e6475737472792773207374616e646172642064756d6d79207465787420657665722073696e6365207468652031353030732c207768656e20616e20756e6b6e6f776e207072696e74657220746f6f6b20612067616c6c6579206f66207479706520616e6420736372616d626c656420697420746f206d616b65206120747970652073706563696d656e20626f6f6b2e2069732073696d706c792064756d6d792074657874206f6620746865207072696e74696e6720616e64207479706573657474696e6720696e6475737472792e204c6f72656d20497073756d20686173206265656e2074686520696e6475737472792773207374616e646172642064756d6d79207465787420657665722073696e6365207468652031353030732c207768656e20616e20756e6b6e6f776e207072696e74657220746f6f6b20612067616c6c6579206f66207479706520616e6420736372616d626c656420697420746f206d616b65206120747970652073706563696d656e20626f6f6b2e69732073696d706c792064756d6d792074657874206f6620746865207072696e74696e6720616e64207479706573657474696e6720696e6475737472792e204c6f72656d20497073756d20686173206265656e2074686520696e6475737472792773207374616e646172642064756d6d79207465787420657665722073696e6365207468652031353030732c207768656e20616e20756e6b6e6f776e207072696e74657220746f6f6b20612067616c6c6579206f66207479706520616e6420736372616d626c656420697420746f206d616b65206120747970652073706563696d656e20626f6f6b2e2069732073696d706c792064756d6d792074657874206f6620746865207072696e74696e6720616e64207479706573657474696e6720696e6475737472792e204c6f72656d20497073756d20686173206265656e2074686520696e6475737472792773207374616e646172642064756d6d79207465787420657665722073696e6365207468652031353030732c207768656e20616e20756e6b6e6f776e207072696e74657220746f6f6b20612067616c6c6579206f66207479706520616e6420736372616d626c656420697420746f206d616b65206120747970652073706563696d656e20626f6f6b2e69732073696d706c792064756d6d792074657874206f6620746865207072696e74696e6720616e64207479706573657474696e6720696e6475737472792e204c6f72656d20497073756d20686173206265656e2074686520696e6475737472792773207374616e646172642064756d6d79207465787420657665722073696e6365207468652031353030732c207768656e20616e20756e6b6e6f776e207072696e74657220746f6f6b20612067616c6c6579206f66207479706520616e6420736372616d626c656420697420746f206d616b65206120747970652073706563696d656e20626f6f6b2e2069732073696d706c792064756d6d792074657874206f6620746865207072696e74696e6720616e64207479706573657474696e6720696e6475737472792e204c6f72656d20497073756d20686173206265656e2074686520696e6475737472792773207374616e646172642064756d6d79207465787420657665722073696e6365207468652031353030732c207768656e20616e20756e6b6e6f776e207072696e74657220746f6f6b20612067616c6c6579206f66207479706520616e6420736372616d626c656420697420746f206d616b65206120747970652073706563696d656e20626f6f6b2e3c2f703e, NULL, NULL, '2024-02-23 17:53:54', '2024-02-23 17:53:54'),
(31, 81, 18, 26, 37, 'Fusce convallis enim non magna Duis lacus dignissim.', 'Fusce-convallis-enim-non-magna-Duis-lacus-dignissim.', 'Admin', 0x3c703e69732073696d706c792064756d6d792074657874206f6620746865207072696e74696e6720616e64207479706573657474696e6720696e6475737472792e204c6f72656d20497073756d20686173206265656e2074686520696e6475737472792773207374616e646172642064756d6d79207465787420657665722073696e6365207468652031353030732c207768656e20616e20756e6b6e6f776e207072696e74657220746f6f6b20612067616c6c6579206f66207479706520616e6420736372616d626c656420697420746f206d616b65206120747970652073706563696d656e20626f6f6b2e2069732073696d706c792064756d6d792074657874206f6620746865207072696e74696e6720616e64207479706573657474696e6720696e6475737472792e204c6f72656d20497073756d20686173206265656e2074686520696e6475737472792773207374616e646172642064756d6d79207465787420657665722073696e6365207468652031353030732c207768656e20616e20756e6b6e6f776e207072696e74657220746f6f6b20612067616c6c6579206f66207479706520616e6420736372616d626c656420697420746f206d616b65206120747970652073706563696d656e20626f6f6b2e69732073696d706c792064756d6d792074657874206f6620746865207072696e74696e6720616e64207479706573657474696e6720696e6475737472792e204c6f72656d20497073756d20686173206265656e2074686520696e6475737472792773207374616e646172642064756d6d79207465787420657665722073696e6365207468652031353030732c207768656e20616e20756e6b6e6f776e207072696e74657220746f6f6b20612067616c6c6579206f66207479706520616e6420736372616d626c656420697420746f206d616b65206120747970652073706563696d656e20626f6f6b2e2069732073696d706c792064756d6d792074657874206f6620746865207072696e74696e6720616e64207479706573657474696e6720696e6475737472792e204c6f72656d20497073756d20686173206265656e2074686520696e6475737472792773207374616e646172642064756d6d79207465787420657665722073696e6365207468652031353030732c207768656e20616e20756e6b6e6f776e207072696e74657220746f6f6b20612067616c6c6579206f66207479706520616e6420736372616d626c656420697420746f206d616b65206120747970652073706563696d656e20626f6f6b2e69732073696d706c792064756d6d792074657874206f6620746865207072696e74696e6720616e64207479706573657474696e6720696e6475737472792e204c6f72656d20497073756d20686173206265656e2074686520696e6475737472792773207374616e646172642064756d6d79207465787420657665722073696e6365207468652031353030732c207768656e20616e20756e6b6e6f776e207072696e74657220746f6f6b20612067616c6c6579206f66207479706520616e6420736372616d626c656420697420746f206d616b65206120747970652073706563696d656e20626f6f6b2e2069732073696d706c792064756d6d792074657874206f6620746865207072696e74696e6720616e64207479706573657474696e6720696e6475737472792e204c6f72656d20497073756d20686173206265656e2074686520696e6475737472792773207374616e646172642064756d6d79207465787420657665722073696e6365207468652031353030732c207768656e20616e20756e6b6e6f776e207072696e74657220746f6f6b20612067616c6c6579206f66207479706520616e6420736372616d626c656420697420746f206d616b65206120747970652073706563696d656e20626f6f6b2e3c2f703e, NULL, NULL, '2024-02-23 17:55:16', '2024-02-23 17:55:16'),
(32, 81, 18, 26, 38, 'Non magna pharetra facilisis. lacus nulla dignissim.', 'Non-magna-pharetra-facilisis.-lacus-nulla-dignissim.', 'Imran', 0x3c703e69732073696d706c792064756d6d792074657874206f6620746865207072696e74696e6720616e64207479706573657474696e6720696e6475737472792e204c6f72656d20497073756d20686173206265656e2074686520696e6475737472792773207374616e646172642064756d6d79207465787420657665722073696e6365207468652031353030732c207768656e20616e20756e6b6e6f776e207072696e74657220746f6f6b20612067616c6c6579206f66207479706520616e6420736372616d626c656420697420746f206d616b65206120747970652073706563696d656e20626f6f6b2e2069732073696d706c792064756d6d792074657874206f6620746865207072696e74696e6720616e64207479706573657474696e6720696e6475737472792e204c6f72656d20497073756d20686173206265656e2074686520696e6475737472792773207374616e646172642064756d6d79207465787420657665722073696e6365207468652031353030732c207768656e20616e20756e6b6e6f776e207072696e74657220746f6f6b20612067616c6c6579206f66207479706520616e6420736372616d626c656420697420746f206d616b65206120747970652073706563696d656e20626f6f6b2e69732073696d706c792064756d6d792074657874206f6620746865207072696e74696e6720616e64207479706573657474696e6720696e6475737472792e204c6f72656d20497073756d20686173206265656e2074686520696e6475737472792773207374616e646172642064756d6d79207465787420657665722073696e6365207468652031353030732c207768656e20616e20756e6b6e6f776e207072696e74657220746f6f6b20612067616c6c6579206f66207479706520616e6420736372616d626c656420697420746f206d616b65206120747970652073706563696d656e20626f6f6b2e2069732073696d706c792064756d6d792074657874206f6620746865207072696e74696e6720616e64207479706573657474696e6720696e6475737472792e204c6f72656d20497073756d20686173206265656e2074686520696e6475737472792773207374616e646172642064756d6d79207465787420657665722073696e6365207468652031353030732c207768656e20616e20756e6b6e6f776e207072696e74657220746f6f6b20612067616c6c6579206f66207479706520616e6420736372616d626c656420697420746f206d616b65206120747970652073706563696d656e20626f6f6b2e69732073696d706c792064756d6d792074657874206f6620746865207072696e74696e6720616e64207479706573657474696e6720696e6475737472792e204c6f72656d20497073756d20686173206265656e2074686520696e6475737472792773207374616e646172642064756d6d79207465787420657665722073696e6365207468652031353030732c207768656e20616e20756e6b6e6f776e207072696e74657220746f6f6b20612067616c6c6579206f66207479706520616e6420736372616d626c656420697420746f206d616b65206120747970652073706563696d656e20626f6f6b2e2069732073696d706c792064756d6d792074657874206f6620746865207072696e74696e6720616e64207479706573657474696e6720696e6475737472792e204c6f72656d20497073756d20686173206265656e2074686520696e6475737472792773207374616e646172642064756d6d79207465787420657665722073696e6365207468652031353030732c207768656e20616e20756e6b6e6f776e207072696e74657220746f6f6b20612067616c6c6579206f66207479706520616e6420736372616d626c656420697420746f206d616b65206120747970652073706563696d656e20626f6f6b2e3c2f703e, NULL, NULL, '2024-02-23 17:56:19', '2024-02-23 18:05:42'),
(33, 81, 18, 27, 39, 'Magna pharetra facilisis. lacus nulla dignissim.', 'Magna-pharetra-facilisis.-lacus-nulla-dignissim.', 'Admin', 0x3c703e69732073696d706c792064756d6d792074657874206f6620746865207072696e74696e6720616e64207479706573657474696e6720696e6475737472792e204c6f72656d20497073756d20686173206265656e2074686520696e6475737472792773207374616e646172642064756d6d79207465787420657665722073696e6365207468652031353030732c207768656e20616e20756e6b6e6f776e207072696e74657220746f6f6b20612067616c6c6579206f66207479706520616e6420736372616d626c656420697420746f206d616b65206120747970652073706563696d656e20626f6f6b2e2069732073696d706c792064756d6d792074657874206f6620746865207072696e74696e6720616e64207479706573657474696e6720696e6475737472792e204c6f72656d20497073756d20686173206265656e2074686520696e6475737472792773207374616e646172642064756d6d79207465787420657665722073696e6365207468652031353030732c207768656e20616e20756e6b6e6f776e207072696e74657220746f6f6b20612067616c6c6579206f66207479706520616e6420736372616d626c656420697420746f206d616b65206120747970652073706563696d656e20626f6f6b2e69732073696d706c792064756d6d792074657874206f6620746865207072696e74696e6720616e64207479706573657474696e6720696e6475737472792e204c6f72656d20497073756d20686173206265656e2074686520696e6475737472792773207374616e646172642064756d6d79207465787420657665722073696e6365207468652031353030732c207768656e20616e20756e6b6e6f776e207072696e74657220746f6f6b20612067616c6c6579206f66207479706520616e6420736372616d626c656420697420746f206d616b65206120747970652073706563696d656e20626f6f6b2e2069732073696d706c792064756d6d792074657874206f6620746865207072696e74696e6720616e64207479706573657474696e6720696e6475737472792e204c6f72656d20497073756d20686173206265656e2074686520696e6475737472792773207374616e646172642064756d6d79207465787420657665722073696e6365207468652031353030732c207768656e20616e20756e6b6e6f776e207072696e74657220746f6f6b20612067616c6c6579206f66207479706520616e6420736372616d626c656420697420746f206d616b65206120747970652073706563696d656e20626f6f6b2e69732073696d706c792064756d6d792074657874206f6620746865207072696e74696e6720616e64207479706573657474696e6720696e6475737472792e204c6f72656d20497073756d20686173206265656e2074686520696e6475737472792773207374616e646172642064756d6d79207465787420657665722073696e6365207468652031353030732c207768656e20616e20756e6b6e6f776e207072696e74657220746f6f6b20612067616c6c6579206f66207479706520616e6420736372616d626c656420697420746f206d616b65206120747970652073706563696d656e20626f6f6b2e2069732073696d706c792064756d6d792074657874206f6620746865207072696e74696e6720616e64207479706573657474696e6720696e6475737472792e204c6f72656d20497073756d20686173206265656e2074686520696e6475737472792773207374616e646172642064756d6d79207465787420657665722073696e6365207468652031353030732c207768656e20616e20756e6b6e6f776e207072696e74657220746f6f6b20612067616c6c6579206f66207479706520616e6420736372616d626c656420697420746f206d616b65206120747970652073706563696d656e20626f6f6b2e3c2f703e, NULL, NULL, '2024-02-23 17:56:58', '2024-02-23 17:56:58'),
(34, 82, 19, 29, 40, 'Fusce convallis enim non magna Duis lacus dignissim.', 'Fusce-convallis-enim-non-magna-Duis-lacus-dignissim.', 'Admin', 0x3c703e69732073696d706c792064756d6d792074657874206f6620746865207072696e74696e6720616e64207479706573657474696e6720696e6475737472792e204c6f72656d20497073756d20686173206265656e2074686520696e6475737472792773207374616e646172642064756d6d79207465787420657665722073696e6365207468652031353030732c207768656e20616e20756e6b6e6f776e207072696e74657220746f6f6b20612067616c6c6579206f66207479706520616e6420736372616d626c656420697420746f206d616b65206120747970652073706563696d656e20626f6f6b2e2069732073696d706c792064756d6d792074657874206f6620746865207072696e74696e6720616e64207479706573657474696e6720696e6475737472792e204c6f72656d20497073756d20686173206265656e2074686520696e6475737472792773207374616e646172642064756d6d79207465787420657665722073696e6365207468652031353030732c207768656e20616e20756e6b6e6f776e207072696e74657220746f6f6b20612067616c6c6579206f66207479706520616e6420736372616d626c656420697420746f206d616b65206120747970652073706563696d656e20626f6f6b2e69732073696d706c792064756d6d792074657874206f6620746865207072696e74696e6720616e64207479706573657474696e6720696e6475737472792e204c6f72656d20497073756d20686173206265656e2074686520696e6475737472792773207374616e646172642064756d6d79207465787420657665722073696e6365207468652031353030732c207768656e20616e20756e6b6e6f776e207072696e74657220746f6f6b20612067616c6c6579206f66207479706520616e6420736372616d626c656420697420746f206d616b65206120747970652073706563696d656e20626f6f6b2e2069732073696d706c792064756d6d792074657874206f6620746865207072696e74696e6720616e64207479706573657474696e6720696e6475737472792e204c6f72656d20497073756d20686173206265656e2074686520696e6475737472792773207374616e646172642064756d6d79207465787420657665722073696e6365207468652031353030732c207768656e20616e20756e6b6e6f776e207072696e74657220746f6f6b20612067616c6c6579206f66207479706520616e6420736372616d626c656420697420746f206d616b65206120747970652073706563696d656e20626f6f6b2e69732073696d706c792064756d6d792074657874206f6620746865207072696e74696e6720616e64207479706573657474696e6720696e6475737472792e204c6f72656d20497073756d20686173206265656e2074686520696e6475737472792773207374616e646172642064756d6d79207465787420657665722073696e6365207468652031353030732c207768656e20616e20756e6b6e6f776e207072696e74657220746f6f6b20612067616c6c6579206f66207479706520616e6420736372616d626c656420697420746f206d616b65206120747970652073706563696d656e20626f6f6b2e2069732073696d706c792064756d6d792074657874206f6620746865207072696e74696e6720616e64207479706573657474696e6720696e6475737472792e204c6f72656d20497073756d20686173206265656e2074686520696e6475737472792773207374616e646172642064756d6d79207465787420657665722073696e6365207468652031353030732c207768656e20616e20756e6b6e6f776e207072696e74657220746f6f6b20612067616c6c6579206f66207479706520616e6420736372616d626c656420697420746f206d616b65206120747970652073706563696d656e20626f6f6b2e3c2f703e, NULL, NULL, '2024-02-23 17:59:17', '2024-02-23 17:59:17'),
(35, 82, 19, 29, 41, 'Non magna pharetra facilisis. lacus nulla dignissim.', 'Non-magna-pharetra-facilisis.-lacus-nulla-dignissim.', 'Imran', 0x3c703e69732073696d706c792064756d6d792074657874206f6620746865207072696e74696e6720616e64207479706573657474696e6720696e6475737472792e204c6f72656d20497073756d20686173206265656e2074686520696e6475737472792773207374616e646172642064756d6d79207465787420657665722073696e6365207468652031353030732c207768656e20616e20756e6b6e6f776e207072696e74657220746f6f6b20612067616c6c6579206f66207479706520616e6420736372616d626c656420697420746f206d616b65206120747970652073706563696d656e20626f6f6b2e2069732073696d706c792064756d6d792074657874206f6620746865207072696e74696e6720616e64207479706573657474696e6720696e6475737472792e204c6f72656d20497073756d20686173206265656e2074686520696e6475737472792773207374616e646172642064756d6d79207465787420657665722073696e6365207468652031353030732c207768656e20616e20756e6b6e6f776e207072696e74657220746f6f6b20612067616c6c6579206f66207479706520616e6420736372616d626c656420697420746f206d616b65206120747970652073706563696d656e20626f6f6b2e69732073696d706c792064756d6d792074657874206f6620746865207072696e74696e6720616e64207479706573657474696e6720696e6475737472792e204c6f72656d20497073756d20686173206265656e2074686520696e6475737472792773207374616e646172642064756d6d79207465787420657665722073696e6365207468652031353030732c207768656e20616e20756e6b6e6f776e207072696e74657220746f6f6b20612067616c6c6579206f66207479706520616e6420736372616d626c656420697420746f206d616b65206120747970652073706563696d656e20626f6f6b2e2069732073696d706c792064756d6d792074657874206f6620746865207072696e74696e6720616e64207479706573657474696e6720696e6475737472792e204c6f72656d20497073756d20686173206265656e2074686520696e6475737472792773207374616e646172642064756d6d79207465787420657665722073696e6365207468652031353030732c207768656e20616e20756e6b6e6f776e207072696e74657220746f6f6b20612067616c6c6579206f66207479706520616e6420736372616d626c656420697420746f206d616b65206120747970652073706563696d656e20626f6f6b2e69732073696d706c792064756d6d792074657874206f6620746865207072696e74696e6720616e64207479706573657474696e6720696e6475737472792e204c6f72656d20497073756d20686173206265656e2074686520696e6475737472792773207374616e646172642064756d6d79207465787420657665722073696e6365207468652031353030732c207768656e20616e20756e6b6e6f776e207072696e74657220746f6f6b20612067616c6c6579206f66207479706520616e6420736372616d626c656420697420746f206d616b65206120747970652073706563696d656e20626f6f6b2e2069732073696d706c792064756d6d792074657874206f6620746865207072696e74696e6720616e64207479706573657474696e6720696e6475737472792e204c6f72656d20497073756d20686173206265656e2074686520696e6475737472792773207374616e646172642064756d6d79207465787420657665722073696e6365207468652031353030732c207768656e20616e20756e6b6e6f776e207072696e74657220746f6f6b20612067616c6c6579206f66207479706520616e6420736372616d626c656420697420746f206d616b65206120747970652073706563696d656e20626f6f6b2e3c2f703e, NULL, NULL, '2024-02-23 17:59:55', '2024-02-23 17:59:55');
INSERT INTO `user_blog_informations` (`id`, `language_id`, `user_id`, `blog_category_id`, `blog_id`, `title`, `slug`, `author`, `content`, `meta_keywords`, `meta_description`, `created_at`, `updated_at`) VALUES
(36, 82, 19, 28, 42, 'Magna pharetra facilisis. lacus nulla dignissim.', 'Magna-pharetra-facilisis.-lacus-nulla-dignissim.', 'Admin', 0x3c703e69732073696d706c792064756d6d792074657874206f6620746865207072696e74696e6720616e64207479706573657474696e6720696e6475737472792e204c6f72656d20497073756d20686173206265656e2074686520696e6475737472792773207374616e646172642064756d6d79207465787420657665722073696e6365207468652031353030732c207768656e20616e20756e6b6e6f776e207072696e74657220746f6f6b20612067616c6c6579206f66207479706520616e6420736372616d626c656420697420746f206d616b65206120747970652073706563696d656e20626f6f6b2e2069732073696d706c792064756d6d792074657874206f6620746865207072696e74696e6720616e64207479706573657474696e6720696e6475737472792e204c6f72656d20497073756d20686173206265656e2074686520696e6475737472792773207374616e646172642064756d6d79207465787420657665722073696e6365207468652031353030732c207768656e20616e20756e6b6e6f776e207072696e74657220746f6f6b20612067616c6c6579206f66207479706520616e6420736372616d626c656420697420746f206d616b65206120747970652073706563696d656e20626f6f6b2e69732073696d706c792064756d6d792074657874206f6620746865207072696e74696e6720616e64207479706573657474696e6720696e6475737472792e204c6f72656d20497073756d20686173206265656e2074686520696e6475737472792773207374616e646172642064756d6d79207465787420657665722073696e6365207468652031353030732c207768656e20616e20756e6b6e6f776e207072696e74657220746f6f6b20612067616c6c6579206f66207479706520616e6420736372616d626c656420697420746f206d616b65206120747970652073706563696d656e20626f6f6b2e2069732073696d706c792064756d6d792074657874206f6620746865207072696e74696e6720616e64207479706573657474696e6720696e6475737472792e204c6f72656d20497073756d20686173206265656e2074686520696e6475737472792773207374616e646172642064756d6d79207465787420657665722073696e6365207468652031353030732c207768656e20616e20756e6b6e6f776e207072696e74657220746f6f6b20612067616c6c6579206f66207479706520616e6420736372616d626c656420697420746f206d616b65206120747970652073706563696d656e20626f6f6b2e69732073696d706c792064756d6d792074657874206f6620746865207072696e74696e6720616e64207479706573657474696e6720696e6475737472792e204c6f72656d20497073756d20686173206265656e2074686520696e6475737472792773207374616e646172642064756d6d79207465787420657665722073696e6365207468652031353030732c207768656e20616e20756e6b6e6f776e207072696e74657220746f6f6b20612067616c6c6579206f66207479706520616e6420736372616d626c656420697420746f206d616b65206120747970652073706563696d656e20626f6f6b2e2069732073696d706c792064756d6d792074657874206f6620746865207072696e74696e6720616e64207479706573657474696e6720696e6475737472792e204c6f72656d20497073756d20686173206265656e2074686520696e6475737472792773207374616e646172642064756d6d79207465787420657665722073696e6365207468652031353030732c207768656e20616e20756e6b6e6f776e207072696e74657220746f6f6b20612067616c6c6579206f66207479706520616e6420736372616d626c656420697420746f206d616b65206120747970652073706563696d656e20626f6f6b2e3c2f703e, NULL, NULL, '2024-02-23 18:00:24', '2024-02-23 18:00:24');

-- --------------------------------------------------------

--
-- Table structure for table `user_coupons`
--

CREATE TABLE `user_coupons` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'percentage, fixed',
  `value` decimal(11,2) DEFAULT NULL,
  `start_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `end_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `minimum_spend` decimal(11,2) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_coupons`
--

INSERT INTO `user_coupons` (`id`, `user_id`, `name`, `code`, `type`, `value`, `start_date`, `end_date`, `minimum_spend`, `created_at`, `updated_at`) VALUES
(1, 2, 'Shop Manager', '123456789', 'percentage', '10.00', '01/17/2024', '01/24/2024', '1.00', '2024-01-17 17:40:40', '2024-01-17 17:41:03'),
(2, 2, 'Special', 'Special14', 'percentage', '14.00', '01/07/2024', '01/16/2024', '400.00', '2024-01-17 17:41:56', '2024-01-17 17:41:56'),
(3, 2, 'Victory Day', 'BIJOY16', 'fixed', '5.00', '01/18/2024', '01/31/2024', '10.00', '2024-01-17 17:42:42', '2024-01-17 17:42:42');

-- --------------------------------------------------------

--
-- Table structure for table `user_custom_domains`
--

CREATE TABLE `user_custom_domains` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `requested_domain` varchar(255) DEFAULT NULL,
  `current_domain` varchar(255) DEFAULT NULL,
  `status` tinyint(4) NOT NULL COMMENT '0 - Pending, 1 - Connected, 2 - Rejected, 3 - Removed',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_custom_domains`
--

INSERT INTO `user_custom_domains` (`id`, `user_id`, `requested_domain`, `current_domain`, `status`, `created_at`, `updated_at`) VALUES
(1, 2, 'fastifo.xyz', '0', 1, '2024-02-06 07:26:47', '2024-02-06 07:27:34');

-- --------------------------------------------------------

--
-- Table structure for table `user_faqs`
--

CREATE TABLE `user_faqs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `language_id` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL,
  `question` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `answer` text COLLATE utf8mb4_unicode_ci,
  `serial_number` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_faqs`
--

INSERT INTO `user_faqs` (`id`, `language_id`, `user_id`, `question`, `answer`, `serial_number`) VALUES
(1, 61, 2, 'Why this app is so awesome', 'Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod.', 6),
(2, 61, 2, 'Why this app is so awesome', 'Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod.', 5),
(3, 61, 2, 'Why this app is so awesome', 'Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod.', 4),
(4, 61, 2, 'Why this app is so awesome', 'Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod.', 2),
(5, 61, 2, 'Why this app is so awesome', 'Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod.', 1),
(6, 61, 2, 'Why this app is so awesome', 'Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod.', 3),
(7, 62, 2, 'البنود و الظروفالبنود و الظروف', 'البنود و الظروفالبنود و الظروفالبنود و الظروفالبنود و الظروفالبنود و الظروفالبنود و الظروفالبنود و الظروفالبنود و الظروفالبنود و الظروفالبنود و الظروفالبنود و الظروفالبنود و الظروفالبنود و الظروف', 6),
(8, 62, 2, 'البنود و الظروفالبنود و الظروف', 'البنود و الظروفالبنود و الظروفالبنود و الظروفالبنود و الظروفالبنود و الظروفالبنود و الظروفالبنود و الظروفالبنود و الظروفالبنود و الظروفالبنود و الظروف', 5),
(9, 62, 2, 'البنود و الظروفالبنود و الظروف', 'البنود و الظروفالبنود و الظروفالبنود و الظروفالبنود و الظروفالبنود و الظروفالبنود و الظروفالبنود و الظروفالبنود و الظروفالبنود و الظروفالبنود و الظروفالبنود و الظروفالبنود و الظروفالبنود و الظروفالبنود و الظروف', 4),
(10, 62, 2, 'البنود و الظروفالبنود و الظروف', 'البنود و الظروفالبنود و الظروفالبنود و الظروفالبنود و الظروفالبنود و الظروفالبنود و الظروفالبنود و الظروفالبنود و الظروفالبنود و الظروفالبنود و الظروفالبنود و الظروفالبنود و الظروف', 3),
(11, 62, 2, 'البنود و الظروفالبنود و الظروف', 'البنود و الظروفالبنود و الظروفالبنود و الظروفالبنود و الظروفالبنود و الظروفالبنود و الظروفالبنود و الظروفالبنود و الظروفالبنود و الظروفالبنود و الظروفالبنود و الظروفالبنود و الظروفالبنود و الظروفالبنود و الظروفالبنود و الظروفالبنود و الظروف', 2),
(12, 62, 2, 'البنود و الظروفالبنود و الظروف', 'البنود و الظروفالبنود و الظروفالبنود و الظروفالبنود و الظروفالبنود و الظروفالبنود و الظروفالبنود و الظروف', 1);

-- --------------------------------------------------------

--
-- Table structure for table `user_features`
--

CREATE TABLE `user_features` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `language_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `serial_number` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_features`
--

INSERT INTO `user_features` (`id`, `language_id`, `user_id`, `image`, `title`, `serial_number`, `created_at`, `updated_at`) VALUES
(1, 61, 2, 'd8eaf9f13563901055af20bc9d1f2bc4bcf0640e.png', 'Bakery Food', 1, NULL, NULL),
(2, 61, 2, '7ad4a011b6e019c0d1b4d97063445beb3c27247a.png', 'Slide Pizza', 7, NULL, NULL),
(3, 61, 2, '50366b1ee4c5f3143ff68fbea6305625890b33c0.jpg', 'Hot Snacks', 6, NULL, NULL),
(4, 61, 2, '0439e38d28dbeb6e109fc26d49723f62e4cb1fac.jpg', 'Best Pizzas', 5, NULL, NULL),
(5, 61, 2, '0d1c202630ea750798e2b303399130c34c4d7594.png', 'Sweet Cheeses', 4, NULL, NULL),
(6, 61, 2, 'eab284dcb7e4988422e2d8d1dcf2bf783871accf.png', 'Tasty Foods', 3, NULL, NULL),
(7, 62, 2, '0728fe96ad94f957890a029d180cb1b4a4d0c759.png', 'وجبات خفيفة ساخنة', 6, NULL, NULL),
(8, 62, 2, 'e14c5a9f2b48718c372af6f4f2403add7b6e4599.jpg', 'أفضل بيتزا', 5, NULL, NULL),
(9, 62, 2, 'd978b9ff043fb6785143db6cb00f34928992f995.jpg', 'جبن حلو', 3, NULL, NULL),
(10, 62, 2, '2f5ecbf782f93a7cad8975e410aef1edaf5e58f2.png', 'الأطعمة اللذيذة', 4, NULL, NULL),
(11, 62, 2, '865565cd21beea4ca24d71647637bda99b672c12.png', 'الأصناف الطازجة', 2, NULL, NULL),
(24, 77, 14, '99dde89c9f72b5c71d8f78b07bd0dba077fccf4d.png', 'Fruits Cake', 1, NULL, NULL),
(25, 77, 14, 'cded9a69a7a93f2286bb888ca67fc82f0d02492f.png', 'Chocolate Cake', 2, NULL, NULL),
(26, 77, 14, 'a183f1ebe3a4954f2ae843ac504d77a168bcdbae.png', 'Bread Items', 3, NULL, NULL),
(27, 77, 14, 'ab4568fc004ce65bc97f229e2e512a8cd5518e2b.png', 'Pastry Items', 4, NULL, NULL),
(28, 78, 15, '5677b0e1e3616e9434795ef508298b2f3ed8d6ea.png', 'Slide Pizza', 1, NULL, NULL),
(29, 78, 15, '8c01e65b9a6ebb3ea28a89d508d9b139d4a18a15.png', 'Plan Pizza', 2, NULL, NULL),
(30, 78, 15, '566605e010a120c7ab35bdde2023bef8130aaee4.png', 'Sicilian Pizza', 3, NULL, NULL),
(31, 78, 15, 'c71624c3c6c1872ff59f455a9cf54fc904d537ed.png', 'Cheez Pizza', 4, NULL, NULL),
(32, 78, 15, '840c251a27945499cd364d385c54ec41cc6c2586.png', 'Mixed Pizza', 5, NULL, NULL),
(33, 79, 16, '4e17846fc949c7f6cbab9d1c7f2cc7e4ea066c0f.png', 'Chocolate Coffee', 1, NULL, NULL),
(34, 79, 16, '2666e018700c82e54b40fe131dc52021d0b4e450.png', 'Could Coffee', 2, NULL, NULL),
(35, 79, 16, '69c9c23d80a9386d617020c0cc58cf6112bfa04f.png', 'Pastry Coffee', 3, NULL, NULL),
(36, 79, 16, '7ff3ec02496764da72b650d1ae1f79e3537e4b8f.png', 'Normal Coffee', 4, NULL, NULL),
(37, 79, 16, '7ed14f32fda93e3d3d86d30d5bf308c9e422f6e7.png', 'Honey Coffee', 5, NULL, NULL),
(38, 79, 16, 'a552fc1b0e1532deaa2649f2b8a4fa8980ae1fca.png', 'Milkshake Coffee', 6, NULL, NULL),
(39, 80, 17, '93378c330dd785b6205edc2fcbc274e478bcf563.png', 'Ambar Blass', 1, NULL, NULL),
(40, 80, 17, '97068443e5d0c1e473bc76a35f74049ebb4ceec3.png', 'Pilljar', 2, NULL, NULL),
(41, 80, 17, 'a17875cccbd3383a99bd1180b58a0b9de8bf6fbe.png', 'Supplement', 3, NULL, NULL),
(42, 80, 17, 'bd9373e5a4973818c7d9ddad2a765e63451b331e.png', 'Ambar Glass', 4, NULL, NULL),
(43, 80, 17, 'e890cfe31e9b640315a6b0e576bc838537afb96b.png', 'Botanicals', 5, NULL, NULL),
(44, 80, 17, '1267bd73c7728bb1be8ab06da95e0582c0fe461a.png', 'Ambar Glass', 6, NULL, NULL),
(45, 81, 18, '250b69b9a015d82602da7ea3ed86b31bef6c96ee.png', 'Vegetables Items', 1, NULL, NULL),
(46, 81, 18, 'ea50b3f2e30f1ba748ced2002586c34eeecbd384.png', 'Coffee Beans', 2, NULL, NULL),
(47, 81, 18, '8da509b73c3f894f6b87cad5683f42700f7a2e49.png', 'Organic Oil', 3, NULL, NULL),
(48, 81, 18, 'b8f0b26efeda2adb07df719ef05e9d1eafaef5c8.png', 'Red Chillies', 4, NULL, NULL),
(49, 81, 18, '7406fb64d531f281923c603a0844c311209bb466.png', 'Strawberry Items', 5, NULL, NULL),
(50, 81, 18, 'c4edad4d492f28e4683ae6dd8213da88e9459ed1.png', 'Cooking Oil', 6, NULL, NULL),
(51, 82, 19, 'a6d25291d903415e852ef62b7f719e4bd8f9e546.png', 'Fruits Juice', 1, NULL, NULL),
(52, 82, 19, '0cf2fc72591b706e7a15befd4d69f89f0187eab3.png', 'Cold Ice Cream', 2, NULL, NULL),
(53, 82, 19, '1f4da35ced94276221ac5544a059703ab9c65125.png', 'Milk Shake', 3, NULL, NULL),
(54, 82, 19, '6491f06d94598090a2383658e3c7436da5c06952.png', 'Black Coffee', 4, NULL, NULL),
(55, 82, 19, 'ce07513ecc0790c3be9051fbbae0fec524dfa3ea.png', 'Orange Juice', 5, NULL, NULL),
(56, 82, 19, 'b6a1f771baf46e3b7350ad25efdb71667b4ea625.png', 'Normal Coffee', 6, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_intro_points`
--

CREATE TABLE `user_intro_points` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `language_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `text` text COLLATE utf8mb4_unicode_ci,
  `intro_section_rating_point` int(11) DEFAULT NULL,
  `intro_section_rating_symbol` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `serial_number` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_intro_points`
--

INSERT INTO `user_intro_points` (`id`, `language_id`, `user_id`, `icon`, `title`, `text`, `intro_section_rating_point`, `intro_section_rating_symbol`, `serial_number`, `created_at`, `updated_at`) VALUES
(1, 61, 2, 'fab fa-accessible-icon', 'Lorem', 'We provide 100& Pure & handmade foods', 50, '%', 1, NULL, NULL),
(2, 61, 2, 'fab fa-accusoft', '100% Pure Foods', 'We provide 100& Pure & handmade foods', 100, '%', 2, NULL, NULL),
(3, 61, 2, 'fas fa-adjust', '100% Pure Food', 'We provide 100& Pure & handmade foods', 75, '%', 3, NULL, NULL),
(5, 62, 2, 'fab fa-accessible-icon', 'اطلب الان', 'اطلب الاناطلب الاناطلب الان', 80, '%', 1, NULL, NULL),
(6, 62, 2, 'fab fa-accusoft', 'اطلب الان', 'اطلب الاناطلب الاناطلب الان', 100, '%', 2, NULL, NULL),
(7, 77, 14, 'fas fa-heart', 'Premium Quality', 'We provide premium & quality food items', NULL, NULL, 1, NULL, NULL),
(8, 77, 14, 'fas fa-heart', 'Online Delivery', 'We provide fast online delivery for all items', NULL, NULL, 2, NULL, NULL),
(9, 77, 14, 'fas fa-heart', '100% Pure Food', 'We provide 100& Pure & handmade foods', NULL, NULL, 3, NULL, NULL),
(10, 77, 14, 'fas fa-heart', '24/7 Hours Open', 'Our shop always 24/7 hours open for you', NULL, NULL, 4, NULL, NULL),
(11, 78, 15, 'fas fa-lemon', '50+ Pizza Items', 'We provide premium & high quality tasty pizza', NULL, NULL, 1, NULL, NULL),
(12, 78, 15, 'fas fa-car', 'Online Fast Delivery', 'We provide 24/7 fast online delivery for all items', NULL, NULL, 2, NULL, NULL),
(14, 79, 16, NULL, 'Total Customers', NULL, 2094, '+', 1, NULL, NULL),
(15, 79, 16, NULL, 'World Outlet', NULL, 15, '+', 2, NULL, NULL),
(16, 79, 16, NULL, 'Satisfaction', NULL, 100, '%', 3, NULL, NULL),
(17, 80, 17, 'far fa-star', 'Side Effect Free Medicine', 'Lorem ipsum dolor sit amet consectetur adipisicing. Laudantium deleniti voluptates fugit. Voluptatum', 100, '%', 1, NULL, NULL),
(18, 80, 17, 'far fa-star', 'Regular Happy Customers', 'Lorem ipsum dolor sit amet consectetur adipisicing. Laudantium deleniti voluptates fugit. Voluptatum', 500, '+', 2, NULL, NULL),
(19, 81, 18, 'far fa-star', 'Organic and Fresh', 'Our all products 100% natural and fresh', NULL, NULL, 1, NULL, NULL),
(20, 81, 18, 'fab fa-apple', '150+ Organic Items', 'We’ve 200+ grocery food for our customers', NULL, NULL, 2, NULL, NULL),
(21, 81, 18, 'far fa-credit-card', 'Secure Payment', 'We make sure client’s payment method', NULL, NULL, 3, NULL, NULL),
(22, 81, 18, 'fas fa-calendar-alt', 'Super Fast Delivery', 'Our delivery services are fast, secure.', NULL, NULL, 4, NULL, NULL),
(23, 82, 19, NULL, 'Total Customers', NULL, 2094, '+', 1, NULL, NULL),
(24, 82, 19, NULL, 'World Outlet', NULL, 15, '+', 2, NULL, NULL),
(25, 82, 19, NULL, 'Satisfaction', NULL, 100, '%', 3, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_languages`
--

CREATE TABLE `user_languages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `is_default` tinyint(4) NOT NULL DEFAULT '0',
  `rtl` tinyint(4) NOT NULL COMMENT '0 - LTR, 1- RTL',
  `keywords` longtext,
  `user_id` int(11) DEFAULT NULL,
  `datepicker_name` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_languages`
--

INSERT INTO `user_languages` (`id`, `name`, `code`, `is_default`, `rtl`, `keywords`, `user_id`, `datepicker_name`, `created_at`, `updated_at`) VALUES
(1, 'English', 'en', 0, 0, '{\"Home\":\"Home\",\"Menu\":\"Menu\",\"Items\":\"Items\",\"Team\":\"Team\",\"Teams\":\"Teams\",\"Contact\":\"Contact\",\"Gallery\":\"Gallery\",\"Team Members\":\"Team Members\",\"Cart\":\"Cart\",\"Reservation\":\"Reservation\",\"Blog\":\"Blog\",\"Add Cart\":\"Add Cart\",\"Opening Time\":\"Opening Time\",\"Buy Now\":\"Buy Now\",\"Discover Food Menu\":\"Discover Food Menu\",\"View All Items\":\"View All Items\",\"Our\":\"Our\",\"Special\":\"Special\",\"Good\":\"Good\",\"Food\":\"Food\",\"Price\":\"Price\",\"View All Menu List\":\"View All Menu List\",\"Product Not Found\":\"Product Not Found\",\"Stars\":\"Stars\",\"Read More\":\"Read More\",\"Book A Table\":\"Book A Table\",\"Full Name\":\"Full Name\",\"Phone\":\"Phone\",\"Date\":\"Date\",\"Time\":\"Time\",\"Person\":\"Person\",\"Book Table\":\"Book Table\",\"Our Blog\":\"Our Blog\",\"No Blogs\":\"No Blogs\",\"Share\":\"Share\",\"All Categories\":\"All Categories\",\"Contact Us\":\"Contact Us\",\"Your Name\":\"Your Name\",\"Email Address\":\"Email Address\",\"Subject\":\"Subject\",\"Write a message\":\"Write a message\",\"Submit Now\":\"Submit Now\",\"Career\":\"Career\",\"Job Details\":\"Job Details\",\"Our Gallery\":\"Our Gallery\",\"FAQ\":\"FAQ\",\"Photos Action\":\"Photos Action\",\"Our Awesome Gallery\":\"Our Awesome Gallery\",\"Exparts Our Team\":\"Exparts Our Team\",\"Your Cart\":\"Your Cart\",\"Total\":\"Total\",\"Products\":\"Products\",\"Product\":\"Product\",\"Product Title\":\"Product Title\",\"Variations\":\"Variations\",\"Variation\":\"Variation\",\"Add On\'s\":\"Add On\'s\",\"Ordered Products\":\"Ordered Products\",\"Select Variation\":\"Select Variation\",\"Select Add On\'s\":\"Select Add On\'s\",\"Optional\":\"Optional\",\"Add to Cart\":\"Add to Cart\",\"Quantity\":\"Quantity\",\"Availability\":\"Availability\",\"Item(s)\":\"Item(s)\",\"Remove\":\"Remove\",\"Avilable Now\":\"Avilable Now\",\"Out Of Stock\":\"Out Of Stock\",\"Cart is empty!\":\"Cart is empty!\",\"Checkout\":\"Checkout\",\"Update Cart\":\"Update Cart\",\"Country\":\"Country\",\"First Name\":\"First Name\",\"Last Name\":\"Last Name\",\"Address\":\"Address\",\"Town \\/ City\":\"Town \\/ City\",\"Contact Email\":\"Contact Email\",\"Shipping Methods\":\"Shipping Methods\",\"Method\":\"Method\",\"Cost\":\"Cost\",\"Free Shipping\":\"Free Shipping\",\"10 to 15 days\":\"10 to 15 days\",\"Order Summary\":\"Order Summary\",\"Cart is empty\":\"Cart is empty\",\"Cart Totals\":\"Cart Totals\",\"Cart Subtotal\":\"Cart Subtotal\",\"Shipping Charge\":\"Shipping Charge\",\"Paid Amount\":\"Paid Amount\",\"Payment Method\":\"Payment Method\",\"Shipping Method\":\"Shipping Method\",\"Order Total\":\"Order Total\",\"Pay Via\":\"Pay Via\",\"Paypal\":\"Paypal\",\"Stripe\":\"Stripe\",\"Card Number\":\"Card Number\",\"CVC\":\"CVC\",\"Month\":\"Month\",\"Year\":\"Year\",\"Pleace Order\":\"Pleace Order\",\"Dashboard\":\"Dashboard\",\"Edit Profile\":\"Edit Profile\",\"Shipping Details\":\"Shipping Details\",\"Billing Details\":\"Billing Details\",\"Change Password\":\"Change Password\",\"My Orders\":\"My Orders\",\"Logout\":\"Logout\",\"Edit Billing Details\":\"Edit Billing Details\",\"Billing First Name\":\"Billing First Name\",\"Billing Last Name\":\"Billing Last Name\",\"Billing Email\":\"Billing Email\",\"Billing User Name\":\"Billing User Name\",\"Billing Phone\":\"Billing Phone\",\"Billing City\":\"Billing City\",\"Billing State\":\"Billing State\",\"Billing Country\":\"Billing Country\",\"Billing Address\":\"Billing Address\",\"Submit\":\"Submit\",\"Reset Password\":\"Reset Password\",\"Re-Type Password\":\"Re-Type Password\",\"Account Information\":\"Account Information\",\"User\":\"User\",\"Username\":\"Username\",\"State\":\"State\",\"City\":\"City\",\"Total Orders\":\"Total Orders\",\"Recent Orders\":\"Recent Orders\",\"Order Number\":\"Order Number\",\"Total Price\":\"Total Price\",\"Action\":\"Action\",\"No Orders\":\"No Orders\",\"Forgot Password\":\"Forgot Password\",\"Login Now\":\"Login Now\",\"Send Mail\":\"Send Mail\",\"Login\":\"Login\",\"Password\":\"Password\",\"LOG IN\":\"LOG IN\",\"Don\'t have an account\":\"Don\'t have an account\",\"Lost your password\":\"Lost your password\",\"Order Details\":\"Order Details\",\"Pending\":\"Pending\",\"Received\":\"Received\",\"Preparing\":\"Preparing\",\"Ready to pick up\":\"Ready to pick up\",\"Picked up\":\"Picked up\",\"Delivered\":\"Delivered\",\"Cancelled\":\"Cancelled\",\"My Order Details\":\"My Order Details\",\"Order Date\":\"Order Date\",\"Order\":\"Order\",\"Download Invoice\":\"Download Invoice\",\"Payment Status\":\"Payment Status\",\"Image\":\"Image\",\"Name\":\"Name\",\"Details\":\"Details\",\"back\":\"back\",\"All Orders\":\"All Orders\",\"My Profile\":\"My Profile\",\"Upload\":\"Upload\",\"Register\":\"Register\",\"Confirmation Password\":\"Confirmation Password\",\"Already have an account ?\":\"Already have an account ?\",\"To login\":\"To login\",\"Click Here\":\"Click Here\",\"Current Password\":\"Current Password\",\"New Password\":\"New Password\",\"Confirm Password\":\"Confirm Password\",\"Edit Shipping Details\":\"Edit Shipping Details\",\"Shipping First Name\":\"Shipping First Name\",\"Shipping Last Name\":\"Shipping Last Name\",\"Shipping Email\":\"Shipping Email\",\"Shipping User Name\":\"Shipping User Name\",\"Shipping Phone\":\"Shipping Phone\",\"Shipping City\":\"Shipping City\",\"Shipping State\":\"Shipping State\",\"Shipping Country\":\"Shipping Country\",\"Shipping Address\":\"Shipping Address\",\"Order Notes\":\"Order Notes\",\"Category\":\"Category\",\"All\":\"All\",\"Product Not Fount\":\"Product Not Fount\",\"Filter Products\":\"Filter Products\",\"Star and higher\":\"Star and higher\",\"Admin\":\"Admin\",\"Reviews For\":\"Reviews For\",\"Success\":\"Success\",\"Your order has been placed successfully!\":\"Your order has been placed successfully!\",\"We have sent you a mail with an invoice.\":\"We have sent you a mail with an invoice.\",\"Thank you.\":\"Thank you.\",\"You\'re lost\":\"You\'re lost\",\"The page you are looking for might have been moved, renamed, or might never existed.\":\"The page you are looking for might have been moved, renamed, or might never existed.\",\"Back Home\":\"Back Home\",\"Reviews(S)\":\"Reviews(S)\",\"IN STOCK\":\"IN STOCK\",\"OUT OF STOCK\":\"OUT OF STOCK\",\"Qty\":\"Qty\",\"Description\":\"Description\",\"Comments\":\"Comments\",\"Reviews\":\"Reviews\",\"Comment\":\"Comment\",\"Rating\":\"Rating\",\"Newest Product\":\"Newest Product\",\"Oldest Product\":\"Oldest Product\",\"Price: High To Low\":\"Price: High To Low\",\"Price: Low To High\":\"Price: Low To High\",\"Search Keywords\":\"Search Keywords\",\"Subscribe Here\":\"Subscribe Here\",\"Enter Your Email\":\"Enter Your Email\",\"Jobs\":\"Jobs\",\"NO JOB FOUND\":\"NO JOB FOUND\",\"Deadline\":\"Deadline\",\"Educational Experience\":\"Educational Experience\",\"Work Experience\":\"Work Experience\",\"Search Jobs\":\"Search Jobs\",\"Vacancy\":\"Vacancy\",\"Job Responsibilities\":\"Job Responsibilities\",\"Employment Status\":\"Employment Status\",\"Educational Requirements\":\"Educational Requirements\",\"Experience Requirements\":\"Experience Requirements\",\"Additional Requirements\":\"Additional Requirements\",\"Job Location\":\"Job Location\",\"Salary\":\"Salary\",\"Compensation & Other Benefits\":\"Compensation & Other Benefits\",\"Read Before Apply\":\"Read Before Apply\",\"Job Categories\":\"Job Categories\",\"Send your CV to\":\"Send your CV to\",\"Checkout as Guest\":\"Checkout as Guest\",\"OR\":\"OR\",\"Login via Facebook\":\"Login via Facebook\",\"Login via Google\":\"Login via Google\",\"Serving Method\":\"Serving Method\",\"On Table\":\"On Table\",\"Home Delivery\":\"Home Delivery\",\"Information\":\"Information\",\"Table Number\":\"Table Number\",\"Waiter Name\":\"Waiter Name\",\"Pick up Date\":\"Pick up Date\",\"Pick up Time\":\"Pick up Time\",\"Cart Total\":\"Cart Total\",\"Discount\":\"Discount\",\"Tax\":\"Tax\",\"Coupon\":\"Coupon\",\"Receipt\":\"Receipt\",\"Place Order\":\"Place Order\",\"Return to Website\":\"Return to Website\",\"Paystack\":\"Paystack\",\"Flutterwave\":\"Flutterwave\",\"Razorpay\":\"Razorpay\",\"Instamojo\":\"Instamojo\",\"Paytm\":\"Paytm\",\"PayUmoney\":\"PayUmoney\",\"Mollie\":\"Mollie\",\"Mercadopago\":\"Mercadopago\",\"Shipping Charges\":\"Shipping Charges\",\"Delivery Date\":\"Delivery Date\",\"Delivery Time\":\"Delivery Time\",\"Ready to Serve\":\"Ready to Serve\",\"Served\":\"Served\",\"Ordered From\":\"Ordered From\",\"Website Menu\":\"Website Menu\",\"QR Menu\":\"QR Menu\",\"Complete\":\"Complete\",\"Working Hours\":\"Working Hours\",\"Return to Menu\":\"Return to Menu\",\"Apply\":\"Apply\",\"Token No\":\"Token No\",\"Postal Code\":\"Postal Code\",\"Billing Address will be Same as Shipping Address\":\"Billing Address will be Same as Shipping Address\",\"Delivery Area\":\"Delivery Area\",\"Call Waiter\":\"Call Waiter\",\"Table\":\"Table\",\"Select a Table\":\"Select a Table\",\"Restaurant is informed!\":\"Restaurant is informed!\",\"Add_To_Menus\":\"Add to Menus\",\"NO SPECIAL PRODUCT FOUND!\":\"NO SPECIAL PRODUCT FOUND!\",\"NO MEMBERS FOUND!\":\"NO MEMBERS FOUND!\",\"NO CLIEND FOUND!\":\"NO CLIEND FOUND!\",\"NO BLOG POST FOUND!\":\"NO BLOG POST FOUND!\",\"NO FAQ FOUND!\":\"NO FAQ FOUND!\",\"NO GALLERY IMAGE FOUND!\":\"NO GALLERY IMAGE FOUND!\",\"NO TEAM FOUND!\":\"NO TEAM FOUND!\",\"ALL\":\"ALL\",\"Filter\":\"Filter\",\"Filter_By_Price\":\"Filter By Price\",\"Show_All\":\"Show All\",\"Cart_is_empty\":\"Cart is empty\",\"On_Table\":\"On Table\",\"Home_Delivery\":\"Home Delivery\",\"Select_a_postal_code\":\"Select a postal code\",\"Select\":\"Select\",\"Type\":\"Type\",\"Item Total\":\"Item Total\",\"No Menu Found!\":\"No Menu Found!\",\"You are lost\":\"You are lost\",\"Get Back to Home\":\"Get Back to Home\",\"Addons\":\"Addons\",\"Subcategory\":\"Subcategory\",\"Review\":\"Review\",\"Blog Details\":\"Blog Details\",\"Career Details\":\"Career Details\",\"Enter your card number\":\"Enter your card number\",\"Enter expiry month\":\"Enter expiry month\",\"Enter expiry year\":\"Enter expiry year\",\"Enter card code\":\"Enter card code\",\"Select a time frame\":\"Select a time frame\",\"Select Addons\":\"Select Addons\",\"Authorize\":\"Authorize\",\"to leave a rating\":\"to leave a rating\",\"Website\":\"Website\",\"QR\":\"QR\",\"Pick_Up\":\"Pick Up\",\"Pick UP\":\"Pick UP\",\"Subtotal\":\"Subtotal\",\"Grand Total\":\"Grand Total\",\"Completed\":\"Completed\",\"Yes\":\"Yes\",\"No\":\"No\",\"Select a Time Frame\":\"Select a Time Frame\",\"Receipt image must be .jpg \\/ .jpeg \\/ .png\":\"Receipt image must be .jpg \\/ .jpeg \\/ .png\",\"Page Not Found\":\"Page Not Found\",\"January\":\"January\",\"February\":\"February\",\"March\":\"March\",\"April\":\"April\",\"May\":\"May\",\"June\":\"June\",\"July\":\"July\",\"August\":\"August\",\"September\":\"September\",\"October\":\"October\",\"November\":\"November\",\"December\":\"December\",\"Monday\":\"Mo\",\"Tuesday\":\"Tu\",\"Wednesday\":\"We\",\"Thursday\":\"Th\",\"Friday\":\"Fr\",\"Saturday\":\"Sa\",\"Sunday\":\"Su\",\"Showing\":\"Showing\",\"to\":\"to\",\"of\":\"of\",\"entries\":\"entries\",\"Show\":\"Show\",\"Extras\":\"Extras\",\"About Us\":\"About Us\",\"No Special Food\":\"No Special Food\",\"Subscribe\":\"Subscribe\",\"Useful Links\":\"Useful Links\",\"View More\":\"View More\",\"By\":\"By\",\"Stay update with us and get offer!\":\"Stay update with us and get offer!\",\"Identity Number\":\"Identity Number\",\"Zip Code\":\"Zip Code\"}', NULL, '', NULL, '2024-08-20 23:15:14'),
(61, 'English', 'en', 1, 0, '{\"Home\":\"Home\",\"Menu\":\"Menu\",\"Items\":\"Items\",\"Team\":\"Team\",\"Teams\":\"Teams\",\"Contact\":\"Contact\",\"Gallery\":\"Gallery\",\"Team Members\":\"Team Members\",\"Cart\":\"Cart\",\"Reservation\":\"Reservation\",\"Blog\":\"Blog\",\"Add Cart\":\"Add Cart\",\"Opening Time\":\"Opening Time\",\"Buy Now\":\"Buy Now\",\"Discover Food Menu\":\"Discover Food Menu\",\"View All Items\":\"View All Items\",\"Our\":\"Our\",\"Special\":\"Special\",\"Good\":\"Good\",\"Food\":\"Food\",\"Price\":\"Price\",\"View All Menu List\":\"View All Menu List\",\"Product Not Found\":\"Product Not Found\",\"Stars\":\"Stars\",\"Read More\":\"Read More\",\"Book A Table\":\"Book A Table\",\"Full Name\":\"Full Name\",\"Phone\":\"Phone\",\"Date\":\"Date\",\"Time\":\"Time\",\"Person\":\"Person\",\"Book Table\":\"Book Table\",\"Our Blog\":\"Our Blog\",\"No Blogs\":\"No Blogs\",\"Share\":\"Share\",\"All Categories\":\"All Categories\",\"Contact Us\":\"Contact Us\",\"Your Name\":\"Your Name\",\"Email Address\":\"Email Address\",\"Subject\":\"Subject\",\"Write a message\":\"Write a message\",\"Submit Now\":\"Submit Now\",\"Career\":\"Career\",\"Job Details\":\"Job Details\",\"Our Gallery\":\"Our Gallery\",\"FAQ\":\"FAQ\",\"Photos Action\":\"Photos Action\",\"Our Awesome Gallery\":\"Our Awesome Gallery\",\"Exparts Our Team\":\"Exparts Our Team\",\"Your Cart\":\"Your Cart\",\"Total\":\"Total\",\"Products\":\"Products\",\"Product\":\"Product\",\"Product Title\":\"Product Title\",\"Variations\":\"Variations\",\"Variation\":\"Variation\",\"Add On\'s\":\"Add On\'s\",\"Ordered Products\":\"Ordered Products\",\"Select Variation\":\"Select Variation\",\"Select Add On\'s\":\"Select Add On\'s\",\"Optional\":\"Optional\",\"Add to Cart\":\"Add to Cart\",\"Quantity\":\"Quantity\",\"Availability\":\"Availability\",\"Item(s)\":\"Item(s)\",\"Remove\":\"Remove\",\"Avilable Now\":\"Avilable Now\",\"Out Of Stock\":\"Out Of Stock\",\"Cart is empty!\":\"Cart is empty!\",\"Checkout\":\"Checkout\",\"Update Cart\":\"Update Cart\",\"Country\":\"Country\",\"First Name\":\"First Name\",\"Last Name\":\"Last Name\",\"Address\":\"Address\",\"Town \\/ City\":\"Town \\/ City\",\"Contact Email\":\"Contact Email\",\"Shipping Methods\":\"Shipping Methods\",\"Method\":\"Method\",\"Cost\":\"Cost\",\"Free Shipping\":\"Free Shipping\",\"10 to 15 days\":\"10 to 15 days\",\"Order Summary\":\"Order Summary\",\"Cart is empty\":\"Cart is empty\",\"Cart Totals\":\"Cart Totals\",\"Cart Subtotal\":\"Cart Subtotal\",\"Shipping Charge\":\"Shipping Charge\",\"Paid Amount\":\"Paid Amount\",\"Payment Method\":\"Payment Method\",\"Shipping Method\":\"Shipping Method\",\"Order Total\":\"Order Total\",\"Pay Via\":\"Pay Via\",\"Paypal\":\"Paypal\",\"Stripe\":\"Stripe\",\"Card Number\":\"Card Number\",\"CVC\":\"CVC\",\"Month\":\"Month\",\"Year\":\"Year\",\"Pleace Order\":\"Pleace Order\",\"Dashboard\":\"Dashboard\",\"Edit Profile\":\"Edit Profile\",\"Shipping Details\":\"Shipping Details\",\"Billing Details\":\"Billing Details\",\"Change Password\":\"Change Password\",\"My Orders\":\"My Orders\",\"Logout\":\"Logout\",\"Edit Billing Details\":\"Edit Billing Details\",\"Billing First Name\":\"Billing First Name\",\"Billing Last Name\":\"Billing Last Name\",\"Billing Email\":\"Billing Email\",\"Billing User Name\":\"Billing User Name\",\"Billing Phone\":\"Billing Phone\",\"Billing City\":\"Billing City\",\"Billing State\":\"Billing State\",\"Billing Country\":\"Billing Country\",\"Billing Address\":\"Billing Address\",\"Submit\":\"Submit\",\"Reset Password\":\"Reset Password\",\"Re-Type Password\":\"Re-Type Password\",\"Account Information\":\"Account Information\",\"User\":\"User\",\"Username\":\"Username\",\"State\":\"State\",\"City\":\"City\",\"Total Orders\":\"Total Orders\",\"Recent Orders\":\"Recent Orders\",\"Order Number\":\"Order Number\",\"Total Price\":\"Total Price\",\"Action\":\"Action\",\"No Orders\":\"No Orders\",\"Forgot Password\":\"Forgot Password\",\"Login Now\":\"Login Now\",\"Send Mail\":\"Send Mail\",\"Login\":\"Login\",\"Password\":\"Password\",\"LOG IN\":\"LOG IN\",\"Don\'t have an account\":\"Don\'t have an account\",\"Lost your password\":\"Lost your password\",\"Order Details\":\"Order Details\",\"Pending\":\"Pending\",\"Received\":\"Received\",\"Preparing\":\"Preparing\",\"Ready to pick up\":\"Ready to pick up\",\"Picked up\":\"Picked up\",\"Delivered\":\"Delivered\",\"Cancelled\":\"Cancelled\",\"My Order Details\":\"My Order Details\",\"Order Date\":\"Order Date\",\"Order\":\"Order\",\"Download Invoice\":\"Download Invoice\",\"Payment Status\":\"Payment Status\",\"Image\":\"Image\",\"Name\":\"Name\",\"Details\":\"Details\",\"back\":\"back\",\"All Orders\":\"All Orders\",\"My Profile\":\"My Profile\",\"Upload\":\"Upload\",\"Register\":\"Register\",\"Confirmation Password\":\"Confirmation Password\",\"Already have an account ?\":\"Already have an account ?\",\"To login\":\"To login\",\"Click Here\":\"Click Here\",\"Current Password\":\"Current Password\",\"New Password\":\"New Password\",\"Confirm Password\":\"Confirm Password\",\"Edit Shipping Details\":\"Edit Shipping Details\",\"Shipping First Name\":\"Shipping First Name\",\"Shipping Last Name\":\"Shipping Last Name\",\"Shipping Email\":\"Shipping Email\",\"Shipping User Name\":\"Shipping User Name\",\"Shipping Phone\":\"Shipping Phone\",\"Shipping City\":\"Shipping City\",\"Shipping State\":\"Shipping State\",\"Shipping Country\":\"Shipping Country\",\"Shipping Address\":\"Shipping Address\",\"Order Notes\":\"Order Notes\",\"Category\":\"Category\",\"All\":\"All\",\"Product Not Fount\":\"Product Not Fount\",\"Filter Products\":\"Filter Products\",\"Star and higher\":\"Star and higher\",\"Admin\":\"Admin\",\"Reviews For\":\"Reviews For\",\"Success\":\"Success\",\"Your order has been placed successfully!\":\"Your order has been placed successfully!\",\"We have sent you a mail with an invoice.\":\"We have sent you a mail with an invoice.\",\"Thank you.\":\"Thank you.\",\"You\'re lost\":\"You\'re lost\",\"The page you are looking for might have been moved, renamed, or might never existed.\":\"The page you are looking for might have been moved, renamed, or might never existed.\",\"Back Home\":\"Back Home\",\"Reviews(S)\":\"Reviews(S)\",\"IN STOCK\":\"IN STOCK\",\"OUT OF STOCK\":\"OUT OF STOCK\",\"Qty\":\"Qty\",\"Description\":\"Description\",\"Comments\":\"Comments\",\"Reviews\":\"Reviews\",\"Comment\":\"Comment\",\"Rating\":\"Rating\",\"Newest Product\":\"Newest Product\",\"Oldest Product\":\"Oldest Product\",\"Price: High To Low\":\"Price: High To Low\",\"Price: Low To High\":\"Price: Low To High\",\"Search Keywords\":\"Search Keywords\",\"Subscribe Here\":\"Subscribe Here\",\"Enter Your Email\":\"Enter Your Email\",\"Jobs\":\"Jobs\",\"NO JOB FOUND\":\"NO JOB FOUND\",\"Deadline\":\"Deadline\",\"Educational Experience\":\"Educational Experience\",\"Work Experience\":\"Work Experience\",\"Search Jobs\":\"Search Jobs\",\"Vacancy\":\"Vacancy\",\"Job Responsibilities\":\"Job Responsibilities\",\"Employment Status\":\"Employment Status\",\"Educational Requirements\":\"Educational Requirements\",\"Experience Requirements\":\"Experience Requirements\",\"Additional Requirements\":\"Additional Requirements\",\"Job Location\":\"Job Location\",\"Salary\":\"Salary\",\"Compensation & Other Benefits\":\"Compensation & Other Benefits\",\"Read Before Apply\":\"Read Before Apply\",\"Job Categories\":\"Job Categories\",\"Send your CV to\":\"Send your CV to\",\"Checkout as Guest\":\"Checkout as Guest\",\"OR\":\"OR\",\"Login via Facebook\":\"Login via Facebook\",\"Login via Google\":\"Login via Google\",\"Serving Method\":\"Serving Method\",\"On Table\":\"On Table\",\"Home Delivery\":\"Home Delivery\",\"Information\":\"Information\",\"Table Number\":\"Table Number\",\"Waiter Name\":\"Waiter Name\",\"Pick up Date\":\"Pick up Date\",\"Pick up Time\":\"Pick up Time\",\"Cart Total\":\"Cart Total\",\"Discount\":\"Discount\",\"Tax\":\"Tax\",\"Coupon\":\"Coupon\",\"Receipt\":\"Receipt\",\"Place Order\":\"Place Order\",\"Return to Website\":\"Return to Website\",\"Paystack\":\"Paystack\",\"Flutterwave\":\"Flutterwave\",\"Razorpay\":\"Razorpay\",\"Instamojo\":\"Instamojo\",\"Paytm\":\"Paytm\",\"PayUmoney\":\"PayUmoney\",\"Mollie\":\"Mollie\",\"Mercadopago\":\"Mercadopago\",\"Shipping Charges\":\"Shipping Charges\",\"Delivery Date\":\"Delivery Date\",\"Delivery Time\":\"Delivery Time\",\"Ready to Serve\":\"Ready to Serve\",\"Served\":\"Served\",\"Ordered From\":\"Ordered From\",\"Website Menu\":\"Website Menu\",\"QR Menu\":\"QR Menu\",\"Complete\":\"Complete\",\"Working Hours\":\"Working Hours\",\"Return to Menu\":\"Return to Menu\",\"Apply\":\"Apply\",\"Token No\":\"Token No\",\"Postal Code\":\"Postal Code\",\"Billing Address will be Same as Shipping Address\":\"Billing Address will be Same as Shipping Address\",\"Delivery Area\":\"Delivery Area\",\"Call Waiter\":\"Call Waiter\",\"Table\":\"Table\",\"Select a Table\":\"Select a Table\",\"Restaurant is informed!\":\"Restaurant is informed!\",\"Add_To_Menus\":\"Add to Menus\",\"NO SPECIAL PRODUCT FOUND!\":\"NO SPECIAL PRODUCT FOUND!\",\"NO MEMBERS FOUND!\":\"NO MEMBERS FOUND!\",\"NO CLIEND FOUND!\":\"NO CLIEND FOUND!\",\"NO BLOG POST FOUND!\":\"NO BLOG POST FOUND!\",\"NO FAQ FOUND!\":\"NO FAQ FOUND!\",\"NO GALLERY IMAGE FOUND!\":\"NO GALLERY IMAGE FOUND!\",\"NO TEAM FOUND!\":\"NO TEAM FOUND!\",\"ALL\":\"ALL\",\"Filter\":\"Filter\",\"Filter_By_Price\":\"Filter By Price\",\"Show_All\":\"Show All\",\"Cart_is_empty\":\"Cart is empty\",\"On_Table\":\"On Table\",\"Home_Delivery\":\"Home Delivery\",\"Select_a_postal_code\":\"Select a postal code\",\"Select\":\"Select\",\"Type\":\"Type\",\"Item Total\":\"Item Total\",\"No Menu Found!\":\"No Menu Found!\",\"You are lost\":\"You are lost\",\"Get Back to Home\":\"Get Back to Home\",\"Addons\":\"Addons\",\"Subcategory\":\"Subcategory\",\"Review\":\"Review\",\"Blog Details\":\"Blog Details\",\"Career Details\":\"Career Details\",\"Enter your card number\":\"Enter your card number\",\"Enter expiry month\":\"Enter expiry month\",\"Enter expiry year\":\"Enter expiry year\",\"Enter card code\":\"Enter card code\",\"Select a time frame\":\"Select a time frame\",\"Select Addons\":\"Select Addons\",\"Authorize\":\"Authorize\",\"to leave a rating\":\"to leave a rating\",\"Website\":\"Website\",\"QR\":\"QR\",\"Pick_Up\":\"Pick Up\",\"Pick UP\":\"Pick UP\",\"Subtotal\":\"Subtotal\",\"Grand Total\":\"Grand Total\",\"Completed\":\"Completed\",\"Yes\":\"Yes\",\"No\":\"No\",\"Select a Time Frame\":\"Select a Time Frame\",\"Receipt image must be .jpg \\/ .jpeg \\/ .png\":\"Receipt image must be .jpg \\/ .jpeg \\/ .png\",\"Page Not Found\":\"Page Not Found\",\"January\":\"January\",\"February\":\"February\",\"March\":\"March\",\"April\":\"April\",\"May\":\"May\",\"June\":\"June\",\"July\":\"July\",\"August\":\"August\",\"September\":\"September\",\"October\":\"October\",\"November\":\"November\",\"December\":\"December\",\"Monday\":\"Mo\",\"Tuesday\":\"Tu\",\"Wednesday\":\"We\",\"Thursday\":\"Th\",\"Friday\":\"Fr\",\"Saturday\":\"Sa\",\"Sunday\":\"Su\",\"Showing\":\"Showing\",\"to\":\"to\",\"of\":\"of\",\"entries\":\"entries\",\"Show\":\"Show\",\"Extras\":\"Extras\",\"About Us\":\"About Us\",\"No Special Food\":\"No Special Food\",\"Subscribe\":\"Subscribe\",\"Useful Links\":\"Useful Links\",\"View More\":\"View More\",\"By\":\"By\",\"Stay update with us and get offer!\":\"Stay update with us and get offer!\",\"Identity Number\":\"Identity Number\",\"Zip Code\":\"Zip Code\"}', 2, '6583c1dc83024', '2024-01-16 17:27:12', '2024-08-20 23:15:14');
INSERT INTO `user_languages` (`id`, `name`, `code`, `is_default`, `rtl`, `keywords`, `user_id`, `datepicker_name`, `created_at`, `updated_at`) VALUES
(62, 'عربى', 'ar', 0, 1, '{\"Home\":\"\\u0628\\u064a\\u062a\",\"Menu\":\"\\u0642\\u0627\\u0626\\u0645\\u0629 \\u0637\\u0639\\u0627\\u0645\",\"Items\":\"\\u0623\\u063a\\u0631\\u0627\\u0636\",\"Team\":\"\\u0641\\u0631\\u064a\\u0642\",\"Teams\":\"\\u0641\\u0631\\u0642\",\"Contact\":\"\\u0627\\u062a\\u0635\\u0627\\u0644\",\"Gallery\":\"\\u0635\\u0627\\u0644\\u0629 \\u0639\\u0631\\u0636\",\"Team Members\":\"\\u0623\\u0639\\u0636\\u0627\\u0621 \\u0627\\u0644\\u0641\\u0631\\u064a\\u0642\",\"Cart\":\"\\u0639\\u0631\\u0628\\u0629 \\u0627\\u0644\\u062a\\u0633\\u0648\\u0642\",\"Reservation\":\"\\u062d\\u062c\\u0632\",\"Blog\":\"\\u0645\\u062f\\u0648\\u0646\\u0629\",\"Add Cart\":\"\\u0625\\u0636\\u0627\\u0641\\u0629 \\u0639\\u0631\\u0628\\u0629\",\"Opening Time\":\"\\u0648\\u0642\\u062a \\u0645\\u0641\\u062a\\u0648\\u062d\",\"Buy Now\":\"\\u0627\\u0634\\u062a\\u0631\\u064a \\u0627\\u0644\\u0622\\u0646\",\"Discover Food Menu\":\"\\u0627\\u0643\\u062a\\u0634\\u0641 \\u0642\\u0627\\u0626\\u0645\\u0629 \\u0627\\u0644\\u0637\\u0639\\u0627\\u0645\",\"View All Items\":\"\\u0639\\u0631\\u0636 \\u0643\\u0627\\u0641\\u0629 \\u0627\\u0644\\u0639\\u0646\\u0627\\u0635\\u0631\",\"Our\":\"\\u0645\\u0644\\u0643\\u0646\\u0627\",\"Special\":\"\\u062e\\u0627\\u0635\",\"Good\":\"\\u062c\\u064a\\u062f\",\"Food\":\"\\u0637\\u0639\\u0627\\u0645\",\"Price\":\"\\u0633\\u0639\\u0631\",\"View All Menu List\":\"\\u0639\\u0631\\u0636 \\u062c\\u0645\\u064a\\u0639 \\u0642\\u0627\\u0626\\u0645\\u0629 \\u0627\\u0644\\u0642\\u0627\\u0626\\u0645\\u0629\",\"Product Not Found\":\"\\u0627\\u0644\\u0635\\u0646\\u0641 \\u063a\\u064a\\u0631 \\u0645\\u0648\\u062c\\u0648\\u062f\",\"Stars\":\"\\u0627\\u0644\\u0646\\u062c\\u0648\\u0645\",\"Read More\":\"\\u0627\\u0642\\u0631\\u0623 \\u0623\\u0643\\u062b\\u0631\",\"Book A Table\":\"\\u0627\\u062d\\u062c\\u0632 \\u0637\\u0627\\u0648\\u0644\\u0629\",\"Full Name\":\"\\u0627\\u0644\\u0627\\u0633\\u0645 \\u0627\\u0644\\u0643\\u0627\\u0645\\u0644\",\"Phone\":\"\\u0647\\u0627\\u062a\\u0641\",\"Date\":\"\\u062a\\u0627\\u0631\\u064a\\u062e\",\"Time\":\"\\u0648\\u0642\\u062a\",\"Person\":\"\\u0634\\u062e\\u0635\",\"Book Table\":\"\\u0637\\u0627\\u0648\\u0644\\u0629 \\u0643\\u062a\\u0628\",\"Our Blog\":\"\\u0645\\u062f\\u0648\\u0646\\u062a\\u0646\\u0627\",\"No Blogs\":\"\\u0644\\u0627 \\u0645\\u062f\\u0648\\u0646\\u0627\\u062a\",\"Share\":\"\\u064a\\u0634\\u0627\\u0631\\u0643\",\"All Categories\":\"\\u062c\\u0645\\u064a\\u0639 \\u0627\\u0644\\u0641\\u0626\\u0627\\u062a\",\"Contact Us\":\"\\u0627\\u062a\\u0635\\u0644 \\u0628\\u0646\\u0627\",\"Your Name\":\"\\u0627\\u0633\\u0645\\u0643\",\"Email Address\":\"\\u0639\\u0646\\u0648\\u0627\\u0646 \\u0627\\u0644\\u0628\\u0631\\u064a\\u062f \\u0627\\u0644\\u0625\\u0644\\u0643\\u062a\\u0631\\u0648\\u0646\\u064a\",\"Subject\":\"\\u0645\\u0648\\u0636\\u0648\\u0639\",\"Write a message\":\"\\u0627\\u0643\\u062a\\u0628 \\u0631\\u0633\\u0627\\u0644\\u0629\",\"Submit Now\":\"\\u0623\\u0631\\u0633\\u0644 \\u0627\\u0644\\u0622\\u0646\",\"Career\":\"\\u062d\\u064a\\u0627\\u0629 \\u0645\\u0647\\u0646\\u064a\\u0629\",\"Job Details\":\"\\u062a\\u0641\\u0627\\u0635\\u064a\\u0644 \\u0627\\u0644\\u0648\\u0638\\u064a\\u0641\\u0629\",\"Our Gallery\":\"\\u0645\\u0639\\u0631\\u0636\\u0646\\u0627\",\"FAQ\":\"\\u0627\\u0644\\u062a\\u0639\\u0644\\u064a\\u0645\\u0627\\u062a\",\"Photos Action\":\"\\u0635\\u0648\\u0631 \\u0627\\u0644\\u0639\\u0645\\u0644\",\"Our Awesome Gallery\":\"\\u0645\\u0639\\u0631\\u0636\\u0646\\u0627 \\u0627\\u0644\\u0631\\u0627\\u0626\\u0639\",\"Exparts Our Team\":\"\\u064a\\u062a\\u0641\\u0648\\u0642 \\u0639\\u0644\\u0649 \\u0641\\u0631\\u064a\\u0642\\u0646\\u0627\",\"Your Cart\":\"\\u0639\\u0631\\u0628\\u062a\\u0643\",\"Total\":\"\\u0627\\u0644\\u0645\\u062c\\u0645\\u0648\\u0639\",\"Products\":\"\\u0645\\u0646\\u062a\\u062c\\u0627\\u062a\",\"Product\":\"\\u0645\\u0646\\u062a\\u062c\",\"Product Title\":\"\\u0639\\u0646\\u0648\\u0627\\u0646 \\u0627\\u0644\\u0645\\u0646\\u062a\\u062c\",\"Variations\":\"\\u0627\\u0644\\u0627\\u062e\\u062a\\u0644\\u0627\\u0641\\u0627\\u062a\",\"Variation\":\"\\u062a\\u0641\\u0627\\u0648\\u062a\",\"Add On\'s\":\"\\u0627\\u0644\\u0625\\u0636\\u0627\\u0641\\u0627\\u062a\",\"Ordered Products\":\"\\u0627\\u0644\\u0645\\u0646\\u062a\\u062c\\u0627\\u062a \\u0627\\u0644\\u0645\\u0637\\u0644\\u0648\\u0628\\u0629\",\"Select Variation\":\"\\u062d\\u062f\\u062f \\u0627\\u0644\\u0627\\u062e\\u062a\\u0644\\u0627\\u0641\",\"Select Add On\'s\":\"\\u062d\\u062f\\u062f \\u0627\\u0644\\u0625\\u0636\\u0627\\u0641\\u0627\\u062a\",\"Optional\":\"\\u062e\\u064a\\u0627\\u0631\\u064a\",\"Add to Cart\":\"\\u0623\\u0636\\u0641 \\u0625\\u0644\\u0649 \\u0627\\u0644\\u0633\\u0644\\u0629\",\"Quantity\":\"\\u0643\\u0645\\u064a\\u0629\",\"Availability\":\"\\u0627\\u0644\\u062a\\u0648\\u0641\\u0631\",\"Item(s)\":\"\\u0623\\u063a\\u0631\\u0627\\u0636)\",\"Remove\":\"\\u064a\\u0632\\u064a\\u0644\",\"Avilable Now\":\"\\u0645\\u062a\\u0627\\u062d \\u0627\\u0644\\u0622\\u0646\",\"Out Of Stock\":\"\\u0625\\u0646\\u062a\\u0647\\u0649 \\u0645\\u0646 \\u0627\\u0644\\u0645\\u062e\\u0632\\u0646\",\"Cart is empty!\":\"\\u0627\\u0644\\u0628\\u0637\\u0627\\u0642\\u0647 \\u062e\\u0627\\u0644\\u064a\\u0647!\",\"Checkout\":\"\\u0627\\u0644\\u062f\\u0641\\u0639\",\"Update Cart\":\"\\u062a\\u062d\\u062f\\u064a\\u062b \\u0627\\u0644\\u0639\\u0631\\u0628\\u0629\",\"Country\":\"\\u062f\\u0648\\u0644\\u0629\",\"First Name\":\"\\u0627\\u0644\\u0627\\u0633\\u0645 \\u0627\\u0644\\u0623\\u0648\\u0644\",\"Last Name\":\"\\u0627\\u0633\\u0645 \\u0627\\u0644\\u0639\\u0627\\u0626\\u0644\\u0629\",\"Address\":\"\\u0639\\u0646\\u0648\\u0627\\u0646\",\"Town \\/ City\":\"\\u0627\\u0644\\u0645\\u062f\\u064a\\u0646\\u0629 \\/ \\u0627\\u0644\\u0645\\u062f\\u064a\\u0646\\u0629\",\"Contact Email\":\"\\u062a\\u0648\\u0627\\u0635\\u0644 \\u0628\\u0627\\u0644\\u0628\\u0631\\u064a\\u062f \\u0627\\u0644\\u0627\\u0643\\u062a\\u0631\\u0648\\u0646\\u064a\",\"Shipping Methods\":\"\\u0637\\u0631\\u0642 \\u0627\\u0644\\u0634\\u062d\\u0646\",\"Method\":\"\\u0637\\u0631\\u064a\\u0642\\u0629\",\"Cost\":\"\\u064a\\u0643\\u0644\\u0641\",\"Free Shipping\":\"\\u064b\\u0627\\u0644\\u0634\\u062d\\u0646 \\u0645\\u062c\\u0627\\u0646\\u0627\",\"10 to 15 days\":\"10 \\u0625\\u0644\\u0649 15 \\u064a\\u0648\\u0645\\u064b\\u0627\",\"Order Summary\":\"\\u0645\\u0644\\u062e\\u0635 \\u0627\\u0644\\u0637\\u0644\\u0628\",\"Cart is empty\":\"\\u0627\\u0644\\u0628\\u0637\\u0627\\u0642\\u0647 \\u062e\\u0627\\u0644\\u064a\\u0647\",\"Cart Totals\":\"\\u0625\\u062c\\u0645\\u0627\\u0644\\u064a\\u0627\\u062a \\u0633\\u0644\\u0629 \\u0627\\u0644\\u062a\\u0633\\u0648\\u0642\",\"Cart Subtotal\":\"\\u0627\\u0644\\u0645\\u062c\\u0645\\u0648\\u0639 \\u0627\\u0644\\u0641\\u0631\\u0639\\u064a \\u0644\\u0633\\u0644\\u0629 \\u0627\\u0644\\u062a\\u0633\\u0648\\u0642\",\"Shipping Charge\":\"\\u0631\\u0633\\u0648\\u0645 \\u0627\\u0644\\u0634\\u062d\\u0646\",\"Paid Amount\":\"\\u0627\\u0644\\u0645\\u0628\\u0644\\u063a \\u0627\\u0644\\u0645\\u062f\\u0641\\u0648\\u0639\",\"Payment Method\":\"\\u0637\\u0631\\u064a\\u0642\\u0629 \\u0627\\u0644\\u062f\\u0641\\u0639 \\u0627\\u0648 \\u0627\\u0644\\u0633\\u062f\\u0627\\u062f\",\"Shipping Method\":\"\\u0637\\u0631\\u064a\\u0642\\u0629 \\u0627\\u0644\\u0634\\u062d\\u0646\",\"Order Total\":\"\\u0627\\u0644\\u0637\\u0644\\u0628 \\u0627\\u0644\\u0643\\u0644\\u064a\",\"Pay Via\":\"\\u0627\\u0644\\u062f\\u0641\\u0639 \\u0639\\u0646 \\u0637\\u0631\\u064a\\u0642\",\"Paypal\":\"\\u0628\\u0627\\u064a \\u0628\\u0627\\u0644\",\"Stripe\":\"\\u0634\\u0631\\u064a\\u0637\",\"Card Number\":\"\\u0631\\u0642\\u0645 \\u0627\\u0644\\u0628\\u0637\\u0627\\u0642\\u0629\",\"CVC\":\"\\u0631\\u0645\\u0632 \\u0627\\u0644\\u062a\\u062d\\u0642\\u0642 \\u0645\\u0646 \\u0627\\u0644\\u0628\\u0637\\u0627\\u0642\\u0629\",\"Month\":\"\\u0634\\u0647\\u0631\",\"Year\":\"\\u0633\\u0646\\u0629\",\"Pleace Order\":\"\\u064a\\u0631\\u062c\\u0649 \\u0627\\u0644\\u0637\\u0644\\u0628\",\"Dashboard\":\"\\u0644\\u0648\\u062d\\u0629 \\u0627\\u0644\\u0642\\u064a\\u0627\\u062f\\u0629\",\"Edit Profile\":\"\\u062a\\u0639\\u062f\\u064a\\u0644 \\u0627\\u0644\\u0645\\u0644\\u0641 \\u0627\\u0644\\u0634\\u062e\\u0635\\u064a\",\"Shipping Details\":\"\\u062a\\u0641\\u0627\\u0635\\u064a\\u0644 \\u0627\\u0644\\u0634\\u062d\\u0646\",\"Billing Details\":\"\\u062a\\u0641\\u0627\\u0635\\u064a\\u0644 \\u0627\\u0644\\u0641\\u0627\\u062a\\u0648\\u0631\\u0629\",\"Change Password\":\"\\u062a\\u063a\\u064a\\u064a\\u0631 \\u0643\\u0644\\u0645\\u0629 \\u0627\\u0644\\u0645\\u0631\\u0648\\u0631\",\"My Orders\":\"\\u0637\\u0644\\u0628\\u0627\\u062a\\u064a\",\"Logout\":\"\\u062a\\u0633\\u062c\\u064a\\u0644 \\u062e\\u0631\\u0648\\u062c\",\"Edit Billing Details\":\"\\u062a\\u062d\\u0631\\u064a\\u0631 \\u062a\\u0641\\u0627\\u0635\\u064a\\u0644 \\u0627\\u0644\\u0641\\u0648\\u0627\\u062a\\u064a\\u0631\",\"Billing First Name\":\"\\u0627\\u0644\\u0627\\u0633\\u0645 \\u0627\\u0644\\u0623\\u0648\\u0644 \\u0644\\u0644\\u0641\\u0648\\u062a\\u0631\\u0629\",\"Billing Last Name\":\"\\u0627\\u0644\\u0641\\u0648\\u0627\\u062a\\u064a\\u0631 \\u0627\\u0633\\u0645 \\u0627\\u0644\\u0639\\u0627\\u0626\\u0644\\u0629\",\"Billing Email\":\"\\u0627\\u0644\\u0628\\u0631\\u064a\\u062f \\u0627\\u0644\\u0627\\u0644\\u0643\\u062a\\u0631\\u0648\\u0646\\u064a \\u0644\\u0642\\u0648\\u0627\\u0626\\u0645 \\u0627\\u0644\\u062f\\u0641\\u0639\",\"Billing User Name\":\"\\u0627\\u0633\\u0645 \\u0645\\u0633\\u062a\\u062e\\u062f\\u0645 \\u0627\\u0644\\u0641\\u0648\\u062a\\u0631\\u0629\",\"Billing Phone\":\"\\u0641\\u0648\\u062a\\u064a\\u0631 \\u0627\\u0644\\u0647\\u0627\\u062a\\u0641\",\"Billing City\":\"\\u0645\\u062f\\u064a\\u0646\\u0629 \\u0627\\u0644\\u0641\\u0648\\u0627\\u062a\\u064a\\u0631\",\"Billing State\":\"\\u062f\\u0648\\u0644\\u0629 \\u0625\\u0631\\u0633\\u0627\\u0644 \\u0627\\u0644\\u0641\\u0648\\u0627\\u062a\\u064a\\u0631\",\"Billing Country\":\"\\u0628\\u0644\\u062f \\u0625\\u0631\\u0633\\u0627\\u0644 \\u0627\\u0644\\u0641\\u0648\\u0627\\u062a\\u064a\\u0631\",\"Billing Address\":\"\\u0639\\u0646\\u0648\\u0627\\u0646 \\u0648\\u0635\\u0648\\u0644 \\u0627\\u0644\\u0641\\u0648\\u0627\\u062a\\u064a\\u0631\",\"Submit\":\"\\u064a\\u064f\\u0642\\u062f\\u0651\\u0650\\u0645\",\"Reset Password\":\"\\u0625\\u0639\\u0627\\u062f\\u0629 \\u062a\\u0639\\u064a\\u064a\\u0646 \\u0643\\u0644\\u0645\\u0629 \\u0627\\u0644\\u0645\\u0631\\u0648\\u0631\",\"Re-Type Password\":\"\\u0623\\u0639\\u062f \\u0625\\u062f\\u062e\\u0627\\u0644 \\u0643\\u0644\\u0645\\u0629 \\u0627\\u0644\\u0633\\u0631\",\"Account Information\":\"\\u0645\\u0639\\u0644\\u0648\\u0645\\u0627\\u062a \\u0627\\u0644\\u062d\\u0633\\u0627\\u0628\",\"User\":\"\\u0645\\u0633\\u062a\\u062e\\u062f\\u0645\",\"Username\":\"\\u0627\\u0633\\u0645 \\u0627\\u0644\\u0645\\u0633\\u062a\\u062e\\u062f\\u0645\",\"State\":\"\\u0648\\u0644\\u0627\\u064a\\u0629\",\"City\":\"\\u0645\\u062f\\u064a\\u0646\\u0629\",\"Total Orders\":\"\\u0625\\u062c\\u0645\\u0627\\u0644\\u064a \\u0627\\u0644\\u0637\\u0644\\u0628\\u0627\\u062a\",\"Recent Orders\":\"\\u0627\\u0644\\u0637\\u0644\\u0628\\u064a\\u0627\\u062a \\u0627\\u0644\\u0623\\u062e\\u064a\\u0631\\u0629\",\"Order Number\":\"\\u0631\\u0642\\u0645 \\u0627\\u0644\\u0623\\u0645\\u0631\",\"Total Price\":\"\\u0627\\u0644\\u0633\\u0639\\u0631 \\u0627\\u0644\\u0643\\u0644\\u064a\",\"Action\":\"\\u0641\\u0639\\u0644\",\"No Orders\":\"\\u0644\\u0627 \\u0623\\u0648\\u0627\\u0645\\u0631\",\"Forgot Password\":\"\\u0647\\u0644 \\u0646\\u0633\\u064a\\u062a \\u0643\\u0644\\u0645\\u0629 \\u0627\\u0644\\u0633\\u0631\",\"Login Now\":\"\\u062a\\u0633\\u062c\\u064a\\u0644 \\u0627\\u0644\\u062f\\u062e\\u0648\\u0644 \\u0627\\u0644\\u0622\\u0646\",\"Send Mail\":\"\\u0627\\u0631\\u0633\\u0644 \\u0628\\u0631\\u064a\\u062f\",\"Login\":\"\\u062a\\u0633\\u062c\\u064a\\u0644 \\u0627\\u0644\\u062f\\u062e\\u0648\\u0644\",\"Password\":\"\\u0643\\u0644\\u0645\\u0629 \\u0627\\u0644\\u0645\\u0631\\u0648\\u0631\",\"LOG IN\":\"\\u062a\\u0633\\u062c\\u064a\\u0644 \\u0627\\u0644\\u062f\\u062e\\u0648\\u0644\",\"Don\'t have an account\":\"\\u0644\\u064a\\u0633 \\u0644\\u062f\\u064a\\u0643 \\u062d\\u0633\\u0627\\u0628\",\"Lost your password\":\"\\u0641\\u0642\\u062f\\u062a \\u0643\\u0644\\u0645\\u0629 \\u0627\\u0644\\u0645\\u0631\\u0648\\u0631 \\u0627\\u0644\\u062e\\u0627\\u0635\\u0629 \\u0628\\u0643\",\"Order Details\":\"\\u062a\\u0641\\u0627\\u0635\\u064a\\u0644 \\u0627\\u0644\\u0637\\u0644\\u0628\",\"Pending\":\"\\u0642\\u064a\\u062f \\u0627\\u0644\\u0627\\u0646\\u062a\\u0638\\u0627\\u0631\",\"Received\":\"\\u062a\\u0644\\u0642\\u0649\",\"Preparing\":\"\\u062e\\u0637\\u0629\",\"Ready to pick up\":\"\\u0639\\u0644\\u0649 \\u0627\\u0633\\u062a\\u0639\\u062f\\u0627\\u062f \\u0644\\u0627\\u0644\\u062a\\u0642\\u0627\\u0637\",\"Picked up\":\"\\u0627\\u0644\\u062a\\u0642\\u0637\\u062a\",\"Delivered\":\"\\u062a\\u0645 \\u0627\\u0644\\u062a\\u0648\\u0635\\u064a\\u0644\",\"Cancelled\":\"\\u0623\\u0644\\u063a\\u064a\\u062a\",\"My Order Details\":\"\\u062a\\u0641\\u0627\\u0635\\u064a\\u0644 \\u0637\\u0644\\u0628\\u064a\",\"Order Date\":\"\\u062a\\u0627\\u0631\\u064a\\u062e \\u0627\\u0644\\u0637\\u0644\\u0628\",\"Order\":\"\\u0637\\u0644\\u0628\",\"Download Invoice\":\"\\u062a\\u062d\\u0645\\u064a\\u0644 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0629\",\"Payment Status\":\"\\u062d\\u0627\\u0644\\u0629 \\u0627\\u0644\\u0633\\u062f\\u0627\\u062f\",\"Image\":\"\\u0635\\u0648\\u0631\\u0629\",\"Name\":\"\\u0627\\u0633\\u0645\",\"Details\":\"\\u062a\\u0641\\u0627\\u0635\\u064a\\u0644\",\"back\":\"\\u062e\\u0644\\u0641\",\"All Orders\":\"\\u062c\\u0645\\u064a\\u0639 \\u0627\\u0644\\u0637\\u0644\\u0628\\u0627\\u062a\",\"My Profile\":\"\\u0645\\u0644\\u0641\\u064a\",\"Upload\":\"\\u0631\\u0641\\u0639\",\"Register\":\"\\u064a\\u0633\\u062c\\u0644\",\"Confirmation Password\":\"\\u062a\\u0623\\u0643\\u064a\\u062f \\u0643\\u0644\\u0645\\u0629 \\u0627\\u0644\\u0645\\u0631\\u0648\\u0631\",\"Already have an account ?\":\"\\u0647\\u0644 \\u0644\\u062f\\u064a\\u0643 \\u062d\\u0633\\u0627\\u0628 \\u061f\",\"To login\":\"\\u0644\\u062a\\u0633\\u062c\\u064a\\u0644 \\u0627\\u0644\\u062f\\u062e\\u0648\\u0644\",\"Click Here\":\"\\u0627\\u0646\\u0642\\u0631 \\u0647\\u0646\\u0627\",\"Current Password\":\"\\u0643\\u0644\\u0645\\u0629 \\u0627\\u0644\\u0633\\u0631 \\u0627\\u0644\\u062d\\u0627\\u0644\\u064a\\u0629\",\"New Password\":\"\\u0643\\u0644\\u0645\\u0629 \\u0627\\u0644\\u0645\\u0631\\u0648\\u0631 \\u0627\\u0644\\u062c\\u062f\\u064a\\u062f\\u0629\",\"Confirm Password\":\"\\u062a\\u0623\\u0643\\u064a\\u062f \\u0643\\u0644\\u0645\\u0629 \\u0627\\u0644\\u0645\\u0631\\u0648\\u0631\",\"Edit Shipping Details\":\"\\u062a\\u062d\\u0631\\u064a\\u0631 \\u062a\\u0641\\u0627\\u0635\\u064a\\u0644 \\u0627\\u0644\\u0634\\u062d\\u0646\",\"Shipping First Name\":\"\\u0627\\u0644\\u0627\\u0633\\u0645 \\u0627\\u0644\\u0623\\u0648\\u0644 \\u0644\\u0644\\u0634\\u062d\\u0646\",\"Shipping Last Name\":\"\\u0627\\u0633\\u0645 \\u0627\\u0644\\u0639\\u0627\\u0626\\u0644\\u0629 \\u0644\\u0644\\u0634\\u062d\\u0646\",\"Shipping Email\":\"\\u0627\\u0644\\u0628\\u0631\\u064a\\u062f \\u0627\\u0644\\u0625\\u0644\\u0643\\u062a\\u0631\\u0648\\u0646\\u064a \\u0644\\u0644\\u0634\\u062d\\u0646\",\"Shipping User Name\":\"\\u0627\\u0633\\u0645 \\u0645\\u0633\\u062a\\u062e\\u062f\\u0645 \\u0627\\u0644\\u0634\\u062d\\u0646\",\"Shipping Phone\":\"\\u0647\\u0627\\u062a\\u0641 \\u0627\\u0644\\u0634\\u062d\\u0646\",\"Shipping City\":\"\\u0645\\u062f\\u064a\\u0646\\u0629 \\u0627\\u0644\\u0634\\u062d\\u0646\",\"Shipping State\":\"\\u062f\\u0648\\u0644\\u0629 \\u0627\\u0644\\u0634\\u062d\\u0646\",\"Shipping Country\":\"\\u0628\\u0644\\u062f \\u0627\\u0644\\u0634\\u062d\\u0646\",\"Shipping Address\":\"\\u0639\\u0646\\u0648\\u0627\\u0646 \\u0627\\u0644\\u0634\\u062d\\u0646\",\"Order Notes\":\"\\u062a\\u0631\\u062a\\u064a\\u0628 \\u0645\\u0644\\u0627\\u062d\\u0638\\u0627\\u062a\",\"Category\":\"\\u0641\\u0626\\u0629\",\"All\":\"\\u0627\\u0644\\u062c\\u0645\\u064a\\u0639\",\"Product Not Fount\":\"\\u0627\\u0644\\u0645\\u0646\\u062a\\u062c \\u063a\\u064a\\u0631 \\u0645\\u0648\\u062c\\u0648\\u062f\",\"Filter Products\":\"\\u0645\\u0646\\u062a\\u062c\\u0627\\u062a \\u0627\\u0644\\u062a\\u0635\\u0641\\u064a\\u0629\",\"Star and higher\":\"\\u0646\\u062c\\u0645\\u0629 \\u0648\\u0623\\u0639\\u0644\\u0649\",\"Admin\":\"\\u0645\\u0633\\u0624\\u0644\",\"Reviews For\":\"\\u062a\\u0639\\u0644\\u064a\\u0642\\u0627\\u062a \\u0644\",\"Success\":\"\\u0646\\u062c\\u0627\\u062d\",\"Your order has been placed successfully!\":\"\\u0644\\u0642\\u062f \\u062a\\u0645 \\u062a\\u0642\\u062f\\u064a\\u0645 \\u0637\\u0644\\u0628\\u0643 \\u0628\\u0646\\u062c\\u0627\\u062d!\",\"We have sent you a mail with an invoice.\":\"\\u0644\\u0642\\u062f \\u0623\\u0631\\u0633\\u0644\\u0646\\u0627 \\u0644\\u0643 \\u0628\\u0631\\u064a\\u062f\\u064b\\u0627 \\u064a\\u062d\\u062a\\u0648\\u064a \\u0639\\u0644\\u0649 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0629.\",\"Thank you.\":\"\\u0634\\u0643\\u0631\\u064b\\u0627 \\u0644\\u0643.\",\"You\'re lost\":\"\\u0623\\u0646\\u062a \\u0636\\u0627\\u0626\\u0639\",\"The page you are looking for might have been moved, renamed, or might never existed.\":\"\\u0631\\u0628\\u0645\\u0627 \\u062a\\u0645 \\u0646\\u0642\\u0644 \\u0627\\u0644\\u0635\\u0641\\u062d\\u0629 \\u0627\\u0644\\u062a\\u064a \\u062a\\u0628\\u062d\\u062b \\u0639\\u0646\\u0647\\u0627\\u060c \\u0623\\u0648 \\u0623\\u0639\\u064a\\u062f\\u062a \\u062a\\u0633\\u0645\\u064a\\u062a\\u0647\\u0627\\u060c \\u0623\\u0648 \\u0631\\u0628\\u0645\\u0627 \\u0644\\u0645 \\u062a\\u0643\\u0646 \\u0645\\u0648\\u062c\\u0648\\u062f\\u0629 \\u0639\\u0644\\u0649 \\u0627\\u0644\\u0625\\u0637\\u0644\\u0627\\u0642.\",\"Back Home\":\"\\u0627\\u0644\\u0639\\u0648\\u062f\\u0629 \\u0625\\u0644\\u0649 \\u0627\\u0644\\u0645\\u0646\\u0632\\u0644\",\"Reviews(S)\":\"\\u0627\\u0644\\u062a\\u0639\\u0644\\u064a\\u0642\\u0627\\u062a (\\u0627\\u0644\\u062a\\u0639\\u0644\\u064a\\u0642\\u0627\\u062a)\",\"IN STOCK\":\"\\u0641\\u064a \\u0627\\u0644\\u0623\\u0648\\u0631\\u0627\\u0642 \\u0627\\u0644\\u0645\\u0627\\u0644\\u064a\\u0629\",\"OUT OF STOCK\":\"\\u0625\\u0646\\u062a\\u0647\\u0649 \\u0645\\u0646 \\u0627\\u0644\\u0645\\u062e\\u0632\\u0646\",\"Qty\":\"\\u0627\\u0644\\u0643\\u0645\\u064a\\u0629\",\"Description\":\"\\u0648\\u0635\\u0641\",\"Comments\":\"\\u062a\\u0639\\u0644\\u064a\\u0642\\u0627\\u062a\",\"Reviews\":\"\\u0627\\u0644\\u062a\\u0639\\u0644\\u064a\\u0642\\u0627\\u062a\",\"Comment\":\"\\u062a\\u0639\\u0644\\u064a\\u0642\",\"Rating\":\"\\u062a\\u0642\\u064a\\u064a\\u0645\",\"Newest Product\":\"\\u0623\\u062d\\u062f\\u062b \\u0645\\u0646\\u062a\\u062c\",\"Oldest Product\":\"\\u0623\\u0642\\u062f\\u0645 \\u0645\\u0646\\u062a\\u062c\",\"Price: High To Low\":\"\\u0627\\u0644\\u0633\\u0639\\u0631 \\u0627\\u0644\\u0627\\u0639\\u0644\\u0649 \\u0627\\u0644\\u0649 \\u0627\\u0644\\u0627\\u062f\\u0646\\u0649\",\"Price: Low To High\":\"\\u0627\\u0644\\u0633\\u0639\\u0631 \\u0645\\u0646 \\u0627\\u0644\\u0627\\u0631\\u062e\\u0635 \\u0644\\u0644\\u0627\\u0639\\u0644\\u0649\",\"Search Keywords\":\"\\u0643\\u0644\\u0645\\u0627\\u062a \\u0627\\u0644\\u0628\\u062d\\u062b\",\"Subscribe Here\":\"\\u0627\\u0634\\u062a\\u0631\\u0643 \\u0647\\u0646\\u0627\",\"Enter Your Email\":\"\\u0623\\u062f\\u062e\\u0644 \\u0628\\u0631\\u064a\\u062f\\u0643 \\u0627\\u0644\\u0625\\u0644\\u0643\\u062a\\u0631\\u0648\\u0646\\u064a\",\"Jobs\":\"\\u0648\\u0638\\u0627\\u0626\\u0641\",\"NO JOB FOUND\":\"\\u0644\\u0645 \\u064a\\u062a\\u0645 \\u0627\\u0644\\u0639\\u062b\\u0648\\u0631 \\u0639\\u0644\\u0649 \\u0648\\u0638\\u064a\\u0641\\u0629\",\"Deadline\":\"\\u0645\\u0648\\u0639\\u062f \\u0627\\u0644\\u062a\\u0633\\u0644\\u064a\\u0645\",\"Educational Experience\":\"\\u0627\\u0644\\u062e\\u0628\\u0631\\u0629 \\u0627\\u0644\\u062a\\u0639\\u0644\\u064a\\u0645\\u064a\\u0629\",\"Work Experience\":\"\\u062e\\u0628\\u0631\\u0629 \\u0641\\u064a \\u0627\\u0644\\u0639\\u0645\\u0644\",\"Search Jobs\":\"\\u0628\\u062d\\u062b \\u0648\\u0638\\u0627\\u0626\\u0641\",\"Vacancy\":\"\\u062e\\u0627\\u0644\\u064a\",\"Job Responsibilities\":\"\\u0645\\u0633\\u0624\\u0648\\u0644\\u064a\\u0627\\u062a \\u0627\\u0644\\u0639\\u0645\\u0644\",\"Employment Status\":\"\\u0627\\u0644\\u062d\\u0627\\u0644\\u0629 \\u0627\\u0644\\u0648\\u0638\\u064a\\u0641\\u064a\\u0629\",\"Educational Requirements\":\"\\u0627\\u0644\\u0645\\u062a\\u0637\\u0644\\u0628\\u0627\\u062a \\u0627\\u0644\\u062a\\u0639\\u0644\\u064a\\u0645\\u064a\\u0629\",\"Experience Requirements\":\"\\u0645\\u062a\\u0637\\u0644\\u0628\\u0627\\u062a \\u0627\\u0644\\u062e\\u0628\\u0631\\u0629\",\"Additional Requirements\":\"\\u0645\\u062a\\u0637\\u0644\\u0628\\u0627\\u062a \\u0625\\u0636\\u0627\\u0641\\u064a\\u0629\",\"Job Location\":\"\\u0645\\u0643\\u0627\\u0646 \\u0627\\u0644\\u0639\\u0645\\u0644\",\"Salary\":\"\\u0645\\u0631\\u062a\\u0628\",\"Compensation & Other Benefits\":\"\\u062a\\u0639\\u0648\\u064a\\u0636\",\"Read Before Apply\":\"\\u0627\\u0642\\u0631\\u0623 \\u0642\\u0628\\u0644 \\u0627\\u0644\\u062a\\u0642\\u062f\\u064a\\u0645\",\"Job Categories\":\"\\u0641\\u0626\\u0627\\u062a \\u0627\\u0644\\u0648\\u0638\\u0627\\u0626\\u0641\",\"Send your CV to\":\"\\u0623\\u0631\\u0633\\u0644 \\u0633\\u064a\\u0631\\u062a\\u0643 \\u0627\\u0644\\u0630\\u0627\\u062a\\u064a\\u0629 \\u0625\\u0644\\u0649\",\"Checkout as Guest\":\"\\u0627\\u0644\\u062e\\u0631\\u0648\\u062c \\u0643\\u0636\\u064a\\u0641\",\"OR\":\"\\u0623\\u0648\",\"Login via Facebook\":\"\\u062a\\u0633\\u062c\\u064a\\u0644 \\u0627\\u0644\\u062f\\u062e\\u0648\\u0644 \\u0639\\u0628\\u0631 \\u0627\\u0644\\u0641\\u064a\\u0633\\u0628\\u0648\\u0643\",\"Login via Google\":\"\\u062a\\u0633\\u062c\\u064a\\u0644 \\u0627\\u0644\\u062f\\u062e\\u0648\\u0644 \\u0639\\u0628\\u0631 \\u062c\\u0648\\u062c\\u0644\",\"Serving Method\":\"\\u0637\\u0631\\u064a\\u0642\\u0629 \\u0627\\u0644\\u062a\\u0642\\u062f\\u064a\\u0645\",\"On Table\":\"\\u0639\\u0644\\u0649 \\u0627\\u0644\\u0637\\u0627\\u0648\\u0644\\u0629\",\"Home Delivery\":\"\\u062a\\u0648\\u0635\\u064a\\u0644 \\u0645\\u0646\\u0632\\u0644\\u064a\",\"Information\":\"\\u0645\\u0639\\u0644\\u0648\\u0645\\u0629\",\"Table Number\":\"\\u0631\\u0642\\u0645 \\u0627\\u0644\\u0637\\u0627\\u0648\\u0644\\u0629\",\"Waiter Name\":\"\\u0627\\u0633\\u0645 \\u0627\\u0644\\u0646\\u0627\\u062f\\u0644\",\"Pick up Date\":\"\\u0627\\u062e\\u062a\\u0631 \\u062a\\u0627\\u0631\\u064a\\u062e\\u0627\",\"Pick up Time\":\"\\u0627\\u062e\\u062a\\u0627\\u0631 \\u0627\\u0644\\u0645\\u0639\\u0627\\u062f\",\"Cart Total\":\"\\u0625\\u062c\\u0645\\u0627\\u0644\\u064a \\u0627\\u0644\\u0639\\u0631\\u0628\\u0629\",\"Discount\":\"\\u062a\\u062e\\u0641\\u064a\\u0636\",\"Tax\":\"\\u0636\\u0631\\u064a\\u0628\\u0629\",\"Coupon\":\"\\u0642\\u0633\\u064a\\u0645\\u0629\",\"Receipt\":\"\\u0625\\u064a\\u0635\\u0627\\u0644\",\"Place Order\":\"\\u0645\\u0643\\u0627\\u0646 \\u0627\\u0644\\u0627\\u0645\\u0631\",\"Return to Website\":\"\\u0627\\u0644\\u0639\\u0648\\u062f\\u0629 \\u0625\\u0644\\u0649 \\u0627\\u0644\\u0645\\u0648\\u0642\\u0639\",\"Paystack\":\"\\u0627\\u0644\\u0631\\u0627\\u062a\\u0628\",\"Flutterwave\":\"\\u0645\\u0648\\u062c\\u0629 \\u0627\\u0644\\u0631\\u0641\\u0631\\u0641\\u0629\",\"Razorpay\":\"\\u0631\\u0627\\u0632\\u0648\\u0631\\u0628\\u0627\\u064a\",\"Instamojo\":\"\\u0625\\u0646\\u0633\\u062a\\u0627\\u0645\\u0648\\u062c\\u0648\",\"Paytm\":\"\\u0628\\u0627\\u064a\\u062a\\u0645\",\"PayUmoney\":\"PayUmoney\",\"Mollie\":\"\\u0645\\u0648\\u0644\\u064a\",\"Mercadopago\":\"\\u0645\\u064a\\u0631\\u0643\\u0627\\u062f\\u0648\\u0628\\u0627\\u062c\\u0648\",\"Shipping Charges\":\"\\u0631\\u0633\\u0648\\u0645 \\u0627\\u0644\\u0634\\u062d\\u0646\",\"Delivery Date\":\"\\u062a\\u0627\\u0631\\u064a\\u062e \\u0627\\u0644\\u062a\\u0633\\u0644\\u064a\\u0645 \\u0627\\u0648 \\u0627\\u0644\\u0648\\u0635\\u0648\\u0644\",\"Delivery Time\":\"\\u0645\\u0648\\u0639\\u062f \\u0627\\u0644\\u062a\\u0633\\u0644\\u064a\\u0645\",\"Ready to Serve\":\"\\u062c\\u0627\\u0647\\u0632 \\u0644\\u0644\\u062e\\u062f\\u0645\\u0629\",\"Served\":\"\\u062e\\u062f\\u0645\",\"Ordered From\":\"\\u062a\\u0645 \\u0627\\u0644\\u0637\\u0644\\u0628 \\u0645\\u0646\",\"Website Menu\":\"\\u0642\\u0627\\u0626\\u0645\\u0629 \\u0627\\u0644\\u0645\\u0648\\u0642\\u0639\",\"QR Menu\":\"\\u0642\\u0627\\u0626\\u0645\\u0629 QR\",\"Complete\":\"\\u0645\\u0643\\u062a\\u0645\\u0644\",\"Working Hours\":\"\\u0633\\u0627\\u0639\\u0627\\u062a \\u0627\\u0644\\u0639\\u0645\\u0644\",\"Return to Menu\":\"\\u0627\\u0644\\u0639\\u0648\\u062f\\u0629 \\u0625\\u0644\\u0649 \\u0627\\u0644\\u0642\\u0627\\u0626\\u0645\\u0629\",\"Apply\":\"\\u064a\\u062a\\u0642\\u062f\\u0645\",\"Token No\":\"\\u0631\\u0642\\u0645 \\u0627\\u0644\\u0631\\u0645\\u0632 \\u0627\\u0644\\u0645\\u0645\\u064a\\u0632\",\"Postal Code\":\"\\u0631\\u0645\\u0632 \\u0628\\u0631\\u064a\\u062f\\u064a\",\"Billing Address will be Same as Shipping Address\":\"\\u0633\\u064a\\u0643\\u0648\\u0646 \\u0639\\u0646\\u0648\\u0627\\u0646 \\u0625\\u0631\\u0633\\u0627\\u0644 \\u0627\\u0644\\u0641\\u0648\\u0627\\u062a\\u064a\\u0631 \\u0647\\u0648 \\u0646\\u0641\\u0633 \\u0639\\u0646\\u0648\\u0627\\u0646 \\u0627\\u0644\\u0634\\u062d\\u0646\",\"Delivery Area\":\"\\u0645\\u0646\\u0637\\u0642\\u0629 \\u0627\\u0644\\u062a\\u0633\\u0644\\u064a\\u0645\",\"Call Waiter\":\"\\u0627\\u0633\\u062a\\u062f\\u0639\\u0627\\u0621 \\u0627\\u0644\\u0646\\u0627\\u062f\\u0644\",\"Table\":\"\\u0637\\u0627\\u0648\\u0644\\u0629\",\"Select a Table\":\"\\u062d\\u062f\\u062f \\u062c\\u062f\\u0648\\u0644\\u0627\\u064b\",\"Restaurant is informed!\":\"\\u062a\\u0645 \\u0625\\u0628\\u0644\\u0627\\u063a \\u0627\\u0644\\u0645\\u0637\\u0639\\u0645!\",\"Add_To_Menus\":\"\\u0625\\u0636\\u0627\\u0641\\u0629 \\u0625\\u0644\\u0649 \\u0627\\u0644\\u0642\\u0648\\u0627\\u0626\\u0645\",\"NO SPECIAL PRODUCT FOUND!\":\"\\u0644\\u0645 \\u064a\\u062a\\u0645 \\u0627\\u0644\\u0639\\u062b\\u0648\\u0631 \\u0639\\u0644\\u0649 \\u0645\\u0646\\u062a\\u062c \\u062e\\u0627\\u0635!\",\"NO MEMBERS FOUND!\":\"\\u0644\\u0645 \\u064a\\u062a\\u0645 \\u0627\\u0644\\u0639\\u062b\\u0648\\u0631 \\u0639\\u0644\\u0649 \\u0623\\u0639\\u0636\\u0627\\u0621!\",\"NO CLIEND FOUND!\":\"\\u0644\\u0645 \\u064a\\u062a\\u0645 \\u0627\\u0644\\u0639\\u062b\\u0648\\u0631 \\u0639\\u0644\\u0649 \\u0623\\u064a \\u0639\\u0645\\u064a\\u0644!\",\"NO BLOG POST FOUND!\":\"\\u0644\\u0645 \\u064a\\u062a\\u0645 \\u0627\\u0644\\u0639\\u062b\\u0648\\u0631 \\u0639\\u0644\\u0649 \\u0623\\u064a \\u0645\\u0634\\u0627\\u0631\\u0643\\u0629 \\u0641\\u064a \\u0627\\u0644\\u0645\\u062f\\u0648\\u0646\\u0629!\",\"NO FAQ FOUND!\":\"\\u0644\\u0645 \\u064a\\u062a\\u0645 \\u0627\\u0644\\u0639\\u062b\\u0648\\u0631 \\u0639\\u0644\\u0649 \\u0627\\u0644\\u0623\\u0633\\u0626\\u0644\\u0629 \\u0627\\u0644\\u0634\\u0627\\u0626\\u0639\\u0629!\",\"NO GALLERY IMAGE FOUND!\":\"\\u0644\\u0645 \\u064a\\u062a\\u0645 \\u0627\\u0644\\u0639\\u062b\\u0648\\u0631 \\u0639\\u0644\\u0649 \\u0635\\u0648\\u0631\\u0629 \\u0641\\u064a \\u0627\\u0644\\u0645\\u0639\\u0631\\u0636!\",\"NO TEAM FOUND!\":\"\\u0644\\u0645 \\u064a\\u062a\\u0645 \\u0627\\u0644\\u0639\\u062b\\u0648\\u0631 \\u0639\\u0644\\u0649 \\u0641\\u0631\\u064a\\u0642!\",\"ALL\":\"\\u0627\\u0644\\u062c\\u0645\\u064a\\u0639\",\"Filter\":\"\\u0645\\u0646\\u0642\\u064a\",\"Filter_By_Price\":\"\\u062a\\u0635\\u0641\\u064a\\u0629 \\u062d\\u0633\\u0628 \\u0627\\u0644\\u0633\\u0639\\u0631\",\"Show_All\":\"\\u0639\\u0631\\u0636 \\u0627\\u0644\\u0643\\u0644\",\"Cart_is_empty\":\"\\u0627\\u0644\\u0628\\u0637\\u0627\\u0642\\u0647 \\u062e\\u0627\\u0644\\u064a\\u0647\",\"On_Table\":\"\\u0639\\u0644\\u0649 \\u0627\\u0644\\u0637\\u0627\\u0648\\u0644\\u0629\",\"Home_Delivery\":\"\\u062a\\u0648\\u0635\\u064a\\u0644 \\u0645\\u0646\\u0632\\u0644\\u064a\",\"Select_a_postal_code\":\"\\u062d\\u062f\\u062f \\u0627\\u0644\\u0631\\u0645\\u0632 \\u0627\\u0644\\u0628\\u0631\\u064a\\u062f\\u064a\",\"Select\":\"\\u064a\\u062e\\u062a\\u0627\\u0631\",\"Type\":\"\\u064a\\u0643\\u062a\\u0628\",\"Item Total\":\"\\u0645\\u062c\\u0645\\u0648\\u0639 \\u0627\\u0644\\u0627\\u0634\\u064a\\u0627\\u0621\",\"No Menu Found!\":\"\\u0644\\u0645 \\u064a\\u062a\\u0645 \\u0627\\u0644\\u0639\\u062b\\u0648\\u0631 \\u0639\\u0644\\u0649 \\u0627\\u0644\\u0642\\u0627\\u0626\\u0645\\u0629!\",\"You are lost\":\"\\u0623\\u0646\\u062a \\u0636\\u0627\\u0626\\u0639\",\"Get Back to Home\":\"\\u0627\\u0644\\u0639\\u0648\\u062f\\u0629 \\u0625\\u0644\\u0649 \\u0627\\u0644\\u0645\\u0646\\u0632\\u0644\",\"Addons\":\"\\u0625\\u0636\\u0627\\u0641\\u0627\\u062a\",\"Subcategory\":\"\\u062a\\u0635\\u0646\\u064a\\u0641 \\u0641\\u0631\\u0639\\u064a\",\"Review\":\"\\u0645\\u0631\\u0627\\u062c\\u0639\\u0629\",\"Blog Details\":\"\\u062a\\u0641\\u0627\\u0635\\u064a\\u0644 \\u0627\\u0644\\u0645\\u062f\\u0648\\u0646\\u0629\",\"Career Details\":\"\\u0627\\u0644\\u062a\\u0641\\u0627\\u0635\\u064a\\u0644 \\u0627\\u0644\\u0645\\u0647\\u0646\\u064a\\u0629\",\"Enter your card number\":\"\\u0623\\u062f\\u062e\\u0644 \\u0631\\u0642\\u0645 \\u0628\\u0637\\u0627\\u0642\\u062a\\u0643\",\"Enter expiry month\":\"\\u0623\\u062f\\u062e\\u0644 \\u0634\\u0647\\u0631 \\u0627\\u0646\\u062a\\u0647\\u0627\\u0621 \\u0627\\u0644\\u0635\\u0644\\u0627\\u062d\\u064a\\u0629\",\"Enter expiry year\":\"\\u0623\\u062f\\u062e\\u0644 \\u0633\\u0646\\u0629 \\u0627\\u0646\\u062a\\u0647\\u0627\\u0621 \\u0627\\u0644\\u0635\\u0644\\u0627\\u062d\\u064a\\u0629\",\"Enter card code\":\"\\u0623\\u062f\\u062e\\u0644 \\u0631\\u0645\\u0632 \\u0627\\u0644\\u0628\\u0637\\u0627\\u0642\\u0629\",\"Select a time frame\":\"\\u062d\\u062f\\u062f \\u0625\\u0637\\u0627\\u0631\\u064b\\u0627 \\u0632\\u0645\\u0646\\u064a\\u064b\\u0627\",\"Select Addons\":\"\\u062d\\u062f\\u062f \\u0627\\u0644\\u0625\\u0636\\u0627\\u0641\\u0627\\u062a\",\"Authorize\":\"\\u064a\\u0623\\u0630\\u0646\",\"to leave a rating\":\"\\u0644\\u062a\\u0631\\u0643 \\u0627\\u0644\\u062a\\u0642\\u064a\\u064a\\u0645\",\"Website\":\"\\u0645\\u0648\\u0642\\u0639 \\u0625\\u0644\\u0643\\u062a\\u0631\\u0648\\u0646\\u064a\",\"QR\":\"\\u0631\\u064a\\u0627\\u0644 \\u0642\\u0637\\u0631\\u064a\",\"Pick_Up\":\"\\u064a\\u0644\\u062a\\u0642\\u0637\",\"Pick UP\":\"\\u064a\\u0644\\u062a\\u0642\\u0637\",\"Subtotal\":\"\\u0627\\u0644\\u0645\\u062c\\u0645\\u0648\\u0639 \\u0627\\u0644\\u0641\\u0631\\u0639\\u064a\",\"Grand Total\":\"\\u0627\\u0644\\u0645\\u062c\\u0645\\u0648\\u0639 \\u0627\\u0644\\u0625\\u062c\\u0645\\u0627\\u0644\\u064a\",\"Completed\":\"\\u0645\\u0643\\u062a\\u0645\\u0644\",\"Yes\":\"\\u0646\\u0639\\u0645\",\"No\":\"\\u0644\\u0627\",\"Select a Time Frame\":\"\\u062d\\u062f\\u062f \\u0627\\u0644\\u0625\\u0637\\u0627\\u0631 \\u0627\\u0644\\u0632\\u0645\\u0646\\u064a\",\"Receipt image must be .jpg \\/ .jpeg \\/ .png\":\"\\u064a\\u062c\\u0628 \\u0623\\u0646 \\u062a\\u0643\\u0648\\u0646 \\u0635\\u0648\\u0631\\u0629 \\u0627\\u0644\\u0625\\u064a\\u0635\\u0627\\u0644 .jpg \\/ .jpeg \\/ .png\",\"Page Not Found\":\"\\u0627\\u0644\\u0635\\u0641\\u062d\\u0629 \\u063a\\u064a\\u0631 \\u0645\\u0648\\u062c\\u0648\\u062f\\u0629\",\"January\":\"\\u064a\\u0646\\u0627\\u064a\\u0631\",\"February\":\"\\u0634\\u0647\\u0631 \\u0641\\u0628\\u0631\\u0627\\u064a\\u0631\",\"March\":\"\\u064a\\u0645\\u0634\\u064a\",\"April\":\"\\u0623\\u0628\\u0631\\u064a\\u0644\",\"May\":\"\\u064a\\u0645\\u0643\\u0646\",\"June\":\"\\u064a\\u0648\\u0646\\u064a\\u0648\",\"July\":\"\\u064a\\u0648\\u0644\\u064a\\u0648\",\"August\":\"\\u0623\\u063a\\u0633\\u0637\\u0633\",\"September\":\"\\u0633\\u0628\\u062a\\u0645\\u0628\\u0631\",\"October\":\"\\u0627\\u0643\\u062a\\u0648\\u0628\\u0631\",\"November\":\"\\u0634\\u0647\\u0631 \\u0646\\u0648\\u0641\\u0645\\u0628\\u0631\",\"December\":\"\\u062f\\u064a\\u0633\\u0645\\u0628\\u0631\",\"Monday\":\"\\u0634\\u0647\\u0631\",\"Tuesday\":\"\\u062a\\u0648\",\"Wednesday\":\"\\u0646\\u062d\\u0646\",\"Thursday\":\"\\u0630\",\"Friday\":\"\\u0627\\u0644\\u0623\\u0628\",\"Saturday\":\"\\u0633\\u0627\",\"Sunday\":\"\\u0633\\u0648\",\"Showing\":\"\\u0639\\u0631\\u0636\",\"to\":\"\\u0644\",\"of\":\"\\u0644\",\"entries\":\"\\u0625\\u062f\\u062e\\u0627\\u0644\\u0627\\u062a\",\"Show\":\"\\u064a\\u0639\\u0631\\u0636\",\"Extras\":\"\\u0625\\u0636\\u0627\\u0641\\u0627\\u062a\",\"About Us\":\"\\u0645\\u0639\\u0644\\u0648\\u0645\\u0627\\u062a \\u0639\\u0646\\u0627\",\"No Special Food\":\"\\u0644\\u0627 \\u064a\\u0648\\u062c\\u062f \\u0637\\u0639\\u0627\\u0645 \\u062e\\u0627\\u0635\",\"Subscribe\":\"\\u064a\\u0634\\u062a\\u0631\\u0643\",\"Useful Links\":\"\\u0631\\u0648\\u0627\\u0628\\u0637 \\u0645\\u0641\\u064a\\u062f\\u0629\",\"View More\":\"\\u0639\\u0631\\u0636 \\u0627\\u0644\\u0645\\u0632\\u064a\\u062f\",\"By\":\"\\u0628\\u0648\\u0627\\u0633\\u0637\\u0629\",\"Stay update with us and get offer!\":\"\\u0627\\u0628\\u0642 \\u0639\\u0644\\u0649 \\u0627\\u0637\\u0644\\u0627\\u0639 \\u0645\\u0639\\u0646\\u0627 \\u0648\\u0627\\u062d\\u0635\\u0644 \\u0639\\u0644\\u0649 \\u0627\\u0644\\u0639\\u0631\\u0636!\",\"Identity Number\":\"Identity Number\",\"Zip Code\":\"Zip Code\"}', 2, '65a786ae73af9', '2024-01-16 18:50:06', '2024-08-20 23:15:14'),
(77, 'English', 'en', 1, 0, '{\"Home\":\"Home\",\"Menu\":\"Menu\",\"Items\":\"Items\",\"Team\":\"Team\",\"Teams\":\"Teams\",\"Contact\":\"Contact\",\"Gallery\":\"Gallery\",\"Team Members\":\"Team Members\",\"Cart\":\"Cart\",\"Reservation\":\"Reservation\",\"Blog\":\"Blog\",\"Add Cart\":\"Add Cart\",\"Opening Time\":\"Opening Time\",\"Buy Now\":\"Buy Now\",\"Discover Food Menu\":\"Discover Food Menu\",\"View All Items\":\"View All Items\",\"Our\":\"Our\",\"Special\":\"Special\",\"Good\":\"Good\",\"Food\":\"Food\",\"Price\":\"Price\",\"View All Menu List\":\"View All Menu List\",\"Product Not Found\":\"Product Not Found\",\"Stars\":\"Stars\",\"Read More\":\"Read More\",\"Book A Table\":\"Book A Table\",\"Full Name\":\"Full Name\",\"Phone\":\"Phone\",\"Date\":\"Date\",\"Time\":\"Time\",\"Person\":\"Person\",\"Book Table\":\"Book Table\",\"Our Blog\":\"Our Blog\",\"No Blogs\":\"No Blogs\",\"Share\":\"Share\",\"All Categories\":\"All Categories\",\"Contact Us\":\"Contact Us\",\"Your Name\":\"Your Name\",\"Email Address\":\"Email Address\",\"Subject\":\"Subject\",\"Write a message\":\"Write a message\",\"Submit Now\":\"Submit Now\",\"Career\":\"Career\",\"Job Details\":\"Job Details\",\"Our Gallery\":\"Our Gallery\",\"FAQ\":\"FAQ\",\"Photos Action\":\"Photos Action\",\"Our Awesome Gallery\":\"Our Awesome Gallery\",\"Exparts Our Team\":\"Exparts Our Team\",\"Your Cart\":\"Your Cart\",\"Total\":\"Total\",\"Products\":\"Products\",\"Product\":\"Product\",\"Product Title\":\"Product Title\",\"Variations\":\"Variations\",\"Variation\":\"Variation\",\"Add On\'s\":\"Add On\'s\",\"Ordered Products\":\"Ordered Products\",\"Select Variation\":\"Select Variation\",\"Select Add On\'s\":\"Select Add On\'s\",\"Optional\":\"Optional\",\"Add to Cart\":\"Add to Cart\",\"Quantity\":\"Quantity\",\"Availability\":\"Availability\",\"Item(s)\":\"Item(s)\",\"Remove\":\"Remove\",\"Avilable Now\":\"Avilable Now\",\"Out Of Stock\":\"Out Of Stock\",\"Cart is empty!\":\"Cart is empty!\",\"Checkout\":\"Checkout\",\"Update Cart\":\"Update Cart\",\"Country\":\"Country\",\"First Name\":\"First Name\",\"Last Name\":\"Last Name\",\"Address\":\"Address\",\"Town \\/ City\":\"Town \\/ City\",\"Contact Email\":\"Contact Email\",\"Shipping Methods\":\"Shipping Methods\",\"Method\":\"Method\",\"Cost\":\"Cost\",\"Free Shipping\":\"Free Shipping\",\"10 to 15 days\":\"10 to 15 days\",\"Order Summary\":\"Order Summary\",\"Cart is empty\":\"Cart is empty\",\"Cart Totals\":\"Cart Totals\",\"Cart Subtotal\":\"Cart Subtotal\",\"Shipping Charge\":\"Shipping Charge\",\"Paid Amount\":\"Paid Amount\",\"Payment Method\":\"Payment Method\",\"Shipping Method\":\"Shipping Method\",\"Order Total\":\"Order Total\",\"Pay Via\":\"Pay Via\",\"Paypal\":\"Paypal\",\"Stripe\":\"Stripe\",\"Card Number\":\"Card Number\",\"CVC\":\"CVC\",\"Month\":\"Month\",\"Year\":\"Year\",\"Pleace Order\":\"Pleace Order\",\"Dashboard\":\"Dashboard\",\"Edit Profile\":\"Edit Profile\",\"Shipping Details\":\"Shipping Details\",\"Billing Details\":\"Billing Details\",\"Change Password\":\"Change Password\",\"My Orders\":\"My Orders\",\"Logout\":\"Logout\",\"Edit Billing Details\":\"Edit Billing Details\",\"Billing First Name\":\"Billing First Name\",\"Billing Last Name\":\"Billing Last Name\",\"Billing Email\":\"Billing Email\",\"Billing User Name\":\"Billing User Name\",\"Billing Phone\":\"Billing Phone\",\"Billing City\":\"Billing City\",\"Billing State\":\"Billing State\",\"Billing Country\":\"Billing Country\",\"Billing Address\":\"Billing Address\",\"Submit\":\"Submit\",\"Reset Password\":\"Reset Password\",\"Re-Type Password\":\"Re-Type Password\",\"Account Information\":\"Account Information\",\"User\":\"User\",\"Username\":\"Username\",\"State\":\"State\",\"City\":\"City\",\"Total Orders\":\"Total Orders\",\"Recent Orders\":\"Recent Orders\",\"Order Number\":\"Order Number\",\"Total Price\":\"Total Price\",\"Action\":\"Action\",\"No Orders\":\"No Orders\",\"Forgot Password\":\"Forgot Password\",\"Login Now\":\"Login Now\",\"Send Mail\":\"Send Mail\",\"Login\":\"Login\",\"Password\":\"Password\",\"LOG IN\":\"LOG IN\",\"Don\'t have an account\":\"Don\'t have an account\",\"Lost your password\":\"Lost your password\",\"Order Details\":\"Order Details\",\"Pending\":\"Pending\",\"Received\":\"Received\",\"Preparing\":\"Preparing\",\"Ready to pick up\":\"Ready to pick up\",\"Picked up\":\"Picked up\",\"Delivered\":\"Delivered\",\"Cancelled\":\"Cancelled\",\"My Order Details\":\"My Order Details\",\"Order Date\":\"Order Date\",\"Order\":\"Order\",\"Download Invoice\":\"Download Invoice\",\"Payment Status\":\"Payment Status\",\"Image\":\"Image\",\"Name\":\"Name\",\"Details\":\"Details\",\"back\":\"back\",\"All Orders\":\"All Orders\",\"My Profile\":\"My Profile\",\"Upload\":\"Upload\",\"Register\":\"Register\",\"Confirmation Password\":\"Confirmation Password\",\"Already have an account ?\":\"Already have an account ?\",\"To login\":\"To login\",\"Click Here\":\"Click Here\",\"Current Password\":\"Current Password\",\"New Password\":\"New Password\",\"Confirm Password\":\"Confirm Password\",\"Edit Shipping Details\":\"Edit Shipping Details\",\"Shipping First Name\":\"Shipping First Name\",\"Shipping Last Name\":\"Shipping Last Name\",\"Shipping Email\":\"Shipping Email\",\"Shipping User Name\":\"Shipping User Name\",\"Shipping Phone\":\"Shipping Phone\",\"Shipping City\":\"Shipping City\",\"Shipping State\":\"Shipping State\",\"Shipping Country\":\"Shipping Country\",\"Shipping Address\":\"Shipping Address\",\"Order Notes\":\"Order Notes\",\"Category\":\"Category\",\"All\":\"All\",\"Product Not Fount\":\"Product Not Fount\",\"Filter Products\":\"Filter Products\",\"Star and higher\":\"Star and higher\",\"Admin\":\"Admin\",\"Reviews For\":\"Reviews For\",\"Success\":\"Success\",\"Your order has been placed successfully!\":\"Your order has been placed successfully!\",\"We have sent you a mail with an invoice.\":\"We have sent you a mail with an invoice.\",\"Thank you.\":\"Thank you.\",\"You\'re lost\":\"You\'re lost\",\"The page you are looking for might have been moved, renamed, or might never existed.\":\"The page you are looking for might have been moved, renamed, or might never existed.\",\"Back Home\":\"Back Home\",\"Reviews(S)\":\"Reviews(S)\",\"IN STOCK\":\"IN STOCK\",\"OUT OF STOCK\":\"OUT OF STOCK\",\"Qty\":\"Qty\",\"Description\":\"Description\",\"Comments\":\"Comments\",\"Reviews\":\"Reviews\",\"Comment\":\"Comment\",\"Rating\":\"Rating\",\"Newest Product\":\"Newest Product\",\"Oldest Product\":\"Oldest Product\",\"Price: High To Low\":\"Price: High To Low\",\"Price: Low To High\":\"Price: Low To High\",\"Search Keywords\":\"Search Keywords\",\"Subscribe Here\":\"Subscribe Here\",\"Enter Your Email\":\"Enter Your Email\",\"Jobs\":\"Jobs\",\"NO JOB FOUND\":\"NO JOB FOUND\",\"Deadline\":\"Deadline\",\"Educational Experience\":\"Educational Experience\",\"Work Experience\":\"Work Experience\",\"Search Jobs\":\"Search Jobs\",\"Vacancy\":\"Vacancy\",\"Job Responsibilities\":\"Job Responsibilities\",\"Employment Status\":\"Employment Status\",\"Educational Requirements\":\"Educational Requirements\",\"Experience Requirements\":\"Experience Requirements\",\"Additional Requirements\":\"Additional Requirements\",\"Job Location\":\"Job Location\",\"Salary\":\"Salary\",\"Compensation & Other Benefits\":\"Compensation & Other Benefits\",\"Read Before Apply\":\"Read Before Apply\",\"Job Categories\":\"Job Categories\",\"Send your CV to\":\"Send your CV to\",\"Checkout as Guest\":\"Checkout as Guest\",\"OR\":\"OR\",\"Login via Facebook\":\"Login via Facebook\",\"Login via Google\":\"Login via Google\",\"Serving Method\":\"Serving Method\",\"On Table\":\"On Table\",\"Home Delivery\":\"Home Delivery\",\"Information\":\"Information\",\"Table Number\":\"Table Number\",\"Waiter Name\":\"Waiter Name\",\"Pick up Date\":\"Pick up Date\",\"Pick up Time\":\"Pick up Time\",\"Cart Total\":\"Cart Total\",\"Discount\":\"Discount\",\"Tax\":\"Tax\",\"Coupon\":\"Coupon\",\"Receipt\":\"Receipt\",\"Place Order\":\"Place Order\",\"Return to Website\":\"Return to Website\",\"Paystack\":\"Paystack\",\"Flutterwave\":\"Flutterwave\",\"Razorpay\":\"Razorpay\",\"Instamojo\":\"Instamojo\",\"Paytm\":\"Paytm\",\"PayUmoney\":\"PayUmoney\",\"Mollie\":\"Mollie\",\"Mercadopago\":\"Mercadopago\",\"Shipping Charges\":\"Shipping Charges\",\"Delivery Date\":\"Delivery Date\",\"Delivery Time\":\"Delivery Time\",\"Ready to Serve\":\"Ready to Serve\",\"Served\":\"Served\",\"Ordered From\":\"Ordered From\",\"Website Menu\":\"Website Menu\",\"QR Menu\":\"QR Menu\",\"Complete\":\"Complete\",\"Working Hours\":\"Working Hours\",\"Return to Menu\":\"Return to Menu\",\"Apply\":\"Apply\",\"Token No\":\"Token No\",\"Postal Code\":\"Postal Code\",\"Billing Address will be Same as Shipping Address\":\"Billing Address will be Same as Shipping Address\",\"Delivery Area\":\"Delivery Area\",\"Call Waiter\":\"Call Waiter\",\"Table\":\"Table\",\"Select a Table\":\"Select a Table\",\"Restaurant is informed!\":\"Restaurant is informed!\",\"Add_To_Menus\":\"Add to Menus\",\"NO SPECIAL PRODUCT FOUND!\":\"NO SPECIAL PRODUCT FOUND!\",\"NO MEMBERS FOUND!\":\"NO MEMBERS FOUND!\",\"NO CLIEND FOUND!\":\"NO CLIEND FOUND!\",\"NO BLOG POST FOUND!\":\"NO BLOG POST FOUND!\",\"NO FAQ FOUND!\":\"NO FAQ FOUND!\",\"NO GALLERY IMAGE FOUND!\":\"NO GALLERY IMAGE FOUND!\",\"NO TEAM FOUND!\":\"NO TEAM FOUND!\",\"ALL\":\"ALL\",\"Filter\":\"Filter\",\"Filter_By_Price\":\"Filter By Price\",\"Show_All\":\"Show All\",\"Cart_is_empty\":\"Cart is empty\",\"On_Table\":\"On Table\",\"Home_Delivery\":\"Home Delivery\",\"Select_a_postal_code\":\"Select a postal code\",\"Select\":\"Select\",\"Type\":\"Type\",\"Item Total\":\"Item Total\",\"No Menu Found!\":\"No Menu Found!\",\"You are lost\":\"You are lost\",\"Get Back to Home\":\"Get Back to Home\",\"Addons\":\"Addons\",\"Subcategory\":\"Subcategory\",\"Review\":\"Review\",\"Blog Details\":\"Blog Details\",\"Career Details\":\"Career Details\",\"Enter your card number\":\"Enter your card number\",\"Enter expiry month\":\"Enter expiry month\",\"Enter expiry year\":\"Enter expiry year\",\"Enter card code\":\"Enter card code\",\"Select a time frame\":\"Select a time frame\",\"Select Addons\":\"Select Addons\",\"Authorize\":\"Authorize\",\"to leave a rating\":\"to leave a rating\",\"Website\":\"Website\",\"QR\":\"QR\",\"Pick_Up\":\"Pick Up\",\"Pick UP\":\"Pick UP\",\"Subtotal\":\"Subtotal\",\"Grand Total\":\"Grand Total\",\"Completed\":\"Completed\",\"Yes\":\"Yes\",\"No\":\"No\",\"Select a Time Frame\":\"Select a Time Frame\",\"Receipt image must be .jpg \\/ .jpeg \\/ .png\":\"Receipt image must be .jpg \\/ .jpeg \\/ .png\",\"Page Not Found\":\"Page Not Found\",\"January\":\"January\",\"February\":\"February\",\"March\":\"March\",\"April\":\"April\",\"May\":\"May\",\"June\":\"June\",\"July\":\"July\",\"August\":\"August\",\"September\":\"September\",\"October\":\"October\",\"November\":\"November\",\"December\":\"December\",\"Monday\":\"Mo\",\"Tuesday\":\"Tu\",\"Wednesday\":\"We\",\"Thursday\":\"Th\",\"Friday\":\"Fr\",\"Saturday\":\"Sa\",\"Sunday\":\"Su\",\"Showing\":\"Showing\",\"to\":\"to\",\"of\":\"of\",\"entries\":\"entries\",\"Show\":\"Show\",\"Extras\":\"Extras\",\"About Us\":\"About Us\",\"No Special Food\":\"No Special Food\",\"Subscribe\":\"Subscribe\",\"Useful Links\":\"Useful Links\",\"View More\":\"View More\",\"By\":\"By\",\"Stay update with us and get offer!\":\"Stay update with us and get offer!\",\"Identity Number\":\"Identity Number\",\"Zip Code\":\"Zip Code\"}', 14, NULL, '2024-02-18 15:26:16', '2024-08-20 23:15:14');
INSERT INTO `user_languages` (`id`, `name`, `code`, `is_default`, `rtl`, `keywords`, `user_id`, `datepicker_name`, `created_at`, `updated_at`) VALUES
(78, 'English', 'en', 1, 0, '{\"Home\":\"Home\",\"Menu\":\"Menu\",\"Items\":\"Items\",\"Team\":\"Team\",\"Teams\":\"Teams\",\"Contact\":\"Contact\",\"Gallery\":\"Gallery\",\"Team Members\":\"Team Members\",\"Cart\":\"Cart\",\"Reservation\":\"Reservation\",\"Blog\":\"Blog\",\"Add Cart\":\"Add Cart\",\"Opening Time\":\"Opening Time\",\"Buy Now\":\"Buy Now\",\"Discover Food Menu\":\"Discover Food Menu\",\"View All Items\":\"View All Items\",\"Our\":\"Our\",\"Special\":\"Special\",\"Good\":\"Good\",\"Food\":\"Food\",\"Price\":\"Price\",\"View All Menu List\":\"View All Menu List\",\"Product Not Found\":\"Product Not Found\",\"Stars\":\"Stars\",\"Read More\":\"Read More\",\"Book A Table\":\"Book A Table\",\"Full Name\":\"Full Name\",\"Phone\":\"Phone\",\"Date\":\"Date\",\"Time\":\"Time\",\"Person\":\"Person\",\"Book Table\":\"Book Table\",\"Our Blog\":\"Our Blog\",\"No Blogs\":\"No Blogs\",\"Share\":\"Share\",\"All Categories\":\"All Categories\",\"Contact Us\":\"Contact Us\",\"Your Name\":\"Your Name\",\"Email Address\":\"Email Address\",\"Subject\":\"Subject\",\"Write a message\":\"Write a message\",\"Submit Now\":\"Submit Now\",\"Career\":\"Career\",\"Job Details\":\"Job Details\",\"Our Gallery\":\"Our Gallery\",\"FAQ\":\"FAQ\",\"Photos Action\":\"Photos Action\",\"Our Awesome Gallery\":\"Our Awesome Gallery\",\"Exparts Our Team\":\"Exparts Our Team\",\"Your Cart\":\"Your Cart\",\"Total\":\"Total\",\"Products\":\"Products\",\"Product\":\"Product\",\"Product Title\":\"Product Title\",\"Variations\":\"Variations\",\"Variation\":\"Variation\",\"Add On\'s\":\"Add On\'s\",\"Ordered Products\":\"Ordered Products\",\"Select Variation\":\"Select Variation\",\"Select Add On\'s\":\"Select Add On\'s\",\"Optional\":\"Optional\",\"Add to Cart\":\"Add to Cart\",\"Quantity\":\"Quantity\",\"Availability\":\"Availability\",\"Item(s)\":\"Item(s)\",\"Remove\":\"Remove\",\"Avilable Now\":\"Avilable Now\",\"Out Of Stock\":\"Out Of Stock\",\"Cart is empty!\":\"Cart is empty!\",\"Checkout\":\"Checkout\",\"Update Cart\":\"Update Cart\",\"Country\":\"Country\",\"First Name\":\"First Name\",\"Last Name\":\"Last Name\",\"Address\":\"Address\",\"Town \\/ City\":\"Town \\/ City\",\"Contact Email\":\"Contact Email\",\"Shipping Methods\":\"Shipping Methods\",\"Method\":\"Method\",\"Cost\":\"Cost\",\"Free Shipping\":\"Free Shipping\",\"10 to 15 days\":\"10 to 15 days\",\"Order Summary\":\"Order Summary\",\"Cart is empty\":\"Cart is empty\",\"Cart Totals\":\"Cart Totals\",\"Cart Subtotal\":\"Cart Subtotal\",\"Shipping Charge\":\"Shipping Charge\",\"Paid Amount\":\"Paid Amount\",\"Payment Method\":\"Payment Method\",\"Shipping Method\":\"Shipping Method\",\"Order Total\":\"Order Total\",\"Pay Via\":\"Pay Via\",\"Paypal\":\"Paypal\",\"Stripe\":\"Stripe\",\"Card Number\":\"Card Number\",\"CVC\":\"CVC\",\"Month\":\"Month\",\"Year\":\"Year\",\"Pleace Order\":\"Pleace Order\",\"Dashboard\":\"Dashboard\",\"Edit Profile\":\"Edit Profile\",\"Shipping Details\":\"Shipping Details\",\"Billing Details\":\"Billing Details\",\"Change Password\":\"Change Password\",\"My Orders\":\"My Orders\",\"Logout\":\"Logout\",\"Edit Billing Details\":\"Edit Billing Details\",\"Billing First Name\":\"Billing First Name\",\"Billing Last Name\":\"Billing Last Name\",\"Billing Email\":\"Billing Email\",\"Billing User Name\":\"Billing User Name\",\"Billing Phone\":\"Billing Phone\",\"Billing City\":\"Billing City\",\"Billing State\":\"Billing State\",\"Billing Country\":\"Billing Country\",\"Billing Address\":\"Billing Address\",\"Submit\":\"Submit\",\"Reset Password\":\"Reset Password\",\"Re-Type Password\":\"Re-Type Password\",\"Account Information\":\"Account Information\",\"User\":\"User\",\"Username\":\"Username\",\"State\":\"State\",\"City\":\"City\",\"Total Orders\":\"Total Orders\",\"Recent Orders\":\"Recent Orders\",\"Order Number\":\"Order Number\",\"Total Price\":\"Total Price\",\"Action\":\"Action\",\"No Orders\":\"No Orders\",\"Forgot Password\":\"Forgot Password\",\"Login Now\":\"Login Now\",\"Send Mail\":\"Send Mail\",\"Login\":\"Login\",\"Password\":\"Password\",\"LOG IN\":\"LOG IN\",\"Don\'t have an account\":\"Don\'t have an account\",\"Lost your password\":\"Lost your password\",\"Order Details\":\"Order Details\",\"Pending\":\"Pending\",\"Received\":\"Received\",\"Preparing\":\"Preparing\",\"Ready to pick up\":\"Ready to pick up\",\"Picked up\":\"Picked up\",\"Delivered\":\"Delivered\",\"Cancelled\":\"Cancelled\",\"My Order Details\":\"My Order Details\",\"Order Date\":\"Order Date\",\"Order\":\"Order\",\"Download Invoice\":\"Download Invoice\",\"Payment Status\":\"Payment Status\",\"Image\":\"Image\",\"Name\":\"Name\",\"Details\":\"Details\",\"back\":\"back\",\"All Orders\":\"All Orders\",\"My Profile\":\"My Profile\",\"Upload\":\"Upload\",\"Register\":\"Register\",\"Confirmation Password\":\"Confirmation Password\",\"Already have an account ?\":\"Already have an account ?\",\"To login\":\"To login\",\"Click Here\":\"Click Here\",\"Current Password\":\"Current Password\",\"New Password\":\"New Password\",\"Confirm Password\":\"Confirm Password\",\"Edit Shipping Details\":\"Edit Shipping Details\",\"Shipping First Name\":\"Shipping First Name\",\"Shipping Last Name\":\"Shipping Last Name\",\"Shipping Email\":\"Shipping Email\",\"Shipping User Name\":\"Shipping User Name\",\"Shipping Phone\":\"Shipping Phone\",\"Shipping City\":\"Shipping City\",\"Shipping State\":\"Shipping State\",\"Shipping Country\":\"Shipping Country\",\"Shipping Address\":\"Shipping Address\",\"Order Notes\":\"Order Notes\",\"Category\":\"Category\",\"All\":\"All\",\"Product Not Fount\":\"Product Not Fount\",\"Filter Products\":\"Filter Products\",\"Star and higher\":\"Star and higher\",\"Admin\":\"Admin\",\"Reviews For\":\"Reviews For\",\"Success\":\"Success\",\"Your order has been placed successfully!\":\"Your order has been placed successfully!\",\"We have sent you a mail with an invoice.\":\"We have sent you a mail with an invoice.\",\"Thank you.\":\"Thank you.\",\"You\'re lost\":\"You\'re lost\",\"The page you are looking for might have been moved, renamed, or might never existed.\":\"The page you are looking for might have been moved, renamed, or might never existed.\",\"Back Home\":\"Back Home\",\"Reviews(S)\":\"Reviews(S)\",\"IN STOCK\":\"IN STOCK\",\"OUT OF STOCK\":\"OUT OF STOCK\",\"Qty\":\"Qty\",\"Description\":\"Description\",\"Comments\":\"Comments\",\"Reviews\":\"Reviews\",\"Comment\":\"Comment\",\"Rating\":\"Rating\",\"Newest Product\":\"Newest Product\",\"Oldest Product\":\"Oldest Product\",\"Price: High To Low\":\"Price: High To Low\",\"Price: Low To High\":\"Price: Low To High\",\"Search Keywords\":\"Search Keywords\",\"Subscribe Here\":\"Subscribe Here\",\"Enter Your Email\":\"Enter Your Email\",\"Jobs\":\"Jobs\",\"NO JOB FOUND\":\"NO JOB FOUND\",\"Deadline\":\"Deadline\",\"Educational Experience\":\"Educational Experience\",\"Work Experience\":\"Work Experience\",\"Search Jobs\":\"Search Jobs\",\"Vacancy\":\"Vacancy\",\"Job Responsibilities\":\"Job Responsibilities\",\"Employment Status\":\"Employment Status\",\"Educational Requirements\":\"Educational Requirements\",\"Experience Requirements\":\"Experience Requirements\",\"Additional Requirements\":\"Additional Requirements\",\"Job Location\":\"Job Location\",\"Salary\":\"Salary\",\"Compensation & Other Benefits\":\"Compensation & Other Benefits\",\"Read Before Apply\":\"Read Before Apply\",\"Job Categories\":\"Job Categories\",\"Send your CV to\":\"Send your CV to\",\"Checkout as Guest\":\"Checkout as Guest\",\"OR\":\"OR\",\"Login via Facebook\":\"Login via Facebook\",\"Login via Google\":\"Login via Google\",\"Serving Method\":\"Serving Method\",\"On Table\":\"On Table\",\"Home Delivery\":\"Home Delivery\",\"Information\":\"Information\",\"Table Number\":\"Table Number\",\"Waiter Name\":\"Waiter Name\",\"Pick up Date\":\"Pick up Date\",\"Pick up Time\":\"Pick up Time\",\"Cart Total\":\"Cart Total\",\"Discount\":\"Discount\",\"Tax\":\"Tax\",\"Coupon\":\"Coupon\",\"Receipt\":\"Receipt\",\"Place Order\":\"Place Order\",\"Return to Website\":\"Return to Website\",\"Paystack\":\"Paystack\",\"Flutterwave\":\"Flutterwave\",\"Razorpay\":\"Razorpay\",\"Instamojo\":\"Instamojo\",\"Paytm\":\"Paytm\",\"PayUmoney\":\"PayUmoney\",\"Mollie\":\"Mollie\",\"Mercadopago\":\"Mercadopago\",\"Shipping Charges\":\"Shipping Charges\",\"Delivery Date\":\"Delivery Date\",\"Delivery Time\":\"Delivery Time\",\"Ready to Serve\":\"Ready to Serve\",\"Served\":\"Served\",\"Ordered From\":\"Ordered From\",\"Website Menu\":\"Website Menu\",\"QR Menu\":\"QR Menu\",\"Complete\":\"Complete\",\"Working Hours\":\"Working Hours\",\"Return to Menu\":\"Return to Menu\",\"Apply\":\"Apply\",\"Token No\":\"Token No\",\"Postal Code\":\"Postal Code\",\"Billing Address will be Same as Shipping Address\":\"Billing Address will be Same as Shipping Address\",\"Delivery Area\":\"Delivery Area\",\"Call Waiter\":\"Call Waiter\",\"Table\":\"Table\",\"Select a Table\":\"Select a Table\",\"Restaurant is informed!\":\"Restaurant is informed!\",\"Add_To_Menus\":\"Add to Menus\",\"NO SPECIAL PRODUCT FOUND!\":\"NO SPECIAL PRODUCT FOUND!\",\"NO MEMBERS FOUND!\":\"NO MEMBERS FOUND!\",\"NO CLIEND FOUND!\":\"NO CLIEND FOUND!\",\"NO BLOG POST FOUND!\":\"NO BLOG POST FOUND!\",\"NO FAQ FOUND!\":\"NO FAQ FOUND!\",\"NO GALLERY IMAGE FOUND!\":\"NO GALLERY IMAGE FOUND!\",\"NO TEAM FOUND!\":\"NO TEAM FOUND!\",\"ALL\":\"ALL\",\"Filter\":\"Filter\",\"Filter_By_Price\":\"Filter By Price\",\"Show_All\":\"Show All\",\"Cart_is_empty\":\"Cart is empty\",\"On_Table\":\"On Table\",\"Home_Delivery\":\"Home Delivery\",\"Select_a_postal_code\":\"Select a postal code\",\"Select\":\"Select\",\"Type\":\"Type\",\"Item Total\":\"Item Total\",\"No Menu Found!\":\"No Menu Found!\",\"You are lost\":\"You are lost\",\"Get Back to Home\":\"Get Back to Home\",\"Addons\":\"Addons\",\"Subcategory\":\"Subcategory\",\"Review\":\"Review\",\"Blog Details\":\"Blog Details\",\"Career Details\":\"Career Details\",\"Enter your card number\":\"Enter your card number\",\"Enter expiry month\":\"Enter expiry month\",\"Enter expiry year\":\"Enter expiry year\",\"Enter card code\":\"Enter card code\",\"Select a time frame\":\"Select a time frame\",\"Select Addons\":\"Select Addons\",\"Authorize\":\"Authorize\",\"to leave a rating\":\"to leave a rating\",\"Website\":\"Website\",\"QR\":\"QR\",\"Pick_Up\":\"Pick Up\",\"Pick UP\":\"Pick UP\",\"Subtotal\":\"Subtotal\",\"Grand Total\":\"Grand Total\",\"Completed\":\"Completed\",\"Yes\":\"Yes\",\"No\":\"No\",\"Select a Time Frame\":\"Select a Time Frame\",\"Receipt image must be .jpg \\/ .jpeg \\/ .png\":\"Receipt image must be .jpg \\/ .jpeg \\/ .png\",\"Page Not Found\":\"Page Not Found\",\"January\":\"January\",\"February\":\"February\",\"March\":\"March\",\"April\":\"April\",\"May\":\"May\",\"June\":\"June\",\"July\":\"July\",\"August\":\"August\",\"September\":\"September\",\"October\":\"October\",\"November\":\"November\",\"December\":\"December\",\"Monday\":\"Mo\",\"Tuesday\":\"Tu\",\"Wednesday\":\"We\",\"Thursday\":\"Th\",\"Friday\":\"Fr\",\"Saturday\":\"Sa\",\"Sunday\":\"Su\",\"Showing\":\"Showing\",\"to\":\"to\",\"of\":\"of\",\"entries\":\"entries\",\"Show\":\"Show\",\"Extras\":\"Extras\",\"About Us\":\"About Us\",\"No Special Food\":\"No Special Food\",\"Subscribe\":\"Subscribe\",\"Useful Links\":\"Useful Links\",\"View More\":\"View More\",\"By\":\"By\",\"Stay update with us and get offer!\":\"Stay update with us and get offer!\",\"Identity Number\":\"Identity Number\",\"Zip Code\":\"Zip Code\"}', 15, NULL, '2024-02-18 19:57:22', '2024-08-20 23:15:14'),
(79, 'English', 'en', 1, 0, '{\"Home\":\"Home\",\"Menu\":\"Menu\",\"Items\":\"Items\",\"Team\":\"Team\",\"Teams\":\"Teams\",\"Contact\":\"Contact\",\"Gallery\":\"Gallery\",\"Team Members\":\"Team Members\",\"Cart\":\"Cart\",\"Reservation\":\"Reservation\",\"Blog\":\"Blog\",\"Add Cart\":\"Add Cart\",\"Opening Time\":\"Opening Time\",\"Buy Now\":\"Buy Now\",\"Discover Food Menu\":\"Discover Food Menu\",\"View All Items\":\"View All Items\",\"Our\":\"Our\",\"Special\":\"Special\",\"Good\":\"Good\",\"Food\":\"Food\",\"Price\":\"Price\",\"View All Menu List\":\"View All Menu List\",\"Product Not Found\":\"Product Not Found\",\"Stars\":\"Stars\",\"Read More\":\"Read More\",\"Book A Table\":\"Book A Table\",\"Full Name\":\"Full Name\",\"Phone\":\"Phone\",\"Date\":\"Date\",\"Time\":\"Time\",\"Person\":\"Person\",\"Book Table\":\"Book Table\",\"Our Blog\":\"Our Blog\",\"No Blogs\":\"No Blogs\",\"Share\":\"Share\",\"All Categories\":\"All Categories\",\"Contact Us\":\"Contact Us\",\"Your Name\":\"Your Name\",\"Email Address\":\"Email Address\",\"Subject\":\"Subject\",\"Write a message\":\"Write a message\",\"Submit Now\":\"Submit Now\",\"Career\":\"Career\",\"Job Details\":\"Job Details\",\"Our Gallery\":\"Our Gallery\",\"FAQ\":\"FAQ\",\"Photos Action\":\"Photos Action\",\"Our Awesome Gallery\":\"Our Awesome Gallery\",\"Exparts Our Team\":\"Exparts Our Team\",\"Your Cart\":\"Your Cart\",\"Total\":\"Total\",\"Products\":\"Products\",\"Product\":\"Product\",\"Product Title\":\"Product Title\",\"Variations\":\"Variations\",\"Variation\":\"Variation\",\"Add On\'s\":\"Add On\'s\",\"Ordered Products\":\"Ordered Products\",\"Select Variation\":\"Select Variation\",\"Select Add On\'s\":\"Select Add On\'s\",\"Optional\":\"Optional\",\"Add to Cart\":\"Add to Cart\",\"Quantity\":\"Quantity\",\"Availability\":\"Availability\",\"Item(s)\":\"Item(s)\",\"Remove\":\"Remove\",\"Avilable Now\":\"Avilable Now\",\"Out Of Stock\":\"Out Of Stock\",\"Cart is empty!\":\"Cart is empty!\",\"Checkout\":\"Checkout\",\"Update Cart\":\"Update Cart\",\"Country\":\"Country\",\"First Name\":\"First Name\",\"Last Name\":\"Last Name\",\"Address\":\"Address\",\"Town \\/ City\":\"Town \\/ City\",\"Contact Email\":\"Contact Email\",\"Shipping Methods\":\"Shipping Methods\",\"Method\":\"Method\",\"Cost\":\"Cost\",\"Free Shipping\":\"Free Shipping\",\"10 to 15 days\":\"10 to 15 days\",\"Order Summary\":\"Order Summary\",\"Cart is empty\":\"Cart is empty\",\"Cart Totals\":\"Cart Totals\",\"Cart Subtotal\":\"Cart Subtotal\",\"Shipping Charge\":\"Shipping Charge\",\"Paid Amount\":\"Paid Amount\",\"Payment Method\":\"Payment Method\",\"Shipping Method\":\"Shipping Method\",\"Order Total\":\"Order Total\",\"Pay Via\":\"Pay Via\",\"Paypal\":\"Paypal\",\"Stripe\":\"Stripe\",\"Card Number\":\"Card Number\",\"CVC\":\"CVC\",\"Month\":\"Month\",\"Year\":\"Year\",\"Pleace Order\":\"Pleace Order\",\"Dashboard\":\"Dashboard\",\"Edit Profile\":\"Edit Profile\",\"Shipping Details\":\"Shipping Details\",\"Billing Details\":\"Billing Details\",\"Change Password\":\"Change Password\",\"My Orders\":\"My Orders\",\"Logout\":\"Logout\",\"Edit Billing Details\":\"Edit Billing Details\",\"Billing First Name\":\"Billing First Name\",\"Billing Last Name\":\"Billing Last Name\",\"Billing Email\":\"Billing Email\",\"Billing User Name\":\"Billing User Name\",\"Billing Phone\":\"Billing Phone\",\"Billing City\":\"Billing City\",\"Billing State\":\"Billing State\",\"Billing Country\":\"Billing Country\",\"Billing Address\":\"Billing Address\",\"Submit\":\"Submit\",\"Reset Password\":\"Reset Password\",\"Re-Type Password\":\"Re-Type Password\",\"Account Information\":\"Account Information\",\"User\":\"User\",\"Username\":\"Username\",\"State\":\"State\",\"City\":\"City\",\"Total Orders\":\"Total Orders\",\"Recent Orders\":\"Recent Orders\",\"Order Number\":\"Order Number\",\"Total Price\":\"Total Price\",\"Action\":\"Action\",\"No Orders\":\"No Orders\",\"Forgot Password\":\"Forgot Password\",\"Login Now\":\"Login Now\",\"Send Mail\":\"Send Mail\",\"Login\":\"Login\",\"Password\":\"Password\",\"LOG IN\":\"LOG IN\",\"Don\'t have an account\":\"Don\'t have an account\",\"Lost your password\":\"Lost your password\",\"Order Details\":\"Order Details\",\"Pending\":\"Pending\",\"Received\":\"Received\",\"Preparing\":\"Preparing\",\"Ready to pick up\":\"Ready to pick up\",\"Picked up\":\"Picked up\",\"Delivered\":\"Delivered\",\"Cancelled\":\"Cancelled\",\"My Order Details\":\"My Order Details\",\"Order Date\":\"Order Date\",\"Order\":\"Order\",\"Download Invoice\":\"Download Invoice\",\"Payment Status\":\"Payment Status\",\"Image\":\"Image\",\"Name\":\"Name\",\"Details\":\"Details\",\"back\":\"back\",\"All Orders\":\"All Orders\",\"My Profile\":\"My Profile\",\"Upload\":\"Upload\",\"Register\":\"Register\",\"Confirmation Password\":\"Confirmation Password\",\"Already have an account ?\":\"Already have an account ?\",\"To login\":\"To login\",\"Click Here\":\"Click Here\",\"Current Password\":\"Current Password\",\"New Password\":\"New Password\",\"Confirm Password\":\"Confirm Password\",\"Edit Shipping Details\":\"Edit Shipping Details\",\"Shipping First Name\":\"Shipping First Name\",\"Shipping Last Name\":\"Shipping Last Name\",\"Shipping Email\":\"Shipping Email\",\"Shipping User Name\":\"Shipping User Name\",\"Shipping Phone\":\"Shipping Phone\",\"Shipping City\":\"Shipping City\",\"Shipping State\":\"Shipping State\",\"Shipping Country\":\"Shipping Country\",\"Shipping Address\":\"Shipping Address\",\"Order Notes\":\"Order Notes\",\"Category\":\"Category\",\"All\":\"All\",\"Product Not Fount\":\"Product Not Fount\",\"Filter Products\":\"Filter Products\",\"Star and higher\":\"Star and higher\",\"Admin\":\"Admin\",\"Reviews For\":\"Reviews For\",\"Success\":\"Success\",\"Your order has been placed successfully!\":\"Your order has been placed successfully!\",\"We have sent you a mail with an invoice.\":\"We have sent you a mail with an invoice.\",\"Thank you.\":\"Thank you.\",\"You\'re lost\":\"You\'re lost\",\"The page you are looking for might have been moved, renamed, or might never existed.\":\"The page you are looking for might have been moved, renamed, or might never existed.\",\"Back Home\":\"Back Home\",\"Reviews(S)\":\"Reviews(S)\",\"IN STOCK\":\"IN STOCK\",\"OUT OF STOCK\":\"OUT OF STOCK\",\"Qty\":\"Qty\",\"Description\":\"Description\",\"Comments\":\"Comments\",\"Reviews\":\"Reviews\",\"Comment\":\"Comment\",\"Rating\":\"Rating\",\"Newest Product\":\"Newest Product\",\"Oldest Product\":\"Oldest Product\",\"Price: High To Low\":\"Price: High To Low\",\"Price: Low To High\":\"Price: Low To High\",\"Search Keywords\":\"Search Keywords\",\"Subscribe Here\":\"Subscribe Here\",\"Enter Your Email\":\"Enter Your Email\",\"Jobs\":\"Jobs\",\"NO JOB FOUND\":\"NO JOB FOUND\",\"Deadline\":\"Deadline\",\"Educational Experience\":\"Educational Experience\",\"Work Experience\":\"Work Experience\",\"Search Jobs\":\"Search Jobs\",\"Vacancy\":\"Vacancy\",\"Job Responsibilities\":\"Job Responsibilities\",\"Employment Status\":\"Employment Status\",\"Educational Requirements\":\"Educational Requirements\",\"Experience Requirements\":\"Experience Requirements\",\"Additional Requirements\":\"Additional Requirements\",\"Job Location\":\"Job Location\",\"Salary\":\"Salary\",\"Compensation & Other Benefits\":\"Compensation & Other Benefits\",\"Read Before Apply\":\"Read Before Apply\",\"Job Categories\":\"Job Categories\",\"Send your CV to\":\"Send your CV to\",\"Checkout as Guest\":\"Checkout as Guest\",\"OR\":\"OR\",\"Login via Facebook\":\"Login via Facebook\",\"Login via Google\":\"Login via Google\",\"Serving Method\":\"Serving Method\",\"On Table\":\"On Table\",\"Home Delivery\":\"Home Delivery\",\"Information\":\"Information\",\"Table Number\":\"Table Number\",\"Waiter Name\":\"Waiter Name\",\"Pick up Date\":\"Pick up Date\",\"Pick up Time\":\"Pick up Time\",\"Cart Total\":\"Cart Total\",\"Discount\":\"Discount\",\"Tax\":\"Tax\",\"Coupon\":\"Coupon\",\"Receipt\":\"Receipt\",\"Place Order\":\"Place Order\",\"Return to Website\":\"Return to Website\",\"Paystack\":\"Paystack\",\"Flutterwave\":\"Flutterwave\",\"Razorpay\":\"Razorpay\",\"Instamojo\":\"Instamojo\",\"Paytm\":\"Paytm\",\"PayUmoney\":\"PayUmoney\",\"Mollie\":\"Mollie\",\"Mercadopago\":\"Mercadopago\",\"Shipping Charges\":\"Shipping Charges\",\"Delivery Date\":\"Delivery Date\",\"Delivery Time\":\"Delivery Time\",\"Ready to Serve\":\"Ready to Serve\",\"Served\":\"Served\",\"Ordered From\":\"Ordered From\",\"Website Menu\":\"Website Menu\",\"QR Menu\":\"QR Menu\",\"Complete\":\"Complete\",\"Working Hours\":\"Working Hours\",\"Return to Menu\":\"Return to Menu\",\"Apply\":\"Apply\",\"Token No\":\"Token No\",\"Postal Code\":\"Postal Code\",\"Billing Address will be Same as Shipping Address\":\"Billing Address will be Same as Shipping Address\",\"Delivery Area\":\"Delivery Area\",\"Call Waiter\":\"Call Waiter\",\"Table\":\"Table\",\"Select a Table\":\"Select a Table\",\"Restaurant is informed!\":\"Restaurant is informed!\",\"Add_To_Menus\":\"Add to Menus\",\"NO SPECIAL PRODUCT FOUND!\":\"NO SPECIAL PRODUCT FOUND!\",\"NO MEMBERS FOUND!\":\"NO MEMBERS FOUND!\",\"NO CLIEND FOUND!\":\"NO CLIEND FOUND!\",\"NO BLOG POST FOUND!\":\"NO BLOG POST FOUND!\",\"NO FAQ FOUND!\":\"NO FAQ FOUND!\",\"NO GALLERY IMAGE FOUND!\":\"NO GALLERY IMAGE FOUND!\",\"NO TEAM FOUND!\":\"NO TEAM FOUND!\",\"ALL\":\"ALL\",\"Filter\":\"Filter\",\"Filter_By_Price\":\"Filter By Price\",\"Show_All\":\"Show All\",\"Cart_is_empty\":\"Cart is empty\",\"On_Table\":\"On Table\",\"Home_Delivery\":\"Home Delivery\",\"Select_a_postal_code\":\"Select a postal code\",\"Select\":\"Select\",\"Type\":\"Type\",\"Item Total\":\"Item Total\",\"No Menu Found!\":\"No Menu Found!\",\"You are lost\":\"You are lost\",\"Get Back to Home\":\"Get Back to Home\",\"Addons\":\"Addons\",\"Subcategory\":\"Subcategory\",\"Review\":\"Review\",\"Blog Details\":\"Blog Details\",\"Career Details\":\"Career Details\",\"Enter your card number\":\"Enter your card number\",\"Enter expiry month\":\"Enter expiry month\",\"Enter expiry year\":\"Enter expiry year\",\"Enter card code\":\"Enter card code\",\"Select a time frame\":\"Select a time frame\",\"Select Addons\":\"Select Addons\",\"Authorize\":\"Authorize\",\"to leave a rating\":\"to leave a rating\",\"Website\":\"Website\",\"QR\":\"QR\",\"Pick_Up\":\"Pick Up\",\"Pick UP\":\"Pick UP\",\"Subtotal\":\"Subtotal\",\"Grand Total\":\"Grand Total\",\"Completed\":\"Completed\",\"Yes\":\"Yes\",\"No\":\"No\",\"Select a Time Frame\":\"Select a Time Frame\",\"Receipt image must be .jpg \\/ .jpeg \\/ .png\":\"Receipt image must be .jpg \\/ .jpeg \\/ .png\",\"Page Not Found\":\"Page Not Found\",\"January\":\"January\",\"February\":\"February\",\"March\":\"March\",\"April\":\"April\",\"May\":\"May\",\"June\":\"June\",\"July\":\"July\",\"August\":\"August\",\"September\":\"September\",\"October\":\"October\",\"November\":\"November\",\"December\":\"December\",\"Monday\":\"Mo\",\"Tuesday\":\"Tu\",\"Wednesday\":\"We\",\"Thursday\":\"Th\",\"Friday\":\"Fr\",\"Saturday\":\"Sa\",\"Sunday\":\"Su\",\"Showing\":\"Showing\",\"to\":\"to\",\"of\":\"of\",\"entries\":\"entries\",\"Show\":\"Show\",\"Extras\":\"Extras\",\"About Us\":\"About Us\",\"No Special Food\":\"No Special Food\",\"Subscribe\":\"Subscribe\",\"Useful Links\":\"Useful Links\",\"View More\":\"View More\",\"By\":\"By\",\"Stay update with us and get offer!\":\"Stay update with us and get offer!\",\"Identity Number\":\"Identity Number\",\"Zip Code\":\"Zip Code\"}', 16, NULL, '2024-02-19 14:54:43', '2024-08-20 23:15:14'),
(80, 'English', 'en', 1, 0, '{\"Home\":\"Home\",\"Menu\":\"Menu\",\"Items\":\"Items\",\"Team\":\"Team\",\"Teams\":\"Teams\",\"Contact\":\"Contact\",\"Gallery\":\"Gallery\",\"Team Members\":\"Team Members\",\"Cart\":\"Cart\",\"Reservation\":\"Reservation\",\"Blog\":\"Blog\",\"Add Cart\":\"Add Cart\",\"Opening Time\":\"Opening Time\",\"Buy Now\":\"Buy Now\",\"Discover Food Menu\":\"Discover Food Menu\",\"View All Items\":\"View All Items\",\"Our\":\"Our\",\"Special\":\"Special\",\"Good\":\"Good\",\"Food\":\"Food\",\"Price\":\"Price\",\"View All Menu List\":\"View All Menu List\",\"Product Not Found\":\"Product Not Found\",\"Stars\":\"Stars\",\"Read More\":\"Read More\",\"Book A Table\":\"Book A Table\",\"Full Name\":\"Full Name\",\"Phone\":\"Phone\",\"Date\":\"Date\",\"Time\":\"Time\",\"Person\":\"Person\",\"Book Table\":\"Book Table\",\"Our Blog\":\"Our Blog\",\"No Blogs\":\"No Blogs\",\"Share\":\"Share\",\"All Categories\":\"All Categories\",\"Contact Us\":\"Contact Us\",\"Your Name\":\"Your Name\",\"Email Address\":\"Email Address\",\"Subject\":\"Subject\",\"Write a message\":\"Write a message\",\"Submit Now\":\"Submit Now\",\"Career\":\"Career\",\"Job Details\":\"Job Details\",\"Our Gallery\":\"Our Gallery\",\"FAQ\":\"FAQ\",\"Photos Action\":\"Photos Action\",\"Our Awesome Gallery\":\"Our Awesome Gallery\",\"Exparts Our Team\":\"Exparts Our Team\",\"Your Cart\":\"Your Cart\",\"Total\":\"Total\",\"Products\":\"Products\",\"Product\":\"Product\",\"Product Title\":\"Product Title\",\"Variations\":\"Variations\",\"Variation\":\"Variation\",\"Add On\'s\":\"Add On\'s\",\"Ordered Products\":\"Ordered Products\",\"Select Variation\":\"Select Variation\",\"Select Add On\'s\":\"Select Add On\'s\",\"Optional\":\"Optional\",\"Add to Cart\":\"Add to Cart\",\"Quantity\":\"Quantity\",\"Availability\":\"Availability\",\"Item(s)\":\"Item(s)\",\"Remove\":\"Remove\",\"Avilable Now\":\"Avilable Now\",\"Out Of Stock\":\"Out Of Stock\",\"Cart is empty!\":\"Cart is empty!\",\"Checkout\":\"Checkout\",\"Update Cart\":\"Update Cart\",\"Country\":\"Country\",\"First Name\":\"First Name\",\"Last Name\":\"Last Name\",\"Address\":\"Address\",\"Town \\/ City\":\"Town \\/ City\",\"Contact Email\":\"Contact Email\",\"Shipping Methods\":\"Shipping Methods\",\"Method\":\"Method\",\"Cost\":\"Cost\",\"Free Shipping\":\"Free Shipping\",\"10 to 15 days\":\"10 to 15 days\",\"Order Summary\":\"Order Summary\",\"Cart is empty\":\"Cart is empty\",\"Cart Totals\":\"Cart Totals\",\"Cart Subtotal\":\"Cart Subtotal\",\"Shipping Charge\":\"Shipping Charge\",\"Paid Amount\":\"Paid Amount\",\"Payment Method\":\"Payment Method\",\"Shipping Method\":\"Shipping Method\",\"Order Total\":\"Order Total\",\"Pay Via\":\"Pay Via\",\"Paypal\":\"Paypal\",\"Stripe\":\"Stripe\",\"Card Number\":\"Card Number\",\"CVC\":\"CVC\",\"Month\":\"Month\",\"Year\":\"Year\",\"Pleace Order\":\"Pleace Order\",\"Dashboard\":\"Dashboard\",\"Edit Profile\":\"Edit Profile\",\"Shipping Details\":\"Shipping Details\",\"Billing Details\":\"Billing Details\",\"Change Password\":\"Change Password\",\"My Orders\":\"My Orders\",\"Logout\":\"Logout\",\"Edit Billing Details\":\"Edit Billing Details\",\"Billing First Name\":\"Billing First Name\",\"Billing Last Name\":\"Billing Last Name\",\"Billing Email\":\"Billing Email\",\"Billing User Name\":\"Billing User Name\",\"Billing Phone\":\"Billing Phone\",\"Billing City\":\"Billing City\",\"Billing State\":\"Billing State\",\"Billing Country\":\"Billing Country\",\"Billing Address\":\"Billing Address\",\"Submit\":\"Submit\",\"Reset Password\":\"Reset Password\",\"Re-Type Password\":\"Re-Type Password\",\"Account Information\":\"Account Information\",\"User\":\"User\",\"Username\":\"Username\",\"State\":\"State\",\"City\":\"City\",\"Total Orders\":\"Total Orders\",\"Recent Orders\":\"Recent Orders\",\"Order Number\":\"Order Number\",\"Total Price\":\"Total Price\",\"Action\":\"Action\",\"No Orders\":\"No Orders\",\"Forgot Password\":\"Forgot Password\",\"Login Now\":\"Login Now\",\"Send Mail\":\"Send Mail\",\"Login\":\"Login\",\"Password\":\"Password\",\"LOG IN\":\"LOG IN\",\"Don\'t have an account\":\"Don\'t have an account\",\"Lost your password\":\"Lost your password\",\"Order Details\":\"Order Details\",\"Pending\":\"Pending\",\"Received\":\"Received\",\"Preparing\":\"Preparing\",\"Ready to pick up\":\"Ready to pick up\",\"Picked up\":\"Picked up\",\"Delivered\":\"Delivered\",\"Cancelled\":\"Cancelled\",\"My Order Details\":\"My Order Details\",\"Order Date\":\"Order Date\",\"Order\":\"Order\",\"Download Invoice\":\"Download Invoice\",\"Payment Status\":\"Payment Status\",\"Image\":\"Image\",\"Name\":\"Name\",\"Details\":\"Details\",\"back\":\"back\",\"All Orders\":\"All Orders\",\"My Profile\":\"My Profile\",\"Upload\":\"Upload\",\"Register\":\"Register\",\"Confirmation Password\":\"Confirmation Password\",\"Already have an account ?\":\"Already have an account ?\",\"To login\":\"To login\",\"Click Here\":\"Click Here\",\"Current Password\":\"Current Password\",\"New Password\":\"New Password\",\"Confirm Password\":\"Confirm Password\",\"Edit Shipping Details\":\"Edit Shipping Details\",\"Shipping First Name\":\"Shipping First Name\",\"Shipping Last Name\":\"Shipping Last Name\",\"Shipping Email\":\"Shipping Email\",\"Shipping User Name\":\"Shipping User Name\",\"Shipping Phone\":\"Shipping Phone\",\"Shipping City\":\"Shipping City\",\"Shipping State\":\"Shipping State\",\"Shipping Country\":\"Shipping Country\",\"Shipping Address\":\"Shipping Address\",\"Order Notes\":\"Order Notes\",\"Category\":\"Category\",\"All\":\"All\",\"Product Not Fount\":\"Product Not Fount\",\"Filter Products\":\"Filter Products\",\"Star and higher\":\"Star and higher\",\"Admin\":\"Admin\",\"Reviews For\":\"Reviews For\",\"Success\":\"Success\",\"Your order has been placed successfully!\":\"Your order has been placed successfully!\",\"We have sent you a mail with an invoice.\":\"We have sent you a mail with an invoice.\",\"Thank you.\":\"Thank you.\",\"You\'re lost\":\"You\'re lost\",\"The page you are looking for might have been moved, renamed, or might never existed.\":\"The page you are looking for might have been moved, renamed, or might never existed.\",\"Back Home\":\"Back Home\",\"Reviews(S)\":\"Reviews(S)\",\"IN STOCK\":\"IN STOCK\",\"OUT OF STOCK\":\"OUT OF STOCK\",\"Qty\":\"Qty\",\"Description\":\"Description\",\"Comments\":\"Comments\",\"Reviews\":\"Reviews\",\"Comment\":\"Comment\",\"Rating\":\"Rating\",\"Newest Product\":\"Newest Product\",\"Oldest Product\":\"Oldest Product\",\"Price: High To Low\":\"Price: High To Low\",\"Price: Low To High\":\"Price: Low To High\",\"Search Keywords\":\"Search Keywords\",\"Subscribe Here\":\"Subscribe Here\",\"Enter Your Email\":\"Enter Your Email\",\"Jobs\":\"Jobs\",\"NO JOB FOUND\":\"NO JOB FOUND\",\"Deadline\":\"Deadline\",\"Educational Experience\":\"Educational Experience\",\"Work Experience\":\"Work Experience\",\"Search Jobs\":\"Search Jobs\",\"Vacancy\":\"Vacancy\",\"Job Responsibilities\":\"Job Responsibilities\",\"Employment Status\":\"Employment Status\",\"Educational Requirements\":\"Educational Requirements\",\"Experience Requirements\":\"Experience Requirements\",\"Additional Requirements\":\"Additional Requirements\",\"Job Location\":\"Job Location\",\"Salary\":\"Salary\",\"Compensation & Other Benefits\":\"Compensation & Other Benefits\",\"Read Before Apply\":\"Read Before Apply\",\"Job Categories\":\"Job Categories\",\"Send your CV to\":\"Send your CV to\",\"Checkout as Guest\":\"Checkout as Guest\",\"OR\":\"OR\",\"Login via Facebook\":\"Login via Facebook\",\"Login via Google\":\"Login via Google\",\"Serving Method\":\"Serving Method\",\"On Table\":\"On Table\",\"Home Delivery\":\"Home Delivery\",\"Information\":\"Information\",\"Table Number\":\"Table Number\",\"Waiter Name\":\"Waiter Name\",\"Pick up Date\":\"Pick up Date\",\"Pick up Time\":\"Pick up Time\",\"Cart Total\":\"Cart Total\",\"Discount\":\"Discount\",\"Tax\":\"Tax\",\"Coupon\":\"Coupon\",\"Receipt\":\"Receipt\",\"Place Order\":\"Place Order\",\"Return to Website\":\"Return to Website\",\"Paystack\":\"Paystack\",\"Flutterwave\":\"Flutterwave\",\"Razorpay\":\"Razorpay\",\"Instamojo\":\"Instamojo\",\"Paytm\":\"Paytm\",\"PayUmoney\":\"PayUmoney\",\"Mollie\":\"Mollie\",\"Mercadopago\":\"Mercadopago\",\"Shipping Charges\":\"Shipping Charges\",\"Delivery Date\":\"Delivery Date\",\"Delivery Time\":\"Delivery Time\",\"Ready to Serve\":\"Ready to Serve\",\"Served\":\"Served\",\"Ordered From\":\"Ordered From\",\"Website Menu\":\"Website Menu\",\"QR Menu\":\"QR Menu\",\"Complete\":\"Complete\",\"Working Hours\":\"Working Hours\",\"Return to Menu\":\"Return to Menu\",\"Apply\":\"Apply\",\"Token No\":\"Token No\",\"Postal Code\":\"Postal Code\",\"Billing Address will be Same as Shipping Address\":\"Billing Address will be Same as Shipping Address\",\"Delivery Area\":\"Delivery Area\",\"Call Waiter\":\"Call Waiter\",\"Table\":\"Table\",\"Select a Table\":\"Select a Table\",\"Restaurant is informed!\":\"Restaurant is informed!\",\"Add_To_Menus\":\"Add to Menus\",\"NO SPECIAL PRODUCT FOUND!\":\"NO SPECIAL PRODUCT FOUND!\",\"NO MEMBERS FOUND!\":\"NO MEMBERS FOUND!\",\"NO CLIEND FOUND!\":\"NO CLIEND FOUND!\",\"NO BLOG POST FOUND!\":\"NO BLOG POST FOUND!\",\"NO FAQ FOUND!\":\"NO FAQ FOUND!\",\"NO GALLERY IMAGE FOUND!\":\"NO GALLERY IMAGE FOUND!\",\"NO TEAM FOUND!\":\"NO TEAM FOUND!\",\"ALL\":\"ALL\",\"Filter\":\"Filter\",\"Filter_By_Price\":\"Filter By Price\",\"Show_All\":\"Show All\",\"Cart_is_empty\":\"Cart is empty\",\"On_Table\":\"On Table\",\"Home_Delivery\":\"Home Delivery\",\"Select_a_postal_code\":\"Select a postal code\",\"Select\":\"Select\",\"Type\":\"Type\",\"Item Total\":\"Item Total\",\"No Menu Found!\":\"No Menu Found!\",\"You are lost\":\"You are lost\",\"Get Back to Home\":\"Get Back to Home\",\"Addons\":\"Addons\",\"Subcategory\":\"Subcategory\",\"Review\":\"Review\",\"Blog Details\":\"Blog Details\",\"Career Details\":\"Career Details\",\"Enter your card number\":\"Enter your card number\",\"Enter expiry month\":\"Enter expiry month\",\"Enter expiry year\":\"Enter expiry year\",\"Enter card code\":\"Enter card code\",\"Select a time frame\":\"Select a time frame\",\"Select Addons\":\"Select Addons\",\"Authorize\":\"Authorize\",\"to leave a rating\":\"to leave a rating\",\"Website\":\"Website\",\"QR\":\"QR\",\"Pick_Up\":\"Pick Up\",\"Pick UP\":\"Pick UP\",\"Subtotal\":\"Subtotal\",\"Grand Total\":\"Grand Total\",\"Completed\":\"Completed\",\"Yes\":\"Yes\",\"No\":\"No\",\"Select a Time Frame\":\"Select a Time Frame\",\"Receipt image must be .jpg \\/ .jpeg \\/ .png\":\"Receipt image must be .jpg \\/ .jpeg \\/ .png\",\"Page Not Found\":\"Page Not Found\",\"January\":\"January\",\"February\":\"February\",\"March\":\"March\",\"April\":\"April\",\"May\":\"May\",\"June\":\"June\",\"July\":\"July\",\"August\":\"August\",\"September\":\"September\",\"October\":\"October\",\"November\":\"November\",\"December\":\"December\",\"Monday\":\"Mo\",\"Tuesday\":\"Tu\",\"Wednesday\":\"We\",\"Thursday\":\"Th\",\"Friday\":\"Fr\",\"Saturday\":\"Sa\",\"Sunday\":\"Su\",\"Showing\":\"Showing\",\"to\":\"to\",\"of\":\"of\",\"entries\":\"entries\",\"Show\":\"Show\",\"Extras\":\"Extras\",\"About Us\":\"About Us\",\"No Special Food\":\"No Special Food\",\"Subscribe\":\"Subscribe\",\"Useful Links\":\"Useful Links\",\"View More\":\"View More\",\"By\":\"By\",\"Stay update with us and get offer!\":\"Stay update with us and get offer!\",\"Identity Number\":\"Identity Number\",\"Zip Code\":\"Zip Code\"}', 17, NULL, '2024-02-19 15:23:05', '2024-08-20 23:15:14'),
(81, 'English', 'en', 1, 0, '{\"Home\":\"Home\",\"Menu\":\"Menu\",\"Items\":\"Items\",\"Team\":\"Team\",\"Teams\":\"Teams\",\"Contact\":\"Contact\",\"Gallery\":\"Gallery\",\"Team Members\":\"Team Members\",\"Cart\":\"Cart\",\"Reservation\":\"Reservation\",\"Blog\":\"Blog\",\"Add Cart\":\"Add Cart\",\"Opening Time\":\"Opening Time\",\"Buy Now\":\"Buy Now\",\"Discover Food Menu\":\"Discover Food Menu\",\"View All Items\":\"View All Items\",\"Our\":\"Our\",\"Special\":\"Special\",\"Good\":\"Good\",\"Food\":\"Food\",\"Price\":\"Price\",\"View All Menu List\":\"View All Menu List\",\"Product Not Found\":\"Product Not Found\",\"Stars\":\"Stars\",\"Read More\":\"Read More\",\"Book A Table\":\"Book A Table\",\"Full Name\":\"Full Name\",\"Phone\":\"Phone\",\"Date\":\"Date\",\"Time\":\"Time\",\"Person\":\"Person\",\"Book Table\":\"Book Table\",\"Our Blog\":\"Our Blog\",\"No Blogs\":\"No Blogs\",\"Share\":\"Share\",\"All Categories\":\"All Categories\",\"Contact Us\":\"Contact Us\",\"Your Name\":\"Your Name\",\"Email Address\":\"Email Address\",\"Subject\":\"Subject\",\"Write a message\":\"Write a message\",\"Submit Now\":\"Submit Now\",\"Career\":\"Career\",\"Job Details\":\"Job Details\",\"Our Gallery\":\"Our Gallery\",\"FAQ\":\"FAQ\",\"Photos Action\":\"Photos Action\",\"Our Awesome Gallery\":\"Our Awesome Gallery\",\"Exparts Our Team\":\"Exparts Our Team\",\"Your Cart\":\"Your Cart\",\"Total\":\"Total\",\"Products\":\"Products\",\"Product\":\"Product\",\"Product Title\":\"Product Title\",\"Variations\":\"Variations\",\"Variation\":\"Variation\",\"Add On\'s\":\"Add On\'s\",\"Ordered Products\":\"Ordered Products\",\"Select Variation\":\"Select Variation\",\"Select Add On\'s\":\"Select Add On\'s\",\"Optional\":\"Optional\",\"Add to Cart\":\"Add to Cart\",\"Quantity\":\"Quantity\",\"Availability\":\"Availability\",\"Item(s)\":\"Item(s)\",\"Remove\":\"Remove\",\"Avilable Now\":\"Avilable Now\",\"Out Of Stock\":\"Out Of Stock\",\"Cart is empty!\":\"Cart is empty!\",\"Checkout\":\"Checkout\",\"Update Cart\":\"Update Cart\",\"Country\":\"Country\",\"First Name\":\"First Name\",\"Last Name\":\"Last Name\",\"Address\":\"Address\",\"Town \\/ City\":\"Town \\/ City\",\"Contact Email\":\"Contact Email\",\"Shipping Methods\":\"Shipping Methods\",\"Method\":\"Method\",\"Cost\":\"Cost\",\"Free Shipping\":\"Free Shipping\",\"10 to 15 days\":\"10 to 15 days\",\"Order Summary\":\"Order Summary\",\"Cart is empty\":\"Cart is empty\",\"Cart Totals\":\"Cart Totals\",\"Cart Subtotal\":\"Cart Subtotal\",\"Shipping Charge\":\"Shipping Charge\",\"Paid Amount\":\"Paid Amount\",\"Payment Method\":\"Payment Method\",\"Shipping Method\":\"Shipping Method\",\"Order Total\":\"Order Total\",\"Pay Via\":\"Pay Via\",\"Paypal\":\"Paypal\",\"Stripe\":\"Stripe\",\"Card Number\":\"Card Number\",\"CVC\":\"CVC\",\"Month\":\"Month\",\"Year\":\"Year\",\"Pleace Order\":\"Pleace Order\",\"Dashboard\":\"Dashboard\",\"Edit Profile\":\"Edit Profile\",\"Shipping Details\":\"Shipping Details\",\"Billing Details\":\"Billing Details\",\"Change Password\":\"Change Password\",\"My Orders\":\"My Orders\",\"Logout\":\"Logout\",\"Edit Billing Details\":\"Edit Billing Details\",\"Billing First Name\":\"Billing First Name\",\"Billing Last Name\":\"Billing Last Name\",\"Billing Email\":\"Billing Email\",\"Billing User Name\":\"Billing User Name\",\"Billing Phone\":\"Billing Phone\",\"Billing City\":\"Billing City\",\"Billing State\":\"Billing State\",\"Billing Country\":\"Billing Country\",\"Billing Address\":\"Billing Address\",\"Submit\":\"Submit\",\"Reset Password\":\"Reset Password\",\"Re-Type Password\":\"Re-Type Password\",\"Account Information\":\"Account Information\",\"User\":\"User\",\"Username\":\"Username\",\"State\":\"State\",\"City\":\"City\",\"Total Orders\":\"Total Orders\",\"Recent Orders\":\"Recent Orders\",\"Order Number\":\"Order Number\",\"Total Price\":\"Total Price\",\"Action\":\"Action\",\"No Orders\":\"No Orders\",\"Forgot Password\":\"Forgot Password\",\"Login Now\":\"Login Now\",\"Send Mail\":\"Send Mail\",\"Login\":\"Login\",\"Password\":\"Password\",\"LOG IN\":\"LOG IN\",\"Don\'t have an account\":\"Don\'t have an account\",\"Lost your password\":\"Lost your password\",\"Order Details\":\"Order Details\",\"Pending\":\"Pending\",\"Received\":\"Received\",\"Preparing\":\"Preparing\",\"Ready to pick up\":\"Ready to pick up\",\"Picked up\":\"Picked up\",\"Delivered\":\"Delivered\",\"Cancelled\":\"Cancelled\",\"My Order Details\":\"My Order Details\",\"Order Date\":\"Order Date\",\"Order\":\"Order\",\"Download Invoice\":\"Download Invoice\",\"Payment Status\":\"Payment Status\",\"Image\":\"Image\",\"Name\":\"Name\",\"Details\":\"Details\",\"back\":\"back\",\"All Orders\":\"All Orders\",\"My Profile\":\"My Profile\",\"Upload\":\"Upload\",\"Register\":\"Register\",\"Confirmation Password\":\"Confirmation Password\",\"Already have an account ?\":\"Already have an account ?\",\"To login\":\"To login\",\"Click Here\":\"Click Here\",\"Current Password\":\"Current Password\",\"New Password\":\"New Password\",\"Confirm Password\":\"Confirm Password\",\"Edit Shipping Details\":\"Edit Shipping Details\",\"Shipping First Name\":\"Shipping First Name\",\"Shipping Last Name\":\"Shipping Last Name\",\"Shipping Email\":\"Shipping Email\",\"Shipping User Name\":\"Shipping User Name\",\"Shipping Phone\":\"Shipping Phone\",\"Shipping City\":\"Shipping City\",\"Shipping State\":\"Shipping State\",\"Shipping Country\":\"Shipping Country\",\"Shipping Address\":\"Shipping Address\",\"Order Notes\":\"Order Notes\",\"Category\":\"Category\",\"All\":\"All\",\"Product Not Fount\":\"Product Not Fount\",\"Filter Products\":\"Filter Products\",\"Star and higher\":\"Star and higher\",\"Admin\":\"Admin\",\"Reviews For\":\"Reviews For\",\"Success\":\"Success\",\"Your order has been placed successfully!\":\"Your order has been placed successfully!\",\"We have sent you a mail with an invoice.\":\"We have sent you a mail with an invoice.\",\"Thank you.\":\"Thank you.\",\"You\'re lost\":\"You\'re lost\",\"The page you are looking for might have been moved, renamed, or might never existed.\":\"The page you are looking for might have been moved, renamed, or might never existed.\",\"Back Home\":\"Back Home\",\"Reviews(S)\":\"Reviews(S)\",\"IN STOCK\":\"IN STOCK\",\"OUT OF STOCK\":\"OUT OF STOCK\",\"Qty\":\"Qty\",\"Description\":\"Description\",\"Comments\":\"Comments\",\"Reviews\":\"Reviews\",\"Comment\":\"Comment\",\"Rating\":\"Rating\",\"Newest Product\":\"Newest Product\",\"Oldest Product\":\"Oldest Product\",\"Price: High To Low\":\"Price: High To Low\",\"Price: Low To High\":\"Price: Low To High\",\"Search Keywords\":\"Search Keywords\",\"Subscribe Here\":\"Subscribe Here\",\"Enter Your Email\":\"Enter Your Email\",\"Jobs\":\"Jobs\",\"NO JOB FOUND\":\"NO JOB FOUND\",\"Deadline\":\"Deadline\",\"Educational Experience\":\"Educational Experience\",\"Work Experience\":\"Work Experience\",\"Search Jobs\":\"Search Jobs\",\"Vacancy\":\"Vacancy\",\"Job Responsibilities\":\"Job Responsibilities\",\"Employment Status\":\"Employment Status\",\"Educational Requirements\":\"Educational Requirements\",\"Experience Requirements\":\"Experience Requirements\",\"Additional Requirements\":\"Additional Requirements\",\"Job Location\":\"Job Location\",\"Salary\":\"Salary\",\"Compensation & Other Benefits\":\"Compensation & Other Benefits\",\"Read Before Apply\":\"Read Before Apply\",\"Job Categories\":\"Job Categories\",\"Send your CV to\":\"Send your CV to\",\"Checkout as Guest\":\"Checkout as Guest\",\"OR\":\"OR\",\"Login via Facebook\":\"Login via Facebook\",\"Login via Google\":\"Login via Google\",\"Serving Method\":\"Serving Method\",\"On Table\":\"On Table\",\"Home Delivery\":\"Home Delivery\",\"Information\":\"Information\",\"Table Number\":\"Table Number\",\"Waiter Name\":\"Waiter Name\",\"Pick up Date\":\"Pick up Date\",\"Pick up Time\":\"Pick up Time\",\"Cart Total\":\"Cart Total\",\"Discount\":\"Discount\",\"Tax\":\"Tax\",\"Coupon\":\"Coupon\",\"Receipt\":\"Receipt\",\"Place Order\":\"Place Order\",\"Return to Website\":\"Return to Website\",\"Paystack\":\"Paystack\",\"Flutterwave\":\"Flutterwave\",\"Razorpay\":\"Razorpay\",\"Instamojo\":\"Instamojo\",\"Paytm\":\"Paytm\",\"PayUmoney\":\"PayUmoney\",\"Mollie\":\"Mollie\",\"Mercadopago\":\"Mercadopago\",\"Shipping Charges\":\"Shipping Charges\",\"Delivery Date\":\"Delivery Date\",\"Delivery Time\":\"Delivery Time\",\"Ready to Serve\":\"Ready to Serve\",\"Served\":\"Served\",\"Ordered From\":\"Ordered From\",\"Website Menu\":\"Website Menu\",\"QR Menu\":\"QR Menu\",\"Complete\":\"Complete\",\"Working Hours\":\"Working Hours\",\"Return to Menu\":\"Return to Menu\",\"Apply\":\"Apply\",\"Token No\":\"Token No\",\"Postal Code\":\"Postal Code\",\"Billing Address will be Same as Shipping Address\":\"Billing Address will be Same as Shipping Address\",\"Delivery Area\":\"Delivery Area\",\"Call Waiter\":\"Call Waiter\",\"Table\":\"Table\",\"Select a Table\":\"Select a Table\",\"Restaurant is informed!\":\"Restaurant is informed!\",\"Add_To_Menus\":\"Add to Menus\",\"NO SPECIAL PRODUCT FOUND!\":\"NO SPECIAL PRODUCT FOUND!\",\"NO MEMBERS FOUND!\":\"NO MEMBERS FOUND!\",\"NO CLIEND FOUND!\":\"NO CLIEND FOUND!\",\"NO BLOG POST FOUND!\":\"NO BLOG POST FOUND!\",\"NO FAQ FOUND!\":\"NO FAQ FOUND!\",\"NO GALLERY IMAGE FOUND!\":\"NO GALLERY IMAGE FOUND!\",\"NO TEAM FOUND!\":\"NO TEAM FOUND!\",\"ALL\":\"ALL\",\"Filter\":\"Filter\",\"Filter_By_Price\":\"Filter By Price\",\"Show_All\":\"Show All\",\"Cart_is_empty\":\"Cart is empty\",\"On_Table\":\"On Table\",\"Home_Delivery\":\"Home Delivery\",\"Select_a_postal_code\":\"Select a postal code\",\"Select\":\"Select\",\"Type\":\"Type\",\"Item Total\":\"Item Total\",\"No Menu Found!\":\"No Menu Found!\",\"You are lost\":\"You are lost\",\"Get Back to Home\":\"Get Back to Home\",\"Addons\":\"Addons\",\"Subcategory\":\"Subcategory\",\"Review\":\"Review\",\"Blog Details\":\"Blog Details\",\"Career Details\":\"Career Details\",\"Enter your card number\":\"Enter your card number\",\"Enter expiry month\":\"Enter expiry month\",\"Enter expiry year\":\"Enter expiry year\",\"Enter card code\":\"Enter card code\",\"Select a time frame\":\"Select a time frame\",\"Select Addons\":\"Select Addons\",\"Authorize\":\"Authorize\",\"to leave a rating\":\"to leave a rating\",\"Website\":\"Website\",\"QR\":\"QR\",\"Pick_Up\":\"Pick Up\",\"Pick UP\":\"Pick UP\",\"Subtotal\":\"Subtotal\",\"Grand Total\":\"Grand Total\",\"Completed\":\"Completed\",\"Yes\":\"Yes\",\"No\":\"No\",\"Select a Time Frame\":\"Select a Time Frame\",\"Receipt image must be .jpg \\/ .jpeg \\/ .png\":\"Receipt image must be .jpg \\/ .jpeg \\/ .png\",\"Page Not Found\":\"Page Not Found\",\"January\":\"January\",\"February\":\"February\",\"March\":\"March\",\"April\":\"April\",\"May\":\"May\",\"June\":\"June\",\"July\":\"July\",\"August\":\"August\",\"September\":\"September\",\"October\":\"October\",\"November\":\"November\",\"December\":\"December\",\"Monday\":\"Mo\",\"Tuesday\":\"Tu\",\"Wednesday\":\"We\",\"Thursday\":\"Th\",\"Friday\":\"Fr\",\"Saturday\":\"Sa\",\"Sunday\":\"Su\",\"Showing\":\"Showing\",\"to\":\"to\",\"of\":\"of\",\"entries\":\"entries\",\"Show\":\"Show\",\"Extras\":\"Extras\",\"About Us\":\"About Us\",\"No Special Food\":\"No Special Food\",\"Subscribe\":\"Subscribe\",\"Useful Links\":\"Useful Links\",\"View More\":\"View More\",\"By\":\"By\",\"Stay update with us and get offer!\":\"Stay update with us and get offer!\",\"Identity Number\":\"Identity Number\",\"Zip Code\":\"Zip Code\"}', 18, NULL, '2024-02-23 13:47:07', '2024-08-20 23:15:14');
INSERT INTO `user_languages` (`id`, `name`, `code`, `is_default`, `rtl`, `keywords`, `user_id`, `datepicker_name`, `created_at`, `updated_at`) VALUES
(82, 'English', 'en', 1, 0, '{\"Home\":\"Home\",\"Menu\":\"Menu\",\"Items\":\"Items\",\"Team\":\"Team\",\"Teams\":\"Teams\",\"Contact\":\"Contact\",\"Gallery\":\"Gallery\",\"Team Members\":\"Team Members\",\"Cart\":\"Cart\",\"Reservation\":\"Reservation\",\"Blog\":\"Blog\",\"Add Cart\":\"Add Cart\",\"Opening Time\":\"Opening Time\",\"Buy Now\":\"Buy Now\",\"Discover Food Menu\":\"Discover Food Menu\",\"View All Items\":\"View All Items\",\"Our\":\"Our\",\"Special\":\"Special\",\"Good\":\"Good\",\"Food\":\"Food\",\"Price\":\"Price\",\"View All Menu List\":\"View All Menu List\",\"Product Not Found\":\"Product Not Found\",\"Stars\":\"Stars\",\"Read More\":\"Read More\",\"Book A Table\":\"Book A Table\",\"Full Name\":\"Full Name\",\"Phone\":\"Phone\",\"Date\":\"Date\",\"Time\":\"Time\",\"Person\":\"Person\",\"Book Table\":\"Book Table\",\"Our Blog\":\"Our Blog\",\"No Blogs\":\"No Blogs\",\"Share\":\"Share\",\"All Categories\":\"All Categories\",\"Contact Us\":\"Contact Us\",\"Your Name\":\"Your Name\",\"Email Address\":\"Email Address\",\"Subject\":\"Subject\",\"Write a message\":\"Write a message\",\"Submit Now\":\"Submit Now\",\"Career\":\"Career\",\"Job Details\":\"Job Details\",\"Our Gallery\":\"Our Gallery\",\"FAQ\":\"FAQ\",\"Photos Action\":\"Photos Action\",\"Our Awesome Gallery\":\"Our Awesome Gallery\",\"Exparts Our Team\":\"Exparts Our Team\",\"Your Cart\":\"Your Cart\",\"Total\":\"Total\",\"Products\":\"Products\",\"Product\":\"Product\",\"Product Title\":\"Product Title\",\"Variations\":\"Variations\",\"Variation\":\"Variation\",\"Add On\'s\":\"Add On\'s\",\"Ordered Products\":\"Ordered Products\",\"Select Variation\":\"Select Variation\",\"Select Add On\'s\":\"Select Add On\'s\",\"Optional\":\"Optional\",\"Add to Cart\":\"Add to Cart\",\"Quantity\":\"Quantity\",\"Availability\":\"Availability\",\"Item(s)\":\"Item(s)\",\"Remove\":\"Remove\",\"Avilable Now\":\"Avilable Now\",\"Out Of Stock\":\"Out Of Stock\",\"Cart is empty!\":\"Cart is empty!\",\"Checkout\":\"Checkout\",\"Update Cart\":\"Update Cart\",\"Country\":\"Country\",\"First Name\":\"First Name\",\"Last Name\":\"Last Name\",\"Address\":\"Address\",\"Town \\/ City\":\"Town \\/ City\",\"Contact Email\":\"Contact Email\",\"Shipping Methods\":\"Shipping Methods\",\"Method\":\"Method\",\"Cost\":\"Cost\",\"Free Shipping\":\"Free Shipping\",\"10 to 15 days\":\"10 to 15 days\",\"Order Summary\":\"Order Summary\",\"Cart is empty\":\"Cart is empty\",\"Cart Totals\":\"Cart Totals\",\"Cart Subtotal\":\"Cart Subtotal\",\"Shipping Charge\":\"Shipping Charge\",\"Paid Amount\":\"Paid Amount\",\"Payment Method\":\"Payment Method\",\"Shipping Method\":\"Shipping Method\",\"Order Total\":\"Order Total\",\"Pay Via\":\"Pay Via\",\"Paypal\":\"Paypal\",\"Stripe\":\"Stripe\",\"Card Number\":\"Card Number\",\"CVC\":\"CVC\",\"Month\":\"Month\",\"Year\":\"Year\",\"Pleace Order\":\"Pleace Order\",\"Dashboard\":\"Dashboard\",\"Edit Profile\":\"Edit Profile\",\"Shipping Details\":\"Shipping Details\",\"Billing Details\":\"Billing Details\",\"Change Password\":\"Change Password\",\"My Orders\":\"My Orders\",\"Logout\":\"Logout\",\"Edit Billing Details\":\"Edit Billing Details\",\"Billing First Name\":\"Billing First Name\",\"Billing Last Name\":\"Billing Last Name\",\"Billing Email\":\"Billing Email\",\"Billing User Name\":\"Billing User Name\",\"Billing Phone\":\"Billing Phone\",\"Billing City\":\"Billing City\",\"Billing State\":\"Billing State\",\"Billing Country\":\"Billing Country\",\"Billing Address\":\"Billing Address\",\"Submit\":\"Submit\",\"Reset Password\":\"Reset Password\",\"Re-Type Password\":\"Re-Type Password\",\"Account Information\":\"Account Information\",\"User\":\"User\",\"Username\":\"Username\",\"State\":\"State\",\"City\":\"City\",\"Total Orders\":\"Total Orders\",\"Recent Orders\":\"Recent Orders\",\"Order Number\":\"Order Number\",\"Total Price\":\"Total Price\",\"Action\":\"Action\",\"No Orders\":\"No Orders\",\"Forgot Password\":\"Forgot Password\",\"Login Now\":\"Login Now\",\"Send Mail\":\"Send Mail\",\"Login\":\"Login\",\"Password\":\"Password\",\"LOG IN\":\"LOG IN\",\"Don\'t have an account\":\"Don\'t have an account\",\"Lost your password\":\"Lost your password\",\"Order Details\":\"Order Details\",\"Pending\":\"Pending\",\"Received\":\"Received\",\"Preparing\":\"Preparing\",\"Ready to pick up\":\"Ready to pick up\",\"Picked up\":\"Picked up\",\"Delivered\":\"Delivered\",\"Cancelled\":\"Cancelled\",\"My Order Details\":\"My Order Details\",\"Order Date\":\"Order Date\",\"Order\":\"Order\",\"Download Invoice\":\"Download Invoice\",\"Payment Status\":\"Payment Status\",\"Image\":\"Image\",\"Name\":\"Name\",\"Details\":\"Details\",\"back\":\"back\",\"All Orders\":\"All Orders\",\"My Profile\":\"My Profile\",\"Upload\":\"Upload\",\"Register\":\"Register\",\"Confirmation Password\":\"Confirmation Password\",\"Already have an account ?\":\"Already have an account ?\",\"To login\":\"To login\",\"Click Here\":\"Click Here\",\"Current Password\":\"Current Password\",\"New Password\":\"New Password\",\"Confirm Password\":\"Confirm Password\",\"Edit Shipping Details\":\"Edit Shipping Details\",\"Shipping First Name\":\"Shipping First Name\",\"Shipping Last Name\":\"Shipping Last Name\",\"Shipping Email\":\"Shipping Email\",\"Shipping User Name\":\"Shipping User Name\",\"Shipping Phone\":\"Shipping Phone\",\"Shipping City\":\"Shipping City\",\"Shipping State\":\"Shipping State\",\"Shipping Country\":\"Shipping Country\",\"Shipping Address\":\"Shipping Address\",\"Order Notes\":\"Order Notes\",\"Category\":\"Category\",\"All\":\"All\",\"Product Not Fount\":\"Product Not Fount\",\"Filter Products\":\"Filter Products\",\"Star and higher\":\"Star and higher\",\"Admin\":\"Admin\",\"Reviews For\":\"Reviews For\",\"Success\":\"Success\",\"Your order has been placed successfully!\":\"Your order has been placed successfully!\",\"We have sent you a mail with an invoice.\":\"We have sent you a mail with an invoice.\",\"Thank you.\":\"Thank you.\",\"You\'re lost\":\"You\'re lost\",\"The page you are looking for might have been moved, renamed, or might never existed.\":\"The page you are looking for might have been moved, renamed, or might never existed.\",\"Back Home\":\"Back Home\",\"Reviews(S)\":\"Reviews(S)\",\"IN STOCK\":\"IN STOCK\",\"OUT OF STOCK\":\"OUT OF STOCK\",\"Qty\":\"Qty\",\"Description\":\"Description\",\"Comments\":\"Comments\",\"Reviews\":\"Reviews\",\"Comment\":\"Comment\",\"Rating\":\"Rating\",\"Newest Product\":\"Newest Product\",\"Oldest Product\":\"Oldest Product\",\"Price: High To Low\":\"Price: High To Low\",\"Price: Low To High\":\"Price: Low To High\",\"Search Keywords\":\"Search Keywords\",\"Subscribe Here\":\"Subscribe Here\",\"Enter Your Email\":\"Enter Your Email\",\"Jobs\":\"Jobs\",\"NO JOB FOUND\":\"NO JOB FOUND\",\"Deadline\":\"Deadline\",\"Educational Experience\":\"Educational Experience\",\"Work Experience\":\"Work Experience\",\"Search Jobs\":\"Search Jobs\",\"Vacancy\":\"Vacancy\",\"Job Responsibilities\":\"Job Responsibilities\",\"Employment Status\":\"Employment Status\",\"Educational Requirements\":\"Educational Requirements\",\"Experience Requirements\":\"Experience Requirements\",\"Additional Requirements\":\"Additional Requirements\",\"Job Location\":\"Job Location\",\"Salary\":\"Salary\",\"Compensation & Other Benefits\":\"Compensation & Other Benefits\",\"Read Before Apply\":\"Read Before Apply\",\"Job Categories\":\"Job Categories\",\"Send your CV to\":\"Send your CV to\",\"Checkout as Guest\":\"Checkout as Guest\",\"OR\":\"OR\",\"Login via Facebook\":\"Login via Facebook\",\"Login via Google\":\"Login via Google\",\"Serving Method\":\"Serving Method\",\"On Table\":\"On Table\",\"Home Delivery\":\"Home Delivery\",\"Information\":\"Information\",\"Table Number\":\"Table Number\",\"Waiter Name\":\"Waiter Name\",\"Pick up Date\":\"Pick up Date\",\"Pick up Time\":\"Pick up Time\",\"Cart Total\":\"Cart Total\",\"Discount\":\"Discount\",\"Tax\":\"Tax\",\"Coupon\":\"Coupon\",\"Receipt\":\"Receipt\",\"Place Order\":\"Place Order\",\"Return to Website\":\"Return to Website\",\"Paystack\":\"Paystack\",\"Flutterwave\":\"Flutterwave\",\"Razorpay\":\"Razorpay\",\"Instamojo\":\"Instamojo\",\"Paytm\":\"Paytm\",\"PayUmoney\":\"PayUmoney\",\"Mollie\":\"Mollie\",\"Mercadopago\":\"Mercadopago\",\"Shipping Charges\":\"Shipping Charges\",\"Delivery Date\":\"Delivery Date\",\"Delivery Time\":\"Delivery Time\",\"Ready to Serve\":\"Ready to Serve\",\"Served\":\"Served\",\"Ordered From\":\"Ordered From\",\"Website Menu\":\"Website Menu\",\"QR Menu\":\"QR Menu\",\"Complete\":\"Complete\",\"Working Hours\":\"Working Hours\",\"Return to Menu\":\"Return to Menu\",\"Apply\":\"Apply\",\"Token No\":\"Token No\",\"Postal Code\":\"Postal Code\",\"Billing Address will be Same as Shipping Address\":\"Billing Address will be Same as Shipping Address\",\"Delivery Area\":\"Delivery Area\",\"Call Waiter\":\"Call Waiter\",\"Table\":\"Table\",\"Select a Table\":\"Select a Table\",\"Restaurant is informed!\":\"Restaurant is informed!\",\"Add_To_Menus\":\"Add to Menus\",\"NO SPECIAL PRODUCT FOUND!\":\"NO SPECIAL PRODUCT FOUND!\",\"NO MEMBERS FOUND!\":\"NO MEMBERS FOUND!\",\"NO CLIEND FOUND!\":\"NO CLIEND FOUND!\",\"NO BLOG POST FOUND!\":\"NO BLOG POST FOUND!\",\"NO FAQ FOUND!\":\"NO FAQ FOUND!\",\"NO GALLERY IMAGE FOUND!\":\"NO GALLERY IMAGE FOUND!\",\"NO TEAM FOUND!\":\"NO TEAM FOUND!\",\"ALL\":\"ALL\",\"Filter\":\"Filter\",\"Filter_By_Price\":\"Filter By Price\",\"Show_All\":\"Show All\",\"Cart_is_empty\":\"Cart is empty\",\"On_Table\":\"On Table\",\"Home_Delivery\":\"Home Delivery\",\"Select_a_postal_code\":\"Select a postal code\",\"Select\":\"Select\",\"Type\":\"Type\",\"Item Total\":\"Item Total\",\"No Menu Found!\":\"No Menu Found!\",\"You are lost\":\"You are lost\",\"Get Back to Home\":\"Get Back to Home\",\"Addons\":\"Addons\",\"Subcategory\":\"Subcategory\",\"Review\":\"Review\",\"Blog Details\":\"Blog Details\",\"Career Details\":\"Career Details\",\"Enter your card number\":\"Enter your card number\",\"Enter expiry month\":\"Enter expiry month\",\"Enter expiry year\":\"Enter expiry year\",\"Enter card code\":\"Enter card code\",\"Select a time frame\":\"Select a time frame\",\"Select Addons\":\"Select Addons\",\"Authorize\":\"Authorize\",\"to leave a rating\":\"to leave a rating\",\"Website\":\"Website\",\"QR\":\"QR\",\"Pick_Up\":\"Pick Up\",\"Pick UP\":\"Pick UP\",\"Subtotal\":\"Subtotal\",\"Grand Total\":\"Grand Total\",\"Completed\":\"Completed\",\"Yes\":\"Yes\",\"No\":\"No\",\"Select a Time Frame\":\"Select a Time Frame\",\"Receipt image must be .jpg \\/ .jpeg \\/ .png\":\"Receipt image must be .jpg \\/ .jpeg \\/ .png\",\"Page Not Found\":\"Page Not Found\",\"January\":\"January\",\"February\":\"February\",\"March\":\"March\",\"April\":\"April\",\"May\":\"May\",\"June\":\"June\",\"July\":\"July\",\"August\":\"August\",\"September\":\"September\",\"October\":\"October\",\"November\":\"November\",\"December\":\"December\",\"Monday\":\"Mo\",\"Tuesday\":\"Tu\",\"Wednesday\":\"We\",\"Thursday\":\"Th\",\"Friday\":\"Fr\",\"Saturday\":\"Sa\",\"Sunday\":\"Su\",\"Showing\":\"Showing\",\"to\":\"to\",\"of\":\"of\",\"entries\":\"entries\",\"Show\":\"Show\",\"Extras\":\"Extras\",\"About Us\":\"About Us\",\"No Special Food\":\"No Special Food\",\"Subscribe\":\"Subscribe\",\"Useful Links\":\"Useful Links\",\"View More\":\"View More\",\"By\":\"By\",\"Stay update with us and get offer!\":\"Stay update with us and get offer!\",\"Identity Number\":\"Identity Number\",\"Zip Code\":\"Zip Code\"}', 19, NULL, '2024-02-23 13:48:00', '2024-08-20 23:15:14');

-- --------------------------------------------------------

--
-- Table structure for table `user_mail_templates`
--

CREATE TABLE `user_mail_templates` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `mail_type` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mail_subject` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mail_body` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_mail_templates`
--

INSERT INTO `user_mail_templates` (`id`, `user_id`, `mail_type`, `mail_subject`, `mail_body`) VALUES
(16, 2, 'verify_email', 'Verify Your Email Address', '<p>Hi <b>{username}</b>,</p><p>We just need to verify your email address before you can access to your dashboard.</p><p>Verify your email address, {verification_link}.</p><p>Thank you.<br>{website_title}</p>'),
(17, 2, 'reset_password', 'Recover Password of Your Account', '<p>Hi {customer_name},</p><p>We have received a request to reset your password. If you did not make the request, just ignore this email. Otherwise, you can reset your password using this below link.</p><p>{password_reset_link}</p><p>Thanks,<br>{website_title}</p>'),
(18, 2, 'order_received', 'Order Received', '<p style=\'line-height: 1.6;\'>Hello {customer_name},</p><p style=\'line-height: 1.6;\'><br>Your order has been received.<br>Order Number: #{order_number}</p><p><br>{text}<br>{order_link}</p><p><br></p><p>Best Regards,<br>{website_title}</p>'),
(19, 2, 'order_preparing', 'Preparing Your Order', '<p style=\'line-height: 1.6;\'>Hello {customer_name},</p><p style=\'line-height: 1.6;\'><br>Chef has started preparing your ordered foods.<br>Order Number:&nbsp; #{order_number}</p><p><br>{text}<br>{order_link}</p><p><br></p><p>Best Regards,<br>{website_title}</p>'),
(20, 2, 'order_ready_to_pickup', 'Your Order is Ready to Pickup', '<p style=\'line-height: 1.6;\'>Hello {customer_name},</p><p style=\'line-height: 1.6;\'><br>Your order is ready to pick up. Please pick up your order at your chosen date &amp; time.<br>Order Number:&nbsp; #{order_number}</p><p style=\'line-height: 1.6;\'><br>{text}<br>{order_link}</p><p style=\'line-height: 1.6;\'><br></p><p>Best Regards,<br>{website_title}</p>'),
(21, 2, 'order_pickup', 'Order has been picked up', '<p>Hello {customer_name},</p><p><br>Your order is picked up for delivery. It will arrive in a few moments.<br>Order Number: #{order_number}</p><p><br>{text}<br>{order_link}</p><p><br></p><p>Best Regards,<br>{website_title}</p>'),
(22, 2, 'order_pickedup_pick_up', 'You have picked up Ordered Food', '<p>Hello {customer_name},</p><p><br>You have picked up your ordered Food.<br>Order Number: #{order_number}</p><p><br>{text}<br>{order_link}</p><p><br></p><p>Best Regards,<br>{website_title}</p>'),
(23, 2, 'order_delivered', 'Order has been Delivered', '<p style=\'line-height: 1.6;\'>Hello {customer_name},</p><p style=\'line-height: 1.6;\'><br>Your order has been delivered.<br>Order Number: #{order_number}</p><p style=\'line-height: 1.6;\'><br>{text}<br>{order_link}</p><p style=\'line-height: 1.6;\'><br></p><p>Best Regards,<br>{website_title}</p>'),
(24, 2, 'order_cancelled', 'Order is Cancelled', '<p style=\'line-height: 1.6;\'>Hello&nbsp;<span style=\'font-weight: 600;\'>{customer_name}</span>,</p><p style=\'line-height: 1.6;\'><br>Your order has been canceled.<br>Order Number: {order_number}</p><p><br>{text}<br>{order_link}</p><p><br></p><p>Best Regards,<br><span style=\'font-weight: 600;\'>{website_title}</span></p>'),
(25, 2, 'order_ready_to_serve', 'Your order is ready to serve on table', '<p>Hello {customer_name},</p><p><br>Your order is served at your table. Enjoy your Food.<br>Order Number: #{order_number}</p><p><br>{text}<br>{order_link}</p><p><br></p><p>Best Regards,<br>{website_title}</p>'),
(26, 2, 'order_served', 'You order is served on table', '<p>Hello {customer_name},</p><p><br>Your order is served at your table. Enjoy your Food.<br>Order Number: #{order_number}</p><p><br>{text}<br>{order_link}</p><p><br></p><p>Best Regards,<br>{website_title}</p>'),
(27, 2, 'food_checkout', 'Order has been placed', '<p style=\'line-height: 1.6;\'>Hello {customer_name},</p><p style=\'line-height: 1.6;\'><br>Your order has been placed successfully.<br>Order Number: #{order_number}</p><p><br>{text}<br>{order_link}</p><p><br></p><p>Best Regards,<br>{website_title}</p>'),
(28, 2, 'reservation_accept', 'Reservation Request Accepted', '<p>Hello {customer_name},</p><p><br>Your reservation request has been accepted.</p><p><br></p><p>Best Regards,<br>{website_title}</p>'),
(29, 2, 'reservation_reject', 'Reservation Request Rejected', '<p style=\'line-height: 1.6;\'>Hello {customer_name},</p><p style=\'line-height: 1.6;\'><br>Your reservation request has been rejected.</p><p><br></p><p>Best Regards,<br>{website_title}</p>'),
(30, 2, 'order_ready_to_pickup_pick_up', 'Your order is ready to pick up', '<p style=\'line-height: 1.6;\'>Hello {customer_name},</p><p style=\'line-height: 1.6;\'><br>Your order is ready to pick up. Please pick up your order at your chosen date &amp; time.<br>Order Number:&nbsp; #{order_number}</p><p style=\'line-height: 1.6;\'><br>{text}<br>{order_link}</p><p style=\'line-height: 1.6;\'><br></p><p>Best Regards,<br>{website_title}</p>'),
(181, 14, 'verify_email', 'Verify Your Email Address', '<p>Hi <b>{username}</b>,</p><p>We just need to verify your email address before you can access to your dashboard.</p><p>Verify your email address, {verification_link}.</p><p>Thank you.<br>{website_title}</p>'),
(182, 14, 'reset_password', 'Recover Password of Your Account', '<p>Hi {customer_name},</p><p>We have received a request to reset your password. If you did not make the request, just ignore this email. Otherwise, you can reset your password using this below link.</p><p>{password_reset_link}</p><p>Thanks,<br>{website_title}</p>'),
(183, 14, 'order_received', 'Order Received', '<p style=\'line-height: 1.6;\'>Hello {customer_name},</p><p style=\'line-height: 1.6;\'><br>Your order has been received.<br>Order Number: #{order_number}</p><p><br>{text}<br>{order_link}</p><p><br></p><p>Best Regards,<br>{website_title}</p>'),
(184, 14, 'order_preparing', 'Preparing Your Order', '<p style=\'line-height: 1.6;\'>Hello {customer_name},</p><p style=\'line-height: 1.6;\'><br>Chef has started preparing your ordered foods.<br>Order Number:&nbsp; #{order_number}</p><p><br>{text}<br>{order_link}</p><p><br></p><p>Best Regards,<br>{website_title}</p>'),
(185, 14, 'order_ready_to_pickup', 'Your Order is Ready to Pickup', '<p style=\'line-height: 1.6;\'>Hello {customer_name},</p><p style=\'line-height: 1.6;\'><br>Your order is ready to pick up. Please pick up your order at your chosen date &amp; time.<br>Order Number:&nbsp; #{order_number}</p><p style=\'line-height: 1.6;\'><br>{text}<br>{order_link}</p><p style=\'line-height: 1.6;\'><br></p><p>Best Regards,<br>{website_title}</p>'),
(186, 14, 'order_pickup', 'Order has been picked up', '<p>Hello {customer_name},</p><p><br>Your order is picked up for delivery. It will arrive in a few moments.<br>Order Number: #{order_number}</p><p><br>{text}<br>{order_link}</p><p><br></p><p>Best Regards,<br>{website_title}</p>'),
(187, 14, 'order_pickedup_pick_up', 'You have picked up Ordered Food', '<p>Hello {customer_name},</p><p><br>You have picked up your ordered Food.<br>Order Number: #{order_number}</p><p><br>{text}<br>{order_link}</p><p><br></p><p>Best Regards,<br>{website_title}</p>'),
(188, 14, 'order_delivered', 'Order has been Delivered', '<p style=\'line-height: 1.6;\'>Hello {customer_name},</p><p style=\'line-height: 1.6;\'><br>Your order has been delivered.<br>Order Number: #{order_number}</p><p style=\'line-height: 1.6;\'><br>{text}<br>{order_link}</p><p style=\'line-height: 1.6;\'><br></p><p>Best Regards,<br>{website_title}</p>'),
(189, 14, 'order_cancelled', 'Order is Cancelled', '<p style=\'line-height: 1.6;\'>Hello&nbsp;<span style=\'font-weight: 600;\'>{customer_name}</span>,</p><p style=\'line-height: 1.6;\'><br>Your order has been canceled.<br>Order Number: {order_number}</p><p><br>{text}<br>{order_link}</p><p><br></p><p>Best Regards,<br><span style=\'font-weight: 600;\'>{website_title}</span></p>'),
(190, 14, 'order_ready_to_serve', 'Your order is ready to serve on table', '<p>Hello {customer_name},</p><p><br>Your order is served at your table. Enjoy your Food.<br>Order Number: #{order_number}</p><p><br>{text}<br>{order_link}</p><p><br></p><p>Best Regards,<br>{website_title}</p>'),
(191, 14, 'order_served', 'You order is served on table', '<p>Hello {customer_name},</p><p><br>Your order is served at your table. Enjoy your Food.<br>Order Number: #{order_number}</p><p><br>{text}<br>{order_link}</p><p><br></p><p>Best Regards,<br>{website_title}</p>'),
(192, 14, 'food_checkout', 'Order has been placed', '<p style=\'line-height: 1.6;\'>Hello {customer_name},</p><p style=\'line-height: 1.6;\'><br>Your order has been placed successfully.<br>Order Number: #{order_number}</p><p><br>{text}<br>{order_link}</p><p><br></p><p>Best Regards,<br>{website_title}</p>'),
(193, 14, 'reservation_accept', 'Reservation Request Accepted', '<p>Hello {customer_name},</p><p><br>Your reservation request has been accepted.</p><p><br></p><p>Best Regards,<br>{website_title}</p>'),
(194, 14, 'reservation_reject', 'Reservation Request Rejected', '<p style=\'line-height: 1.6;\'>Hello {customer_name},</p><p style=\'line-height: 1.6;\'><br>Your reservation request has been rejected.</p><p><br></p><p>Best Regards,<br>{website_title}</p>'),
(195, 14, 'order_ready_to_pickup_pick_up', 'Your order is ready to pick up', '<p style=\'line-height: 1.6;\'>Hello {customer_name},</p><p style=\'line-height: 1.6;\'><br>Your order is ready to pick up. Please pick up your order at your chosen date &amp; time.<br>Order Number:&nbsp; #{order_number}</p><p style=\'line-height: 1.6;\'><br>{text}<br>{order_link}</p><p style=\'line-height: 1.6;\'><br></p><p>Best Regards,<br>{website_title}</p>'),
(196, 15, 'verify_email', 'Verify Your Email Address', '<p>Hi <b>{username}</b>,</p><p>We just need to verify your email address before you can access to your dashboard.</p><p>Verify your email address, {verification_link}.</p><p>Thank you.<br>{website_title}</p>'),
(197, 15, 'reset_password', 'Recover Password of Your Account', '<p>Hi {customer_name},</p><p>We have received a request to reset your password. If you did not make the request, just ignore this email. Otherwise, you can reset your password using this below link.</p><p>{password_reset_link}</p><p>Thanks,<br>{website_title}</p>'),
(198, 15, 'order_received', 'Order Received', '<p style=\'line-height: 1.6;\'>Hello {customer_name},</p><p style=\'line-height: 1.6;\'><br>Your order has been received.<br>Order Number: #{order_number}</p><p><br>{text}<br>{order_link}</p><p><br></p><p>Best Regards,<br>{website_title}</p>'),
(199, 15, 'order_preparing', 'Preparing Your Order', '<p style=\'line-height: 1.6;\'>Hello {customer_name},</p><p style=\'line-height: 1.6;\'><br>Chef has started preparing your ordered foods.<br>Order Number:&nbsp; #{order_number}</p><p><br>{text}<br>{order_link}</p><p><br></p><p>Best Regards,<br>{website_title}</p>'),
(200, 15, 'order_ready_to_pickup', 'Your Order is Ready to Pickup', '<p style=\'line-height: 1.6;\'>Hello {customer_name},</p><p style=\'line-height: 1.6;\'><br>Your order is ready to pick up. Please pick up your order at your chosen date &amp; time.<br>Order Number:&nbsp; #{order_number}</p><p style=\'line-height: 1.6;\'><br>{text}<br>{order_link}</p><p style=\'line-height: 1.6;\'><br></p><p>Best Regards,<br>{website_title}</p>'),
(201, 15, 'order_pickup', 'Order has been picked up', '<p>Hello {customer_name},</p><p><br>Your order is picked up for delivery. It will arrive in a few moments.<br>Order Number: #{order_number}</p><p><br>{text}<br>{order_link}</p><p><br></p><p>Best Regards,<br>{website_title}</p>'),
(202, 15, 'order_pickedup_pick_up', 'You have picked up Ordered Food', '<p>Hello {customer_name},</p><p><br>You have picked up your ordered Food.<br>Order Number: #{order_number}</p><p><br>{text}<br>{order_link}</p><p><br></p><p>Best Regards,<br>{website_title}</p>'),
(203, 15, 'order_delivered', 'Order has been Delivered', '<p style=\'line-height: 1.6;\'>Hello {customer_name},</p><p style=\'line-height: 1.6;\'><br>Your order has been delivered.<br>Order Number: #{order_number}</p><p style=\'line-height: 1.6;\'><br>{text}<br>{order_link}</p><p style=\'line-height: 1.6;\'><br></p><p>Best Regards,<br>{website_title}</p>'),
(204, 15, 'order_cancelled', 'Order is Cancelled', '<p style=\'line-height: 1.6;\'>Hello&nbsp;<span style=\'font-weight: 600;\'>{customer_name}</span>,</p><p style=\'line-height: 1.6;\'><br>Your order has been canceled.<br>Order Number: {order_number}</p><p><br>{text}<br>{order_link}</p><p><br></p><p>Best Regards,<br><span style=\'font-weight: 600;\'>{website_title}</span></p>'),
(205, 15, 'order_ready_to_serve', 'Your order is ready to serve on table', '<p>Hello {customer_name},</p><p><br>Your order is served at your table. Enjoy your Food.<br>Order Number: #{order_number}</p><p><br>{text}<br>{order_link}</p><p><br></p><p>Best Regards,<br>{website_title}</p>'),
(206, 15, 'order_served', 'You order is served on table', '<p>Hello {customer_name},</p><p><br>Your order is served at your table. Enjoy your Food.<br>Order Number: #{order_number}</p><p><br>{text}<br>{order_link}</p><p><br></p><p>Best Regards,<br>{website_title}</p>'),
(207, 15, 'food_checkout', 'Order has been placed', '<p style=\'line-height: 1.6;\'>Hello {customer_name},</p><p style=\'line-height: 1.6;\'><br>Your order has been placed successfully.<br>Order Number: #{order_number}</p><p><br>{text}<br>{order_link}</p><p><br></p><p>Best Regards,<br>{website_title}</p>'),
(208, 15, 'reservation_accept', 'Reservation Request Accepted', '<p>Hello {customer_name},</p><p><br>Your reservation request has been accepted.</p><p><br></p><p>Best Regards,<br>{website_title}</p>'),
(209, 15, 'reservation_reject', 'Reservation Request Rejected', '<p style=\'line-height: 1.6;\'>Hello {customer_name},</p><p style=\'line-height: 1.6;\'><br>Your reservation request has been rejected.</p><p><br></p><p>Best Regards,<br>{website_title}</p>'),
(210, 15, 'order_ready_to_pickup_pick_up', 'Your order is ready to pick up', '<p style=\'line-height: 1.6;\'>Hello {customer_name},</p><p style=\'line-height: 1.6;\'><br>Your order is ready to pick up. Please pick up your order at your chosen date &amp; time.<br>Order Number:&nbsp; #{order_number}</p><p style=\'line-height: 1.6;\'><br>{text}<br>{order_link}</p><p style=\'line-height: 1.6;\'><br></p><p>Best Regards,<br>{website_title}</p>'),
(211, 16, 'verify_email', 'Verify Your Email Address', '<p>Hi <b>{username}</b>,</p><p>We just need to verify your email address before you can access to your dashboard.</p><p>Verify your email address, {verification_link}.</p><p>Thank you.<br>{website_title}</p>'),
(212, 16, 'reset_password', 'Recover Password of Your Account', '<p>Hi {customer_name},</p><p>We have received a request to reset your password. If you did not make the request, just ignore this email. Otherwise, you can reset your password using this below link.</p><p>{password_reset_link}</p><p>Thanks,<br>{website_title}</p>'),
(213, 16, 'order_received', 'Order Received', '<p style=\'line-height: 1.6;\'>Hello {customer_name},</p><p style=\'line-height: 1.6;\'><br>Your order has been received.<br>Order Number: #{order_number}</p><p><br>{text}<br>{order_link}</p><p><br></p><p>Best Regards,<br>{website_title}</p>'),
(214, 16, 'order_preparing', 'Preparing Your Order', '<p style=\'line-height: 1.6;\'>Hello {customer_name},</p><p style=\'line-height: 1.6;\'><br>Chef has started preparing your ordered foods.<br>Order Number:&nbsp; #{order_number}</p><p><br>{text}<br>{order_link}</p><p><br></p><p>Best Regards,<br>{website_title}</p>'),
(215, 16, 'order_ready_to_pickup', 'Your Order is Ready to Pickup', '<p style=\'line-height: 1.6;\'>Hello {customer_name},</p><p style=\'line-height: 1.6;\'><br>Your order is ready to pick up. Please pick up your order at your chosen date &amp; time.<br>Order Number:&nbsp; #{order_number}</p><p style=\'line-height: 1.6;\'><br>{text}<br>{order_link}</p><p style=\'line-height: 1.6;\'><br></p><p>Best Regards,<br>{website_title}</p>'),
(216, 16, 'order_pickup', 'Order has been picked up', '<p>Hello {customer_name},</p><p><br>Your order is picked up for delivery. It will arrive in a few moments.<br>Order Number: #{order_number}</p><p><br>{text}<br>{order_link}</p><p><br></p><p>Best Regards,<br>{website_title}</p>'),
(217, 16, 'order_pickedup_pick_up', 'You have picked up Ordered Food', '<p>Hello {customer_name},</p><p><br>You have picked up your ordered Food.<br>Order Number: #{order_number}</p><p><br>{text}<br>{order_link}</p><p><br></p><p>Best Regards,<br>{website_title}</p>'),
(218, 16, 'order_delivered', 'Order has been Delivered', '<p style=\'line-height: 1.6;\'>Hello {customer_name},</p><p style=\'line-height: 1.6;\'><br>Your order has been delivered.<br>Order Number: #{order_number}</p><p style=\'line-height: 1.6;\'><br>{text}<br>{order_link}</p><p style=\'line-height: 1.6;\'><br></p><p>Best Regards,<br>{website_title}</p>'),
(219, 16, 'order_cancelled', 'Order is Cancelled', '<p style=\'line-height: 1.6;\'>Hello&nbsp;<span style=\'font-weight: 600;\'>{customer_name}</span>,</p><p style=\'line-height: 1.6;\'><br>Your order has been canceled.<br>Order Number: {order_number}</p><p><br>{text}<br>{order_link}</p><p><br></p><p>Best Regards,<br><span style=\'font-weight: 600;\'>{website_title}</span></p>'),
(220, 16, 'order_ready_to_serve', 'Your order is ready to serve on table', '<p>Hello {customer_name},</p><p><br>Your order is served at your table. Enjoy your Food.<br>Order Number: #{order_number}</p><p><br>{text}<br>{order_link}</p><p><br></p><p>Best Regards,<br>{website_title}</p>'),
(221, 16, 'order_served', 'You order is served on table', '<p>Hello {customer_name},</p><p><br>Your order is served at your table. Enjoy your Food.<br>Order Number: #{order_number}</p><p><br>{text}<br>{order_link}</p><p><br></p><p>Best Regards,<br>{website_title}</p>'),
(222, 16, 'food_checkout', 'Order has been placed', '<p style=\'line-height: 1.6;\'>Hello {customer_name},</p><p style=\'line-height: 1.6;\'><br>Your order has been placed successfully.<br>Order Number: #{order_number}</p><p><br>{text}<br>{order_link}</p><p><br></p><p>Best Regards,<br>{website_title}</p>'),
(223, 16, 'reservation_accept', 'Reservation Request Accepted', '<p>Hello {customer_name},</p><p><br>Your reservation request has been accepted.</p><p><br></p><p>Best Regards,<br>{website_title}</p>'),
(224, 16, 'reservation_reject', 'Reservation Request Rejected', '<p style=\'line-height: 1.6;\'>Hello {customer_name},</p><p style=\'line-height: 1.6;\'><br>Your reservation request has been rejected.</p><p><br></p><p>Best Regards,<br>{website_title}</p>'),
(225, 16, 'order_ready_to_pickup_pick_up', 'Your order is ready to pick up', '<p style=\'line-height: 1.6;\'>Hello {customer_name},</p><p style=\'line-height: 1.6;\'><br>Your order is ready to pick up. Please pick up your order at your chosen date &amp; time.<br>Order Number:&nbsp; #{order_number}</p><p style=\'line-height: 1.6;\'><br>{text}<br>{order_link}</p><p style=\'line-height: 1.6;\'><br></p><p>Best Regards,<br>{website_title}</p>'),
(226, 17, 'verify_email', 'Verify Your Email Address', '<p>Hi <b>{username}</b>,</p><p>We just need to verify your email address before you can access to your dashboard.</p><p>Verify your email address, {verification_link}.</p><p>Thank you.<br>{website_title}</p>'),
(227, 17, 'reset_password', 'Recover Password of Your Account', '<p>Hi {customer_name},</p><p>We have received a request to reset your password. If you did not make the request, just ignore this email. Otherwise, you can reset your password using this below link.</p><p>{password_reset_link}</p><p>Thanks,<br>{website_title}</p>'),
(228, 17, 'order_received', 'Order Received', '<p style=\'line-height: 1.6;\'>Hello {customer_name},</p><p style=\'line-height: 1.6;\'><br>Your order has been received.<br>Order Number: #{order_number}</p><p><br>{text}<br>{order_link}</p><p><br></p><p>Best Regards,<br>{website_title}</p>'),
(229, 17, 'order_preparing', 'Preparing Your Order', '<p style=\'line-height: 1.6;\'>Hello {customer_name},</p><p style=\'line-height: 1.6;\'><br>Chef has started preparing your ordered foods.<br>Order Number:&nbsp; #{order_number}</p><p><br>{text}<br>{order_link}</p><p><br></p><p>Best Regards,<br>{website_title}</p>'),
(230, 17, 'order_ready_to_pickup', 'Your Order is Ready to Pickup', '<p style=\'line-height: 1.6;\'>Hello {customer_name},</p><p style=\'line-height: 1.6;\'><br>Your order is ready to pick up. Please pick up your order at your chosen date &amp; time.<br>Order Number:&nbsp; #{order_number}</p><p style=\'line-height: 1.6;\'><br>{text}<br>{order_link}</p><p style=\'line-height: 1.6;\'><br></p><p>Best Regards,<br>{website_title}</p>'),
(231, 17, 'order_pickup', 'Order has been picked up', '<p>Hello {customer_name},</p><p><br>Your order is picked up for delivery. It will arrive in a few moments.<br>Order Number: #{order_number}</p><p><br>{text}<br>{order_link}</p><p><br></p><p>Best Regards,<br>{website_title}</p>'),
(232, 17, 'order_pickedup_pick_up', 'You have picked up Ordered Food', '<p>Hello {customer_name},</p><p><br>You have picked up your ordered Food.<br>Order Number: #{order_number}</p><p><br>{text}<br>{order_link}</p><p><br></p><p>Best Regards,<br>{website_title}</p>'),
(233, 17, 'order_delivered', 'Order has been Delivered', '<p style=\'line-height: 1.6;\'>Hello {customer_name},</p><p style=\'line-height: 1.6;\'><br>Your order has been delivered.<br>Order Number: #{order_number}</p><p style=\'line-height: 1.6;\'><br>{text}<br>{order_link}</p><p style=\'line-height: 1.6;\'><br></p><p>Best Regards,<br>{website_title}</p>'),
(234, 17, 'order_cancelled', 'Order is Cancelled', '<p style=\'line-height: 1.6;\'>Hello&nbsp;<span style=\'font-weight: 600;\'>{customer_name}</span>,</p><p style=\'line-height: 1.6;\'><br>Your order has been canceled.<br>Order Number: {order_number}</p><p><br>{text}<br>{order_link}</p><p><br></p><p>Best Regards,<br><span style=\'font-weight: 600;\'>{website_title}</span></p>'),
(235, 17, 'order_ready_to_serve', 'Your order is ready to serve on table', '<p>Hello {customer_name},</p><p><br>Your order is served at your table. Enjoy your Food.<br>Order Number: #{order_number}</p><p><br>{text}<br>{order_link}</p><p><br></p><p>Best Regards,<br>{website_title}</p>'),
(236, 17, 'order_served', 'You order is served on table', '<p>Hello {customer_name},</p><p><br>Your order is served at your table. Enjoy your Food.<br>Order Number: #{order_number}</p><p><br>{text}<br>{order_link}</p><p><br></p><p>Best Regards,<br>{website_title}</p>'),
(237, 17, 'food_checkout', 'Order has been placed', '<p style=\'line-height: 1.6;\'>Hello {customer_name},</p><p style=\'line-height: 1.6;\'><br>Your order has been placed successfully.<br>Order Number: #{order_number}</p><p><br>{text}<br>{order_link}</p><p><br></p><p>Best Regards,<br>{website_title}</p>'),
(238, 17, 'reservation_accept', 'Reservation Request Accepted', '<p>Hello {customer_name},</p><p><br>Your reservation request has been accepted.</p><p><br></p><p>Best Regards,<br>{website_title}</p>'),
(239, 17, 'reservation_reject', 'Reservation Request Rejected', '<p style=\'line-height: 1.6;\'>Hello {customer_name},</p><p style=\'line-height: 1.6;\'><br>Your reservation request has been rejected.</p><p><br></p><p>Best Regards,<br>{website_title}</p>'),
(240, 17, 'order_ready_to_pickup_pick_up', 'Your order is ready to pick up', '<p style=\'line-height: 1.6;\'>Hello {customer_name},</p><p style=\'line-height: 1.6;\'><br>Your order is ready to pick up. Please pick up your order at your chosen date &amp; time.<br>Order Number:&nbsp; #{order_number}</p><p style=\'line-height: 1.6;\'><br>{text}<br>{order_link}</p><p style=\'line-height: 1.6;\'><br></p><p>Best Regards,<br>{website_title}</p>'),
(241, 18, 'verify_email', 'Verify Your Email Address', '<p>Hi <b>{username}</b>,</p><p>We just need to verify your email address before you can access to your dashboard.</p><p>Verify your email address, {verification_link}.</p><p>Thank you.<br>{website_title}</p>'),
(242, 18, 'reset_password', 'Recover Password of Your Account', '<p>Hi {customer_name},</p><p>We have received a request to reset your password. If you did not make the request, just ignore this email. Otherwise, you can reset your password using this below link.</p><p>{password_reset_link}</p><p>Thanks,<br>{website_title}</p>'),
(243, 18, 'order_received', 'Order Received', '<p style=\'line-height: 1.6;\'>Hello {customer_name},</p><p style=\'line-height: 1.6;\'><br>Your order has been received.<br>Order Number: #{order_number}</p><p><br>{text}<br>{order_link}</p><p><br></p><p>Best Regards,<br>{website_title}</p>'),
(244, 18, 'order_preparing', 'Preparing Your Order', '<p style=\'line-height: 1.6;\'>Hello {customer_name},</p><p style=\'line-height: 1.6;\'><br>Chef has started preparing your ordered foods.<br>Order Number:&nbsp; #{order_number}</p><p><br>{text}<br>{order_link}</p><p><br></p><p>Best Regards,<br>{website_title}</p>'),
(245, 18, 'order_ready_to_pickup', 'Your Order is Ready to Pickup', '<p style=\'line-height: 1.6;\'>Hello {customer_name},</p><p style=\'line-height: 1.6;\'><br>Your order is ready to pick up. Please pick up your order at your chosen date &amp; time.<br>Order Number:&nbsp; #{order_number}</p><p style=\'line-height: 1.6;\'><br>{text}<br>{order_link}</p><p style=\'line-height: 1.6;\'><br></p><p>Best Regards,<br>{website_title}</p>'),
(246, 18, 'order_pickup', 'Order has been picked up', '<p>Hello {customer_name},</p><p><br>Your order is picked up for delivery. It will arrive in a few moments.<br>Order Number: #{order_number}</p><p><br>{text}<br>{order_link}</p><p><br></p><p>Best Regards,<br>{website_title}</p>'),
(247, 18, 'order_pickedup_pick_up', 'You have picked up Ordered Food', '<p>Hello {customer_name},</p><p><br>You have picked up your ordered Food.<br>Order Number: #{order_number}</p><p><br>{text}<br>{order_link}</p><p><br></p><p>Best Regards,<br>{website_title}</p>'),
(248, 18, 'order_delivered', 'Order has been Delivered', '<p style=\'line-height: 1.6;\'>Hello {customer_name},</p><p style=\'line-height: 1.6;\'><br>Your order has been delivered.<br>Order Number: #{order_number}</p><p style=\'line-height: 1.6;\'><br>{text}<br>{order_link}</p><p style=\'line-height: 1.6;\'><br></p><p>Best Regards,<br>{website_title}</p>'),
(249, 18, 'order_cancelled', 'Order is Cancelled', '<p style=\'line-height: 1.6;\'>Hello&nbsp;<span style=\'font-weight: 600;\'>{customer_name}</span>,</p><p style=\'line-height: 1.6;\'><br>Your order has been canceled.<br>Order Number: {order_number}</p><p><br>{text}<br>{order_link}</p><p><br></p><p>Best Regards,<br><span style=\'font-weight: 600;\'>{website_title}</span></p>'),
(250, 18, 'order_ready_to_serve', 'Your order is ready to serve on table', '<p>Hello {customer_name},</p><p><br>Your order is served at your table. Enjoy your Food.<br>Order Number: #{order_number}</p><p><br>{text}<br>{order_link}</p><p><br></p><p>Best Regards,<br>{website_title}</p>'),
(251, 18, 'order_served', 'You order is served on table', '<p>Hello {customer_name},</p><p><br>Your order is served at your table. Enjoy your Food.<br>Order Number: #{order_number}</p><p><br>{text}<br>{order_link}</p><p><br></p><p>Best Regards,<br>{website_title}</p>'),
(252, 18, 'food_checkout', 'Order has been placed', '<p style=\'line-height: 1.6;\'>Hello {customer_name},</p><p style=\'line-height: 1.6;\'><br>Your order has been placed successfully.<br>Order Number: #{order_number}</p><p><br>{text}<br>{order_link}</p><p><br></p><p>Best Regards,<br>{website_title}</p>'),
(253, 18, 'reservation_accept', 'Reservation Request Accepted', '<p>Hello {customer_name},</p><p><br>Your reservation request has been accepted.</p><p><br></p><p>Best Regards,<br>{website_title}</p>'),
(254, 18, 'reservation_reject', 'Reservation Request Rejected', '<p style=\'line-height: 1.6;\'>Hello {customer_name},</p><p style=\'line-height: 1.6;\'><br>Your reservation request has been rejected.</p><p><br></p><p>Best Regards,<br>{website_title}</p>'),
(255, 18, 'order_ready_to_pickup_pick_up', 'Your order is ready to pick up', '<p style=\'line-height: 1.6;\'>Hello {customer_name},</p><p style=\'line-height: 1.6;\'><br>Your order is ready to pick up. Please pick up your order at your chosen date &amp; time.<br>Order Number:&nbsp; #{order_number}</p><p style=\'line-height: 1.6;\'><br>{text}<br>{order_link}</p><p style=\'line-height: 1.6;\'><br></p><p>Best Regards,<br>{website_title}</p>'),
(256, 19, 'verify_email', 'Verify Your Email Address', '<p>Hi <b>{username}</b>,</p><p>We just need to verify your email address before you can access to your dashboard.</p><p>Verify your email address, {verification_link}.</p><p>Thank you.<br>{website_title}</p>'),
(257, 19, 'reset_password', 'Recover Password of Your Account', '<p>Hi {customer_name},</p><p>We have received a request to reset your password. If you did not make the request, just ignore this email. Otherwise, you can reset your password using this below link.</p><p>{password_reset_link}</p><p>Thanks,<br>{website_title}</p>'),
(258, 19, 'order_received', 'Order Received', '<p style=\'line-height: 1.6;\'>Hello {customer_name},</p><p style=\'line-height: 1.6;\'><br>Your order has been received.<br>Order Number: #{order_number}</p><p><br>{text}<br>{order_link}</p><p><br></p><p>Best Regards,<br>{website_title}</p>'),
(259, 19, 'order_preparing', 'Preparing Your Order', '<p style=\'line-height: 1.6;\'>Hello {customer_name},</p><p style=\'line-height: 1.6;\'><br>Chef has started preparing your ordered foods.<br>Order Number:&nbsp; #{order_number}</p><p><br>{text}<br>{order_link}</p><p><br></p><p>Best Regards,<br>{website_title}</p>'),
(260, 19, 'order_ready_to_pickup', 'Your Order is Ready to Pickup', '<p style=\'line-height: 1.6;\'>Hello {customer_name},</p><p style=\'line-height: 1.6;\'><br>Your order is ready to pick up. Please pick up your order at your chosen date &amp; time.<br>Order Number:&nbsp; #{order_number}</p><p style=\'line-height: 1.6;\'><br>{text}<br>{order_link}</p><p style=\'line-height: 1.6;\'><br></p><p>Best Regards,<br>{website_title}</p>'),
(261, 19, 'order_pickup', 'Order has been picked up', '<p>Hello {customer_name},</p><p><br>Your order is picked up for delivery. It will arrive in a few moments.<br>Order Number: #{order_number}</p><p><br>{text}<br>{order_link}</p><p><br></p><p>Best Regards,<br>{website_title}</p>'),
(262, 19, 'order_pickedup_pick_up', 'You have picked up Ordered Food', '<p>Hello {customer_name},</p><p><br>You have picked up your ordered Food.<br>Order Number: #{order_number}</p><p><br>{text}<br>{order_link}</p><p><br></p><p>Best Regards,<br>{website_title}</p>'),
(263, 19, 'order_delivered', 'Order has been Delivered', '<p style=\'line-height: 1.6;\'>Hello {customer_name},</p><p style=\'line-height: 1.6;\'><br>Your order has been delivered.<br>Order Number: #{order_number}</p><p style=\'line-height: 1.6;\'><br>{text}<br>{order_link}</p><p style=\'line-height: 1.6;\'><br></p><p>Best Regards,<br>{website_title}</p>'),
(264, 19, 'order_cancelled', 'Order is Cancelled', '<p style=\'line-height: 1.6;\'>Hello&nbsp;<span style=\'font-weight: 600;\'>{customer_name}</span>,</p><p style=\'line-height: 1.6;\'><br>Your order has been canceled.<br>Order Number: {order_number}</p><p><br>{text}<br>{order_link}</p><p><br></p><p>Best Regards,<br><span style=\'font-weight: 600;\'>{website_title}</span></p>'),
(265, 19, 'order_ready_to_serve', 'Your order is ready to serve on table', '<p>Hello {customer_name},</p><p><br>Your order is served at your table. Enjoy your Food.<br>Order Number: #{order_number}</p><p><br>{text}<br>{order_link}</p><p><br></p><p>Best Regards,<br>{website_title}</p>'),
(266, 19, 'order_served', 'You order is served on table', '<p>Hello {customer_name},</p><p><br>Your order is served at your table. Enjoy your Food.<br>Order Number: #{order_number}</p><p><br>{text}<br>{order_link}</p><p><br></p><p>Best Regards,<br>{website_title}</p>'),
(267, 19, 'food_checkout', 'Order has been placed', '<p style=\'line-height: 1.6;\'>Hello {customer_name},</p><p style=\'line-height: 1.6;\'><br>Your order has been placed successfully.<br>Order Number: #{order_number}</p><p><br>{text}<br>{order_link}</p><p><br></p><p>Best Regards,<br>{website_title}</p>'),
(268, 19, 'reservation_accept', 'Reservation Request Accepted', '<p>Hello {customer_name},</p><p><br>Your reservation request has been accepted.</p><p><br></p><p>Best Regards,<br>{website_title}</p>'),
(269, 19, 'reservation_reject', 'Reservation Request Rejected', '<p style=\'line-height: 1.6;\'>Hello {customer_name},</p><p style=\'line-height: 1.6;\'><br>Your reservation request has been rejected.</p><p><br></p><p>Best Regards,<br>{website_title}</p>'),
(270, 19, 'order_ready_to_pickup_pick_up', 'Your order is ready to pick up', '<p style=\'line-height: 1.6;\'>Hello {customer_name},</p><p style=\'line-height: 1.6;\'><br>Your order is ready to pick up. Please pick up your order at your chosen date &amp; time.<br>Order Number:&nbsp; #{order_number}</p><p style=\'line-height: 1.6;\'><br>{text}<br>{order_link}</p><p style=\'line-height: 1.6;\'><br></p><p>Best Regards,<br>{website_title}</p>');

-- --------------------------------------------------------

--
-- Table structure for table `user_menus`
--

CREATE TABLE `user_menus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `language_id` int(11) DEFAULT NULL,
  `menus` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_menus`
--

INSERT INTO `user_menus` (`id`, `user_id`, `language_id`, `menus`, `created_at`, `updated_at`) VALUES
(31, 2, 62, '[{\"text\":\"بيت\",\"href\":\"\",\"icon\":\"empty\",\"target\":\"_self\",\"title\":\"\",\"type\":\"home\"},{\"text\":\"قائمة طعام\",\"href\":\"\",\"icon\":\"empty\",\"target\":\"_self\",\"title\":\"\",\"type\":\"menu\"},{\"text\":\"أغراض\",\"href\":\"\",\"icon\":\"empty\",\"target\":\"_self\",\"title\":\"\",\"type\":\"items\"},{\"text\":\"عربة التسوق\",\"href\":\"\",\"icon\":\"empty\",\"target\":\"_self\",\"title\":\"\",\"type\":\"cart\"},{\"text\":\"الدفع\",\"href\":\"\",\"icon\":\"empty\",\"target\":\"_self\",\"title\":\"\",\"type\":\"checkout\"},{\"text\":\"معلومات عنا\",\"href\":\"\",\"icon\":\"empty\",\"target\":\"_self\",\"title\":\"\",\"type\":\"about-us\"},{\"text\":\"عن\",\"href\":\"\",\"icon\":\"empty\",\"target\":\"_self\",\"title\":\"\",\"type\":\"custom\",\"children\":[{\"text\":\"البنود و الظروف\",\"href\":\"\",\"icon\":\"empty\",\"target\":\"_self\",\"title\":\"\",\"type\":\"2\"},{\"text\":\"سياسة الخصوصية\",\"href\":\"\",\"icon\":\"empty\",\"target\":\"_self\",\"title\":\"\",\"type\":\"1\"},{\"text\":\"حياة مهنية\",\"href\":\"\",\"icon\":\"empty\",\"target\":\"_self\",\"title\":\"\",\"type\":\"career\"},{\"text\":\"أعضاء الفريق\",\"href\":\"\",\"icon\":\"empty\",\"target\":\"_self\",\"title\":\"\",\"type\":\"team\"},{\"text\":\"صالة عرض\",\"href\":\"\",\"icon\":\"empty\",\"target\":\"_self\",\"title\":\"\",\"type\":\"gallery\"}]},{\"text\":\"التعليمات\",\"href\":\"\",\"icon\":\"empty\",\"target\":\"_self\",\"title\":\"\",\"type\":\"faq\"},{\"text\":\"مدونة\",\"href\":\"\",\"icon\":\"empty\",\"target\":\"_self\",\"title\":\"\",\"type\":\"blog\"},{\"text\":\"اتصال\",\"href\":\"\",\"icon\":\"empty\",\"target\":\"_self\",\"title\":\"\",\"type\":\"contact\"},{\"type\":\"about-us\",\"text\":\"معلومات عنا\",\"href\":\"\",\"target\":\"_self\"}]', '2024-01-30 18:17:52', '2024-01-30 18:17:52'),
(35, 2, 61, '[{\"text\":\"Home\",\"href\":\"\",\"icon\":\"empty\",\"target\":\"_self\",\"title\":\"\",\"type\":\"home\"},{\"text\":\"Menu\",\"href\":\"\",\"icon\":\"empty\",\"target\":\"_self\",\"title\":\"\",\"type\":\"menu\"},{\"text\":\"Items\",\"href\":\"\",\"icon\":\"empty\",\"target\":\"_self\",\"title\":\"\",\"type\":\"items\"},{\"text\":\"Cart\",\"href\":\"\",\"icon\":\"empty\",\"target\":\"_self\",\"title\":\"\",\"type\":\"cart\"},{\"text\":\"Checkout\",\"href\":\"\",\"icon\":\"empty\",\"target\":\"_self\",\"title\":\"\",\"type\":\"checkout\"},{\"text\":\"Pages\",\"href\":\"\",\"icon\":\"empty\",\"target\":\"_self\",\"title\":\"\",\"type\":\"custom\",\"children\":[{\"text\":\"Career\",\"href\":\"\",\"icon\":\"empty\",\"target\":\"_self\",\"title\":\"\",\"type\":\"career\"},{\"text\":\"Team Members\",\"href\":\"\",\"icon\":\"empty\",\"target\":\"_self\",\"title\":\"\",\"type\":\"team\"},{\"text\":\"Gallery\",\"href\":\"\",\"icon\":\"empty\",\"target\":\"_self\",\"title\":\"\",\"type\":\"gallery\"},{\"text\":\"FAQ\",\"href\":\"\",\"icon\":\"empty\",\"target\":\"_self\",\"title\":\"\",\"type\":\"faq\"},{\"text\":\"Terms & Conditions\",\"href\":\"\",\"icon\":\"empty\",\"target\":\"_self\",\"title\":\"\",\"type\":\"2\"},{\"text\":\"Privacy Policy\",\"href\":\"\",\"icon\":\"empty\",\"target\":\"_self\",\"title\":\"\",\"type\":\"1\"},{\"text\":\"About Us\",\"href\":\"\",\"icon\":\"empty\",\"target\":\"_self\",\"title\":\"\",\"type\":\"about-us\"}]},{\"text\":\"Blog\",\"href\":\"\",\"icon\":\"empty\",\"target\":\"_self\",\"title\":\"\",\"type\":\"blog\"},{\"text\":\"Contact\",\"href\":\"\",\"icon\":\"empty\",\"target\":\"_self\",\"title\":\"\",\"type\":\"contact\"}]', '2024-01-31 16:00:28', '2024-01-31 16:00:28'),
(40, 14, 77, '[{\"text\":\"Home\",\"href\":\"\",\"icon\":\"empty\",\"target\":\"_self\",\"title\":\"\",\"type\":\"home\"},{\"text\":\"Menu\",\"href\":\"\",\"icon\":\"empty\",\"target\":\"_self\",\"title\":\"\",\"type\":\"menu\"},{\"text\":\"Items\",\"href\":\"\",\"icon\":\"empty\",\"target\":\"_self\",\"title\":\"\",\"type\":\"items\"},{\"text\":\"Cart\",\"href\":\"\",\"icon\":\"empty\",\"target\":\"_self\",\"title\":\"\",\"type\":\"cart\"},{\"text\":\"Checkout\",\"href\":\"\",\"icon\":\"empty\",\"target\":\"_self\",\"title\":\"\",\"type\":\"checkout\"},{\"type\":\"custom\",\"text\":\"About\",\"href\":\"\",\"target\":\"_self\",\"children\":[{\"text\":\"Career\",\"href\":\"\",\"icon\":\"empty\",\"target\":\"_self\",\"title\":\"\",\"type\":\"career\"},{\"text\":\"Team Members\",\"href\":\"\",\"icon\":\"empty\",\"target\":\"_self\",\"title\":\"\",\"type\":\"team\"},{\"text\":\"Gallery\",\"href\":\"\",\"icon\":\"empty\",\"target\":\"_self\",\"title\":\"\",\"type\":\"gallery\"},{\"text\":\"FAQ\",\"href\":\"\",\"icon\":\"empty\",\"target\":\"_self\",\"title\":\"\",\"type\":\"faq\"}]},{\"text\":\"Blog\",\"href\":\"\",\"icon\":\"empty\",\"target\":\"_self\",\"title\":\"\",\"type\":\"blog\"},{\"text\":\"Contact\",\"href\":\"\",\"icon\":\"empty\",\"target\":\"_self\",\"title\":\"\",\"type\":\"contact\"}]', '2024-02-18 15:26:16', '2024-02-18 15:26:16'),
(41, 15, 78, '[{\"text\":\"Home\",\"href\":\"\",\"icon\":\"empty\",\"target\":\"_self\",\"title\":\"\",\"type\":\"home\"},{\"text\":\"Menu\",\"href\":\"\",\"icon\":\"empty\",\"target\":\"_self\",\"title\":\"\",\"type\":\"menu\"},{\"text\":\"Items\",\"href\":\"\",\"icon\":\"empty\",\"target\":\"_self\",\"title\":\"\",\"type\":\"items\"},{\"text\":\"Cart\",\"href\":\"\",\"icon\":\"empty\",\"target\":\"_self\",\"title\":\"\",\"type\":\"cart\"},{\"text\":\"Checkout\",\"href\":\"\",\"icon\":\"empty\",\"target\":\"_self\",\"title\":\"\",\"type\":\"checkout\"},{\"type\":\"custom\",\"text\":\"About\",\"href\":\"\",\"target\":\"_self\",\"children\":[{\"text\":\"Career\",\"href\":\"\",\"icon\":\"empty\",\"target\":\"_self\",\"title\":\"\",\"type\":\"career\"},{\"text\":\"Team Members\",\"href\":\"\",\"icon\":\"empty\",\"target\":\"_self\",\"title\":\"\",\"type\":\"team\"},{\"text\":\"Gallery\",\"href\":\"\",\"icon\":\"empty\",\"target\":\"_self\",\"title\":\"\",\"type\":\"gallery\"},{\"text\":\"FAQ\",\"href\":\"\",\"icon\":\"empty\",\"target\":\"_self\",\"title\":\"\",\"type\":\"faq\"}]},{\"text\":\"Blog\",\"href\":\"\",\"icon\":\"empty\",\"target\":\"_self\",\"title\":\"\",\"type\":\"blog\"},{\"text\":\"Contact\",\"href\":\"\",\"icon\":\"empty\",\"target\":\"_self\",\"title\":\"\",\"type\":\"contact\"}]', '2024-02-18 19:57:22', '2024-02-18 19:57:22'),
(42, 16, 79, '[{\"text\":\"Home\",\"href\":\"\",\"icon\":\"empty\",\"target\":\"_self\",\"title\":\"\",\"type\":\"home\"},{\"text\":\"Menu\",\"href\":\"\",\"icon\":\"empty\",\"target\":\"_self\",\"title\":\"\",\"type\":\"menu\"},{\"text\":\"Items\",\"href\":\"\",\"icon\":\"empty\",\"target\":\"_self\",\"title\":\"\",\"type\":\"items\"},{\"text\":\"Cart\",\"href\":\"\",\"icon\":\"empty\",\"target\":\"_self\",\"title\":\"\",\"type\":\"cart\"},{\"text\":\"Checkout\",\"href\":\"\",\"icon\":\"empty\",\"target\":\"_self\",\"title\":\"\",\"type\":\"checkout\"},{\"type\":\"custom\",\"text\":\"About\",\"href\":\"\",\"target\":\"_self\",\"children\":[{\"text\":\"Career\",\"href\":\"\",\"icon\":\"empty\",\"target\":\"_self\",\"title\":\"\",\"type\":\"career\"},{\"text\":\"Team Members\",\"href\":\"\",\"icon\":\"empty\",\"target\":\"_self\",\"title\":\"\",\"type\":\"team\"},{\"text\":\"Gallery\",\"href\":\"\",\"icon\":\"empty\",\"target\":\"_self\",\"title\":\"\",\"type\":\"gallery\"},{\"text\":\"FAQ\",\"href\":\"\",\"icon\":\"empty\",\"target\":\"_self\",\"title\":\"\",\"type\":\"faq\"}]},{\"text\":\"Blog\",\"href\":\"\",\"icon\":\"empty\",\"target\":\"_self\",\"title\":\"\",\"type\":\"blog\"},{\"text\":\"Contact\",\"href\":\"\",\"icon\":\"empty\",\"target\":\"_self\",\"title\":\"\",\"type\":\"contact\"}]', '2024-02-19 14:54:43', '2024-02-19 14:54:43'),
(43, 17, 80, '[{\"text\":\"Home\",\"href\":\"\",\"icon\":\"empty\",\"target\":\"_self\",\"title\":\"\",\"type\":\"home\"},{\"text\":\"Menu\",\"href\":\"\",\"icon\":\"empty\",\"target\":\"_self\",\"title\":\"\",\"type\":\"menu\"},{\"text\":\"Items\",\"href\":\"\",\"icon\":\"empty\",\"target\":\"_self\",\"title\":\"\",\"type\":\"items\"},{\"text\":\"Cart\",\"href\":\"\",\"icon\":\"empty\",\"target\":\"_self\",\"title\":\"\",\"type\":\"cart\"},{\"text\":\"Checkout\",\"href\":\"\",\"icon\":\"empty\",\"target\":\"_self\",\"title\":\"\",\"type\":\"checkout\"},{\"type\":\"custom\",\"text\":\"About\",\"href\":\"\",\"target\":\"_self\",\"children\":[{\"text\":\"Career\",\"href\":\"\",\"icon\":\"empty\",\"target\":\"_self\",\"title\":\"\",\"type\":\"career\"},{\"text\":\"Team Members\",\"href\":\"\",\"icon\":\"empty\",\"target\":\"_self\",\"title\":\"\",\"type\":\"team\"},{\"text\":\"Gallery\",\"href\":\"\",\"icon\":\"empty\",\"target\":\"_self\",\"title\":\"\",\"type\":\"gallery\"},{\"text\":\"FAQ\",\"href\":\"\",\"icon\":\"empty\",\"target\":\"_self\",\"title\":\"\",\"type\":\"faq\"}]},{\"text\":\"Blog\",\"href\":\"\",\"icon\":\"empty\",\"target\":\"_self\",\"title\":\"\",\"type\":\"blog\"},{\"text\":\"Contact\",\"href\":\"\",\"icon\":\"empty\",\"target\":\"_self\",\"title\":\"\",\"type\":\"contact\"}]', '2024-02-19 15:23:05', '2024-02-19 15:23:05'),
(44, 18, 81, '[{\"text\":\"Home\",\"href\":\"\",\"icon\":\"empty\",\"target\":\"_self\",\"title\":\"\",\"type\":\"home\"},{\"text\":\"Menu\",\"href\":\"\",\"icon\":\"empty\",\"target\":\"_self\",\"title\":\"\",\"type\":\"menu\"},{\"text\":\"Items\",\"href\":\"\",\"icon\":\"empty\",\"target\":\"_self\",\"title\":\"\",\"type\":\"items\"},{\"text\":\"Cart\",\"href\":\"\",\"icon\":\"empty\",\"target\":\"_self\",\"title\":\"\",\"type\":\"cart\"},{\"text\":\"Checkout\",\"href\":\"\",\"icon\":\"empty\",\"target\":\"_self\",\"title\":\"\",\"type\":\"checkout\"},{\"type\":\"custom\",\"text\":\"About\",\"href\":\"\",\"target\":\"_self\",\"children\":[{\"text\":\"Career\",\"href\":\"\",\"icon\":\"empty\",\"target\":\"_self\",\"title\":\"\",\"type\":\"career\"},{\"text\":\"Team Members\",\"href\":\"\",\"icon\":\"empty\",\"target\":\"_self\",\"title\":\"\",\"type\":\"team\"},{\"text\":\"Gallery\",\"href\":\"\",\"icon\":\"empty\",\"target\":\"_self\",\"title\":\"\",\"type\":\"gallery\"},{\"text\":\"FAQ\",\"href\":\"\",\"icon\":\"empty\",\"target\":\"_self\",\"title\":\"\",\"type\":\"faq\"}]},{\"text\":\"Blog\",\"href\":\"\",\"icon\":\"empty\",\"target\":\"_self\",\"title\":\"\",\"type\":\"blog\"},{\"text\":\"Contact\",\"href\":\"\",\"icon\":\"empty\",\"target\":\"_self\",\"title\":\"\",\"type\":\"contact\"}]', '2024-02-23 13:47:07', '2024-02-23 13:47:07'),
(45, 19, 82, '[{\"text\":\"Home\",\"href\":\"\",\"icon\":\"empty\",\"target\":\"_self\",\"title\":\"\",\"type\":\"home\"},{\"text\":\"Menu\",\"href\":\"\",\"icon\":\"empty\",\"target\":\"_self\",\"title\":\"\",\"type\":\"menu\"},{\"text\":\"Items\",\"href\":\"\",\"icon\":\"empty\",\"target\":\"_self\",\"title\":\"\",\"type\":\"items\"},{\"text\":\"Cart\",\"href\":\"\",\"icon\":\"empty\",\"target\":\"_self\",\"title\":\"\",\"type\":\"cart\"},{\"text\":\"Checkout\",\"href\":\"\",\"icon\":\"empty\",\"target\":\"_self\",\"title\":\"\",\"type\":\"checkout\"},{\"type\":\"custom\",\"text\":\"About\",\"href\":\"\",\"target\":\"_self\",\"children\":[{\"text\":\"Career\",\"href\":\"\",\"icon\":\"empty\",\"target\":\"_self\",\"title\":\"\",\"type\":\"career\"},{\"text\":\"Team Members\",\"href\":\"\",\"icon\":\"empty\",\"target\":\"_self\",\"title\":\"\",\"type\":\"team\"},{\"text\":\"Gallery\",\"href\":\"\",\"icon\":\"empty\",\"target\":\"_self\",\"title\":\"\",\"type\":\"gallery\"},{\"text\":\"FAQ\",\"href\":\"\",\"icon\":\"empty\",\"target\":\"_self\",\"title\":\"\",\"type\":\"faq\"}]},{\"text\":\"Blog\",\"href\":\"\",\"icon\":\"empty\",\"target\":\"_self\",\"title\":\"\",\"type\":\"blog\"},{\"text\":\"Contact\",\"href\":\"\",\"icon\":\"empty\",\"target\":\"_self\",\"title\":\"\",\"type\":\"contact\"}]', '2024-02-23 13:48:00', '2024-02-23 13:48:00');

-- --------------------------------------------------------

--
-- Table structure for table `user_offline_gateways`
--

CREATE TABLE `user_offline_gateways` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `short_description` text,
  `instructions` blob,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `serial_number` int(11) NOT NULL DEFAULT '0',
  `is_receipt` tinyint(4) NOT NULL DEFAULT '1',
  `receipt` varchar(100) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_offline_gateways`
--

INSERT INTO `user_offline_gateways` (`id`, `name`, `short_description`, `instructions`, `status`, `serial_number`, `is_receipt`, `receipt`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Cash On Delivery', NULL, '', 1, 3, 0, NULL, 2, '2024-01-17 17:32:59', '2024-01-17 17:32:59'),
(2, 'Offline Gateway 1', 'Please send your payment to the following account.\r\nBank Name: Lorem Ipsum.\r\nBeneficiary Name: John Doe.\r\nAccount Number/IBAN: 12345678', 0x3c703e43686173652042616e6b2069732074686520636f6e73756d65722062616e6b696e67206469766973696f6e206f66204a504d6f7267616e2043686173652e20556e6c696b652069747320636f6d70657469746f72732c2043686173652069732074616b696e6720737465707320746f20657870616e6420697473206272616e6368206e6574776f726b20696e206b6579206d61726b6574732e205468652062616e6b2063757272656e746c7920686173206e6561726c7920352c303030206272616e6368657320616e642031362c3030302041544d732e204163636f7264696e6720746f207468652062616e6b2c206e6561726c792068616c66206f662074686520636f756e747279e280997320686f757365686f6c64732061726520436861736520637573746f6d6572732e3c2f703e, 1, 1, 1, NULL, 2, '2024-01-17 17:33:24', '2024-01-17 17:33:24'),
(3, 'Offline Gateway 2', 'Please send your payment to the following account.\r\nBank Name: Lorem Ipsum.\r\nBeneficiary Name: John Doe.\r\nAccount Number/IBAN: 12345678', 0x3c703e42616e6b206f6620416d6572696361207365727665732061626f7574203636206d696c6c696f6e20636f6e73756d65727320616e6420736d616c6c20627573696e65737320636c69656e747320776f726c64776964652e204c696b65206d616e79206f662074686520626967676573742062616e6b732c2042616e6b206f6620416d6572696361206973206b6e6f776e20666f7220697473206469676974616c20696e6e6f766174696f6e2e20497420686173206d6f7265207468616e203337206d696c6c696f6e206469676974616c20636c69656e747320616e6420697320657870657269656e63696e67207375636365737320616674657220696e74726f647563696e6720697473207669727475616c20617373697374616e742c2045726963612c20746861742061737369737473206163636f756e7420686f6c64657273207769746820766172696f7573207461736b733c2f703e, 1, 2, 0, NULL, 2, '2024-01-17 17:33:57', '2024-01-17 17:33:57');

-- --------------------------------------------------------

--
-- Table structure for table `user_pages`
--

CREATE TABLE `user_pages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `status` tinyint(3) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_pages`
--

INSERT INTO `user_pages` (`id`, `user_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 2, 1, '2024-01-17 17:20:35', '2024-01-17 17:20:35'),
(2, 2, 1, '2024-01-17 17:21:34', '2024-01-17 17:21:34');

-- --------------------------------------------------------

--
-- Table structure for table `user_page_contents`
--

CREATE TABLE `user_page_contents` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `language_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `page_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `content` longtext NOT NULL,
  `meta_keywords` varchar(255) DEFAULT NULL,
  `meta_description` text,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_page_contents`
--

INSERT INTO `user_page_contents` (`id`, `language_id`, `user_id`, `page_id`, `title`, `slug`, `content`, `meta_keywords`, `meta_description`, `created_at`, `updated_at`) VALUES
(1, 61, 2, 1, 'Privacy Policy', 'privacy-policy', '<h3>1. Information Collection</h3>\r\n<p>This Privacy Policy describes Our policies and procedures on the collection, use and disclosure of Your information when You use the Service and tells You about Your privacy rights and how the law protects You.</p>\r\n<p>We use Your Personal data to provide and improve the Service. By using the Service, You agree to the collection and use of information in accordance with this Privacy Policy. </p>\r\n<h3>2. Personal Data</h3>\r\n<p>While using Our Service, We may ask You to provide Us with certain personally identifiable information that can be used to contact or identify You. Personally identifiable information may include, but is not limited to:</p>\r\n<p>Email address</p>\r\n<p>First name and last name</p>\r\n<p>Phone number</p>\r\n<p>Address, State, Province, ZIP/Postal code, City</p>\r\n<p>Usage Data</p>\r\n<h3>3. Usage Data</h3>\r\n<p>Usage Data is collected automatically when using the Service.</p>\r\n<p>Usage Data may include information such as Your Device\'s Internet Protocol address (e.g. IP address), browser type, browser version, the pages of our Service that You visit, the time and date of Your visit, the time spent on those pages, unique device identifiers and other diagnostic data.</p>\r\n<p>When You access the Service by or through a mobile device, We may collect certain information automatically, including, but not limited to, the type of mobile device You use, Your mobile device unique ID, the IP address of Your mobile device, Your mobile operating system, the type of mobile Internet browser You use, unique device identifiers and other diagnostic data.</p>\r\n<p>We may also collect information that Your browser sends whenever You visit our Service or when You access the Service by or through a mobile device.</p>\r\n<p> </p>\r\n<h3>4. Retention of Your Data</h3>\r\n<p>The Company will retain Your Personal Data only for as long as is necessary for the purposes set out in this Privacy Policy. We will retain and use Your Personal Data to the extent necessary to comply with our legal obligations (for example, if we are required to retain your data to comply with applicable laws), resolve disputes, and enforce our legal agreements and policies.</p>\r\n<p>The Company will also retain Usage Data for internal analysis purposes. Usage Data is generally retained for a shorter period of time, except when this data is used to strengthen the security or to improve the functionality of Our Service, or We are legally obligated to retain this data for longer time periods.</p>\r\n<p> </p>\r\n<h3>6. Transfer of Your Data</h3>\r\n<p>Your information, including Personal Data, is processed at the Company\'s operating offices and in any other places where the parties involved in the processing are located. It means that this information may be transferred to — and maintained on — computers located outside of Your state, province, country or other governmental jurisdiction where the data protection laws may differ than those from Your jurisdiction.</p>\r\n<p>Your consent to this Privacy Policy followed by Your submission of such information represents Your agreement to that transfer.</p>\r\n<p>The Company will take all steps reasonably necessary to ensure that Your data is treated securely and in accordance with this Privacy Policy and no transfer of Your Personal Data will take place to an organization or a country unless there are adequate controls in place including the security of Your data and other personal information.</p>\r\n<p> </p>\r\n<h3>7. Delete Your Personal Data</h3>\r\n<p>You have the right to delete or request that We assist in deleting the Personal Data that We have collected about You.</p>\r\n<p>Our Service may give You the ability to delete certain information about You from within the Service.</p>\r\n<p>You may update, amend, or delete Your information at any time by signing in to Your Account, if you have one, and visiting the account settings section that allows you to manage Your personal information. You may also contact Us to request access to, correct, or delete any personal information that You have provided to Us.</p>\r\n<p>Please note, however, that We may need to retain certain information when we have a legal obligation or lawful basis to do so.</p>\r\n<p> </p>\r\n<h3>8. Business Transactions</h3>\r\n<p>If the Company is involved in a merger, acquisition or asset sale, Your Personal Data may be transferred. We will provide notice before Your Personal Data is transferred and becomes subject to a different Privacy Policy.</p>\r\n<p> </p>\r\n<h3>9. Security of Your Personal Data</h3>\r\n<p>The security of Your Personal Data is important to Us, but remember that no method of transmission over the Internet, or method of electronic storage is 100% secure. While We strive to use commercially acceptable means to protect Your Personal Data, We cannot guarantee its absolute security.</p>\r\n<p>Children\'s Privacy</p>\r\n<p>Our Service does not address anyone under the age of 13. We do not knowingly collect personally identifiable information from anyone under the age of 13. If You are a parent or guardian and You are aware that Your child has provided Us with Personal Data, please contact Us. If We become aware that We have collected Personal Data from anyone under the age of 13 without verification of parental consent, We take steps to remove that information from Our servers.</p>', NULL, NULL, '2024-01-17 17:20:35', '2024-01-29 18:35:34'),
(2, 62, 2, 1, 'سياسة الخصوصية', 'سياسة-الخصوصية', '<p dir=\"rtl\">مرحبا بكم في إيفينتو. تحدد هذه الشروط والأحكام القواعد واللوائح الخاصة باستخدام موقعنا.</p>\r\n<h5 dir=\"rtl\"><strong>قبول الشروط</strong></h5>\r\n<p dir=\"rtl\">من خلال الوصول إلى موقعنا واستخدامه ، فإنك توافق على الالتزام بهذه الشروط والأحكام. إذا كنت لا توافق على هذه الشروط والأحكام ، يجب عليك عدم استخدام موقعنا.</p>\r\n<h5 dir=\"rtl\"><strong>الملكية الفكرية</strong></h5>\r\n<p dir=\"rtl\">جميع حقوق الملكية الفكرية في الموقع والمحتوى المنشور عليه ، بما في ذلك على سبيل المثال لا الحصر حقوق الطبع والنشر والعلامات التجارية ، مملوكة لنا أو للمرخصين لدينا. لا يجوز لك استخدام أي من int لدينا</p>\r\n<h5 dir=\"rtl\">محتوى المستخدم</h5>\r\n<p dir=\"rtl\">من خلال تقديم أي محتوى إلى موقعنا ، فإنك تمنحنا ترخيصا عالميا وغير حصري وخالي من حقوق الملكية لاستخدام هذا المحتوى وإعادة إنتاجه وتوزيعه وعرضه بأي تنسيق وسائط ومن خلال أي وسيلة إعلامية.</p>\r\n<h5 dir=\"rtl\">إخلاء المسؤولية عن الضمانات</h5>\r\n<p dir=\"rtl\">يتم توفير موقعنا الإلكتروني والمحتوى المنشور عليه على أساس \"كما هو\" و \"كما هو متاح\". نحن لا نقدم أي ضمانات ، صريحة أو ضمنية ، فيما يتعلق بالموقع ، بما في ذلك على سبيل المثال لا الحصر</p>\r\n<h5 dir=\"rtl\"> </h5>\r\n<h5 dir=\"rtl\">تحديد المسؤولية</h5>\r\n<p dir=\"rtl\">لن نكون مسؤولين عن أي أضرار ، بما في ذلك على سبيل المثال لا الحصر الأضرار المباشرة وغير المباشرة والعرضية والعقابية والتبعية ، الناشئة عن استخدام أو عدم القدرة على استخدام موقعنا أو المقاولات.</p>\r\n<h5 dir=\"rtl\"><strong>التعديلات على الشروط والأحكام</strong></h5>\r\n<p dir=\"rtl\">نحتفظ بالحق في تعديل هذه الشروط والأحكام في أي وقت دون إشعار مسبق. إن استمرارك في استخدام موقعنا الإلكتروني بعد أي تعديلات من هذا القبيل يشير إلى موافقتك على التعديل الثالث.</p>', NULL, NULL, '2024-01-17 17:20:35', '2024-01-29 20:15:40'),
(3, 61, 2, 2, 'Terms & Conditions', 'terms-&-conditions', '<p>Welcome to Eorder. These terms and conditions outline the rules and regulations for the use of our website.</p>\r\n<h3>1. Acceptance of Terms</h3>\r\n<p>By accessing and using our website, you agree to be bound by these terms and conditions. If you do not agree to these terms and conditions, you should not use our website.</p>\r\n<h3>2. Intellectual Property</h3>\r\n<p>All intellectual property rights in the website and the content published on it, including but not limited to copyright and trademarks, are owned by us or our licensors. You may not use any of our intellectual property without our prior written consent.</p>\r\n<h3>3. User Content</h3>\r\n<p>By submitting any content to our website, you grant us a worldwide, non-exclusive, royalty-free license to use, reproduce, distribute, and display such content in any media format and through any media channels.</p>\r\n<h3>4. Disclaimer of Warranties</h3>\r\n<p>Our website and the content published on it are provided on an \"as is\" and \"as available\" basis. We do not make any warranties, express or implied, regarding the website, including but not limited to the accuracy, reliability, or suitability of the content for any particular purpose.</p>\r\n<h3>5. Limitation of Liability</h3>\r\n<p>We shall not be liable for any damages, including but not limited to direct, indirect, incidental, punitive, and consequential damages, arising from the use or inability to use our website or the content published on it.</p>\r\n<h3>6. Modifications to Terms and Conditions</h3>\r\n<p>We reserve the right to modify these terms and conditions at any time without prior notice. Your continued use of our website after any such modifications indicates your acceptance of the modified terms and conditions.</p>\r\n<h3>7. Governing Law and Jurisdiction</h3>\r\n<p>These terms and conditions shall be governed by and construed by the laws of the jurisdiction in which we operate, without giving effect to any principles of conflicts of law. Any legal proceedings arising out of or in connection with these terms and conditions shall be brought solely in the courts located in the jurisdiction in which we operate.</p>\r\n<h3>8. Termination</h3>\r\n<p>We shall not be liable for any damages, including but not limited to direct, indirect, incidental, punitive, and consequential damages, arising from the use or inability to use our website or the content published on it.</p>\r\n<h3>9. Contact Information</h3>\r\n<p>If you have any questions or comments about these terms and conditions, please contact us at info@eorder.com.</p>', NULL, NULL, '2024-01-17 17:21:34', '2024-01-29 18:25:34'),
(4, 62, 2, 2, 'البنود و الظروف', 'البنود-و-الظروف', '<p dir=\"rtl\">مرحبا بكم في جيجو. تحدد هذه الشروط والأحكام القواعد واللوائح الخاصة باستخدام موقعنا.</p>\r\n<p dir=\"rtl\"><br /><strong>1. قبول الشروط</strong></p>\r\n<p dir=\"rtl\">من خلال الوصول إلى موقعنا واستخدامه ، فإنك توافق على الالتزام بهذه الشروط والأحكام. إذا كنت لا توافق على هذه الشروط والأحكام ، فلا يجب عليك استخدام موقعنا.</p>\r\n<p dir=\"rtl\"><br /><strong>2. الملكية الفكرية</strong></p>\r\n<p dir=\"rtl\">جميع حقوق الملكية الفكرية في الموقع والمحتوى المنشور عليه ، بما في ذلك على سبيل المثال لا الحصر حقوق النشر والعلامات التجارية ، مملوكة لنا أو للمرخصين لدينا. لا يجوز لك استخدام أي من ملكيتنا الفكرية دون موافقة خطية مسبقة منا.</p>\r\n<p dir=\"rtl\"><br /><strong>3. محتوى المستخدم</strong></p>\r\n<p dir=\"rtl\">من خلال تقديم أي محتوى إلى موقعنا ، فإنك تمنحنا ترخيصًا عالميًا غير حصري وخالي من حقوق الملكية لاستخدام هذا المحتوى وإعادة إنتاجه وتوزيعه وعرضه في أي تنسيقات وسائط وعبر أي قنوات وسائط.</p>\r\n<p dir=\"rtl\"><br /><strong>4. إخلاء المسؤولية عن الضمانات</strong></p>\r\n<p dir=\"rtl\">يتم توفير موقعنا الإلكتروني والمحتوى المنشور عليه \"كما هو\" و \"كما هو متاح\". نحن لا نقدم أي ضمانات ، صريحة أو ضمنية ، فيما يتعلق بالموقع الإلكتروني ، بما في ذلك على سبيل المثال لا الحصر دقة أو موثوقية أو ملاءمة المحتوى لأي غرض معين.</p>\r\n<p dir=\"rtl\"><br /><strong>5. تحديد المسؤولية</strong></p>\r\n<p dir=\"rtl\">لن نكون مسؤولين عن أي أضرار ، بما في ذلك على سبيل المثال لا الحصر ، الأضرار المباشرة وغير المباشرة والعرضية والعقابية والتبعية ، الناشئة عن استخدام أو عدم القدرة على استخدام موقعنا أو المحتوى المنشور عليه.</p>\r\n<p dir=\"rtl\"><br /><strong>6. تعديلات على الشروط والأحكام</strong></p>\r\n<p dir=\"rtl\">نحتفظ بالحق في تعديل هذه الشروط والأحكام في أي وقت دون إشعار مسبق. يشير استمرار استخدامك لموقعنا على الويب بعد أي تعديلات من هذا القبيل إلى موافقتك على الشروط والأحكام المعدلة.</p>\r\n<p dir=\"rtl\"><br /><strong>7. القانون الحاكم والاختصاص القضائي</strong></p>\r\n<p dir=\"rtl\">تخضع هذه الشروط والأحكام وتفسر وفقًا لقوانين الولاية القضائية التي نعمل فيها ، دون إعمال أي مبادئ لتعارض القوانين. أي إجراءات قانونية ناشئة عن أو فيما يتعلق بهذه الشروط والأحكام يجب أن يتم رفعها فقط في المحاكم الواقعة في الولاية القضائية التي نعمل فيها.</p>\r\n<p dir=\"rtl\"><br /><strong>8. الإنهاء</strong></p>\r\n<p dir=\"rtl\">يجوز لنا إنهاء أو تعليق وصولك إلى موقعنا على الفور ، دون إشعار مسبق أو مسؤولية ، لأي سبب من الأسباب ، بما في ذلك على سبيل المثال لا الحصر إذا قمت بخرق هذه الشروط والأحكام.</p>\r\n<p dir=\"rtl\"><br /><strong>9. معلومات الاتصال</strong></p>\r\n<p dir=\"rtl\">إذا كان لديك أي أسئلة أو تعليقات حول هذه الشروط والأحكام ، يرجى الاتصال بنا على info@fastifo.com.</p>', NULL, NULL, '2024-01-17 17:21:34', '2024-01-29 20:18:15');

-- --------------------------------------------------------

--
-- Table structure for table `user_page_headings`
--

CREATE TABLE `user_page_headings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `language_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `menu_page_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `items_page_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `items_details_page_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cart_page_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `checkout_page_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `career_page_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `career_details_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gallery_page_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `error_page_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `team_page_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reservation_page_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `blog_page_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `blog_details_page_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_page_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `faq_page_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `about_page_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `forget_password_page_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `login_page_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `signup_page_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_page_headings`
--

INSERT INTO `user_page_headings` (`id`, `language_id`, `user_id`, `menu_page_title`, `items_page_title`, `items_details_page_title`, `cart_page_title`, `checkout_page_title`, `career_page_title`, `career_details_title`, `gallery_page_title`, `error_page_title`, `team_page_title`, `reservation_page_title`, `blog_page_title`, `blog_details_page_title`, `contact_page_title`, `faq_page_title`, `about_page_title`, `forget_password_page_title`, `login_page_title`, `signup_page_title`, `created_at`, `updated_at`) VALUES
(2, 61, 2, 'Our Menu', 'Our Items', 'Our Items', 'Cart', 'Checkout', 'Career', 'Career Details', 'Our Gallery', '404', 'Team Members', 'Reserve Table', 'Blog Details', 'Blog Details', 'Contact Us', 'FAQ', 'About Us', 'Forgot Password', 'Login', 'Register', '2024-01-16 17:27:13', '2024-01-30 18:08:10'),
(3, 62, 2, 'القائمة لدينا', 'العناصر لدينا', 'تفاصيل العنصر', 'عربة التسوق', 'الدفع', 'وظائف', 'تفاصيل الوظيفة', 'معرضنا', '404 غير موجود', 'أعضاء الفريق', 'حجز', 'أحدث المدونات', 'تفاصيل المدونة', 'اتصل بنا', 'أسئلة مكررة', 'معلومات عنا', 'نسيت كلمة المرور', 'تسجيل الدخول', 'اشتراك', '2024-01-16 18:50:06', '2024-01-30 18:09:34'),
(4, 63, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-01-17 16:10:07', '2024-01-17 16:10:07'),
(12, 71, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-01-31 15:45:53', '2024-01-31 15:45:53'),
(13, 72, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-01-31 15:51:46', '2024-01-31 15:51:46'),
(14, 73, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-01-31 15:53:59', '2024-01-31 15:53:59'),
(18, 77, 14, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-02-18 15:26:16', '2024-02-18 15:26:16'),
(19, 78, 15, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-02-18 19:57:22', '2024-02-18 19:57:22'),
(20, 79, 16, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-02-19 14:54:43', '2024-02-19 14:54:43'),
(21, 80, 17, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-02-19 15:23:05', '2024-02-19 15:23:05'),
(22, 81, 18, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-02-23 13:47:07', '2024-02-23 13:47:07'),
(23, 82, 19, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-02-23 13:48:00', '2024-02-23 13:48:00');

-- --------------------------------------------------------

--
-- Table structure for table `user_payment_gateways`
--

CREATE TABLE `user_payment_gateways` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `subtitle` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `details` text,
  `name` varchar(100) DEFAULT NULL,
  `type` varchar(20) NOT NULL DEFAULT 'manual',
  `information` mediumtext,
  `keyword` varchar(255) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_payment_gateways`
--

INSERT INTO `user_payment_gateways` (`id`, `subtitle`, `title`, `details`, `name`, `type`, `information`, `keyword`, `user_id`, `status`) VALUES
(11, NULL, NULL, NULL, 'Flutterwave', 'automatic', '{\"public_key\":null,\"secret_key\":null,\"text\":\"Pay via your Flutterwave account.\"}', 'flutterwave', 2, 1),
(12, NULL, NULL, NULL, 'Razorpay', 'automatic', '{\"key\":null,\"secret\":null,\"text\":\"Pay via your Razorpay account.\"}', 'razorpay', 2, 1),
(13, NULL, NULL, NULL, 'Paytm', 'automatic', '{\"environment\":\"local\",\"merchant\":null,\"secret\":null,\"website\":null,\"industry\":null,\"text\":\"Pay via your Paytm account.\"}', 'paytm', 2, 1),
(14, NULL, NULL, NULL, 'Paystack', 'automatic', '{\"key\":null,\"email\":null,\"text\":\"Pay via your Paystack account.\"}', 'paystack', 2, 1),
(15, NULL, NULL, NULL, 'Instamojo', 'automatic', '{\"key\":null,\"token\":null,\"sandbox_check\":\"1\",\"text\":\"Pay via your Instamojo account.\"}', 'instamojo', 2, 1),
(16, NULL, NULL, NULL, 'Stripe', 'automatic', '{\"key\":null,\"secret\":null,\"text\":\"Pay via your Credit account.\"}', 'stripe', 2, 1),
(17, NULL, NULL, NULL, 'PayPal', 'automatic', '{\"client_id\":null,\"sandbox_check\":\"1\",\"client_secret\":\"-\",\"text\":\"Pay via your PayPal account.\"}', 'paypal', 2, 1),
(18, NULL, NULL, NULL, 'Mollie', 'automatic', '{\"key\":null,\"text\":\"Pay via your Mollie Payment account.\"}', 'mollie', 2, 1),
(19, NULL, NULL, NULL, 'Mercado Pago', 'automatic', '{\"token\":null,\"sandbox_check\":\"1\",\"text\":\"Pay via your Mercado Pago account.\"}', 'mercadopago', 2, 1),
(20, NULL, NULL, NULL, 'Authorize.net', 'automatic', '{\"login_id\":null,\"transaction_key\":null,\"public_key\":null,\"sandbox_check\":\"1\",\"text\":\"Pay via your Authorize.net account.\"}', 'authorize.net', 2, 1),
(121, NULL, NULL, NULL, 'Flutterwave', 'automatic', NULL, 'flutterwave', 14, 1),
(122, NULL, NULL, NULL, 'Razorpay', 'automatic', NULL, 'razorpay', 14, 1),
(123, NULL, NULL, NULL, 'Paytm', 'automatic', NULL, 'paytm', 14, 1),
(124, NULL, NULL, NULL, 'Paystack', 'automatic', NULL, 'paystack', 14, 1),
(125, NULL, NULL, NULL, 'Instamojo', 'automatic', NULL, 'instamojo', 14, 1),
(126, NULL, NULL, NULL, 'Stripe', 'automatic', NULL, 'stripe', 14, 1),
(127, NULL, NULL, NULL, 'Paypal', 'automatic', NULL, 'paypal', 14, 1),
(128, NULL, NULL, NULL, 'Mollie', 'automatic', NULL, 'mollie', 14, 1),
(129, NULL, NULL, NULL, 'Mercadopago', 'automatic', NULL, 'mercadopago', 14, 1),
(130, NULL, NULL, NULL, 'Authorize.net', 'automatic', NULL, 'authorize.net', 14, 1),
(131, NULL, NULL, NULL, 'Flutterwave', 'automatic', NULL, 'flutterwave', 15, 1),
(132, NULL, NULL, NULL, 'Razorpay', 'automatic', NULL, 'razorpay', 15, 1),
(133, NULL, NULL, NULL, 'Paytm', 'automatic', NULL, 'paytm', 15, 1),
(134, NULL, NULL, NULL, 'Paystack', 'automatic', NULL, 'paystack', 15, 1),
(135, NULL, NULL, NULL, 'Instamojo', 'automatic', NULL, 'instamojo', 15, 1),
(136, NULL, NULL, NULL, 'Stripe', 'automatic', NULL, 'stripe', 15, 1),
(137, NULL, NULL, NULL, 'Paypal', 'automatic', NULL, 'paypal', 15, 1),
(138, NULL, NULL, NULL, 'Mollie', 'automatic', NULL, 'mollie', 15, 1),
(139, NULL, NULL, NULL, 'Mercadopago', 'automatic', NULL, 'mercadopago', 15, 1),
(140, NULL, NULL, NULL, 'Authorize.net', 'automatic', NULL, 'authorize.net', 15, 1),
(141, NULL, NULL, NULL, 'Flutterwave', 'automatic', NULL, 'flutterwave', 16, 1),
(142, NULL, NULL, NULL, 'Razorpay', 'automatic', NULL, 'razorpay', 16, 1),
(143, NULL, NULL, NULL, 'Paytm', 'automatic', NULL, 'paytm', 16, 1),
(144, NULL, NULL, NULL, 'Paystack', 'automatic', NULL, 'paystack', 16, 1),
(145, NULL, NULL, NULL, 'Instamojo', 'automatic', NULL, 'instamojo', 16, 1),
(146, NULL, NULL, NULL, 'Stripe', 'automatic', NULL, 'stripe', 16, 1),
(147, NULL, NULL, NULL, 'Paypal', 'automatic', NULL, 'paypal', 16, 1),
(148, NULL, NULL, NULL, 'Mollie', 'automatic', NULL, 'mollie', 16, 1),
(149, NULL, NULL, NULL, 'Mercadopago', 'automatic', NULL, 'mercadopago', 16, 1),
(150, NULL, NULL, NULL, 'Authorize.net', 'automatic', NULL, 'authorize.net', 16, 1),
(151, NULL, NULL, NULL, 'Flutterwave', 'automatic', NULL, 'flutterwave', 17, 1),
(152, NULL, NULL, NULL, 'Razorpay', 'automatic', NULL, 'razorpay', 17, 1),
(153, NULL, NULL, NULL, 'Paytm', 'automatic', NULL, 'paytm', 17, 1),
(154, NULL, NULL, NULL, 'Paystack', 'automatic', NULL, 'paystack', 17, 1),
(155, NULL, NULL, NULL, 'Instamojo', 'automatic', NULL, 'instamojo', 17, 1),
(156, NULL, NULL, NULL, 'Stripe', 'automatic', NULL, 'stripe', 17, 1),
(157, NULL, NULL, NULL, 'Paypal', 'automatic', NULL, 'paypal', 17, 1),
(158, NULL, NULL, NULL, 'Mollie', 'automatic', NULL, 'mollie', 17, 1),
(159, NULL, NULL, NULL, 'Mercadopago', 'automatic', NULL, 'mercadopago', 17, 1),
(160, NULL, NULL, NULL, 'Authorize.net', 'automatic', NULL, 'authorize.net', 17, 1),
(161, NULL, NULL, NULL, 'Flutterwave', 'automatic', NULL, 'flutterwave', 18, 1),
(162, NULL, NULL, NULL, 'Razorpay', 'automatic', NULL, 'razorpay', 18, 1),
(163, NULL, NULL, NULL, 'Paytm', 'automatic', NULL, 'paytm', 18, 1),
(164, NULL, NULL, NULL, 'Paystack', 'automatic', NULL, 'paystack', 18, 1),
(165, NULL, NULL, NULL, 'Instamojo', 'automatic', NULL, 'instamojo', 18, 1),
(166, NULL, NULL, NULL, 'Stripe', 'automatic', NULL, 'stripe', 18, 1),
(167, NULL, NULL, NULL, 'Paypal', 'automatic', NULL, 'paypal', 18, 1),
(168, NULL, NULL, NULL, 'Mollie', 'automatic', NULL, 'mollie', 18, 1),
(169, NULL, NULL, NULL, 'Mercadopago', 'automatic', NULL, 'mercadopago', 18, 1),
(170, NULL, NULL, NULL, 'Authorize.net', 'automatic', NULL, 'authorize.net', 18, 1),
(171, NULL, NULL, NULL, 'Flutterwave', 'automatic', NULL, 'flutterwave', 19, 1),
(172, NULL, NULL, NULL, 'Razorpay', 'automatic', NULL, 'razorpay', 19, 1),
(173, NULL, NULL, NULL, 'Paytm', 'automatic', NULL, 'paytm', 19, 1),
(174, NULL, NULL, NULL, 'Paystack', 'automatic', NULL, 'paystack', 19, 1),
(175, NULL, NULL, NULL, 'Instamojo', 'automatic', NULL, 'instamojo', 19, 1),
(176, NULL, NULL, NULL, 'Stripe', 'automatic', NULL, 'stripe', 19, 1),
(177, NULL, NULL, NULL, 'Paypal', 'automatic', NULL, 'paypal', 19, 1),
(178, NULL, NULL, NULL, 'Mollie', 'automatic', NULL, 'mollie', 19, 1),
(179, NULL, NULL, NULL, 'Mercadopago', 'automatic', NULL, 'mercadopago', 19, 1),
(180, NULL, NULL, NULL, 'Authorize.net', 'automatic', NULL, 'authorize.net', 19, 1),
(212, NULL, NULL, NULL, 'Iyzico', 'automatic', '{\"sandbox_status\":\"1\",\"api_key\":null,\"secret_key\":null,\"text\":\"Pay via your iyzico account.\"}', 'iyzico', 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `user_permissions`
--

CREATE TABLE `user_permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `package_id` int(11) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `permissions` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_permissions`
--

INSERT INTO `user_permissions` (`id`, `package_id`, `user_id`, `permissions`, `created_at`, `updated_at`) VALUES
(2, 51, 2, '[\"Custom Domain\",\"Subdomain\",\"POS\",\"Coupon\",\"Amazon AWS s3\",\"Live Orders\",\"Whatsapp Order & Notification\",\"QR Menu\",\"Table Reservation\",\"Table QR Builder\",\"Call Waiter\",\"Staffs\",\"Blog\",\"Custom Page\",\"Online Order\",\"On Table\",\"Pick Up\",\"Home Delivery\",\"Postal Code Based Delivery Charge\",\"PWA Installability\",\"Contact\"]', '2024-01-16 17:27:13', '2024-03-28 20:28:03'),
(13, 51, 14, '[\"Custom Domain\",\"Subdomain\",\"POS\",\"Coupon\",\"Amazon AWS s3\",\"Live Orders\",\"Whatsapp Order & Notification\",\"QR Menu\",\"Table Reservation\",\"Table QR Builder\",\"Call Waiter\",\"Staffs\",\"Blog\",\"Custom Page\",\"Online Order\",\"On Table\",\"Pick Up\",\"Home Delivery\",\"Postal Code Based Delivery Charge\",\"PWA Installability\",\"Contact\"]', '2024-02-18 15:26:16', '2024-03-28 20:28:20'),
(14, 51, 15, '[\"Custom Domain\",\"Subdomain\",\"POS\",\"Coupon\",\"Amazon AWS s3\",\"Live Orders\",\"Whatsapp Order & Notification\",\"QR Menu\",\"Table Reservation\",\"Table QR Builder\",\"Call Waiter\",\"Staffs\",\"Blog\",\"Custom Page\",\"Online Order\",\"On Table\",\"Pick Up\",\"Home Delivery\",\"Postal Code Based Delivery Charge\",\"PWA Installability\",\"Contact\"]', '2024-02-18 19:57:22', '2024-03-28 20:28:35'),
(15, 51, 16, '[\"Custom Domain\",\"Subdomain\",\"POS\",\"Coupon\",\"Amazon AWS s3\",\"Live Orders\",\"Whatsapp Order & Notification\",\"QR Menu\",\"Table Reservation\",\"Table QR Builder\",\"Call Waiter\",\"Staffs\",\"Blog\",\"Custom Page\",\"Online Order\",\"On Table\",\"Pick Up\",\"Home Delivery\",\"Postal Code Based Delivery Charge\",\"PWA Installability\",\"Contact\"]', '2024-02-19 14:54:43', '2024-03-28 20:28:50'),
(16, 51, 17, '[\"Custom Domain\",\"Subdomain\",\"POS\",\"Coupon\",\"Amazon AWS s3\",\"Live Orders\",\"Whatsapp Order & Notification\",\"QR Menu\",\"Table Reservation\",\"Table QR Builder\",\"Call Waiter\",\"Staffs\",\"Blog\",\"Custom Page\",\"Online Order\",\"On Table\",\"Pick Up\",\"Home Delivery\",\"Postal Code Based Delivery Charge\",\"PWA Installability\",\"Contact\"]', '2024-02-19 15:23:05', '2024-03-28 20:29:06'),
(17, 51, 18, '[\"Custom Domain\",\"Subdomain\",\"POS\",\"Coupon\",\"Amazon AWS s3\",\"Live Orders\",\"Whatsapp Order & Notification\",\"QR Menu\",\"Table Reservation\",\"Table QR Builder\",\"Call Waiter\",\"Staffs\",\"Blog\",\"Custom Page\",\"Online Order\",\"On Table\",\"Pick Up\",\"Home Delivery\",\"Postal Code Based Delivery Charge\",\"PWA Installability\",\"Contact\"]', '2024-02-23 13:47:07', '2024-03-28 20:29:21'),
(18, 51, 19, '[\"Custom Domain\",\"Subdomain\",\"POS\",\"Coupon\",\"Amazon AWS s3\",\"Live Orders\",\"Whatsapp Order & Notification\",\"QR Menu\",\"Table Reservation\",\"Table QR Builder\",\"Call Waiter\",\"Staffs\",\"Blog\",\"Custom Page\",\"Online Order\",\"On Table\",\"Pick Up\",\"Home Delivery\",\"Postal Code Based Delivery Charge\",\"PWA Installability\",\"Contact\"]', '2024-02-23 13:48:00', '2024-03-28 20:29:36');

-- --------------------------------------------------------

--
-- Table structure for table `user_popups`
--

CREATE TABLE `user_popups` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `language_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `type` smallint(5) UNSIGNED NOT NULL,
  `image` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `background_color` varchar(255) DEFAULT NULL,
  `background_color_opacity` decimal(3,2) UNSIGNED DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `text` text,
  `button_text` varchar(255) DEFAULT NULL,
  `button_color` varchar(255) DEFAULT NULL,
  `button_url` varchar(255) DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `end_time` time DEFAULT NULL,
  `delay` int(10) UNSIGNED NOT NULL COMMENT 'value will be in milliseconds',
  `serial_number` mediumint(8) UNSIGNED NOT NULL,
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT '1' COMMENT '0 => deactive, 1 => active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_popups`
--

INSERT INTO `user_popups` (`id`, `language_id`, `user_id`, `type`, `image`, `name`, `background_color`, `background_color_opacity`, `title`, `text`, `button_text`, `button_color`, `button_url`, `end_date`, `end_time`, `delay`, `serial_number`, `status`, `created_at`, `updated_at`) VALUES
(1, 61, 2, 6, '38c35853e854255466d93170805fdc4d623b57af.jpg', 'New Arrivals Saleu', NULL, NULL, 'Hurry, Sale Ends This Friday', 'This is your last chance to save 30%', 'Yes,I Want to Save 30%', '29A19C', 'http://example.com/', '2024-01-22', '10:30:00', 1500, 7, 0, '2024-01-19 14:36:20', '2024-01-29 15:28:25'),
(2, 61, 2, 7, '18541385add9fd5da55f9f3b9c78bfb64a7d3208.jpg', 'Flash Sale', '930077', NULL, 'Hurry, Sale Ends This Friday', 'This is your last chance to save 30%', 'Yes,I Want to Save 30%', 'FA00CA', 'http://example.com/', '2024-01-21', '10:30:00', 1500, 8, 0, '2024-01-19 14:38:19', '2024-01-19 14:52:16'),
(3, 61, 2, 5, 'c44aaa6c3f70bba6915c1a64a29610820417e6ec.jpg', 'Winter Sale', NULL, NULL, 'Get 10% off your first order', 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt', 'Subscribe', 'F8960D', NULL, NULL, NULL, 2000, 6, 0, '2024-01-19 14:44:07', '2024-01-19 14:52:13'),
(4, 61, 2, 4, '7b1a8bc3d4e5d2e8fa66b3a13068f7a4176ab994.jpg', 'Winter Offer', NULL, NULL, 'Get 10% off your first order', 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt', 'Shop Now', 'FF2865', 'http://example.com/', NULL, NULL, 1500, 4, 0, '2024-01-19 14:45:24', '2024-01-19 14:52:08'),
(5, 61, 2, 3, '3db2e150138b7779d9f1b2cd8032d73728307c16.jpg', 'Summer Sale', 'FF2865', '0.70', 'Newsletter', 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua.', 'Subscribe', 'FF2865', NULL, NULL, NULL, 2000, 3, 0, '2024-01-19 14:47:28', '2024-01-19 14:52:02'),
(6, 61, 2, 2, 'b607345e07b3b610c4dc040d4b58627f4b983fc1.jpg', 'Monthend Sale', '451D53', '0.80', 'ENJOY 10% OFF', 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua.', 'Shop Now', '451D53', 'http://example.com/', NULL, NULL, 2000, 2, 0, '2024-01-19 14:49:36', '2024-01-29 15:28:19'),
(7, 61, 2, 1, '503d319cbd62e3faa6e154e1208c732a7c57f2b5.jpg', 'Black Friday', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1500, 1, 0, '2024-01-19 14:50:18', '2024-01-19 14:51:53');

-- --------------------------------------------------------

--
-- Table structure for table `user_roles`
--

CREATE TABLE `user_roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permissions` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_roles`
--

INSERT INTO `user_roles` (`id`, `user_id`, `name`, `permissions`, `created_at`, `updated_at`) VALUES
(1, 2, 'Manager', '[\"POS\",\"Order Management\",\"Items Management\",\"Table Reservations\"]', '2024-01-21 15:04:26', '2024-01-29 20:25:00');

-- --------------------------------------------------------

--
-- Table structure for table `user_section_headings`
--

CREATE TABLE `user_section_headings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `language_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `menu_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `menu_subtitle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `team_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `team_subtitle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `blog_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `blog_subtitle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `testimonial_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_section_headings`
--

INSERT INTO `user_section_headings` (`id`, `language_id`, `user_id`, `menu_title`, `menu_subtitle`, `team_title`, `team_subtitle`, `blog_title`, `blog_subtitle`, `testimonial_title`, `created_at`, `updated_at`) VALUES
(2, 61, 2, 'Our Menus', 'Discover Food Menus', 'Our Team', 'Our Expert Members', 'Our Blog', 'Latest News Feeds', 'What Our client Saying ?', '2024-01-16 17:27:13', '2024-01-29 17:28:10'),
(3, 62, 2, 'قوائمنا', 'اكتشف قوائم الطعام', 'فريقنا', 'أعضائنا الخبراء', 'مدونتنا', 'آخر الأخبار يغذي', 'ماذا يقول عميلنا؟', '2024-01-16 18:50:06', '2024-01-29 17:40:03'),
(4, 63, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-01-17 16:10:07', '2024-01-17 16:10:07'),
(8, 67, 6, 'Our Menus', 'Discover Food Menus', 'Our Team', 'Our Expert Members', 'Blog', 'Our Latest Blog', 'What Our client Saying ?', '2024-01-20 21:38:51', '2024-01-30 16:32:06'),
(9, 68, 7, 'Our Menus', 'Discover Food Menus', 'Our Team', 'Our Expert Members', 'Our Blog', 'Our latest blogs', 'What Our client Saying ?', '2024-01-20 21:44:03', '2024-01-30 16:35:39'),
(13, 77, 14, 'Our Menus', 'Discover Food Menus', 'Our Team', 'Our Expert Members', 'Blog', 'Our latest blogs', 'What Our client Saying ?', '2024-02-18 16:43:32', '2024-02-18 16:44:04'),
(14, 78, 15, 'Our Menus', 'Discover Food Menus', 'Our Team', 'Our Expert Members', 'Our Blog', 'Our latest blogs', 'What Our client Saying ?', '2024-02-23 20:29:18', '2024-02-23 20:29:24');

-- --------------------------------------------------------

--
-- Table structure for table `user_seos`
--

CREATE TABLE `user_seos` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `language_id` int(11) DEFAULT NULL,
  `home_meta_keywords` varchar(255) DEFAULT NULL,
  `home_meta_description` text,
  `career_meta_keywords` varchar(255) DEFAULT NULL,
  `career_meta_description` text,
  `blogs_meta_keywords` varchar(255) DEFAULT NULL,
  `blogs_meta_description` text,
  `gallery_meta_keywords` varchar(255) DEFAULT NULL,
  `gallery_meta_description` text,
  `login_meta_keywords` varchar(255) DEFAULT NULL,
  `login_meta_description` text,
  `sign_up_meta_keywords` varchar(255) DEFAULT NULL,
  `sign_up_meta_description` text,
  `faqs_meta_description` text,
  `faqs_meta_keywords` varchar(255) DEFAULT NULL,
  `contact_meta_description` text,
  `contact_meta_keywords` varchar(255) DEFAULT NULL,
  `forget_password_meta_description` text,
  `forget_password_meta_keywords` varchar(255) DEFAULT NULL,
  `reservation_meta_keywords` varchar(255) DEFAULT NULL,
  `reservation_meta_description` text,
  `team_meta_keywords` varchar(255) DEFAULT NULL,
  `team_meta_description` text,
  `product_meta_keywords` varchar(255) DEFAULT NULL,
  `product_meta_description` text,
  `checkout_meta_keywords` varchar(255) DEFAULT NULL,
  `checkout_meta_description` text,
  `cart_meta_keywords` varchar(255) DEFAULT NULL,
  `cart_meta_description` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_seos`
--

INSERT INTO `user_seos` (`id`, `user_id`, `language_id`, `home_meta_keywords`, `home_meta_description`, `career_meta_keywords`, `career_meta_description`, `blogs_meta_keywords`, `blogs_meta_description`, `gallery_meta_keywords`, `gallery_meta_description`, `login_meta_keywords`, `login_meta_description`, `sign_up_meta_keywords`, `sign_up_meta_description`, `faqs_meta_description`, `faqs_meta_keywords`, `contact_meta_description`, `contact_meta_keywords`, `forget_password_meta_description`, `forget_password_meta_keywords`, `reservation_meta_keywords`, `reservation_meta_description`, `team_meta_keywords`, `team_meta_description`, `product_meta_keywords`, `product_meta_description`, `checkout_meta_keywords`, `checkout_meta_description`, `cart_meta_keywords`, `cart_meta_description`) VALUES
(2, 2, 61, 'home_meta_keywords', 'home_meta_description', 'career_meta_keywords', 'career_meta_description', 'blogs_meta_keywords', 'blogs_meta_description', 'gallery_meta_keywords', 'gallery_meta_description', 'login_meta_keywords', 'login_meta_description', 'sign_up_meta_keywords', 'sign_up_meta_description', 'faqs_meta_description', 'faqs_meta_keywords', 'contact_meta_description', 'contact_meta_keywords', 'forget_password_meta_description', 'forget_password_meta_keywords', 'reservation_meta_keywords', 'reservation_meta_description', 'team_meta_keywords', 'team_meta_description', 'product_meta_keywords', 'product_meta_description', 'checkout_meta_keywords', 'checkout_meta_description', 'cart_meta_keywords', 'cart_meta_description'),
(7, 7, 68, 'home_meta_keywords', 'home_meta_description', 'career_meta_keywords', 'career_meta_description', 'blogs_meta_keywords', 'blogs_meta_description', 'gallery_meta_keywords', 'gallery_meta_description', 'login_meta_keywords', 'login_meta_description', 'sign_up_meta_keywords', 'sign_up_meta_description', 'faqs_meta_description', 'faqs_meta_keywords', 'contact_meta_description', 'contact_meta_keywords', 'forget_password_meta_description', 'forget_password_meta_keywords', 'reservation_meta_keywords', 'reservation_meta_description', 'team_meta_keywords', 'team_meta_description', 'product_meta_keywords', 'product_meta_description', 'checkout_meta_keywords', 'checkout_meta_description', 'cart_meta_keywords', 'cart_meta_description'),
(13, 14, 77, 'home_meta_keywords', 'home_meta_description', 'career_meta_keywords', 'career_meta_description', 'blogs_meta_keywords', 'blogs_meta_description', 'gallery_meta_keywords', 'gallery_meta_description', 'login_meta_keywords', 'login_meta_description', 'sign_up_meta_keywords', 'sign_up_meta_description', 'faqs_meta_description', 'faqs_meta_keywords', 'contact_meta_description', 'contact_meta_keywords', 'forget_password_meta_description', 'forget_password_meta_keywords', 'reservation_meta_keywords', 'reservation_meta_description', 'team_meta_keywords', 'team_meta_description', 'product_meta_keywords', 'product_meta_description', 'checkout_meta_keywords', 'checkout_meta_description', 'cart_meta_keywords', 'cart_meta_description'),
(14, 15, 78, 'home_meta_keywords', 'home_meta_description', 'career_meta_keywords', 'career_meta_description', 'blogs_meta_keywords', 'blogs_meta_description', 'gallery_meta_keywords', 'gallery_meta_description', 'login_meta_keywords', 'login_meta_description', 'sign_up_meta_keywords', 'sign_up_meta_description', 'faqs_meta_description', 'faqs_meta_keywords', 'contact_meta_description', 'contact_meta_keywords', 'forget_password_meta_description', 'forget_password_meta_keywords', 'reservation_meta_keywords', 'reservation_meta_description', 'team_meta_keywords', 'team_meta_description', 'product_meta_keywords', 'product_meta_description', 'checkout_meta_keywords', 'checkout_meta_description', 'cart_meta_keywords', 'cart_meta_description'),
(15, 16, 79, 'home_meta_keywords', 'home_meta_description', 'career_meta_keywords', 'career_meta_description', 'blogs_meta_keywords', 'blogs_meta_description', 'gallery_meta_keywords', 'gallery_meta_description', 'login_meta_keywords', 'login_meta_description', 'sign_up_meta_keywords', 'sign_up_meta_description', 'faqs_meta_description', 'faqs_meta_keywords', 'contact_meta_description', 'contact_meta_keywords', 'forget_password_meta_description', 'forget_password_meta_keywords', 'reservation_meta_keywords', 'reservation_meta_description', 'team_meta_keywords', 'team_meta_description', 'product_meta_keywords', 'product_meta_description', 'checkout_meta_keywords', 'checkout_meta_description', 'cart_meta_keywords', 'cart_meta_description'),
(16, 17, 80, 'home_meta_keywords', 'home_meta_description', 'career_meta_keywords', 'career_meta_description', 'blogs_meta_keywords', 'blogs_meta_description', 'gallery_meta_keywords', 'gallery_meta_description', 'login_meta_keywords', 'login_meta_description', 'sign_up_meta_keywords', 'sign_up_meta_description', 'faqs_meta_description', 'faqs_meta_keywords', 'contact_meta_description', 'contact_meta_keywords', 'forget_password_meta_description', 'forget_password_meta_keywords', 'reservation_meta_keywords', 'reservation_meta_description', 'team_meta_keywords', 'team_meta_description', 'product_meta_keywords', 'product_meta_description', 'checkout_meta_keywords', 'checkout_meta_description', 'cart_meta_keywords', 'cart_meta_description'),
(17, 18, 81, 'home_meta_keywords', 'home_meta_description', 'career_meta_keywords', 'career_meta_description', 'blogs_meta_keywords', 'blogs_meta_description', 'gallery_meta_keywords', 'gallery_meta_description', 'login_meta_keywords', 'login_meta_description', 'sign_up_meta_keywords', 'sign_up_meta_description', 'faqs_meta_description', 'faqs_meta_keywords', 'contact_meta_description', 'contact_meta_keywords', 'forget_password_meta_description', 'forget_password_meta_keywords', 'reservation_meta_keywords', 'reservation_meta_description', 'team_meta_keywords', 'team_meta_description', 'product_meta_keywords', 'product_meta_description', 'checkout_meta_keywords', 'checkout_meta_description', 'cart_meta_keywords', 'cart_meta_description'),
(18, 19, 82, 'home_meta_keywords', 'home_meta_description', 'career_meta_keywords', 'career_meta_description', 'blogs_meta_keywords', 'blogs_meta_description', 'gallery_meta_keywords', 'gallery_meta_description', 'login_meta_keywords', 'login_meta_description', 'sign_up_meta_keywords', 'sign_up_meta_description', 'faqs_meta_description', 'faqs_meta_keywords', 'contact_meta_description', 'contact_meta_keywords', 'forget_password_meta_description', 'forget_password_meta_keywords', 'reservation_meta_keywords', 'reservation_meta_description', 'team_meta_keywords', 'team_meta_description', 'product_meta_keywords', 'product_meta_description', 'checkout_meta_keywords', 'checkout_meta_description', 'cart_meta_keywords', 'cart_meta_description');

-- --------------------------------------------------------

--
-- Table structure for table `user_sitemaps`
--

CREATE TABLE `user_sitemaps` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `sitemap_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `filename` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_social_links`
--

CREATE TABLE `user_social_links` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `icon` text COLLATE utf8mb4_unicode_ci,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `serial_number` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_social_links`
--

INSERT INTO `user_social_links` (`id`, `user_id`, `icon`, `url`, `serial_number`) VALUES
(1, 2, 'fab fa-dribbble', 'https://dribbble.com/', 5),
(2, 2, 'fab fa-instagram', 'https://www.instagram.com/', 4),
(3, 2, 'fab fa-linkedin', 'https://bd.linkedin.com/', 3),
(4, 2, 'fab fa-twitter', 'https://twitter.com/', 2),
(5, 2, 'fab fa-facebook-f', 'https://www.facebook.com/', 1),
(16, 14, 'fab fa-dribbble', 'https://dribbble.com/', 5),
(17, 14, 'fab fa-instagram', 'https://www.instagram.com/', 4),
(18, 14, 'fab fa-linkedin', 'https://bd.linkedin.com/', 3),
(19, 14, 'fab fa-twitter', 'https://twitter.com/', 2),
(20, 14, 'fab fa-facebook-f', 'https://www.facebook.com/', 1),
(21, 15, 'fab fa-dribbble', 'https://dribbble.com/', 5),
(22, 15, 'fab fa-instagram', 'https://www.instagram.com/', 4),
(23, 15, 'fab fa-linkedin', 'https://bd.linkedin.com/', 3),
(24, 15, 'fab fa-twitter', 'https://twitter.com/', 2),
(25, 15, 'fab fa-facebook-f', 'https://www.facebook.com/', 1),
(26, 16, 'fab fa-dribbble', 'https://dribbble.com/', 5),
(27, 16, 'fab fa-instagram', 'https://www.instagram.com/', 4),
(28, 16, 'fab fa-linkedin', 'https://bd.linkedin.com/', 3),
(29, 16, 'fab fa-twitter', 'https://twitter.com/', 2),
(30, 16, 'fab fa-facebook-f', 'https://www.facebook.com/', 1),
(31, 17, 'fab fa-dribbble', 'https://dribbble.com/', 5),
(32, 17, 'fab fa-instagram', 'https://www.instagram.com/', 4),
(33, 17, 'fab fa-linkedin', 'https://bd.linkedin.com/', 3),
(34, 17, 'fab fa-twitter', 'https://twitter.com/', 2),
(35, 17, 'fab fa-facebook-f', 'https://www.facebook.com/', 1),
(36, 18, 'fab fa-dribbble', 'https://dribbble.com/', 5),
(37, 18, 'fab fa-instagram', 'https://www.instagram.com/', 4),
(38, 18, 'fab fa-linkedin', 'https://bd.linkedin.com/', 3),
(39, 18, 'fab fa-twitter', 'https://twitter.com/', 2),
(40, 18, 'fab fa-facebook-f', 'https://www.facebook.com/', 1),
(41, 19, 'fab fa-dribbble', 'https://dribbble.com/', 5),
(42, 19, 'fab fa-instagram', 'https://www.instagram.com/', 4),
(43, 19, 'fab fa-linkedin', 'https://bd.linkedin.com/', 3),
(44, 19, 'fab fa-twitter', 'https://twitter.com/', 2),
(45, 19, 'fab fa-facebook-f', 'https://www.facebook.com/', 1);

-- --------------------------------------------------------

--
-- Table structure for table `user_subscribers`
--

CREATE TABLE `user_subscribers` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_subscribers`
--

INSERT INTO `user_subscribers` (`id`, `email`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'suxivojaxy@mailinator.com', 2, '2024-01-20 03:54:14', '2024-01-20 03:54:14'),
(2, 'zigyh@mailinator.com', 2, '2024-01-20 03:54:27', '2024-01-20 03:54:27'),
(3, 'moryp@mailinator.com', 2, '2024-01-20 03:54:33', '2024-01-20 03:54:33'),
(4, 'latowacyfi@mailinator.com', 2, '2024-01-20 03:54:40', '2024-01-20 03:54:40'),
(5, 'lenyw@mailinator.com', 2, '2024-01-20 03:54:46', '2024-01-20 03:54:46'),
(6, 'vozijihek@mailinator.com', 2, '2024-01-22 04:17:14', '2024-01-22 04:17:14');

-- --------------------------------------------------------

--
-- Table structure for table `user_testimonials`
--

CREATE TABLE `user_testimonials` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `language_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rank` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rating` int(11) DEFAULT NULL,
  `serial_number` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_testimonials`
--

INSERT INTO `user_testimonials` (`id`, `language_id`, `user_id`, `image`, `comment`, `name`, `rank`, `rating`, `serial_number`, `created_at`, `updated_at`) VALUES
(1, 61, 2, '4bebbd28fb6d1bd58017a693c41b280a6e755ed8.png', 'Donec ac quam non elit hendrerit placerat. Pellentesque a est id diam lacinia convallis. Etiam non quam sit amet odio pharetra lacinia. Donec purus enim, ornare ac imperdiet', 'Dominic Ray', 'Ishmael Bird', 3, 1, NULL, NULL),
(2, 61, 2, 'e6b35ad7509969048e5f4c00a775250ac2753a83.png', 'Donec ac quam non elit hendrerit placerat. Pellentesque a est id diam lacinia convallis. Etiam non quam sit amet odio pharetra lacinia. Donec purus enim, ornare ac imperdiet', 'Marcos Reus', 'Software Engineer', 4, 2, NULL, NULL),
(3, 61, 2, 'e210c5166dd0cccd807538f94bd3be76981eac0d.png', 'Donec ac quam non elit hendrerit placerat. Pellentesque a est id diam lacinia convallis. Etiam non quam sit amet odio pharetra lacinia. Donec purus enim, ornare ac imperdiet', 'Amelia Hanna', 'Manager, PlusAgency', 5, 3, NULL, NULL),
(4, 61, 2, '9d3d5cc4edd843854bf2ed0f76c681c36bfc8697.png', 'Donec ac quam non elit hendrerit placerat. Pellentesque a est id diam lacinia convallis. Etiam non quam sit amet odio pharetra lacinia. Donec purus enim, ornare ac imperdiet', 'Emma Watson', 'CEO, PlusAgency', 5, 4, NULL, NULL),
(5, 62, 2, 'aca0f78cadaf98fb9f5aa3d6c64580d5e0d6f79c.png', 'هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها. ولذلك يتم استخدام طريقة لوريم إيبسوم لأنها تعطي توزيعاَ طبيعياَ -إلى حد ما- للأحرف عوضاً عن استخدام', 'ريبيكا إيزابيلا', 'مهندس برمجيات', 5, 4, NULL, NULL),
(6, 62, 2, '652dc386e0eb80085f68d64bc84078967a78d348.png', 'هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها. ولذلك يتم استخدام طريقة لوريم إيبسوم لأنها تعطي توزيعاَ طبيعياَ -إلى حد ما- للأحرف عوضاً عن استخدام', 'ماركوس ريوس', 'مهندس برمجيات', 5, 5, NULL, NULL),
(7, 62, 2, '12c047b64c364f025bfd4e323d3e3e6ac0b749bb.png', 'هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها. ولذلك يتم استخدام طريقة لوريم إيبسوم لأنها تعطي توزيعاَ طبيعياَ -إلى حد ما- للأحرف عوضاً عن استخدام', 'اميليا حنا', 'مدير مدير', 3, 6, NULL, NULL),
(8, 62, 2, 'fecfaef159136ef30edb7a8eca308835f102568d.png', 'هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها. ولذلك يتم استخدام طريقة لوريم إيبسوم لأنها تعطي توزيعاَ طبيعياَ -إلى حد ما- للأحرف عوضاً عن استخدام', 'إيما واتسون', 'الرئيس التنفيذي لشركة', 3, 7, NULL, NULL),
(17, 77, 14, 'ce813425dfdb4a18604b6edab62487d73ebbc8d1.png', 'Donec ac quam non elit hendrerit placerat. Pellentesque a est id diam lacinia convallis. Etiam non quam sit amet odio pharetra lacinia. Donec purus enim, ornare ac imperdiet', 'Rebeca Isabella', 'CTO, PlusAgency', 1, 1, NULL, NULL),
(18, 77, 14, '88f5f9c1b380f42ec22842d7bb2a55beee58ee92.png', 'Donec ac quam non elit hendrerit placerat. Pellentesque a est id diam lacinia convallis. Etiam non quam sit amet odio pharetra lacinia. Donec purus enim, ornare ac imperdiet', 'Marcos Reus', 'Software Engineer', 4, 2, NULL, NULL),
(19, 77, 14, '2d9113da779cc4d23eae4df03278e23b4332e6a2.png', 'Donec ac quam non elit hendrerit placerat. Pellentesque a est id diam lacinia convallis. Etiam non quam sit amet odio pharetra lacinia. Donec purus enim, ornare ac imperdiet', 'Amelia Hanna', 'Manager, PlusAgency', 2, 3, NULL, NULL),
(20, 77, 14, '614d79f81fd7836b1ffd8382ce371354a4324d99.png', 'Donec ac quam non elit hendrerit placerat. Pellentesque a est id diam lacinia convallis. Etiam non quam sit amet odio pharetra lacinia. Donec purus enim, ornare ac imperdiet', 'Emma Watson', 'CEO, PlusAgency', 4, 4, NULL, NULL),
(21, 78, 15, 'f247194a56f6e758295f3a9e11d3577394cc3ff0.png', 'Donec ac quam non elit hendrerit placerat. Pellentesque a est id diam lacinia convallis. Etiam non quam sit amet odio pharetra lacinia. Donec purus enim, ornare ac imperdiet', 'Rebeca Isabella', 'CTO, PlusAgency', 3, 1, NULL, NULL),
(22, 78, 15, '504cc2dfcd96894db21a336c2f4ab9227a0b56ba.png', 'Donec ac quam non elit hendrerit placerat. Pellentesque a est id diam lacinia convallis. Etiam non quam sit amet odio pharetra lacinia. Donec purus enim, ornare ac imperdiet', 'Marcos Reus', 'Software Engineer', 4, 2, NULL, NULL),
(23, 78, 15, 'ea1b984ed7cff21514c4c88c29338273231c40ef.png', 'Donec ac quam non elit hendrerit placerat. Pellentesque a est id diam lacinia convallis. Etiam non quam sit amet odio pharetra lacinia. Donec purus enim, ornare ac imperdiet', 'Emma Watson', 'CEO, PlusAgency', 4, 3, NULL, NULL),
(24, 78, 15, 'defb35f77151821048a14caebaaeb65742efcda1.png', 'Donec ac quam non elit hendrerit placerat. Pellentesque a est id diam lacinia convallis. Etiam non quam sit amet odio pharetra lacinia. Donec purus enim, ornare ac imperdiet', 'Amelia Hanna', 'CEO, PlusAgency', 5, 4, NULL, NULL),
(25, 79, 16, '3e20abd601c8d78f3ce7f457e299390a3efd5caf.png', 'Donec ac quam non elit hendrerit placerat. Pellentesque a est id diam lacinia convallis. Etiam non quam sit amet odio pharetra lacinia. Donec purus enim, ornare ac imperdiet', 'Rebeca Isabella', 'CTO, PlusAgency', 3, 1, NULL, NULL),
(26, 79, 16, '66d8c4f66308ae8ee9cb76bb46899911437bd100.png', 'Donec ac quam non elit hendrerit placerat. Pellentesque a est id diam lacinia convallis. Etiam non quam sit amet odio pharetra lacinia. Donec purus enim, ornare ac imperdiet', 'Marcos Reus', 'Software Engineer', 4, 2, NULL, NULL),
(27, 79, 16, 'c30ea8d5c35c8bac3567ee8dcd747f6b18c205c8.png', 'Donec ac quam non elit hendrerit placerat. Pellentesque a est id diam lacinia convallis. Etiam non quam sit amet odio pharetra lacinia. Donec purus enim, ornare ac imperdiet', 'Emma Watson', 'CEO, PlusAgency', 3, 3, NULL, NULL),
(28, 79, 16, '163917c4fe3a95b78e538729704a01cc37a1c8a3.png', 'Donec ac quam non elit hendrerit placerat. Pellentesque a est id diam lacinia convallis. Etiam non quam sit amet odio pharetra lacinia. Donec purus enim, ornare ac imperdiet', 'Amelia Hanna', 'Manager, PlusAgency', 5, 4, NULL, NULL),
(29, 80, 17, '3a69df89578cfdf656cd044e9487e8f4fe7b1e13.png', 'Donec ac quam non elit hendrerit placerat. Pellentesque a est id diam lacinia convallis. Etiam non quam sit amet odio pharetra lacinia. Donec purus enim, ornare ac imperdiet', 'Rebeca Isabella', 'CTO, PlusAgency', 3, 1, NULL, NULL),
(30, 80, 17, 'd0babb178818ab7254547a9586758371c0aca136.png', 'Donec ac quam non elit hendrerit placerat. Pellentesque a est id diam lacinia convallis. Etiam non quam sit amet odio pharetra lacinia. Donec purus enim, ornare ac imperdiet', 'Marcos Reus', 'Software Engineer', 4, 2, NULL, NULL),
(31, 80, 17, '5af858782dd22770c7587c4672d32c6a70343f05.png', 'Donec ac quam non elit hendrerit placerat. Pellentesque a est id diam lacinia convallis. Etiam non quam sit amet odio pharetra lacinia. Donec purus enim, ornare ac imperdiet', 'Amelia Hanna', 'Manager, PlusAgency', 4, 3, NULL, NULL),
(32, 80, 17, '672a24b18d68dc55f706814b9902ba77fe4ed3a8.png', 'Donec ac quam non elit hendrerit placerat. Pellentesque a est id diam lacinia convallis. Etiam non quam sit amet odio pharetra lacinia. Donec purus enim, ornare ac imperdiet', 'Emma Watson', 'CEO, PlusAgency', 5, 4, NULL, NULL),
(33, 81, 18, '7fb0a8c016be52ef8f7435f849d72aec1aaf80d5.png', 'Donec ac quam non elit hendrerit placerat. Pellentesque a est id diam lacinia convallis. Etiam non quam sit amet odio pharetra lacinia. Donec purus enim, ornare ac imperdiet', 'Rebeca Isabella', 'CTO, PlusAgency', 3, 1, NULL, NULL),
(34, 81, 18, '3c04c7d34aea68dcca6ec9dc2ccc134be6b0a12a.png', 'Donec ac quam non elit hendrerit placerat. Pellentesque a est id diam lacinia convallis. Etiam non quam sit amet odio pharetra lacinia. Donec purus enim, ornare ac imperdiet', 'Marcos Reus', 'Software Engineer', 4, 2, NULL, NULL),
(35, 81, 18, 'f1605fb25ace92109cfa92bdb46a5f8d3856ae30.png', 'Donec ac quam non elit hendrerit placerat. Pellentesque a est id diam lacinia convallis. Etiam non quam sit amet odio pharetra lacinia. Donec purus enim, ornare ac imperdiet', 'Amelia Hanna', 'Manager, PlusAgency', 5, 3, NULL, NULL),
(36, 81, 18, '742fd2aa77151991958a67be551630a8a881bd54.png', 'Donec ac quam non elit hendrerit placerat. Pellentesque a est id diam lacinia convallis. Etiam non quam sit amet odio pharetra lacinia. Donec purus enim, ornare ac imperdiet', 'Emma Watson', 'CEO, PlusAgency', 5, 4, NULL, NULL),
(37, 82, 19, '55fdc7a629ef35c72df3a8110f91803595e9aacf.png', 'Donec ac quam non elit hendrerit placerat. Pellentesque a est id diam lacinia convallis. Etiam non quam sit amet odio pharetra lacinia. Donec purus enim, ornare ac imperdiet', 'Rebeca Isabella', 'CTO, PlusAgency', 4, 1, NULL, NULL),
(38, 82, 19, 'd1891a5fd77df37812e2f2e22a8fdaadcb75a651.png', 'Donec ac quam non elit hendrerit placerat. Pellentesque a est id diam lacinia convallis. Etiam non quam sit amet odio pharetra lacinia. Donec purus enim, ornare ac imperdiet', 'Marcos Reus', 'Software Engineer', 4, 2, NULL, NULL),
(39, 82, 19, '6598666a3801a5475b3003d88727e23c5253ccf5.png', 'Donec ac quam non elit hendrerit placerat. Pellentesque a est id diam lacinia convallis. Etiam non quam sit amet odio pharetra lacinia. Donec purus enim, ornare ac imperdiet', 'Amelia Hanna', 'Manager, PlusAgency', 4, 3, NULL, NULL),
(40, 82, 19, '19bfbb23272ff514d395c465fd81a87a6777c709.png', 'Donec ac quam non elit hendrerit placerat. Pellentesque a est id diam lacinia convallis. Etiam non quam sit amet odio pharetra lacinia. Donec purus enim, ornare ac imperdiet', 'Emma Watson', 'CEO, PlusAgency', 5, 4, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_ulinks`
--

CREATE TABLE `user_ulinks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `language_id` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_ulinks`
--

INSERT INTO `user_ulinks` (`id`, `language_id`, `user_id`, `name`, `url`, `created_at`, `updated_at`) VALUES
(3, 61, 2, 'Terms & Conditions', '/fastifo/terms-&-conditions', NULL, NULL),
(4, 61, 2, 'Privacy Policy', '/fastifo/privacy-policy', NULL, NULL),
(6, 62, 2, 'الرابط', '/fastifo/contact', NULL, NULL),
(7, 62, 2, 'الرابطالرابط', '/fastifo/gallery', NULL, NULL),
(23, 79, 16, 'Privacy Policy', '/coffee/privacy-policy', NULL, NULL),
(26, 78, 15, 'Privacy Policy', '/pizza/privacy-policy', NULL, NULL),
(29, 81, 18, 'Privacy Policy', '/grocery/privacy-policy', NULL, NULL),
(32, 82, 19, 'Privacy Policy', '/beverage/privacy-policy', NULL, NULL),
(35, 80, 17, 'Terms & Conditions', '/medicine/terms-&-conditions', NULL, NULL),
(36, 80, 17, 'Privacy Policy', '/medicine/privacy-policy', NULL, NULL),
(37, 77, 14, 'Privacy Policy', '/bakery/privacy-policy', NULL, NULL),
(38, 77, 14, 'Terms & Conditions', '/bakery/terms-&-conditions', NULL, NULL),
(39, 78, 15, 'Terms & Conditions', '/pizza/terms-&-conditions', NULL, NULL),
(40, 79, 16, 'Terms & Conditions', '/coffee/terms-&-conditions', NULL, NULL),
(41, 81, 18, 'Terms & Conditions', '/grocery/terms-&-conditions', NULL, NULL),
(42, 82, 19, 'Terms & Conditions', '/beverage/terms-&-conditions', NULL, NULL),
(43, 80, 17, 'Contact', '/medicine/contact', NULL, NULL),
(44, 80, 17, 'Faq', '/medicine/faq', NULL, NULL),
(45, 61, 2, 'Contact', '/fastifo/contact', NULL, NULL),
(46, 61, 2, 'Faq', '/fastifo/faq', NULL, NULL),
(47, 77, 14, 'Contact', '/bakery/contact', NULL, NULL),
(48, 77, 14, 'Faq', '/bakery/faq', NULL, NULL),
(49, 78, 15, 'Contact', '/pizza/contact', NULL, NULL),
(50, 78, 15, 'Faq', '/pizza/faq', NULL, NULL),
(51, 79, 16, 'Contact', '/coffee/contact', NULL, NULL),
(52, 79, 16, 'Faq', '/coffee/faq', NULL, NULL),
(53, 81, 18, 'Contact', '/grocery/contact', NULL, NULL),
(54, 81, 18, 'Faq', '/grocery/faq', NULL, NULL),
(55, 82, 19, 'Contact', '/beverage/contact', NULL, NULL),
(56, 82, 19, 'Faq', '/beverage/faq', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `backups`
--
ALTER TABLE `backups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `basic_extendeds`
--
ALTER TABLE `basic_extendeds`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `basic_settings`
--
ALTER TABLE `basic_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bcategories`
--
ALTER TABLE `bcategories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bottomlinks`
--
ALTER TABLE `bottomlinks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `email_templates`
--
ALTER TABLE `email_templates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `faqs`
--
ALTER TABLE `faqs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `features`
--
ALTER TABLE `features`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `galleries`
--
ALTER TABLE `galleries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `guests`
--
ALTER TABLE `guests`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `guests_endpoint_unique` (`endpoint`);

--
-- Indexes for table `jcategories`
--
ALTER TABLE `jcategories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `members`
--
ALTER TABLE `members`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `memberships`
--
ALTER TABLE `memberships`
  ADD PRIMARY KEY (`id`),
  ADD KEY `memberships_user_id_foreign` (`user_id`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `offline_gateways`
--
ALTER TABLE `offline_gateways`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_times`
--
ALTER TABLE `order_times`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `packages`
--
ALTER TABLE `packages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `partners`
--
ALTER TABLE `partners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `payment_gateways`
--
ALTER TABLE `payment_gateways`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pcategories`
--
ALTER TABLE `pcategories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `popups`
--
ALTER TABLE `popups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `popups_language_id_foreign` (`language_id`);

--
-- Indexes for table `postal_codes`
--
ALTER TABLE `postal_codes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pos_payment_methods`
--
ALTER TABLE `pos_payment_methods`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `processes`
--
ALTER TABLE `processes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_images`
--
ALTER TABLE `product_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_informations`
--
ALTER TABLE `product_informations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_orders`
--
ALTER TABLE `product_orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_reviews`
--
ALTER TABLE `product_reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `psub_categories`
--
ALTER TABLE `psub_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `push_subscriptions`
--
ALTER TABLE `push_subscriptions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `push_subscriptions_endpoint_unique` (`endpoint`);

--
-- Indexes for table `reservation_inputs`
--
ALTER TABLE `reservation_inputs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reservation_input_options`
--
ALTER TABLE `reservation_input_options`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `seos`
--
ALTER TABLE `seos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `serving_methods`
--
ALTER TABLE `serving_methods`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shipping_charges`
--
ALTER TABLE `shipping_charges`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sitemaps`
--
ALTER TABLE `sitemaps`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `socials`
--
ALTER TABLE `socials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscribers`
--
ALTER TABLE `subscribers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tables`
--
ALTER TABLE `tables`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `table_books`
--
ALTER TABLE `table_books`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `testimonials`
--
ALTER TABLE `testimonials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `timezones`
--
ALTER TABLE `timezones`
  ADD PRIMARY KEY (`country_code`,`timezone`);

--
-- Indexes for table `time_frames`
--
ALTER TABLE `time_frames`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ulinks`
--
ALTER TABLE `ulinks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_basic_extendeds`
--
ALTER TABLE `user_basic_extendeds`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_basic_extras`
--
ALTER TABLE `user_basic_extras`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_basic_settings`
--
ALTER TABLE `user_basic_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_blogs`
--
ALTER TABLE `user_blogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_blog_categories`
--
ALTER TABLE `user_blog_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `blog_categories_language_id_foreign` (`language_id`);

--
-- Indexes for table `user_blog_informations`
--
ALTER TABLE `user_blog_informations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_coupons`
--
ALTER TABLE `user_coupons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_custom_domains`
--
ALTER TABLE `user_custom_domains`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_faqs`
--
ALTER TABLE `user_faqs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_features`
--
ALTER TABLE `user_features`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_intro_points`
--
ALTER TABLE `user_intro_points`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_languages`
--
ALTER TABLE `user_languages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_mail_templates`
--
ALTER TABLE `user_mail_templates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_menus`
--
ALTER TABLE `user_menus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_offline_gateways`
--
ALTER TABLE `user_offline_gateways`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_pages`
--
ALTER TABLE `user_pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_page_contents`
--
ALTER TABLE `user_page_contents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_page_headings`
--
ALTER TABLE `user_page_headings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `page_headings_language_id_foreign` (`language_id`);

--
-- Indexes for table `user_payment_gateways`
--
ALTER TABLE `user_payment_gateways`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_permissions`
--
ALTER TABLE `user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_permissions_user_id_foreign` (`user_id`);

--
-- Indexes for table `user_popups`
--
ALTER TABLE `user_popups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `popups_language_id_foreign` (`language_id`);

--
-- Indexes for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_section_headings`
--
ALTER TABLE `user_section_headings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `page_headings_language_id_foreign` (`language_id`);

--
-- Indexes for table `user_seos`
--
ALTER TABLE `user_seos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_sitemaps`
--
ALTER TABLE `user_sitemaps`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_social_links`
--
ALTER TABLE `user_social_links`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_subscribers`
--
ALTER TABLE `user_subscribers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_testimonials`
--
ALTER TABLE `user_testimonials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_ulinks`
--
ALTER TABLE `user_ulinks`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `backups`
--
ALTER TABLE `backups`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `basic_extendeds`
--
ALTER TABLE `basic_extendeds`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=149;

--
-- AUTO_INCREMENT for table `basic_settings`
--
ALTER TABLE `basic_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=155;

--
-- AUTO_INCREMENT for table `bcategories`
--
ALTER TABLE `bcategories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;

--
-- AUTO_INCREMENT for table `bottomlinks`
--
ALTER TABLE `bottomlinks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `clients`
--
ALTER TABLE `clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `email_templates`
--
ALTER TABLE `email_templates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `faqs`
--
ALTER TABLE `faqs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `features`
--
ALTER TABLE `features`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `galleries`
--
ALTER TABLE `galleries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `guests`
--
ALTER TABLE `guests`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jcategories`
--
ALTER TABLE `jcategories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=178;

--
-- AUTO_INCREMENT for table `members`
--
ALTER TABLE `members`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `memberships`
--
ALTER TABLE `memberships`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=124;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=156;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=95;

--
-- AUTO_INCREMENT for table `offline_gateways`
--
ALTER TABLE `offline_gateways`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=190;

--
-- AUTO_INCREMENT for table `order_times`
--
ALTER TABLE `order_times`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=519;

--
-- AUTO_INCREMENT for table `packages`
--
ALTER TABLE `packages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `partners`
--
ALTER TABLE `partners`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `payment_gateways`
--
ALTER TABLE `payment_gateways`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `pcategories`
--
ALTER TABLE `pcategories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=95;

--
-- AUTO_INCREMENT for table `popups`
--
ALTER TABLE `popups`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `postal_codes`
--
ALTER TABLE `postal_codes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `pos_payment_methods`
--
ALTER TABLE `pos_payment_methods`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `processes`
--
ALTER TABLE `processes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT for table `product_images`
--
ALTER TABLE `product_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=130;

--
-- AUTO_INCREMENT for table `product_informations`
--
ALTER TABLE `product_informations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT for table `product_orders`
--
ALTER TABLE `product_orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `product_reviews`
--
ALTER TABLE `product_reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `psub_categories`
--
ALTER TABLE `psub_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- AUTO_INCREMENT for table `push_subscriptions`
--
ALTER TABLE `push_subscriptions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `reservation_inputs`
--
ALTER TABLE `reservation_inputs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `reservation_input_options`
--
ALTER TABLE `reservation_input_options`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `seos`
--
ALTER TABLE `seos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `serving_methods`
--
ALTER TABLE `serving_methods`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `shipping_charges`
--
ALTER TABLE `shipping_charges`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `sitemaps`
--
ALTER TABLE `sitemaps`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `socials`
--
ALTER TABLE `socials`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `subscribers`
--
ALTER TABLE `subscribers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `tables`
--
ALTER TABLE `tables`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `table_books`
--
ALTER TABLE `table_books`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `testimonials`
--
ALTER TABLE `testimonials`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `time_frames`
--
ALTER TABLE `time_frames`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `ulinks`
--
ALTER TABLE `ulinks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `user_basic_extendeds`
--
ALTER TABLE `user_basic_extendeds`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `user_basic_extras`
--
ALTER TABLE `user_basic_extras`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `user_basic_settings`
--
ALTER TABLE `user_basic_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `user_blogs`
--
ALTER TABLE `user_blogs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `user_blog_categories`
--
ALTER TABLE `user_blog_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `user_blog_informations`
--
ALTER TABLE `user_blog_informations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `user_coupons`
--
ALTER TABLE `user_coupons`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `user_custom_domains`
--
ALTER TABLE `user_custom_domains`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `user_faqs`
--
ALTER TABLE `user_faqs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `user_features`
--
ALTER TABLE `user_features`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `user_intro_points`
--
ALTER TABLE `user_intro_points`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `user_languages`
--
ALTER TABLE `user_languages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;

--
-- AUTO_INCREMENT for table `user_mail_templates`
--
ALTER TABLE `user_mail_templates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=271;

--
-- AUTO_INCREMENT for table `user_menus`
--
ALTER TABLE `user_menus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `user_offline_gateways`
--
ALTER TABLE `user_offline_gateways`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `user_pages`
--
ALTER TABLE `user_pages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user_page_contents`
--
ALTER TABLE `user_page_contents`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `user_page_headings`
--
ALTER TABLE `user_page_headings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `user_payment_gateways`
--
ALTER TABLE `user_payment_gateways`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=213;

--
-- AUTO_INCREMENT for table `user_permissions`
--
ALTER TABLE `user_permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `user_popups`
--
ALTER TABLE `user_popups`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `user_roles`
--
ALTER TABLE `user_roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `user_section_headings`
--
ALTER TABLE `user_section_headings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `user_seos`
--
ALTER TABLE `user_seos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `user_sitemaps`
--
ALTER TABLE `user_sitemaps`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_social_links`
--
ALTER TABLE `user_social_links`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `user_subscribers`
--
ALTER TABLE `user_subscribers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `user_testimonials`
--
ALTER TABLE `user_testimonials`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `user_ulinks`
--
ALTER TABLE `user_ulinks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `popups`
--
ALTER TABLE `popups`
  ADD CONSTRAINT `popups_language_id_foreign` FOREIGN KEY (`language_id`) REFERENCES `languages` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
