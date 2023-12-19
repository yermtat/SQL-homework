CREATE Database Academy;
go;

Use Academy;
go;

CREATE TABLE Curators(
	Id INT PRIMARY KEY IDENTITY(1, 1),
	Name NVARCHAR(MAX) NOT NULL CHECK(Name LIKE '_%'),
	Surname NVARCHAR(MAX) NOT NULL CHECK(Surname LIKE '_%') 
)
GO;

INSERT INTO Curators(Name, Surname) VALUES (N'John', N'Doe');
INSERT INTO Curators(Name, Surname) VALUES (N'Mary', N'Sue');
GO;

SELECT *
FROM Curators;
GO;


CREATE TABLE Departments(
    Id INT PRIMARY KEY IDENTITY(1, 1),
    Financing MONEY NOT NULL CHECK( Financing >= 0) DEFAULT 0,
    Name NVARCHAR(100) NOT NULL CHECK(Name LIKE '_%') UNIQUE,
	FacultyId INT NOT NULL FOREIGN KEY REFERENCES Faculties(Id)
);
GO;

INSERT INTO Departments(Financing, Name, FacultyId) VALUES(34556, N'Biology', 2);
INSERT INTO  Departments(Financing, Name, FacultyId) VALUES(3356566, N'Math', 1);
INSERT INTO  Departments(Financing, Name, FacultyId) VALUES ('', N'Physics', 3);
GO;

SELECT *
FROM Departments;
GO;



CREATE TABLE Faculties(
    Id INT PRIMARY KEY IDENTITY(1, 1),
	Financing MONEY NOT NULL CHECK( Financing >= 0) DEFAULT 0,
    Name NVARCHAR(100) NOT NULL CHECK(Name LIKE '_%') UNIQUE
);
GO;

INSERT INTO Faculties(Name, Financing) VALUES (N'Math', 1000);
INSERT INTO Faculties(Name, Financing) VALUES (N'Microbiology', 3000);
INSERT INTO Faculties(Name, Financing) VALUES (N'Mechanical Physics', 4556);
GO;

SELECT *
FROM Faculties;
GO;


CREATE TABLE Groups(
    Id INT PRIMARY KEY IDENTITY(1, 1),
    Name nvarchar(10) NOT NULL UNIQUE CHECK(Name LIKE '_%'),
    Year INT NOT NULL CHECK(Year >=1 AND Year <=5),
	DepartmentId INT NOT NULL FOREIGN KEY REFERENCES Departments(Id)
);
go;

INSERT INTO Groups(Name, Year, DepartmentId) VALUES (N'FBAS_3_22', 2, 1);
INSERT INTO Groups(Name, Year, DepartmentId) VALUES (N'FF349', 3, 2);
go;

SELECT *
FROM Groups;
GO;


CREATE TABLE GroupsCurators(
	Id INT PRIMARY KEY IDENTITY(1, 1),
	CuratorId INT NOT NULL FOREIGN KEY REFERENCES Curators(Id),
	GroupId INT NOT NULL FOREIGN KEY REFERENCES Groups(Id)
)
GO;

INSERT INTO GroupsCurators(CuratorId, GroupId) VALUES(1, 1);
INSERT INTO GroupsCurators(CuratorId, GroupId) VALUES(2, 2);
GO;

SELECT *
FROM GroupsCurators;
GO;

CREATE TABLE GroupsLectures(
	Id INT PRIMARY KEY IDENTITY(1, 1),
	GroupId INT NOT NULL FOREIGN KEY REFERENCES Groups(Id),
	LectureId INT NOT NULL FOREIGN KEY REFERENCES Lectures(Id)
);
GO;

INSERT INTO GroupsLectures(GroupId, LectureId) VALUES (1, 1);
GO;

SELECT *
FROM GroupsLectures;
GO;

CREATE TABLE Lectures(
	Id INT PRIMARY KEY IDENTITY(1, 1),
	LectureRoom NVARCHAR(MAX) NOT NULL CHECK(LectureRoom LIKE '_%'),
	SubjectId INT NOT NULL FOREIGN KEY REFERENCES Subjects(Id),
	TeacherId INT NOT NULL FOREIGN KEY REFERENCES Teachers(Id)
);
GO;

INSERT INTO Lectures(LectureRoom, SubjectId, TeacherId) VALUES(2343, 1, 1);
GO;

SELECT * 
FROM Lectures;
GO;

CREATE TABLE Subjects(
	Id INT PRIMARY KEY IDENTITY(1, 1),
	Name NVARCHAR(100) NOT NULL CHECK(Name LIKE '_%') UNIQUE
);
GO;

INSERT INTO Subjects(Name) VALUES('Chemistry');
INSERT INTO Subjects(Name) VALUES('High Mathematics');
GO;

SELECT *
FROM Subjects;
GO;

CREATE TABLE Teachers(
    Id INT PRIMARY KEY IDENTITY(1, 1),
    Name NVARCHAR(MAX) NOT NULL CHECK(Name LIKE '_%'),
    Salary MONEY NOT NULL CHECK(Salary > 0),
    Surname NVARCHAR(MAX) NOT NULL CHECK(Surname LIKE '_%')
);
GO;

INSERT INTO Teachers(Name, Salary, Surname)
VALUES(N'Mary', 600, N'Marsten');
INSERT INTO Teachers(Name, Salary, Surname)
VALUES(N'Veritas', 343535, N'Ratio');
GO;

SELECT *
FROM Teachers;