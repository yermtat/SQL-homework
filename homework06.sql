CREATE Database Academy3;
go;

Use Academy3;
go;

CREATE TABLE Departments(
    Id INT PRIMARY KEY IDENTITY(1, 1),
    Financing MONEY NOT NULL CHECK( Financing >= 0) DEFAULT 0,
    Name NVARCHAR(100) NOT NULL CHECK(Name LIKE '_%') UNIQUE,
	FacultyId INT NOT NULL FOREIGN KEY REFERENCES Faculties(Id)
);
GO;

INSERT INTO  Departments(Financing, Name, FacultyId) VALUES(34556, N'Microbiology', 2);
INSERT INTO  Departments(Financing, Name, FacultyId) VALUES(3356566, N'High Math', 1);
INSERT INTO  Departments(Financing, Name, FacultyId) VALUES ('5566', N'Mechanical Physics', 3);
INSERT INTO  Departments(Financing, Name, FacultyId) VALUES (25252, N'Logic', 1);
INSERT INTO  Departments(Financing, Name, FacultyId) VALUES (4555, N'Social', 6);
INSERT INTO  Departments(Financing, Name, FacultyId) VALUES (35217, N'Management', 7);
INSERT INTO  Departments(Financing, Name, FacultyId) VALUES (666666, N'Organic Chemistry', 4);
INSERT INTO  Departments(Financing, Name, FacultyId) VALUES (707, N'SMM', 6);
INSERT INTO  Departments(Financing, Name, FacultyId) VALUES (6060, N'Software development', 8);
GO;

SELECT *
FROM Departments;
GO;


CREATE TABLE Faculties(
    Id INT PRIMARY KEY IDENTITY(1, 1),
    Name NVARCHAR(100) NOT NULL CHECK(Name LIKE '_%') UNIQUE
);
GO;

INSERT INTO Faculties(Name) VALUES (N'Math');
INSERT INTO Faculties(Name) VALUES (N'Biology');
INSERT INTO Faculties(Name) VALUES (N'Physics');
INSERT INTO Faculties(Name) VALUES (N'Chemistry');
INSERT INTO Faculties(Name) VALUES (N'Geography');
INSERT INTO Faculties(Name) VALUES (N'Addvertisement');
INSERT INTO Faculties(Name) VALUES (N'Economics');
INSERT INTO Faculties(Name) VALUES (N'Computer Science');
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
INSERT INTO Groups(Name, Year, DepartmentId) VALUES (N'P107', 2, 3);
INSERT INTO Groups(Name, Year, DepartmentId) VALUES (N'P345', 4, 4);
INSERT INTO Groups(Name, Year, DepartmentId) VALUES (N'FFFFF5', 2, 5);
INSERT INTO Groups(Name, Year, DepartmentId) VALUES (N'63DW', 3, 6);
INSERT INTO Groups(Name, Year, DepartmentId) VALUES (N'SPN3003', 2, 7);
INSERT INTO Groups(Name, Year, DepartmentId) VALUES (N'5FTH', 5, 8);
INSERT INTO Groups(Name, Year, DepartmentId) VALUES (N'55HH', 5, 4);
INSERT INTO Groups(Name, Year, DepartmentId) VALUES (N'98HH', 5, 9);
go;

SELECT *
FROM Groups;
GO;


CREATE TABLE GroupsLectures(
	Id INT PRIMARY KEY IDENTITY(1, 1),
	GroupId INT NOT NULL FOREIGN KEY REFERENCES Groups(Id),
	LectureId INT NOT NULL FOREIGN KEY REFERENCES Lectures(Id)
);
GO;

