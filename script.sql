USE [master]
GO
/****** Object:  Database [Student Management System]    Script Date: 12/06/2025 7:22:28 pm ******/
CREATE DATABASE [Student Management System]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Student Management System', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLSERVER2022\MSSQL\DATA\Student Management System.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Student Management System_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLSERVER2022\MSSQL\DATA\Student Management System_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [Student Management System] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Student Management System].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Student Management System] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Student Management System] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Student Management System] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Student Management System] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Student Management System] SET ARITHABORT OFF 
GO
ALTER DATABASE [Student Management System] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Student Management System] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Student Management System] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Student Management System] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Student Management System] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Student Management System] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Student Management System] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Student Management System] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Student Management System] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Student Management System] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Student Management System] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Student Management System] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Student Management System] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Student Management System] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Student Management System] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Student Management System] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Student Management System] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Student Management System] SET RECOVERY FULL 
GO
ALTER DATABASE [Student Management System] SET  MULTI_USER 
GO
ALTER DATABASE [Student Management System] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Student Management System] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Student Management System] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Student Management System] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Student Management System] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Student Management System] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'Student Management System', N'ON'
GO
ALTER DATABASE [Student Management System] SET QUERY_STORE = ON
GO
ALTER DATABASE [Student Management System] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [Student Management System]
GO
/****** Object:  Table [dbo].[Assignment_Submissions]    Script Date: 12/06/2025 7:22:28 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Assignment_Submissions](
	[SubmissionID] [int] IDENTITY(1,1) NOT NULL,
	[AssignmentID] [int] NULL,
	[StudentID] [int] NULL,
	[SubmissionDate] [date] NULL,
	[Marks] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[SubmissionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Assignments]    Script Date: 12/06/2025 7:22:28 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Assignments](
	[AssignmentID] [int] IDENTITY(1,1) NOT NULL,
	[CourseID] [int] NULL,
	[Title] [varchar](100) NULL,
	[DueDate] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[AssignmentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Attendance]    Script Date: 12/06/2025 7:22:28 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Attendance](
	[AttendanceID] [int] IDENTITY(1,1) NOT NULL,
	[StudentID] [int] NULL,
	[CourseID] [int] NULL,
	[Date] [date] NULL,
	[Status] [varchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[AttendanceID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Book_Issues]    Script Date: 12/06/2025 7:22:28 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Book_Issues](
	[IssueID] [int] IDENTITY(1,1) NOT NULL,
	[StudentID] [int] NULL,
	[BookID] [int] NULL,
	[IssueDate] [date] NULL,
	[ReturnDate] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[IssueID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Course]    Script Date: 12/06/2025 7:22:28 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Course](
	[CourseID] [int] IDENTITY(1,1) NOT NULL,
	[CourseName] [varchar](100) NOT NULL,
	[CreditHours] [int] NULL,
	[DepartmentID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[CourseID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Department]    Script Date: 12/06/2025 7:22:28 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Department](
	[DepartmentID] [int] IDENTITY(1,1) NOT NULL,
	[DepartmentName] [varchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[DepartmentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[DepartmentName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Enrollment]    Script Date: 12/06/2025 7:22:28 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Enrollment](
	[EnrollmentID] [int] IDENTITY(1,1) NOT NULL,
	[StudentID] [int] NULL,
	[CourseID] [int] NULL,
	[EnrollmentDate] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[EnrollmentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [UC_StudentCourse] UNIQUE NONCLUSTERED 
(
	[StudentID] ASC,
	[CourseID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Exam]    Script Date: 12/06/2025 7:22:28 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Exam](
	[ExamID] [int] IDENTITY(1,1) NOT NULL,
	[CourseID] [int] NULL,
	[ExamDate] [date] NULL,
	[Type] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[ExamID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Exam_Result]    Script Date: 12/06/2025 7:22:28 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Exam_Result](
	[ResultID] [int] IDENTITY(1,1) NOT NULL,
	[ExamID] [int] NULL,
	[StudentID] [int] NULL,
	[MarksObtained] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ResultID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Faculty]    Script Date: 12/06/2025 7:22:28 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Faculty](
	[FacultyID] [int] IDENTITY(1,1) NOT NULL,
	[FullName] [varchar](100) NOT NULL,
	[Email] [varchar](100) NOT NULL,
	[DepartmentID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[FacultyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[Email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Fee]    Script Date: 12/06/2025 7:22:28 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Fee](
	[FeeID] [int] IDENTITY(1,1) NOT NULL,
	[StudentID] [int] NULL,
	[Semester] [varchar](20) NULL,
	[TotalAmount] [decimal](10, 2) NULL,
	[PaidAmount] [decimal](10, 2) NULL,
	[DueAmount]  AS ([TotalAmount]-[PaidAmount]) PERSISTED,
PRIMARY KEY CLUSTERED 
(
	[FeeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Grades]    Script Date: 12/06/2025 7:22:28 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Grades](
	[GradeID] [int] IDENTITY(1,1) NOT NULL,
	[StudentID] [int] NULL,
	[CourseID] [int] NULL,
	[Semester] [varchar](20) NULL,
	[Grade] [varchar](2) NULL,
PRIMARY KEY CLUSTERED 
(
	[GradeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Library]    Script Date: 12/06/2025 7:22:28 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Library](
	[BookID] [int] IDENTITY(1,1) NOT NULL,
	[Title] [varchar](100) NULL,
	[Author] [varchar](100) NULL,
	[ISBN] [varchar](20) NULL,
	[TotalCopies] [int] NULL,
	[AvailableCopies] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[BookID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[ISBN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Payment]    Script Date: 12/06/2025 7:22:28 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Payment](
	[PaymentID] [int] IDENTITY(1,1) NOT NULL,
	[FeeID] [int] NULL,
	[PaymentDate] [date] NULL,
	[AmountPaid] [decimal](10, 2) NULL,
PRIMARY KEY CLUSTERED 
(
	[PaymentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Student]    Script Date: 12/06/2025 7:22:28 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Student](
	[StudentID] [int] IDENTITY(1,1) NOT NULL,
	[FullName] [varchar](100) NOT NULL,
	[Email] [varchar](100) NOT NULL,
	[DateOfBirth] [date] NULL,
	[Gender] [varchar](10) NULL,
	[DepartmentID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[StudentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[Email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Enrollment] ADD  DEFAULT (getdate()) FOR [EnrollmentDate]
GO
ALTER TABLE [dbo].[Payment] ADD  DEFAULT (getdate()) FOR [PaymentDate]
GO
ALTER TABLE [dbo].[Assignment_Submissions]  WITH CHECK ADD FOREIGN KEY([AssignmentID])
REFERENCES [dbo].[Assignments] ([AssignmentID])
GO
ALTER TABLE [dbo].[Assignment_Submissions]  WITH CHECK ADD FOREIGN KEY([StudentID])
REFERENCES [dbo].[Student] ([StudentID])
GO
ALTER TABLE [dbo].[Assignments]  WITH CHECK ADD FOREIGN KEY([CourseID])
REFERENCES [dbo].[Course] ([CourseID])
GO
ALTER TABLE [dbo].[Attendance]  WITH CHECK ADD FOREIGN KEY([CourseID])
REFERENCES [dbo].[Course] ([CourseID])
GO
ALTER TABLE [dbo].[Attendance]  WITH CHECK ADD FOREIGN KEY([StudentID])
REFERENCES [dbo].[Student] ([StudentID])
GO
ALTER TABLE [dbo].[Book_Issues]  WITH CHECK ADD FOREIGN KEY([BookID])
REFERENCES [dbo].[Library] ([BookID])
GO
ALTER TABLE [dbo].[Book_Issues]  WITH CHECK ADD FOREIGN KEY([StudentID])
REFERENCES [dbo].[Student] ([StudentID])
GO
ALTER TABLE [dbo].[Course]  WITH CHECK ADD FOREIGN KEY([DepartmentID])
REFERENCES [dbo].[Department] ([DepartmentID])
GO
ALTER TABLE [dbo].[Enrollment]  WITH CHECK ADD FOREIGN KEY([CourseID])
REFERENCES [dbo].[Course] ([CourseID])
GO
ALTER TABLE [dbo].[Enrollment]  WITH CHECK ADD FOREIGN KEY([StudentID])
REFERENCES [dbo].[Student] ([StudentID])
GO
ALTER TABLE [dbo].[Exam]  WITH CHECK ADD FOREIGN KEY([CourseID])
REFERENCES [dbo].[Course] ([CourseID])
GO
ALTER TABLE [dbo].[Exam_Result]  WITH CHECK ADD FOREIGN KEY([ExamID])
REFERENCES [dbo].[Exam] ([ExamID])
GO
ALTER TABLE [dbo].[Exam_Result]  WITH CHECK ADD FOREIGN KEY([StudentID])
REFERENCES [dbo].[Student] ([StudentID])
GO
ALTER TABLE [dbo].[Faculty]  WITH CHECK ADD FOREIGN KEY([DepartmentID])
REFERENCES [dbo].[Department] ([DepartmentID])
GO
ALTER TABLE [dbo].[Fee]  WITH CHECK ADD FOREIGN KEY([StudentID])
REFERENCES [dbo].[Student] ([StudentID])
GO
ALTER TABLE [dbo].[Grades]  WITH CHECK ADD FOREIGN KEY([CourseID])
REFERENCES [dbo].[Course] ([CourseID])
GO
ALTER TABLE [dbo].[Grades]  WITH CHECK ADD FOREIGN KEY([StudentID])
REFERENCES [dbo].[Student] ([StudentID])
GO
ALTER TABLE [dbo].[Payment]  WITH CHECK ADD FOREIGN KEY([FeeID])
REFERENCES [dbo].[Fee] ([FeeID])
GO
ALTER TABLE [dbo].[Student]  WITH CHECK ADD FOREIGN KEY([DepartmentID])
REFERENCES [dbo].[Department] ([DepartmentID])
GO
ALTER TABLE [dbo].[Assignment_Submissions]  WITH CHECK ADD CHECK  (([Marks]>=(0) AND [Marks]<=(100)))
GO
ALTER TABLE [dbo].[Attendance]  WITH CHECK ADD CHECK  (([Status]='Absent' OR [Status]='Present'))
GO
ALTER TABLE [dbo].[Course]  WITH CHECK ADD CHECK  (([CreditHours]>(0) AND [CreditHours]<=(6)))
GO
ALTER TABLE [dbo].[Exam]  WITH CHECK ADD CHECK  (([Type]='Final' OR [Type]='Midterm'))
GO
ALTER TABLE [dbo].[Exam_Result]  WITH CHECK ADD CHECK  (([MarksObtained]>=(0) AND [MarksObtained]<=(100)))
GO
ALTER TABLE [dbo].[Grades]  WITH CHECK ADD CHECK  (([Grade]='F' OR [Grade]='D' OR [Grade]='C' OR [Grade]='B' OR [Grade]='A'))
GO
ALTER TABLE [dbo].[Payment]  WITH CHECK ADD CHECK  (([AmountPaid]>(0)))
GO
/****** Object:  StoredProcedure [dbo].[GetAttendanceReport]    Script Date: 12/06/2025 7:22:28 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetAttendanceReport]
    @StudentID INT
AS
BEGIN
    SELECT c.CourseName,
           COUNT(*) AS TotalClasses,
           SUM(CASE WHEN a.Status = 'Present' THEN 1 ELSE 0 END) AS DaysPresent,
           SUM(CASE WHEN a.Status = 'Absent' THEN 1 ELSE 0 END) AS DaysAbsent
    FROM Attendance a
    JOIN Course c ON a.CourseID = c.CourseID
    WHERE a.StudentID = @StudentID
    GROUP BY c.CourseName;
END;
GO
/****** Object:  StoredProcedure [dbo].[GetStudentBooks]    Script Date: 12/06/2025 7:22:28 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetStudentBooks]
    @StudentID INT
AS
BEGIN
    SELECT b.Title, b.Author, bi.IssueDate, bi.ReturnDate
    FROM Book_Issues bi
    JOIN Library b ON bi.BookID = b.BookID
    WHERE bi.StudentID = @StudentID;
END;
GO
/****** Object:  StoredProcedure [dbo].[GetStudentGPA]    Script Date: 12/06/2025 7:22:28 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetStudentGPA]
    @StudentID INT
AS
BEGIN
    SELECT s.FullName, 
           AVG(CASE Grade
               WHEN 'A' THEN 4.0
               WHEN 'B' THEN 3.0
               WHEN 'C' THEN 2.0
               WHEN 'D' THEN 1.0
               WHEN 'F' THEN 0.0
           END) AS GPA
    FROM Grades g
    JOIN Student s ON s.StudentID = g.StudentID
    WHERE g.StudentID = @StudentID
    GROUP BY s.FullName;
END;
GO
/****** Object:  StoredProcedure [dbo].[GetStudentProfile]    Script Date: 12/06/2025 7:22:28 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetStudentProfile]
    @StudentID INT
AS
BEGIN
    SELECT s.StudentID, s.FullName, s.Email, s.Gender, s.DateOfBirth,
           d.DepartmentName
    FROM Student s
    JOIN Department d ON s.DepartmentID = d.DepartmentID
    WHERE s.StudentID = @StudentID;
END;
GO
/****** Object:  StoredProcedure [dbo].[GetTotalFeePaid]    Script Date: 12/06/2025 7:22:28 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetTotalFeePaid]
    @StudentID INT
AS
BEGIN
    SELECT s.FullName, SUM(p.AmountPaid) AS TotalPaid
    FROM Payment p
    JOIN Fee f ON p.FeeID = f.FeeID
    JOIN Student s ON f.StudentID = s.StudentID
    WHERE s.StudentID = @StudentID
    GROUP BY s.FullName;
END;
GO
USE [master]
GO
ALTER DATABASE [Student Management System] SET  READ_WRITE 
GO
