-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Хост: localhost
-- Время создания: Авг 20 2019 г., 12:59
-- Версия сервера: 5.7.27-0ubuntu0.18.04.1
-- Версия PHP: 7.2.21-1+ubuntu18.04.1+deb.sury.org+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `loto`
--

-- --------------------------------------------------------

--
-- Структура таблицы `battle`
--

CREATE TABLE `battle` (
  `id` int(11) NOT NULL,
  `price` decimal(20,2) DEFAULT '0.00',
  `commission` decimal(20,2) DEFAULT NULL,
  `winner_team` varchar(255) DEFAULT NULL,
  `winner_factor` decimal(20,2) DEFAULT NULL,
  `winner_ticket` int(11) DEFAULT NULL,
  `status` tinyint(1) DEFAULT '0',
  `hash` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `battle_bets`
--

CREATE TABLE `battle_bets` (
  `id` int(11) NOT NULL,
  `game_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `price` decimal(20,2) DEFAULT NULL,
  `color` varchar(255) DEFAULT NULL,
  `win` int(1) DEFAULT '0',
  `win_sum` decimal(20,2) NOT NULL DEFAULT '0.00',
  `balType` varchar(255) DEFAULT NULL,
  `fake` int(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `bonus`
--

CREATE TABLE `bonus` (
  `id` int(11) NOT NULL,
  `sum` decimal(20,2) DEFAULT NULL,
  `bg` varchar(255) DEFAULT NULL,
  `color` varchar(255) DEFAULT NULL,
  `status` int(1) NOT NULL DEFAULT '1',
  `type` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `bonus`
--

INSERT INTO `bonus` (`id`, `sum`, `bg`, `color`, `status`, `type`, `created_at`, `updated_at`) VALUES
(1, '0.10', '#7d3585', '#b660c0', 1, 'group', '2019-05-19 10:29:41', '2019-05-23 15:31:20'),
(2, '0.20', '#f1cb30', '#f7e390', 1, 'group', '2019-05-19 10:30:27', '2019-05-23 15:31:29'),
(3, '0.30', '#a32331', '#da5261', 1, 'group', '2019-05-19 10:31:22', '2019-05-23 15:31:35'),
(4, '0.20', '#645c9e', '#a09bc5', 1, 'group', '2019-05-19 10:31:55', '2019-05-23 15:33:45'),
(5, '0.50', '#f1cb30', '#f7e390', 1, 'group', '2019-05-19 10:32:27', '2019-05-23 15:33:50'),
(6, '0.10', '#d06f1e', '#eaa46a', 1, 'group', '2019-05-19 10:32:44', '2019-05-23 15:33:59'),
(7, '1.00', '#bdcf71', '#e0e9bd', 1, 'group', '2019-05-19 10:33:09', '2019-05-23 16:05:15'),
(8, '0.10', '#599edd', '#aecfee', 1, 'group', '2019-05-19 10:33:31', '2019-05-23 16:05:31'),
(9, '0.20', '#d06f1e', '#eaa46a', 1, 'group', '2019-05-19 10:34:11', '2019-05-23 16:05:35'),
(10, '0.30', '#7d3585', '#b660c0', 1, 'group', '2019-05-19 10:34:28', '2019-05-23 16:58:14'),
(11, '0.20', '#a32331', '#da5261', 1, 'group', '2019-05-19 10:34:45', '2019-05-23 16:58:19'),
(12, '0.50', '#645c9e', '#a09bc5', 1, 'group', '2019-05-19 10:35:07', '2019-05-23 16:58:32'),
(13, '0.10', '#323232', '#656565', 1, 'group', '2019-05-19 10:35:27', '2019-05-23 16:58:39'),
(14, '10.00', '#bdcf71', '#e0e9bd', 1, 'group', '2019-05-19 10:35:51', '2019-05-23 16:58:55'),
(15, '100.00', '#7d3585', '#b660c0', 1, 'refs', '2019-05-19 13:26:30', '2019-05-19 13:27:07'),
(16, '125.00', '#f1cb30', '#f7e390', 1, 'refs', '2019-05-19 13:26:48', '2019-05-19 15:25:06'),
(17, '150.00', '#a32331', '#da5261', 1, 'refs', '2019-05-20 01:40:18', '2019-05-20 01:44:01'),
(18, '175.00', '#645c9e', '#a09bc5', 1, 'refs', '2019-05-20 01:40:35', '2019-05-20 01:44:03'),
(19, '200.00', '#f1cb30', '#f7e390', 1, 'refs', '2019-05-20 01:40:55', '2019-05-20 01:44:04'),
(20, '250.00', '#d06f1e', '#eaa46a', 1, 'refs', '2019-05-20 01:41:12', '2019-05-20 01:44:06'),
(21, '300.00', '#bdcf71', '#e0e9bd', 0, 'refs', '2019-05-20 01:41:28', '2019-05-25 22:29:14'),
(22, '350.00', '#599edd', '#aecfee', 0, 'refs', '2019-05-20 01:41:44', '2019-05-25 22:29:00'),
(23, '400.00', '#d06f1e', '#eaa46a', 0, 'refs', '2019-05-20 01:42:04', '2019-05-25 22:28:11'),
(24, '450.00', '#7d3585', '#b660c0', 0, 'refs', '2019-05-20 01:42:26', '2019-05-25 22:27:56'),
(25, '500.00', '#a32331', '#da5261', 0, 'refs', '2019-05-20 01:42:51', '2019-05-25 22:27:39'),
(26, '600.00', '#645c9e', '#a09bc5', 0, 'refs', '2019-05-20 01:43:07', '2019-05-25 22:26:06'),
(27, '750.00', '#323232', '#656565', 0, 'refs', '2019-05-20 01:43:24', '2019-05-25 22:25:40'),
(28, '1000.00', '#bdcf71', '#e0e9bd', 0, 'refs', '2019-05-20 01:43:43', '2019-05-25 22:25:15');

-- --------------------------------------------------------

--
-- Структура таблицы `bonus_log`
--

CREATE TABLE `bonus_log` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `sum` decimal(20,2) DEFAULT NULL,
  `remaining` int(11) DEFAULT NULL,
  `status` int(1) NOT NULL DEFAULT '0',
  `type` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `crash`
--

CREATE TABLE `crash` (
  `id` int(11) NOT NULL,
  `multiplier` decimal(20,2) DEFAULT NULL,
  `profit` decimal(20,2) DEFAULT '0.00',
  `hash` varchar(255) DEFAULT NULL,
  `status` int(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `crash_bets`
--

CREATE TABLE `crash_bets` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `round_id` int(11) DEFAULT NULL,
  `price` decimal(20,2) DEFAULT NULL,
  `withdraw` decimal(20,2) DEFAULT NULL,
  `won` decimal(20,2) DEFAULT '0.00',
  `status` int(1) NOT NULL DEFAULT '0',
  `fake` tinyint(1) NOT NULL DEFAULT '0',
  `balType` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `dice`
--

CREATE TABLE `dice` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `sum` decimal(20,2) DEFAULT NULL,
  `perc` decimal(20,2) DEFAULT '0.00',
  `vip` decimal(20,2) NOT NULL DEFAULT '0.00',
  `num` decimal(20,2) DEFAULT '0.00',
  `range` varchar(255) DEFAULT NULL,
  `win` int(1) NOT NULL DEFAULT '0',
  `win_sum` decimal(20,2) DEFAULT NULL,
  `balType` varchar(255) DEFAULT NULL,
  `fake` int(1) NOT NULL DEFAULT '0',
  `hash` text,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `exchanges`
--

CREATE TABLE `exchanges` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `sum` decimal(20,2) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `filter`
--

CREATE TABLE `filter` (
  `id` int(11) NOT NULL,
  `word` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `flip`
--

CREATE TABLE `flip` (
  `id` int(11) NOT NULL,
  `heads` int(11) DEFAULT NULL,
  `heads_from` int(11) DEFAULT NULL,
  `heads_to` int(11) DEFAULT NULL,
  `tails` int(11) DEFAULT NULL,
  `tails_from` int(11) DEFAULT NULL,
  `tails_to` int(11) DEFAULT NULL,
  `bank` decimal(20,2) DEFAULT NULL,
  `winner_id` int(11) DEFAULT NULL,
  `winner_ticket` int(11) DEFAULT NULL,
  `winner_sum` decimal(20,2) DEFAULT NULL,
  `balType` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hash` text COLLATE utf8mb4_unicode_ci,
  `status` int(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `jackpot`
--

CREATE TABLE `jackpot` (
  `id` int(11) NOT NULL,
  `room` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `game_id` int(11) DEFAULT NULL,
  `winner_id` int(11) DEFAULT NULL,
  `winner_ticket` int(11) DEFAULT NULL,
  `winner_balance` decimal(20,2) DEFAULT NULL,
  `winner_bonus` decimal(20,2) DEFAULT NULL,
  `hash` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(1) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `jackpot`
--

INSERT INTO `jackpot` (`id`, `room`, `game_id`, `winner_id`, `winner_ticket`, `winner_balance`, `winner_bonus`, `hash`, `status`, `created_at`, `updated_at`) VALUES
(1, 'easy', 1, NULL, NULL, NULL, NULL, '3c259df66d813dd565b755a4aa6ce23f', 0, '2019-08-20 09:58:54', '2019-08-20 09:58:54'),
(2, 'medium', 1, NULL, NULL, NULL, NULL, '500513a3b6ff3a571bf76a76bf26eb92', 0, '2019-08-20 09:59:11', '2019-08-20 09:59:11');

-- --------------------------------------------------------

--
-- Структура таблицы `jackpot_bets`
--

CREATE TABLE `jackpot_bets` (
  `id` int(11) NOT NULL,
  `room` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `game_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `sum` decimal(20,2) NOT NULL DEFAULT '0.00',
  `color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `balance` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `win` int(1) NOT NULL DEFAULT '0',
  `fake` int(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `payments`
--

CREATE TABLE `payments` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `secret` text,
  `order_id` varchar(255) DEFAULT NULL,
  `sum` decimal(20,2) DEFAULT NULL,
  `status` int(1) NOT NULL DEFAULT '0',
  `system` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `profit`
--

CREATE TABLE `profit` (
  `id` int(11) NOT NULL,
  `game` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `sum` decimal(20,2) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `profit`
--

INSERT INTO `profit` (`id`, `game`, `sum`, `created_at`, `updated_at`) VALUES
(1, 'dice', '-0.05', '2019-08-01 19:44:02', '2019-08-01 19:44:02'),
(2, 'dice', '1.00', '2019-08-01 19:44:04', '2019-08-01 19:44:04'),
(3, 'dice', '-0.05', '2019-08-01 19:44:04', '2019-08-01 19:44:04'),
(4, 'dice', '-0.11', '2019-08-02 06:06:55', '2019-08-02 06:06:55'),
(5, 'dice', '-0.11', '2019-08-02 06:06:56', '2019-08-02 06:06:56'),
(6, 'dice', '-1.78', '2019-08-02 06:07:13', '2019-08-02 06:07:13'),
(7, 'dice', '16.00', '2019-08-02 06:07:46', '2019-08-02 06:07:46'),
(8, 'dice', '16.00', '2019-08-02 06:07:48', '2019-08-02 06:07:48'),
(9, 'dice', '16.00', '2019-08-02 06:07:49', '2019-08-02 06:07:49'),
(10, 'dice', '-16.00', '2019-08-02 06:07:50', '2019-08-02 06:07:50'),
(11, 'dice', '16.00', '2019-08-02 06:07:51', '2019-08-02 06:07:51'),
(12, 'dice', '-16.00', '2019-08-02 06:07:51', '2019-08-02 06:07:51'),
(13, 'dice', '-16.00', '2019-08-02 06:07:52', '2019-08-02 06:07:52'),
(14, 'dice', '16.00', '2019-08-02 06:07:53', '2019-08-02 06:07:53'),
(15, 'pvp', '0.30', '2019-08-02 06:15:29', '2019-08-02 06:15:29'),
(16, 'wheel', '138.00', '2019-08-02 06:20:51', '2019-08-02 06:20:51'),
(17, 'crash', '1.00', '2019-08-02 06:21:02', '2019-08-02 06:21:02'),
(18, 'wheel', '100.00', '2019-08-02 06:21:43', '2019-08-02 06:21:43'),
(19, 'pvp', '60.00', '2019-08-02 06:22:46', '2019-08-02 06:22:46'),
(20, 'wheel', '-9800.00', '2019-08-02 06:26:35', '2019-08-02 06:26:35'),
(21, 'wheel', '0.00', '2019-08-02 06:27:14', '2019-08-02 06:27:14'),
(22, 'wheel', '10.00', '2019-08-02 06:40:16', '2019-08-02 06:40:16'),
(23, 'wheel', '320.00', '2019-08-02 06:43:11', '2019-08-02 06:43:11'),
(24, 'jackpot', '0.10', '2019-08-20 09:48:09', '2019-08-20 09:48:09'),
(25, 'jackpot', '10.00', '2019-08-20 09:48:12', '2019-08-20 09:48:12'),
(26, 'jackpot', '10.00', '2019-08-20 09:48:14', '2019-08-20 09:48:14');

-- --------------------------------------------------------

--
-- Структура таблицы `promocode`
--

CREATE TABLE `promocode` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `limit` int(1) NOT NULL DEFAULT '0',
  `amount` decimal(20,2) DEFAULT NULL,
  `count_use` int(11) DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `promo_log`
--

CREATE TABLE `promo_log` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `sum` decimal(20,2) DEFAULT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `rooms`
--

CREATE TABLE `rooms` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `min` decimal(20,2) NOT NULL DEFAULT '1.00',
  `max` decimal(20,2) NOT NULL DEFAULT '1000.00',
  `bets` int(11) NOT NULL DEFAULT '3',
  `time` int(11) NOT NULL DEFAULT '10',
  `status` int(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `rooms`
--

INSERT INTO `rooms` (`id`, `name`, `title`, `min`, `max`, `bets`, `time`, `status`, `created_at`, `updated_at`) VALUES
(1, 'easy', 'Easy', '0.10', '100.00', 3, 30, 0, '2018-11-27 00:41:43', '2019-08-20 09:47:27'),
(2, 'medium', 'Medium', '50.00', '500.00', 5, 30, 0, '2018-11-27 00:41:43', '2019-08-20 09:47:27'),
(3, 'hard', 'Hard', '100.00', '5000.00', 5, 30, 0, '2018-11-27 00:41:43', '2019-08-20 09:47:27');

-- --------------------------------------------------------

--
-- Структура таблицы `settings`
--

CREATE TABLE `settings` (
  `id` int(11) NOT NULL,
  `domain` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'win2x.ru',
  `sitename` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'WIN2X.ru',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'WIN2X.ru - Браузерные игры с выводом реальных средств',
  `description` text COLLATE utf8mb4_unicode_ci,
  `keywords` text COLLATE utf8mb4_unicode_ci,
  `site_disable` int(1) NOT NULL DEFAULT '0',
  `vk_url` text COLLATE utf8mb4_unicode_ci,
  `vk_support_link` text COLLATE utf8mb4_unicode_ci,
  `vk_service_key` text COLLATE utf8mb4_unicode_ci,
  `censore_replace` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'i ♥ win2x',
  `chat_dep` decimal(20,2) DEFAULT '10.00',
  `fakebets` int(1) NOT NULL DEFAULT '0',
  `fake_min_bet` decimal(20,2) DEFAULT '0.10',
  `fake_max_bet` decimal(20,2) DEFAULT '100.00',
  `fk_mrh_ID` int(11) DEFAULT NULL,
  `fk_secret1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fk_secret2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fk_api` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fk_wallet` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payeer_mrh_ID` int(11) DEFAULT NULL,
  `payeer_secret1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payeer_secret2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payeer_account_ID` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payeer_api_ID` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payeer_api_pass` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `profit_koef` decimal(20,2) DEFAULT '1.30',
  `profit_money` decimal(20,2) NOT NULL DEFAULT '0.00',
  `jackpot_commission` int(11) DEFAULT '10',
  `wheel_timer` int(11) DEFAULT '15',
  `wheel_min_bet` decimal(20,2) DEFAULT '0.10',
  `wheel_max_bet` decimal(20,2) DEFAULT '1000.00',
  `wheel_rotate` decimal(20,2) DEFAULT '0.00',
  `wheel_rotate2` decimal(20,2) DEFAULT '0.00',
  `wheel_rotate_start` decimal(20,2) DEFAULT '0.00',
  `crash_min_bet` decimal(20,2) DEFAULT '0.10',
  `crash_max_bet` decimal(20,2) DEFAULT '1000.00',
  `crash_timer` int(11) DEFAULT '10',
  `battle_timer` int(11) DEFAULT '10',
  `battle_min_bet` decimal(20,2) DEFAULT '0.10',
  `battle_max_bet` decimal(20,2) DEFAULT '1000.00',
  `battle_commission` int(11) DEFAULT '10',
  `dice_min_bet` decimal(20,2) DEFAULT '0.10',
  `dice_max_bet` decimal(20,2) DEFAULT '1000.00',
  `flip_commission` int(11) DEFAULT '15',
  `flip_min_bet` decimal(20,2) DEFAULT '0.10',
  `flip_max_bet` decimal(20,2) DEFAULT '1000.00',
  `hilo_timer` int(11) NOT NULL DEFAULT '20',
  `hilo_min_bet` decimal(20,2) NOT NULL DEFAULT '0.10',
  `hilo_max_bet` decimal(20,2) NOT NULL DEFAULT '1000.00',
  `hilo_bets` int(11) NOT NULL DEFAULT '3',
  `exchange_min` decimal(20,2) DEFAULT '3000.00',
  `exchange_curs` int(11) DEFAULT '3',
  `ref_perc` int(11) DEFAULT '5',
  `ref_sum` decimal(20,2) DEFAULT '0.50',
  `min_ref_withdraw` decimal(20,2) DEFAULT '10.00',
  `min_dep` decimal(20,2) DEFAULT '1.00',
  `min_dep_withdraw` decimal(20,2) DEFAULT '50.00',
  `requery_perc` decimal(8,2) NOT NULL DEFAULT '10.00',
  `requery_bet_perc` decimal(8,2) DEFAULT '1.00',
  `dep_bonus_min` decimal(20,2) NOT NULL DEFAULT '0.00',
  `dep_bonus_perc` decimal(20,2) NOT NULL DEFAULT '0.00',
  `bonus_group_time` int(11) DEFAULT '15',
  `max_active_ref` int(11) DEFAULT '8',
  `payeer_com_percent` decimal(20,2) DEFAULT '1.00',
  `payeer_com_rub` decimal(20,2) DEFAULT '0.00',
  `payeer_min` decimal(20,2) DEFAULT '10.00',
  `qiwi_com_percent` decimal(20,2) DEFAULT '2.90',
  `qiwi_com_rub` decimal(20,2) DEFAULT '0.00',
  `qiwi_min` decimal(20,2) DEFAULT '10.00',
  `yandex_com_percent` decimal(20,2) DEFAULT '0.00',
  `yandex_com_rub` decimal(20,2) DEFAULT '0.00',
  `yandex_min` decimal(20,2) DEFAULT '10.00',
  `webmoney_com_percent` decimal(20,2) DEFAULT '5.00',
  `webmoney_com_rub` decimal(20,2) DEFAULT '0.00',
  `webmoney_min` decimal(20,2) DEFAULT '10.00',
  `visa_com_percent` decimal(20,2) DEFAULT '4.00',
  `visa_com_rub` decimal(20,2) DEFAULT '50.00',
  `visa_min` decimal(20,2) DEFAULT '1000.00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `settings`
--

INSERT INTO `settings` (`id`, `domain`, `sitename`, `title`, `description`, `keywords`, `site_disable`, `vk_url`, `vk_support_link`, `vk_service_key`, `censore_replace`, `chat_dep`, `fakebets`, `fake_min_bet`, `fake_max_bet`, `fk_mrh_ID`, `fk_secret1`, `fk_secret2`, `fk_api`, `fk_wallet`, `payeer_mrh_ID`, `payeer_secret1`, `payeer_secret2`, `payeer_account_ID`, `payeer_api_ID`, `payeer_api_pass`, `profit_koef`, `profit_money`, `jackpot_commission`, `wheel_timer`, `wheel_min_bet`, `wheel_max_bet`, `wheel_rotate`, `wheel_rotate2`, `wheel_rotate_start`, `crash_min_bet`, `crash_max_bet`, `crash_timer`, `battle_timer`, `battle_min_bet`, `battle_max_bet`, `battle_commission`, `dice_min_bet`, `dice_max_bet`, `flip_commission`, `flip_min_bet`, `flip_max_bet`, `hilo_timer`, `hilo_min_bet`, `hilo_max_bet`, `hilo_bets`, `exchange_min`, `exchange_curs`, `ref_perc`, `ref_sum`, `min_ref_withdraw`, `min_dep`, `min_dep_withdraw`, `requery_perc`, `requery_bet_perc`, `dep_bonus_min`, `dep_bonus_perc`, `bonus_group_time`, `max_active_ref`, `payeer_com_percent`, `payeer_com_rub`, `payeer_min`, `qiwi_com_percent`, `qiwi_com_rub`, `qiwi_min`, `yandex_com_percent`, `yandex_com_rub`, `yandex_min`, `webmoney_com_percent`, `webmoney_com_rub`, `webmoney_min`, `visa_com_percent`, `visa_com_rub`, `visa_min`) VALUES
(1, 'sixcash.fun', 'sixcash.fun', 'sixcash.fun - Браузерные игры с выводом реальных средств', NULL, NULL, 0, 'https://vk.com/', 'https://vk.com', '2357a3222357a3222357a32213233016d4223572357a3227f76d1b4dd27b2f59d3fe4d0', 'i ♥ sixcash.fun', '0.00', 0, '0.10', '50.00', 23, '23', '23', '23', '23', 23, '23', '23', '23', '23', '23', '3.00', '-9800.00', 10, 15, '0.10', '1000.00', '60.30', '60.30', '1564728191.00', '0.10', '1000.00', 10, 10, '0.10', '1000.00', 10, '0.10', '1000.00', 15, '0.10', '1000.00', 20, '0.10', '1000.00', 3, '300.00', 3, 5, '0.50', '10.00', '1.00', '50.00', '35.00', '15.00', '100.00', '10.00', 15, 8, '1.00', '0.00', '1000.00', '4.00', '1.00', '100.00', '0.00', '0.00', '10.00', '5.00', '0.00', '10.00', '4.00', '50.00', '1000.00');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `unique_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar` text COLLATE utf8mb4_unicode_ci,
  `user_id` int(11) DEFAULT NULL,
  `balance` decimal(20,2) NOT NULL DEFAULT '0.00',
  `bonus` decimal(20,2) NOT NULL DEFAULT '0.00',
  `requery` decimal(8,3) NOT NULL DEFAULT '0.000',
  `ip` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_admin` int(1) NOT NULL DEFAULT '0',
  `superadmin` int(3) NOT NULL DEFAULT '0',
  `is_lowadmin` int(1) NOT NULL DEFAULT '0',
  `is_moder` int(1) NOT NULL DEFAULT '0',
  `is_youtuber` int(1) NOT NULL DEFAULT '0',
  `fake` int(1) NOT NULL DEFAULT '0',
  `time` int(1) NOT NULL DEFAULT '0',
  `banchat` int(11) DEFAULT NULL,
  `banchat_reason` text COLLATE utf8mb4_unicode_ci,
  `ban` int(1) NOT NULL DEFAULT '0',
  `ban_reason` text COLLATE utf8mb4_unicode_ci,
  `link_trans` int(11) NOT NULL DEFAULT '0',
  `link_reg` int(11) NOT NULL DEFAULT '0',
  `ref_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ref_money` decimal(20,2) NOT NULL DEFAULT '0.00',
  `ref_money_all` decimal(20,2) NOT NULL DEFAULT '0.00',
  `remember_token` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `unique_id`, `username`, `avatar`, `user_id`, `balance`, `bonus`, `requery`, `ip`, `is_admin`, `superadmin`, `is_lowadmin`, `is_moder`, `is_youtuber`, `fake`, `time`, `banchat`, `banchat_reason`, `ban`, `ban_reason`, `link_trans`, `link_reg`, `ref_id`, `ref_money`, `ref_money_all`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, '23e030e4e993', 'Nionly Quantum', 'https://sun1-23.userapi.com/c849524/v849524003/86299/zCnpdFHhjBk.jpg?ava=1', 476147307, '0.01', '0.00', '0.000', '5.129.179.25', 1, 1, 0, 0, 0, 0, 0, NULL, NULL, 0, NULL, 0, 0, NULL, '0.00', '0.00', 'kDD2y3Q0TsjwsJ6QeLaNn98503ggx4Tw4IWbjnts6mYNrEMONlFuCvkVXnGx', '2019-08-20 09:58:57', '2019-08-20 09:59:05');

-- --------------------------------------------------------

--
-- Структура таблицы `wheel`
--

CREATE TABLE `wheel` (
  `id` int(11) NOT NULL,
  `winner_color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` decimal(20,2) DEFAULT NULL,
  `status` int(1) NOT NULL DEFAULT '0',
  `hash` text COLLATE utf8mb4_unicode_ci,
  `profit` decimal(20,2) NOT NULL DEFAULT '0.00',
  `ranked` int(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wheel_bets`
--

CREATE TABLE `wheel_bets` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `game_id` int(11) DEFAULT NULL,
  `price` decimal(20,2) DEFAULT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `win` int(1) NOT NULL DEFAULT '0',
  `win_sum` decimal(20,2) NOT NULL DEFAULT '0.00',
  `balance` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fake` int(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `withdraw`
--

CREATE TABLE `withdraw` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `value` decimal(8,2) DEFAULT NULL,
  `valueWithCom` decimal(20,2) DEFAULT NULL,
  `wallet` varchar(255) DEFAULT NULL,
  `system` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `battle`
--
ALTER TABLE `battle`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `battle_bets`
--
ALTER TABLE `battle_bets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `battle_bets_user_id_foreign` (`user_id`),
  ADD KEY `battle_bets_game_id_foreign` (`game_id`);

--
-- Индексы таблицы `bonus`
--
ALTER TABLE `bonus`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `bonus_log`
--
ALTER TABLE `bonus_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bonus_log_user_id_foreign` (`user_id`);

--
-- Индексы таблицы `crash`
--
ALTER TABLE `crash`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `crash_bets`
--
ALTER TABLE `crash_bets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `crash_bets_user_id_foreign` (`user_id`),
  ADD KEY `crash_bets_round_id_foreign` (`round_id`);

--
-- Индексы таблицы `dice`
--
ALTER TABLE `dice`
  ADD PRIMARY KEY (`id`),
  ADD KEY `dice_user_id_foreign` (`user_id`);

--
-- Индексы таблицы `exchanges`
--
ALTER TABLE `exchanges`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `filter`
--
ALTER TABLE `filter`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `flip`
--
ALTER TABLE `flip`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `jackpot`
--
ALTER TABLE `jackpot`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `jackpot_bets`
--
ALTER TABLE `jackpot_bets`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `profit`
--
ALTER TABLE `profit`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `promocode`
--
ALTER TABLE `promocode`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `promo_log`
--
ALTER TABLE `promo_log`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `rooms`
--
ALTER TABLE `rooms`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `wheel`
--
ALTER TABLE `wheel`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `wheel_bets`
--
ALTER TABLE `wheel_bets`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `withdraw`
--
ALTER TABLE `withdraw`
  ADD PRIMARY KEY (`id`),
  ADD KEY `withdraw_user_id_foreign` (`user_id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `battle`
--
ALTER TABLE `battle`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `battle_bets`
--
ALTER TABLE `battle_bets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `bonus`
--
ALTER TABLE `bonus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT для таблицы `bonus_log`
--
ALTER TABLE `bonus_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `crash`
--
ALTER TABLE `crash`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `crash_bets`
--
ALTER TABLE `crash_bets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `dice`
--
ALTER TABLE `dice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `exchanges`
--
ALTER TABLE `exchanges`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `filter`
--
ALTER TABLE `filter`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `flip`
--
ALTER TABLE `flip`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `jackpot`
--
ALTER TABLE `jackpot`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `jackpot_bets`
--
ALTER TABLE `jackpot_bets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `payments`
--
ALTER TABLE `payments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `profit`
--
ALTER TABLE `profit`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT для таблицы `promocode`
--
ALTER TABLE `promocode`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `promo_log`
--
ALTER TABLE `promo_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `rooms`
--
ALTER TABLE `rooms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `wheel`
--
ALTER TABLE `wheel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wheel_bets`
--
ALTER TABLE `wheel_bets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `withdraw`
--
ALTER TABLE `withdraw`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `crash_bets`
--
ALTER TABLE `crash_bets`
  ADD CONSTRAINT `crash_bets_round_id_foreign` FOREIGN KEY (`round_id`) REFERENCES `crash` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `crash_bets_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