INSERT INTO GroupsLectures(GroupId, LectureId) VALUES (1, 1);
INSERT INTO GroupsLectures(GroupId, LectureId) VALUES (2, 2);
INSERT INTO GroupsLectures(GroupId, LectureId) VALUES (3, 3);
INSERT INTO GroupsLectures(GroupId, LectureId) VALUES (4, 4);
INSERT INTO GroupsLectures(GroupId, LectureId) VALUES (5, 5);
INSERT INTO GroupsLectures(GroupId, LectureId) VALUES (6, 6);
INSERT INTO GroupsLectures(GroupId, LectureId) VALUES (7, 7);
INSERT INTO GroupsLectures(GroupId, LectureId) VALUES (8, 8);
INSERT INTO GroupsLectures(GroupId, LectureId) VALUES (9, 4);
INSERT INTO GroupsLectures(GroupId, LectureId) VALUES (9, 4);
INSERT INTO GroupsLectures(GroupId, LectureId) VALUES (9, 9);
INSERT INTO GroupsLectures(GroupId, LectureId) VALUES (2, 5);
INSERT INTO GroupsLectures(GroupId, LectureId) VALUES (10, 5);
INSERT INTO GroupsLectures(GroupId, LectureId) VALUES (4, 9);
GO;

SELECT *
FROM GroupsLectures;
GO;

CREATE TABLE Lectures(
	Id INT PRIMARY KEY IDENTITY(1, 1),
    DayOfWeek INT NOT NULL CHECK(DayOfWeek >= 1 AND DayOfWeek <=7),
	LectureRoom NVARCHAR(MAX) NOT NULL CHECK(LectureRoom LIKE '_%'),
	SubjectId INT NOT NULL FOREIGN KEY REFERENCES Subjects(Id),
	TeacherId INT NOT NULL FOREIGN KEY REFERENCES Teachers(Id)
);
GO;

INSERT INTO Lectures(DayOfWeek, LectureRoom, SubjectId, TeacherId) VALUES(1, N'D201', 1, 1);
INSERT INTO Lectures(DayOfWeek, LectureRoom, SubjectId, TeacherId) VALUES(2, N'D201', 2, 2);
INSERT INTO Lectures(DayOfWeek, LectureRoom, SubjectId, TeacherId) VALUES(3, N'B103', 3, 3);
INSERT INTO Lectures(DayOfWeek, LectureRoom, SubjectId, TeacherId) VALUES(4, N'B103', 4, 4);
INSERT INTO Lectures(DayOfWeek, LectureRoom, SubjectId, TeacherId) VALUES(5, N'PG13', 5, 5);
INSERT INTO Lectures(DayOfWeek, LectureRoom, SubjectId, TeacherId) VALUES(6, N'PG18', 6, 6);
INSERT INTO Lectures(DayOfWeek, LectureRoom, SubjectId, TeacherId) VALUES(7, N'PG21', 7, 7);
INSERT INTO Lectures(DayOfWeek, LectureRoom, SubjectId, TeacherId) VALUES(1, N'D201', 8, 8);
INSERT INTO Lectures(DayOfWeek, LectureRoom, SubjectId, TeacherId) VALUES(2, N'PG34', 5, 9);
INSERT INTO Lectures(DayOfWeek, LectureRoom, SubjectId, TeacherId) VALUES(2, N'PG34', 3, 9);
GO;

SELECT *
FROM Lectures;
GO;

CREATE TABLE Subjects(
	Id INT PRIMARY KEY IDENTITY(1, 1),
	Name NVARCHAR(100) NOT NULL CHECK(Name LIKE '_%') UNIQUE
);
GO;

INSERT INTO Subjects(Name) VALUES('Astronomy');
INSERT INTO Subjects(Name) VALUES('English as a Second Language (ESL)');
INSERT INTO Subjects(Name) VALUES('History of chemistry');
INSERT INTO Subjects(Name) VALUES('Marketing');
INSERT INTO Subjects(Name) VALUES('Database Theory');
INSERT INTO Subjects(Name) VALUES('Biochemistry');
INSERT INTO Subjects(Name) VALUES('Mechanical engineering');
INSERT INTO Subjects(Name) VALUES('Art');
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
VALUES(N'Jack', 343535, N'Underhill');
INSERT INTO Teachers(Name, Salary, Surname)
VALUES(N'Stephen', 7845, N'Strange');
INSERT INTO Teachers(Name, Salary, Surname)
VALUES(N'Peter', 698, N'Parker');
INSERT INTO Teachers(Name, Salary, Surname)
VALUES(N'Doctor', 2000, N'Doom');
INSERT INTO Teachers(Name, Salary, Surname)
VALUES(N'Johny', 999999, N'Cage');
INSERT INTO Teachers(Name, Salary, Surname)
VALUES(N'Michael', 600, N'Jackson');
INSERT INTO Teachers(Name, Salary, Surname)
VALUES(N'Hirohiko', 7, N'Araki');
INSERT INTO Teachers(Name, Salary, Surname)
VALUES(N'Dave', 789.56, N'McQueen');



