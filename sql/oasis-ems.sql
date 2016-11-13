-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 13, 2016 at 05:41 AM
-- Server version: 10.1.16-MariaDB
-- PHP Version: 5.5.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `oasis-ems`
--

-- --------------------------------------------------------

--
-- Table structure for table `attachments`
--

CREATE TABLE `attachments` (
  `id` int(11) NOT NULL,
  `bind_type` varchar(64) NOT NULL DEFAULT '',
  `bind_id` int(11) NOT NULL DEFAULT '0',
  `file` varchar(255) DEFAULT NULL,
  `info` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `configuration`
--

CREATE TABLE `configuration` (
  `id` int(11) NOT NULL,
  `key` varchar(255) NOT NULL,
  `value` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `configuration`
--

INSERT INTO `configuration` (`id`, `key`, `value`) VALUES
(1, 'app_administrator_email', 'admin@localhost.com'),
(2, 'app_administrator_password', '$P$EZjqF/PoZXovRBy2T2U7eIBWR5qDbZ.'),
(3, 'app_app_name', 'Oasis Event Management System'),
(4, 'app_app_short_name', 'OEMS'),
(5, 'app_email_label', 'OEMS-'),
(6, 'app_default_skin', 'qdPM'),
(7, 'sf_default_timezone', 'Asia/Kolkata'),
(8, 'sf_default_culture', 'en'),
(9, 'app_rows_per_page', '15'),
(10, 'app_custom_short_date_format', 'M d, Y'),
(11, 'app_custom_logn_date_format', 'M d, Y H:i'),
(12, 'app_allow_adit_tasks_comments_date', 'off'),
(13, 'app_show_menu_icons', 'off'),
(14, 'app_show_footer_links', 'off'),
(15, 'app_tasks_fields_tasks_version', 'off'),
(16, 'app_tasks_fields_tasks_phase', 'on'),
(17, 'app_tasks_fields_tasks_group', 'off'),
(18, 'app_tasks_fields_priority', 'on'),
(19, 'app_tasks_fields_label', 'on'),
(20, 'app_tasks_fields_id', 'off'),
(21, 'app_tasks_fields_name', 'on'),
(22, 'app_tasks_fields_status', 'on'),
(23, 'app_tasks_fields_assigned_to', 'on'),
(24, 'app_tasks_fields_created_by', 'off'),
(25, 'app_tasks_fields_estimated_time', 'on'),
(26, 'app_tasks_fields_start_date', 'off'),
(27, 'app_tasks_fields_due_date', 'on'),
(28, 'app_tasks_fields_progress', 'off'),
(29, 'app_tasks_fields_created_at', 'off'),
(30, 'app_use_skins', 'on'),
(31, 'app_use_related_tasks', 'on'),
(32, 'app_use_public_tickets', 'on'),
(33, 'app_public_tickets_show_login_link', 'off'),
(34, 'app_public_tickets_allow_attachments', 'on'),
(35, 'app_use_project_phases', 'off'),
(36, 'app_use_project_versions', 'off'),
(37, 'app_use_project_discussions', 'on'),
(38, 'app_use_tasks_groups', 'on'),
(39, 'app_use_tasks_timetracker', 'on'),
(40, 'app_use_fck_editor', 'on'),
(41, 'app_notify_all_project_team', 'off'),
(42, 'app_notify_all_customers', 'off'),
(43, 'app_use_single_email', 'off'),
(44, 'app_single_email_addres_from', ''),
(45, 'app_single_name_from', ''),
(46, 'app_use_smtp', 'off'),
(47, 'app_smtp_server', ''),
(48, 'app_smtp_port', '25'),
(49, 'app_smtp_encryption', NULL),
(50, 'app_smtp_login', ''),
(51, 'app_smtp_pass', ''),
(52, 'app_use_ldap_login', 'off'),
(53, 'app_ldap_host', ''),
(54, 'app_ldap_port', ''),
(55, 'app_ldap_base_dn', ''),
(56, 'app_ldap_version', '3'),
(57, 'app_use_email_notification', 'on'),
(58, 'app_show_user_email', 'off'),
(59, 'app_show_user_photo', 'on'),
(60, 'app_tasks_fields_type', 'off'),
(61, 'app_login_page_heading', 'Welcome to Oasis'),
(62, 'app_login_page_content', 'Event management'),
(63, 'app_new_user_email_subject', NULL),
(64, 'app_new_user_email_body', ''),
(65, 'app_amount_previous_comments', '2'),
(66, 'app_rows_limit', '150'),
(67, 'app_tasks_columns_list', 'TasksGroups,Versions,ProjectsPhases,TasksPriority,Name,TasksStatus,TasksTypes,AssignedTo,EstimatedTime,WorkHours,DueDate,Progress'),
(68, 'app_send_email_to_owner', 'off'),
(69, 'app_public_tickets_use_antispam', 'on'),
(70, 'app_app_logo', 'country-logo.png'),
(71, 'app_use_javascript_dropdown', 'on'),
(72, 'app_login_background', 'What we do.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL DEFAULT '',
  `sort_order` int(11) DEFAULT NULL,
  `active` tinyint(1) DEFAULT NULL,
  `users_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `discussions`
--

CREATE TABLE `discussions` (
  `id` int(11) NOT NULL,
  `projects_id` int(11) NOT NULL DEFAULT '0',
  `users_id` int(11) DEFAULT NULL,
  `discussions_status_id` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL DEFAULT '',
  `description` text,
  `assigned_to` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `discussions_comments`
--

CREATE TABLE `discussions_comments` (
  `id` int(11) NOT NULL,
  `discussions_id` int(11) NOT NULL DEFAULT '0',
  `users_id` int(11) DEFAULT NULL,
  `discussions_status_id` int(11) DEFAULT NULL,
  `description` text,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `discussions_reports`
--

CREATE TABLE `discussions_reports` (
  `id` int(11) NOT NULL,
  `users_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `display_on_home` tinyint(1) DEFAULT NULL,
  `projects_id` text,
  `projects_type_id` text,
  `projects_status_id` text,
  `discussions_status_id` text,
  `sort_order` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `discussions_status`
--

CREATE TABLE `discussions_status` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `sort_order` int(11) DEFAULT '0',
  `default_value` tinyint(1) DEFAULT NULL,
  `active` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `discussions_status`
--

INSERT INTO `discussions_status` (`id`, `name`, `sort_order`, `default_value`, `active`) VALUES
(1, 'Open', 0, 1, 1),
(2, 'Closed', 1, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `event_id` int(11) NOT NULL,
  `event_name` text NOT NULL,
  `start_date` datetime NOT NULL,
  `end_date` datetime NOT NULL,
  `details` text NOT NULL,
  `users_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`event_id`, `event_name`, `start_date`, `end_date`, `details`, `users_id`) VALUES
(3, 'Visit Kilpauk Area', '2016-11-14 01:55:00', '2016-11-15 14:00:00', 'visit and collect data on poverty', 3);

-- --------------------------------------------------------

--
-- Table structure for table `extra_fields`
--

CREATE TABLE `extra_fields` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL DEFAULT '',
  `bind_type` varchar(64) NOT NULL DEFAULT '',
  `type` varchar(64) DEFAULT NULL,
  `sort_order` int(11) DEFAULT '0',
  `active` tinyint(1) DEFAULT NULL,
  `display_in_list` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `extra_fields`
--

INSERT INTO `extra_fields` (`id`, `name`, `bind_type`, `type`, `sort_order`, `active`, `display_in_list`) VALUES
(9, 'Phone', 'users', 'text', 0, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `extra_fields_list`
--

CREATE TABLE `extra_fields_list` (
  `id` int(11) NOT NULL,
  `extra_fields_id` int(11) NOT NULL DEFAULT '0',
  `bind_id` int(11) NOT NULL DEFAULT '0',
  `value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `extra_fields_list`
--

INSERT INTO `extra_fields_list` (`id`, `extra_fields_id`, `bind_id`, `value`) VALUES
(102, 9, 5, '');

-- --------------------------------------------------------

--
-- Table structure for table `phases`
--

CREATE TABLE `phases` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL DEFAULT '',
  `default_values` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `phases`
--

INSERT INTO `phases` (`id`, `name`, `default_values`) VALUES
(1, 'New Project', 'Concept\r\nExecution\r\nReview'),
(2, 'Support', 'Maintenance');

-- --------------------------------------------------------

--
-- Table structure for table `phases_status`
--

CREATE TABLE `phases_status` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL DEFAULT '',
  `sort_order` int(11) DEFAULT '0',
  `default_value` tinyint(1) DEFAULT NULL,
  `active` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `phases_status`
--

INSERT INTO `phases_status` (`id`, `name`, `sort_order`, `default_value`, `active`) VALUES
(1, 'Open', 0, 1, 1),
(2, 'Completed', 1, NULL, 1),
(3, 'On Hold', 2, NULL, 1),
(4, 'Cancelled', 3, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `id` int(11) NOT NULL,
  `projects_status_id` int(11) DEFAULT NULL,
  `projects_types_id` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL DEFAULT '',
  `description` text,
  `team` text,
  `created_at` datetime DEFAULT NULL,
  `order_tasks_by` varchar(64) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`id`, `projects_status_id`, `projects_types_id`, `created_by`, `name`, `description`, `team`, `created_at`, `order_tasks_by`) VALUES
(7, 1, 3, 3, 'Project1', '', '5,3,4', '2016-11-12 19:58:43', '');

-- --------------------------------------------------------

--
-- Table structure for table `projects_comments`
--

CREATE TABLE `projects_comments` (
  `id` int(11) NOT NULL,
  `projects_id` int(11) NOT NULL DEFAULT '0',
  `created_by` int(11) DEFAULT NULL,
  `description` text,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `projects_phases`
--

CREATE TABLE `projects_phases` (
  `id` int(11) NOT NULL,
  `projects_id` int(11) NOT NULL DEFAULT '0',
  `phases_status_id` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL DEFAULT '',
  `due_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `projects_reports`
--

CREATE TABLE `projects_reports` (
  `id` int(11) NOT NULL,
  `users_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `display_on_home` tinyint(1) DEFAULT NULL,
  `projects_id` text,
  `projects_type_id` text,
  `projects_status_id` text,
  `in_team` int(11) DEFAULT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `display_in_menu` tinyint(1) DEFAULT NULL,
  `visible_on_home` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `projects_reports`
--

INSERT INTO `projects_reports` (`id`, `users_id`, `name`, `display_on_home`, `projects_id`, `projects_type_id`, `projects_status_id`, `in_team`, `sort_order`, `display_in_menu`, `visible_on_home`) VALUES
(3, 3, 'Project1 Tasks report', 1, '7', '3', '1', 0, NULL, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `projects_status`
--

CREATE TABLE `projects_status` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL DEFAULT '',
  `sort_order` int(11) DEFAULT '0',
  `default_value` tinyint(1) DEFAULT NULL,
  `active` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `projects_status`
--

INSERT INTO `projects_status` (`id`, `name`, `sort_order`, `default_value`, `active`) VALUES
(1, 'Open', 0, 1, 1),
(2, 'On Hold', 1, NULL, 1),
(3, 'Closed', 2, NULL, 1),
(4, 'Cancelled', 3, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `projects_types`
--

CREATE TABLE `projects_types` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL DEFAULT '',
  `sort_order` int(11) DEFAULT '0',
  `active` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `projects_types`
--

INSERT INTO `projects_types` (`id`, `name`, `sort_order`, `active`) VALUES
(2, 'Outreach', 1, 1),
(3, 'Education', 0, 1),
(4, 'Internal', 2, 1),
(5, 'Community Building', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tasks`
--

CREATE TABLE `tasks` (
  `id` int(11) NOT NULL,
  `projects_id` int(11) NOT NULL DEFAULT '0',
  `tasks_status_id` int(11) DEFAULT NULL,
  `tasks_priority_id` int(11) DEFAULT NULL,
  `tasks_type_id` int(11) DEFAULT NULL,
  `tasks_label_id` int(11) DEFAULT NULL,
  `tasks_groups_id` int(11) DEFAULT NULL,
  `projects_phases_id` int(11) DEFAULT NULL,
  `versions_id` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL DEFAULT '',
  `description` text,
  `assigned_to` varchar(255) DEFAULT NULL,
  `estimated_time` float DEFAULT NULL,
  `due_date` date DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `tickets_id` int(11) DEFAULT NULL,
  `closed_date` date DEFAULT NULL,
  `discussion_id` int(11) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `progress` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tasks`
--

INSERT INTO `tasks` (`id`, `projects_id`, `tasks_status_id`, `tasks_priority_id`, `tasks_type_id`, `tasks_label_id`, `tasks_groups_id`, `projects_phases_id`, `versions_id`, `created_by`, `name`, `description`, `assigned_to`, `estimated_time`, `due_date`, `created_at`, `tickets_id`, `closed_date`, `discussion_id`, `start_date`, `progress`) VALUES
(23, 7, 1, 5, 1, 1, NULL, NULL, NULL, 3, 'task1', '', '3,4', NULL, NULL, '2016-11-12 19:59:29', NULL, NULL, NULL, NULL, NULL),
(24, 7, 1, 5, 1, 1, NULL, NULL, NULL, 3, 'staff-task', '', '4', NULL, '2016-11-15', '2016-11-12 20:00:19', NULL, NULL, NULL, '2016-11-13', 10);

-- --------------------------------------------------------

--
-- Table structure for table `tasks_comments`
--

CREATE TABLE `tasks_comments` (
  `id` int(11) NOT NULL,
  `tasks_id` int(11) NOT NULL DEFAULT '0',
  `created_by` int(11) DEFAULT NULL,
  `tasks_status_id` int(11) DEFAULT NULL,
  `tasks_priority_id` int(11) DEFAULT NULL,
  `due_date` date DEFAULT NULL,
  `worked_hours` float DEFAULT NULL,
  `description` text,
  `created_at` datetime DEFAULT NULL,
  `progress` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tasks_groups`
--

CREATE TABLE `tasks_groups` (
  `id` int(11) NOT NULL,
  `projects_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tasks_labels`
--

CREATE TABLE `tasks_labels` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL DEFAULT '',
  `sort_order` int(11) DEFAULT '0',
  `default_value` tinyint(1) DEFAULT NULL,
  `active` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tasks_labels`
--

INSERT INTO `tasks_labels` (`id`, `name`, `sort_order`, `default_value`, `active`) VALUES
(1, 'Activity', 0, 1, 1),
(3, 'Idea', 2, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tasks_priority`
--

CREATE TABLE `tasks_priority` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL DEFAULT '',
  `icon` varchar(64) DEFAULT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `default_value` tinyint(1) DEFAULT NULL,
  `active` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tasks_priority`
--

INSERT INTO `tasks_priority` (`id`, `name`, `icon`, `sort_order`, `default_value`, `active`) VALUES
(1, 'Urgent', 'prio_1.png', 5, NULL, 1),
(2, 'High', 'prio_2.png', 4, NULL, 1),
(3, 'Low', 'prio_4.png', 1, NULL, 1),
(4, 'Unknown', NULL, 0, NULL, 1),
(5, 'Medum', 'prio_3.png', 2, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tasks_status`
--

CREATE TABLE `tasks_status` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL DEFAULT '',
  `group` varchar(64) NOT NULL DEFAULT '',
  `sort_order` int(11) DEFAULT '0',
  `default_value` tinyint(1) DEFAULT NULL,
  `active` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tasks_status`
--

INSERT INTO `tasks_status` (`id`, `name`, `group`, `sort_order`, `default_value`, `active`) VALUES
(1, 'Open', 'open', 0, 1, 1),
(2, 'Suspended', 'closed', 6, NULL, 1),
(3, 'Waiting Assessment', 'open', 0, NULL, 1),
(4, 'Re-opened', 'open', 2, NULL, 1),
(5, 'Done?', 'done', 1, NULL, 1),
(6, 'Paid', 'closed', 5, NULL, 1),
(7, 'Completed', 'closed', 4, NULL, 1),
(8, 'Lost', 'closed', 7, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tasks_types`
--

CREATE TABLE `tasks_types` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL DEFAULT '',
  `sort_order` int(11) DEFAULT '0',
  `default_value` tinyint(1) DEFAULT NULL,
  `active` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tasks_types`
--

INSERT INTO `tasks_types` (`id`, `name`, `sort_order`, `default_value`, `active`) VALUES
(1, 'Change Priority Rate (Hourly rate $25.00)', 0, 1, 1),
(2, 'Changes (Hourly rate $15.00)', 0, NULL, 1),
(3, 'Defects (Hourly rate $0.00)', 0, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tickets`
--

CREATE TABLE `tickets` (
  `id` int(11) NOT NULL,
  `departments_id` int(11) DEFAULT NULL,
  `tickets_types_id` int(11) DEFAULT NULL,
  `tickets_status_id` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL DEFAULT '',
  `description` text,
  `users_id` int(11) NOT NULL DEFAULT '0',
  `projects_id` int(11) NOT NULL DEFAULT '0',
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tickets_comments`
--

CREATE TABLE `tickets_comments` (
  `id` int(11) NOT NULL,
  `description` text,
  `created_at` timestamp NULL DEFAULT NULL,
  `tickets_id` int(11) NOT NULL DEFAULT '0',
  `users_id` int(11) DEFAULT NULL,
  `tickets_status_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tickets_reports`
--

CREATE TABLE `tickets_reports` (
  `id` int(11) NOT NULL,
  `users_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `display_on_home` tinyint(1) DEFAULT NULL,
  `projects_id` text,
  `projects_type_id` text,
  `projects_status_id` text,
  `departments_id` text,
  `tickets_types_id` text,
  `tickets_status_id` text,
  `sort_order` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tickets_status`
--

CREATE TABLE `tickets_status` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL DEFAULT '',
  `group` varchar(64) DEFAULT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `default_value` int(11) DEFAULT NULL,
  `active` char(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tickets_status`
--

INSERT INTO `tickets_status` (`id`, `name`, `group`, `sort_order`, `default_value`, `active`) VALUES
(1, 'New', 'open', 0, 1, '1'),
(2, 'Open', 'open', 1, NULL, '1'),
(3, 'Waiting Assessment', 'open', 3, NULL, '1'),
(4, 'Re-opened', 'open', 2, NULL, '1'),
(5, 'Resolved', 'closed', 4, NULL, '1'),
(6, 'Canceled', 'closed', 7, NULL, '1'),
(7, 'Fixed', 'closed', 6, NULL, '1'),
(8, 'Closed', 'closed', 5, NULL, '1');

-- --------------------------------------------------------

--
-- Table structure for table `tickets_types`
--

CREATE TABLE `tickets_types` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL DEFAULT '',
  `sort_order` int(11) DEFAULT NULL,
  `active` char(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tickets_types`
--

INSERT INTO `tickets_types` (`id`, `name`, `sort_order`, `active`) VALUES
(1, 'Report a Bug', 1, '1'),
(2, 'Request a Change', 0, '1'),
(3, 'Raise an Issue', 3, '1'),
(4, 'Ask a Question', 2, '1');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `users_group_id` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL DEFAULT '',
  `photo` varchar(64) DEFAULT NULL,
  `email` varchar(255) NOT NULL DEFAULT '',
  `culture` varchar(5) DEFAULT NULL,
  `password` varchar(64) NOT NULL DEFAULT '',
  `active` tinyint(1) DEFAULT NULL,
  `skin` varchar(64) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `users_group_id`, `name`, `photo`, `email`, `culture`, `password`, `active`, `skin`) VALUES
(3, 4, 'manager1', '', 'manager@localhost.com', 'en', '$P$ELk8wYJ7aFD1eshQTUP./qaD/K84kb.', 1, NULL),
(4, 2, 'develoer1', '', 'developer@localhost.com', 'en', '$P$EhIRWtQkk4mSPMdZEaK492VM95QVw7.', 1, NULL),
(5, 2, 'Kumar', '', 'kumar@localhost.com', 'en', '$P$ExvcIN0u2YVy8SRC8H2QtJTJ7.TacC0', 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users_groups`
--

CREATE TABLE `users_groups` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL DEFAULT '',
  `allow_view_all` tinyint(1) DEFAULT NULL,
  `allow_manage_projects` tinyint(1) DEFAULT NULL,
  `allow_manage_tasks` tinyint(1) DEFAULT NULL,
  `allow_manage_tickets` tinyint(1) DEFAULT NULL,
  `allow_manage_users` tinyint(1) DEFAULT NULL,
  `allow_manage_configuration` tinyint(1) DEFAULT NULL,
  `allow_manage_tasks_viewonly` tinyint(1) DEFAULT NULL,
  `allow_manage_discussions` tinyint(1) DEFAULT NULL,
  `allow_manage_discussions_viewonly` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users_groups`
--

INSERT INTO `users_groups` (`id`, `name`, `allow_view_all`, `allow_manage_projects`, `allow_manage_tasks`, `allow_manage_tickets`, `allow_manage_users`, `allow_manage_configuration`, `allow_manage_tasks_viewonly`, `allow_manage_discussions`, `allow_manage_discussions_viewonly`) VALUES
(1, 'Admin', 1, 1, 1, 1, 1, 1, NULL, 1, NULL),
(2, 'Staff', NULL, 3, 1, NULL, NULL, NULL, NULL, NULL, NULL),
(3, 'Client', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL),
(4, 'Organizer', NULL, 1, 1, NULL, 1, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_reports`
--

CREATE TABLE `user_reports` (
  `id` int(11) NOT NULL,
  `users_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `display_on_home` tinyint(1) DEFAULT NULL,
  `projects_id` text,
  `projects_type_id` text,
  `projects_status_id` text,
  `assigned_to` text,
  `tasks_status_id` text,
  `tasks_type_id` text,
  `tasks_label_id` text,
  `due_date_from` date DEFAULT NULL,
  `due_date_to` date DEFAULT NULL,
  `created_from` date DEFAULT NULL,
  `created_to` date DEFAULT NULL,
  `closed_from` date DEFAULT NULL,
  `closed_to` date DEFAULT NULL,
  `sort_order` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_reports`
--

INSERT INTO `user_reports` (`id`, `users_id`, `name`, `display_on_home`, `projects_id`, `projects_type_id`, `projects_status_id`, `assigned_to`, `tasks_status_id`, `tasks_type_id`, `tasks_label_id`, `due_date_from`, `due_date_to`, `created_from`, `created_to`, `closed_from`, `closed_to`, `sort_order`) VALUES
(3, 3, 'My tasks', 1, '', NULL, NULL, '3', NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, 3, 'dev1', 1, '', NULL, NULL, '4', '1', NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `versions`
--

CREATE TABLE `versions` (
  `id` int(11) NOT NULL,
  `projects_id` int(11) NOT NULL DEFAULT '0',
  `versions_status_id` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL DEFAULT '',
  `description` text,
  `due_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `versions_status`
--

CREATE TABLE `versions_status` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL DEFAULT '',
  `sort_order` int(11) DEFAULT '0',
  `default_value` tinyint(1) DEFAULT NULL,
  `active` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `versions_status`
--

INSERT INTO `versions_status` (`id`, `name`, `sort_order`, `default_value`, `active`) VALUES
(1, 'Open', 0, 1, 1),
(2, 'Done', 0, NULL, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `attachments`
--
ALTER TABLE `attachments`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `configuration`
--
ALTER TABLE `configuration`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_departments_users` (`users_id`);

--
-- Indexes for table `discussions`
--
ALTER TABLE `discussions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_discussions_projects` (`projects_id`),
  ADD KEY `fk_discussions_users` (`users_id`),
  ADD KEY `fk_discussions_discussions_status` (`discussions_status_id`);

--
-- Indexes for table `discussions_comments`
--
ALTER TABLE `discussions_comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_discussions_comments_discussions` (`discussions_id`),
  ADD KEY `fk_discussions_comments_users` (`users_id`),
  ADD KEY `fk_discussions_status_id` (`discussions_status_id`);

--
-- Indexes for table `discussions_reports`
--
ALTER TABLE `discussions_reports`
  ADD PRIMARY KEY (`id`),
  ADD KEY `users_id` (`users_id`);

--
-- Indexes for table `discussions_status`
--
ALTER TABLE `discussions_status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`event_id`),
  ADD KEY `fk_events_users` (`users_id`);

--
-- Indexes for table `extra_fields`
--
ALTER TABLE `extra_fields`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `extra_fields_list`
--
ALTER TABLE `extra_fields_list`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_extra_fields_list_extra_fields` (`extra_fields_id`);

--
-- Indexes for table `phases`
--
ALTER TABLE `phases`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `phases_status`
--
ALTER TABLE `phases_status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_projects_projects_status` (`projects_status_id`),
  ADD KEY `fk_projects_project_types` (`projects_types_id`),
  ADD KEY `fk_projects_pople` (`created_by`);

--
-- Indexes for table `projects_comments`
--
ALTER TABLE `projects_comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_projects_comments_projects` (`projects_id`),
  ADD KEY `fk_projects_comments_pople` (`created_by`);

--
-- Indexes for table `projects_phases`
--
ALTER TABLE `projects_phases`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_projects_phases_projects` (`projects_id`),
  ADD KEY `fk_projects_phases_phases_status` (`phases_status_id`);

--
-- Indexes for table `projects_reports`
--
ALTER TABLE `projects_reports`
  ADD PRIMARY KEY (`id`),
  ADD KEY `users_id` (`users_id`);

--
-- Indexes for table `projects_status`
--
ALTER TABLE `projects_status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `projects_types`
--
ALTER TABLE `projects_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tasks`
--
ALTER TABLE `tasks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_tasks_projects` (`projects_id`),
  ADD KEY `fk_tasks_task_status` (`tasks_status_id`),
  ADD KEY `fk_tasks_task_type` (`tasks_type_id`),
  ADD KEY `fk_tasks_task_label` (`tasks_label_id`),
  ADD KEY `fk_tasks_projects_phases` (`projects_phases_id`),
  ADD KEY `fk_tasks_pople` (`created_by`),
  ADD KEY `fk_tasks_tasks_groups` (`tasks_groups_id`),
  ADD KEY `fk_tasks_versions` (`versions_id`),
  ADD KEY `fk_tasks_tasks_priority` (`tasks_priority_id`),
  ADD KEY `fk_tasks_tickets` (`tickets_id`);

--
-- Indexes for table `tasks_comments`
--
ALTER TABLE `tasks_comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_tasks_comments_pople` (`created_by`),
  ADD KEY `fk_tasks_comments_tasks` (`tasks_id`),
  ADD KEY `fk_tasks_comments_status` (`tasks_status_id`),
  ADD KEY `fk_tasks_comments_priority` (`tasks_priority_id`);

--
-- Indexes for table `tasks_groups`
--
ALTER TABLE `tasks_groups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_tasks_groups_projects` (`projects_id`);

--
-- Indexes for table `tasks_labels`
--
ALTER TABLE `tasks_labels`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tasks_priority`
--
ALTER TABLE `tasks_priority`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tasks_status`
--
ALTER TABLE `tasks_status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tasks_types`
--
ALTER TABLE `tasks_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tickets`
--
ALTER TABLE `tickets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_tickets_users` (`users_id`),
  ADD KEY `fk_tickets_tickets_status` (`tickets_status_id`),
  ADD KEY `fk_tickets_tickets_types` (`tickets_types_id`),
  ADD KEY `fk_tickets_projects` (`projects_id`),
  ADD KEY `fk_tickets_departments` (`departments_id`);

--
-- Indexes for table `tickets_comments`
--
ALTER TABLE `tickets_comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_tickets_comments_tickets` (`tickets_id`),
  ADD KEY `fk_tickets_comments_users` (`users_id`),
  ADD KEY `k_tickets_comments_status` (`tickets_status_id`);

--
-- Indexes for table `tickets_reports`
--
ALTER TABLE `tickets_reports`
  ADD PRIMARY KEY (`id`),
  ADD KEY `users_id` (`users_id`);

--
-- Indexes for table `tickets_status`
--
ALTER TABLE `tickets_status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tickets_types`
--
ALTER TABLE `tickets_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_pople_people_group` (`users_group_id`);

--
-- Indexes for table `users_groups`
--
ALTER TABLE `users_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_reports`
--
ALTER TABLE `user_reports`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_user_reports_users` (`users_id`);

--
-- Indexes for table `versions`
--
ALTER TABLE `versions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_versions_versions_status` (`versions_status_id`),
  ADD KEY `fk_versions_projects` (`projects_id`);

--
-- Indexes for table `versions_status`
--
ALTER TABLE `versions_status`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `attachments`
--
ALTER TABLE `attachments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `configuration`
--
ALTER TABLE `configuration`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;
--
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `discussions`
--
ALTER TABLE `discussions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `discussions_comments`
--
ALTER TABLE `discussions_comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `discussions_reports`
--
ALTER TABLE `discussions_reports`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `discussions_status`
--
ALTER TABLE `discussions_status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `event_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `extra_fields`
--
ALTER TABLE `extra_fields`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `extra_fields_list`
--
ALTER TABLE `extra_fields_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;
--
-- AUTO_INCREMENT for table `phases`
--
ALTER TABLE `phases`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `phases_status`
--
ALTER TABLE `phases_status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `projects_comments`
--
ALTER TABLE `projects_comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `projects_phases`
--
ALTER TABLE `projects_phases`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `projects_reports`
--
ALTER TABLE `projects_reports`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `projects_status`
--
ALTER TABLE `projects_status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `projects_types`
--
ALTER TABLE `projects_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `tasks`
--
ALTER TABLE `tasks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT for table `tasks_comments`
--
ALTER TABLE `tasks_comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT for table `tasks_groups`
--
ALTER TABLE `tasks_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tasks_labels`
--
ALTER TABLE `tasks_labels`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `tasks_priority`
--
ALTER TABLE `tasks_priority`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `tasks_status`
--
ALTER TABLE `tasks_status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `tasks_types`
--
ALTER TABLE `tasks_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `tickets`
--
ALTER TABLE `tickets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tickets_comments`
--
ALTER TABLE `tickets_comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tickets_reports`
--
ALTER TABLE `tickets_reports`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tickets_status`
--
ALTER TABLE `tickets_status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `tickets_types`
--
ALTER TABLE `tickets_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `users_groups`
--
ALTER TABLE `users_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `user_reports`
--
ALTER TABLE `user_reports`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `versions`
--
ALTER TABLE `versions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `versions_status`
--
ALTER TABLE `versions_status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `departments`
--
ALTER TABLE `departments`
  ADD CONSTRAINT `fk_departments_users` FOREIGN KEY (`users_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `discussions`
--
ALTER TABLE `discussions`
  ADD CONSTRAINT `discussions_ibfk_1` FOREIGN KEY (`projects_id`) REFERENCES `projects` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `discussions_ibfk_2` FOREIGN KEY (`users_id`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  ADD CONSTRAINT `discussions_ibfk_3` FOREIGN KEY (`discussions_status_id`) REFERENCES `discussions_status` (`id`) ON DELETE SET NULL ON UPDATE SET NULL;

--
-- Constraints for table `discussions_comments`
--
ALTER TABLE `discussions_comments`
  ADD CONSTRAINT `discussions_comments_ibfk_1` FOREIGN KEY (`discussions_id`) REFERENCES `discussions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `discussions_comments_ibfk_2` FOREIGN KEY (`users_id`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  ADD CONSTRAINT `discussions_comments_ibfk_3` FOREIGN KEY (`discussions_status_id`) REFERENCES `discussions_status` (`id`) ON DELETE SET NULL ON UPDATE SET NULL;

--
-- Constraints for table `discussions_reports`
--
ALTER TABLE `discussions_reports`
  ADD CONSTRAINT `discussions_reports_ibfk_1` FOREIGN KEY (`users_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `events`
--
ALTER TABLE `events`
  ADD CONSTRAINT `events_ibfk_1` FOREIGN KEY (`users_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `extra_fields_list`
--
ALTER TABLE `extra_fields_list`
  ADD CONSTRAINT `extra_fields_list_ibfk_1` FOREIGN KEY (`extra_fields_id`) REFERENCES `extra_fields` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `projects`
--
ALTER TABLE `projects`
  ADD CONSTRAINT `projects_ibfk_1` FOREIGN KEY (`projects_status_id`) REFERENCES `projects_status` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  ADD CONSTRAINT `projects_ibfk_2` FOREIGN KEY (`projects_types_id`) REFERENCES `projects_types` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  ADD CONSTRAINT `projects_ibfk_3` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE SET NULL;

--
-- Constraints for table `projects_comments`
--
ALTER TABLE `projects_comments`
  ADD CONSTRAINT `projects_comments_ibfk_1` FOREIGN KEY (`projects_id`) REFERENCES `projects` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `projects_comments_ibfk_2` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE SET NULL;

--
-- Constraints for table `projects_phases`
--
ALTER TABLE `projects_phases`
  ADD CONSTRAINT `projects_phases_ibfk_1` FOREIGN KEY (`projects_id`) REFERENCES `projects` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `projects_phases_ibfk_2` FOREIGN KEY (`phases_status_id`) REFERENCES `phases_status` (`id`) ON DELETE SET NULL ON UPDATE SET NULL;

--
-- Constraints for table `projects_reports`
--
ALTER TABLE `projects_reports`
  ADD CONSTRAINT `projects_reports_ibfk_1` FOREIGN KEY (`users_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tasks`
--
ALTER TABLE `tasks`
  ADD CONSTRAINT `tasks_ibfk_1` FOREIGN KEY (`projects_id`) REFERENCES `projects` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tasks_ibfk_10` FOREIGN KEY (`tickets_id`) REFERENCES `tickets` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  ADD CONSTRAINT `tasks_ibfk_2` FOREIGN KEY (`tasks_status_id`) REFERENCES `tasks_status` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  ADD CONSTRAINT `tasks_ibfk_3` FOREIGN KEY (`tasks_priority_id`) REFERENCES `tasks_priority` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  ADD CONSTRAINT `tasks_ibfk_4` FOREIGN KEY (`tasks_type_id`) REFERENCES `tasks_types` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  ADD CONSTRAINT `tasks_ibfk_5` FOREIGN KEY (`tasks_label_id`) REFERENCES `tasks_labels` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  ADD CONSTRAINT `tasks_ibfk_6` FOREIGN KEY (`tasks_groups_id`) REFERENCES `tasks_groups` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tasks_ibfk_7` FOREIGN KEY (`projects_phases_id`) REFERENCES `projects_phases` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tasks_ibfk_8` FOREIGN KEY (`versions_id`) REFERENCES `versions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tasks_ibfk_9` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE SET NULL;

--
-- Constraints for table `tasks_comments`
--
ALTER TABLE `tasks_comments`
  ADD CONSTRAINT `tasks_comments_ibfk_1` FOREIGN KEY (`tasks_id`) REFERENCES `tasks` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tasks_comments_ibfk_2` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  ADD CONSTRAINT `tasks_comments_ibfk_3` FOREIGN KEY (`tasks_status_id`) REFERENCES `tasks_status` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  ADD CONSTRAINT `tasks_comments_ibfk_4` FOREIGN KEY (`tasks_priority_id`) REFERENCES `tasks_priority` (`id`) ON DELETE SET NULL ON UPDATE SET NULL;

--
-- Constraints for table `tasks_groups`
--
ALTER TABLE `tasks_groups`
  ADD CONSTRAINT `tasks_groups_ibfk_1` FOREIGN KEY (`projects_id`) REFERENCES `projects` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tickets`
--
ALTER TABLE `tickets`
  ADD CONSTRAINT `fk_tickets_tickets_status` FOREIGN KEY (`tickets_status_id`) REFERENCES `tickets_status` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  ADD CONSTRAINT `fk_tickets_tickets_types` FOREIGN KEY (`tickets_types_id`) REFERENCES `tickets_types` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  ADD CONSTRAINT `fk_tickets_users` FOREIGN KEY (`users_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tickets_ibfk_1` FOREIGN KEY (`projects_id`) REFERENCES `projects` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tickets_ibfk_2` FOREIGN KEY (`departments_id`) REFERENCES `departments` (`id`) ON DELETE SET NULL ON UPDATE SET NULL;

--
-- Constraints for table `tickets_comments`
--
ALTER TABLE `tickets_comments`
  ADD CONSTRAINT `fk_tickets_comments_tickets` FOREIGN KEY (`tickets_id`) REFERENCES `tickets` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_tickets_comments_users` FOREIGN KEY (`users_id`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  ADD CONSTRAINT `tickets_comments_ibfk_1` FOREIGN KEY (`tickets_status_id`) REFERENCES `tickets_status` (`id`) ON DELETE SET NULL ON UPDATE SET NULL;

--
-- Constraints for table `tickets_reports`
--
ALTER TABLE `tickets_reports`
  ADD CONSTRAINT `tickets_reports_ibfk_1` FOREIGN KEY (`users_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`users_group_id`) REFERENCES `users_groups` (`id`) ON DELETE SET NULL ON UPDATE SET NULL;

--
-- Constraints for table `user_reports`
--
ALTER TABLE `user_reports`
  ADD CONSTRAINT `user_reports_ibfk_1` FOREIGN KEY (`users_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `versions`
--
ALTER TABLE `versions`
  ADD CONSTRAINT `versions_ibfk_1` FOREIGN KEY (`projects_id`) REFERENCES `projects` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `versions_ibfk_2` FOREIGN KEY (`versions_status_id`) REFERENCES `versions_status` (`id`) ON DELETE SET NULL ON UPDATE SET NULL;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
