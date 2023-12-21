CREATE Database Academy2;
go;

Use Academy2;
go;

CREATE TABLE Curators(
	Id INT PRIMARY KEY IDENTITY(1, 1),
	Name NVARCHAR(MAX) NOT NULL CHECK(Name LIKE '_%'),
	Surname NVARCHAR(MAX) NOT NULL CHECK(Surname LIKE '_%') 
)
GO;

INSERT INTO Curators(Name, Surname) VALUES (N'John', N'Doe');
INSERT INTO Curators(Name, Surname) VALUES (N'Mary', N'Sue');
INSERT INTO Curators(Name, Surname) VALUES (N'Battlefield', N'Koqtevran');
INSERT INTO Curators(Name, Surname) VALUES (N'Steve', N'Richards');
INSERT INTO Curators(Name, Surname) VALUES (N'Stephen', N'King');
INSERT INTO Curators(Name, Surname) VALUES (N'Rick', N'Astley');
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

INSERT INTO Departments(Financing, Name, FacultyId) VALUES(34556, N'Microbiology', 2);
INSERT INTO  Departments(Financing, Name, FacultyId) VALUES(3356566, N'High Math', 1);
INSERT INTO  Departments(Financing, Name, FacultyId) VALUES ('5566', N'Mechanical Physics', 3);
INSERT INTO  Departments(Financing, Name, FacultyId) VALUES (25252, N'Logic', 1);
INSERT INTO  Departments(Financing, Name, FacultyId) VALUES (4555, N'Social', 6);
INSERT INTO  Departments(Financing, Name, FacultyId) VALUES (35217, N'Management', 7);
INSERT INTO  Departments(Financing, Name, FacultyId) VALUES (666666, N'Organic Chemistry', 4);
INSERT INTO  Departments(Financing, Name, FacultyId) VALUES (707, N'SMM', 6);
INSERT INTO  Departments(Financing, Name, FacultyId) VALUES (6060, N'Software developing', 8);
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
INSERT INTO Faculties(Name, Financing) VALUES (N'Biology', 3000);
INSERT INTO Faculties(Name, Financing) VALUES (N'Physics', 4556);
INSERT INTO Faculties(Name, Financing) VALUES (N'Chemistry', 1000);
INSERT INTO Faculties(Name, Financing) VALUES (N'Geography', 3000);
INSERT INTO Faculties(Name, Financing) VALUES (N'Addvertisement', 4556);
INSERT INTO Faculties(Name, Financing) VALUES (N'Economics', 4556);
INSERT INTO Faculties(Name, Financing) VALUES (N'Computer Science', 4556);
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


CREATE TABLE GroupsCurators(
	Id INT PRIMARY KEY IDENTITY(1, 1),
	CuratorId INT NOT NULL FOREIGN KEY REFERENCES Curators(Id),
	GroupId INT NOT NULL FOREIGN KEY REFERENCES Groups(Id)
)
GO;

INSERT INTO GroupsCurators(CuratorId, GroupId) VALUES(1, 1);
INSERT INTO GroupsCurators(CuratorId, GroupId) VALUES(2, 2);
INSERT INTO GroupsCurators(CuratorId, GroupId) VALUES(3, 3);
INSERT INTO GroupsCurators(CuratorId, GroupId) VALUES(4, 4);
INSERT INTO GroupsCurators(CuratorId, GroupId) VALUES(5, 5);
INSERT INTO GroupsCurators(CuratorId, GroupId) VALUES(6, 6);
INSERT INTO GroupsCurators(CuratorId, GroupId) VALUES(1, 7);
INSERT INTO GroupsCurators(CuratorId, GroupId) VALUES(2, 8);
INSERT INTO GroupsCurators(CuratorId, GroupId) VALUES(3, 9);
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

INSERT INTO Lectures(LectureRoom, SubjectId, TeacherId) VALUES(N'2343', 1, 1);
INSERT INTO Lectures(LectureRoom, SubjectId, TeacherId) VALUES(N'233', 2, 2);
INSERT INTO Lectures(LectureRoom, SubjectId, TeacherId) VALUES(N'B103', 3, 3);
INSERT INTO Lectures(LectureRoom, SubjectId, TeacherId) VALUES(N'B103', 4, 4);
INSERT INTO Lectures(LectureRoom, SubjectId, TeacherId) VALUES(N'PG13', 5, 5);
INSERT INTO Lectures(LectureRoom, SubjectId, TeacherId) VALUES(N'PG18', 6, 6);
INSERT INTO Lectures(LectureRoom, SubjectId, TeacherId) VALUES(N'PG21', 7, 7);
INSERT INTO Lectures(LectureRoom, SubjectId, TeacherId) VALUES(N'PG34', 8, 8);
INSERT INTO Lectures(LectureRoom, SubjectId, TeacherId) VALUES(N'PG34', 5, 9);
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
VALUES(N'Veritas', 343535, N'Ratio');
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
GO;
INSERT INTO Teachers(Name, Salary, Surname)
VALUES(N'Samantha', 789.56, N'Adams');


