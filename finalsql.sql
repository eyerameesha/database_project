create database project;
use project;

-- ------------------------------------------------------------------------------------------
-- --- -----------------------------BBAFACULTY-----------------------------------------------
-- ------------------------------------------------------------------------------------------
--

DROP TABLE IF EXISTS `bbacourses`;


CREATE TABLE `bbacourses` (
  `CourseCode` varchar(10) NOT NULL,
  `Title` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`CourseCode`)
) ;


INSERT INTO `bbacourses` VALUES 
('SE101','Software Engineering Principles'),
('SE202','Web Development'),
('SE303','Calculus'),
('SE404','Object oriented'),
('SE505','Data Structure & Algorithm');

select * from bbacourses;



-- Table structure for table `bbafaculty`
--

DROP TABLE IF EXISTS `bbafaculty`;

CREATE TABLE `bbafaculty` (
  `Name` varchar(50) NOT NULL,
  `Designation` varchar(50) DEFAULT NULL,
  `Email` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`Name`)
) ;

insert into bbafaculty values('Professor C','prof.c@example.com','BBA Department');
SELECT * FROM bbafaculty;
-- ---------------------------------------------------------------------------------------
-- ----------------------------------CS COURSE--------------------------------------------
-- ---------------------------------------------------------------------------------------

--
-- Table structure for table `cscourses`
--

DROP TABLE IF EXISTS `cscourses`;

CREATE TABLE `cscourses` (
  `CourseCode` varchar(10) NOT NULL,
  `Title` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`CourseCode`)
) ;


INSERT INTO `cscourses` 
VALUES ('CS101','Introduction to Computer Science'),
	   ('CS201','Data Structures and Algorithms');


-- ---------------------------------------------------------------------------------------
-- -----------------------------------CS FACULTY------------------------------------------
-- ---------------------------------------------------------------------------------------
--
-- Table structure for table `csfaculty`
--

DROP TABLE IF EXISTS `csfaculty`;

CREATE TABLE `csfaculty` (
  `Name` varchar(50) NOT NULL,
  `Designation` varchar(50) DEFAULT NULL,
  `Email` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`Name`)
) ;
--
-- Dumping data for table `csfaculty`
--


INSERT INTO `csfaculty` VALUES 
('Faculty C','Associate Professor','faculty.c@example.com'),
('Faculty D','Professor','faculty.d@example.com');


-- -----------------------------------------------------------------------------------
-- -----------------------------------DEPARTMENT--------------------------------------
-- -----------------------------------------------------------------------------------

-- Table structure for table `departments`

DROP TABLE IF EXISTS `departments`;


CREATE TABLE `departments` (
  `DepartmentCode` varchar(10) NOT NULL,
  `DepartmentName` varchar(50) DEFAULT NULL,
  `HODName` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`DepartmentCode`)
) ;
-- Dumping data for table `departments`
--


INSERT INTO `departments` VALUES 
('CS','Computer Science','Sir Tawa'),
('SE','Software Engineering','Sir Khubaib'),
('BBA','Bachelor of Business Adminitrator','Miss Raazia'),
('IR','International Relation','Miss Urooba'),
('PS','Psychology','Sir Arif');

select * from departments;





-- ----------------------------------------------------------------------------------------
-- --------------------------------------IR COURSES----------------------------------------
-- ----------------------------------------------------------------------------------------

--
-- Table structure for table `ircourses`
--

DROP TABLE IF EXISTS `ircourses`;


CREATE TABLE `ircourses` (
  `CourseCode` varchar(10) NOT NULL,
  `Title` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`CourseCode`)
) ;
-- Dumping data for table `ircourses`

INSERT INTO `ircourses` VALUES 
('SE101','Software Engineering Principles'),
('SE202','Web Development');


-- ----------------------------------------------------------------------------------------
-- --------------------------------------IR FACULTY----------------------------------------
-- ----------------------------------------------------------------------------------------

--
-- Table structure for table `irfaculty`
--

DROP TABLE IF EXISTS `irfaculty`;

CREATE TABLE `irfaculty` (
  `Name` varchar(50) NOT NULL,
  `Designation` varchar(50) DEFAULT NULL,
  `Email` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`Name`)
) ;

--
-- Dumping data for table `irfaculty`
--

insert into irfaculty values
();

-- ----------------------------------------------------------------------------------------
-- --------------------------------------PROGRAMS------------------------------------------
-- ----------------------------------------------------------------------------------------

--
-- Table structure for table `programs`
--

DROP TABLE IF EXISTS `programs`;

CREATE TABLE `programs` (
  `Title` varchar(10) NOT NULL,
  `Name` varchar(50) DEFAULT NULL,
  `Duration` int DEFAULT NULL,
  `Department` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`Title`)
) ;

--
-- Dumping data for table `programs`
--

INSERT INTO `programs` VALUES 
('BS_CS','Bachelor of Science in Computer Science',4,'CS'),
('BS_SEC','Bachelor of Science in Software Engineering',4,'SE');



-- ----------------------------------------------------------------------------------------
-- --------------------------------------PS COURSESE---------------------------------------
-- ----------------------------------------------------------------------------------------

--
-- Table structure for table `pscourses`
--

DROP TABLE IF EXISTS `pscourses`;

CREATE TABLE `pscourses` (
  `CourseCode` varchar(10) NOT NULL,
  `Title` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`CourseCode`)
) ;

--
-- Dumping data for table `pscourses`
--

INSERT INTO `pscourses` VALUES 
('CS101','Introduction to Computer Science'),
('CS201','Data Structures and Algorithms');



