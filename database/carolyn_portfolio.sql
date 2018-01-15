-- phpMyAdmin SQL Dump
-- version 4.3.8
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jan 15, 2018 at 12:30 AM
-- Server version: 5.5.51-38.2
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `carolyn_portfolio`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_projects`
--

CREATE TABLE IF NOT EXISTS `tbl_projects` (
  `projects_id` tinyint(3) unsigned NOT NULL,
  `projects_name` varchar(50) NOT NULL,
  `projects_image` varchar(150) NOT NULL DEFAULT 'default.jpg',
  `projects_lightboximage` varchar(150) NOT NULL DEFAULT 'default.jpg',
  `projects_info` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_projects`
--

INSERT INTO `tbl_projects` (`projects_id`, `projects_name`, `projects_image`, `projects_lightboximage`, `projects_info`) VALUES
(1, 'Team Canada - 1972 Summit Series', 'team-canada.png', 'team-canada-lightbox.jpg', 'During my third semester at Fanshawe College, the school partnered with the 1972 Summit Series Hockey Team Inc. to have complete rebrand done for Team Canada 1972. This rebrand included a brand new website, promotional material, merchandise, social media strategy, as well as potential future events to help carry out their legacy. My class was split into 4 teams and my role was to redesign the website, create wireframes and mockups, finalized design files, and to code out the new fully responsive website. This project was developed as a competition between groups and out of the four, my group won. Starting January 2018 we will be working on developing our project to go live later in the year.'),
(2, 'London Economic Development Corporation', 'ledc.png', 'ledc-lightbox.jpg', 'During my fifth semester at Fanshawe College, the school partnered with London Economic Development Corporation to create a campaign to market London ON as a tech hub and destination to the world. LEDC hopes a new campaign will help show to the public what London has to offer and why you should come work there. My role in this project is as the front-end web developer, where next semester I will be coding out the designs that have been created throughout this semester into a fully responsive website.'),
(3, 'Officialize - Melvin Gordon', 'officialize.png', 'officialize-lightbox.jpg', 'During my fifth semester at Fanshawe College, the school also partnered with Officialize in order to have specific NFL athletes of theirs rebranded. The player my group was given to develop a new brand for was Melvin Gordon. Officialize was hoping for a redesigned website, social media material, and merchandise in the hopes that this new material will create a brand for each athlete, allowing the brand to carry on after their playing career has ended. My role in this project was as the front-end web developer where I coded out the new responsive website that was designed earlier in the semester.'),
(4, 'The Goonies', 'the-goonies.png', 'goonies-lightbox.jpg', 'During my second semester at Fanshawe College, I was tasked with creating a website for the movie The Goonies. The purpose of the website was to advertise for the release of a limited edition 31st Anniversary copy of the 1980s film. For the website, I needed to develop wireframe mockups and finalized design files of the website, create a 3D version of The Goonies logo, make two movie trailers that accurately portrayed the film, as well as coding out a fully responsive website. '),
(5, 'The Daily Grind', 'daily-grind.png', 'daily-grind-lightbox.jpg', 'I invented The Daily Grind for a midterm assignment during my second semester at Fanshawe College. The task was to create a website that contained three pages as well as a CSS3 animation. The thought process for The Daily Grind consisted of my love for coffee, along with the cozy environment of a coffee shop. I have always enjoyed going to coffee shops to do my work and so I developed a website for a fictional shop that I personally would like to go if it existed. '),
(6, 'Learn Photography Canada', 'learn-photo-canada.png', 'lpc-lightbox.jpg', 'I was hired in May 2017 at Learn Photography Canada to redesign their website and assist with the creation of marketing materials for their photography classes company in Calgary AB. I was tasked with creating a brand new website that emulated their style, while using Wordpress as the base framework for their site. Over the next few months I designed a new fully responsive website, various marketing advertisements and online promotional banners, print materials, as well as creating logo designs for separate companies their were in the beginning of developing at the time. ');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_projects`
--
ALTER TABLE `tbl_projects`
  ADD PRIMARY KEY (`projects_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_projects`
--
ALTER TABLE `tbl_projects`
  MODIFY `projects_id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
