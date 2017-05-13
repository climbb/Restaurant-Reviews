-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- 主機: sophia
-- 建立日期: 2016 年 10 月 17 日 20:46
-- 伺服器版本: 5.1.35
-- PHP 版本: 5.5.9-1ubuntu4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- 資料庫: `chlai`
--

-- --------------------------------------------------------

--
-- 資料表結構 `branches`
--

CREATE TABLE IF NOT EXISTS `branches` (
  `restaurant_id` int(11) NOT NULL DEFAULT '0',
  `branch_no` int(11) NOT NULL,
  `location` varchar(256) NOT NULL,
  `seats` int(11) NOT NULL,
  PRIMARY KEY (`restaurant_id`,`branch_no`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- 資料表的匯出資料 `branches`
--

INSERT INTO `branches` (`restaurant_id`, `branch_no`, `location`, `seats`) VALUES
(0, 0, 'location', 0),
(1, 1, '4/F, Haking Wong Building, The University of Hong Kong, Pok Fu Lam', 200),
(1, 2, 'LG7/F, Hong Kong University Of Science And Technology, Clearwater Bay, Sai Kung', 250),
(1, 3, '2/F, Hong Kong Institute of Vocational Education(Tsing Yi) 20 Tsang Yi Road, Tsing Yi', 150),
(1, 4, '1/F, Block K, Queen Mary Hospital, Pok Fu Lam', 120),
(1, 5, '5/F, 8 Chun Ying Street, Tseung Kwan O', 100),
(2, 1, 'Shop G01C, G/F, Astoria Building, 24-38 Ashley Road, Tsim Sha Tsui', 25),
(2, 2, 'G/F, Multifield Plaza, 3 Prat Avenue, Tsim Sha Tsui', 20),
(2, 3, 'Gold Coast Shop 11-12,G/F, 1 Castle Peak Road, Tuen Mun', 30),
(2, 4, 'G/F, 24 Hollywood Road SOHO, Central', 20),
(2, 5, 'G/F, 6 Lan Kwai Fong, Central', 25),
(2, 6, 'Shop G044, G/F, Lee Shau Kee Business Building, LSK Campus, Hong Kong University of Science and Technology, Clear Water Bay, Sai Kung', 20),
(2, 7, 'Shop 4, G/F, Wanchai Central Bldg, 89 Lockhart Road, Wan Chai', 20),
(2, 8, 'Shop G05, Li Wai Chun Building, The Chinese University of Hong Kong, Sha Tin', 25),
(2, 9, 'Shop 102A, 1/F., D''Deck, Discovery Bay', 102),
(2, 10, 'Shop GB12-14A, G/F, Site B, Soho East, Lei King Wan, Sai Wan Ho', 35),
(2, 11, 'Lawn Cafe, G/F & 1/F,Block N, The Hong Kong Polytechnic University, Hung Hom', 20),
(2, 12, 'Shop 9A, Ngong Ping Village, Lantau Island', 15),
(2, 13, 'Hong Kong University Room 1A13A and 1A13B, Fong Shu Chuen Amenities Centre, 1/F Swire Building, Pokfulam, Pok Fu Lam', 20),
(2, 14, 'G/F, 52 Lockhart Road, Wan Chai', 20),
(2, 15, 'Unit 13, Hall 10, Asia World-Expo, Chek Lap Kok', 5),
(3, 1, 'Rm 203, 2/f Chong Yuet Ming Amenities Centre, HKU, Pok Fu Lam', 45),
(3, 2, 'Shop 101A, 1/F, Yasumoto International Academic Park, the Chinese University of Hong Kong, Sha Tin', 50),
(3, 3, '1/F, Main Clinical Block & Trauma Centre, Prince of Wales Hospital, 30-32 Ngan Shing Street, Sha Tin', 16),
(3, 4, '4/F, Wai Shun Block, Caritas Medical Centre, 111 Wing Hong Street, Cheung Sha Wan', 75),
(4, 1, 'G/F, Tower Block, Morningside College, The Chinese University of Hong Kong, Sha Tin', 20),
(4, 2, 'G/F, Main Block Atrium, Tuen Mun Hospital, 23 Tsing Chung Koon Rd, Tuen Mun', 30),
(4, 3, 'G/F, Lee Shau Kee Business Building, LSK Campus, Hong Kong University of Science and Technology, Clear Water Bay, Sai Kung', 25),
(5, 1, 'Shop 2, G/F, Block 2, Centenary Mansion, 1 Victoria Road, Kennedy Town, Western District', 8),
(5, 2, '3/F, 4D, 4 Welfare Road, Aberdeen', 10),
(5, 3, 'Run Run Shaw Tower, Central Podium, Centennial Campus, University of Hong Kong, Pok Fu Lam', 0),
(6, 1, 'Shop P39A, L2/F (Podium), Telford Plaza 2, 33 Wai Yip Street, Kowloon Bay', 30),
(6, 2, 'Shop 36-37, 1/F, Discovery Park, 398 Castle Peak Road (Tsuen Wan), Tsuen Wan', 60),
(6, 3, '1/F, Tai Yau Building, 181 Johnston Road, Wan Chai', 25),
(6, 4, 'Shop 1A, Two Chinachem Plaza, 68 Connaught Road Central, Central', 20),
(6, 5, 'Shop 2043-44, Level 2, Sheung Shui Centre, 3 Chi Cheong Road, Sheung Shui', 40),
(6, 6, '(Non-Restricted Area) Arrivals Meeters & Greeters Hall, 5/F, Terminal 1, Hong Kong International Airport, Chek Lap Kok', 50),
(6, 7, 'Shop 4, G/F and 1/F, Hing Bong Mansion, 117 Lockhard Road, Wan Chai', 40),
(6, 8, 'Shop C2D, G/F, Hong Kong Spinners Industrial Building Phase 1 and 2, 800 Cheung Sha Wan Road, Lai Chi Kok', 50),
(6, 9, 'Units 3 & 4, 5/F, Megabox, 38 Wang Chiu Road, Kowloon Bay', 50),
(6, 10, 'Shop Nos. 105-113, 1/F, New Mandarin Plaza, 14 Science Museum Road, Tsim Sha Tsui', 40),
(6, 11, 'Shop 65, 3/F, Hilton Centre, Shatin Centre Street, Sha Tin', 50),
(6, 12, 'Shop 16, G/F, Tung Chung Crescent, Tung Chung', 30),
(6, 13, 'Shop 101, 1/F, The Central Library, Causeway Bay', 30),
(6, 14, 'Shop G189, G/F., Amoy Plaza, 77 Ngau Tau Kok Road, Ngau Tau Kwok', 40),
(6, 15, '3/F, Academic 3, City University of Hong Kong,1 Tat Chee Avenue, Kowloon Tong', 30),
(6, 16, 'Shop G05, Sui On Centre, 6-8 Harbour Road, Wan Chai', 50),
(6, 17, 'Shop 1B, 1/F, Lippo Centre, 89 Queensway, Admiralty', 40),
(6, 18, '1/F, Univerisal Building, 19 Des Voeux Road Central, Central', 50),
(6, 19, 'Shop G515, G/F, Kin On Mansion, Taikoo Shing , Tai Koo', 40),
(6, 20, 'Shop 6, G/F, Peak Galleria, 118 Peak Road, Peak, The Peak', 30),
(6, 21, 'Shop G04, Sui On Centre,, Wan Chai', 30),
(6, 22, 'Shop A, G/F., Massmutal Tower, 38 Gloucester Road, Wan Chai', 40),
(6, 23, 'Shop B07, B/F, Island Place, 51-61 Tanner Road, North Point', 30),
(6, 24, 'Centennial Campus Catering Outlet B, G/F, The Jockey Club Tower, Centennial Campus, The University of Hong Kong, Pok Fu Lam', 30);

-- --------------------------------------------------------

--
-- 資料表結構 `customers`
--

CREATE TABLE IF NOT EXISTS `customers` (
  `customer_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(80) NOT NULL,
  `birthday` date NOT NULL,
  PRIMARY KEY (`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- 資料表的匯出資料 `customers`
--

INSERT INTO `customers` (`customer_id`, `name`, `birthday`) VALUES
(0, 'name', '0000-00-00'),
(1, 'Frankie Salazar', '1968-11-15'),
(2, 'Fredrick Dennis', '1967-04-22'),
(3, 'Troy Doyle', '1994-10-01'),
(4, 'Elaine Holland', '1977-07-07'),
(5, 'Carlton Herrera', '1967-12-06'),
(6, 'Lynne Pratt', '1959-11-06'),
(7, 'Casey Johnston', '1991-10-10'),
(8, 'Miranda Carroll', '1967-10-11'),
(9, 'Bob Schwartz', '1977-04-01'),
(10, 'Jennie George', '1966-06-03'),
(11, 'Wesley Graves', '1969-04-23'),
(12, 'Eileen Hodges', '1957-02-02'),
(13, 'Lillie Byrd', '1965-04-12'),
(14, 'Clark Tucker', '1978-08-28'),
(15, 'Genevieve Todd', '1965-04-22'),
(16, 'Latoya Bowman', '1981-12-20'),
(17, 'Christine Stanley', '1972-09-13'),
(18, 'Harriet Rogers', '1979-08-06'),
(19, 'Eva Brady', '1984-01-18'),
(20, 'Betsy Caldwell', '1969-12-31'),
(21, 'Martin Reynolds', '1977-03-09'),
(22, 'Sonja Barrett', '1968-09-04'),
(23, 'Caroline Garza', '1960-06-12'),
(24, 'Luke Estrada', '1975-06-03'),
(25, 'Nina Rodriguez', '1970-02-12'),
(26, 'Patricia Dean', '1956-10-01'),
(27, 'Marilyn Waters', '1956-09-04'),
(28, 'Chester Austin', '1976-07-29'),
(29, 'Max Cross', '1987-02-08'),
(30, 'Nadine Fuller', '1996-02-25'),
(31, 'Bonnie Greer', '1987-11-18'),
(32, 'Shannon Marsh', '1992-02-04'),
(33, 'Doug Lane', '1957-03-25'),
(34, 'Dolores Hicks', '1964-10-13'),
(35, 'Leigh Mckenzie', '1975-07-23'),
(36, 'Kathy Crawford', '1972-11-22'),
(37, 'Neil Ford', '1986-09-16'),
(38, 'Lila Ball', '1977-07-29'),
(39, 'Nettie Singleton', '1978-06-30'),
(40, 'Leon Peterson', '1983-06-10'),
(41, 'Celia Higgins', '1978-03-27'),
(42, 'Esther Brewer', '1991-11-12'),
(43, 'Alberto Bridges', '1971-11-28'),
(44, 'Roy Mason', '1965-08-22'),
(45, 'Julio Gardner', '1964-05-11'),
(46, 'Grace Johnson', '1997-10-14'),
(47, 'Everett Walton', '1962-02-03'),
(48, 'Rolando Simmons', '1986-07-11'),
(49, 'Andrew Reid', '1978-01-05'),
(50, 'Stuart Hayes', '1958-05-28');

-- --------------------------------------------------------

--
-- 資料表結構 `customers_referrers`
--

CREATE TABLE IF NOT EXISTS `customers_referrers` (
  `customer_id` int(11) NOT NULL DEFAULT '0',
  `referrer_customer_id` int(11) NOT NULL,
  `date` date NOT NULL,
  PRIMARY KEY (`customer_id`),
  KEY `referrer_customer_id` (`referrer_customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- 資料表的匯出資料 `customers_referrers`
--

INSERT INTO `customers_referrers` (`customer_id`, `referrer_customer_id`, `date`) VALUES
(0, 0, '0000-00-00'),
(4, 2, '2009-01-03'),
(5, 2, '2013-01-28'),
(6, 4, '2006-11-21'),
(7, 1, '2016-02-13'),
(9, 4, '2012-04-11'),
(10, 8, '2008-12-27'),
(11, 6, '2012-01-28'),
(13, 4, '2015-11-24'),
(14, 12, '2008-08-31'),
(15, 6, '2015-11-19'),
(16, 15, '2009-07-26'),
(17, 11, '2014-10-29'),
(19, 12, '2006-11-28'),
(20, 2, '2010-09-17'),
(21, 1, '2011-05-09'),
(22, 10, '2010-03-09'),
(23, 14, '2014-08-08'),
(24, 18, '2014-02-03'),
(25, 1, '2011-03-09'),
(27, 19, '2016-09-10'),
(28, 11, '2012-02-16'),
(30, 10, '2006-10-05'),
(31, 12, '2009-08-17'),
(32, 16, '2009-12-09'),
(33, 14, '2009-07-01'),
(34, 22, '2014-07-02'),
(35, 2, '2015-04-30'),
(36, 27, '2013-10-01'),
(38, 32, '2013-06-20'),
(40, 31, '2011-04-27'),
(41, 27, '2016-08-06'),
(42, 31, '2009-03-05'),
(43, 13, '2016-01-13'),
(44, 1, '2010-04-28'),
(45, 34, '2013-06-02'),
(46, 3, '2013-04-03'),
(48, 12, '2016-03-07');

-- --------------------------------------------------------

--
-- 資料表結構 `diamonds`
--

CREATE TABLE IF NOT EXISTS `diamonds` (
  `customer_id` int(11) NOT NULL DEFAULT '0',
  `year` decimal(4,0) NOT NULL,
  `shares` int(11) NOT NULL,
  PRIMARY KEY (`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- 資料表的匯出資料 `diamonds`
--

INSERT INTO `diamonds` (`customer_id`, `year`, `shares`) VALUES
(0, 0, 0),
(3, 2014, 500),
(11, 2015, 1000),
(27, 2014, 1000),
(36, 2016, 1500),
(44, 2016, 500);

-- --------------------------------------------------------

--
-- 資料表結構 `pearls`
--

CREATE TABLE IF NOT EXISTS `pearls` (
  `customer_id` int(11) NOT NULL DEFAULT '0',
  `points` int(11) NOT NULL,
  PRIMARY KEY (`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- 資料表的匯出資料 `pearls`
--

INSERT INTO `pearls` (`customer_id`, `points`) VALUES
(0, 0),
(1, 996),
(5, 817),
(7, 965),
(9, 595),
(20, 502),
(22, 283),
(35, 53),
(40, 326),
(41, 354),
(42, 322);

-- --------------------------------------------------------

--
-- 資料表結構 `restaurants`
--

CREATE TABLE IF NOT EXISTS `restaurants` (
  `restaurant_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`restaurant_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- 資料表的匯出資料 `restaurants`
--

INSERT INTO `restaurants` (`restaurant_id`, `name`) VALUES
(0, 'name'),
(1, 'Asia Pacific Catering'),
(2, 'Ebeneezer''s Kebabs & Pizzeria'),
(3, 'Café 330'),
(4, 'Caffé Liscio'),
(5, 'ibakery'),
(6, 'Délifrance');

-- --------------------------------------------------------

--
-- 資料表結構 `restaurants_categories`
--

CREATE TABLE IF NOT EXISTS `restaurants_categories` (
  `restaurant_id` int(11) NOT NULL DEFAULT '0',
  `category` varchar(40) NOT NULL,
  PRIMARY KEY (`restaurant_id`,`category`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- 資料表的匯出資料 `restaurants_categories`
--

INSERT INTO `restaurants_categories` (`restaurant_id`, `category`) VALUES
(0, 'category'),
(1, 'Fast Food'),
(1, 'Food Court'),
(1, 'Hong Kong Style'),
(2, 'Certified Halal Food'),
(2, 'Meatless Menu'),
(2, 'Middle Eastern'),
(2, 'Salad'),
(3, 'Bakery'),
(3, 'Coffee Shop'),
(3, 'Hong Kong Style'),
(3, 'Meatless Menu'),
(3, 'Social Enterprise Restaurant'),
(3, 'Vegetarian'),
(3, 'Western'),
(4, 'Bakery'),
(4, 'Coffee Shop'),
(4, 'Hamburger'),
(4, 'Western'),
(5, 'Bakery'),
(5, 'Meatless Menu'),
(5, 'Social Enterprise Restaurant'),
(5, 'Western'),
(6, 'Coffee Shop'),
(6, 'Fast Food'),
(6, 'French');

-- --------------------------------------------------------

--
-- 資料表結構 `visits`
--

CREATE TABLE IF NOT EXISTS `visits` (
  `visit_id` int(11) NOT NULL DEFAULT '0',
  `customer_id` int(11) NOT NULL,
  `restaurant_id` int(11) NOT NULL,
  `branch_no` int(11) NOT NULL,
  `date` date NOT NULL,
  `comments` text,
  `amount` decimal(10,2) DEFAULT NULL,
  `score` decimal(2,1) DEFAULT NULL,
  PRIMARY KEY (`visit_id`),
  KEY `restaurant_id` (`restaurant_id`,`branch_no`),
  KEY `customer_id` (`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- 資料表的匯出資料 `visits`
--

INSERT INTO `visits` (`visit_id`, `customer_id`, `restaurant_id`, `branch_no`, `date`, `comments`, `amount`, `score`) VALUES
(0, 0, 0, 0, '0000-00-00', 'comments', 0.00, 0.0),
(1, 28, 2, 9, '2015-09-29', 'Both presentation and taste of the food were fantastic. The environment was great. Everything is impeccable and the service is the best in this area.', 160.00, 4.5),
(2, 14, 2, 12, '2015-10-02', 'We ate here twice, both dinner and lunch. Both were very special. The food was simply stunning and probably the best I''ve ever tasted. The environment was great. Excellent service and paying attentive to detail.', 190.00, 5.0),
(3, 44, 2, 5, '2015-10-03', 'The views are amazing.', 220.00, 3.5),
(4, 13, 6, 1, '2015-10-09', 'A great lunch opportunity. Foods were well delivered both in presentation and flavours. Excellent service and paying attentive to detail.', 310.00, 4.5),
(5, 13, 4, 3, '2015-10-12', 'Great restaurant. Lovely presentation and theatrics. The views are amazing.', 300.00, 4.5),
(6, 49, 6, 5, '2015-10-12', 'Would totally recommend this place for lunch or dinner. The food was simply stunning and probably the best I''ve ever tasted. The environment was great. The services were very good from the moment we walked in to the restaurant till we left.', 150.00, 5.0),
(7, 16, 2, 6, '2015-10-14', 'A great lunch opportunity. Lovely presentation and theatrics. The services were very good from the moment we walked in to the restaurant till we left.', 200.00, 4.5),
(8, 8, 3, 1, '2015-10-14', 'We ate here twice, both dinner and lunch. Both were very special. Excellent service and paying attentive to detail.', 350.00, 4.0),
(9, 49, 5, 1, '2015-10-19', 'Foods were well delivered both in presentation and flavours. The service was excellent.', 100.00, 4.0),
(10, 33, 6, 14, '2015-10-23', 'Lovely presentation and theatrics. There was a lot of space in between tables. Everything is impeccable and the service is the best in this area.', 250.00, 4.5),
(11, 14, 2, 9, '2015-11-07', 'Lovely presentation and theatrics. The environment was great. Excellent service and paying attentive to detail.', 310.00, 4.5),
(12, 49, 2, 7, '2015-11-10', 'Would totally recommend this place for lunch or dinner. The views are amazing. Excellent service and paying attentive to detail.', 220.00, 4.5),
(13, 17, 2, 9, '2015-11-11', 'Would totally recommend this place for lunch or dinner. The food was simply stunning and probably the best I''ve ever tasted. The views are amazing. The services were very good from the moment we walked in to the restaurant till we left.', 140.00, 5.0),
(14, 40, 2, 14, '2015-11-11', 'The food is amazing. There was a lot of space in between tables.', 90.00, 4.0),
(15, 41, 3, 3, '2015-11-12', 'The food is amazing. The environment was great. The services were very good from the moment we walked in to the restaurant till we left.', 150.00, 4.5),
(16, 18, 2, 9, '2015-11-18', 'We ate here twice, both dinner and lunch. Both were very special. The food is amazing. Excellent service and paying attentive to detail.', 220.00, 4.5),
(17, 25, 2, 8, '2015-11-20', 'Great restaurant. A big variety on selection of food. Excellent service and paying attentive to detail.', 90.00, 4.5),
(18, 14, 6, 9, '2015-12-02', 'Very suitable to come with group of Friends. A big variety on selection of food. The environment was great. Everything is impeccable and the service is the best in this area.', 350.00, 5.0),
(19, 12, 6, 7, '2015-12-10', 'A big variety on selection of food. The views are amazing. Excellent service and paying attentive to detail.', 320.00, 4.5),
(20, 3, 6, 21, '2015-12-11', 'Creative, flavoursome and great experience. Foods were well delivered both in presentation and flavours.', 290.00, 4.0),
(21, 17, 6, 3, '2015-12-18', 'The environment was great. The services were very good from the moment we walked in to the restaurant till we left.', 140.00, 4.0),
(22, 16, 2, 7, '2016-01-02', 'Very suitable to come with group of Friends. The food is amazing. Excellent service and paying attentive to detail.', 200.00, 4.5),
(23, 17, 5, 2, '2016-01-08', 'A big variety on selection of food. There was a lot of space in between tables. Everything is impeccable and the service is the best in this area.', 220.00, 4.5),
(24, 43, 6, 20, '2016-01-13', 'Would totally recommend this place for lunch or dinner. Lovely presentation and theatrics. The views are amazing. Everything is impeccable and the service is the best in this area.', 250.00, 5.0),
(25, 26, 3, 1, '2016-01-14', 'A great lunch opportunity. Lovely presentation and theatrics. The views are amazing.', 170.00, 4.5),
(26, 44, 6, 22, '2016-01-21', 'We ate here twice, both dinner and lunch. Both were very special. The food is amazing. The services were very good from the moment we walked in to the restaurant till we left.', 170.00, 4.5),
(27, 43, 6, 10, '2016-01-22', 'The food was simply stunning and probably the best I''ve ever tasted. Everything is impeccable and the service is the best in this area.', 310.00, 4.0),
(28, 33, 3, 4, '2016-01-23', 'A great lunch opportunity. The food is amazing. The environment was great.', 130.00, 4.5),
(29, 32, 6, 14, '2016-01-23', 'Very suitable to come with group of Friends.', 280.00, 3.0),
(30, 47, 6, 7, '2016-01-24', 'Creative, flavoursome and great experience. The environment was great. Excellent service and paying attentive to detail.', 290.00, 4.5),
(31, 27, 2, 3, '2016-01-26', 'Would totally recommend this place for lunch or dinner.', 290.00, 3.0),
(32, 28, 6, 1, '2016-02-09', 'Creative, flavoursome and great experience. The food was simply stunning and probably the best I''ve ever tasted. The service was excellent.', 290.00, 4.5),
(33, 12, 2, 6, '2016-02-20', 'Very suitable to come with group of Friends. A big variety on selection of food. The services were very good from the moment we walked in to the restaurant till we left.', 160.00, 4.5),
(34, 5, 6, 23, '2016-02-22', 'A big variety on selection of food. The service was excellent.', 170.00, 4.0),
(35, 46, 2, 2, '2016-02-23', 'Great restaurant. The environment was great. Everything is impeccable and the service is the best in this area.', 330.00, 4.5),
(36, 47, 6, 22, '2016-02-25', 'Creative, flavoursome and great experience. Foods were well delivered both in presentation and flavours. There was a lot of space in between tables. Everything is impeccable and the service is the best in this area.', 240.00, 5.0),
(37, 5, 6, 23, '2016-02-27', 'Would totally recommend this place for lunch or dinner. Lovely presentation and theatrics. The environment was great.', 270.00, 4.5),
(38, 24, 2, 5, '2016-02-27', 'Very suitable to come with group of Friends. A big variety on selection of food.', 250.00, 4.0),
(39, 23, 6, 13, '2016-03-05', 'Great restaurant. A big variety on selection of food. The services were very good from the moment we walked in to the restaurant till we left.', 180.00, 4.5),
(40, 20, 1, 1, '2016-03-08', 'We ate here twice, both dinner and lunch. Both were very special. The environment was great. The services were very good from the moment we walked in to the restaurant till we left.', 160.00, 4.5),
(41, 27, 3, 3, '2016-03-10', 'Both presentation and taste of the food were fantastic.', 230.00, 3.5),
(42, 26, 1, 2, '2016-03-15', 'Foods were well delivered both in presentation and flavours. The environment was great. Excellent service and paying attentive to detail.', 280.00, 4.5),
(43, 34, 6, 9, '2016-03-15', 'Foods were well delivered both in presentation and flavours. The views are amazing.', 250.00, 4.0),
(44, 2, 6, 4, '2016-03-15', 'Great restaurant. The food was simply stunning and probably the best I''ve ever tasted. Excellent service and paying attentive to detail.', 220.00, 4.5),
(45, 33, 6, 10, '2016-03-25', 'A great lunch opportunity. The views are amazing.', 180.00, 4.0),
(46, 34, 6, 8, '2016-03-27', 'Lovely presentation and theatrics.', 330.00, 3.5),
(47, 31, 3, 3, '2016-03-30', 'Would totally recommend this place for lunch or dinner. Lovely presentation and theatrics. There was a lot of space in between tables. Everything is impeccable and the service is the best in this area.', 340.00, 5.0),
(48, 41, 5, 2, '2016-04-02', 'We ate here twice, both dinner and lunch. Both were very special. There was a lot of space in between tables. Excellent service and paying attentive to detail.', 170.00, 4.5),
(49, 11, 2, 12, '2016-04-03', 'Very suitable to come with group of Friends. Both presentation and taste of the food were fantastic. There was a lot of space in between tables.', 230.00, 4.5),
(50, 7, 6, 21, '2016-04-15', 'Great restaurant.', 120.00, 3.0),
(51, 44, 6, 6, '2016-04-16', 'Very suitable to come with group of Friends. The food was simply stunning and probably the best I''ve ever tasted. There was a lot of space in between tables. The service was excellent.', 140.00, 5.0),
(52, 14, 2, 11, '2016-04-19', 'Great restaurant. A big variety on selection of food.', 230.00, 4.0),
(53, 8, 6, 16, '2016-04-20', 'The environment was great. The services were very good from the moment we walked in to the restaurant till we left.', 140.00, 4.0),
(54, 47, 6, 10, '2016-04-24', 'We ate here twice, both dinner and lunch. Both were very special. Foods were well delivered both in presentation and flavours. The environment was great. Excellent service and paying attentive to detail.', 210.00, 5.0),
(55, 35, 6, 13, '2016-04-26', 'We ate here twice, both dinner and lunch. Both were very special. Lovely presentation and theatrics. The views are amazing.', 160.00, 4.5),
(56, 2, 2, 14, '2016-04-27', 'Creative, flavoursome and great experience. There was a lot of space in between tables. The service was excellent.', 100.00, 4.5),
(57, 10, 2, 5, '2016-04-30', 'A great lunch opportunity. The food was simply stunning and probably the best I''ve ever tasted. Excellent service and paying attentive to detail.', 300.00, 4.5),
(58, 11, 6, 10, '2016-05-01', 'Great restaurant. The food is amazing. There was a lot of space in between tables.', 170.00, 4.5),
(59, 30, 2, 12, '2016-05-01', 'Great restaurant. A big variety on selection of food. The environment was great. Everything is impeccable and the service is the best in this area.', 170.00, 5.0),
(60, 19, 6, 3, '2016-05-02', 'Very suitable to come with group of Friends. The environment was great. Excellent service and paying attentive to detail.', 260.00, 4.5),
(61, 34, 2, 4, '2016-05-02', 'Foods were well delivered both in presentation and flavours. There was a lot of space in between tables. Excellent service and paying attentive to detail.', 130.00, 4.5),
(62, 25, 4, 3, '2016-05-06', 'A big variety on selection of food. The environment was great. The service was excellent.', 150.00, 4.5),
(63, 2, 2, 14, '2016-05-07', 'Very suitable to come with group of Friends. The food was simply stunning and probably the best I''ve ever tasted. The views are amazing. Everything is impeccable and the service is the best in this area.', 260.00, 5.0),
(64, 12, 6, 1, '2016-05-08', 'A great lunch opportunity. The food was simply stunning and probably the best I''ve ever tasted. There was a lot of space in between tables. The service was excellent.', 180.00, 5.0),
(65, 15, 2, 5, '2016-05-09', 'Great restaurant.', 150.00, 3.5),
(66, 16, 6, 16, '2016-05-10', 'A great lunch opportunity. Lovely presentation and theatrics. Everything is impeccable and the service is the best in this area.', 140.00, 4.5),
(67, 45, 6, 17, '2016-05-18', 'Great restaurant. A big variety on selection of food. The services were very good from the moment we walked in to the restaurant till we left.', 260.00, 4.5),
(68, 25, 2, 1, '2016-05-18', 'Great restaurant. The food is amazing.', 340.00, 4.0),
(69, 22, 2, 15, '2016-05-26', 'Lovely presentation and theatrics. Everything is impeccable and the service is the best in this area.', 230.00, 4.0),
(70, 43, 4, 3, '2016-05-31', 'We ate here twice, both dinner and lunch. Both were very special. The food is amazing. There was a lot of space in between tables. The service was excellent.', 140.00, 5.0),
(71, 50, 2, 15, '2016-06-07', 'The food is amazing. There was a lot of space in between tables. Everything is impeccable and the service is the best in this area.', 230.00, 4.5),
(72, 32, 3, 2, '2016-06-07', 'Great restaurant. Lovely presentation and theatrics. The services were very good from the moment we walked in to the restaurant till we left.', 290.00, 4.5),
(73, 6, 6, 11, '2016-06-13', 'Great restaurant. Lovely presentation and theatrics. The views are amazing.', 190.00, 4.5),
(74, 39, 2, 3, '2016-06-27', 'A great lunch opportunity. Both presentation and taste of the food were fantastic. The environment was great. Everything is impeccable and the service is the best in this area.', 110.00, 5.0),
(75, 42, 1, 5, '2016-06-29', 'Would totally recommend this place for lunch or dinner.', 310.00, 3.5),
(76, 36, 6, 10, '2016-07-01', 'Would totally recommend this place for lunch or dinner. Everything is impeccable and the service is the best in this area.', 240.00, 4.0),
(77, 12, 6, 2, '2016-07-04', 'Very suitable to come with group of Friends. There was a lot of space in between tables. The services were very good from the moment we walked in to the restaurant till we left.', 220.00, 4.5),
(78, 32, 6, 10, '2016-07-15', 'Both presentation and taste of the food were fantastic. The services were very good from the moment we walked in to the restaurant till we left.', 120.00, 4.0),
(79, 1, 6, 6, '2016-07-16', 'Would totally recommend this place for lunch or dinner. Foods were well delivered both in presentation and flavours. Everything is impeccable and the service is the best in this area.', 140.00, 4.5),
(80, 5, 6, 20, '2016-07-22', 'The views are amazing. The service was excellent.', 220.00, 4.0),
(81, 42, 2, 14, '2016-07-22', 'The food was simply stunning and probably the best I''ve ever tasted. The environment was great. Excellent service and paying attentive to detail.', 300.00, 4.5),
(82, 41, 6, 19, '2016-07-31', 'Creative, flavoursome and great experience. The views are amazing. The service was excellent.', 180.00, 4.5),
(83, 20, 4, 2, '2016-08-01', 'Creative, flavoursome and great experience. The food is amazing.', 150.00, 4.0),
(84, 36, 2, 9, '2016-08-07', 'Lovely presentation and theatrics. Excellent service and paying attentive to detail.', 160.00, 4.0),
(85, 9, 6, 10, '2016-08-10', 'A great lunch opportunity. Lovely presentation and theatrics. The service was excellent.', 230.00, 4.5),
(86, 32, 3, 4, '2016-08-13', 'Would totally recommend this place for lunch or dinner. The food is amazing. There was a lot of space in between tables.', 210.00, 4.5),
(87, 25, 5, 2, '2016-08-15', 'The environment was great. The services were very good from the moment we walked in to the restaurant till we left.', 170.00, 4.0),
(88, 14, 6, 4, '2016-08-16', 'We ate here twice, both dinner and lunch. Both were very special. Both presentation and taste of the food were fantastic.', 240.00, 4.0),
(89, 47, 1, 3, '2016-08-19', 'Creative, flavoursome and great experience. A big variety on selection of food. There was a lot of space in between tables. The service was excellent.', 320.00, 5.0),
(90, 23, 2, 14, '2016-08-22', 'Creative, flavoursome and great experience. Lovely presentation and theatrics. The environment was great. The service was excellent.', 150.00, 5.0),
(91, 49, 4, 3, '2016-08-22', 'Would totally recommend this place for lunch or dinner.', 250.00, 3.0),
(92, 12, 6, 16, '2016-08-23', 'Great restaurant. A big variety on selection of food. The environment was great. The service was excellent.', 230.00, 5.0),
(93, 28, 2, 2, '2016-08-24', 'Great restaurant. Both presentation and taste of the food were fantastic. There was a lot of space in between tables.', 270.00, 4.5),
(94, 3, 2, 7, '2016-09-02', 'A great lunch opportunity. The food was simply stunning and probably the best I''ve ever tasted. The views are amazing. The services were very good from the moment we walked in to the restaurant till we left.', 130.00, 5.0),
(95, 24, 6, 7, '2016-09-09', 'Great restaurant. The food was simply stunning and probably the best I''ve ever tasted. There was a lot of space in between tables. The services were very good from the moment we walked in to the restaurant till we left.', 280.00, 5.0),
(96, 39, 6, 23, '2016-09-09', 'Very suitable to come with group of Friends. Both presentation and taste of the food were fantastic. The service was excellent.', 160.00, 4.5),
(97, 33, 4, 2, '2016-09-10', 'Great restaurant. The environment was great.', 220.00, 4.0),
(98, 48, 2, 6, '2016-09-13', 'Would totally recommend this place for lunch or dinner. The food was simply stunning and probably the best I''ve ever tasted. The views are amazing.', 110.00, 4.5),
(99, 31, 2, 12, '2016-09-15', 'Great restaurant. The views are amazing. Everything is impeccable and the service is the best in this area.', 110.00, 4.5),
(100, 8, 2, 2, '2016-09-22', 'Creative, flavoursome and great experience. Foods were well delivered both in presentation and flavours. There was a lot of space in between tables.', 230.00, 4.5);

--
-- 已匯出資料表的限制(Constraint)
--

--
-- 資料表的 Constraints `branches`
--
ALTER TABLE `branches`
  ADD CONSTRAINT `branches_ibfk_1` FOREIGN KEY (`restaurant_id`) REFERENCES `restaurants` (`restaurant_id`);

--
-- 資料表的 Constraints `customers_referrers`
--
ALTER TABLE `customers_referrers`
  ADD CONSTRAINT `customers_referrers_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`customer_id`),
  ADD CONSTRAINT `customers_referrers_ibfk_2` FOREIGN KEY (`referrer_customer_id`) REFERENCES `customers` (`customer_id`);

--
-- 資料表的 Constraints `diamonds`
--
ALTER TABLE `diamonds`
  ADD CONSTRAINT `diamonds_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`customer_id`);

--
-- 資料表的 Constraints `pearls`
--
ALTER TABLE `pearls`
  ADD CONSTRAINT `pearls_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`customer_id`);

--
-- 資料表的 Constraints `restaurants_categories`
--
ALTER TABLE `restaurants_categories`
  ADD CONSTRAINT `restaurants_categories_ibfk_1` FOREIGN KEY (`restaurant_id`) REFERENCES `restaurants` (`restaurant_id`);

--
-- 資料表的 Constraints `visits`
--
ALTER TABLE `visits`
  ADD CONSTRAINT `visits_ibfk_1` FOREIGN KEY (`restaurant_id`, `branch_no`) REFERENCES `branches` (`restaurant_id`, `branch_no`),
  ADD CONSTRAINT `visits_ibfk_2` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`customer_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