-- ----------------------------------------------------------------------------------------
-- --------------------------------------PS FACULTY----------------------------------------
-- ----------------------------------------------------------------------------------------

--
-- Table structure for table `psfaculty`
--

DROP TABLE IF EXISTS `psfaculty`;

CREATE TABLE `psfaculty` (
  `Name` varchar(50) NOT NULL,
  `Designation` varchar(50) DEFAULT NULL,
  `Email` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`Name`)
) ;



-- ----------------------------------------------------------------------------------------
-- --------------------------------------SE COURSES----------------------------------------
-- ----------------------------------------------------------------------------------------

--
-- Table structure for table `secourses`
--

DROP TABLE IF EXISTS `secourses`;

CREATE TABLE `secourses` (
  `CourseCode` varchar(10) NOT NULL,
  `Title` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`CourseCode`)
) ;

--
-- Dumping data for table `secourses`
--

INSERT INTO `secourses` VALUES 
('SE101','Software Engineering Principles'),
('SE202','Web Development');



-- ----------------------------------------------------------------------------------------
-- --------------------------------------SE FACULTY----------------------------------------
-- ----------------------------------------------------------------------------------------


--
-- Table structure for table `sefaculty`
--

DROP TABLE IF EXISTS `sefaculty`;

CREATE TABLE `sefaculty` (
  `Name` varchar(50) NOT NULL,
  `Designation` varchar(50) DEFAULT NULL,
  `Email` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`Name`)
);

--
-- Dumping data for table `sefaculty`
--

INSERT INTO `sefaculty` VALUES 
('Faculty A','Professor','faculty.a@example.com'),
('Faculty B','Assistant Professor','faculty.b@example.com'),
('Faculty C','Assistant Professor','faculty.b@example.com'),
('Faculty D','Assistant Professor','faculty.b@example.com'),
('Faculty E','Assistant Professor','faculty.b@example.com');


select * from sefaculty;


-- ----------------------------------------------------------------------------------------
-- -------------------------------------STUDENT DETAIL----------------------------------------
-- ----------------------------------------------------------------------------------------

--
-- Table structure for table `studentdetails`
--

DROP TABLE IF EXISTS `studentdetails`;


CREATE TABLE `studentdetails` (
  `StudentID` int NOT NULL,
  `FirstName` varchar(50) DEFAULT NULL,
  `LastName` varchar(50) DEFAULT NULL,
  `FatherName` varchar(50) DEFAULT NULL,
  `CNIC` varchar(15) DEFAULT NULL,
  `Gender` varchar(10) DEFAULT NULL,
  `PhoneNumber` varchar(15) DEFAULT NULL,
  `DateOfBirth` date DEFAULT NULL,
  `Address` varchar(100) DEFAULT NULL,
  `Email` varchar(100) DEFAULT NULL,
  `Program` varchar(50) DEFAULT NULL,
  `AdmissionYear` int DEFAULT NULL,
  `Semester` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`StudentID`)
);

--
-- Dumping data for table `studentdetails`
--

INSERT INTO `studentdetails` VALUES 
(1,'John','Doe','Doe Sr.','123456789','Male','1234567890','1990-01-01','123 Main St','john.doe@example.com','BS_CS',2020,'Fall'),
(2,'Jane','Smith','Smith Sr.','987654321','Female','9876543210','1992-05-10','456 Elm St','jane.smith@example.com','BS_SEC',2019,'Spring'),
(3,'Ahmed','Khan','Moin khan ','2439643783','Male','723696498363','1993-06-12','457 Gulsion St','ahmedkhan@example.com','BS_BBA',2018,'Fall'),
(4,'Hira','Bhutt','Faraz Bhutt ','86437343783','Female','89746498363','1994-07-22','789 Korangi St','hiranbhutt@example.com','BS_CS',2020,'Fall'),
(5,'Alina','Owais','Muhammad Owais','45378733783','Female','332152498363','1995-09-25','321 Mehran St','alinaowais@example.com','BS_BBA',2018,'Spring');


select * from studentdetails;


-- ---------------------------------------------------------------------------------------
-- -----------------------------------FACULTY DETAIL--------------------------------------
-- ---------------------------------------------------------------------------------------

-- Table structure for table `facultydetails`

DROP TABLE IF EXISTS `facultydetails`;

CREATE TABLE facultydetails (
  `FacultyID` int NOT NULL,
  `Name` varchar(50) DEFAULT NULL,
  `CNIC` varchar(15) DEFAULT NULL,
  `PhoneNumber` varchar(15) DEFAULT NULL,
  `Email` varchar(100) DEFAULT NULL,
  `Department` varchar(50) DEFAULT NULL,
  `HiringDate` date DEFAULT NULL,
  `Designation` varchar(50) DEFAULT NULL,
  `Salary` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`FacultyID`)
);

--
-- Dumping data for table `facultydetails`
--

INSERT INTO facultydetails VALUES 
(1,'Professor A','111111111','3754384','prof.a@example.com','CS Department','2010-01-01','Professor',100000.00),
(2,'Professor B','222222222','673647342','prof.b@example.com','SE Department','2012-03-15','Associate Professor',80000.00),
(3,'Professor C','333333333','8345374844','prof.c@example.com','BBA Department','2010-01-01','Professor',100000.00),
(4,'Professor D','444444444','83647834734','prof.d@example.com','IR Department','2010-01-01','Professor',100000.00),
(5,'Professor E','555555555','8752873547','prof.e@example.com','PS Department','2010-01-01','Professor',100000.00);

select * from facultydetails;

