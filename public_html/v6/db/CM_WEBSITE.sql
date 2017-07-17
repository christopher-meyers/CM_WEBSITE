-- phpMyAdmin SQL Dump
-- version 4.4.10
-- http://www.phpmyadmin.net
--
-- Host: localhost:8889
-- Generation Time: Jul 17, 2017 at 04:20 AM
-- Server version: 5.5.42
-- PHP Version: 7.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `CM_WEBSITE`
--

-- --------------------------------------------------------

--
-- Table structure for table `builds`
--

DROP TABLE IF EXISTS `builds`;
CREATE TABLE IF NOT EXISTS `builds` (
  `build` int(11) NOT NULL,
  `date` text NOT NULL,
  `proc` text NOT NULL,
  `cool` text,
  `mobo` text NOT NULL,
  `ram` text NOT NULL,
  `hdd` text NOT NULL,
  `ssd` text,
  `vid` text NOT NULL,
  `abbrev` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `builds`
--

INSERT INTO `builds` (`build`, `date`, `proc`, `cool`, `mobo`, `ram`, `hdd`, `ssd`, `vid`, `abbrev`) VALUES
(1, 'March 2012 - Built for my brother, Matt', 'AMD 6-core FX-6100 @ 3.3GHz', NULL, 'Gigabyte 990FXA-UD3', '8GB G.SKILL Ripjaws Series 1600MHz', 'WD5000AAKX 500GB @ 7200rpm', NULL, 'XFX Radeon 6870 1GB', 'mm2012'),
(2, 'February 2013 - Built for myself', 'Intel Core i7 3770k @ 4.2GHz', 'Cooler Master Hyper 212 Plus', 'Asus P8Z77-V LK', '16GB Corsair Vengeance 1600MHz', 'WD6400AAKS 640GB @ 7200rpm, ST31000524AS 1TB @ 7200rpm', 'Samsung 850 Pro 256GB', 'EVGA GeForce GTX 670 FTW 2GB', 'cm2013'),
(3, 'September 2013 - Built for my Neighbor', 'Intel Core i7 4770k @ 3.5GHz', 'Cooler Master Hyper 212 EVO', 'MSI H87-G43', '16GB G.SKILL Ripjaws X Series 1600MHz', 'ST1000DM003 1TB @ 7200rpm', 'Kingston HyperX 3K 120GB', 'EVGA GeForce GTX 770 SuperClocked 2GB', 'mf2013'),
(4, 'February 2016 - Built for myself', 'Intel Core i7 6700k @ 4.6GHz', 'Corsair H100i v2 w/ Noctua NF-F12 120mm PWM Fans', 'Asus Republic of Gamers Maximus VIII Hero Alpha', '32GB HyperX Fury 2666MHz', 'Western Digital Blue 1TB @ 7200rpm', 'Samsung 850 EVO 500GB', 'EVGA GeForce GTX 980 Ti 6GB', 'cm2016');

-- --------------------------------------------------------

--
-- Table structure for table `builds_images`
--

DROP TABLE IF EXISTS `builds_images`;
CREATE TABLE IF NOT EXISTS `builds_images` (
  `id` int(11) NOT NULL,
  `abbrev` text NOT NULL,
  `url` text NOT NULL,
  `title` text NOT NULL,
  `orient` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `builds_images`
--

INSERT INTO `builds_images` (`id`, `abbrev`, `url`, `title`, `orient`) VALUES
(1, 'mm2012', 'images/builds/mattBuild.jpg', 'Matt&lsquo;s Computer', 'land'),
(2, 'cm2013', 'images/builds/myBuild.jpg', 'My Computer 2013', 'port'),
(3, 'mf2013', 'images/builds/markBuild.jpg', 'Mark&lsquo;s computer', 'port'),
(4, 'cm2016', 'images/builds/myBuild2016_liquid.jpg', 'My Computer 2016', 'port');

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

DROP TABLE IF EXISTS `projects`;
CREATE TABLE IF NOT EXISTS `projects` (
  `proj` int(11) NOT NULL,
  `title` text NOT NULL,
  `web_url` text,
  `code_url` text NOT NULL,
  `date` text NOT NULL,
  `lang` text NOT NULL,
  `info` text NOT NULL,
  `role` text NOT NULL,
  `stat` text NOT NULL,
  `abbrev` varchar(10) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`proj`, `title`, `web_url`, `code_url`, `date`, `lang`, `info`, `role`, `stat`, `abbrev`) VALUES
(1, 'chrismeyers.info, this webpage', NULL, 'https://github.com/chrismeyers/CM_WEBSITE/tree/master/public_html/v5', 'Personal Project, Fall 2013', 'PHP, MySQL,  Javascript, HTML5, CSS3', 'My first web project. A digital representation of myself.', 'Solo project', 'Being maintained', 'cm'),
(2, 'Genomic Solutions Now! Software', NULL, 'https://github.com/chrismeyers/Genomic_SWE', 'Software Engineering I, Rowan University, Spring 2014', 'Java', 'An application built for <a href="http://www.genomicsolutionsnow.com/" class="fancytxt" target="_blank">Genomic Solutions Now</a> that simplifies the patient reports generated by a lab.', 'Responsible for parsing the input reports. I also handled outputting the simplified reports to an Excel spreadsheet.', 'Complete', 'genomic'),
(3, 'Pinelands Tour Maker', 'http://chrismeyers.info/projects/pinelands', 'https://github.com/chrismeyers/WEB_PROG/tree/master/public_html/pinelands', 'Web Programming, Rowan University, Spring 2014', 'PHP, Javascript, MySQL, HTML5, CSS3', 'An application that makes tours depending on selected points of interest.', 'Solo project', 'Complete', 'pine'),
(4, 'Tic Tac Toe Android App', NULL, 'https://github.com/chrismeyers/Android-TicTacToe', 'Intro to Android Programming, Rowan University, Summer 2014', 'Java, XML', 'An android version of tic tac toe.', 'Solo Project', 'Complete', 'ttt'),
(5, 'League of Legends Player Data Parser', 'http://chrismeyers.info/projects/LoL_player_data/web/static.html', 'https://github.com/chrismeyers/LoL_player_data', 'Personal Project, Summer 2014', 'PHP, HTML5, CSS3', 'An application based on the video game <i>League of Legends</i> that utilizes the Riot Games API to query and parse player data for a specified player.<br /><br /><b>Note: Due to the deprecation of the stats-v1.3 API endpoint, this web application no longer pulls live data.</b>', 'Solo Project', 'Complete', 'lol_player'),
(6, 'PCA Visualization', NULL, 'https://github.com/chrismeyers/SeniorProj_BMS_PCA', 'Senior Project, Rowan University, Fall 2014', 'C#', 'Principal component analysis (PCA) is a technique used to reduce dimensionality of a multivariate data set in order to better understand potentially correlated data. The goal of this project was to take an Excel add-in developed by Bristol-Myers Squibb and further develop it to have visualization functionality.', 'Responsible for parsing the calculated principal component worksheets and storing them in data structures used for plotting.', 'Complete', 'pca'),
(7, 'Cardiomyocyte Data Analysis Automation', NULL, 'https://github.com/chrismeyers/BMS_Meyers_ExcelAutomation', 'Personal Project, Winter 2015', 'C#', 'An Excel add-in that was developed to automate data analysis for Dan Meyers, scientist at Bristol-Myers Squibb pharmaceutical company. The add-in takes in a raw data set, formats the data, performs statistical calculations and plots specified variables to a column graph. Data is extracted from an <a href="http://www.ionoptix.com/" class="fancytxt" target="_blank">IonOptix</a> contraction/calcium monitoring system and is an important add-in for data analysis.', 'Solo Project', 'Complete', 'bms'),
(8, 'League of Legends Server Status Checker', NULL, 'https://github.com/chrismeyers/rito-pls', 'Personal Project, June 2015', 'Java', 'A Java application that reports current <i>League of Legends</i> service statuses for a specified region. The application queries the <i>League of Legends</i> API periodically and presents the current status of several services (Boards/Forums, Game, Store and Website).<p></p>The purpose of this project was to get more practice with Java GUI building and multithreaded programming. The polling operation takes place on a new thread that allows for the program to function normally while maintaining periodic server checks.', 'Solo Project', 'Complete', 'lol_status');

-- --------------------------------------------------------

--
-- Table structure for table `projects_images`
--

DROP TABLE IF EXISTS `projects_images`;
CREATE TABLE IF NOT EXISTS `projects_images` (
  `id` int(11) NOT NULL,
  `abbrev` varchar(10) NOT NULL,
  `url` text NOT NULL,
  `title` text NOT NULL,
  `orient` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `projects_images`
--

INSERT INTO `projects_images` (`id`, `abbrev`, `url`, `title`, `orient`) VALUES
(1, 'cm', 'images/v6/project_screenshots/cm/cm.jpg', 'Full size version of my personal website.', 'land'),
(3, 'cm', 'images/v5/project_screenshots/cm/cm_mobile.jpg', 'Mobile version of my personal website.', 'port'),
(4, 'genomic', 'images/project_screenshots/genomic/genomic.png', 'Genomic Solutions Now! Software', 'land'),
(5, 'pine', 'images/project_screenshots/pinelands/pinelands_landing.jpg', 'Pinelands landing page', 'land'),
(6, 'pine', 'images/project_screenshots/pinelands/pinelands_tour.jpg', 'Pinelands tour page', 'square'),
(7, 'pine', 'images/project_screenshots/pinelands/pinelands_contact.jpg', 'Pinelands contact page', 'square'),
(8, 'ttt', 'images/project_screenshots/ttt/ttt_land.png', 'Tic Tac Toe Landscape', 'land'),
(9, 'ttt', 'images/project_screenshots/ttt/ttt_port.png', 'Tic Tac Toe Portrait', 'port'),
(10, 'lol_player', 'images/project_screenshots/lol_playerdata/loldata_landing.png', 'LoL player data landing page.', 'land'),
(11, 'lol_player', 'images/project_screenshots/lol_playerdata/loldata.png', 'LoL player data results.', 'square'),
(12, 'lol_player', 'images/project_screenshots/lol_playerdata/loldata_small.png', 'LoL player data results optimized for mobile.', 'port'),
(13, 'pca', 'images/project_screenshots/pca/scoresPlot.png', 'A scores plot generated from calculated principal components.', 'land'),
(14, 'pca', 'images/project_screenshots/pca/scoresData.png', 'The calculated principal component data.', 'square'),
(15, 'pca', 'images/project_screenshots/pca/addinBar.PNG', 'The Excel add-in bar. Scores and loadings plot were added in this project.', 'land'),
(16, 'pca', 'images/project_screenshots/pca/scoresInput-full.png', 'Input form that is dynamically populated based on the number of principal components.', 'port'),
(17, 'bms', 'images/project_screenshots/bms/bms_rawData.png', 'The raw data taken from the lab to be processed.', 'land'),
(18, 'bms', 'images/project_screenshots/bms/bms_formatForm.png', 'Input form used to select the worksheet to be processed.', 'square'),
(19, 'bms', 'images/project_screenshots/bms/bms_formattedData.png', 'The entire formatted data set.', 'square'),
(20, 'bms', 'images/project_screenshots/bms/bms_finalData.png', 'A further refined formatted data set used for plotting.', 'square'),
(21, 'bms', 'images/project_screenshots/bms/bms_graphForm.png', 'Input form used to select the variables to be plotted.', 'square'),
(22, 'bms', 'images/project_screenshots/bms/bms_plot.png', 'The final plot.', 'square'),
(23, 'lol_status', 'images/project_screenshots/lol_status/gui.png', 'The Java GUI that displays the current status of services in a specified region.', 'square'),
(24, 'lol_status', 'images/project_screenshots/lol_status/polling.png', 'Input form that allows users to specify how often the GUI updates.', 'square'),
(25, 'lol_status', 'images/project_screenshots/lol_status/tray.png', 'Notification area functionality.', 'square'),
(26, 'cm', 'images/v5/project_screenshots/cm/cm_min.jpg', 'Minimalist version of my website, <a  class="fancytxt" style="color: #FFFFFF" target="_blank"  href="http://links.chrismeyers.info/">http://links.chrismeyers.info</a>.', 'square');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `builds`
--
ALTER TABLE `builds`
  ADD PRIMARY KEY (`build`);

--
-- Indexes for table `builds_images`
--
ALTER TABLE `builds_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`proj`);

--
-- Indexes for table `projects_images`
--
ALTER TABLE `projects_images`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `builds`
--
ALTER TABLE `builds`
  MODIFY `build` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `builds_images`
--
ALTER TABLE `builds_images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `proj` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `projects_images`
--
ALTER TABLE `projects_images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=27;
