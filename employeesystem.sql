-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 16, 2021 at 09:44 AM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.4.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `employeesystem`
--

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int(11) NOT NULL,
  `firstname` varchar(255) DEFAULT NULL,
  `lastname` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `email` varchar(255) DEFAULT 'test@test.com',
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `firstname`, `lastname`, `address`, `age`, `email`, `createdAt`, `updatedAt`) VALUES
(1, 'Jack', 'Smith', '374 William S Canning Blvd', 23, 'test@test.com', '2020-12-09 14:16:32', '2020-12-09 14:16:32'),
(2, 'Adam', 'Johnson', 'Fall River MA 2721. 121 Worcester Rd', 31, 'test@test.com', '2020-12-09 14:16:32', '2020-12-09 14:16:32'),
(3, 'Dana', 'Bay', 'Framingham MA 1701. 677 Timpany Blvd', 46, 'test@test.com', '2020-12-09 14:16:32', '2020-12-09 14:16:32'),
(4, 'Tiho', 'Ivanov', 'Chernisheva 1369. Hr.Botev Blvd', 46, 'test@test.com', '2020-12-09 14:16:32', '2020-12-09 14:16:32');

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `id` int(11) NOT NULL COMMENT 'primary key',
  `name` varchar(64) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `country` varchar(64) DEFAULT NULL,
  `position` varchar(64) DEFAULT NULL,
  `wage` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`id`, `name`, `age`, `country`, `position`, `wage`) VALUES