GO;

SELECT *
FROM Teachers;
GO;


create table Students(
[Id] int primary key identity(1, 1),
[Name] nvarchar(30) NOT NULL,
[Surname] nvarchar(30) NOT NULL,
[Email] nvarchar(30) NOT NULL,
[Age] int NOT NULL check (Age >= 14 and Age < 100));
GO;

insert into Students ([Name], [Surname], [Email], [Age]) values ('Donn', 'Pennetta', 'dpennetta0@chicagotribune.com', 30);
insert into Students ([Name], [Surname], [Email], [Age]) values ('Neddy', 'Dobell', 'ndobell1@geocities.com', 23);
insert into Students ([Name], [Surname], [Email], [Age]) values ('Aryn', 'Santarelli', 'asantarelli2@chronoengine.com', 19);
insert into Students ([Name], [Surname], [Email], [Age]) values ('Lyndy', 'Maypowder', 'lmaypowder3@apple.com', 23);
insert into Students ([Name], [Surname], [Email], [Age]) values ('Nydia', 'Wermerling', 'nwermerling4@unesco.org', 17);
insert into Students ([Name], [Surname], [Email], [Age]) values ('Warde', 'O''Gormley', 'wogormley5@google.de', 21);
insert into Students ([Name], [Surname], [Email], [Age]) values ('Akim', 'Balleine', 'aballeine6@ucoz.com', 16);
insert into Students ([Name], [Surname], [Email], [Age]) values ('Brion', 'Paumier', 'bpaumier7@privacy.gov.au', 25);
insert into Students ([Name], [Surname], [Email], [Age]) values ('Arabella', 'Alderman', 'aalderman8@mit.edu', 28);
insert into Students ([Name], [Surname], [Email], [Age]) values ('Tobe', 'Glencros', 'tglencros9@jimdo.com', 16);
GO;

create table GroupData(
[Id] int primary key identity(1, 1),
[StudentId] int foreign key references Students(Id),
[GroupId] int foreign key references Groups(Id));
GO;

insert into GroupData ([StudentId], [GroupId]) values (1, 8);
insert into GroupData ([StudentId], [GroupId]) values (2, 5);
insert into GroupData ([StudentId], [GroupId]) values (3, 4);
insert into GroupData ([StudentId], [GroupId]) values (4, 7);
insert into GroupData ([StudentId], [GroupId]) values (5, 4);
insert into GroupData ([StudentId], [GroupId]) values (6, 7);
insert into GroupData ([StudentId], [GroupId]) values (7, 7);
insert into GroupData ([StudentId], [GroupId]) values (8, 9);
insert into GroupData ([StudentId], [GroupId]) values (9, 9);
insert into GroupData ([StudentId], [GroupId]) values (10, 5);
insert into GroupData ([StudentId], [GroupId]) values (10, 2);
insert into GroupData ([StudentId], [GroupId]) values (9, 7);
GO;


-- 1. Вывести количество преподавателей кафедры “Software
-- Development”.

SELECT COUNT(TeacherId)
FROM GroupsLectures
INNER JOIN Groups G on G.Id = GroupsLectures.GroupId
INNER JOIN Lectures L on L.Id = GroupsLectures.LectureId
INNER JOIN Departments D on D.Id = G.DepartmentId
WHERE D.Name = 'Software Development';
GO;


