-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 24, 2020 at 12:46 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.2.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `training2`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` varchar(50) NOT NULL,
  `userid` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `image` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `userid`, `password`, `name`, `image`) VALUES
('', 'vishi_09', 'Mudgal@09', 'vishi', NULL),
('1', 'vishi_09', 'Mudgal@09', 'vishi sharma', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `state_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`id`, `name`, `state_id`) VALUES
(1, 'bhopal', 210),
(2, 'bhopal', 210),
(3, 'indore', 210),
(5, 'bhopal', 210),
(6, 'indore', 210),
(7, 'nagpur', 213),
(8, 'nagpur', 213),
(13, 'Pithampur', 210);

-- --------------------------------------------------------

--
-- Table structure for table `emp`
--

CREATE TABLE `emp` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `mobile` varchar(12) DEFAULT NULL,
  `gender` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `emp`
--

INSERT INTO `emp` (`id`, `name`, `mobile`, `gender`) VALUES
(1, 'vishi', '9111147640', 'Female');

-- --------------------------------------------------------

--
-- Table structure for table `ncr`
--

CREATE TABLE `ncr` (
  `id` int(11) NOT NULL,
  `cat_id` int(11) DEFAULT NULL,
  `news_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ncr`
--

INSERT INTO `ncr` (`id`, `cat_id`, `news_id`) VALUES
(12, 13, 27);

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` int(20) NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` text DEFAULT NULL,
  `image` varchar(100) NOT NULL,
  `reporter_id` int(11) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `status_text` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `title`, `description`, `image`, `reporter_id`, `status`, `status_text`) VALUES
(27, 'When Shah Rukh Khan made KKR pacer Shoaib Akhtar feel as if he had won the World Cup', '                            There used to be a time when Pakistani players could participate in the Indian Premier League. The likes of Shoaib Akhtar, Sohail Tanveer, Shahid Afridi, Shoaib Malik are among some of the most popular names from the neighbouring country to have participated in the IPL. Akhtar, who has become a cricket pundit on his own YouTube channel, recalled one of his magical spells for the Shah Rukh Khan co-owned Kolkata Knight Riders (KKR).\r\n\r\nAkhtar had taken four wickets for just 11 runs in one of the IPL games against Virender Sehwag-led Delhi Daredevils in the inaugural season of the cash-rich T20 league. The Rawalpindi Express remembered how the franchise co-owner Shah Rukh ecstatically celebrated with him as he had won the cricket World Cup for him.\r\nWhen I took 4 wickets, everyone went mad. Even Shah Rukh was running all over the ground, he went mad and was delirious. I thought did I win the world cup, such was the frenzy all around. Shah Rukh said you have won a very big match for us,â Shoaib was quoted as saying by the Hindustan Times.\r\n\r\nSourav Ganguly, who was then the captain of the Knight Riders, had some of the biggest world cricket stars with him. Ricky Ponting, Brendon McCullum, Chris Gayle in the batting department while Akhtar in the bowling. In his book, Ganguly also wrote about the idea behind signing Akhtar for KKR, suggesting it was the Pak pacer\'s pace that got the franchise rope him in.\r\n\r\nâI knew Shoaibâs blistering pace was bound to make a difference in the shortest format. In fact, it did. We knocked out Sehwagâs belligerent Delhi splendidly as the Rawalpindi Express cleaned them up, and Eden roared in delight. Shoaib took four wickets for 11 runs and we won a low-scoring match. It was one of our most memorable wins but we could not sustain it,â Ganguly wrote in his book.\r\n\r\nâHandling Shoaib turned out to be more difficult than I had imagined. Instead of turning around the competition for us, Shoaib suddenly decided not to play any more. He withdrew after making only three appearances despite my repeated requests,â he goes on to add.\r\n\r\nâHe said he had an injury, but I for one found his injury mysterious. I pleaded with him that he had to send down only four overs. I said even with a small, niggling injury he must play. But it was impossible to get him on the park,â Ganguly went on to write.\r\n\r\nAkhtar was only a part of the 2008 IPL season where he played 3 matches for the Kolkata-based franchise. He picked up a total of 5 wickets in those matches, with 4/11 against DD being his best. There\'s been no U-turn for Pakistani players in the IPL as the relations between the two countries have only gone from bad to worse.', 'Akhtar-Shah-Rukh-PTI.jpg', 1, 'Approved', 'hgfh'),
(30, 'hjffh', '                                                                                                                                                                                                                                                                                                            \r\n                       knsckjnkjdncknxzkcnzxlkncknceejdoijsalcknaskcnkxznckxzncehbcjdghc dshbcjdbcjasckj                                 \r\n                                                        \r\n                                                        \r\n                                                        \r\n                                                        ', 'media/news/Anju Mausii 20180622_192202.jpg', 1, 'Pending', 'Pending for Approval By Admin');

