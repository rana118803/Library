<<<<<<< HEAD
CREATE TABLE admin (
  [id] int NOT NULL,
  [FullName] varchar(100) DEFAULT NULL,
  [AdminEmail] varchar(120) DEFAULT NULL,
  [UserName] varchar(100) NOT NULL,
  [Password] varchar(100) NOT NULL,
  [updationDate] datetime2(0) NOT NULL DEFAULT '0000-00-00 00:00:00' 
) ;

--
-- Dumping data for table admin
--

INSERT INTO admin ([id], [FullName], [AdminEmail], [UserName], [Password], [updationDate]) VALUES
(2, 'Clive Dela Cruz', 'clive@yahoo.com', 'admin', '1', '2019-04-11 13:56:38');

-- --------------------------------------------------------

--
-- Table structure for table tblauthors
--

CREATE TABLE tblauthors (
  [id] int NOT NULL ,
  [AuthorName] varchar(159) DEFAULT NULL,
  [creationDate] datetime2(0) NULL DEFAULT GETDATE(),
  [UpdationDate] datetime2(0) NULL DEFAULT NULL 
) ;

--
-- Dumping data for table tblauthors
--

INSERT INTO tblauthors ([id], [AuthorName], [creationDate], [UpdationDate]) VALUES
(1, 'Anuj kumar', '2017-07-08 12:49:09', '2017-07-08 15:16:59'),
(2, 'Chetan Bhagatt', '2017-07-08 14:30:23', '2017-07-08 15:15:09'),
(3, 'Anita Desai', '2017-07-08 14:35:08', NULL),
(4, 'HC Verma', '2017-07-08 14:35:21', NULL),
(5, 'R.D. Sharma ', '2017-07-08 14:35:36', NULL),
(9, 'fwdfrwer', '2017-07-08 15:22:03', NULL);

-- --------------------------------------------------------

--
-- Table structure for table tblbooks
--

CREATE TABLE tblbooks (
  [id] int NOT NULL,
  [BookName] varchar(255) DEFAULT NULL,
  [CatId] int DEFAULT NULL,
  [AuthorId] int DEFAULT NULL,
  [ISBNNumber] int DEFAULT NULL,
  [BookPrice] int DEFAULT NULL,
  [RegDate] datetime2(0) NULL DEFAULT GETDATE(),
  [UpdationDate] datetime2(0) NULL DEFAULT NULL 
) ;

--
-- Dumping data for table tblbooks
--

INSERT INTO tblbooks ([id], [BookName], [CatId], [AuthorId], [ISBNNumber], [BookPrice], [RegDate], [UpdationDate]) VALUES
(1, 'PHP And MySql programming', 5, 1, 222333, 20, '2017-07-08 20:04:55', '2017-07-15 05:54:41'),
(3, 'physics', 6, 4, 1111, 15, '2017-07-08 20:17:31', '2017-07-15 06:13:17');

-- --------------------------------------------------------

--
-- Table structure for table tblcategory
--

CREATE TABLE tblcategory (
  [id] int NOT NULL,
  [CategoryName] varchar(150) DEFAULT NULL,
  [Status] int DEFAULT NULL,
  [CreationDate] datetime2(0) NULL DEFAULT GETDATE(),
  [UpdationDate] datetime2(0) NULL DEFAULT '0000-00-00 00:00:00' 
) ;

--
-- Dumping data for table tblcategory
--

