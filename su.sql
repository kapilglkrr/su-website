-- phpMyAdmin SQL Dump
-- version 4.0.6deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 17, 2014 at 12:13 PM
-- Server version: 5.5.35-0ubuntu0.13.10.2
-- PHP Version: 5.5.3-1ubuntu2.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `su`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE IF NOT EXISTS `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE IF NOT EXISTS `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `group_id` (`group_id`,`permission_id`),
  KEY `auth_group_permissions_bda51c3c` (`group_id`),
  KEY `auth_group_permissions_1e014c8f` (`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE IF NOT EXISTS `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `content_type_id` (`content_type_id`,`codename`),
  KEY `auth_permission_e4470c6e` (`content_type_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=52 ;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add permission', 1, 'add_permission'),
(2, 'Can change permission', 1, 'change_permission'),
(3, 'Can delete permission', 1, 'delete_permission'),
(4, 'Can add group', 2, 'add_group'),
(5, 'Can change group', 2, 'change_group'),
(6, 'Can delete group', 2, 'delete_group'),
(7, 'Can add user', 3, 'add_user'),
(8, 'Can change user', 3, 'change_user'),
(9, 'Can delete user', 3, 'delete_user'),
(10, 'Can add content type', 4, 'add_contenttype'),
(11, 'Can change content type', 4, 'change_contenttype'),
(12, 'Can delete content type', 4, 'delete_contenttype'),
(13, 'Can add session', 5, 'add_session'),
(14, 'Can change session', 5, 'change_session'),
(15, 'Can delete session', 5, 'delete_session'),
(16, 'Can add site', 6, 'add_site'),
(17, 'Can change site', 6, 'change_site'),
(18, 'Can delete site', 6, 'delete_site'),
(19, 'Can add assoc', 7, 'add_assoc'),
(20, 'Can change assoc', 7, 'change_assoc'),
(21, 'Can delete assoc', 7, 'delete_assoc'),
(25, 'Can add dept', 9, 'add_dept'),
(26, 'Can change dept', 9, 'change_dept'),
(27, 'Can delete dept', 9, 'delete_dept'),
(28, 'Can add log entry', 10, 'add_logentry'),
(29, 'Can change log entry', 10, 'change_logentry'),
(30, 'Can delete log entry', 10, 'delete_logentry'),
(31, 'Can add club', 11, 'add_club'),
(32, 'Can change club', 11, 'change_club'),
(33, 'Can delete club', 11, 'delete_club'),
(34, 'Can add club_notice', 12, 'add_club_notice'),
(35, 'Can change club_notice', 12, 'change_club_notice'),
(36, 'Can delete club_notice', 12, 'delete_club_notice'),
(37, 'Can add dept_ notice', 13, 'add_dept_notice'),
(38, 'Can change dept_ notice', 13, 'change_dept_notice'),
(39, 'Can delete dept_ notice', 13, 'delete_dept_notice'),
(40, 'Can add assoc_ notice', 14, 'add_assoc_notice'),
(41, 'Can change assoc_ notice', 14, 'change_assoc_notice'),
(42, 'Can delete assoc_ notice', 14, 'delete_assoc_notice'),
(43, 'Can add club image', 15, 'add_clubimage'),
(44, 'Can change club image', 15, 'change_clubimage'),
(45, 'Can delete club image', 15, 'delete_clubimage'),
(46, 'Can add dept image', 16, 'add_deptimage'),
(47, 'Can change dept image', 16, 'change_deptimage'),
(48, 'Can delete dept image', 16, 'delete_deptimage'),
(49, 'Can add assoc image', 17, 'add_associmage'),
(50, 'Can change assoc image', 17, 'change_associmage'),
(51, 'Can delete assoc image', 17, 'delete_associmage');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE IF NOT EXISTS `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(30) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(75) NOT NULL,
  `password` varchar(128) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `last_login` datetime NOT NULL,
  `date_joined` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `username`, `first_name`, `last_name`, `email`, `password`, `is_staff`, `is_active`, `is_superuser`, `last_login`, `date_joined`) VALUES
(1, 'kapil', '', '', 'kapilglkrr@gmail.com', 'pbkdf2_sha256$10000$ISdxg070ZCmN$cWELlKDIU7kb6+jNs2RA81XpCJOqD3i5Zik3tbxcbAA=', 1, 1, 1, '2014-04-08 14:36:22', '2014-03-21 06:46:14'),
(2, '1011', '', '', '', 'pbkdf2_sha256$10000$ujW9AC6Zhnrt$ERsA84Uw8l2QhvEO5MFc1ccFgSSWeKysNgeGC+Xqt1g=', 1, 1, 0, '2014-04-17 12:09:34', '2014-03-23 12:33:34'),
(3, '1012', '', '', '', 'pbkdf2_sha256$10000$EpbhBLZVNUio$mmmAFTaxQMCwvgGuTimkLSSVDm/YopRzoplntqSEcrY=', 1, 1, 0, '2014-03-23 12:53:38', '2014-03-23 12:36:43');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE IF NOT EXISTS `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`,`group_id`),
  KEY `auth_user_groups_fbfc09f1` (`user_id`),
  KEY `auth_user_groups_bda51c3c` (`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE IF NOT EXISTS `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`,`permission_id`),
  KEY `auth_user_user_permissions_fbfc09f1` (`user_id`),
  KEY `auth_user_user_permissions_1e014c8f` (`permission_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `auth_user_user_permissions`
--

INSERT INTO `auth_user_user_permissions` (`id`, `user_id`, `permission_id`) VALUES
(3, 2, 40),
(4, 2, 49),
(7, 3, 40),
(8, 3, 49);

-- --------------------------------------------------------

--
-- Table structure for table `cda_assoc`
--

CREATE TABLE IF NOT EXISTS `cda_assoc` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `assoc_name` varchar(30) NOT NULL,
  `assoc_id` int(11) NOT NULL,
  `assoc_desc` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=15 ;

--
-- Dumping data for table `cda_assoc`
--

INSERT INTO `cda_assoc` (`id`, `assoc_name`, `assoc_id`, `assoc_desc`) VALUES
(1, 'ACM', 1011, 'We are the Association of Computing Machinery (ACM), Student Chapter, Birla Institute of Technology and Science, Pilani or in short, BITSacm. The student chapter in BITS Pilani was established in Nov, 2007, but in three years, we have grown into the largest student chapter in the world with over 800 Chapter Members and 50 Council members. Both groups consist of students from all subjects and of all years – freshmen to seniors. This year, along with the entry of 30 new Council Members, we are projecting an increase of about 300 Chapter Members after the new recruitment session, to be held shortly.\r\n\r\nWe aim to instill the spirit of technology and computing among the students of BITS, through the various fields modern Information Technology has developed in. These include: Programming, Multimedia, Web Designing, Content Hosting, Podcasting, Social Networking, Cloud Computing, Open Source Technology, and many more. We strive to achieve this through various methods such as Events, Workshops, Lecture Series, Competitions and last but not the least, projects. Every APOGEE, the tech-fest of BITS Pilani,BITSacm produces a multitude of projects covering almost all annals of technology- past, present and mostly, future!'),
(2, 'BITSMUN', 1012, 'Model United Nations is an academic simulation of a United Nations Conference to make people aware of the international issues prevalent today and to emphasize the important role that a body like the UN plays in resolving them. It is one of the most exhilarating forms of debating wherein a participant takes on the role of a delegate of a particular country and battles against others to resolve international issues.\r\n\r\nBITSMUN, organised by the BITSMUN Society, has the tag of being the biggest MUN in the country and one of the largest youth conferences of Asia. With different councils participation of over fifteen hundred from prestigious institutes all over the world, the third edition shall reaffirm its dominance as the premier MUN conference in the country.\r\nJust like its previous edition, BITSMUN&#39;11 continues to offer the highest price money, making it one of the most sought after competitions to participate in.  With participation expected from over twenty nations, the summit will be truly a global affair.BITSMUN&#39;11 will also host a Nobel Laureates Conclave, showcasing some of the best speakers from several countries; a WorldFest, which will feature the different ethnic traditions and culture of different communities; and an Education fest, which provides them with a prospect to gain knowledge about different career paths that they can choose in leading universities across the world.'),
(3, 'Nirmaan', 1013, 'Nirmaan is a Not-for-profit organization with a mission to contribute towards achieving a developed India focusing on education and livelihoods for the underprivileged of the country. Nirmaan is founded on 12th February, 2005 by a group of BITS-Pilani University students and registered with the government on 12th July, 2007. Currently, the organization is operating with 400 voluntary members spread across 8 chapters with headquarters at Hyderabad.\r\n\r\n \r\nOur Vision\r\n \r\n&quot;To achieve a poverty-free, knowledge driven and ultimately an economically empowered society&#quot;\r\n \r\nOur Mission\r\n \r\n(i) To provide three-factored educational opportunities (character building, nation building and economic advantage giving) to all those who are deprived of it;\r\n \r\n(ii) To provide livelihood opportunities to motivated underprivileged and unemployed people\r\n \r\n(iii) To serve as a helping hand for those in extreme need on humanitarian grounds\r\n \r\nChapters\r\n \r\nChapters with employees as members: Hyderabad, Bangalore, Mumbai, Chennai,\r\nChapters with students as members: Pilani (Rajasthan), Goa, Vizianagaram\r\n \r\nAlliances\r\n \r\nWe have collaborated with various NGOs, corporates and educational institutions in different areas and have been working along with them to enhance our impact on society.\r\n \r\nUniversity/Colleges and Alumni Associations (10+ in number):\r\n \r\nThree campuses of BITS-Pilani (Pilani, Goa, Hyderabad); Indian School of Business\r\n \r\n(ISB); JBIET College of Engineering; JNTU-Hyderabad; BITS Alumni Association;\r\n \r\nCorporate companies (30+ corporates in number):\r\n \r\nFlagstone, Cognizant, Oracle, IBM, Modelytics, Futures First etc,\r\n \r\nNGOs (15+ NGOs in number):\r\n \r\nSankalp, Pratham(Education), Sohard (Self Help Groups), Source Pilani (Rural BPO), Byrraju\r\n \r\nFoundation (Rural Transformation), WARDS (School for differently abled), Two Cents Of\r\nHope'),
(4, 'NSS', 1014, 'Dear NSS members,\r\nWe have decided to use blogger as our new medium for getting updates about the events and activities by NSS, BITS-Pilani .\r\nThe reasons to chose blogger are:\r\n1. We can easily comment, express our views on the events.\r\n2. We can get the updates of posts.\r\n3. and yeah, because its easy for us to update posts here !\r\n\r\nThank You,\r\n\r\nNikhil Daga.\r\nWebsite and Documentation Co-ordinator.\r\n\r\nP.S.: Please click on the follow button on the right side and start following the blog (as a result,you will get a notification as soon as we post anything new here.\r\n'),
(10, 'Chemistry Association', 1021, 'The Chemistry Association serves its primary motto of nurturing the innovative ideas and interesting theories relating to Science in general and Chemistry in particular amongst the students here at BITS Pilani.The happenings of the assoc range from the wall magazine – Chembridge to the variousevents of the technical festival, APOGEE, like the Lab Quiz. The assoc also indulges itselfinto many inter disciplinary events with the other Science associations to organize aScience Week to promote the scientific temper amongst students. The biggest event that the association organizes during APOGEE is &quot;Who Dun It&quot;, which has a participation of more than 350 students. It aims to test the crime solving ability of the participants by asking them to solve a fictional murder mystery. It has a series of rounds of aptitude questions through which four teams are short-listed for the final round and are shown the murder scene to be solved. The other events that are evenly spaced throughout theacademic year include the famous Salt Law Act and Don&#39;t Tell me Why, an event inviting the students to write a spoof Science paper in a creative way with a tinge of sense of humour.\r\n\r\nAn attempt to conduct workshops on topics such as forensic (in collaborationwith Pharmacy and Biological Science groups) and Nano-Chemistry is alsobeing made to make sure practical knowledge is being infused into the Bitsians.Besides the events, Chemistry assoc is also known for some of the best projects andpaper presentations in the category of Pure Science. Some of the prize winning projects of the previous years include Bio-Diesel from waste oil which aimed at producingbiodiesel from waste oil based on trans-esterification, Microbial Fuel Cells whichshowed how electricity could be produced from bacteria based on the process ofoxidation and reduction.\r\n\r\nOf the many projects that were displayed at APOGEE, someof the projects that won incredible appreciation include Eco-friendly cement with themain objective of this project being To Develop a new generation of eco-friendly cement that will help combat global warming by locking atmospheric CO2 into construction materials.and production of electricity through phase change of water. There is also the screening of the documentaries of Discovery Communications,India- The Scinema. These documentaries are screened either at LTC or at FD2 QT. It was earlier done only during the APOGEE but has now been successfully extended to both the semesters.'),
(11, 'Dept. of Economic and Finance', 1022, '&quot;As an association we strive to achieve perpetual flow and transfer of knowledge in widespread areas of Economics and Finance , thereby helping every enthusiast to gain knowledge and apply it!&quot; - EFA, BITS Pilani\r\n \r\nProjects \r\nOne of the major attractions of APOGEE is project and paper presentation; EFA has participated in the following categories:\r\nEconomic Modelling and Finance\r\nSimulation & Mathematical Models\r\nSoftware Design\r\nEnergy and Environment\r\n \r\n\r\nEvents: \r\n\r\nBITSian CEO Award is to identify the leadership skills based on a management basis rather than a resume or interview one. This event challenges the participants&#39; ability to think, guts to perform under enormous duress, and calls into question their skills in creativity, entrepreneurial spirit, stamina, teamwork and communication.  \r\n\r\nGOOGOL is a macroeconomic online simulation game where students play the role of Finance Minister of India and manage different aspects like GDP, Unemployment, Inflation and approval rating from the Cabinet\r\n\r\nNumero UNO is a combination of case study analysis with an online treasure hunt. So, to start the analysis of the case first you will be required to find the different pieces of the case! It combines your puzzle-solving skills with the analytic ability.  \r\n\r\nFOREX or foreign exchange game gives real time experience of the &quot;foreign exchange&quot;, we give you virtual money and real time data. The event aims at bringing out a strategic approach from the participant towards the foreign trade considering various circumstances that happen around the world.  Markets are the most fascinating thing for the curious minds and for those who wish to make quick money. We conduct a virtual event where you can experiment with various strategies, try out different investment patterns and understand which one fits the bill.  \r\n\r\nSMS online Stock Market Simulation, Stock Markets are the most fascinating thing for the curious minds and for those who wish to make quick money.  We conduct a virtual event where you can experiment with various strategies, try out different investment patterns and understand which one fits the bill.  \r\n\r\nCORRIDA is an event based on insurance market, based upon expectations of popular beliefs and mastermind strategies. Three different insurance portfolios and each will be given a random profile. The situation in the economy at the point of offering the portfolio is given and the situation within each household is told. A large-scale event which affects the whole economy and its implications would be given.  \r\n\r\nDon&#39;t Tell Me Why (DTMY) is an online event challenging you to write a spoof science paper.  SCINEMA (Science + Cinema) is a scientific documentary screening provided by Discovery India.'),
(12, 'Mathematics Association', 1023, 'The Mathematics Association- serving the interests of the queen of all sciences, enhancing the understanding of the subject that lies at the heart of all that we know and perceive , and all that we hope to unravel in the future. The core philosophy underlying the functioning of the association is the urge to think &#39;mathematically&#39;- to look at things objectively; to unearth that which is irrefutable, pure, unquestionable; the enduring truth.\r\n \r\nWe revel in the joy of math, and make it a point to ensure that others partake of this joy as well- Olympiads , quizzes, lectures, exhibitions....\r\nThe mathemania is contagious…\r\n \r\n \r\nThe association hosts a variety of events throughout the academic year, dazzling the campus with its colorful display of all things maths.\r\n \r\nThe first semester has the association hosting mega events like the Maths Olympiad and the Maths quiz. With over two hundred students participating in each event and an abundance of problems to quench one&#39;s intellectual thirst, the appetite for math is insatiable.\r\n \r\nWhen it comes to examining the mathematician within and appreciating the elegance of pure and applied maths, the lectures and seminars held throughout the year are more than up to the task. We invite illustrious lecturers from the institute and all over the country to share their work with us.\r\n \r\nBy the second semester, the association begins work for the intellectual tsunami of a technical festival we call APOGEE. Events we hold include Sudoku and the Maths Quiz-&quot;Fast and Curious&quot;. With over two hundred people participating, the sheer number of Sudoku addicts scratching their heads over the questions we set for them is a sight to behold. Fast and Curious , as the name suggests is an event that tests your speed and intelligence at the same time. To ace the event, one needs to be on one&#39;s toes at all times, striking the problems as they&#39;re served hot and fresh from the association&#39;s Cerebral Oven.\r\n \r\nAnother major attraction during APOGEE is, of course, the project exhibition. Projects from all branches of maths are put up on display. The amount of work and imagination put into these projects comes to the surface during the exhibition, and the mathematical insights the students glean from their work is impressive.\r\n \r\nWe strongly believe in the value of infotainment. Along with other associations of the basic sciences, we host Scinema, a week long basic sciences documentary marathon.\r\nShort films on topics relating to physics, chemistry, biology, economics, and of course, maths are shown. '),
(13, 'Pharmacy Association', 1024, 'BITS Pharmaceutical Society or informally referred to as &quot;Pharmacy Association&quot; or &quot;A5 Association&quot; is an academic association comprising of all the students and faculty of BITS who are interested in the fields of Pharmacy and allied sciences. All the students who are pursuing B. Pharm. (Hons.), M. Pharm., those who have opted their dual degree in Pharmacy or any student of other discipline who is very much interested in Pharmacy are a part of the society.\r\n \r\nThe association is guided in its ventures by distinguished faculty. Prof. R.N. Saha, Patron, Pharmacy Association and Dr. Srikanth Charde, Group Leader, Pharmacy Association have been the constant source of motivation and guidance for the members.\r\n \r\nThe main aim of this society is to create an environment for students to pursue their interests in these fields. It also provides members with opportunities for professional growth as well as caters to their research interests and actively organises lectures, discussions, forums, workshops and other activities throughout the year, specifically during APOGEE, the technical festival of BITS Pilani.\r\n \r\nFor each graduating batch, the best graduating B. Pharm. (Hons.) student is awarded B.M.Mittal Memorial Gold Medal and the best graduating M. Pharm. student is awarded Prof.C.N.V.H.B. Gupta Memorial Gold Medal.\r\n \r\nSome of the events the association has organised in the past years are:\r\n \r\n• Forensic Workshop\r\n• Cosmetic Workshop\r\n• Health Quiz\r\n• Doper&#39;s Quiz\r\n• Qrious Online Quiz\r\n• Laboratory Quiz\r\n• Health Care Gadget Design and many more …\r\n \r\nThe association also organises lab visits, publishes newsletters, monthly wall magazines to be put up in messes and also the annual magazine &quot;AUDEAMUS&quot;.\r\n \r\nPharmacy Group, BITS-Pilani is completing 60 glorious years of its existence. A grand diamond jubilee celebration is being planned for next semester; where pharmacy alumni of all batches along with their families are to gather for the celebration.\r\n \r\nLinks- http://discovery.bits-pilani.ac.in/homepage/disciplines/pharmacy/index.htm\r\n \r\nContacts\r\nSugandha Saboo\r\nSecretary, Pharmacy Association\r\n+919929461749\r\n \r\nRachit Shrivastava\r\nCo-ordinator APOGEE, Pharmacy Association\r\n+919772975997'),
(14, 'Physics Association', 1025, 'The Physics Society,BITS-Pilani is an initiative of the MSc. Physics students to provide a platform to share our mutual love and understanding of physics. The society provides a backbone for all physics related activities,discussions etc on campus. The society functions with valuable inputs from both students and faculty.  The role of the society encompasses various activities which include organising lectures by both faculty members and various visitors, organizing student talks and various other events like quizzes, workshops, documentary screenings etc. Eminent visitors in the past include Nobel laureate Prof.Douglas Osheroff , Dr Carolyn Heising etc amongst others. Also the members prepare various innovative projects to be displayed during APOGEE and other technical festivals. Various workshops like the Quantum cryptography workshop have been held successfully.  Apart from all these activities, the society also acts as the meeting and interaction platform for all the MSc. Physics students in the campus, promoting mutual interaction among all students, and providing guidance and support to junior batches and physics lovers alike.');

-- --------------------------------------------------------

--
-- Table structure for table `cda_club`
--

CREATE TABLE IF NOT EXISTS `cda_club` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `club_name` varchar(60) NOT NULL,
  `club_id` int(11) NOT NULL,
  `club_desc` longtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=18 ;

--
-- Dumping data for table `cda_club`
--

INSERT INTO `cda_club` (`id`, `club_name`, `club_id`, `club_desc`) VALUES
(1, 'ArBits', 1101, '&quot;ARBITS can best be described as a group of friends who share a common passion for music.&quot;\r\n\r\nThe Association of Rock works for Oasis, conducting among the biggest rock band competitions in the country - Rocktaves.\r\n\r\nWe hold other music events\r\n\r\n- Axetacy - a solo guitaring competition\r\n\r\n- Oasis Unplugged - an acoustic band event and\r\n\r\n- The Music Quiz.\r\n\r\nARBITS also organizes the professional concert featuring bands and artists of a variety of genres, and designs merchandise like sweatshirts which help generate revenue for the festival.'),
(2, 'AstroClub', 1102, 'The astronomy club, BITS Pilani in association with the BITS Physics society serves as a platform for amateur astronomy on campus. We organise sessions for night-sky watching and for observing celestial events like solar eclipses, workshops during APOGEE and the World Space Week, besides astronomy quizzes.\r\n \r\nAssets :\r\nThe club owns two telescopes. One of them is a vintage 6 feet Galilean telescope, which was once a property of industrialist GD Birla, who passed it on to the Physics Society. It is contained in a rotating dome observatory to shield it from light pollution and provide a shelter for the telescope. With a proper mechanical tracking system, it sure was an engineering marvel during its younger days.\r\n \r\nThe club also owns an 11 inch Schmidt-Cassegrain telescope C11-SGT (Advanced Series). This high end modern telescope equipped with inbuilt GPS has a GoTo feature, with automated tracking of celestial objects of our choice. The high resolution has enabled us to use this telescope extensively for astrophotography.\r\n \r\nActivities :\r\nNight-sky sessions on FD3 terrace on a clear night delight observers with a peek into the moons of Jupiter, the Andromeda galaxy, Messier objects, to name a few.\r\n \r\nThe overwhelming participation in astronomy workshops for APOGEE reflects the popularity of the workshops. Participants are taught about the nuances of telescope handling, astrophotography and night sky watching. Guest lectures by the faculty and eminent speakers are also held during the workshops. Past workshops witnessed speakers from ISRO, B.M. Birla Planetarium, Jaipur and Amateur Astronomer&#39;s Society, Jaipur.The workshop during the World Space Week caters exclusively for the school children in Pilani, to rouse the curiosity in astronomy among the young minds.\r\n \r\nVenturing into astrophotography, the club has wonderfully captured the surface of moon, the rings of Saturn, Orion and Pleiades cluster.\r\n '),
(3, 'CrAC', 1103, 'Creative Activities Club : &#39;powered by passion , driven by creativity&#39;\r\n\r\nA group of people with a common interest, a passion and an eye for something different and unique. We have extraordinary painters , sketchers, skilled artists , writers and &#39;thinkers&#39;. Our works are materialization of creativity , a way to show others new ways to think and do things- Be it our CrAC booth we setup during OASIS or the flummoxing &#39;Galleria&#39; , our museum of art during APOGEE. The club has undying energy and the bonding basically springs in from the very nature of the work we do.\r\n\r\nSo here we are , redefining fine arts and elevating it to &#39;creative activities&#39;'),
(4, 'Dance Club', 1104, ''),
(5, 'Debating Society', 1105, ''),
(6, 'EDC', 1106, ''),
(7, 'ELAS', 1107, 'A group of good friends who also enjoy quizzing.'),
(8, 'EPC', 1108, ''),
(9, 'HAS', 1109, 'One of the oldest club under the Students&#39; Union, BITS-Pilani. HAS is a club for enthusiasts in the fields of literature, quizzing, debate. Think Hindi Activities Society - think entertainment, creativity, camaraderie and enthusiasm. The club is meant for the hindi fanatics. If you have been a participant in any of our events, a mesmerized spectator or even if you are new to H.A.S., this is the club whose events you can look forward to be a real part of OASIS.\r\n\r\nThe Hindi Activities Society organizes 6 events during OASIS which when considered along with their elimination rounds form a total of 14 shows. Our events include the ever popular ANTAKSHARI, A hindi jam show - KSHANIKA, A hilarious yet awakening discussion on a wide array of topics related to society - MOCK PARLIAMENT, the most bollywood quiz for all movie geeks- FILMI MUQABALA and finally the BLUFF MASTER. Though we are the “Hindi” Activities Society but we and our events are open to all and most of them are bilingual.\r\n\r\nAnd last but not the least, a professional show during OASIS where in which renowned Kavis and Stand-ups are invited for a show. Previously people like Sunil Pal, Surendra Sharma, Sumitra Nandan Pant, Shambhu Shikhar, Nagraj Sharma and many others have been invited.\r\n\r\nDuring APOGEE the club organizes AHVAAN-a call to the youth of the nation. Events like documentary screening have also been undertaken by the club. Many of its events are conducted during the semester for BITSians to get rid of their hectic test series.\r\nSo, with such broad horizons the club is one of the most important organizing body for OASIS and APOGEE. The fun in organizing and making these things happen in unexplainable, the clubbers are enthusiastic and passionate about what they do, be it painting charts and faces sometimes, treats, trips or whatever that makes a great place to be.'),
(10, 'HDC', 1110, ''),
(11, 'HPC', 1111, ''),
(12, 'Matrix', 1112, ''),
(13, 'MIMEs', 1113, ''),
(14, 'Music Club', 1114, ''),
(15, 'Photography Club', 1115, 'The Photography Club at BITS Pilani is one of the oldest clubs on campus. It goes back to the days of black and white photography, when cameras had parts made of canvas and when club sessions were devoted to developing photographs in a dark room. Having witnessed a couple of periods of idleness, followed by impressive growth, the club has come a long way. Photog, in its present avatar, was reborn in the year 2006-2007 under the able guidance of some of our seniors.\r\n\r\nActivities\r\n\r\nClicking Sessions are held round the year. Starting with SLR clicking sessions held weekly which are open for all members, Photog has seen a constant pruning and shaping of its members since then. Recruitments are now held in the first month of the academic year, with focus being on creativity, perspective, observation, interest and passion to learn. Apart from projects in landscapes, street clicking, portraits, macro and the like, the club has also dabbled in other genres of photography such as Bokeh, high speed, long exposure, product, HDRs, photograms and anaglyphs.\r\n\r\nLectures are conducted regularly on the basics of photography, composition, post-processing and a host of specific topics. These are followed up by clicking sessions and snap review sessions.\r\n\r\nWorkshops have been conducted by professionals who specialize in studio photography, including a team from Better Photography. After a thorough exposure to lighting equipment in one such workshop, the club invested in studio lights to add to its inventory of DSLR&#39;s, tripods, lenses and so on. In addition to this the club also boasts of having an enlarger which we use for developing of films. All these are housed in the Photography Club Room.\r\n\r\nExhibitions are put up during both Oasis and Apogee, all India festivals held at BITS Pilani. From a general display of the club&#39;s work round the year, these have evolved into magnificent displays of art. Panels are theme based, with due attention paid to innovation, creativity, art, social issues and even publicity!\r\n\r\nAchievements\r\n\r\nOne of the greatest works of the club has been the panograph of the BITS Clock Tower. Composed of over thirty snaps taken at different angles, it is a breathtaking image of the institute in the light of the rising sun. This picture occupies centre stage of the institute''s website and has become synonymous with the name of BITS.\r\n\r\nThis year Photog took it to a whole new level by making a huge 9 ft X 25 ft Photo- Mosaic . Impressed by the work the college authorities have put it up for permanent display on the SAC Wall (Student Activities Club). The mosaic has been made by including passport size pictures of Bitsians. Thousands of photographs to make one big picture.\r\n\r\nAbove all, Photog is a group of close knit individuals, held together by a passion for photography and strong bonds of friendship. We believe that a picture can speak what a thousand words can&#39;t, we invite you to browse through our gallery to truly feel what Photography Club, BITS Pilani is all about.\r\n\r\nStay alive.. and clicking!\r\n '),
(16, 'Poetry Club', 1116, ''),
(17, 'Ragamalika', 1117, 'Ragamalika, the classical music and dance club of BITS,Pilani are a group of talented artistes, who after years of formal training havecome together in this small town of Pilani, to nurture these ancientfine arts. We have students trained in various art forms such ascarnatic and hindustani music and classical dance forms namely Bharatanatyam, kathak, kuchipudi,Odissi etc. Every year, Ragamalikaputs together two dance performances-Nrityaranjani and Sangamam- ascintillating amalgam of different music and dance styles, revolving around a central theme. Apart from this,music concerts such asShaam-e-Ghazal( a vocal recital of popular ghazals) and Strings Attached( a musical medley of stringed instruments such as Violin, Veena, Sitar) are organised. During Oasis, we conduct two contests-the music contest Swaranjali invites candidates trained in Carnatic and Hindustani vocal and Instrumental, while the dance event Tandav calls for participants trained in Indian classical dance forms. As an attempt to popularize classical music and dance, ragamalika also conducts workshops to teach fellow BITSians the wonders of the art we so dearly cherish.');

-- --------------------------------------------------------

--
-- Table structure for table `cda_clubs`
--

CREATE TABLE IF NOT EXISTS `cda_clubs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `club_name` varchar(30) NOT NULL,
  `club_id` int(11) NOT NULL,
  `club_desc` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=19 ;

--
-- Dumping data for table `cda_clubs`
--

INSERT INTO `cda_clubs` (`id`, `club_name`, `club_id`, `club_desc`) VALUES
(1, 'ArBits', 1101, '&quot;ARBITS can best be described as a group of friends who share a common passion for music.&quot;\r\n\r\nThe Association of Rock works for Oasis, conducting among the biggest rock band competitions in the country - Rocktaves.\r\n\r\nWe hold other music events\r\n\r\n- Axetacy - a solo guitaring competition\r\n\r\n- Oasis Unplugged - an acoustic band event and\r\n\r\n- The Music Quiz.\r\n\r\nARBITS also organizes the professional concert featuring bands and artists of a variety of genres, and designs merchandise like sweatshirts which help generate revenue for the festival.'),
(2, 'AstroClub', 1102, 'The astronomy club, BITS Pilani in association with the BITS Physics society serves as a platform for amateur astronomy on campus. We organise sessions for night-sky watching and for observing celestial events like solar eclipses, workshops during APOGEE and the World Space Week, besides astronomy quizzes.\r\n \r\nAssets :\r\nThe club owns two telescopes. One of them is a vintage 6 feet Galilean telescope, which was once a property of industrialist GD Birla, who passed it on to the Physics Society. It is contained in a rotating dome observatory to shield it from light pollution and provide a shelter for the telescope. With a proper mechanical tracking system, it sure was an engineering marvel during its younger days.\r\n \r\nThe club also owns an 11 inch Schmidt-Cassegrain telescope C11-SGT (Advanced Series). This high end modern telescope equipped with inbuilt GPS has a GoTo feature, with automated tracking of celestial objects of our choice. The high resolution has enabled us to use this telescope extensively for astrophotography.\r\n \r\nActivities :\r\nNight-sky sessions on FD3 terrace on a clear night delight observers with a peek into the moons of Jupiter, the Andromeda galaxy, Messier objects, to name a few.\r\n \r\nThe overwhelming participation in astronomy workshops for APOGEE reflects the popularity of the workshops. Participants are taught about the nuances of telescope handling, astrophotography and night sky watching. Guest lectures by the faculty and eminent speakers are also held during the workshops. Past workshops witnessed speakers from ISRO, B.M. Birla Planetarium, Jaipur and Amateur Astronomer&#39;s Society, Jaipur.The workshop during the World Space Week caters exclusively for the school children in Pilani, to rouse the curiosity in astronomy among the young minds.\r\n \r\nVenturing into astrophotography, the club has wonderfully captured the surface of moon, the rings of Saturn, Orion and Pleiades cluster.\r\n '),
(3, 'CrAC', 1103, 'Creative Activities Club : &#39;powered by passion , driven by creativity&#39;\r\n\r\nA group of people with a common interest, a passion and an eye for something different and unique. We have extraordinary painters , sketchers, skilled artists , writers and &#39;thinkers&#39;. Our works are materialization of creativity , a way to show others new ways to think and do things- Be it our CrAC booth we setup during OASIS or the flummoxing &#39;Galleria&#39; , our museum of art during APOGEE. The club has undying energy and the bonding basically springs in from the very nature of the work we do.\r\n\r\nSo here we are , redefining fine arts and elevating it to &#39;creative activities&#39;'),
(4, 'Dance Club', 1104, ''),
(5, 'Debating Society', 1105, ''),
(6, 'EDC', 1106, ''),
(7, 'ELAS', 1107, 'A group of good friends who also enjoy quizzing.'),
(8, 'EPC', 1108, ''),
(9, 'HAS', 1109, 'One of the oldest club under the Students&#39; Union, BITS-Pilani. HAS is a club for enthusiasts in the fields of literature, quizzing, debate. Think Hindi Activities Society - think entertainment, creativity, camaraderie and enthusiasm. The club is meant for the hindi fanatics. If you have been a participant in any of our events, a mesmerized spectator or even if you are new to H.A.S., this is the club whose events you can look forward to be a real part of OASIS.\r\n\r\nThe Hindi Activities Society organizes 6 events during OASIS which when considered along with their elimination rounds form a total of 14 shows. Our events include the ever popular ANTAKSHARI, A hindi jam show - KSHANIKA, A hilarious yet awakening discussion on a wide array of topics related to society - MOCK PARLIAMENT, the most bollywood quiz for all movie geeks- FILMI MUQABALA and finally the BLUFF MASTER. Though we are the “Hindi” Activities Society but we and our events are open to all and most of them are bilingual.\r\n\r\nAnd last but not the least, a professional show during OASIS where in which renowned Kavis and Stand-ups are invited for a show. Previously people like Sunil Pal, Surendra Sharma, Sumitra Nandan Pant, Shambhu Shikhar, Nagraj Sharma and many others have been invited.\r\n\r\nDuring APOGEE the club organizes AHVAAN-a call to the youth of the nation. Events like documentary screening have also been undertaken by the club. Many of its events are conducted during the semester for BITSians to get rid of their hectic test series.\r\nSo, with such broad horizons the club is one of the most important organizing body for OASIS and APOGEE. The fun in organizing and making these things happen in unexplainable, the clubbers are enthusiastic and passionate about what they do, be it painting charts and faces sometimes, treats, trips or whatever that makes a great place to be.'),
(10, 'HDC', 1110, ''),
(11, 'HPC', 1111, ''),
(12, 'Matrix', 1112, ''),
(13, 'MIMEs', 1113, ''),
(14, 'Music Club', 1114, ''),
(16, 'Photography Club', 1115, 'The Photography Club at BITS Pilani is one of the oldest clubs on campus. It goes back to the days of black and white photography, when cameras had parts made of canvas and when club sessions were devoted to developing photographs in a dark room. Having witnessed a couple of periods of idleness, followed by impressive growth, the club has come a long way. Photog, in its present avatar, was reborn in the year 2006-2007 under the able guidance of some of our seniors.\r\n\r\nActivities\r\n\r\nClicking Sessions are held round the year. Starting with SLR clicking sessions held weekly which are open for all members, Photog has seen a constant pruning and shaping of its members since then. Recruitments are now held in the first month of the academic year, with focus being on creativity, perspective, observation, interest and passion to learn. Apart from projects in landscapes, street clicking, portraits, macro and the like, the club has also dabbled in other genres of photography such as Bokeh, high speed, long exposure, product, HDRs, photograms and anaglyphs.\r\n\r\nLectures are conducted regularly on the basics of photography, composition, post-processing and a host of specific topics. These are followed up by clicking sessions and snap review sessions.\r\n\r\nWorkshops have been conducted by professionals who specialize in studio photography, including a team from Better Photography. After a thorough exposure to lighting equipment in one such workshop, the club invested in studio lights to add to its inventory of DSLR&#39;s, tripods, lenses and so on. In addition to this the club also boasts of having an enlarger which we use for developing of films. All these are housed in the Photography Club Room.\r\n\r\nExhibitions are put up during both Oasis and Apogee, all India festivals held at BITS Pilani. From a general display of the club&#39;s work round the year, these have evolved into magnificent displays of art. Panels are theme based, with due attention paid to innovation, creativity, art, social issues and even publicity!\r\n\r\nAchievements\r\n\r\nOne of the greatest works of the club has been the panograph of the BITS Clock Tower. Composed of over thirty snaps taken at different angles, it is a breathtaking image of the institute in the light of the rising sun. This picture occupies centre stage of the institute''s website and has become synonymous with the name of BITS.\r\n\r\nThis year Photog took it to a whole new level by making a huge 9 ft X 25 ft Photo- Mosaic . Impressed by the work the college authorities have put it up for permanent display on the SAC Wall (Student Activities Club). The mosaic has been made by including passport size pictures of Bitsians. Thousands of photographs to make one big picture.\r\n\r\nAbove all, Photog is a group of close knit individuals, held together by a passion for photography and strong bonds of friendship. We believe that a picture can speak what a thousand words can&#39;t, we invite you to browse through our gallery to truly feel what Photography Club, BITS Pilani is all about.\r\n\r\nStay alive.. and clicking!\r\n '),
(17, 'Poetry Club', 1116, ''),
(18, 'Ragamalika', 1117, 'Ragamalika, the classical music and dance club of BITS,Pilani are a group of talented artistes, who after years of formal training havecome together in this small town of Pilani, to nurture these ancientfine arts. We have students trained in various art forms such ascarnatic and hindustani music and classical dance forms namely Bharatanatyam, kathak, kuchipudi,Odissi etc. Every year, Ragamalikaputs together two dance performances-Nrityaranjani and Sangamam- ascintillating amalgam of different music and dance styles, revolving around a central theme. Apart from this,music concerts such asShaam-e-Ghazal( a vocal recital of popular ghazals) and Strings Attached( a musical medley of stringed instruments such as Violin, Veena, Sitar) are organised. During Oasis, we conduct two contests-the music contest Swaranjali invites candidates trained in Carnatic and Hindustani vocal and Instrumental, while the dance event Tandav calls for participants trained in Indian classical dance forms. As an attempt to popularize classical music and dance, ragamalika also conducts workshops to teach fellow BITSians the wonders of the art we so dearly cherish.');

-- --------------------------------------------------------

--
-- Table structure for table `cda_dept`
--

CREATE TABLE IF NOT EXISTS `cda_dept` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dept_name` varchar(60) NOT NULL,
  `dept_id` int(11) NOT NULL,
  `dept_desc` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=19 ;

--
-- Dumping data for table `cda_dept`
--

INSERT INTO `cda_dept` (`id`, `dept_name`, `dept_id`, `dept_desc`) VALUES
(2, 'Art Design and Publicity', 1201, ':O\r\n\r\nFor the world, it''s just an emoticon…\r\n\r\nFor the revellers in OASIS, it&#39;s just a reaction…\r\n\r\nFor us, it&#39;s the most sincere form of appreciation…\r\n\r\nWe are the Dept. of Art of Decoration…\r\n\r\nWait… that didn’t sound right… hell no…\r\n\r\nWe are R10D!!\r\n\r\nA place for the restless…\r\n\r\nWe are one of the 6 major departments working towards OASIS, our cultural fest. Recruitments are done from the first year batch througha formal interaction, with the only criteria being restless enthusiasm and a willingness to learn above all else. Those recruited are called as Volunteers and are taught all aspects of the work and they graduate into Group Leaders, Core members and Senior Core members over the subsequent years of their BITSian life. One amongst the Senior Core is chosen as the StuCCAn representing the Department in the StuCCA body, the organizing committee of OASIS. One of the earliest departments to come into existence, we have a workforce of 50-60 hardworking r10dites,divided into two groups – Painting and Structure based on interest.\r\n\r\nA place for finesse and artistic flair…\r\n\r\nThe panels on Audi side walls changed every OASIS, as well as ones in ET stand testament to the skill of our members. Add to that the huge backdrops that enliven the stage for every event. Or the ingeniously designed structure standing tall and proud in the middle of D-Lawns...\r\n\r\nThe unveiling of panels and inaug backdrops and the inauguration of the structure by the chief guest marks the beginning of the fest… of course with an :O !!\r\n\r\nA place for design and creativity…\r\n\r\nMain poster for the fest and pre-invites sent to colleges throughout the country are designed by us. So also are the official font and the logo as well as the letterhead that lend a unique identity to the fest.\r\n\r\nR10d is also responsible for order and issue of inventory to all the other Clubs and Departments involved in the management and organization of the fest.\r\n\r\nA place where work and fun blends…\r\n\r\nMeets… Trips… Work sessions… Cleanups… Marathons… Farewell prep… Blaring loud thro the night… Charcoal… Maida… Spray… Ozone high after welding… Face painting… Friendly banter… Balli… Rooftop views… Mornings in nutan after nite-out… Photoshoppin… Class in progress…\r\n\r\nConsisting of an eclectic mix of tightly bonded members, R10d is the place to grow and to put forth your creativity to a huge audience…\r\n\r\n&quot;…where we put our heart and soul into the work, and lose our mind in the process&quot;'),
(3, 'AudiForce', 1202, 'Department of Audi Force is responsible for maintaining decorum in the Auditorium during OASIS and APOGEE. We escort special guests during Inauguration Ceremony, Professional Shows, Invited Lectures, Mithali and any other such event inside the Auditorium. Security of Delegates and Crowd Management is one of the core functions of the Department of the Audi Force. Leadership Skills, Managerial Traits, are some of the characteristics that define the Department Members. We ensure a secure and safe Audi by restricting it to identified people and not allowing the entry of some prohibited items. Last year, we got huge applause from the authorities for our work and consequently, we have got control over some more activities outside Auditorium also this year . We look forward to raise the bar even higher this time and take it to the next level.'),
(4, 'Backstage', 1203, 'The Department of Stage Controls has always been sustained by a constant need to capture and embody the spirit of a festival the magnitude of Oasis. Sure, as a part of the Stucca body, we do our share of the work- provide some intellectual grounding, conduct the inauguration, setup and even design and build stages for some events,among other things, but what we really are is simply an eclectic group of people who are looking to explore and share an experience.\r\n\r\n\r\n\r\nOur lair is a small unassuming area just behind backstage, from where we observe and imbibe, because whether you may want to believe it or not,everything does indeed happen backstage'),
(5, 'Controlz', 1204, 'The pieces of a jigsaw puzzle remain cluttered till someone comes and puts them in their right places to create a beautiful picture out of it.    Controlz, more formally the Department of Controlz does the same as the puzzle solver but on a much larger scale. Formed in the year 1971, it is one of the oldest departments in BITS Pilani. With a distinguished workforce of 35-40 students every semester, it only strives to make every next fest more smooth sailing than the previous one and it has been very successful in that accord.   \r\n\r\nThe Department of Controlz carries out its responsibilities with an enviable accuracy and zeal in the college cultural festival, OASIS and the college technical festival, APOGEE. The presence of Controlz is required and also felt by guests, participants and BITSians alike at every stage of the college fest.The work handled by our Department is a concoction of various genres and hence, Controlzites areable to deliver efficiently in all the work they do.   \r\n\r\nStarting with the BITSians who are involved in various clubs and Departments, the role of Controlz starts almost a month ago when they send in their requirements in terms of rooms, mikes,  projectors and even publicity boards for the events they hold. The judging criteria decided by each  club are given to Controlz which makes the judegsheets they need for their events. Scheduling of  their events in the span of the 96 hour nonstop fest is also done by Controlz. The rules booklet  regarding the rules of the various events is made by Controlz and we overlook the styling and  printing of the certificates as well.    In dealing with outstation participants, the role of Controlz starts the moment they step into our  campus. They are registered at the Controlz booth, which is set up at the FD II foyer and then  directed ahead.\r\n\r\nOnce registration is over, the department provides the participants with the option  of having meals at our messes. All the major cash transactions that happen during the fest are  handled by Controlz. Being the interface with &#39;outsties&#39;, Controlz is pretty much a one-stop solution  centre for all their inquiries and problems.    In addition to the above, Controlz is also responsible for evaluating the results of all the events and  declaring the winners of the same. Also, all the certificates and the prize money are distributed to  participants by Controlz either during the valedictory ceremony or via mail.    For the guest performers and speakers who are invited for the fest, Controlz is the interface  between them and BITS Pilani as they are responsible for their travel arrangements. The BITS  auditorium holds some of the biggest events and the hectic task of auditorium scheduling is also  Controlz&#39;s responsibility.   \r\n\r\nA group of dedicated and enthusiastic people, dedicated to make the fest better in every possible  way, the Department of Controlz serves as the link between the institute and the students in all that  concerns the fest.    This dedicated and united group is being spearheaded by Mr. Akshay S Rao, StuCCAn for OASIS  2010 and by Ms. Zara Ahmed, CoStAAn for APOGEE 2011.'),
(6, 'DoPy', 1205, 'The Department of Photography (DoPy), as its name suggests, are a group of students who ensure that anyone who attends the fests here has got enough evidence to prove that he&#39;s enjoyed his time when he walks out of BITS. Their job, in simple words, is to be there when people want their pictures clicked.\r\n\r\nFrom something that started of as a small idea by a few enthusiastic photographers sporting a couple of SLR cameras more than a decade ago, DoPy has grown into a major revenue generating body for the fests, the profits going a long way in sponsoring the fests.\r\n\r\nBlending a bit of the latest technology with a bit of old fashion-ness, DoPy, armed with Digital SLR cameras, takes photos of people and delivers the hard copies to their doorstep within a week of the fest.\r\n\r\nApart from the photographs, the Department also comes out with a lot of other innovative merchandise each year, one of which was the U-shirt. The students were given a chance to design their own shirt, perhaps with a picture of their friends on campus or a funny quote and give it for printing. Some of the other products which they came up with were diaries, graphic novel calendars and albums, featuring some of the best photographs taken by Dopyites.\r\n\r\nWith over sixty thousand photos printed each year and total revenues running into seven lakhs, the department guarantees that everyone has something to turn back to in nostalgia, yet, at the same time, makes the fest bigger and better.\r\n '),
(7, 'DOT', 1206, 'The Department Of Theatre is a group of about 40 students and we are responsible for organizing a total of 8 events and 2 workshops during the institute&#39;s cultural fest-OASIS. Work starting from publicizing our events, to bringing judges for them, to collaborating on different fronts is managed by our department. Our events being: Fashion Parade, Street Dance, Stage Plays, Street Plays, Choreo, Spoofs, Act N React and Mime.\r\n\r\n1. Fashion Parade\r\n\r\nFashion is a tyrant from which there is no deliverance! All must conform to its whimsical!!The Fashion Parade is an exact manifestation of the above. It is the grand finale during OASIS and it is an amazing crowd puller!\r\n\r\n2. Street Dance\r\n\r\nIt is THE biggest crowd puller and is a good blend of breath taking dance moves and thumping music that will leave you in a state of shock and awe!!\r\n\r\n3. Stage Plays\r\n\r\nWe have collaborated with Thespo, which is the biggest theatre group youth festival in India. There are a lot of incentives for the participants in terms of opportunity. There is a theatre workshop as well this time round. You will witness a manifestation of the art of theatre, it is a show of expertise and professionalism that will leave the audience in nothing short of a trance.\r\n\r\n4. Street Plays\r\n\r\nStreet Play aka Nukkad Natak is an endeavor carried out to propagate social and political messages among masses through the means of direct, intimate and effective means of theatre by means of shouts, chants and songs!! These dramas are full of humor and zeal, they are loud and larger than life and full of exchange of ideologies.\r\n\r\n5. Choreo\r\n\r\nExpressions. Emotions. Symphony. Motion. Witness it all this OASIS. Choreo is a fine blend of all of the above stated where a theme is depicted, human emotions are embraced and a chord is struck with the audience! It is an event that will leave you with something to think about!\r\n\r\n6. Spoofs\r\n\r\nDiversity in perspective renders any object, however trivial, priceless. Spoofomania goes over to the funny side where participants are required to present an alternative, spoofed view of a conventional cinema. This event is full of sarcastic witty cracks, tickling the funny bones\r\n\r\n7. Act N React\r\n\r\nHave you ever envisaged some of the most uncanny situations that life might throw at you? Destiny beckons you to Act N React. It is all about team chemistry, spontaneity and versatility and of course...all of this garnished with ample humor. This event is for the ones who actually think that life is scripted!\r\n\r\n8. Mime\r\n\r\nActions speak LOUDER than Words. Words can keep people apart but mime can be a bridge between them. It is an event which requires participants to portray a play, pertaining to a theme, through actions.\r\n\r\nDANCE WORKSHOP\r\n\r\nThis has been an amazing success for us in terms of big names amongst the dance companies coming over to organize the workshop and the overwhelming response we have received from the crowd here. Names like SDIPA and BCDC have come for conducting workshops and the names are getting bigger by the year and it is a big revenue generator speaking in terms of money influx!\r\n\r\nSo apart from all of this, we are a group of people who are well knit and strive harder every year to make OASIS bigger and better and it goes without saying that we have a copious amount of fun in the process!'),
(8, 'DVM', 1207, ''),
(9, 'Firewallz', 1208, 'With the number of participants attending our fests on the rise,it is prudent to check the participant&#39;s identity. This is where our department, FIREWALLZ comes in. With continuous inflow of participants throughout the fest, we work round-the-clock cross checking their confirmation mails, bonafides, ID proofs and in turn issue FIREWALLZ ID cards which are essential for them to take part in any event during the fest. We are the first people on campus to interact with the outstation participants.\r\n\r\nApart from this, our volunteers go around the campus time to time to ensure that no untoward incidents occur. We also act on any issues that may surface during the fest and resolve any disputes that arise. It&#39;s not just work but there is loads of fun involved in the department like trips and enthu sessions. To summarize,we work throughout the fest with smooth running of the fest as our main goal.'),
(10, 'Informalz', 1209, 'FUN-By the people, for the people, of the people.\r\n\r\nThe above line says it all. The Department of Informalz organizes and conducts events aimed at entertaining the crowd during all the three fests of BITS-Pilani. With the motto of ''redefining entertainment'', Informalz makes sure that you have a great time through a plethora of innovative events.\r\n\r\nThere is nothing special about making events, but Informalz events are far from the usual stuff. Our events involve a bit of out-of-the-box thinking which aims at breaking the monotony; Rules are doneaway with. Chess was boring, Anti-chess is the new buzz- where players play to lose instead of the usual approach. We host Tug-Of-War, which is not exactly known for its innovation, but is made interesting by adding weight limits instead of team size limits. The aftermath - one particular all-girlsteam embarrassed three boys team on the trot in their epic run till the finals. F.R.I.E.N.D.S kept Foosball contained inside the four walls. We brought it out in the open. And Human Foosball became an instanthit.\r\n\r\nOne of the very few departments that work for all the three fests, Informalz is an integral part of Oasis,Apogee and BOSM. With many different events, there are sure to be no dull moments during fests.\r\n\r\nOur events are particularly designed for people with different interests. Treasure Hunt is for those who don&#39;t mind wracking their brains on cryptic puzzles and riddles; for people with an interest in quizzing, Entertainment Quiz(in Oasis) and Jeopardy(in Apogee) gives some food for thought; Wordstock and Brain Teasers give people a reality check of their prowess in English and their knack at crackingconundrums; Mister and Miss Oasis is a reality show organized by Informalz which aims at identifying the two best people on campus during Oasis who can strike a chord with the junta and entertain them.\r\n\r\nApart from all these staple events, we organize In-Resonance, Revertigo, BULB and many other events which have never failed to exceed the expectations of the audience.\r\n\r\nOne of the cornerstones behind the success of Informalz has been its inventiveness and its belief in originality. We firmly believe in the philosophy of continual innovation even if comes at the price of replacing an established and popular event with a new untried one. Slow cycling, one of our events during BOSM, used to attract a huge crowd. However we decided to stop it after a couple of years since the need to come up with a new event was being felt. Our events always have a surprise element attached to it which aims to catch the contestants on the wrong foot. It&#39;s been 21 years since The Department of Informalz has been entertaining BITSians and the outstation candidates alike and will continue to do so in the years to follow.'),
(11, 'Jhankar', 1210, 'Enthralling the crowds coming for OASIS for the past years by making them a witness of the excellence and the exuberance of the performances delivered by professionals, we vow to continue doing the same this year as well by working even harder and with more enthusiasm than ever to fulfill our only desire, that is, making OASIS better than anyone has ever witnessed before.\r\n\r\nOur aim of making OASIS better is realized by bringing in better acts year after year, hence enhancing the very spectacle of the festival. To stir up excitement in BITSian lives, we aspire to add mystical hues to OASIS by bringing up events of various types and making it more of a rave than a festival. Breaking out of the shell of professionalism and diving into the realms of divertissement , our scope ranges from events which make the matured stem cells of your brain run at full throttle to the ones where your compatibility with your partner is tested. Its a flirtation with music in Sonic Stampede, with DJs scratching and mixing hip tracks making thousands dance to their beat.\r\n\r\nWhen the day dawns to an end, insomnia takes over and channeling this madness comes forth the Prof Show. With acts like Silk Route, Parikrama, Euphoria and greats like Lucky Ali, K.K. and Shankar-Ehsaan-Loy headlining the Prof Show, the event has mesmerized crowds for years. Continuing the legacy, this OASIS we present before you, another spectacular performance by legends of the music industry. Come witness the extravaganza and give your soul a treat, which will be visual and surely loud!\r\n\r\nFull throttle grey cell action begins with events like Ad Effect and Filmstrip. Your knowledge about anything and everything related to advertisements in any form may it be print, video or even Internet advertisements is checked and we make sure that each and every person present there is having as much as the ones who make it through the knockout stages of the quiz. If Ad Effect checks your &#39;AdSense&#39; then Filmstrip comes along to check how much  you score when it comes to being a movie buff. Along with movies comes music which is also an important part of what Filmstrip is. Combining these two spheres of entertainment we give you Filmstrip which has been a fan favorite since its inception and has grown in all aspects since. It doesn&#39;t end here though. If you&#39;re not single then &#39;Beauty & The Geek&#39; is the event for you and your partner. With short fun tasks being the norm of the event, there does not pass a dull moment during the event with the crowd also being fully involved and thoroughly entertained.\r\n\r\nFrom BOSM 2009, we have also entered into the arena of sports by introducing games like Dodgeball and The Gauntlet. This year we organised Street Football in collaboration with Delhi Street Football, an event that brought together all the footballers who wanted to have a nice time and play some footie while they''re at it.\r\n\r\nThe pyrotechnics conducted by Jhankar sparkled the night sky during the inauguration ceremony of APOGEE 2010.\r\n\r\nIn short, we offer a complete set of events which add value to all the three festivals whilst also maintaining the &#39;fun&#39; factor for the participants and the audience involved.'),
(12, 'Lights', 1211, 'The Department of Lights is responsible for ensuring that every event in the Auditorium is illuminated in a manner which is aesthetic, yet accessible. We constantly improve, taking on new tasks and extending the range of what is possible for us to do. It is a dirty job, but someone has to do it.'),
(14, 'Publications and Correspondence', 1212, 'Department of Publications & Correspondence\r\n\r\nWe are known as PCr, our formal work is listed under ''Section D'' of the OASIS Charter.\r\nOur non work related information is provided on a Need to Know basis only.\r\nThe StuCCAn can be contacted at pcr@bits-oasis.org\r\n '),
(15, 'Paper Evaluation and Presentation', 1213, 'Whether you&#39;re a budding Scientist, a young entrepreneur or a research scholar, the Paper Presentation Contest is just the place for you to step forth into the limelight. Every year more than 400 participants pit their work against the most brilliant minds of the country to steal away the glory of this IEEE certified prestigious paper presentation contest.\r\n\r\nThe Dept. Paper Evaluation and Presentation, or &#39;PEP&#39; as we are known, is responsible for organizing and judging of this competition, which caters to a myriad of papers every year.\r\n\r\nApart from paper presentations, we organize Guest Lectures, providing a platform for interactions between the established genius and the yet to bloom. In the previous years we have been graced by the presence of the most eminent personalities from all over the world which include - Jimmy Wales, co-founder of Wikipedia, Archana Sharma-an experimental physicist at CERN, Dilip Chhabria- India&#39;s ace car designer, John C Mather- A Nobel Laureate and Dr. AS Pillai-CEO BrahMos Aerospace.\r\n\r\nWe are also responsible for organizing Cyber Fiesta and Poster Presentation which are popular competitions during APOGEE.\r\n\r\nWe have been actively involved in providing ideas for making APOGEE bigger and better.\r\n\r\nOn the personal front we are a bunch of individuals, who rarely have common interests, but still when it comes to work or fun we shed our inhibitions to make sure that no stone is left unturned.'),
(16, 'Rec n Acc', 1214, 'The Department of Reception and Accommodation is believed to have formed even before OASIS started. It was there from MAYURI days. The basic aim behind the formation of the department was to receive and accommodate the outstation participants/artists and delegates coming for the fests and making sure that their stay in BITS is comfortable.\r\n\r\nRec n Acc, as it is popularly known, works for all the three festivals and is proud to be the only department that has its presence in CoSSAcn, StuCCA and CoStAA bodies. Rec n Acc facilitates the accommodation of the more than thousand participants and delegates bunching up in the campus for OASIS that hogs the limelight of all the festivals hosted by BITS, not to mention the almost same number for both APOGEE and BOSM as well, making a total of over 3500 to take care of each year!\r\n\r\nThe Department&#39;s main work starts way before a festival, by estimating the number of participants & calling in tenders for procuring the necessary items (like mattresses, chairs, etc.). The accommodation centres are then properly equipped and made ready for the outstation participants to check-in a day before the festival begins. The participants are sufficiently accommodated in TT rooms, common rooms and staff quarters while the accompanying staffs are allocated single rooms. The artists/guests and judges are accommodated in the VFAST hostel and other guest houses.\r\n\r\nThe other major work of the department is setting up of the stalls and providing the other depts. /clubs the necessary supplies, making it possible for them to conduct their events.\r\n\r\nHandling these two important works, it forms the backbone of any festival.\r\n\r\nThe creative side of the department is reflected in setting up of its own registration booth, &quot;cribs hut&quot; as it is called, housed in M Lawns, which is a highly appreciated work of art. The glowing lampshades dangling from the hut in the night sky and the structure, depicting the theme of the fest, be it OASIS or APOGEE, are themselves a spectacle to watch.  \r\n\r\nThe same hut also houses the &#39;Hospitality&#39; counter which takes care of the needs of the participants throughout the fest and also serves as the complaints booth. Apart from this, our volunteers remain in contact with the participants during the fest for any possible complaints they might have. The 24 hours free shuttle service is a product of the dedicated efforts put in to make the stay of delegates and participants comfortable.\r\n\r\nThe department consists of 8 senior core members, 12 core members, 10 group leaders and 12 volunteers that form the enthusiastic work force. It requires a lot of coordination with all the departments and clubs, as well as the tender person to make the festival a success. &quot;Coming together, sharing together, working together and succeeding together&quot; is what keeps us going...'),
(17, 'Soundz', 1215, 'The Department of sounds is the branch of stage controlz(comprising lights,sounds and backstage) responsible for the handling of all the audio equipment on campus.This comprises of state-of-the-art speakers,signal processing instruments,versatile microphones,speaker management systems and digital mixing consoles.\r\n\r\nThe department handles events conducted in the auditorium by all members of the student union as well as some semi-professional and professional artists.\r\n\r\nIn closing,Sounds would like to extend its continued gratitude to the batch of 1971,BITSAA and the SU for their support and encouragement'),
(18, 'Sponsorship and Marketing', 1216, 'The Department of Sponsorship and Marketing (better known as Sponz) is a StuCCA body that works for Oasis and APOGEE. It is primarily responsible for bringing in the cash sponsorship required to organise and run the above events. Sponz also introduces many value additions such as lounges and dance floors among others. Marketing the festival in any and all means possible is also a responsibility of Sponz.\r\n\r\nInnovation is an area the department strives to improve on. Be it in terms of gift sponsorship, food stalls or even the hut that Sponz puts up during the festival – Sponz tries to add colour and class to whatever activities it carries out.\r\n\r\nWith a workforce of about 45 on-campus enthusiastic students, Sponz seeks to strike out a balance between work and fun. Thus, the department is one that is more of a close knit family than an organization. This provides a healthy working environment making it an excellent Department to be a part of.');

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE IF NOT EXISTS `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime NOT NULL,
  `user_id` int(11) NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_fbfc09f1` (`user_id`),
  KEY `django_admin_log_e4470c6e` (`content_type_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=92 ;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `user_id`, `content_type_id`, `object_id`, `object_repr`, `action_flag`, `change_message`) VALUES
(1, '2014-03-21 07:52:32', 1, 7, '1', 'ACM', 1, ''),
(2, '2014-03-21 07:53:03', 1, 7, '2', 'BITSMUN', 1, ''),
(3, '2014-03-21 07:54:00', 1, 7, '3', 'Nirmaan', 1, ''),
(4, '2014-03-21 07:54:41', 1, 7, '4', 'NSS', 1, ''),
(5, '2014-03-21 08:00:31', 1, 7, '4', 'NSS', 2, 'No fields changed.'),
(6, '2014-03-21 08:09:09', 1, 7, '10', 'Dept. of Economic and Finance', 1, ''),
(7, '2014-03-21 08:10:10', 1, 7, '11', 'Chemistry Association', 1, ''),
(8, '2014-03-21 08:10:38', 1, 7, '12', 'Mathematics Association', 1, ''),
(9, '2014-03-21 08:11:07', 1, 7, '13', 'Pharmacy Association', 1, ''),
(10, '2014-03-21 08:11:31', 1, 7, '14', 'Physics Association', 1, ''),
(28, '2014-03-21 08:21:10', 1, 9, '2', 'Art Design and Publicity', 1, ''),
(29, '2014-03-21 08:21:33', 1, 9, '3', 'AudiForce', 1, ''),
(30, '2014-03-21 08:22:03', 1, 9, '4', 'Backstage', 1, ''),
(31, '2014-03-21 08:22:23', 1, 9, '5', 'Controlz', 1, ''),
(32, '2014-03-21 08:22:48', 1, 9, '6', 'DoPy', 1, ''),
(33, '2014-03-21 08:23:38', 1, 9, '7', 'DOT', 1, ''),
(34, '2014-03-21 08:23:55', 1, 9, '8', 'DVM', 1, ''),
(35, '2014-03-21 08:24:23', 1, 9, '9', 'Firewallz', 1, ''),
(36, '2014-03-21 08:24:49', 1, 9, '10', 'Informalz', 1, ''),
(37, '2014-03-21 08:25:14', 1, 9, '11', 'Jhankar', 1, ''),
(38, '2014-03-21 08:25:41', 1, 9, '12', 'Lights', 1, ''),
(39, '2014-03-21 08:26:32', 1, 9, '14', 'Publications and Correspondence', 1, ''),
(40, '2014-03-21 08:26:54', 1, 9, '15', 'Paper Evaluation and Presentation', 1, ''),
(41, '2014-03-21 08:27:15', 1, 9, '16', 'Rec n Acc', 1, ''),
(42, '2014-03-21 08:27:37', 1, 9, '17', 'Soundz', 1, ''),
(43, '2014-03-21 08:27:58', 1, 9, '18', 'Sponsorship and Marketing', 1, ''),
(44, '2014-03-21 08:33:07', 1, 11, '1', 'ArBits', 1, ''),
(45, '2014-03-21 08:33:33', 1, 11, '2', 'AstroClub', 1, ''),
(46, '2014-03-21 08:35:35', 1, 11, '3', 'CrAC', 1, ''),
(47, '2014-03-21 08:35:50', 1, 11, '4', 'Dance Club', 1, ''),
(48, '2014-03-21 08:36:07', 1, 11, '5', 'Debating Society', 1, ''),
(49, '2014-03-21 08:36:31', 1, 11, '6', 'EDC', 1, ''),
(50, '2014-03-21 08:36:52', 1, 11, '7', 'ELAS', 1, ''),
(51, '2014-03-21 08:37:07', 1, 11, '8', 'EPC', 1, ''),
(52, '2014-03-21 08:37:27', 1, 11, '9', 'HAS', 1, ''),
(53, '2014-03-21 08:37:47', 1, 11, '10', 'HDC', 1, ''),
(54, '2014-03-21 08:38:03', 1, 11, '11', 'HPC', 1, ''),
(55, '2014-03-21 08:38:19', 1, 11, '12', 'Matrix', 1, ''),
(56, '2014-03-21 08:38:34', 1, 11, '13', 'MIMEs', 1, ''),
(57, '2014-03-21 08:38:42', 1, 11, '13', 'MIMEs', 2, 'Changed club_id.'),
(58, '2014-03-21 08:38:58', 1, 11, '14', 'Music Club', 1, ''),
(59, '2014-03-21 08:39:18', 1, 11, '15', 'Photography Club', 1, ''),
(60, '2014-03-21 08:39:34', 1, 11, '16', 'Poetry Club', 1, ''),
(61, '2014-03-21 08:39:59', 1, 11, '17', 'Ragamalika', 1, ''),
(62, '2014-03-22 13:26:02', 1, 9, '2', 'Art Design and Publicity', 2, 'Changed dept_desc.'),
(63, '2014-03-22 13:34:54', 1, 9, '4', 'Backstage', 2, 'Changed dept_desc.'),
(64, '2014-03-23 09:39:45', 1, 14, '1', '1011', 1, ''),
(65, '2014-03-23 09:56:08', 1, 14, '2', '1012', 1, ''),
(66, '2014-03-23 09:57:59', 1, 14, '1', '1011', 3, ''),
(67, '2014-03-23 09:58:05', 1, 14, '2', '1012', 3, ''),
(68, '2014-03-23 09:58:46', 1, 14, '3', '1011', 1, ''),
(69, '2014-03-23 09:59:23', 1, 14, '4', '1012', 1, ''),
(70, '2014-03-23 09:59:53', 1, 14, '5', '1013', 1, ''),
(71, '2014-03-23 10:00:18', 1, 12, '1', '1106', 1, ''),
(72, '2014-03-23 10:00:42', 1, 12, '2', '1101', 1, ''),
(73, '2014-03-23 10:01:04', 1, 12, '3', '1102', 1, ''),
(74, '2014-03-23 10:01:29', 1, 13, '1', '1201', 1, ''),
(75, '2014-03-23 10:01:51', 1, 13, '2', '1202', 1, ''),
(76, '2014-03-23 10:02:19', 1, 13, '3', '1203', 1, ''),
(77, '2014-03-23 10:03:17', 1, 14, '3', '1011', 2, 'No fields changed.'),
(78, '2014-03-23 10:41:51', 1, 14, '3', '1011', 2, 'Added assoc image "AssocImage object".'),
(79, '2014-03-23 10:42:59', 1, 14, '3', '1011', 2, 'No fields changed.'),
(80, '2014-03-23 11:10:49', 1, 12, '2', '1101', 2, 'Changed Thumbnail.'),
(81, '2014-03-23 11:43:04', 1, 14, '3', '1011', 2, 'Changed image for assoc image "AssocImage object".'),
(82, '2014-03-23 12:17:42', 1, 14, '3', '1011', 2, 'Changed Thumbnail. Deleted assoc image "AssocImage object".'),
(83, '2014-03-23 12:17:53', 1, 14, '3', '1011', 2, 'Added assoc image "AssocImage object".'),
(84, '2014-03-23 12:33:34', 1, 3, '2', '1101', 1, ''),
(85, '2014-03-23 12:35:29', 1, 3, '2', '1101', 2, 'Changed password, is_staff and user_permissions.'),
(86, '2014-03-23 12:36:22', 1, 3, '2', '1011', 2, 'Changed username and password.'),
(87, '2014-03-23 12:36:43', 1, 3, '3', '1012', 1, ''),
(88, '2014-03-23 12:37:25', 1, 3, '3', '1012', 2, 'Changed password and user_permissions.'),
(89, '2014-03-23 12:39:33', 1, 3, '3', '1012', 2, 'Changed password and is_staff.'),
(90, '2014-03-23 12:40:55', 3, 14, '6', '1012', 1, ''),
(91, '2014-04-17 12:09:58', 2, 14, '7', '1011', 1, '');

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE IF NOT EXISTS `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `app_label` (`app_label`,`model`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=18 ;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `name`, `app_label`, `model`) VALUES
(1, 'permission', 'auth', 'permission'),
(2, 'group', 'auth', 'group'),
(3, 'user', 'auth', 'user'),
(4, 'content type', 'contenttypes', 'contenttype'),
(5, 'session', 'sessions', 'session'),
(6, 'site', 'sites', 'site'),
(7, 'assoc', 'cda', 'assoc'),
(9, 'dept', 'cda', 'dept'),
(10, 'log entry', 'admin', 'logentry'),
(11, 'club', 'cda', 'club'),
(12, 'club_notice', 'notices', 'club_notice'),
(13, 'dept_ notice', 'notices', 'dept_notice'),
(14, 'assoc_ notice', 'notices', 'assoc_notice'),
(15, 'club image', 'notices', 'clubimage'),
(16, 'dept image', 'notices', 'deptimage'),
(17, 'assoc image', 'notices', 'associmage');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE IF NOT EXISTS `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_c25c2c28` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('4141aa3de0174ed6fe3e3e5c359cceef', 'NGViNWE0YWE4ZTkzYjE3ZDUxZWFhMzNiZmRlM2Q2NWZiY2VkOTk1YzqAAn1xAS4=\n', '2014-04-06 16:56:15'),
('4662738e226e876b4d70596f2b9210b6', 'YzI0NjQzZjEyMWQyN2VkYzFiMTlkYmQxM2JjYjFjYWZjMTc4ZDU4ZjqAAn1xAVUKdGVzdGNvb2tp\nZXECVQZ3b3JrZWRxA3Mu\n', '2014-04-26 21:53:41'),
('51c05050dd1bd2ffc6f2b4ddd7951b31', 'ZjQyNjk1MDJhOTEwYzM2NDgxYmM5OTE4ZjRlYWQ5YzcxNTcwY2QyNzqAAn1xAShVEl9hdXRoX3Vz\nZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHED\nVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==\n', '2014-04-05 10:59:00'),
('5f70982e9b9cf2054836a6f8b477d60b', 'NGViNWE0YWE4ZTkzYjE3ZDUxZWFhMzNiZmRlM2Q2NWZiY2VkOTk1YzqAAn1xAS4=\n', '2014-04-06 12:37:30'),
('7e89043d49a3080834d0511ebd32d5a9', 'ZjQyNjk1MDJhOTEwYzM2NDgxYmM5OTE4ZjRlYWQ5YzcxNTcwY2QyNzqAAn1xAShVEl9hdXRoX3Vz\nZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHED\nVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==\n', '2014-04-04 06:49:54'),
('a41fbc199dcc72f2f7faab59494a802c', 'ZjQyNjk1MDJhOTEwYzM2NDgxYmM5OTE4ZjRlYWQ5YzcxNTcwY2QyNzqAAn1xAShVEl9hdXRoX3Vz\nZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHED\nVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==\n', '2014-04-05 13:23:49'),
('d25e6bdd46c343d0914b601fba767c34', 'YzI0NjQzZjEyMWQyN2VkYzFiMTlkYmQxM2JjYjFjYWZjMTc4ZDU4ZjqAAn1xAVUKdGVzdGNvb2tp\nZXECVQZ3b3JrZWRxA3Mu\n', '2014-04-23 18:53:45'),
('d2c5f9856ec54cc7a5dd3ab569d0fcca', 'NGViNWE0YWE4ZTkzYjE3ZDUxZWFhMzNiZmRlM2Q2NWZiY2VkOTk1YzqAAn1xAS4=\n', '2014-04-22 14:37:16'),
('f0c3dfb38df95d1668f60c130277ae8e', 'ZWM3Nzc1MGZhNWU5MTliNzViNGU0NWQ1YjYzY2MzYWQ1MWVkN2M5YzqAAn1xAShVEl9hdXRoX3Vz\nZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHED\nVQ1fYXV0aF91c2VyX2lkcQSKAQJ1Lg==\n', '2014-05-01 12:09:34');

-- --------------------------------------------------------

--
-- Table structure for table `django_site`
--

CREATE TABLE IF NOT EXISTS `django_site` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `domain` varchar(100) NOT NULL,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `django_site`
--

INSERT INTO `django_site` (`id`, `domain`, `name`) VALUES
(1, 'example.com', 'example.com');

-- --------------------------------------------------------

--
-- Table structure for table `notices_associmage`
--

CREATE TABLE IF NOT EXISTS `notices_associmage` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Assoc_Notice_id` int(11) NOT NULL,
  `image` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `notices_associmage_8895c378` (`Assoc_Notice_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `notices_associmage`
--

INSERT INTO `notices_associmage` (`id`, `Assoc_Notice_id`, `image`) VALUES
(2, 3, '/home/kapil/django/su/static/images/notices/assocs/1.jpeg'),
(3, 6, '/home/kapil/django/su/static/images/notices/assocs/2.jpg'),
(4, 7, '/home/kapil/django/su/static/images/notices/assocs/3.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `notices_assoc_notice`
--

CREATE TABLE IF NOT EXISTS `notices_assoc_notice` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Assoc_id` int(11) NOT NULL,
  `Thumbnail` varchar(50) NOT NULL,
  `Oneliner` varchar(256) NOT NULL,
  `Poster` varchar(50) NOT NULL,
  `Added_comment` varchar(128) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `Thumbnail` (`Thumbnail`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `notices_assoc_notice`
--

INSERT INTO `notices_assoc_notice` (`id`, `Assoc_id`, `Thumbnail`, `Oneliner`, `Poster`, `Added_comment`) VALUES
(3, 1011, '1', 'ACM', 'no', 'no'),
(6, 1012, '2', 'hello', 'jkj', 'jkjk'),
(7, 1011, '3', 'flower', 'ji', 'ji');

-- --------------------------------------------------------

--
-- Table structure for table `notices_clubimage`
--

CREATE TABLE IF NOT EXISTS `notices_clubimage` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `club_notice_id` int(11) NOT NULL,
  `image` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `notices_clubimage_a8eb0588` (`club_notice_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `notices_club_notice`
--

CREATE TABLE IF NOT EXISTS `notices_club_notice` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Club_id` int(11) NOT NULL,
  `Thumbnail` varchar(50) NOT NULL,
  `Oneliner` varchar(256) NOT NULL,
  `Poster` varchar(50) NOT NULL,
  `Added_comment` varchar(128) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `Thumbnail` (`Thumbnail`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `notices_club_notice`
--

INSERT INTO `notices_club_notice` (`id`, `Club_id`, `Thumbnail`, `Oneliner`, `Poster`, `Added_comment`) VALUES
(1, 1106, 'j', 'EDC', 'ml', 'ml');

-- --------------------------------------------------------

--
-- Table structure for table `notices_deptimage`
--

CREATE TABLE IF NOT EXISTS `notices_deptimage` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Dept_Notice_id` int(11) NOT NULL,
  `image` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `notices_deptimage_312d96e1` (`Dept_Notice_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `notices_dept_notice`
--

CREATE TABLE IF NOT EXISTS `notices_dept_notice` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Dept_id` int(11) NOT NULL,
  `Thumbnail` varchar(50) NOT NULL,
  `Oneliner` varchar(256) NOT NULL,
  `Poster` varchar(50) NOT NULL,
  `Added_comment` varchar(128) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `Thumbnail` (`Thumbnail`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `notices_dept_notice`
--

INSERT INTO `notices_dept_notice` (`id`, `Dept_id`, `Thumbnail`, `Oneliner`, `Poster`, `Added_comment`) VALUES
(1, 1201, 'kjbbk', 'ADP', 'nj', 'nkj'),
(2, 1202, 'kj', 'AUDIFORCE', 'bkvbk', 'bkjbk'),
(3, 1203, 'buig', 'BACKSTAGE', ' jh hj b', 'vjhvj');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `group_id_refs_id_3cea63fe` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `permission_id_refs_id_a7792de1` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `content_type_id_refs_id_728de91f` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `group_id_refs_id_f0ee9890` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `user_id_refs_id_831107f1` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `permission_id_refs_id_67e79cb` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `user_id_refs_id_f2045483` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `content_type_id_refs_id_288599e6` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `user_id_refs_id_c8665aa` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `notices_associmage`
--
ALTER TABLE `notices_associmage`
  ADD CONSTRAINT `Assoc_Notice_id_refs_id_f085c2eb` FOREIGN KEY (`Assoc_Notice_id`) REFERENCES `notices_assoc_notice` (`id`);

--
-- Constraints for table `notices_clubimage`
--
ALTER TABLE `notices_clubimage`
  ADD CONSTRAINT `club_notice_id_refs_id_4b99bd03` FOREIGN KEY (`club_notice_id`) REFERENCES `notices_club_notice` (`id`);

--
-- Constraints for table `notices_deptimage`
--
ALTER TABLE `notices_deptimage`
  ADD CONSTRAINT `Dept_Notice_id_refs_id_8db36a97` FOREIGN KEY (`Dept_Notice_id`) REFERENCES `notices_dept_notice` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
