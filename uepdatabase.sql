-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 07, 2025 at 06:39 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `uep`
--

-- --------------------------------------------------------

--
-- Table structure for table `certificate_courses`
--

CREATE TABLE `certificate_courses` (
  `sid` int(3) NOT NULL,
  `courses` varchar(25) NOT NULL,
  `student_enrolled` int(3) NOT NULL,
  `faculties_offering` int(3) NOT NULL,
  `year_column` year(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `consultancy`
--

CREATE TABLE `consultancy` (
  `sid` int(3) NOT NULL,
  `faculties_involved` int(3) NOT NULL,
  `total_no_of_consultancies` int(3) NOT NULL,
  `total_no_of_beneficiaries` int(3) NOT NULL,
  `revenue_generated` int(9) NOT NULL,
  `year_column` year(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mous`
--

CREATE TABLE `mous` (
  `sid` int(3) NOT NULL,
  `mous` int(3) NOT NULL,
  `total_no_of_instiution` int(3) NOT NULL,
  `total_no_of_industry` int(3) NOT NULL,
  `total_no_of_corporate_house` int(3) NOT NULL,
  `total_no_of_national` int(3) NOT NULL,
  `total_no_of_international` int(3) NOT NULL,
  `no_of_activities_in_associated_with_mous` int(3) NOT NULL,
  `year_column` year(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `phd`
--

CREATE TABLE `phd` (
  `sid` int(3) NOT NULL,
  `research_guides` varchar(30) NOT NULL,
  `total_no_of_intake` int(3) NOT NULL,
  `total_no_of_admitted` int(3) NOT NULL,
  `total_no_of_part_time` int(3) NOT NULL,
  `total_no_of_full_time` int(3) NOT NULL,
  `year_column` year(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `placement_and_highereducation`
--

CREATE TABLE `placement_and_highereducation` (
  `sid` int(3) NOT NULL,
  `graduating` int(3) NOT NULL,
  `placed` int(3) NOT NULL,
  `higher_education` int(3) NOT NULL,
  `link_of_details` int(3) NOT NULL,
  `year_column` year(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `research`
--

CREATE TABLE `research` (
  `sid` int(3) NOT NULL,
  `scopus` int(3) NOT NULL,
  `wos` int(3) NOT NULL,
  `total_no_of_ugc_care` int(3) NOT NULL,
  `total_no_of_h_index` int(3) NOT NULL,
  `total_no_of_citation` int(3) NOT NULL,
  `total_no_of_awards` int(3) NOT NULL,
  `total_no_of_books_chapter_published` int(3) NOT NULL,
  `total_no_of_paper_published` int(3) NOT NULL,
  `total_no_of_link_research` int(3) NOT NULL,
  `year_column` year(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `research_projects`
--

CREATE TABLE `research_projects` (
  `sid` int(3) NOT NULL,
  `faculties_involved` int(3) NOT NULL,
  `projects` int(3) NOT NULL,
  `amount` int(9) NOT NULL,
  `government_category` int(3) NOT NULL,
  `total_amount_for_government_category` int(9) NOT NULL,
  `non_government_category` int(3) NOT NULL,
  `total_amount_for_non_government_category` int(9) NOT NULL,
  `mjes` int(3) NOT NULL,
  `total_amount_for_mjes` int(9) NOT NULL,
  `year_column` year(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `school_activites`
--

CREATE TABLE `school_activites` (
  `sid` int(3) NOT NULL,
  `no_of_guest_talk` int(3) NOT NULL,
  `no_of_alumni_interaction` int(3) NOT NULL,
  `no_of_industrial_visit` int(3) NOT NULL,
  `no_of_study_tour` int(3) NOT NULL,
  `no_of_fests` int(3) NOT NULL,
  `no_of_fpd` int(3) NOT NULL,
  `no_of_mdp` int(3) NOT NULL,
  `no_of_conferences` int(3) NOT NULL,
  `no_of_workshop` int(3) NOT NULL,
  `no_of_national_seminars` int(3) NOT NULL,
  `no_of_international_seminars` int(3) NOT NULL,
  `seminars_related_to_intellectual_property_rights` int(3) NOT NULL,
  `research_methodology` int(3) NOT NULL,
  `entrepreneurship` int(3) NOT NULL,
  `skill_development` int(3) NOT NULL,
  `year_column` year(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `school_profile`
--

CREATE TABLE `school_profile` (
  `sid` int(3) NOT NULL,
  `school_name` varchar(35) NOT NULL,
  `no_of_faculties` int(3) GENERATED ALWAYS AS (`total_no_of_associate_professor` + `total_no_of_assistant_professor` + `total_no_of_professor_of_practice`) STORED,
  `no_of_phd` int(3) NOT NULL,
  `no_of_net_kset` int(3) NOT NULL,
  `no_of_without_phd_kset_net` int(3) NOT NULL,
  `no_of_pursuing_phd` int(3) NOT NULL,
  `total_no_of_associate_professor` int(3) NOT NULL,
  `total_no_of_assistant_professor` int(3) NOT NULL,
  `total_no_of_professor_of_practice` int(3) NOT NULL,
  `year_column` year(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `school_programmes_and_courses`
--

CREATE TABLE `school_programmes_and_courses` (
  `sid` int(3) NOT NULL,
  `sname` varchar(35) NOT NULL,
  `total_no_of_programs_4years` int(3) NOT NULL,
  `total_no_of_programs_3years` int(3) NOT NULL,
  `total_no_of_programs_pg` int(3) NOT NULL,
  `total_no_of_certificate_courses` int(3) NOT NULL,
  `total_no_of_diploma_courses` int(3) NOT NULL,
  `year_column` year(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `staff_achievements`
--

CREATE TABLE `staff_achievements` (
  `sid` int(3) NOT NULL,
  `resource_person` varchar(25) NOT NULL,
  `attended_seminars` int(3) NOT NULL,
  `total_no_of_faculties_workshop` int(3) NOT NULL,
  `kset_net` int(3) NOT NULL,
  `mmttp` int(3) NOT NULL,
  `staff_induction` int(3) NOT NULL,
  `mooc` int(3) NOT NULL,
  `link_of_the_document` int(3) NOT NULL,
  `year_column` year(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `staff_profile`
--

CREATE TABLE `staff_profile` (
  `sid` int(3) DEFAULT NULL,
  `staff_id` int(3) NOT NULL,
  `total_years_of_experience` int(2) NOT NULL,
  `qualification` varchar(25) NOT NULL,
  `year_column` year(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `student_achievement`
--

CREATE TABLE `student_achievement` (
  `sid` int(3) NOT NULL,
  `cleard_competitive_exam` int(3) NOT NULL,
  `paper_presentation` int(3) NOT NULL,
  `total_no_of_paper_publication` int(3) NOT NULL,
  `events_outside_college` int(3) NOT NULL,
  `year_column` year(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `student_intake`
--

CREATE TABLE `student_intake` (
  `sid` int(3) NOT NULL,
  `intake_for_the_year` int(3) NOT NULL,
  `student_strength` int(3) NOT NULL,
  `drop_out_for_the_year` int(3) NOT NULL,
  `male` int(3) NOT NULL,
  `female` int(3) NOT NULL,
  `outside_state` int(3) NOT NULL,
  `within_state` int(3) NOT NULL,
  `foreign_state` int(3) NOT NULL,
  `link_of_the_details` int(3) NOT NULL,
  `year_column` year(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `certificate_courses`
--
ALTER TABLE `certificate_courses`
  ADD PRIMARY KEY (`sid`);

--
-- Indexes for table `consultancy`
--
ALTER TABLE `consultancy`
  ADD PRIMARY KEY (`sid`);

--
-- Indexes for table `mous`
--
ALTER TABLE `mous`
  ADD PRIMARY KEY (`sid`);

--
-- Indexes for table `phd`
--
ALTER TABLE `phd`
  ADD PRIMARY KEY (`sid`);

--
-- Indexes for table `placement_and_highereducation`
--
ALTER TABLE `placement_and_highereducation`
  ADD PRIMARY KEY (`sid`);

--
-- Indexes for table `research`
--
ALTER TABLE `research`
  ADD PRIMARY KEY (`sid`);

--
-- Indexes for table `research_projects`
--
ALTER TABLE `research_projects`
  ADD PRIMARY KEY (`sid`);

--
-- Indexes for table `school_activites`
--
ALTER TABLE `school_activites`
  ADD PRIMARY KEY (`sid`);

--
-- Indexes for table `school_profile`
--
ALTER TABLE `school_profile`
  ADD PRIMARY KEY (`sid`);

--
-- Indexes for table `school_programmes_and_courses`
--
ALTER TABLE `school_programmes_and_courses`
  ADD PRIMARY KEY (`sid`);

--
-- Indexes for table `staff_achievements`
--
ALTER TABLE `staff_achievements`
  ADD PRIMARY KEY (`sid`);

--
-- Indexes for table `staff_profile`
--
ALTER TABLE `staff_profile`
  ADD PRIMARY KEY (`staff_id`),
  ADD KEY `sid` (`sid`);

--
-- Indexes for table `student_achievement`
--
ALTER TABLE `student_achievement`
  ADD PRIMARY KEY (`sid`);

--
-- Indexes for table `student_intake`
--
ALTER TABLE `student_intake`
  ADD PRIMARY KEY (`sid`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `phd`
--
ALTER TABLE `phd`
  ADD CONSTRAINT `phd_ibfk_1` FOREIGN KEY (`sid`) REFERENCES `school_profile` (`sid`);

--
-- Constraints for table `research`
--
ALTER TABLE `research`
  ADD CONSTRAINT `research_ibfk_1` FOREIGN KEY (`sid`) REFERENCES `school_profile` (`sid`);

--
-- Constraints for table `staff_profile`
--
ALTER TABLE `staff_profile`
  ADD CONSTRAINT `staff_profile_ibfk_1` FOREIGN KEY (`sid`) REFERENCES `school_profile` (`sid`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