-- 2. Вывести количество лекций, которые читает преподаватель
-- “Dave McQueen”.

SELECT COUNT(Lectures.Id)
FROM Lectures
INNER JOIN Teachers T on T.Id = Lectures.TeacherId
WHERE T.Name = 'Dave' AND T.Surname = 'McQueen';
GO;

-- 3. Вывести количество занятий, проводимых в аудитории
-- “D201”.

SELECT COUNT(Id)
FROM Lectures
WHERE LectureRoom = 'D201';
GO;

-- 4. Вывести названия аудиторий и количество лекций, проводимых в них.

SELECT LectureRoom, COUNT(Id)
FROM Lectures
GROUP BY LectureRoom;
GO;

-- 5. Вывести количество студентов, посещающих лекции преподавателя “Jack Underhill”.

SELECT COUNT(StudentId)
FROM GroupData
WHERE GroupId IN (
SELECT GroupsLectures.GroupId
FROM GroupsLectures
INNER JOIN Lectures L on L.Id = GroupsLectures.LectureId
INNER JOIN Teachers T on T.Id = L.TeacherId
WHERE T.NAME = 'Jack' AND T.Surname = 'Underhill');
GO;

-- 6. Вывести среднюю ставку преподавателей факультета
-- “Computer Science”.

SELECT AVG(T.Salary)
FROM GroupsLectures
INNER JOIN Groups G on G.Id = GroupsLectures.GroupId
INNER JOIN Departments D on D.Id = G.DepartmentId
INNER JOIN Faculties F on F.Id = D.FacultyId
INNER JOIN Lectures L on GroupsLectures.LectureId = L.Id
INNER JOIN Teachers T on T.Id = L.TeacherId
WHERE F.Name = 'Computer Science';
GO;

-- 7. Вывести минимальное и максимальное количество студентов среди всех групп.

SELECT MAX(MyCount) AS [Max students], MIN(MyCount) AS [Min students]
FROM (SELECT COUNT(StudentId) AS MyCount
FROM GroupData
GROUP BY GroupId) Y;
GO;


-- 8. Вывести средний фонд финансирования кафедр.

SELECT AVG(Financing)
FROM Departments;
GO;

-- 9. Вывести полные имена преподавателей и количество читаемых ими дисциплин.

SELECT T.Name, T.Surname, COUNT(SubjectId) AS Subjects
FROM Lectures
INNER JOIN Teachers T on T.Id = Lectures.TeacherId
GROUP BY T.Name, T.Surname;
GO;


-- 10. Вывести количество лекций в каждый день недели.

SELECT DayOfWeek, COUNT((SubjectId)) AS Subjects
FROM Lectures
GROUP BY DayOfWeek;
GO;

-- 11. Вывести номера аудиторий и количество кафедр, чьи лекции в них читаются.

SELECT L.LectureRoom, COUNT(DepartmentId) AS Departments
FROM GroupsLectures
INNER JOIN Groups G on G.Id = GroupsLectures.GroupId
INNER JOIN Departments D on D.Id = G.DepartmentId
INNER JOIN Lectures L on L.Id = GroupsLectures.LectureId
GROUP BY L.LectureRoom;
GO;

-- 12.Вывести названия факультетов и количество дисциплин,
-- которые на них читаются.

SELECT F.Name, COUNT(L.SubjectId) AS Subjects
FROM GroupsLectures
INNER JOIN Groups G on G.Id = GroupsLectures.GroupId
INNER JOIN Departments D on D.Id = G.DepartmentId
INNER JOIN Faculties F on F.Id = D.FacultyId
INNER JOIN Lectures L on L.Id = GroupsLectures.LectureId
GROUP BY F.Name;
GO;

-- 13. Вывести количество лекций для каждой пары преподаватель-аудитория

SELECT T.Surname, LectureRoom, COUNT(Lectures.Id) AS Lectures
FROM Lectures
INNER JOIN Teachers T on T.Id = Lectures.TeacherId
GROUP BY T.Surname, LectureRoom;
GO;