-- --------------------------------------------------------

--
-- Table structure for table `newscategory`
--

CREATE TABLE `newscategory` (
  `id` int(20) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `newscategory`
--

INSERT INTO `newscategory` (`id`, `name`) VALUES
(12, 'Buisness news'),
(13, 'Sports'),
(14, 'Political'),
(15, 'Education'),
(16, 'Food & Recipies');

-- --------------------------------------------------------

--
-- Table structure for table `person`
--

CREATE TABLE `person` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `fname` varchar(100) DEFAULT NULL,
  `age` int(11) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `contact` varchar(12) NOT NULL,
  `hobbies` varchar(100) NOT NULL,
  `userid` varchar(50) DEFAULT NULL,
  `password` varchar(20) NOT NULL,
  `image` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `person`
--

INSERT INTO `person` (`id`, `name`, `fname`, `age`, `gender`, `contact`, `hobbies`, `userid`, `password`, `image`) VALUES
(19, 'reena ', 'mohan kr soni', 12, 'Female', '3546646367', 'Dancing,Singing,Cooking,', 'vishi_09', 'TXVkZ2FsQDEy', 'media/person/2.jpg'),
(20, 'ramesh  raja', 'ram kumar', 20, 'Male', '454454444', 'Dancing,Singing,Cooking,', 'ramesh@gmail.com', 'UmFtZXNoQDEyMw==', 'media/person/download.png');

-- --------------------------------------------------------

--
-- Table structure for table `query`
--

CREATE TABLE `query` (
  `id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `contact` varchar(20) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `message` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `reporter`
--

CREATE TABLE `reporter` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `userid` varchar(100) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `contact` varchar(12) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `reporter`
--

INSERT INTO `reporter` (`id`, `name`, `dob`, `gender`, `userid`, `password`, `contact`, `email`, `image`, `status`) VALUES
(1, 'Anuj Sharma', '2004-09-06', 'Male', 'Anuj_06', 'Mudgal@06', '9302337318', 'vishisharma64@gmail.com', 'media/reporter/20180716_184719.jpg', 'approved'),
(2, 'Asha Sharma', '1984-01-14', 'Female', 'asha_14', 'Mudgal@14', '9999998888', 'vishishnit640@gmail.com', 'media/reporter/img09220.jpg', 'approved'),
(3, 'Anuj Sharma', '2004-09-06', 'Male', 'Anuj_09', 'Mudgal@06', '9302337318', 'vishisharma64@gmail.com', 'media/reporter/IMG-20190103-WA0008.jpg', 'approved');

-- --------------------------------------------------------

--
-- Table structure for table `ssr`
--

CREATE TABLE `ssr` (
  `id` int(11) NOT NULL,
  `subject_id` int(11) DEFAULT NULL,
  `stream_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ssr`
--

INSERT INTO `ssr` (`id`, `subject_id`, `stream_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 2, 1),
(4, 4, 1),
(5, 6, 4),
(6, 3, 3),
(7, 2, 2),
(8, 2, 2),
(9, 8, 1),
(10, 8, 2),
(11, 9, 1);

-- --------------------------------------------------------

--
-- Table structure for table `states`
--

CREATE TABLE `states` (
  `id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `states`
--

INSERT INTO `states` (`id`, `name`) VALUES
(210, 'MadhyaPradesh'),
(211, 'UttarPradesh'),
(212, 'Chattisgarh'),
(213, 'Maharashtra');

-- --------------------------------------------------------

--
-- Table structure for table `streams`
--

CREATE TABLE `streams` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `streams`
--

INSERT INTO `streams` (`id`, `name`) VALUES
(1, 'CSE'),
(2, 'EC'),
(3, 'Civil'),
(4, 'Mech');

-- --------------------------------------------------------

--
-- Table structure for table `subjects`
--

CREATE TABLE `subjects` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `subjects`
--

INSERT INTO `subjects` (`id`, `name`) VALUES
(1, 'DS'),
(2, 'PPL'),
(3, 'CN'),
(4, 'OS'),
(5, 'ADA'),
(6, 'TOC'),
(7, 'DBMS'),
(8, 'M3'),
(9, 'Oracle');

-- --------------------------------------------------------

--
-- Table structure for table `subscribers`
--

CREATE TABLE `subscribers` (
  `id` int(11) NOT NULL,
  `name` varchar(30) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `subscribers`
--

INSERT INTO `subscribers` (`id`, `name`, `email`) VALUES
(1, 'anuj sharma', 'vishisharma64@gmail.com'),
(3, 'vishi', 'vishishr4040@gmail.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `state_id` (`state_id`);

--
-- Indexes for table `emp`
--
ALTER TABLE `emp`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ncr`
--
ALTER TABLE `ncr`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cat_id` (`cat_id`),
  ADD KEY `news_id` (`news_id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reporter_id` (`reporter_id`);

--
-- Indexes for table `newscategory`
--
ALTER TABLE `newscategory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `person`
--
ALTER TABLE `person`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `userid` (`userid`);

--
-- Indexes for table `query`
--
ALTER TABLE `query`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reporter`
--
ALTER TABLE `reporter`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ssr`
--
ALTER TABLE `ssr`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subject_id` (`subject_id`),
  ADD KEY `stream_id` (`stream_id`);

--
-- Indexes for table `states`
--
ALTER TABLE `states`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `streams`
--
ALTER TABLE `streams`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subjects`
--
ALTER TABLE `subjects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscribers`
--
ALTER TABLE `subscribers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cities`
--
ALTER TABLE `cities`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `emp`
--
ALTER TABLE `emp`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ncr`
--
ALTER TABLE `ncr`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `newscategory`
--
ALTER TABLE `newscategory`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `person`
--
ALTER TABLE `person`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `query`
--
ALTER TABLE `query`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `reporter`
--
ALTER TABLE `reporter`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `ssr`
--
ALTER TABLE `ssr`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `states`
--
ALTER TABLE `states`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=214;

--
-- AUTO_INCREMENT for table `streams`
--
ALTER TABLE `streams`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `subjects`
--
ALTER TABLE `subjects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `subscribers`
--
ALTER TABLE `subscribers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cities`
--
ALTER TABLE `cities`
  ADD CONSTRAINT `cities_ibfk_1` FOREIGN KEY (`state_id`) REFERENCES `states` (`id`);

--
-- Constraints for table `ncr`
--
ALTER TABLE `ncr`
  ADD CONSTRAINT `ncr_ibfk_1` FOREIGN KEY (`cat_id`) REFERENCES `newscategory` (`id`),
  ADD CONSTRAINT `ncr_ibfk_2` FOREIGN KEY (`news_id`) REFERENCES `news` (`id`);

--
-- Constraints for table `news`
--
ALTER TABLE `news`
  ADD CONSTRAINT `news_ibfk_1` FOREIGN KEY (`reporter_id`) REFERENCES `reporter` (`id`);

--
-- Constraints for table `ssr`
--
ALTER TABLE `ssr`
  ADD CONSTRAINT `ssr_ibfk_1` FOREIGN KEY (`subject_id`) REFERENCES `subjects` (`id`),
  ADD CONSTRAINT `ssr_ibfk_2` FOREIGN KEY (`stream_id`) REFERENCES `streams` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