(1, 'Tiho', 45, 'BUugaria', 'PHP Dev', 1200),
(2, 'Ivan', 34, 'Poland', 'Python dev', 2345);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone_number` varchar(255) DEFAULT NULL,
  `dob` int(11) DEFAULT NULL,
  `bloodGroup` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `parentId` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `phone_number`, `dob`, `bloodGroup`, `createdAt`, `updatedAt`, `parentId`) VALUES
(1, 'Felicia', 'a@eros.co.uk', '1-484-477-0289', 11, ' AB+ ', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
(2, 'Vivien', 'Aenean.gravida@eudolor.co.uk', '1-129-444-1128', 2, ' B+', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
(3, 'Branden', 'turpis@blandit.co.uk', '1-424-672-0656', 11, ' B+', '0000-00-00 00:00:00', '2021-05-13 19:32:24', 2),
(4, 'KarlyBlajeva', 'volutpat@leoMorbineque.org', '1-655-302-4914', 5, ' A+ ', '0000-00-00 00:00:00', '2020-12-09 20:00:35', 0),
(5, 'Zeph', 'ultrices.a@Donec.co.uk', '1-862-191-7788', 2, 'O+ ', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
(6, 'Kalia', 'mollis@antelectusconvallis.org', '1-559-892-1516', 2, 'O+ ', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
(7, 'Vera', 'elit@Donec.com', '456-0146', 11, ' B+', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
(8, 'Lysandra', 'Morbi@volutpatNulladignissim.edu', '1-121-686-9839', 2, 'O+ ', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
(9, 'Quamar', 'Curabitur@In.com', '1-682-188-2537', 1, ' B+', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 8),
(10, 'Kane', 'vitae.purus.gravida@sapiencursusin.net', '549-6084', 3, ' A+ ', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
(11, 'Wyatt', 'Sed@vellectusCum.com', '506-7098', 11, ' A+ ', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
(12, 'Dylan', 'neque@Sedneque.com', '154-4656', 12, ' B+', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
(13, 'Georgia', 'orci.tincidunt.adipiscing@maurissapien.co.uk', '1-524-671-2676', 6, ' B+', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
(14, 'Ralph', 'gravida.Aliquam@libero.ca', '245-6964', 3, ' A+ ', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
(15, 'Kibo', 'vehicula@diamPellentesque.edu', '1-473-741-7316', 3, 'O+ ', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
(16, 'Plato', 'orci.luctus@ametmassa.net', '1-386-200-8517', 9, ' AB+ ', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
(17, 'Ryder', 'orci@parturientmontes.com', '211-1534', 8, ' B+', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
(18, 'Harlan', 'leo@euaccumsansed.com', '677-8716', 7, ' B+', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
(19, 'Evan', 'vel.mauris@Pellentesqueultricies.edu', '1-237-397-5051', 12, ' AB+ ', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
(20, 'Armand', 'lorem@inceptoshymenaeos.com', '1-315-171-7529', 3, ' B+', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
(21, 'Lillian', 'ac@euaccumsansed.net', '1-613-696-0429', 11, 'O+ ', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
(22, 'Justine', 'est.Mauris@magna.org', '686-0959', 7, ' AB+ ', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
(23, 'Hakeem', 'Suspendisse.commodo@luctussit.net', '799-0404', 6, ' AB+ ', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
(24, 'Gavin', 'mauris.rhoncus@temporaugue.net', '1-998-446-1883', 1, 'O+ ', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
(25, 'Riley', 'vitae@laoreetipsum.ca', '1-420-955-2811', 1, 'O+ ', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
(26, 'Oleg', 'vulputate.velit@fringillaornareplacerat.com', '476-9472', 3, 'O+ ', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
(27, 'Genevieve', 'sociosqu@quamquisdiam.org', '1-852-994-0135', 2, 'O+ ', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
(28, 'Lee', 'odio.auctor.vitae@purus.com', '1-585-326-9941', 9, ' AB+ ', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
(29, 'Rama', 'lorem.Donec@vitaepurusgravida.edu', '1-621-621-4210', 2, ' B+', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
(30, 'Teagan', 'consectetuer.rhoncus.Nullam@magnisdis.co.uk', '139-4947', 5, 'O+ ', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
(31, 'Nasim', 'morbi.tristique@mi.edu', '1-311-232-1356', 6, ' B+', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
(32, 'Stacy', 'purus@dictummi.com', '1-587-422-8638', 10, ' B+', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
(33, 'Blythe', 'est@nulla.ca', '820-0345', 12, ' A+ ', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
(34, 'Kirsten', 'nunc@duiquis.co.uk', '1-392-174-3554', 7, ' A+ ', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
(35, 'Edan', 'ligula@ipsumprimisin.edu', '1-237-666-8582', 12, 'O+ ', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
(36, 'Sydney', 'ornare@Integer.net', '1-749-157-8175', 2, ' B+', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
(37, 'Amanda', 'lectus.sit@eu.org', '614-6269', 7, ' A+ ', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
(38, 'Gage', 'fames.ac.turpis@ut.org', '1-295-640-1350', 6, 'O+ ', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
(39, 'Zachery', 'consequat@ullamcorperDuis.org', '1-751-242-3541', 6, ' AB+ ', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
(40, 'Hayden', 'nisi.Mauris.nulla@pede.edu', '328-0683', 10, ' A+ ', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
(41, 'Sacha', 'amet.metus.Aliquam@mattisCraseget.edu', '1-494-877-0096', 4, ' A+ ', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
(42, 'Morgan', 'sed.leo.Cras@vitaesemper.ca', '1-449-121-1399', 2, ' B+', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
(43, 'Adele', 'habitant.morbi.tristique@Cumsociisnatoque.com', '1-827-588-9356', 12, ' A+ ', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
(44, 'Cedric', 'penatibus.et@Donec.co.uk', '1-216-722-5171', 9, ' B+', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
(45, 'Ezra', 'mi.felis.adipiscing@Curabiturdictum.co.uk', '342-2961', 10, 'O+ ', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
(46, 'Ezekiel', 'Donec@ametlorem.co.uk', '379-7835', 4, 'O+ ', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
(47, 'Xenos', 'fames.ac@malesuadautsem.ca', '1-942-246-3651', 7, 'O+ ', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
(48, 'Alexis', 'magna@dignissim.ca', '1-659-257-1865', 1, ' B+', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
(49, 'Yael', 'ultrices.a.auctor@lacusUt.com', '1-366-216-1594', 4, ' A+ ', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
(50, 'Cynthia', 'sed@accumsansedfacilisis.net', '798-5833', 8, ' B+', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
(51, 'Callie', 'Nullam.vitae@dolorQuisque.org', '1-380-609-7247', 2, ' A+ ', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
(52, 'Leigh', 'natoque@vitaesodalesat.co.uk', '704-2366', 2, 'O+ ', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
(53, 'Gail', 'lectus.pede.et@risusvariusorci.com', '1-976-758-9472', 8, 'O+ ', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
(54, 'Kirby', 'pede.Cum@egestasAliquam.net', '1-323-440-6465', 9, ' AB+ ', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
(55, 'Wyatt', 'bibendum.ullamcorper@viverra.com', '840-9740', 7, 'O+ ', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
(56, 'Oliver', 'dis.parturient.montes@nonloremvitae.edu', '314-3620', 10, ' AB+ ', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
(57, 'Hayden', 'ut.dolor.dapibus@luctusutpellentesque.net', '356-0756', 8, ' A+ ', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
(58, 'Sage', 'In@lorem.ca', '1-505-826-6615', 2, ' AB+ ', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
(59, 'Brennan', 'amet@diamnuncullamcorper.net', '1-524-175-0858', 4, ' B+', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
(60, 'Graiden', 'sit@parturientmontesnascetur.org', '421-5556', 2, ' AB+ ', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
(61, 'Lucas', 'ullamcorper@Uttinciduntorci.com', '1-416-362-5634', 3, ' A+ ', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
(62, 'Rhonda', 'ligula.Donec@mauris.org', '1-526-333-9511', 4, ' A+ ', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
(63, 'Rhoda', 'a.odio.semper@semconsequat.net', '1-174-144-8931', 4, ' AB+ ', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
(64, 'Ishmael', 'Duis.elementum@seddictumeleifend.com', '1-453-171-2998', 3, ' A+ ', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
(65, 'Uriel', 'sed@Aliquamerat.co.uk', '608-7207', 8, ' AB+ ', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
(66, 'Quincy', 'congue.elit.sed@acarcu.co.uk', '299-3531', 7, ' AB+ ', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
(67, 'Gareth', 'consectetuer.adipiscing.elit@Sedet.ca', '847-0194', 3, ' AB+ ', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
(68, 'Carol', 'eu.sem@Aliquamvulputateullamcorper.co.uk', '1-660-968-4639', 1, ' AB+ ', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
(69, 'Bert', 'justo.faucibus@nonarcu.net', '1-866-156-3311', 4, ' B+', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
(70, 'Carlos', 'Integer@vulputateullamcorper.net', '1-850-541-4753', 10, ' A+ ', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
(71, 'Fritz', 'enim.diam@liberoProin.com', '181-2518', 11, 'O+ ', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
(72, 'Hiram', 'In@felis.edu', '212-2626', 2, 'O+ ', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
(73, 'Kenyon', 'Quisque.imperdiet@lacusMaurisnon.ca', '1-728-784-6451', 6, ' AB+ ', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
(74, 'Carter', 'vestibulum@tellus.net', '1-434-843-8026', 4, ' AB+ ', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
(75, 'Camille', 'erat.semper@enimMaurisquis.org', '1-158-393-4479', 4, ' A+ ', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
(76, 'Dacey', 'dis@metus.com', '1-878-455-0905', 12, ' AB+ ', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
(77, 'Desiree', 'ante@felisDonectempor.net', '355-7901', 9, ' AB+ ', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
(78, 'Tyler', 'nunc.sed@Etiam.co.uk', '1-655-219-0204', 6, ' A+ ', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
(79, 'Nero', 'Phasellus.at.augue@Quisqueporttitor.ca', '338-2403', 4, ' B+', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
(80, 'Calvin', 'ante.blandit@mollisPhaselluslibero.ca', '1-359-929-0413', 9, ' A+ ', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
(81, 'Dahlia', 'vel.mauris@anequeNullam.org', '1-378-749-6348', 3, ' AB+ ', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
(82, 'Debra', 'est@ut.net', '228-1421', 4, 'O+ ', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
(83, 'Howard', 'Sed.et.libero@feugiatSednec.ca', '1-876-568-5934', 6, ' AB+ ', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
(84, 'Troy', 'et.ipsum@ipsum.edu', '1-519-379-7522', 10, ' AB+ ', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
(85, 'Louis', 'in.consectetuer.ipsum@sociosquadlitora.org', '1-725-842-6415', 11, ' AB+ ', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
(86, 'Neville', 'orci@magnis.ca', '1-664-968-1098', 2, ' AB+ ', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
(87, 'Neville', 'non.ante@luctusaliquet.edu', '162-7409', 8, ' AB+ ', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
(88, 'Beatrice', 'enim@in.org', '1-161-833-7572', 1, ' A+ ', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
(89, 'Ramona', 'Pellentesque@lacus.net', '645-8434', 6, ' B+', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
(90, 'Castor', 'auctor@congueturpisIn.ca', '689-8824', 12, ' B+', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
(91, 'Rose', 'quis.accumsan@Nunc.ca', '643-3412', 12, ' A+ ', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
(92, 'Asher', 'elit.Curabitur.sed@loremacrisus.ca', '334-0811', 12, 'O+ ', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
(93, 'Kimberley', 'dolor.quam.elementum@et.co.uk', '1-507-680-6613', 3, 'O+ ', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
(94, 'Oren', 'Duis.a@amalesuada.org', '1-538-689-3384', 4, ' AB+ ', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
(95, 'Jasper', 'Vivamus.nisi.Mauris@Maurismolestiepharetra.ca', '216-1695', 2, ' AB+ ', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
(96, 'Judith', 'metus.urna.convallis@et.com', '128-8848', 7, ' B+', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
(97, 'Whitney', 'Donec.feugiat.metus@Suspendisseacmetus.net', '187-6951', 9, ' AB+ ', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
(98, 'Lionel', 'molestie.tellus@eratVivamusnisi.com', '700-4077', 7, 'O+ ', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
(99, 'Alea', 'lectus@urnaVivamus.edu', '302-8149', 1, ' B+', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
(100, 'Avye', 'Etiam.ligula@nunc.com', '1-328-154-0792', 2, 'O+ ', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
(101, 'Ivan', 'test@test.com', '123-987', 12, 'A+', '2020-12-09 14:27:30', '2020-12-09 14:27:59', 0),
(102, 'Test', 'test@test.com', '435436-12', 34, 'C+', '2020-12-09 14:41:22', '2020-12-09 14:51:29', 0),
(103, 'Hristo', 'ICo@test.com', '123-384747', 67, 'Z+', '2020-12-09 14:51:16', '2020-12-09 14:51:16', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'primary key', AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=104;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
