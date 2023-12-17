CREATE Database Academy;
go;

Use Academy;
go;

CREATE TABLE Groups(
    Id INT PRIMARY KEY IDENTITY(1, 1),
    Name nvarchar(10) NOT NULL UNIQUE CHECK(Name LIKE '_%'),
    Rating INT NOT NULL CHECK(Rating >=0 AND Rating <= 5),
    Year INT NOT NULL CHECK(Year >=1 AND Year <=5)
)
go;

INSERT INTO Groups(Name, Rating, Year) VALUES (N'FBAS_3_22', 3, 2);
INSERT INTO Groups(Name, Rating, Year) VALUES (N'FF349', 2, 3);
go;

SELECT *
FROM Groups;
GO;

CREATE TABLE Departments(
    Id INT PRIMARY KEY IDENTITY(1, 1),
    Financing MONEY NOT NULL CHECK( Financing >= 0) DEFAULT 0,
    Name NVARCHAR(10) NOT NULL CHECK(Name LIKE '_%') UNIQUE
);
GO;

INSERT INTO Departments(Financing, Name) VALUES(34556, N'Biology');
INSERT INTO  Departments(Financing, Name) VALUES(3356566, N'Math');
INSERT INTO  Departments(Financing, Name) VALUES ('', N'Physics');
GO;

SELECT *
FROM Departments;
GO;

CREATE TABLE Faculties(
    Id INT PRIMARY KEY IDENTITY(1, 1),
    Name NVARCHAR(10) NOT NULL CHECK(Name LIKE '_%') UNIQUE
);
GO;

INSERT INTO Faculties(Name) VALUES (N'B');
INSERT INTO Faculties(Name) VALUES (N'Microbio');
GO;

SELECT *
FROM Faculties;
GO;

CREATE TABLE Teachers(
    Id INT PRIMARY KEY IDENTITY(1, 1),
    EmploymentDate DATE NOT NULL CHECK(EmploymentDate > '01-01-1990'),
    Name NVARCHAR(MAX) NOT NULL CHECK(Name LIKE '_%'),
    Premium MONEY NOT NULL CHECK(Premium >= 0) DEFAULT 0,
    Salary MONEY NOT NULL CHECK(Salary > 0),
    Surname NVARCHAR(MAX) NOT NULL CHECK(Surname LIKE '_%')
);
GO;

INSERT INTO Teachers(EmploymentDate, Name, Premium, Salary, Surname)
VALUES('04-05-1990', N'Mary', 345, 600, N'Marsten');
INSERT INTO Teachers(EmploymentDate, Name, Premium, Salary, Surname)
VALUES('12-05-2000', N'Veritas', 344545, 343535, N'Ratio');
GO;

SELECT *
FROM Teachers;