SELECT *
FROM Teachers;
GO;


-- 1. Вывести все возможные пары строк преподавателей и групп.

SELECT T.Name, T.Surname, G.Name
FROM GroupsLectures
INNER JOIN Lectures L on L.Id = GroupsLectures.LectureId
INNER JOIN Teachers T on T.Id = L.TeacherId
INNER JOIN Groups G on G.Id = GroupsLectures.GroupId;
GO;

-- 2. Вывести названия факультетов, фонд финансирования
-- кафедр которых превышает фонд финансирования факультета.

SELECT F.Name
FROM Departments
INNER JOIN Faculties F on F.Id = Departments.FacultyId
WHERE Departments.Financing > F.Financing;
GO;
-- 3. Вывести фамилии кураторов групп и названия групп, которые они курируют.

SELECT C.Surname, G.Name
FROM GroupsCurators
INNER JOIN Curators C on C.Id = GroupsCurators.CuratorId
INNER JOIN Groups G on G.Id = GroupsCurators.GroupId;
GO;

-- 4. Вывести имена и фамилии преподавателей, которые читают
-- лекции у группы “P107”.

SELECT T.Name, T.Surname
FROM GroupsLectures
INNER JOIN Lectures L on L.Id = GroupsLectures.LectureId
INNER JOIN Teachers T on T.Id = L.TeacherId
INNER JOIN Groups G on G.Id = GroupsLectures.GroupId
WHERE G.Name = 'P107';
GO;

-- 5. Вывести фамилии преподавателей и названия факультетов
-- на которых они читают лекции.

SELECT T.Name, T.Surname
FROM GroupsLectures
INNER JOIN Lectures L on L.Id = GroupsLectures.LectureId
INNER JOIN Teachers T on T.Id = L.TeacherId
INNER JOIN Groups G on G.Id = GroupsLectures.GroupId;
GO;

-- 6. Вывести названия кафедр и названия групп, которые к
-- ним относятся.

SELECT D.Name, Groups.Name
FROM Groups
INNER JOIN Departments D on D.Id = Groups.DepartmentId;

-- 7. Вывести названия дисциплин, которые читает преподаватель “Samantha Adams”.

SELECT S.Name
FROM Lectures
INNER JOIN Subjects S on Lectures.SubjectId = S.Id
INNER JOIN Teachers T on T.Id = Lectures.TeacherId
WHERE T.Name = 'Samantha' AND T.Surname = 'Adams';
GO;

-- 8. Вывести названия кафедр, на которых читается дисциплина
-- “Database Theory”.

SELECT D.Name
FROM GroupsLectures
INNER JOIN Groups G on G.Id = GroupsLectures.GroupId
INNER JOIN Departments D on D.Id = G.DepartmentId
INNER JOIN Lectures L on L.Id = GroupsLectures.LectureId
INNER JOIN Subjects S on L.SubjectId = S.Id
WHERE S.Name = 'Database Theory';
GO;

-- 9. Вывести названия групп, которые относятся к факультету
-- “Computer Science”.

SELECT Groups.Name
FROM Groups
INNER JOIN Departments D on Groups.DepartmentId = D.Id
INNER JOIN Faculties F on F.Id = D.FacultyId
WHERE F.Name = 'Computer Science';
GO;

-- 10. Вывести названия групп 5-го курса, а также название факультетов, к которым они относятся.

SELECT Groups.Name, F.Name
FROM Groups
INNER JOIN Departments D on D.Id = Groups.DepartmentId
INNER JOIN Faculties F on F.Id = D.FacultyId
WHERE Groups.Year = 5;
GO;

-- 11. Вывести полные имена преподавателей и лекции, которые
-- они читают (названия дисциплин и групп), причем отобрать
-- только те лекции, которые читаются в аудитории “B103”.

SELECT T.Name, T.Surname, S.Name, G.Name
FROM GroupsLectures
INNER JOIN Lectures L on L.Id = GroupsLectures.LectureId
INNER JOIN Groups G on G.Id = GroupsLectures.GroupId
INNER JOIN Teachers T on T.Id = L.TeacherId
INNER JOIN Subjects S on S.Id = L.SubjectId
WHERE L.LectureRoom = 'B103';
GO;