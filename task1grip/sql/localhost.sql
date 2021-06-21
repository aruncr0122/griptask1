-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 09, 2021 at 05:56 AM
-- Server version: 10.3.16-MariaDB
-- PHP Version: 7.3.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";



CREATE DATABASE IF NOT EXISTS `banking` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
USE `banking`;

CREATE TABLE `transaction` (
  `sno` int(3) NOT NULL,
  `sender` text NOT NULL,
  `receiver` text NOT NULL,
  `balance` int(8) NOT NULL,
  `datetime` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;



INSERT INTO `transaction` (`sno`, `sender`, `receiver`, `balance`, `datetime`) VALUES
(2, 'Sathish', 'Bharath', 9, '2021-04-08 18:08:56'),
(3, 'Andrew', 'Joshua', 100, '2021-04-08 14:55:43'),
(4, 'Prathap', 'Arivu', 1, '2021-04-08 14:58:55');


CREATE TABLE `users` (
  `id` int(3) NOT NULL,
  `name` text NOT NULL,
  `email` varchar(30) NOT NULL,
  `balance` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;



INSERT INTO `users` (`id`, `name`, `email`, `balance`) VALUES
(1, 'Andrew', 'andrew@gmail.com', 50000),
(2, 'Joshua', 'joshua@gmail.com', 30000),
(3, 'Nishaanth', 'nishaanth@gmail.com', 39900),
(4, 'Sathish', 'sathish@gmail.com', 10000),
(5, 'Stephan', 'stephan@gmail.com', 40000),
(6, 'Arivu', 'arivu@gmail.com', 19990),
(7, 'Sandesh', 'sandesh@gmail.com', 50009),
(8, 'Jayasurya', 'jayasurya@gmail.com', 40100),
(9, 'Bharath', 'bharath@gmail.com', 30000),
(10, 'Prathap', 'Prathap@gmail.com', 50001);


ALTER TABLE `transaction`
  ADD PRIMARY KEY (`sno`);


ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `transaction`
  MODIFY `sno` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

ALTER TABLE `users`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;
