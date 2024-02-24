SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

--
-- Database: `db_contact`
--

-- --------------------------------------------------------

--
-- Table structure for table `student_record`
--

CREATE TABLE `student_record` (
  `id` int(11) NOT NULL,
  `fname` varchar(128) NOT NULL,
  `lname` varchar(128) NOT NULL,
  `phone` varchar(128) NOT NULL,
  `email` varchar(255) NOT NULL,
  `gender` enum('Female','Male','Other','') NOT NULL,
  `city` varchar(255) NOT NULL,
  `qualification` varchar(255) NOT NULL,
  `course` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `talent` text NOT NULL,
  `message` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `student_record`
--

INSERT INTO `student_record` (`id`, `fname`, `lname`, `phone`, `email`, `gender`, `city`, `qualification`, `course`, `address`, `talent`, `message`) VALUES
(1, '', '', '', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Indexes for table `student_record`
--
ALTER TABLE `student_record`
  ADD PRIMARY KEY (`id`);

-- AUTO_INCREMENT for table `student_record`
--
ALTER TABLE `student_record`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;