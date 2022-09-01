SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;


CREATE TABLE `appUser` (
  `email` varchar(100) NOT NULL,
  `name` varchar(30) NOT NULL,
  `phone` varchar(10) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `console_entry_permissions` (
  `visitor_id` varchar(10) NOT NULL,
  `session_id` varchar(10) NOT NULL,
  `session_title` varchar(50) NOT NULL,
  `permissionGranted` int NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `session_on` (
  `session_id` varchar(10) NOT NULL,
  `isSessionRunning` int NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `visitor` (
  `visitor_id` varchar(10) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `email` varchar(150) DEFAULT NULL,
  `phone_number` varchar(20) DEFAULT NULL,
  `registration_number` varchar(100) DEFAULT NULL,
  `visitor_type` varchar(10) DEFAULT NULL,
  `conference_day` varchar(30) DEFAULT 'First',
  `if_sponsored` varchar(50) DEFAULT NULL,
  `sponsor_name` varchar(100) DEFAULT NULL,
  `payment_method` varchar(50) DEFAULT NULL,
  `upi_number` varchar(150) DEFAULT NULL,
  `amount_paid` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


ALTER TABLE `appUser`
  ADD PRIMARY KEY (`email`);

ALTER TABLE `console_entry_permissions`
  ADD PRIMARY KEY (`visitor_id`,`session_id`);

ALTER TABLE `session_on`
  ADD PRIMARY KEY (`session_id`);

COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