INSERT INTO tblcategory ([id], [CategoryName], [Status], [CreationDate], [UpdationDate]) VALUES
(4, 'Romantic', 1, '2017-07-04 18:35:25', '2017-07-06 16:00:42'),
(5, 'Technology', 1, '2017-07-04 18:35:39', '2017-07-08 17:13:03'),
(6, 'Science', 1, '2017-07-04 18:35:55', '0000-00-00 00:00:00'),
(7, 'Management', 0, '2017-07-04 18:36:16', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table tblissuedbookdetails
--

CREATE TABLE tblissuedbookdetails (
  [id] int NOT NULL,
  [BookId] int DEFAULT NULL,
  [StudentID] varchar(150) DEFAULT NULL,
  [IssuesDate] datetime2(0) NULL DEFAULT GETDATE(),
  [ReturnDate] datetime2(0) NULL DEFAULT NULL,
  [RetrunStatus] int DEFAULT NULL,
  [fine] int DEFAULT NULL
) ;

--
-- Dumping data for table tblissuedbookdetails
--

INSERT INTO tblissuedbookdetails ([id], [BookId], [StudentID], [IssuesDate], [ReturnDate], [RetrunStatus], [fine]) VALUES
(1, 1, 'SID002', '2017-07-15 06:09:47', '2017-07-15 11:15:20', 1, 0),
(2, 1, 'SID002', '2017-07-15 06:12:27', '2017-07-15 11:15:23', 1, 5),
(3, 3, 'SID002', '2017-07-15 06:13:40', NULL, 0, NULL),
(4, 3, 'SID002', '2017-07-15 06:23:23', '2017-07-15 11:22:29', 1, 2),
(5, 1, 'SID009', '2017-07-15 10:59:26', NULL, 0, NULL),
(6, 3, 'SID011', '2017-07-15 18:02:55', NULL, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table tblstudents
--

CREATE TABLE tblstudents (
  [id] int NOT NULL,
  [StudentId] varchar(100) DEFAULT NULL,
  [FullName] varchar(120) DEFAULT NULL,
  [EmailId] varchar(120) DEFAULT NULL,
  [MobileNumber] char(11) DEFAULT NULL,
  [Password] varchar(120) DEFAULT NULL,
  [Status] int DEFAULT NULL,
  [RegDate] datetime2(0) NULL DEFAULT GETDATE(),
  [UpdationDate] datetime2(0) NULL DEFAULT NULL 
) ;

--
-- Dumping data for table tblstudents
--

INSERT INTO tblstudents ([id], [StudentId], [FullName], [EmailId], [MobileNumber], [Password], [Status], [RegDate], [UpdationDate]) VALUES
(1, 'SID002', 'Andrew Braza', 'andrew1@gmail.com', '9865472555', 'f925916e2754e5e03f75dd58a5733251', 1, '2017-07-11 15:37:05', '2019-04-11 14:11:39'),
(4, 'SID005', 'John Roberts', 'john@yahoo.com', '8569710025', '92228410fc8b872914e023160cf4ae8f', 0, '2017-07-11 15:41:27', '2019-04-11 14:12:04'),
(9, 'SID010', 'Rey Tejada', 'rey@gmail.com', '8585856224', 'f925916e2754e5e03f75dd58a5733251', 1, '2017-07-15 13:40:30', '2019-04-11 14:12:27'),
(10, 'SID011', 'Clide Louie', 'CLIDE@gmail.com', '4672423754', 'f925916e2754e5e03f75dd58a5733251', 1, '2017-07-15 18:00:59','2019-04-11 14:12:27')


=======
CREATE TABLE admin (
  [id] int NOT NULL,
  [FullName] varchar(100) DEFAULT NULL,
  [AdminEmail] varchar(120) DEFAULT NULL,
  [UserName] varchar(100) NOT NULL,
  [Password] varchar(100) NOT NULL,
  [updationDate] datetime2(0) NOT NULL DEFAULT '0000-00-00 00:00:00' 
) ;

--
-- Dumping data for table admin
--

INSERT INTO admin ([id], [FullName], [AdminEmail], [UserName], [Password], [updationDate]) VALUES
(2, 'Clive Dela Cruz', 'clive@yahoo.com', 'admin', '1', '2019-04-11 13:56:38');

-- --------------------------------------------------------

--
-- Table structure for table tblauthors
--

CREATE TABLE tblauthors (
  [id] int NOT NULL ,
  [AuthorName] varchar(159) DEFAULT NULL,
  [creationDate] datetime2(0) NULL DEFAULT GETDATE(),
  [UpdationDate] datetime2(0) NULL DEFAULT NULL 
) ;

--
-- Dumping data for table tblauthors
--

INSERT INTO tblauthors ([id], [AuthorName], [creationDate], [UpdationDate]) VALUES
(1, 'Anuj kumar', '2017-07-08 12:49:09', '2017-07-08 15:16:59'),
(2, 'Chetan Bhagatt', '2017-07-08 14:30:23', '2017-07-08 15:15:09'),
(3, 'Anita Desai', '2017-07-08 14:35:08', NULL),
(4, 'HC Verma', '2017-07-08 14:35:21', NULL),
(5, 'R.D. Sharma ', '2017-07-08 14:35:36', NULL),
(9, 'fwdfrwer', '2017-07-08 15:22:03', NULL);

-- --------------------------------------------------------

--
-- Table structure for table tblbooks
--

CREATE TABLE tblbooks (
  [id] int NOT NULL,
  [BookName] varchar(255) DEFAULT NULL,
  [CatId] int DEFAULT NULL,
  [AuthorId] int DEFAULT NULL,
  [ISBNNumber] int DEFAULT NULL,
  [BookPrice] int DEFAULT NULL,
  [RegDate] datetime2(0) NULL DEFAULT GETDATE(),
  [UpdationDate] datetime2(0) NULL DEFAULT NULL 
) ;

--
-- Dumping data for table tblbooks
--

INSERT INTO tblbooks ([id], [BookName], [CatId], [AuthorId], [ISBNNumber], [BookPrice], [RegDate], [UpdationDate]) VALUES
(1, 'PHP And MySql programming', 5, 1, 222333, 20, '2017-07-08 20:04:55', '2017-07-15 05:54:41'),
(3, 'physics', 6, 4, 1111, 15, '2017-07-08 20:17:31', '2017-07-15 06:13:17');

-- --------------------------------------------------------

--
-- Table structure for table tblcategory
--

CREATE TABLE tblcategory (
  [id] int NOT NULL,
  [CategoryName] varchar(150) DEFAULT NULL,
  [Status] int DEFAULT NULL,
  [CreationDate] datetime2(0) NULL DEFAULT GETDATE(),
  [UpdationDate] datetime2(0) NULL DEFAULT '0000-00-00 00:00:00' 
) ;

--
-- Dumping data for table tblcategory
--

INSERT INTO tblcategory ([id], [CategoryName], [Status], [CreationDate], [UpdationDate]) VALUES
(4, 'Romantic', 1, '2017-07-04 18:35:25', '2017-07-06 16:00:42'),
(5, 'Technology', 1, '2017-07-04 18:35:39', '2017-07-08 17:13:03'),
(6, 'Science', 1, '2017-07-04 18:35:55', '0000-00-00 00:00:00'),
(7, 'Management', 0, '2017-07-04 18:36:16', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table tblissuedbookdetails
--

CREATE TABLE tblissuedbookdetails (
  [id] int NOT NULL,
  [BookId] int DEFAULT NULL,
  [StudentID] varchar(150) DEFAULT NULL,
  [IssuesDate] datetime2(0) NULL DEFAULT GETDATE(),
  [ReturnDate] datetime2(0) NULL DEFAULT NULL,
  [RetrunStatus] int DEFAULT NULL,
  [fine] int DEFAULT NULL
) ;

--
-- Dumping data for table tblissuedbookdetails
--

INSERT INTO tblissuedbookdetails ([id], [BookId], [StudentID], [IssuesDate], [ReturnDate], [RetrunStatus], [fine]) VALUES
(1, 1, 'SID002', '2017-07-15 06:09:47', '2017-07-15 11:15:20', 1, 0),
(2, 1, 'SID002', '2017-07-15 06:12:27', '2017-07-15 11:15:23', 1, 5),
(3, 3, 'SID002', '2017-07-15 06:13:40', NULL, 0, NULL),
(4, 3, 'SID002', '2017-07-15 06:23:23', '2017-07-15 11:22:29', 1, 2),
(5, 1, 'SID009', '2017-07-15 10:59:26', NULL, 0, NULL),
(6, 3, 'SID011', '2017-07-15 18:02:55', NULL, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table tblstudents
--

CREATE TABLE tblstudents (
  [id] int NOT NULL,
  [StudentId] varchar(100) DEFAULT NULL,
  [FullName] varchar(120) DEFAULT NULL,
  [EmailId] varchar(120) DEFAULT NULL,
  [MobileNumber] char(11) DEFAULT NULL,
  [Password] varchar(120) DEFAULT NULL,
  [Status] int DEFAULT NULL,
  [RegDate] datetime2(0) NULL DEFAULT GETDATE(),
  [UpdationDate] datetime2(0) NULL DEFAULT NULL 
) ;

--
-- Dumping data for table tblstudents
--

INSERT INTO tblstudents ([id], [StudentId], [FullName], [EmailId], [MobileNumber], [Password], [Status], [RegDate], [UpdationDate]) VALUES
(1, 'SID002', 'Andrew Braza', 'andrew1@gmail.com', '9865472555', 'f925916e2754e5e03f75dd58a5733251', 1, '2017-07-11 15:37:05', '2019-04-11 14:11:39'),
(4, 'SID005', 'John Roberts', 'john@yahoo.com', '8569710025', '92228410fc8b872914e023160cf4ae8f', 0, '2017-07-11 15:41:27', '2019-04-11 14:12:04'),
(9, 'SID010', 'Rey Tejada', 'rey@gmail.com', '8585856224', 'f925916e2754e5e03f75dd58a5733251', 1, '2017-07-15 13:40:30', '2019-04-11 14:12:27'),
(10, 'SID011', 'Clide Louie', 'CLIDE@gmail.com', '4672423754', 'f925916e2754e5e03f75dd58a5733251', 1, '2017-07-15 18:00:59','2019-04-11 14:12:27')


>>>>>>> 0576e05142a7a85c4bb3637beed568a2e32201cf
